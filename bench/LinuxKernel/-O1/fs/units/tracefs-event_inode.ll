; ModuleID = 'fs/tracefs/event_inode.c'
source_filename = "fs/tracefs/event_inode.c"
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
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_struct = type { i32, ptr, %struct.lockdep_map, ptr }
%struct.lockdep_map = type {}
%struct.srcu_data = type { [2 x %struct.atomic64_t], [2 x %struct.atomic64_t], i32, [28 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i64, i32, ptr, [48 x i8] }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_usage = type { ptr, [3 x ptr], i32, %struct.mutex, %struct.spinlock, %struct.mutex, i64, i64, i64, i64, i64, i64, i64, i64, i8, i64, %struct.mutex, %struct.completion, %struct.atomic_t, i64, i64, %struct.delayed_work, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.pcpu_hot = type { %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [16 x i8] }
%struct.anon.30 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracefs_inode = type { %struct.inode, %struct.list_head, i64, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.14 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.15 = type { %struct.callback_head }
%union.anon.16 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.17 = type { ptr }
%struct.eventfs_inode = type { %union.anon.13, %struct.list_head, ptr, ptr, ptr, ptr, %struct.eventfs_attr, %struct.kref, i32, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.eventfs_attr = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.22, %struct.list_head, %struct.list_head, %union.anon.23 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.22 = type { %struct.list_head }
%union.anon.23 = type { %struct.hlist_node }
%struct.eventfs_root_inode = type { %struct.eventfs_inode, ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.eventfs_entry = type { ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.iattr = type { i32, i16, %union.anon.24, %union.anon.25, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.24 = type { %struct.kuid_t }
%union.anon.25 = type { %struct.kgid_t }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.26, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.26 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.27, %struct.qspinlock }
%union.anon.27 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.anon.21 = type { %struct.spinlock, i32 }
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

@eventfs_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @eventfs_mutex, i64 16), ptr getelementptr (i8, ptr @eventfs_mutex, i64 16) } }, align 8, !dbg !0
@eventfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @eventfs_root_lookup, ptr null, ptr @eventfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eventfs_set_attr, ptr @eventfs_get_attr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !3881
@eventfs_file_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @eventfs_iterate, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3885
@.str = private unnamed_addr constant [25 x i8] c"fs/tracefs/event_inode.c\00", align 1, !dbg !3782
@eventfs_srcu = internal global %struct.srcu_struct { i32 0, ptr @eventfs_srcu_srcu_data, %struct.lockdep_map zeroinitializer, ptr @eventfs_srcu_srcu_usage }, align 8, !dbg !3787
@eventfs_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64, !dbg !3872
@eventfs_srcu_srcu_usage = internal global %struct.srcu_usage { ptr null, [3 x ptr] zeroinitializer, i32 0, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i64 0, i64 -1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i8 0, i64 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @eventfs_srcu_srcu_usage, i64 288), ptr getelementptr (i8, ptr @eventfs_srcu_srcu_usage, i64 288) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, ptr null }, align 8, !dbg !3874
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3876
@eventfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eventfs_set_attr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !3883
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !3887
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1, !dbg !3890
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1, !dbg !3893
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @eventfs_remount(ptr noundef %ti, i1 noundef zeroext %update_uid, i1 noundef zeroext %update_gid) #0 align 16 !dbg !3905 {
entry:
  %ti.addr = alloca ptr, align 8
  %update_uid.addr = alloca i8, align 1
  %update_gid.addr = alloca i8, align 1
  %ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !3909, metadata !DIExpression()), !dbg !3913
  %frombool = zext i1 %update_uid to i8
  store i8 %frombool, ptr %update_uid.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %update_uid.addr, metadata !3910, metadata !DIExpression()), !dbg !3914
  %frombool1 = zext i1 %update_gid to i8
  store i8 %frombool1, ptr %update_gid.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %update_gid.addr, metadata !3911, metadata !DIExpression()), !dbg !3915
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !3916
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !3912, metadata !DIExpression()), !dbg !3917
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !3918
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %0, i32 0, i32 3, !dbg !3919
  %1 = load ptr, ptr %private, align 8, !dbg !3919
  store ptr %1, ptr %ei, align 8, !dbg !3917
  %2 = load ptr, ptr %ei, align 8, !dbg !3920
  %tobool = icmp ne ptr %2, null, !dbg !3920
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3922

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %ei, align 8, !dbg !3923
  %is_events = getelementptr inbounds %struct.eventfs_inode, ptr %3, i32 0, i32 8, !dbg !3924
  %bf.load = load i32, ptr %is_events, align 8, !dbg !3924
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !3924
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3924
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !3923
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3925

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ei, align 8, !dbg !3926
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %4, i32 0, i32 8, !dbg !3927
  %bf.load4 = load i32, ptr %is_freed, align 8, !dbg !3927
  %bf.clear5 = and i32 %bf.load4, 1, !dbg !3927
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !3926
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3928

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3929

if.end:                                           ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %ei, align 8, !dbg !3930
  %6 = load i8, ptr %update_uid.addr, align 1, !dbg !3931, !range !3932, !noundef !738
  %tobool7 = trunc i8 %6 to i1, !dbg !3931
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !3933
  %vfs_inode = getelementptr inbounds %struct.tracefs_inode, ptr %7, i32 0, i32 0, !dbg !3934
  %i_uid = getelementptr inbounds %struct.inode, ptr %vfs_inode, i32 0, i32 2, !dbg !3935
  %8 = load i8, ptr %update_gid.addr, align 1, !dbg !3936, !range !3932, !noundef !738
  %tobool8 = trunc i8 %8 to i1, !dbg !3936
  %9 = load ptr, ptr %ti.addr, align 8, !dbg !3937
  %vfs_inode9 = getelementptr inbounds %struct.tracefs_inode, ptr %9, i32 0, i32 0, !dbg !3938
  %i_gid = getelementptr inbounds %struct.inode, ptr %vfs_inode9, i32 0, i32 4, !dbg !3939
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %i_uid, i32 0, i32 0, !dbg !3940
  %10 = load i32, ptr %coerce.dive, align 4, !dbg !3940
  %coerce.dive10 = getelementptr inbounds %struct.kgid_t, ptr %i_gid, i32 0, i32 0, !dbg !3940
  %11 = load i32, ptr %coerce.dive10, align 8, !dbg !3940
  call void @eventfs_set_attrs(ptr noundef %5, i1 noundef zeroext %tobool7, i32 %10, i1 noundef zeroext %tobool8, i32 %11, i32 noundef 0) #16, !dbg !3940
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3941
  br label %cleanup, !dbg !3941

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !3941
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3941

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @eventfs_set_attrs(ptr noundef %ei, i1 noundef zeroext %update_uid, i32 %uid.coerce, i1 noundef zeroext %update_gid, i32 %gid.coerce, i32 noundef %level) #0 align 16 !dbg !3942 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %ei.addr = alloca ptr, align 8
  %update_uid.addr = alloca i8, align 1
  %update_gid.addr = alloca i8, align 1
  %level.addr = alloca i32, align 4
  %ei_child = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %__mptr51 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !3946, metadata !DIExpression()), !dbg !3967
  %frombool = zext i1 %update_uid to i8
  store i8 %frombool, ptr %update_uid.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %update_uid.addr, metadata !3947, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3948, metadata !DIExpression()), !dbg !3969
  %frombool2 = zext i1 %update_gid to i8
  store i8 %frombool2, ptr %update_gid.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %update_gid.addr, metadata !3949, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3950, metadata !DIExpression()), !dbg !3971
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !3951, metadata !DIExpression()), !dbg !3972
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei_child) #15, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %ei_child, metadata !3952, metadata !DIExpression()), !dbg !3974
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3975
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3953, metadata !DIExpression()), !dbg !3975
  %0 = load i32, ptr %level.addr, align 4, !dbg !3975
  %cmp = icmp sgt i32 %0, 3, !dbg !3975
  %lnot = xor i1 %cmp, true, !dbg !3975
  %lnot3 = xor i1 %lnot, true, !dbg !3975
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3975
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3975
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3976
  %tobool = icmp ne i32 %1, 0, !dbg !3976
  %lnot4 = xor i1 %tobool, true, !dbg !3976
  %lnot6 = xor i1 %lnot4, true, !dbg !3976
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3976
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3976
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3976
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3976
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3975

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3976

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3977
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3956, metadata !DIExpression()), !dbg !3977
  store i32 2307, ptr %__flags, align 4, !dbg !3977
  br label %do.body9, !dbg !3977

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !3978

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !3978

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !3977

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !3980
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 314, i32 %2, i64 12) #15, !dbg !3980, !srcloc !3982
  br label %do.cond11, !dbg !3980

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3980

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3977

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3983

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3983

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3976
  br label %do.cond16, !dbg !3977

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3977

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !3977

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3975
  %tobool18 = icmp ne i32 %3, 0, !dbg !3975
  %lnot19 = xor i1 %tobool18, true, !dbg !3975
  %lnot21 = xor i1 %lnot19, true, !dbg !3975
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3975
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3975
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !3975
  store i64 %expval24, ptr %tmp, align 8, !dbg !3976
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3985
  %4 = load i64, ptr %tmp, align 8, !dbg !3975
  %tobool25 = icmp ne i64 %4, 0, !dbg !3985
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3986

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3987

if.end27:                                         ; preds = %if.end
  %5 = load i8, ptr %update_uid.addr, align 1, !dbg !3988, !range !3932, !noundef !738
  %tobool28 = trunc i8 %5 to i1, !dbg !3988
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !3990

if.then29:                                        ; preds = %if.end27
  %6 = load ptr, ptr %ei.addr, align 8, !dbg !3991
  %attr = getelementptr inbounds %struct.eventfs_inode, ptr %6, i32 0, i32 6, !dbg !3993
  %mode = getelementptr inbounds %struct.eventfs_attr, ptr %attr, i32 0, i32 0, !dbg !3994
  %7 = load i32, ptr %mode, align 8, !dbg !3995
  %and = and i32 %7, -131073, !dbg !3995
  store i32 %and, ptr %mode, align 8, !dbg !3995
  %8 = load ptr, ptr %ei.addr, align 8, !dbg !3996
  %attr30 = getelementptr inbounds %struct.eventfs_inode, ptr %8, i32 0, i32 6, !dbg !3997
  %uid31 = getelementptr inbounds %struct.eventfs_attr, ptr %attr30, i32 0, i32 1, !dbg !3998
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid31, ptr align 4 %uid, i64 4, i1 false), !dbg !3999
  br label %if.end32, !dbg !4000

if.end32:                                         ; preds = %if.then29, %if.end27
  %9 = load i8, ptr %update_gid.addr, align 1, !dbg !4001, !range !3932, !noundef !738
  %tobool33 = trunc i8 %9 to i1, !dbg !4001
  br i1 %tobool33, label %if.then34, label %if.end40, !dbg !4003

if.then34:                                        ; preds = %if.end32
  %10 = load ptr, ptr %ei.addr, align 8, !dbg !4004
  %attr35 = getelementptr inbounds %struct.eventfs_inode, ptr %10, i32 0, i32 6, !dbg !4006
  %mode36 = getelementptr inbounds %struct.eventfs_attr, ptr %attr35, i32 0, i32 0, !dbg !4007
  %11 = load i32, ptr %mode36, align 8, !dbg !4008
  %and37 = and i32 %11, -262145, !dbg !4008
  store i32 %and37, ptr %mode36, align 8, !dbg !4008
  %12 = load ptr, ptr %ei.addr, align 8, !dbg !4009
  %attr38 = getelementptr inbounds %struct.eventfs_inode, ptr %12, i32 0, i32 6, !dbg !4010
  %gid39 = getelementptr inbounds %struct.eventfs_attr, ptr %attr38, i32 0, i32 2, !dbg !4011
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid39, ptr align 4 %gid, i64 4, i1 false), !dbg !4012
  br label %if.end40, !dbg !4013

if.end40:                                         ; preds = %if.then34, %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4014
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3959, metadata !DIExpression()), !dbg !4014
  %13 = load ptr, ptr %ei.addr, align 8, !dbg !4014
  %children = getelementptr inbounds %struct.eventfs_inode, ptr %13, i32 0, i32 1, !dbg !4014
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !4014
  %14 = load ptr, ptr %next, align 8, !dbg !4014
  store ptr %14, ptr %__mptr, align 8, !dbg !4014
  %15 = load ptr, ptr %__mptr, align 8, !dbg !4014
  %add.ptr = getelementptr i8, ptr %15, i64 0, !dbg !4014
  store ptr %add.ptr, ptr %tmp41, align 8, !dbg !4014
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4015
  %16 = load ptr, ptr %tmp41, align 8, !dbg !4014
  store ptr %16, ptr %ei_child, align 8, !dbg !4015
  br label %for.cond, !dbg !4015

for.cond:                                         ; preds = %for.inc, %if.end40
  %17 = load ptr, ptr %ei_child, align 8, !dbg !4016
  %18 = getelementptr inbounds %struct.eventfs_inode, ptr %17, i32 0, i32 0, !dbg !4016
  %19 = load ptr, ptr %ei.addr, align 8, !dbg !4016
  %children42 = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 1, !dbg !4016
  %cmp43 = icmp eq ptr %18, %children42, !dbg !4016
  %lnot45 = xor i1 %cmp43, true, !dbg !4016
  br i1 %lnot45, label %for.body, label %for.end, !dbg !4015

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %ei_child, align 8, !dbg !4017
  %21 = load i8, ptr %update_uid.addr, align 1, !dbg !4019, !range !3932, !noundef !738
  %tobool47 = trunc i8 %21 to i1, !dbg !4019
  %22 = load i8, ptr %update_gid.addr, align 1, !dbg !4020, !range !3932, !noundef !738
  %tobool48 = trunc i8 %22 to i1, !dbg !4020
  %23 = load i32, ptr %level.addr, align 4, !dbg !4021
  %add = add i32 %23, 1, !dbg !4022
  %coerce.dive49 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4023
  %24 = load i32, ptr %coerce.dive49, align 4, !dbg !4023
  %coerce.dive50 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4023
  %25 = load i32, ptr %coerce.dive50, align 4, !dbg !4023
  call void @eventfs_set_attrs(ptr noundef %20, i1 noundef zeroext %tobool47, i32 %24, i1 noundef zeroext %tobool48, i32 %25, i32 noundef %add) #16, !dbg !4023
  br label %for.inc, !dbg !4024

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr51) #15, !dbg !4025
  call void @llvm.dbg.declare(metadata ptr %__mptr51, metadata !3962, metadata !DIExpression()), !dbg !4025
  %26 = load ptr, ptr %ei_child, align 8, !dbg !4025
  %27 = getelementptr inbounds %struct.eventfs_inode, ptr %26, i32 0, i32 0, !dbg !4025
  %next52 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 0, !dbg !4025
  %28 = load ptr, ptr %next52, align 8, !dbg !4025
  store ptr %28, ptr %__mptr51, align 8, !dbg !4025
  %29 = load ptr, ptr %__mptr51, align 8, !dbg !4025
  %add.ptr54 = getelementptr i8, ptr %29, i64 0, !dbg !4025
  store ptr %add.ptr54, ptr %tmp53, align 8, !dbg !4025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr51) #15, !dbg !4016
  %30 = load ptr, ptr %tmp53, align 8, !dbg !4025
  store ptr %30, ptr %ei_child, align 8, !dbg !4016
  br label %for.cond, !dbg !4016, !llvm.loop !4026

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %ei.addr, align 8, !dbg !4030
  %entry_attrs = getelementptr inbounds %struct.eventfs_inode, ptr %31, i32 0, i32 4, !dbg !4032
  %32 = load ptr, ptr %entry_attrs, align 8, !dbg !4032
  %tobool55 = icmp ne ptr %32, null, !dbg !4030
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !4033

if.then56:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4034

if.end57:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4035
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3965, metadata !DIExpression()), !dbg !4036
  store i32 0, ptr %i, align 4, !dbg !4036
  br label %for.cond58, !dbg !4035

for.cond58:                                       ; preds = %for.inc84, %if.end57
  %33 = load i32, ptr %i, align 4, !dbg !4037
  %34 = load ptr, ptr %ei.addr, align 8, !dbg !4039
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %34, i32 0, i32 8, !dbg !4040
  %bf.load = load i32, ptr %nr_entries, align 8, !dbg !4040
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !4040
  %cmp59 = icmp slt i32 %33, %bf.lshr, !dbg !4041
  br i1 %cmp59, label %for.body61, label %for.cond.cleanup, !dbg !4042

for.cond.cleanup:                                 ; preds = %for.cond58
  store i32 13, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4043
  br label %for.end85

for.body61:                                       ; preds = %for.cond58
  %35 = load i8, ptr %update_uid.addr, align 1, !dbg !4044, !range !3932, !noundef !738
  %tobool62 = trunc i8 %35 to i1, !dbg !4044
  br i1 %tobool62, label %if.then63, label %if.end71, !dbg !4047

if.then63:                                        ; preds = %for.body61
  %36 = load ptr, ptr %ei.addr, align 8, !dbg !4048
  %entry_attrs64 = getelementptr inbounds %struct.eventfs_inode, ptr %36, i32 0, i32 4, !dbg !4050
  %37 = load ptr, ptr %entry_attrs64, align 8, !dbg !4050
  %38 = load i32, ptr %i, align 4, !dbg !4051
  %idxprom = sext i32 %38 to i64, !dbg !4048
  %arrayidx = getelementptr %struct.eventfs_attr, ptr %37, i64 %idxprom, !dbg !4048
  %mode65 = getelementptr inbounds %struct.eventfs_attr, ptr %arrayidx, i32 0, i32 0, !dbg !4052
  %39 = load i32, ptr %mode65, align 4, !dbg !4053
  %and66 = and i32 %39, -131073, !dbg !4053
  store i32 %and66, ptr %mode65, align 4, !dbg !4053
  %40 = load ptr, ptr %ei.addr, align 8, !dbg !4054
  %entry_attrs67 = getelementptr inbounds %struct.eventfs_inode, ptr %40, i32 0, i32 4, !dbg !4055
  %41 = load ptr, ptr %entry_attrs67, align 8, !dbg !4055
  %42 = load i32, ptr %i, align 4, !dbg !4056
  %idxprom68 = sext i32 %42 to i64, !dbg !4054
  %arrayidx69 = getelementptr %struct.eventfs_attr, ptr %41, i64 %idxprom68, !dbg !4054
  %uid70 = getelementptr inbounds %struct.eventfs_attr, ptr %arrayidx69, i32 0, i32 1, !dbg !4057
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid70, ptr align 4 %uid, i64 4, i1 false), !dbg !4058
  br label %if.end71, !dbg !4059

if.end71:                                         ; preds = %if.then63, %for.body61
  %43 = load i8, ptr %update_gid.addr, align 1, !dbg !4060, !range !3932, !noundef !738
  %tobool72 = trunc i8 %43 to i1, !dbg !4060
  br i1 %tobool72, label %if.then73, label %if.end83, !dbg !4062

if.then73:                                        ; preds = %if.end71
  %44 = load ptr, ptr %ei.addr, align 8, !dbg !4063
  %entry_attrs74 = getelementptr inbounds %struct.eventfs_inode, ptr %44, i32 0, i32 4, !dbg !4065
  %45 = load ptr, ptr %entry_attrs74, align 8, !dbg !4065
  %46 = load i32, ptr %i, align 4, !dbg !4066
  %idxprom75 = sext i32 %46 to i64, !dbg !4063
  %arrayidx76 = getelementptr %struct.eventfs_attr, ptr %45, i64 %idxprom75, !dbg !4063
  %mode77 = getelementptr inbounds %struct.eventfs_attr, ptr %arrayidx76, i32 0, i32 0, !dbg !4067
  %47 = load i32, ptr %mode77, align 4, !dbg !4068
  %and78 = and i32 %47, -262145, !dbg !4068
  store i32 %and78, ptr %mode77, align 4, !dbg !4068
  %48 = load ptr, ptr %ei.addr, align 8, !dbg !4069
  %entry_attrs79 = getelementptr inbounds %struct.eventfs_inode, ptr %48, i32 0, i32 4, !dbg !4070
  %49 = load ptr, ptr %entry_attrs79, align 8, !dbg !4070
  %50 = load i32, ptr %i, align 4, !dbg !4071
  %idxprom80 = sext i32 %50 to i64, !dbg !4069
  %arrayidx81 = getelementptr %struct.eventfs_attr, ptr %49, i64 %idxprom80, !dbg !4069
  %gid82 = getelementptr inbounds %struct.eventfs_attr, ptr %arrayidx81, i32 0, i32 2, !dbg !4072
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid82, ptr align 4 %gid, i64 4, i1 false), !dbg !4073
  br label %if.end83, !dbg !4074

if.end83:                                         ; preds = %if.then73, %if.end71
  br label %for.inc84, !dbg !4075

for.inc84:                                        ; preds = %if.end83
  %51 = load i32, ptr %i, align 4, !dbg !4076
  %inc = add i32 %51, 1, !dbg !4076
  store i32 %inc, ptr %i, align 4, !dbg !4076
  br label %for.cond58, !dbg !4043, !llvm.loop !4077

for.end85:                                        ; preds = %for.cond.cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4079
  br label %cleanup, !dbg !4079

cleanup:                                          ; preds = %for.end85, %if.then56, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei_child) #15, !dbg !4079
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4079

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @eventfs_d_release(ptr noundef %dentry) #0 align 16 !dbg !4080 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4084
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !4085
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !4085
  call void @put_ei(ptr noundef %1) #16, !dbg !4086
  ret void, !dbg !4087
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_ei(ptr noundef %ei) #3 align 16 !dbg !4088 {
entry:
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4092, metadata !DIExpression()), !dbg !4093
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !4094
  %tobool = icmp ne ptr %0, null, !dbg !4094
  br i1 %tobool, label %if.then, label %if.end, !dbg !4096

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ei.addr, align 8, !dbg !4097
  %kref = getelementptr inbounds %struct.eventfs_inode, ptr %1, i32 0, i32 7, !dbg !4098
  %call = call i32 @kref_put(ptr noundef %kref, ptr noundef @release_ei) #16, !dbg !4099
  br label %if.end, !dbg !4099

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4100
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @eventfs_create_dir(ptr noundef %name, ptr noundef %parent, ptr noundef %entries, i32 noundef %size, ptr noundef %data) #0 align 16 !dbg !4101 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %entries.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4105, metadata !DIExpression()), !dbg !4111
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4106, metadata !DIExpression()), !dbg !4112
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4107, metadata !DIExpression()), !dbg !4113
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4108, metadata !DIExpression()), !dbg !4114
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4109, metadata !DIExpression()), !dbg !4115
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !4116
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4110, metadata !DIExpression()), !dbg !4117
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4118
  %tobool = icmp ne ptr %0, null, !dbg !4118
  br i1 %tobool, label %if.end, label %if.then, !dbg !4120

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #16, !dbg !4121
  store ptr %call, ptr %retval, align 8, !dbg !4122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4122

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4123
  %call1 = call ptr @alloc_ei(ptr noundef %1) #16, !dbg !4124
  store ptr %call1, ptr %ei, align 8, !dbg !4125
  %2 = load ptr, ptr %ei, align 8, !dbg !4126
  %tobool2 = icmp ne ptr %2, null, !dbg !4126
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !4128

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4129
  store ptr %call4, ptr %retval, align 8, !dbg !4130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4130

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr %entries.addr, align 8, !dbg !4131
  %4 = load ptr, ptr %ei, align 8, !dbg !4132
  %entries6 = getelementptr inbounds %struct.eventfs_inode, ptr %4, i32 0, i32 2, !dbg !4133
  store ptr %3, ptr %entries6, align 8, !dbg !4134
  %5 = load i32, ptr %size.addr, align 4, !dbg !4135
  %6 = load ptr, ptr %ei, align 8, !dbg !4136
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %6, i32 0, i32 8, !dbg !4137
  %bf.load = load i32, ptr %nr_entries, align 8, !dbg !4138
  %bf.value = and i32 %5, 1073741823, !dbg !4138
  %bf.shl = shl i32 %bf.value, 2, !dbg !4138
  %bf.clear = and i32 %bf.load, 3, !dbg !4138
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !4138
  store i32 %bf.set, ptr %nr_entries, align 8, !dbg !4138
  %7 = load ptr, ptr %data.addr, align 8, !dbg !4139
  %8 = load ptr, ptr %ei, align 8, !dbg !4140
  %data7 = getelementptr inbounds %struct.eventfs_inode, ptr %8, i32 0, i32 5, !dbg !4141
  store ptr %7, ptr %data7, align 8, !dbg !4142
  %9 = load ptr, ptr %ei, align 8, !dbg !4143
  %children = getelementptr inbounds %struct.eventfs_inode, ptr %9, i32 0, i32 1, !dbg !4144
  call void @INIT_LIST_HEAD(ptr noundef %children) #16, !dbg !4145
  %10 = load ptr, ptr %ei, align 8, !dbg !4146
  %11 = getelementptr inbounds %struct.eventfs_inode, ptr %10, i32 0, i32 0, !dbg !4147
  call void @INIT_LIST_HEAD(ptr noundef %11) #16, !dbg !4148
  call void @mutex_lock(ptr noundef @eventfs_mutex) #16, !dbg !4149
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !4150
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %12, i32 0, i32 8, !dbg !4152
  %bf.load8 = load i32, ptr %is_freed, align 8, !dbg !4152
  %bf.clear9 = and i32 %bf.load8, 1, !dbg !4152
  %tobool10 = icmp ne i32 %bf.clear9, 0, !dbg !4150
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !4153

if.then11:                                        ; preds = %if.end5
  %13 = load ptr, ptr %ei, align 8, !dbg !4154
  %14 = getelementptr inbounds %struct.eventfs_inode, ptr %13, i32 0, i32 0, !dbg !4155
  %15 = load ptr, ptr %parent.addr, align 8, !dbg !4156
  %children12 = getelementptr inbounds %struct.eventfs_inode, ptr %15, i32 0, i32 1, !dbg !4157
  call void @list_add_tail(ptr noundef %14, ptr noundef %children12) #16, !dbg !4158
  br label %if.end13, !dbg !4158

if.end13:                                         ; preds = %if.then11, %if.end5
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !4159
  %16 = load ptr, ptr %ei, align 8, !dbg !4160
  %17 = getelementptr inbounds %struct.eventfs_inode, ptr %16, i32 0, i32 0, !dbg !4162
  %call14 = call i32 @list_empty(ptr noundef %17) #16, !dbg !4163
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4163
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4164

if.then16:                                        ; preds = %if.end13
  %18 = load ptr, ptr %ei, align 8, !dbg !4165
  call void @cleanup_ei(ptr noundef %18) #16, !dbg !4167
  %call17 = call ptr @ERR_PTR(i64 noundef -16) #16, !dbg !4168
  store ptr %call17, ptr %ei, align 8, !dbg !4169
  br label %if.end18, !dbg !4170

if.end18:                                         ; preds = %if.then16, %if.end13
  %19 = load ptr, ptr %ei, align 8, !dbg !4171
  store ptr %19, ptr %retval, align 8, !dbg !4172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4172

cleanup:                                          ; preds = %if.end18, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !4173
  %20 = load ptr, ptr %retval, align 8, !dbg !4173
  ret ptr %20, !dbg !4173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4174 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4179, metadata !DIExpression()), !dbg !4180
  %0 = load i64, ptr %error.addr, align 8, !dbg !4181
  %1 = inttoptr i64 %0 to ptr, !dbg !4182
  ret ptr %1, !dbg !4183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_ei(ptr noundef %name) #3 align 16 !dbg !4184 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4188, metadata !DIExpression()), !dbg !4191
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !4192
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4189, metadata !DIExpression()), !dbg !4193
  %call = call noalias ptr @kzalloc(i64 noundef 88, i32 noundef 3264) #17, !dbg !4194
  store ptr %call, ptr %ei, align 8, !dbg !4193
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #15, !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4190, metadata !DIExpression()), !dbg !4196
  %0 = load ptr, ptr %ei, align 8, !dbg !4197
  %tobool = icmp ne ptr %0, null, !dbg !4197
  br i1 %tobool, label %if.end, label %if.then, !dbg !4199

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4200

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ei, align 8, !dbg !4201
  %2 = load ptr, ptr %name.addr, align 8, !dbg !4202
  %call1 = call ptr @init_ei(ptr noundef %1, ptr noundef %2) #16, !dbg !4203
  store ptr %call1, ptr %result, align 8, !dbg !4204
  %3 = load ptr, ptr %result, align 8, !dbg !4205
  %tobool2 = icmp ne ptr %3, null, !dbg !4205
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4207

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %ei, align 8, !dbg !4208
  call void @kfree(ptr noundef %4) #16, !dbg !4209
  br label %if.end4, !dbg !4209

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load ptr, ptr %result, align 8, !dbg !4210
  store ptr %5, ptr %retval, align 8, !dbg !4211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4211

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #15, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !4212
  %6 = load ptr, ptr %retval, align 8, !dbg !4212
  ret ptr %6, !dbg !4212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !4213 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  br label %do.body, !dbg !4220

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4221

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4223

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4221

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4225
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4225
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4225
  store volatile ptr %0, ptr %next, align 8, !dbg !4225
  br label %do.end3, !dbg !4225

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4221

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4227

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4228

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4230

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4228

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4232
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4232
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4232
  store volatile ptr %2, ptr %prev, align 8, !dbg !4232
  br label %do.end9, !dbg !4232

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4228

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4235 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4239 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4243, metadata !DIExpression()), !dbg !4245
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4244, metadata !DIExpression()), !dbg !4246
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4247
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4248
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4249
  %2 = load ptr, ptr %prev, align 8, !dbg !4249
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4250
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !4251
  ret void, !dbg !4252
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4253 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !4254 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4260, metadata !DIExpression()), !dbg !4261
  br label %do.body, !dbg !4262

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4264

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4262
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4262
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4262
  store ptr %1, ptr %tmp, align 8, !dbg !4264
  %2 = load ptr, ptr %tmp, align 8, !dbg !4262
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4266
  %cmp = icmp eq ptr %2, %3, !dbg !4267
  %conv = zext i1 %cmp to i32, !dbg !4267
  ret i32 %conv, !dbg !4268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cleanup_ei(ptr noundef %ei) #3 align 16 !dbg !4269 {
entry:
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !4273
  %tobool = icmp ne ptr %0, null, !dbg !4273
  br i1 %tobool, label %if.then, label %if.end, !dbg !4275

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ei.addr, align 8, !dbg !4276
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %1, i32 0, i32 8, !dbg !4278
  %bf.load = load i32, ptr %nr_entries, align 8, !dbg !4279
  %bf.clear = and i32 %bf.load, 3, !dbg !4279
  %bf.set = or i32 %bf.clear, 0, !dbg !4279
  store i32 %bf.set, ptr %nr_entries, align 8, !dbg !4279
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !4280
  call void @free_ei(ptr noundef %2) #16, !dbg !4281
  br label %if.end, !dbg !4282

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @eventfs_create_events_dir(ptr noundef %name, ptr noundef %parent, ptr noundef %entries, i32 noundef %size, ptr noundef %data) #0 align 16 !dbg !4284 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %entries.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %rei = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4288, metadata !DIExpression()), !dbg !4301
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4289, metadata !DIExpression()), !dbg !4302
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4290, metadata !DIExpression()), !dbg !4303
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4291, metadata !DIExpression()), !dbg !4304
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4292, metadata !DIExpression()), !dbg !4305
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !4306
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4293, metadata !DIExpression()), !dbg !4307
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4308
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4309
  %call = call ptr @tracefs_start_creating(ptr noundef %0, ptr noundef %1) #16, !dbg !4310
  store ptr %call, ptr %dentry, align 8, !dbg !4307
  call void @llvm.lifetime.start.p0(i64 8, ptr %rei) #15, !dbg !4311
  call void @llvm.dbg.declare(metadata ptr %rei, metadata !4294, metadata !DIExpression()), !dbg !4312
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !4313
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4295, metadata !DIExpression()), !dbg !4314
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #15, !dbg !4315
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !4296, metadata !DIExpression()), !dbg !4316
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4297, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #15, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4298, metadata !DIExpression()), !dbg !4320
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #15, !dbg !4321
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4299, metadata !DIExpression()), !dbg !4322
  %call1 = call i32 @security_locked_down(i32 noundef 26) #16, !dbg !4323
  %tobool = icmp ne i32 %call1, 0, !dbg !4323
  br i1 %tobool, label %if.then, label %if.end, !dbg !4325

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4326

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dentry, align 8, !dbg !4327
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %2) #16, !dbg !4329
  br i1 %call2, label %if.then3, label %if.end5, !dbg !4330

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %dentry, align 8, !dbg !4331
  %call4 = call ptr @ERR_CAST(ptr noundef %3) #16, !dbg !4332
  store ptr %call4, ptr %retval, align 8, !dbg !4333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4333

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %name.addr, align 8, !dbg !4334
  %call6 = call ptr @alloc_root_ei(ptr noundef %4) #16, !dbg !4335
  store ptr %call6, ptr %ei, align 8, !dbg !4336
  %5 = load ptr, ptr %ei, align 8, !dbg !4337
  %tobool7 = icmp ne ptr %5, null, !dbg !4337
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4339

if.then8:                                         ; preds = %if.end5
  br label %fail, !dbg !4340

if.end9:                                          ; preds = %if.end5
  %6 = load ptr, ptr %dentry, align 8, !dbg !4341
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !4342
  %7 = load ptr, ptr %d_sb, align 8, !dbg !4342
  %call10 = call ptr @tracefs_get_inode(ptr noundef %7) #16, !dbg !4343
  store ptr %call10, ptr %inode, align 8, !dbg !4344
  %8 = load ptr, ptr %inode, align 8, !dbg !4345
  %tobool11 = icmp ne ptr %8, null, !dbg !4345
  %lnot = xor i1 %tobool11, true, !dbg !4345
  %lnot12 = xor i1 %lnot, true, !dbg !4345
  %lnot13 = xor i1 %lnot12, true, !dbg !4345
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4345
  %conv = sext i32 %lnot.ext to i64, !dbg !4345
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4345
  %tobool14 = icmp ne i64 %expval, 0, !dbg !4345
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4347

if.then15:                                        ; preds = %if.end9
  br label %fail, !dbg !4348

if.end16:                                         ; preds = %if.end9
  %9 = load ptr, ptr %ei, align 8, !dbg !4349
  %call17 = call ptr @get_root_inode(ptr noundef %9) #16, !dbg !4350
  store ptr %call17, ptr %rei, align 8, !dbg !4351
  %10 = load ptr, ptr %dentry, align 8, !dbg !4352
  %11 = load ptr, ptr %rei, align 8, !dbg !4353
  %events_dir = getelementptr inbounds %struct.eventfs_root_inode, ptr %11, i32 0, i32 2, !dbg !4354
  store ptr %10, ptr %events_dir, align 8, !dbg !4355
  %12 = load ptr, ptr %dentry, align 8, !dbg !4356
  %d_sb18 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9, !dbg !4357
  %13 = load ptr, ptr %d_sb18, align 8, !dbg !4357
  %s_root = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 13, !dbg !4358
  %14 = load ptr, ptr %s_root, align 8, !dbg !4358
  %call19 = call ptr @d_inode(ptr noundef %14) #16, !dbg !4359
  %15 = load ptr, ptr %rei, align 8, !dbg !4360
  %parent_inode = getelementptr inbounds %struct.eventfs_root_inode, ptr %15, i32 0, i32 1, !dbg !4361
  store ptr %call19, ptr %parent_inode, align 8, !dbg !4362
  %16 = load ptr, ptr %entries.addr, align 8, !dbg !4363
  %17 = load ptr, ptr %ei, align 8, !dbg !4364
  %entries20 = getelementptr inbounds %struct.eventfs_inode, ptr %17, i32 0, i32 2, !dbg !4365
  store ptr %16, ptr %entries20, align 8, !dbg !4366
  %18 = load i32, ptr %size.addr, align 4, !dbg !4367
  %19 = load ptr, ptr %ei, align 8, !dbg !4368
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 8, !dbg !4369
  %bf.load = load i32, ptr %nr_entries, align 8, !dbg !4370
  %bf.value = and i32 %18, 1073741823, !dbg !4370
  %bf.shl = shl i32 %bf.value, 2, !dbg !4370
  %bf.clear = and i32 %bf.load, 3, !dbg !4370
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !4370
  store i32 %bf.set, ptr %nr_entries, align 8, !dbg !4370
  %20 = load ptr, ptr %data.addr, align 8, !dbg !4371
  %21 = load ptr, ptr %ei, align 8, !dbg !4372
  %data21 = getelementptr inbounds %struct.eventfs_inode, ptr %21, i32 0, i32 5, !dbg !4373
  store ptr %20, ptr %data21, align 8, !dbg !4374
  %22 = load ptr, ptr %dentry, align 8, !dbg !4375
  %d_parent = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 3, !dbg !4376
  %23 = load ptr, ptr %d_parent, align 8, !dbg !4376
  %call22 = call ptr @d_inode(ptr noundef %23) #16, !dbg !4377
  %i_uid = getelementptr inbounds %struct.inode, ptr %call22, i32 0, i32 2, !dbg !4378
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %i_uid, i64 4, i1 false), !dbg !4378
  %24 = load ptr, ptr %dentry, align 8, !dbg !4379
  %d_parent23 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 3, !dbg !4380
  %25 = load ptr, ptr %d_parent23, align 8, !dbg !4380
  %call24 = call ptr @d_inode(ptr noundef %25) #16, !dbg !4381
  %i_gid = getelementptr inbounds %struct.inode, ptr %call24, i32 0, i32 4, !dbg !4382
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 8 %i_gid, i64 4, i1 false), !dbg !4382
  %26 = load ptr, ptr %ei, align 8, !dbg !4383
  %attr = getelementptr inbounds %struct.eventfs_inode, ptr %26, i32 0, i32 6, !dbg !4384
  %uid25 = getelementptr inbounds %struct.eventfs_attr, ptr %attr, i32 0, i32 1, !dbg !4385
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid25, ptr align 4 %uid, i64 4, i1 false), !dbg !4386
  %27 = load ptr, ptr %ei, align 8, !dbg !4387
  %attr26 = getelementptr inbounds %struct.eventfs_inode, ptr %27, i32 0, i32 6, !dbg !4388
  %gid27 = getelementptr inbounds %struct.eventfs_attr, ptr %attr26, i32 0, i32 2, !dbg !4389
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid27, ptr align 4 %gid, i64 4, i1 false), !dbg !4390
  %28 = load ptr, ptr %ei, align 8, !dbg !4391
  %attr28 = getelementptr inbounds %struct.eventfs_inode, ptr %28, i32 0, i32 6, !dbg !4392
  %mode = getelementptr inbounds %struct.eventfs_attr, ptr %attr28, i32 0, i32 0, !dbg !4393
  %29 = load i32, ptr %mode, align 8, !dbg !4394
  %or = or i32 %29, 393216, !dbg !4394
  store i32 %or, ptr %mode, align 8, !dbg !4394
  %30 = load ptr, ptr %ei, align 8, !dbg !4395
  %children = getelementptr inbounds %struct.eventfs_inode, ptr %30, i32 0, i32 1, !dbg !4396
  call void @INIT_LIST_HEAD(ptr noundef %children) #16, !dbg !4397
  %31 = load ptr, ptr %ei, align 8, !dbg !4398
  %32 = getelementptr inbounds %struct.eventfs_inode, ptr %31, i32 0, i32 0, !dbg !4399
  call void @INIT_LIST_HEAD(ptr noundef %32) #16, !dbg !4400
  %33 = load ptr, ptr %inode, align 8, !dbg !4401
  %call29 = call ptr @get_tracefs(ptr noundef %33) #16, !dbg !4402
  store ptr %call29, ptr %ti, align 8, !dbg !4403
  %34 = load ptr, ptr %ti, align 8, !dbg !4404
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %34, i32 0, i32 2, !dbg !4405
  %35 = load i64, ptr %flags, align 8, !dbg !4406
  %or30 = or i64 %35, 2, !dbg !4406
  store i64 %or30, ptr %flags, align 8, !dbg !4406
  %36 = load ptr, ptr %ei, align 8, !dbg !4407
  %37 = load ptr, ptr %ti, align 8, !dbg !4408
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %37, i32 0, i32 3, !dbg !4409
  store ptr %36, ptr %private, align 8, !dbg !4410
  %38 = load ptr, ptr %inode, align 8, !dbg !4411
  %i_mode = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 0, !dbg !4412
  store i16 16877, ptr %i_mode, align 8, !dbg !4413
  %39 = load ptr, ptr %inode, align 8, !dbg !4414
  %i_uid31 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 2, !dbg !4415
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid31, ptr align 4 %uid, i64 4, i1 false), !dbg !4416
  %40 = load ptr, ptr %inode, align 8, !dbg !4417
  %i_gid32 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 4, !dbg !4418
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid32, ptr align 4 %gid, i64 4, i1 false), !dbg !4419
  %41 = load ptr, ptr %inode, align 8, !dbg !4420
  %i_op = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8, !dbg !4421
  store ptr @eventfs_dir_inode_operations, ptr %i_op, align 8, !dbg !4422
  %42 = load ptr, ptr %inode, align 8, !dbg !4423
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 39, !dbg !4424
  store ptr @eventfs_file_operations, ptr %43, align 8, !dbg !4425
  %44 = load ptr, ptr %ei, align 8, !dbg !4426
  %call33 = call ptr @get_ei(ptr noundef %44) #16, !dbg !4427
  %45 = load ptr, ptr %dentry, align 8, !dbg !4428
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 11, !dbg !4429
  store ptr %call33, ptr %d_fsdata, align 8, !dbg !4430
  %46 = load ptr, ptr %dentry, align 8, !dbg !4431
  %47 = load ptr, ptr %inode, align 8, !dbg !4432
  call void @d_instantiate(ptr noundef %46, ptr noundef %47) #16, !dbg !4433
  %48 = load ptr, ptr %dentry, align 8, !dbg !4434
  %d_parent34 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 3, !dbg !4435
  %49 = load ptr, ptr %d_parent34, align 8, !dbg !4435
  %d_inode = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 5, !dbg !4436
  %50 = load ptr, ptr %d_inode, align 8, !dbg !4436
  call void @inc_nlink(ptr noundef %50) #16, !dbg !4437
  %51 = load ptr, ptr %dentry, align 8, !dbg !4438
  %d_parent35 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3, !dbg !4439
  %52 = load ptr, ptr %d_parent35, align 8, !dbg !4439
  %d_inode36 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5, !dbg !4440
  %53 = load ptr, ptr %d_inode36, align 8, !dbg !4440
  %54 = load ptr, ptr %dentry, align 8, !dbg !4441
  call void @fsnotify_mkdir(ptr noundef %53, ptr noundef %54) #16, !dbg !4442
  %55 = load ptr, ptr %dentry, align 8, !dbg !4443
  %call37 = call ptr @tracefs_end_creating(ptr noundef %55) #16, !dbg !4444
  %56 = load ptr, ptr %ei, align 8, !dbg !4445
  store ptr %56, ptr %retval, align 8, !dbg !4446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4446

fail:                                             ; preds = %if.then15, %if.then8
  call void @llvm.dbg.label(metadata !4300), !dbg !4447
  %57 = load ptr, ptr %ei, align 8, !dbg !4448
  call void @cleanup_ei(ptr noundef %57) #16, !dbg !4449
  %58 = load ptr, ptr %dentry, align 8, !dbg !4450
  %call38 = call ptr @tracefs_failed_creating(ptr noundef %58) #16, !dbg !4451
  %call39 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4452
  store ptr %call39, ptr %retval, align 8, !dbg !4453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4453

cleanup:                                          ; preds = %fail, %if.end16, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #15, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #15, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #15, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 8, ptr %rei) #15, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !4454
  %59 = load ptr, ptr %retval, align 8, !dbg !4454
  ret ptr %59, !dbg !4454
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4455 dso_local ptr @tracefs_start_creating(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4458 dso_local i32 @security_locked_down(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4461 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4469
  %1 = ptrtoint ptr %0 to i64, !dbg !4469
  %2 = inttoptr i64 %1 to ptr, !dbg !4469
  %3 = ptrtoint ptr %2 to i64, !dbg !4469
  %cmp = icmp uge i64 %3, -4095, !dbg !4469
  %lnot = xor i1 %cmp, true, !dbg !4469
  %lnot1 = xor i1 %lnot, true, !dbg !4469
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4469
  %conv = sext i32 %lnot.ext to i64, !dbg !4469
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4469
  %tobool = icmp ne i64 %expval, 0, !dbg !4469
  ret i1 %tobool, !dbg !4470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #3 align 16 !dbg !4471 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4477
  ret ptr %0, !dbg !4478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_root_ei(ptr noundef %name) #3 align 16 !dbg !4479 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %rei = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4481, metadata !DIExpression()), !dbg !4484
  call void @llvm.lifetime.start.p0(i64 8, ptr %rei) #15, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %rei, metadata !4482, metadata !DIExpression()), !dbg !4486
  %call = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #17, !dbg !4487
  store ptr %call, ptr %rei, align 8, !dbg !4486
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !4488
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4483, metadata !DIExpression()), !dbg !4489
  %0 = load ptr, ptr %rei, align 8, !dbg !4490
  %tobool = icmp ne ptr %0, null, !dbg !4490
  br i1 %tobool, label %if.end, label %if.then, !dbg !4492

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4493

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rei, align 8, !dbg !4494
  %ei1 = getelementptr inbounds %struct.eventfs_root_inode, ptr %1, i32 0, i32 0, !dbg !4495
  %is_events = getelementptr inbounds %struct.eventfs_inode, ptr %ei1, i32 0, i32 8, !dbg !4496
  %bf.load = load i32, ptr %is_events, align 8, !dbg !4497
  %bf.clear = and i32 %bf.load, -3, !dbg !4497
  %bf.set = or i32 %bf.clear, 2, !dbg !4497
  store i32 %bf.set, ptr %is_events, align 8, !dbg !4497
  %2 = load ptr, ptr %rei, align 8, !dbg !4498
  %ei2 = getelementptr inbounds %struct.eventfs_root_inode, ptr %2, i32 0, i32 0, !dbg !4499
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4500
  %call3 = call ptr @init_ei(ptr noundef %ei2, ptr noundef %3) #16, !dbg !4501
  store ptr %call3, ptr %ei, align 8, !dbg !4502
  %4 = load ptr, ptr %ei, align 8, !dbg !4503
  %tobool4 = icmp ne ptr %4, null, !dbg !4503
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4505

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %rei, align 8, !dbg !4506
  call void @kfree(ptr noundef %5) #16, !dbg !4507
  br label %if.end6, !dbg !4507

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load ptr, ptr %ei, align 8, !dbg !4508
  store ptr %6, ptr %retval, align 8, !dbg !4509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4509

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !4510
  call void @llvm.lifetime.end.p0(i64 8, ptr %rei) #15, !dbg !4510
  %7 = load ptr, ptr %retval, align 8, !dbg !4510
  ret ptr %7, !dbg !4510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4511 dso_local ptr @tracefs_get_inode(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_root_inode(ptr noundef %ei) #0 align 16 !dbg !4512 {
entry:
  %ei.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4516, metadata !DIExpression()), !dbg !4524
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4517, metadata !DIExpression()), !dbg !4525
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !4525
  %is_events = getelementptr inbounds %struct.eventfs_inode, ptr %0, i32 0, i32 8, !dbg !4525
  %bf.load = load i32, ptr %is_events, align 8, !dbg !4525
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !4525
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4525
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !4525
  %lnot = xor i1 %tobool, true, !dbg !4525
  %lnot1 = xor i1 %lnot, true, !dbg !4525
  %lnot2 = xor i1 %lnot1, true, !dbg !4525
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4525
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4525
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4526
  %tobool3 = icmp ne i32 %1, 0, !dbg !4526
  %lnot4 = xor i1 %tobool3, true, !dbg !4526
  %lnot6 = xor i1 %lnot4, true, !dbg !4526
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4526
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4526
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4526
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4526
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4525

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4526

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4519, metadata !DIExpression()), !dbg !4527
  store i32 2307, ptr %__flags, align 4, !dbg !4527
  br label %do.body9, !dbg !4527

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4528

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4528

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4527

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4530
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 46, i32 %2, i64 12) #15, !dbg !4530, !srcloc !4532
  br label %do.cond11, !dbg !4530

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4530

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4527

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4533

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4533

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4526
  br label %do.cond16, !dbg !4527

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4527

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4527

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4525
  %tobool18 = icmp ne i32 %3, 0, !dbg !4525
  %lnot19 = xor i1 %tobool18, true, !dbg !4525
  %lnot21 = xor i1 %lnot19, true, !dbg !4525
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4525
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4525
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4525
  store i64 %expval24, ptr %tmp, align 8, !dbg !4526
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4535
  %4 = load i64, ptr %tmp, align 8, !dbg !4525
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4522, metadata !DIExpression()), !dbg !4536
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !4536
  store ptr %5, ptr %__mptr, align 8, !dbg !4536
  %6 = load ptr, ptr %__mptr, align 8, !dbg !4536
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !4536
  store ptr %add.ptr, ptr %tmp25, align 8, !dbg !4536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4537
  %7 = load ptr, ptr %tmp25, align 8, !dbg !4536
  ret ptr %7, !dbg !4538
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #3 align 16 !dbg !4539 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4545
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4546
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4546
  ret ptr %1, !dbg !4547
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_tracefs(ptr noundef %inode) #3 align 16 !dbg !4548 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4552, metadata !DIExpression()), !dbg !4555
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4556
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4553, metadata !DIExpression()), !dbg !4556
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4556
  store ptr %0, ptr %__mptr, align 8, !dbg !4556
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4556
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4556
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4557
  %2 = load ptr, ptr %tmp, align 8, !dbg !4556
  ret ptr %2, !dbg !4558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ei(ptr noundef %ei) #3 align 16 !dbg !4559 {
entry:
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4563, metadata !DIExpression()), !dbg !4564
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !4565
  %tobool = icmp ne ptr %0, null, !dbg !4565
  br i1 %tobool, label %if.then, label %if.end, !dbg !4567

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ei.addr, align 8, !dbg !4568
  %kref = getelementptr inbounds %struct.eventfs_inode, ptr %1, i32 0, i32 7, !dbg !4569
  call void @kref_get(ptr noundef %kref) #16, !dbg !4570
  br label %if.end, !dbg !4570

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !4571
  ret ptr %2, !dbg !4572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4573 dso_local void @d_instantiate(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4574 dso_local void @inc_nlink(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_mkdir(ptr noundef %dir, ptr noundef %dentry) #3 align 16 !dbg !4575 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4580, metadata !DIExpression()), !dbg !4582
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4581, metadata !DIExpression()), !dbg !4583
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4584
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4585
  call void @audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #16, !dbg !4586
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !4587
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4588
  call void @fsnotify_dirent(ptr noundef %2, ptr noundef %3, i32 noundef 1073742080) #16, !dbg !4589
  ret void, !dbg !4590
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4591 dso_local ptr @tracefs_end_creating(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4594 dso_local ptr @tracefs_failed_creating(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @eventfs_remove_dir(ptr noundef %ei) #0 align 16 !dbg !4595 {
entry:
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !4599
  %tobool = icmp ne ptr %0, null, !dbg !4599
  br i1 %tobool, label %if.end, label %if.then, !dbg !4601

if.then:                                          ; preds = %entry
  br label %return, !dbg !4602

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @eventfs_mutex) #16, !dbg !4603
  %1 = load ptr, ptr %ei.addr, align 8, !dbg !4604
  call void @eventfs_remove_rec(ptr noundef %1, i32 noundef 0) #16, !dbg !4605
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !4606
  br label %return, !dbg !4607

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @eventfs_remove_rec(ptr noundef %ei, i32 noundef %level) #0 align 16 !dbg !4608 {
entry:
  %ei.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %ei_child = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__mptr32 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4612, metadata !DIExpression()), !dbg !4627
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !4613, metadata !DIExpression()), !dbg !4628
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei_child) #15, !dbg !4629
  call void @llvm.dbg.declare(metadata ptr %ei_child, metadata !4614, metadata !DIExpression()), !dbg !4630
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4631
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4615, metadata !DIExpression()), !dbg !4631
  %0 = load i32, ptr %level.addr, align 4, !dbg !4631
  %cmp = icmp sgt i32 %0, 3, !dbg !4631
  %lnot = xor i1 %cmp, true, !dbg !4631
  %lnot1 = xor i1 %lnot, true, !dbg !4631
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4631
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4631
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4632
  %tobool = icmp ne i32 %1, 0, !dbg !4632
  %lnot2 = xor i1 %tobool, true, !dbg !4632
  %lnot4 = xor i1 %lnot2, true, !dbg !4632
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4632
  %conv = sext i32 %lnot.ext5 to i64, !dbg !4632
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4632
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4632
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4631

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4632

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4633
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4618, metadata !DIExpression()), !dbg !4633
  store i32 2307, ptr %__flags, align 4, !dbg !4633
  br label %do.body7, !dbg !4633

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !4634

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !4634

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !4633

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4636
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 931, i32 %2, i64 12) #15, !dbg !4636, !srcloc !4638
  br label %do.cond9, !dbg !4636

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4636

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4633

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !4639

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4639

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4632
  br label %do.cond14, !dbg !4633

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4633

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4633

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4631
  %tobool16 = icmp ne i32 %3, 0, !dbg !4631
  %lnot17 = xor i1 %tobool16, true, !dbg !4631
  %lnot19 = xor i1 %lnot17, true, !dbg !4631
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4631
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4631
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4631
  store i64 %expval22, ptr %tmp, align 8, !dbg !4632
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4641
  %4 = load i64, ptr %tmp, align 8, !dbg !4631
  %tobool23 = icmp ne i64 %4, 0, !dbg !4641
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4642

if.then24:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4643

if.end25:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4621, metadata !DIExpression()), !dbg !4644
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !4644
  %children = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 1, !dbg !4644
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !4644
  %6 = load ptr, ptr %next, align 8, !dbg !4644
  store ptr %6, ptr %__mptr, align 8, !dbg !4644
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4644
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !4644
  store ptr %add.ptr, ptr %tmp26, align 8, !dbg !4644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4645
  %8 = load ptr, ptr %tmp26, align 8, !dbg !4644
  store ptr %8, ptr %ei_child, align 8, !dbg !4645
  br label %for.cond, !dbg !4645

for.cond:                                         ; preds = %for.inc, %if.end25
  %9 = load ptr, ptr %ei_child, align 8, !dbg !4646
  %10 = getelementptr inbounds %struct.eventfs_inode, ptr %9, i32 0, i32 0, !dbg !4646
  %11 = load ptr, ptr %ei.addr, align 8, !dbg !4646
  %children27 = getelementptr inbounds %struct.eventfs_inode, ptr %11, i32 0, i32 1, !dbg !4646
  %cmp28 = icmp eq ptr %10, %children27, !dbg !4646
  %lnot30 = xor i1 %cmp28, true, !dbg !4646
  br i1 %lnot30, label %for.body, label %for.end, !dbg !4645

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %ei_child, align 8, !dbg !4647
  %13 = load i32, ptr %level.addr, align 4, !dbg !4648
  %add = add i32 %13, 1, !dbg !4649
  call void @eventfs_remove_rec(ptr noundef %12, i32 noundef %add) #16, !dbg !4650
  br label %for.inc, !dbg !4650

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr32) #15, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %__mptr32, metadata !4624, metadata !DIExpression()), !dbg !4651
  %14 = load ptr, ptr %ei_child, align 8, !dbg !4651
  %15 = getelementptr inbounds %struct.eventfs_inode, ptr %14, i32 0, i32 0, !dbg !4651
  %next33 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !4651
  %16 = load ptr, ptr %next33, align 8, !dbg !4651
  store ptr %16, ptr %__mptr32, align 8, !dbg !4651
  %17 = load ptr, ptr %__mptr32, align 8, !dbg !4651
  %add.ptr35 = getelementptr i8, ptr %17, i64 0, !dbg !4651
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !4651
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr32) #15, !dbg !4646
  %18 = load ptr, ptr %tmp34, align 8, !dbg !4651
  store ptr %18, ptr %ei_child, align 8, !dbg !4646
  br label %for.cond, !dbg !4646, !llvm.loop !4652

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %ei.addr, align 8, !dbg !4654
  %20 = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 0, !dbg !4655
  call void @list_del_rcu(ptr noundef %20) #16, !dbg !4656
  %21 = load ptr, ptr %ei.addr, align 8, !dbg !4657
  call void @free_ei(ptr noundef %21) #16, !dbg !4658
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4659
  br label %cleanup, !dbg !4659

cleanup:                                          ; preds = %for.end, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei_child) #15, !dbg !4659
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4659

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @eventfs_remove_events_dir(ptr noundef %ei) #0 align 16 !dbg !4660 {
entry:
  %ei.addr = alloca ptr, align 8
  %rei = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4662, metadata !DIExpression()), !dbg !4665
  call void @llvm.lifetime.start.p0(i64 8, ptr %rei) #15, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %rei, metadata !4663, metadata !DIExpression()), !dbg !4667
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !4668
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4664, metadata !DIExpression()), !dbg !4669
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !4670
  %call = call ptr @get_root_inode(ptr noundef %0) #16, !dbg !4671
  store ptr %call, ptr %rei, align 8, !dbg !4672
  %1 = load ptr, ptr %rei, align 8, !dbg !4673
  %events_dir = getelementptr inbounds %struct.eventfs_root_inode, ptr %1, i32 0, i32 2, !dbg !4674
  %2 = load ptr, ptr %events_dir, align 8, !dbg !4674
  store ptr %2, ptr %dentry, align 8, !dbg !4675
  %3 = load ptr, ptr %dentry, align 8, !dbg !4676
  %tobool = icmp ne ptr %3, null, !dbg !4676
  br i1 %tobool, label %if.end, label %if.then, !dbg !4678

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4679

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %rei, align 8, !dbg !4680
  %events_dir1 = getelementptr inbounds %struct.eventfs_root_inode, ptr %4, i32 0, i32 2, !dbg !4681
  store ptr null, ptr %events_dir1, align 8, !dbg !4682
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !4683
  call void @eventfs_remove_dir(ptr noundef %5) #16, !dbg !4684
  %6 = load ptr, ptr %dentry, align 8, !dbg !4685
  call void @d_invalidate(ptr noundef %6) #16, !dbg !4686
  %7 = load ptr, ptr %dentry, align 8, !dbg !4687
  call void @dput(ptr noundef %7) #16, !dbg !4688
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4689
  br label %cleanup, !dbg !4689

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !4689
  call void @llvm.lifetime.end.p0(i64 8, ptr %rei) #15, !dbg !4689
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4689

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4690 dso_local void @d_invalidate(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4691 dso_local void @dput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !4692 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4700, metadata !DIExpression()), !dbg !4702
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !4701, metadata !DIExpression()), !dbg !4703
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4704
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4706
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #16, !dbg !4707
  br i1 %call, label %if.then, label %if.end, !dbg !4708

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !4709
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !4711
  call void %1(ptr noundef %2) #16, !dbg !4709
  store i32 1, ptr %retval, align 4, !dbg !4712
  br label %return, !dbg !4712

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4713
  br label %return, !dbg !4713

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4714
  ret i32 %3, !dbg !4714
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_ei(ptr noundef %ref) #0 align 16 !dbg !4715 {
entry:
  %ref.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4717, metadata !DIExpression()), !dbg !4729
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4718, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4719, metadata !DIExpression()), !dbg !4732
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !4732
  store ptr %0, ptr %__mptr, align 8, !dbg !4732
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4732
  %add.ptr = getelementptr i8, ptr %1, i64 -76, !dbg !4732
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4733
  %2 = load ptr, ptr %tmp, align 8, !dbg !4732
  store ptr %2, ptr %ei, align 8, !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4721, metadata !DIExpression()), !dbg !4735
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4736
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4722, metadata !DIExpression()), !dbg !4736
  %3 = load ptr, ptr %ei, align 8, !dbg !4736
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %3, i32 0, i32 8, !dbg !4736
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !4736
  %bf.clear = and i32 %bf.load, 1, !dbg !4736
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !4736
  %lnot = xor i1 %tobool, true, !dbg !4736
  %lnot2 = xor i1 %lnot, true, !dbg !4736
  %lnot3 = xor i1 %lnot2, true, !dbg !4736
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4736
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4736
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4737
  %tobool4 = icmp ne i32 %4, 0, !dbg !4737
  %lnot5 = xor i1 %tobool4, true, !dbg !4737
  %lnot7 = xor i1 %lnot5, true, !dbg !4737
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4737
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4737
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4737
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4737
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4736

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4737

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4738
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4724, metadata !DIExpression()), !dbg !4738
  store i32 2307, ptr %__flags, align 4, !dbg !4738
  br label %do.body10, !dbg !4738

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4739

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4739

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !4738

do.body11:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !4741
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 108, i32 %5, i64 12) #15, !dbg !4741, !srcloc !4743
  br label %do.cond12, !dbg !4741

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4741

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4738

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !4744

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4744

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4737
  br label %do.cond17, !dbg !4738

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4738

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !4738

if.end:                                           ; preds = %do.end18, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4736
  %tobool20 = icmp ne i32 %6, 0, !dbg !4736
  %lnot21 = xor i1 %tobool20, true, !dbg !4736
  %lnot23 = xor i1 %lnot21, true, !dbg !4736
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4736
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4736
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !4736
  store i64 %expval26, ptr %tmp19, align 8, !dbg !4737
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4746
  %7 = load i64, ptr %tmp19, align 8, !dbg !4736
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4747
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4727, metadata !DIExpression()), !dbg !4748
  store i32 0, ptr %i, align 4, !dbg !4748
  br label %for.cond, !dbg !4747

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !dbg !4749
  %9 = load ptr, ptr %ei, align 8, !dbg !4751
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %9, i32 0, i32 8, !dbg !4752
  %bf.load27 = load i32, ptr %nr_entries, align 8, !dbg !4752
  %bf.lshr = lshr i32 %bf.load27, 2, !dbg !4752
  %cmp = icmp slt i32 %8, %bf.lshr, !dbg !4753
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !4754

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4755
  br label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %ei, align 8, !dbg !4756
  %entries = getelementptr inbounds %struct.eventfs_inode, ptr %10, i32 0, i32 2, !dbg !4758
  %11 = load ptr, ptr %entries, align 8, !dbg !4758
  %12 = load i32, ptr %i, align 4, !dbg !4759
  %idxprom = sext i32 %12 to i64, !dbg !4756
  %arrayidx = getelementptr %struct.eventfs_entry, ptr %11, i64 %idxprom, !dbg !4756
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !4760
  %13 = load ptr, ptr %entry1, align 8, !dbg !4761
  %release = getelementptr inbounds %struct.eventfs_entry, ptr %13, i32 0, i32 2, !dbg !4763
  %14 = load ptr, ptr %release, align 8, !dbg !4763
  %tobool29 = icmp ne ptr %14, null, !dbg !4761
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !4764

if.then30:                                        ; preds = %for.body
  %15 = load ptr, ptr %entry1, align 8, !dbg !4765
  %release31 = getelementptr inbounds %struct.eventfs_entry, ptr %15, i32 0, i32 2, !dbg !4766
  %16 = load ptr, ptr %release31, align 8, !dbg !4766
  %17 = load ptr, ptr %entry1, align 8, !dbg !4767
  %name = getelementptr inbounds %struct.eventfs_entry, ptr %17, i32 0, i32 0, !dbg !4768
  %18 = load ptr, ptr %name, align 8, !dbg !4768
  %19 = load ptr, ptr %ei, align 8, !dbg !4769
  %data = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 5, !dbg !4770
  %20 = load ptr, ptr %data, align 8, !dbg !4770
  call void %16(ptr noundef %18, ptr noundef %20) #16, !dbg !4765
  br label %if.end32, !dbg !4765

if.end32:                                         ; preds = %if.then30, %for.body
  br label %for.inc, !dbg !4771

for.inc:                                          ; preds = %if.end32
  %21 = load i32, ptr %i, align 4, !dbg !4772
  %inc = add i32 %21, 1, !dbg !4772
  store i32 %inc, ptr %i, align 4, !dbg !4772
  br label %for.cond, !dbg !4755, !llvm.loop !4773

for.end:                                          ; preds = %for.cond.cleanup
  %22 = load ptr, ptr %ei, align 8, !dbg !4775
  %23 = getelementptr inbounds %struct.eventfs_inode, ptr %22, i32 0, i32 0, !dbg !4776
  call void @call_srcu(ptr noundef @eventfs_srcu, ptr noundef %23, ptr noundef @free_ei_rcu) #16, !dbg !4777
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !4778
  ret void, !dbg !4778
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !4779 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4786
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #16, !dbg !4787
  ret i1 %call, !dbg !4788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4789 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4793, metadata !DIExpression()), !dbg !4795
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4794, metadata !DIExpression()), !dbg !4796
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4797
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4798
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !4799
  ret i1 %call, !dbg !4800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4801 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4805, metadata !DIExpression()), !dbg !4809
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4806, metadata !DIExpression()), !dbg !4810
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4808, metadata !DIExpression()), !dbg !4813
  %0 = load i32, ptr %i.addr, align 4, !dbg !4814
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4815
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4816
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #16, !dbg !4817
  store i32 %call, ptr %old, align 4, !dbg !4813
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4818
  %tobool = icmp ne ptr %2, null, !dbg !4818
  br i1 %tobool, label %if.then, label %if.end, !dbg !4820

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4821
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4822
  store i32 %3, ptr %4, align 4, !dbg !4823
  br label %if.end, !dbg !4824

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4825
  %6 = load i32, ptr %i.addr, align 4, !dbg !4827
  %cmp = icmp eq i32 %5, %6, !dbg !4828
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4829

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4830

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4832

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4834

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4834

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4832

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4836

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4838

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4838

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4836, !srcloc !4840
  br label %do.cond7, !dbg !4836

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4836

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4832

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4832

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4841

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4842
  %cmp12 = icmp slt i32 %7, 0, !dbg !4842
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4842

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4842
  %9 = load i32, ptr %i.addr, align 4, !dbg !4842
  %sub = sub i32 %8, %9, !dbg !4842
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4842
  br label %lor.end, !dbg !4842

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4842
  %lnot14 = xor i1 %lnot, true, !dbg !4842
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4842
  %conv = sext i32 %lnot.ext to i64, !dbg !4842
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4842
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4842
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4844

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4845
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16, !dbg !4846
  br label %if.end17, !dbg !4846

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4847

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !4848
  %12 = load i1, ptr %retval, align 1, !dbg !4848
  ret i1 %12, !dbg !4848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !4849 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  br label %do.body, !dbg !4859

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4860

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4862
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !4863
  %1 = load i32, ptr %i.addr, align 4, !dbg !4864
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4865
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #16, !dbg !4866
  ret i32 %call, !dbg !4867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4868 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !4871 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4879, metadata !DIExpression()), !dbg !4881
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4880, metadata !DIExpression()), !dbg !4882
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4883
  %1 = load i64, ptr %size.addr, align 8, !dbg !4884
  %conv = trunc i64 %1 to i32, !dbg !4884
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !4885
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4886
  %3 = load i64, ptr %size.addr, align 8, !dbg !4886
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !4886
  ret void, !dbg !4887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !4888 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4891, metadata !DIExpression()), !dbg !4893
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4892, metadata !DIExpression()), !dbg !4894
  %0 = load i32, ptr %i.addr, align 4, !dbg !4895
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4896
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #16, !dbg !4897
  ret i32 %call, !dbg !4898
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4899 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4904, metadata !DIExpression()), !dbg !4906
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4905, metadata !DIExpression()), !dbg !4907
  ret i1 true, !dbg !4908
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4909 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4914, metadata !DIExpression()), !dbg !4917
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4915, metadata !DIExpression()), !dbg !4918
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4916, metadata !DIExpression()), !dbg !4919
  ret void, !dbg !4920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !4921 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4924, metadata !DIExpression()), !dbg !4928
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4925, metadata !DIExpression()), !dbg !4929
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !4930
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4926, metadata !DIExpression()), !dbg !4930
  %0 = load i32, ptr %i.addr, align 4, !dbg !4930
  %sub = sub i32 0, %0, !dbg !4930
  store i32 %sub, ptr %__ret, align 4, !dbg !4930
  %1 = load i32, ptr %__ret, align 4, !dbg !4930
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4930
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4930
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !4930, !srcloc !4931
  store i32 %3, ptr %__ret, align 4, !dbg !4930
  %4 = load i32, ptr %__ret, align 4, !dbg !4930
  store i32 %4, ptr %tmp, align 4, !dbg !4930
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !4932
  %5 = load i32, ptr %tmp, align 4, !dbg !4930
  ret i32 %5, !dbg !4933
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4934 dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_ei_rcu(ptr noundef %rcu) #0 align 16 !dbg !4937 {
entry:
  %rcu.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %rei = alloca ptr, align 8
  store ptr %rcu, ptr %rcu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !4939, metadata !DIExpression()), !dbg !4944
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4940, metadata !DIExpression()), !dbg !4946
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4941, metadata !DIExpression()), !dbg !4947
  %0 = load ptr, ptr %rcu.addr, align 8, !dbg !4947
  store ptr %0, ptr %__mptr, align 8, !dbg !4947
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4947
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4947
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4948
  %2 = load ptr, ptr %tmp, align 8, !dbg !4947
  store ptr %2, ptr %ei, align 8, !dbg !4946
  call void @llvm.lifetime.start.p0(i64 8, ptr %rei) #15, !dbg !4949
  call void @llvm.dbg.declare(metadata ptr %rei, metadata !4943, metadata !DIExpression()), !dbg !4950
  %3 = load ptr, ptr %ei, align 8, !dbg !4951
  %entry_attrs = getelementptr inbounds %struct.eventfs_inode, ptr %3, i32 0, i32 4, !dbg !4952
  %4 = load ptr, ptr %entry_attrs, align 8, !dbg !4952
  call void @kfree(ptr noundef %4) #16, !dbg !4953
  %5 = load ptr, ptr %ei, align 8, !dbg !4954
  %name = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 3, !dbg !4955
  %6 = load ptr, ptr %name, align 8, !dbg !4955
  call void @kfree_const(ptr noundef %6) #16, !dbg !4956
  %7 = load ptr, ptr %ei, align 8, !dbg !4957
  %is_events = getelementptr inbounds %struct.eventfs_inode, ptr %7, i32 0, i32 8, !dbg !4959
  %bf.load = load i32, ptr %is_events, align 8, !dbg !4959
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !4959
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4959
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !4957
  br i1 %tobool, label %if.then, label %if.else, !dbg !4960

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %ei, align 8, !dbg !4961
  %call = call ptr @get_root_inode(ptr noundef %8) #16, !dbg !4963
  store ptr %call, ptr %rei, align 8, !dbg !4964
  %9 = load ptr, ptr %rei, align 8, !dbg !4965
  call void @kfree(ptr noundef %9) #16, !dbg !4966
  br label %if.end, !dbg !4967

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %ei, align 8, !dbg !4968
  call void @kfree(ptr noundef %10) #16, !dbg !4970
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rei) #15, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !4971
  ret void, !dbg !4971
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4972 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4975 dso_local void @kfree_const(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !4977 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4981, metadata !DIExpression()), !dbg !4983
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4982, metadata !DIExpression()), !dbg !4984
  %0 = load i64, ptr %size.addr, align 8, !dbg !4985
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4986
  %or = or i32 %1, 256, !dbg !4987
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4988
  ret ptr %call, !dbg !4989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @init_ei(ptr noundef %ei, ptr noundef %name) #3 align 16 !dbg !4990 {
entry:
  %retval = alloca ptr, align 8
  %ei.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !4994, metadata !DIExpression()), !dbg !4996
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4995, metadata !DIExpression()), !dbg !4997
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4998
  %call = call ptr @kstrdup_const(ptr noundef %0, i32 noundef 3264) #16, !dbg !4999
  %1 = load ptr, ptr %ei.addr, align 8, !dbg !5000
  %name1 = getelementptr inbounds %struct.eventfs_inode, ptr %1, i32 0, i32 3, !dbg !5001
  store ptr %call, ptr %name1, align 8, !dbg !5002
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !5003
  %name2 = getelementptr inbounds %struct.eventfs_inode, ptr %2, i32 0, i32 3, !dbg !5005
  %3 = load ptr, ptr %name2, align 8, !dbg !5005
  %tobool = icmp ne ptr %3, null, !dbg !5003
  br i1 %tobool, label %if.end, label %if.then, !dbg !5006

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5007
  br label %return, !dbg !5007

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ei.addr, align 8, !dbg !5008
  %kref = getelementptr inbounds %struct.eventfs_inode, ptr %4, i32 0, i32 7, !dbg !5009
  call void @kref_init(ptr noundef %kref) #16, !dbg !5010
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !5011
  store ptr %5, ptr %retval, align 8, !dbg !5012
  br label %return, !dbg !5012

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !5013
  ret ptr %6, !dbg !5013
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5014 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5016, metadata !DIExpression()), !dbg !5021
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5017, metadata !DIExpression()), !dbg !5022
  %0 = load i64, ptr %size.addr, align 8, !dbg !5023
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5024
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5025

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5026
  %tobool = icmp ne i64 %2, 0, !dbg !5026
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5027

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5018, metadata !DIExpression()), !dbg !5029
  %3 = load i64, ptr %size.addr, align 8, !dbg !5030
  %cmp = icmp ugt i64 %3, 8192, !dbg !5032
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5033

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5034
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5035
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5036
  store ptr %call, ptr %retval, align 8, !dbg !5037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5037

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5038
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5038
  store i32 %call2, ptr %index, align 4, !dbg !5039
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5040
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5041
  %9 = ptrtoint ptr %8 to i64, !dbg !5041
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5042
  %idxprom = zext i32 %call3 to i64, !dbg !5043
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5043
  %10 = load i32, ptr %index, align 4, !dbg !5044
  %idxprom4 = zext i32 %10 to i64, !dbg !5043
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5043
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5043
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5045
  %13 = load i64, ptr %size.addr, align 8, !dbg !5046
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5047
  store ptr %call6, ptr %retval, align 8, !dbg !5048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5048

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5049
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5050
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5051
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5052
  store ptr %call8, ptr %retval, align 8, !dbg !5053
  br label %return, !dbg !5053

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5054
  ret ptr %16, !dbg !5054
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5055 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5056 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5060, metadata !DIExpression()), !dbg !5062
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5061, metadata !DIExpression()), !dbg !5063
  %0 = load i64, ptr %size.addr, align 8, !dbg !5064
  %tobool = icmp ne i64 %0, 0, !dbg !5064
  br i1 %tobool, label %if.end, label %if.then, !dbg !5066

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5067
  br label %return, !dbg !5067

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5068
  %cmp = icmp ule i64 %1, 8, !dbg !5070
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5071

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5072
  br label %return, !dbg !5072

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5073
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5075
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5076

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5077
  %cmp4 = icmp ule i64 %3, 96, !dbg !5078
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5079

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5081
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5083
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5084

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5085
  %cmp9 = icmp ule i64 %5, 192, !dbg !5086
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5087

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5088
  br label %return, !dbg !5088

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5089
  %cmp12 = icmp ule i64 %6, 8, !dbg !5091
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5092

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5093
  br label %return, !dbg !5093

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5094
  %cmp15 = icmp ule i64 %7, 16, !dbg !5096
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5097

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5098
  br label %return, !dbg !5098

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5099
  %cmp18 = icmp ule i64 %8, 32, !dbg !5101
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5102

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5103
  br label %return, !dbg !5103

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5104
  %cmp21 = icmp ule i64 %9, 64, !dbg !5106
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5107

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5108
  br label %return, !dbg !5108

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5109
  %cmp24 = icmp ule i64 %10, 128, !dbg !5111
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5112

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5114
  %cmp27 = icmp ule i64 %11, 256, !dbg !5116
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5117

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5119
  %cmp30 = icmp ule i64 %12, 512, !dbg !5121
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5122

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5124
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5126
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5127

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5129
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5131
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5132

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5134
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5136
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5137

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5138
  br label %return, !dbg !5138

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5139
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5141
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5142

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5143
  br label %return, !dbg !5143

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5144
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5146
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5147

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5149
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5151
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5152

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5153
  br label %return, !dbg !5153

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5154
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5156
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5157

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5158
  br label %return, !dbg !5158

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5159
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5161
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5162

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5163
  br label %return, !dbg !5163

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5164
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5166
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5167

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5169
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5171
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5172

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5174
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5176
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5177

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5178
  br label %return, !dbg !5178

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5179
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5181
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5182

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5183
  br label %return, !dbg !5183

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5184, !range !3932, !noundef !738
  %tobool69 = trunc i8 %25 to i1, !dbg !5184
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5186

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5187

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_248() #19, !dbg !5188, !srcloc !5191
  unreachable, !dbg !5188

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5192

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5193

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5194

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5196

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5194

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !5198, !srcloc !5200
  br label %do.end75, !dbg !5198

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5194

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5202
  ret i32 %26, !dbg !5202
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5203 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5206 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5210, metadata !DIExpression()), !dbg !5212
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5211, metadata !DIExpression()), !dbg !5213
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5214
  %and = and i32 %0, 17, !dbg !5214
  %cmp = icmp eq i32 %and, 0, !dbg !5214
  %lnot = xor i1 %cmp, true, !dbg !5214
  %lnot1 = xor i1 %lnot, true, !dbg !5214
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5214
  %conv = sext i32 %lnot.ext to i64, !dbg !5214
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5214
  %tobool = icmp ne i64 %expval, 0, !dbg !5214
  br i1 %tobool, label %if.then, label %if.end, !dbg !5216

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5217
  br label %return, !dbg !5217

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5218
  %and2 = and i32 %1, 1, !dbg !5220
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5220
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5221

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5223
  br label %return, !dbg !5223

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5225
  ret i32 %2, !dbg !5225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5226 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5227 dso_local void @__compiletime_assert_248() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5228 dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #3 align 16 !dbg !5231 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5235
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5236
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #16, !dbg !5237
  ret void, !dbg !5238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !5239 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5243, metadata !DIExpression()), !dbg !5245
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5244, metadata !DIExpression()), !dbg !5246
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5247
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !5248
  %1 = load i32, ptr %n.addr, align 4, !dbg !5249
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #16, !dbg !5250
  ret void, !dbg !5251
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !5252 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5256, metadata !DIExpression()), !dbg !5258
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5257, metadata !DIExpression()), !dbg !5259
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5260
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5261
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5262
  %2 = load i32, ptr %i.addr, align 4, !dbg !5263
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #16, !dbg !5264
  ret void, !dbg !5265
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5266 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5269, metadata !DIExpression()), !dbg !5271
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5272
  %1 = load i64, ptr %size.addr, align 8, !dbg !5273
  %conv = trunc i64 %1 to i32, !dbg !5273
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5274
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5275
  %3 = load i64, ptr %size.addr, align 8, !dbg !5275
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !5275
  ret void, !dbg !5276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !5277 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5279, metadata !DIExpression()), !dbg !5281
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5280, metadata !DIExpression()), !dbg !5282
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5283
  %1 = load i32, ptr %i.addr, align 4, !dbg !5284
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #16, !dbg !5285
  ret void, !dbg !5286
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !5287 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  br label %do.body, !dbg !5293

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5294
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5294
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5294
  store volatile i32 %0, ptr %counter, align 4, !dbg !5294
  br label %do.end, !dbg !5294

do.end:                                           ; preds = %do.body
  ret void, !dbg !5296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5297 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5301, metadata !DIExpression()), !dbg !5304
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5302, metadata !DIExpression()), !dbg !5305
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5303, metadata !DIExpression()), !dbg !5306
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5307
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5309
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5310
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5311
  br i1 %call, label %if.end, label %if.then, !dbg !5312

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5313

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5314
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5315
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5316
  store ptr %3, ptr %prev1, align 8, !dbg !5317
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5318
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5319
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5320
  store ptr %5, ptr %next2, align 8, !dbg !5321
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5322
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5323
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5324
  store ptr %7, ptr %prev3, align 8, !dbg !5325
  br label %do.body, !dbg !5326

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5327

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5329

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5327

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5331
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5331
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5331
  store volatile ptr %9, ptr %next6, align 8, !dbg !5331
  br label %do.end7, !dbg !5331

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5327

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5334 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5338, metadata !DIExpression()), !dbg !5341
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5339, metadata !DIExpression()), !dbg !5342
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5340, metadata !DIExpression()), !dbg !5343
  ret i1 true, !dbg !5344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_ei(ptr noundef %ei) #3 align 16 !dbg !5345 {
entry:
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !5349
  %tobool = icmp ne ptr %0, null, !dbg !5349
  br i1 %tobool, label %if.then, label %if.end, !dbg !5351

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ei.addr, align 8, !dbg !5352
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %1, i32 0, i32 8, !dbg !5354
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !5355
  %bf.clear = and i32 %bf.load, -2, !dbg !5355
  %bf.set = or i32 %bf.clear, 1, !dbg !5355
  store i32 %bf.set, ptr %is_freed, align 8, !dbg !5355
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !5356
  call void @put_ei(ptr noundef %2) #16, !dbg !5357
  br label %if.end, !dbg !5358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @eventfs_root_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 16 !dbg !5360 {
entry:
  %retval = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ei_child = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %name = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr21 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %i = alloca i32, align 4
  %data = alloca ptr, align 8
  %mode = alloca i16, align 2
  %fops = alloca ptr, align 8
  %entry29 = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5362, metadata !DIExpression()), !dbg !5385
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5363, metadata !DIExpression()), !dbg !5386
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5364, metadata !DIExpression()), !dbg !5387
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei_child) #15, !dbg !5388
  call void @llvm.dbg.declare(metadata ptr %ei_child, metadata !5365, metadata !DIExpression()), !dbg !5389
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #15, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5366, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !5367, metadata !DIExpression()), !dbg !5393
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !5394
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5368, metadata !DIExpression()), !dbg !5395
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5396
  %d_name = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, !dbg !5397
  %name1 = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5398
  %1 = load ptr, ptr %name1, align 8, !dbg !5398
  store ptr %1, ptr %name, align 8, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #15, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5369, metadata !DIExpression()), !dbg !5400
  store ptr null, ptr %result, align 8, !dbg !5400
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5401
  %call = call ptr @get_tracefs(ptr noundef %2) #16, !dbg !5402
  store ptr %call, ptr %ti, align 8, !dbg !5403
  %3 = load ptr, ptr %ti, align 8, !dbg !5404
  %flags2 = getelementptr inbounds %struct.tracefs_inode, ptr %3, i32 0, i32 2, !dbg !5406
  %4 = load i64, ptr %flags2, align 8, !dbg !5406
  %and = and i64 %4, 2, !dbg !5407
  %tobool = icmp ne i64 %and, 0, !dbg !5407
  br i1 %tobool, label %if.end, label %if.then, !dbg !5408

if.then:                                          ; preds = %entry
  %call3 = call ptr @ERR_PTR(i64 noundef -5) #16, !dbg !5409
  store ptr %call3, ptr %retval, align 8, !dbg !5410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !5410

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @eventfs_mutex) #16, !dbg !5411
  %5 = load ptr, ptr %ti, align 8, !dbg !5412
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %5, i32 0, i32 3, !dbg !5413
  %6 = load ptr, ptr %private, align 8, !dbg !5413
  store ptr %6, ptr %ei, align 8, !dbg !5414
  %7 = load ptr, ptr %ei, align 8, !dbg !5415
  %tobool4 = icmp ne ptr %7, null, !dbg !5415
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !5417

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %ei, align 8, !dbg !5418
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %8, i32 0, i32 8, !dbg !5419
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !5419
  %bf.clear = and i32 %bf.load, 1, !dbg !5419
  %tobool5 = icmp ne i32 %bf.clear, 0, !dbg !5418
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5420

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  br label %out, !dbg !5421

if.end7:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5370, metadata !DIExpression()), !dbg !5422
  %9 = load ptr, ptr %ei, align 8, !dbg !5422
  %children = getelementptr inbounds %struct.eventfs_inode, ptr %9, i32 0, i32 1, !dbg !5422
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !5422
  %10 = load ptr, ptr %next, align 8, !dbg !5422
  store ptr %10, ptr %__mptr, align 8, !dbg !5422
  %11 = load ptr, ptr %__mptr, align 8, !dbg !5422
  %add.ptr = getelementptr i8, ptr %11, i64 0, !dbg !5422
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5423
  %12 = load ptr, ptr %tmp, align 8, !dbg !5422
  store ptr %12, ptr %ei_child, align 8, !dbg !5423
  br label %for.cond, !dbg !5423

for.cond:                                         ; preds = %for.inc, %if.end7
  %13 = load ptr, ptr %ei_child, align 8, !dbg !5424
  %14 = getelementptr inbounds %struct.eventfs_inode, ptr %13, i32 0, i32 0, !dbg !5424
  %15 = load ptr, ptr %ei, align 8, !dbg !5424
  %children8 = getelementptr inbounds %struct.eventfs_inode, ptr %15, i32 0, i32 1, !dbg !5424
  %cmp = icmp eq ptr %14, %children8, !dbg !5424
  %lnot = xor i1 %cmp, true, !dbg !5424
  br i1 %lnot, label %for.body, label %for.end, !dbg !5423

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %ei_child, align 8, !dbg !5425
  %name9 = getelementptr inbounds %struct.eventfs_inode, ptr %16, i32 0, i32 3, !dbg !5428
  %17 = load ptr, ptr %name9, align 8, !dbg !5428
  %18 = load ptr, ptr %name, align 8, !dbg !5429
  %call10 = call i32 @strcmp(ptr noundef %17, ptr noundef %18) #16, !dbg !5430
  %cmp11 = icmp ne i32 %call10, 0, !dbg !5431
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5432

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !5433

if.end13:                                         ; preds = %for.body
  %19 = load ptr, ptr %ei_child, align 8, !dbg !5434
  %is_freed14 = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 8, !dbg !5436
  %bf.load15 = load i32, ptr %is_freed14, align 8, !dbg !5436
  %bf.clear16 = and i32 %bf.load15, 1, !dbg !5436
  %tobool17 = icmp ne i32 %bf.clear16, 0, !dbg !5434
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5437

if.then18:                                        ; preds = %if.end13
  br label %out, !dbg !5438

if.end19:                                         ; preds = %if.end13
  %20 = load ptr, ptr %dentry.addr, align 8, !dbg !5439
  %21 = load ptr, ptr %ei, align 8, !dbg !5440
  %22 = load ptr, ptr %ei_child, align 8, !dbg !5441
  %call20 = call ptr @lookup_dir_entry(ptr noundef %20, ptr noundef %21, ptr noundef %22) #16, !dbg !5442
  store ptr %call20, ptr %result, align 8, !dbg !5443
  br label %out, !dbg !5444

for.inc:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #15, !dbg !5445
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !5373, metadata !DIExpression()), !dbg !5445
  %23 = load ptr, ptr %ei_child, align 8, !dbg !5445
  %24 = getelementptr inbounds %struct.eventfs_inode, ptr %23, i32 0, i32 0, !dbg !5445
  %next22 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 0, !dbg !5445
  %25 = load ptr, ptr %next22, align 8, !dbg !5445
  store ptr %25, ptr %__mptr21, align 8, !dbg !5445
  %26 = load ptr, ptr %__mptr21, align 8, !dbg !5445
  %add.ptr24 = getelementptr i8, ptr %26, i64 0, !dbg !5445
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !5445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #15, !dbg !5424
  %27 = load ptr, ptr %tmp23, align 8, !dbg !5445
  store ptr %27, ptr %ei_child, align 8, !dbg !5424
  br label %for.cond, !dbg !5424, !llvm.loop !5446

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5448
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5376, metadata !DIExpression()), !dbg !5449
  store i32 0, ptr %i, align 4, !dbg !5449
  br label %for.cond25, !dbg !5448

for.cond25:                                       ; preds = %for.inc44, %for.end
  %28 = load i32, ptr %i, align 4, !dbg !5450
  %29 = load ptr, ptr %ei, align 8, !dbg !5451
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %29, i32 0, i32 8, !dbg !5452
  %bf.load26 = load i32, ptr %nr_entries, align 8, !dbg !5452
  %bf.lshr = lshr i32 %bf.load26, 2, !dbg !5452
  %cmp27 = icmp slt i32 %28, %bf.lshr, !dbg !5453
  br i1 %cmp27, label %for.body28, label %for.cond.cleanup, !dbg !5454

for.cond.cleanup:                                 ; preds = %for.cond25
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5454

for.body28:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !5455
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5378, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #15, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !5381, metadata !DIExpression()), !dbg !5458
  call void @llvm.lifetime.start.p0(i64 8, ptr %fops) #15, !dbg !5459
  call void @llvm.dbg.declare(metadata ptr %fops, metadata !5382, metadata !DIExpression()), !dbg !5460
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry29) #15, !dbg !5461
  call void @llvm.dbg.declare(metadata ptr %entry29, metadata !5383, metadata !DIExpression()), !dbg !5462
  %30 = load ptr, ptr %ei, align 8, !dbg !5463
  %entries = getelementptr inbounds %struct.eventfs_inode, ptr %30, i32 0, i32 2, !dbg !5464
  %31 = load ptr, ptr %entries, align 8, !dbg !5464
  %32 = load i32, ptr %i, align 4, !dbg !5465
  %idxprom = sext i32 %32 to i64, !dbg !5463
  %arrayidx = getelementptr %struct.eventfs_entry, ptr %31, i64 %idxprom, !dbg !5463
  store ptr %arrayidx, ptr %entry29, align 8, !dbg !5462
  %33 = load ptr, ptr %name, align 8, !dbg !5466
  %34 = load ptr, ptr %entry29, align 8, !dbg !5468
  %name30 = getelementptr inbounds %struct.eventfs_entry, ptr %34, i32 0, i32 0, !dbg !5469
  %35 = load ptr, ptr %name30, align 8, !dbg !5469
  %call31 = call i32 @strcmp(ptr noundef %33, ptr noundef %35) #16, !dbg !5470
  %cmp32 = icmp ne i32 %call31, 0, !dbg !5471
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !5472

if.then33:                                        ; preds = %for.body28
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5473

if.end34:                                         ; preds = %for.body28
  %36 = load ptr, ptr %ei, align 8, !dbg !5474
  %data35 = getelementptr inbounds %struct.eventfs_inode, ptr %36, i32 0, i32 5, !dbg !5475
  %37 = load ptr, ptr %data35, align 8, !dbg !5475
  store ptr %37, ptr %data, align 8, !dbg !5476
  %38 = load ptr, ptr %entry29, align 8, !dbg !5477
  %callback = getelementptr inbounds %struct.eventfs_entry, ptr %38, i32 0, i32 1, !dbg !5479
  %39 = load ptr, ptr %callback, align 8, !dbg !5479
  %40 = load ptr, ptr %name, align 8, !dbg !5480
  %call36 = call i32 %39(ptr noundef %40, ptr noundef %mode, ptr noundef %data, ptr noundef %fops) #16, !dbg !5477
  %cmp37 = icmp sle i32 %call36, 0, !dbg !5481
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !5482

if.then38:                                        ; preds = %if.end34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5483

if.end39:                                         ; preds = %if.end34
  %41 = load ptr, ptr %dentry.addr, align 8, !dbg !5484
  %42 = load ptr, ptr %ei, align 8, !dbg !5485
  %43 = load i32, ptr %i, align 4, !dbg !5486
  %44 = load i16, ptr %mode, align 2, !dbg !5487
  %45 = load ptr, ptr %data, align 8, !dbg !5488
  %46 = load ptr, ptr %fops, align 8, !dbg !5489
  %call40 = call ptr @lookup_file_dentry(ptr noundef %41, ptr noundef %42, i32 noundef %43, i16 noundef zeroext %44, ptr noundef %45, ptr noundef %46) #16, !dbg !5490
  store ptr %call40, ptr %result, align 8, !dbg !5491
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5492

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry29) #15, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 8, ptr %fops) #15, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #15, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !5493
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 8, label %for.inc44
  ]

for.inc44:                                        ; preds = %cleanup
  %47 = load i32, ptr %i, align 4, !dbg !5494
  %inc = add i32 %47, 1, !dbg !5494
  store i32 %inc, ptr %i, align 4, !dbg !5494
  br label %for.cond25, !dbg !5495, !llvm.loop !5496

cleanup45:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5495
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %cleanup48 [
    i32 6, label %for.end47
    i32 2, label %out
  ]

for.end47:                                        ; preds = %cleanup45
  br label %out, !dbg !5497

out:                                              ; preds = %for.end47, %cleanup45, %if.end19, %if.then18, %if.then6
  call void @llvm.dbg.label(metadata !5384), !dbg !5498
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !5499
  %48 = load ptr, ptr %result, align 8, !dbg !5500
  store ptr %48, ptr %retval, align 8, !dbg !5501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !5501

cleanup48:                                        ; preds = %out, %cleanup45, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #15, !dbg !5502
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !5502
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !5502
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #15, !dbg !5502
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei_child) #15, !dbg !5502
  %49 = load ptr, ptr %retval, align 8, !dbg !5502
  ret ptr %49, !dbg !5502
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfs_permission(ptr noundef %idmap, ptr noundef %inode, i32 noundef %mask) #0 align 16 !dbg !5503 {
entry:
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5505, metadata !DIExpression()), !dbg !5508
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5506, metadata !DIExpression()), !dbg !5509
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5507, metadata !DIExpression()), !dbg !5510
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5511
  call void @set_top_events_ownership(ptr noundef %0) #16, !dbg !5512
  %1 = load ptr, ptr %idmap.addr, align 8, !dbg !5513
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5514
  %3 = load i32, ptr %mask.addr, align 4, !dbg !5515
  %call = call i32 @generic_permission(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16, !dbg !5516
  ret i32 %call, !dbg !5517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfs_set_attr(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %iattr) #0 align 16 !dbg !5518 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %iattr.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5520, metadata !DIExpression()), !dbg !5532
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5521, metadata !DIExpression()), !dbg !5533
  store ptr %iattr, ptr %iattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iattr.addr, metadata !5522, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5523, metadata !DIExpression()), !dbg !5536
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !5524, metadata !DIExpression()), !dbg !5538
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5525, metadata !DIExpression()), !dbg !5540
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5541
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5526, metadata !DIExpression()), !dbg !5542
  call void @mutex_lock(ptr noundef @eventfs_mutex) #16, !dbg !5543
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5544
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !5545
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !5545
  store ptr %1, ptr %ei, align 8, !dbg !5546
  %2 = load ptr, ptr %ei, align 8, !dbg !5547
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %2, i32 0, i32 8, !dbg !5549
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !5549
  %bf.clear = and i32 %bf.load, 1, !dbg !5549
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !5547
  br i1 %tobool, label %if.then, label %if.end, !dbg !5550

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !5551
  store i32 -19, ptr %retval, align 4, !dbg !5553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5553

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5554
  %d_inode = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5, !dbg !5556
  %4 = load ptr, ptr %d_inode, align 8, !dbg !5556
  %i_mode = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 0, !dbg !5557
  %5 = load i16, ptr %i_mode, align 8, !dbg !5557
  %conv = zext i16 %5 to i32, !dbg !5554
  %and = and i32 %conv, 16384, !dbg !5558
  %tobool2 = icmp ne i32 %and, 0, !dbg !5558
  br i1 %tobool2, label %if.end14, label %if.then3, !dbg !5559

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %ei, align 8, !dbg !5560
  %entry_attrs = getelementptr inbounds %struct.eventfs_inode, ptr %6, i32 0, i32 4, !dbg !5563
  %7 = load ptr, ptr %entry_attrs, align 8, !dbg !5563
  %tobool4 = icmp ne ptr %7, null, !dbg !5560
  br i1 %tobool4, label %if.end13, label %if.then5, !dbg !5564

if.then5:                                         ; preds = %if.then3
  %8 = load ptr, ptr %ei, align 8, !dbg !5565
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %8, i32 0, i32 8, !dbg !5567
  %bf.load6 = load i32, ptr %nr_entries, align 8, !dbg !5567
  %bf.lshr = lshr i32 %bf.load6, 2, !dbg !5567
  %conv7 = zext i32 %bf.lshr to i64, !dbg !5565
  %call = call noalias ptr @kcalloc(i64 noundef %conv7, i64 noundef 12, i32 noundef 3136) #20, !dbg !5568
  %9 = load ptr, ptr %ei, align 8, !dbg !5569
  %entry_attrs8 = getelementptr inbounds %struct.eventfs_inode, ptr %9, i32 0, i32 4, !dbg !5570
  store ptr %call, ptr %entry_attrs8, align 8, !dbg !5571
  %10 = load ptr, ptr %ei, align 8, !dbg !5572
  %entry_attrs9 = getelementptr inbounds %struct.eventfs_inode, ptr %10, i32 0, i32 4, !dbg !5574
  %11 = load ptr, ptr %entry_attrs9, align 8, !dbg !5574
  %tobool10 = icmp ne ptr %11, null, !dbg !5572
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5575

if.then11:                                        ; preds = %if.then5
  store i32 -12, ptr %ret, align 4, !dbg !5576
  br label %out, !dbg !5578

if.end12:                                         ; preds = %if.then5
  br label %if.end13, !dbg !5579

if.end13:                                         ; preds = %if.end12, %if.then3
  br label %if.end14, !dbg !5580

if.end14:                                         ; preds = %if.end13, %if.end
  %12 = load ptr, ptr %idmap.addr, align 8, !dbg !5581
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !5582
  %14 = load ptr, ptr %iattr.addr, align 8, !dbg !5583
  %call15 = call i32 @simple_setattr(ptr noundef %12, ptr noundef %13, ptr noundef %14) #16, !dbg !5584
  store i32 %call15, ptr %ret, align 4, !dbg !5585
  %15 = load i32, ptr %ret, align 4, !dbg !5586
  %cmp = icmp slt i32 %15, 0, !dbg !5588
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !5589

if.then17:                                        ; preds = %if.end14
  br label %out, !dbg !5590

if.end18:                                         ; preds = %if.end14
  %16 = load ptr, ptr %dentry.addr, align 8, !dbg !5591
  %d_inode19 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5, !dbg !5592
  %17 = load ptr, ptr %d_inode19, align 8, !dbg !5592
  %i_mode20 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 0, !dbg !5593
  %18 = load i16, ptr %i_mode20, align 8, !dbg !5593
  %conv21 = zext i16 %18 to i32, !dbg !5591
  %and22 = and i32 %conv21, 16384, !dbg !5594
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5594
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !5595

if.then24:                                        ; preds = %if.end18
  %19 = load ptr, ptr %ei, align 8, !dbg !5596
  %attr = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 6, !dbg !5598
  %20 = load ptr, ptr %iattr.addr, align 8, !dbg !5599
  call void @update_attr(ptr noundef %attr, ptr noundef %20) #16, !dbg !5600
  br label %if.end40, !dbg !5601

if.else:                                          ; preds = %if.end18
  %21 = load ptr, ptr %dentry.addr, align 8, !dbg !5602
  %d_name = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 4, !dbg !5603
  %name25 = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5604
  %22 = load ptr, ptr %name25, align 8, !dbg !5604
  store ptr %22, ptr %name, align 8, !dbg !5605
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5527, metadata !DIExpression()), !dbg !5607
  store i32 0, ptr %i, align 4, !dbg !5607
  br label %for.cond, !dbg !5606

for.cond:                                         ; preds = %for.inc, %if.else
  %23 = load i32, ptr %i, align 4, !dbg !5608
  %24 = load ptr, ptr %ei, align 8, !dbg !5610
  %nr_entries26 = getelementptr inbounds %struct.eventfs_inode, ptr %24, i32 0, i32 8, !dbg !5611
  %bf.load27 = load i32, ptr %nr_entries26, align 8, !dbg !5611
  %bf.lshr28 = lshr i32 %bf.load27, 2, !dbg !5611
  %cmp29 = icmp slt i32 %23, %bf.lshr28, !dbg !5612
  br i1 %cmp29, label %for.body, label %for.cond.cleanup, !dbg !5613

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5613

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %ei, align 8, !dbg !5614
  %entries = getelementptr inbounds %struct.eventfs_inode, ptr %25, i32 0, i32 2, !dbg !5616
  %26 = load ptr, ptr %entries, align 8, !dbg !5616
  %27 = load i32, ptr %i, align 4, !dbg !5617
  %idxprom = sext i32 %27 to i64, !dbg !5614
  %arrayidx = getelementptr %struct.eventfs_entry, ptr %26, i64 %idxprom, !dbg !5614
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !5618
  %28 = load ptr, ptr %name, align 8, !dbg !5619
  %29 = load ptr, ptr %entry1, align 8, !dbg !5621
  %name31 = getelementptr inbounds %struct.eventfs_entry, ptr %29, i32 0, i32 0, !dbg !5622
  %30 = load ptr, ptr %name31, align 8, !dbg !5622
  %call32 = call i32 @strcmp(ptr noundef %28, ptr noundef %30) #16, !dbg !5623
  %cmp33 = icmp eq i32 %call32, 0, !dbg !5624
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !5625

if.then35:                                        ; preds = %for.body
  %31 = load ptr, ptr %ei, align 8, !dbg !5626
  %entry_attrs36 = getelementptr inbounds %struct.eventfs_inode, ptr %31, i32 0, i32 4, !dbg !5628
  %32 = load ptr, ptr %entry_attrs36, align 8, !dbg !5628
  %33 = load i32, ptr %i, align 4, !dbg !5629
  %idxprom37 = sext i32 %33 to i64, !dbg !5626
  %arrayidx38 = getelementptr %struct.eventfs_attr, ptr %32, i64 %idxprom37, !dbg !5626
  %34 = load ptr, ptr %iattr.addr, align 8, !dbg !5630
  call void @update_attr(ptr noundef %arrayidx38, ptr noundef %34) #16, !dbg !5631
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5632

if.end39:                                         ; preds = %for.body
  br label %for.inc, !dbg !5633

for.inc:                                          ; preds = %if.end39
  %35 = load i32, ptr %i, align 4, !dbg !5634
  %inc = add i32 %35, 1, !dbg !5634
  store i32 %inc, ptr %i, align 4, !dbg !5634
  br label %for.cond, !dbg !5635, !llvm.loop !5636

cleanup:                                          ; preds = %if.then35, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5635
  br label %for.end

for.end:                                          ; preds = %cleanup
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.then24
  br label %out, !dbg !5638

out:                                              ; preds = %if.end40, %if.then17, %if.then11
  call void @llvm.dbg.label(metadata !5531), !dbg !5639
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !5640
  %36 = load i32, ptr %ret, align 4, !dbg !5641
  store i32 %36, ptr %retval, align 4, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5642

cleanup41:                                        ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !5643
  %37 = load i32, ptr %retval, align 4, !dbg !5643
  ret i32 %37, !dbg !5643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfs_get_attr(ptr noundef %idmap, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 16 !dbg !5644 {
entry:
  %idmap.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %request_mask.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5646, metadata !DIExpression()), !dbg !5653
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5647, metadata !DIExpression()), !dbg !5654
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !5648, metadata !DIExpression()), !dbg !5655
  store i32 %request_mask, ptr %request_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request_mask.addr, metadata !5649, metadata !DIExpression()), !dbg !5656
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5650, metadata !DIExpression()), !dbg !5657
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5651, metadata !DIExpression()), !dbg !5659
  %0 = load ptr, ptr %path.addr, align 8, !dbg !5660
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !5661
  %1 = load ptr, ptr %dentry1, align 8, !dbg !5661
  store ptr %1, ptr %dentry, align 8, !dbg !5659
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5652, metadata !DIExpression()), !dbg !5663
  %2 = load ptr, ptr %dentry, align 8, !dbg !5664
  %call = call ptr @d_backing_inode(ptr noundef %2) #16, !dbg !5665
  store ptr %call, ptr %inode, align 8, !dbg !5663
  %3 = load ptr, ptr %inode, align 8, !dbg !5666
  call void @set_top_events_ownership(ptr noundef %3) #16, !dbg !5667
  %4 = load ptr, ptr %idmap.addr, align 8, !dbg !5668
  %5 = load i32, ptr %request_mask.addr, align 4, !dbg !5669
  %6 = load ptr, ptr %inode, align 8, !dbg !5670
  %7 = load ptr, ptr %stat.addr, align 8, !dbg !5671
  call void @generic_fillattr(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #16, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !5673
  ret i32 0, !dbg !5674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_dir_entry(ptr noundef %dentry, ptr noundef %pei, ptr noundef %ei) #0 align 16 !dbg !5678 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %pei.addr = alloca ptr, align 8
  %ei.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5682, metadata !DIExpression()), !dbg !5687
  store ptr %pei, ptr %pei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pei.addr, metadata !5683, metadata !DIExpression()), !dbg !5688
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !5684, metadata !DIExpression()), !dbg !5689
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #15, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5685, metadata !DIExpression()), !dbg !5691
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5686, metadata !DIExpression()), !dbg !5693
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5694
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5695
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5695
  %call = call ptr @tracefs_get_inode(ptr noundef %1) #16, !dbg !5696
  store ptr %call, ptr %inode, align 8, !dbg !5697
  %2 = load ptr, ptr %inode, align 8, !dbg !5698
  %tobool = icmp ne ptr %2, null, !dbg !5698
  %lnot = xor i1 %tobool, true, !dbg !5698
  %lnot1 = xor i1 %lnot, true, !dbg !5698
  %lnot2 = xor i1 %lnot1, true, !dbg !5698
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5698
  %conv = sext i32 %lnot.ext to i64, !dbg !5698
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5698
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5698
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5700

if.then:                                          ; preds = %entry
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !5701
  store ptr %call4, ptr %retval, align 8, !dbg !5702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5702

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5703
  %4 = load ptr, ptr %inode, align 8, !dbg !5704
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !5705
  %attr = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 6, !dbg !5706
  call void @update_inode_attr(ptr noundef %3, ptr noundef %4, ptr noundef %attr, i16 noundef zeroext 16877) #16, !dbg !5707
  %6 = load ptr, ptr %inode, align 8, !dbg !5708
  %i_op = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8, !dbg !5709
  store ptr @eventfs_dir_inode_operations, ptr %i_op, align 8, !dbg !5710
  %7 = load ptr, ptr %inode, align 8, !dbg !5711
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39, !dbg !5712
  store ptr @eventfs_file_operations, ptr %8, align 8, !dbg !5713
  %9 = load ptr, ptr %ei.addr, align 8, !dbg !5714
  %call5 = call i32 @eventfs_dir_ino(ptr noundef %9) #16, !dbg !5715
  %conv6 = sext i32 %call5 to i64, !dbg !5715
  %10 = load ptr, ptr %inode, align 8, !dbg !5716
  %i_ino = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 12, !dbg !5717
  store i64 %conv6, ptr %i_ino, align 8, !dbg !5718
  %11 = load ptr, ptr %inode, align 8, !dbg !5719
  %call7 = call ptr @get_tracefs(ptr noundef %11) #16, !dbg !5720
  store ptr %call7, ptr %ti, align 8, !dbg !5721
  %12 = load ptr, ptr %ti, align 8, !dbg !5722
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %12, i32 0, i32 2, !dbg !5723
  %13 = load i64, ptr %flags, align 8, !dbg !5724
  %or = or i64 %13, 2, !dbg !5724
  store i64 %or, ptr %flags, align 8, !dbg !5724
  %14 = load ptr, ptr %ei.addr, align 8, !dbg !5725
  %15 = load ptr, ptr %ti, align 8, !dbg !5726
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %15, i32 0, i32 3, !dbg !5727
  store ptr %14, ptr %private, align 8, !dbg !5728
  %16 = load ptr, ptr %ei.addr, align 8, !dbg !5729
  %call8 = call ptr @get_ei(ptr noundef %16) #16, !dbg !5730
  %17 = load ptr, ptr %dentry.addr, align 8, !dbg !5731
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 11, !dbg !5732
  store ptr %call8, ptr %d_fsdata, align 8, !dbg !5733
  %18 = load ptr, ptr %dentry.addr, align 8, !dbg !5734
  %19 = load ptr, ptr %inode, align 8, !dbg !5735
  call void @d_add(ptr noundef %18, ptr noundef %19) #16, !dbg !5736
  store ptr null, ptr %retval, align 8, !dbg !5737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !5738
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #15, !dbg !5738
  %20 = load ptr, ptr %retval, align 8, !dbg !5738
  ret ptr %20, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_file_dentry(ptr noundef %dentry, ptr noundef %ei, i32 noundef %idx, i16 noundef zeroext %mode, ptr noundef %data, ptr noundef %fops) #0 align 16 !dbg !5739 {
entry:
  %dentry.addr = alloca ptr, align 8
  %ei.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %data.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5743, metadata !DIExpression()), !dbg !5750
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !5744, metadata !DIExpression()), !dbg !5751
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5745, metadata !DIExpression()), !dbg !5752
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5746, metadata !DIExpression()), !dbg !5753
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5747, metadata !DIExpression()), !dbg !5754
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !5748, metadata !DIExpression()), !dbg !5755
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #15, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5749, metadata !DIExpression()), !dbg !5757
  store ptr null, ptr %attr, align 8, !dbg !5757
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !5758
  %entry_attrs = getelementptr inbounds %struct.eventfs_inode, ptr %0, i32 0, i32 4, !dbg !5760
  %1 = load ptr, ptr %entry_attrs, align 8, !dbg !5760
  %tobool = icmp ne ptr %1, null, !dbg !5758
  br i1 %tobool, label %if.then, label %if.end, !dbg !5761

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !5762
  %entry_attrs1 = getelementptr inbounds %struct.eventfs_inode, ptr %2, i32 0, i32 4, !dbg !5763
  %3 = load ptr, ptr %entry_attrs1, align 8, !dbg !5763
  %4 = load i32, ptr %idx.addr, align 4, !dbg !5764
  %idxprom = sext i32 %4 to i64, !dbg !5762
  %arrayidx = getelementptr %struct.eventfs_attr, ptr %3, i64 %idxprom, !dbg !5762
  store ptr %arrayidx, ptr %attr, align 8, !dbg !5765
  br label %if.end, !dbg !5766

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !5767
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5768
  %7 = load i16, ptr %mode.addr, align 2, !dbg !5769
  %8 = load ptr, ptr %attr, align 8, !dbg !5770
  %9 = load ptr, ptr %data.addr, align 8, !dbg !5771
  %10 = load ptr, ptr %fops.addr, align 8, !dbg !5772
  %call = call ptr @lookup_file(ptr noundef %5, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #16, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #15, !dbg !5774
  ret ptr %call, !dbg !5775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_inode_attr(ptr noundef %dentry, ptr noundef %inode, ptr noundef %attr, i16 noundef zeroext %mode) #0 align 16 !dbg !5776 {
entry:
  %dentry.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %events_ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5780, metadata !DIExpression()), !dbg !5785
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5781, metadata !DIExpression()), !dbg !5786
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5782, metadata !DIExpression()), !dbg !5787
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5783, metadata !DIExpression()), !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %events_ei) #15, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %events_ei, metadata !5784, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5791
  %call = call ptr @eventfs_find_events(ptr noundef %0) #16, !dbg !5792
  store ptr %call, ptr %events_ei, align 8, !dbg !5790
  %1 = load ptr, ptr %events_ei, align 8, !dbg !5793
  %tobool = icmp ne ptr %1, null, !dbg !5793
  br i1 %tobool, label %if.end, label %if.then, !dbg !5795

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5796

if.end:                                           ; preds = %entry
  %2 = load i16, ptr %mode.addr, align 2, !dbg !5797
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5798
  %i_mode = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 0, !dbg !5799
  store i16 %2, ptr %i_mode, align 8, !dbg !5800
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5801
  %i_uid = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2, !dbg !5802
  %5 = load ptr, ptr %events_ei, align 8, !dbg !5803
  %attr1 = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 6, !dbg !5804
  %uid = getelementptr inbounds %struct.eventfs_attr, ptr %attr1, i32 0, i32 1, !dbg !5805
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %uid, i64 4, i1 false), !dbg !5805
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5806
  %i_gid = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4, !dbg !5807
  %7 = load ptr, ptr %events_ei, align 8, !dbg !5808
  %attr2 = getelementptr inbounds %struct.eventfs_inode, ptr %7, i32 0, i32 6, !dbg !5809
  %gid = getelementptr inbounds %struct.eventfs_attr, ptr %attr2, i32 0, i32 2, !dbg !5810
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %gid, i64 4, i1 false), !dbg !5810
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !5811
  %tobool3 = icmp ne ptr %8, null, !dbg !5811
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5813

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5814

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr.addr, align 8, !dbg !5815
  %mode6 = getelementptr inbounds %struct.eventfs_attr, ptr %9, i32 0, i32 0, !dbg !5817
  %10 = load i32, ptr %mode6, align 4, !dbg !5817
  %and = and i32 %10, 65536, !dbg !5818
  %tobool7 = icmp ne i32 %and, 0, !dbg !5818
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !5819

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %attr.addr, align 8, !dbg !5820
  %mode9 = getelementptr inbounds %struct.eventfs_attr, ptr %11, i32 0, i32 0, !dbg !5821
  %12 = load i32, ptr %mode9, align 4, !dbg !5821
  %and10 = and i32 %12, 65535, !dbg !5822
  %conv = trunc i32 %and10 to i16, !dbg !5820
  %13 = load ptr, ptr %inode.addr, align 8, !dbg !5823
  %i_mode11 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 0, !dbg !5824
  store i16 %conv, ptr %i_mode11, align 8, !dbg !5825
  br label %if.end12, !dbg !5823

if.end12:                                         ; preds = %if.then8, %if.end5
  %14 = load ptr, ptr %attr.addr, align 8, !dbg !5826
  %mode13 = getelementptr inbounds %struct.eventfs_attr, ptr %14, i32 0, i32 0, !dbg !5828
  %15 = load i32, ptr %mode13, align 4, !dbg !5828
  %and14 = and i32 %15, 131072, !dbg !5829
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5829
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !5830

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %inode.addr, align 8, !dbg !5831
  %i_uid17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 2, !dbg !5832
  %17 = load ptr, ptr %attr.addr, align 8, !dbg !5833
  %uid18 = getelementptr inbounds %struct.eventfs_attr, ptr %17, i32 0, i32 1, !dbg !5834
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid17, ptr align 4 %uid18, i64 4, i1 false), !dbg !5834
  br label %if.end19, !dbg !5831

if.end19:                                         ; preds = %if.then16, %if.end12
  %18 = load ptr, ptr %attr.addr, align 8, !dbg !5835
  %mode20 = getelementptr inbounds %struct.eventfs_attr, ptr %18, i32 0, i32 0, !dbg !5837
  %19 = load i32, ptr %mode20, align 4, !dbg !5837
  %and21 = and i32 %19, 262144, !dbg !5838
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5838
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !5839

if.then23:                                        ; preds = %if.end19
  %20 = load ptr, ptr %inode.addr, align 8, !dbg !5840
  %i_gid24 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 4, !dbg !5841
  %21 = load ptr, ptr %attr.addr, align 8, !dbg !5842
  %gid25 = getelementptr inbounds %struct.eventfs_attr, ptr %21, i32 0, i32 2, !dbg !5843
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid24, ptr align 4 %gid25, i64 4, i1 false), !dbg !5843
  br label %if.end26, !dbg !5840

if.end26:                                         ; preds = %if.then23, %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5844
  br label %cleanup, !dbg !5844

cleanup:                                          ; preds = %if.end26, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %events_ei) #15, !dbg !5844
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5844

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfs_dir_ino(ptr noundef %ei) #0 align 16 !dbg !5845 {
entry:
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !5851
  %ino = getelementptr inbounds %struct.eventfs_inode, ptr %0, i32 0, i32 9, !dbg !5853
  %1 = load i32, ptr %ino, align 4, !dbg !5853
  %tobool = icmp ne i32 %1, 0, !dbg !5851
  br i1 %tobool, label %if.end6, label %if.then, !dbg !5854

if.then:                                          ; preds = %entry
  %call = call i32 @get_next_ino() #16, !dbg !5855
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !5857
  %ino1 = getelementptr inbounds %struct.eventfs_inode, ptr %2, i32 0, i32 9, !dbg !5858
  store i32 %call, ptr %ino1, align 4, !dbg !5859
  %3 = load ptr, ptr %ei.addr, align 8, !dbg !5860
  %ino2 = getelementptr inbounds %struct.eventfs_inode, ptr %3, i32 0, i32 9, !dbg !5862
  %4 = load i32, ptr %ino2, align 4, !dbg !5862
  %cmp = icmp eq i32 %4, 19680823, !dbg !5863
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5864

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @get_next_ino() #16, !dbg !5865
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !5866
  %ino5 = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 9, !dbg !5867
  store i32 %call4, ptr %ino5, align 4, !dbg !5868
  br label %if.end, !dbg !5866

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !5869

if.end6:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %ei.addr, align 8, !dbg !5870
  %ino7 = getelementptr inbounds %struct.eventfs_inode, ptr %6, i32 0, i32 9, !dbg !5871
  %7 = load i32, ptr %ino7, align 4, !dbg !5871
  ret i32 %7, !dbg !5872
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5873 dso_local void @d_add(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @eventfs_find_events(ptr noundef %dentry) #0 align 16 !dbg !5874 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5878, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !5879, metadata !DIExpression()), !dbg !5882
  br label %do.body, !dbg !5883

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5884
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !5886
  %1 = load ptr, ptr %d_parent, align 8, !dbg !5886
  store ptr %1, ptr %dentry.addr, align 8, !dbg !5887
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5888
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 11, !dbg !5889
  %3 = load ptr, ptr %d_fsdata, align 8, !dbg !5889
  store ptr %3, ptr %ei, align 8, !dbg !5890
  %4 = load ptr, ptr %ei, align 8, !dbg !5891
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %4, i32 0, i32 8, !dbg !5893
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !5893
  %bf.clear = and i32 %bf.load, 1, !dbg !5893
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !5891
  br i1 %tobool, label %if.then, label %if.end, !dbg !5894

if.then:                                          ; preds = %do.body
  store ptr null, ptr %retval, align 8, !dbg !5895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5895

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5896

do.cond:                                          ; preds = %if.end
  %5 = load ptr, ptr %ei, align 8, !dbg !5897
  %is_events = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 8, !dbg !5898
  %bf.load1 = load i32, ptr %is_events, align 8, !dbg !5898
  %bf.lshr = lshr i32 %bf.load1, 1, !dbg !5898
  %bf.clear2 = and i32 %bf.lshr, 1, !dbg !5898
  %tobool3 = icmp ne i32 %bf.clear2, 0, !dbg !5899
  %lnot = xor i1 %tobool3, true, !dbg !5899
  br i1 %lnot, label %do.body, label %do.end, !dbg !5896, !llvm.loop !5900

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %ei, align 8, !dbg !5902
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5903
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9, !dbg !5904
  %8 = load ptr, ptr %d_sb, align 8, !dbg !5904
  call void @update_events_attr(ptr noundef %6, ptr noundef %8) #16, !dbg !5905
  %9 = load ptr, ptr %ei, align 8, !dbg !5906
  store ptr %9, ptr %retval, align 8, !dbg !5907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5907

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !5908
  %10 = load ptr, ptr %retval, align 8, !dbg !5908
  ret ptr %10, !dbg !5908
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_events_attr(ptr noundef %ei, ptr noundef %sb) #0 align 16 !dbg !5909 {
entry:
  %ei.addr = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %rei = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !5913, metadata !DIExpression()), !dbg !5917
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5914, metadata !DIExpression()), !dbg !5918
  call void @llvm.lifetime.start.p0(i64 8, ptr %rei) #15, !dbg !5919
  call void @llvm.dbg.declare(metadata ptr %rei, metadata !5915, metadata !DIExpression()), !dbg !5920
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5916, metadata !DIExpression()), !dbg !5922
  %0 = load ptr, ptr %ei.addr, align 8, !dbg !5923
  %call = call ptr @get_root_inode(ptr noundef %0) #16, !dbg !5924
  store ptr %call, ptr %rei, align 8, !dbg !5925
  %1 = load ptr, ptr %rei, align 8, !dbg !5926
  %parent_inode = getelementptr inbounds %struct.eventfs_root_inode, ptr %1, i32 0, i32 1, !dbg !5927
  %2 = load ptr, ptr %parent_inode, align 8, !dbg !5927
  store ptr %2, ptr %parent, align 8, !dbg !5928
  %3 = load ptr, ptr %rei, align 8, !dbg !5929
  %ei1 = getelementptr inbounds %struct.eventfs_root_inode, ptr %3, i32 0, i32 0, !dbg !5931
  %attr = getelementptr inbounds %struct.eventfs_inode, ptr %ei1, i32 0, i32 6, !dbg !5932
  %mode = getelementptr inbounds %struct.eventfs_attr, ptr %attr, i32 0, i32 0, !dbg !5933
  %4 = load i32, ptr %mode, align 8, !dbg !5933
  %and = and i32 %4, 131072, !dbg !5934
  %tobool = icmp ne i32 %and, 0, !dbg !5934
  br i1 %tobool, label %if.then, label %if.else, !dbg !5935

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ei.addr, align 8, !dbg !5936
  %attr2 = getelementptr inbounds %struct.eventfs_inode, ptr %5, i32 0, i32 6, !dbg !5937
  %uid = getelementptr inbounds %struct.eventfs_attr, ptr %attr2, i32 0, i32 1, !dbg !5938
  %6 = load ptr, ptr %rei, align 8, !dbg !5939
  %ei3 = getelementptr inbounds %struct.eventfs_root_inode, ptr %6, i32 0, i32 0, !dbg !5940
  %attr4 = getelementptr inbounds %struct.eventfs_inode, ptr %ei3, i32 0, i32 6, !dbg !5941
  %uid5 = getelementptr inbounds %struct.eventfs_attr, ptr %attr4, i32 0, i32 1, !dbg !5942
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %uid5, i64 4, i1 false), !dbg !5942
  br label %if.end, !dbg !5936

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %ei.addr, align 8, !dbg !5943
  %attr6 = getelementptr inbounds %struct.eventfs_inode, ptr %7, i32 0, i32 6, !dbg !5944
  %uid7 = getelementptr inbounds %struct.eventfs_attr, ptr %attr6, i32 0, i32 1, !dbg !5945
  %8 = load ptr, ptr %parent, align 8, !dbg !5946
  %i_uid = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 2, !dbg !5947
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid7, ptr align 4 %i_uid, i64 4, i1 false), !dbg !5947
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %rei, align 8, !dbg !5948
  %ei8 = getelementptr inbounds %struct.eventfs_root_inode, ptr %9, i32 0, i32 0, !dbg !5950
  %attr9 = getelementptr inbounds %struct.eventfs_inode, ptr %ei8, i32 0, i32 6, !dbg !5951
  %mode10 = getelementptr inbounds %struct.eventfs_attr, ptr %attr9, i32 0, i32 0, !dbg !5952
  %10 = load i32, ptr %mode10, align 8, !dbg !5952
  %and11 = and i32 %10, 262144, !dbg !5953
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5953
  br i1 %tobool12, label %if.then13, label %if.else18, !dbg !5954

if.then13:                                        ; preds = %if.end
  %11 = load ptr, ptr %ei.addr, align 8, !dbg !5955
  %attr14 = getelementptr inbounds %struct.eventfs_inode, ptr %11, i32 0, i32 6, !dbg !5956
  %gid = getelementptr inbounds %struct.eventfs_attr, ptr %attr14, i32 0, i32 2, !dbg !5957
  %12 = load ptr, ptr %rei, align 8, !dbg !5958
  %ei15 = getelementptr inbounds %struct.eventfs_root_inode, ptr %12, i32 0, i32 0, !dbg !5959
  %attr16 = getelementptr inbounds %struct.eventfs_inode, ptr %ei15, i32 0, i32 6, !dbg !5960
  %gid17 = getelementptr inbounds %struct.eventfs_attr, ptr %attr16, i32 0, i32 2, !dbg !5961
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid, ptr align 8 %gid17, i64 4, i1 false), !dbg !5961
  br label %if.end21, !dbg !5955

if.else18:                                        ; preds = %if.end
  %13 = load ptr, ptr %ei.addr, align 8, !dbg !5962
  %attr19 = getelementptr inbounds %struct.eventfs_inode, ptr %13, i32 0, i32 6, !dbg !5963
  %gid20 = getelementptr inbounds %struct.eventfs_attr, ptr %attr19, i32 0, i32 2, !dbg !5964
  %14 = load ptr, ptr %parent, align 8, !dbg !5965
  %i_gid = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 4, !dbg !5966
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid20, ptr align 8 %i_gid, i64 4, i1 false), !dbg !5966
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 8, ptr %rei) #15, !dbg !5967
  ret void, !dbg !5967
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5968 dso_local i32 @get_next_ino() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_file(ptr noundef %parent_ei, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %attr, ptr noundef %data, ptr noundef %fop) #0 align 16 !dbg !5971 {
entry:
  %retval = alloca ptr, align 8
  %parent_ei.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fop.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent_ei, ptr %parent_ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_ei.addr, metadata !5975, metadata !DIExpression()), !dbg !5989
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5976, metadata !DIExpression()), !dbg !5990
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5977, metadata !DIExpression()), !dbg !5991
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5978, metadata !DIExpression()), !dbg !5992
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5979, metadata !DIExpression()), !dbg !5993
  store ptr %fop, ptr %fop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fop.addr, metadata !5980, metadata !DIExpression()), !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #15, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5981, metadata !DIExpression()), !dbg !5996
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5982, metadata !DIExpression()), !dbg !5998
  %0 = load i16, ptr %mode.addr, align 2, !dbg !5999
  %conv = zext i16 %0 to i32, !dbg !5999
  %and = and i32 %conv, 61440, !dbg !6001
  %tobool = icmp ne i32 %and, 0, !dbg !6001
  br i1 %tobool, label %if.end, label %if.then, !dbg !6002

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %mode.addr, align 2, !dbg !6003
  %conv1 = zext i16 %1 to i32, !dbg !6003
  %or = or i32 %conv1, 32768, !dbg !6003
  %conv2 = trunc i32 %or to i16, !dbg !6003
  store i16 %conv2, ptr %mode.addr, align 2, !dbg !6003
  br label %if.end, !dbg !6004

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5983, metadata !DIExpression()), !dbg !6005
  %2 = load i16, ptr %mode.addr, align 2, !dbg !6005
  %conv3 = zext i16 %2 to i32, !dbg !6005
  %and4 = and i32 %conv3, 61440, !dbg !6005
  %cmp = icmp eq i32 %and4, 32768, !dbg !6005
  %lnot = xor i1 %cmp, true, !dbg !6005
  %lnot6 = xor i1 %lnot, true, !dbg !6005
  %lnot7 = xor i1 %lnot6, true, !dbg !6005
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6005
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6005
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6006
  %tobool8 = icmp ne i32 %3, 0, !dbg !6006
  %lnot9 = xor i1 %tobool8, true, !dbg !6006
  %lnot11 = xor i1 %lnot9, true, !dbg !6006
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6006
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6006
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6006
  %tobool14 = icmp ne i64 %expval, 0, !dbg !6006
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !6005

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !6006

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6007
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5986, metadata !DIExpression()), !dbg !6007
  store i32 2307, ptr %__flags, align 4, !dbg !6007
  br label %do.body16, !dbg !6007

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !6008

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !6008

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !6007

do.body17:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6010
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 440, i32 %4, i64 12) #15, !dbg !6010, !srcloc !6012
  br label %do.cond18, !dbg !6010

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6010

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6007

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6013

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6013

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6006
  br label %do.cond23, !dbg !6007

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6007

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !6007

if.end25:                                         ; preds = %do.end24, %if.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6005
  %tobool26 = icmp ne i32 %5, 0, !dbg !6005
  %lnot27 = xor i1 %tobool26, true, !dbg !6005
  %lnot29 = xor i1 %lnot27, true, !dbg !6005
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6005
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6005
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6005
  store i64 %expval32, ptr %tmp, align 8, !dbg !6006
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6015
  %6 = load i64, ptr %tmp, align 8, !dbg !6005
  %tobool33 = icmp ne i64 %6, 0, !dbg !6015
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6016

if.then34:                                        ; preds = %if.end25
  %call = call ptr @ERR_PTR(i64 noundef -5) #16, !dbg !6017
  store ptr %call, ptr %retval, align 8, !dbg !6018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6018

if.end35:                                         ; preds = %if.end25
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !6019
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9, !dbg !6020
  %8 = load ptr, ptr %d_sb, align 8, !dbg !6020
  %call36 = call ptr @tracefs_get_inode(ptr noundef %8) #16, !dbg !6021
  store ptr %call36, ptr %inode, align 8, !dbg !6022
  %9 = load ptr, ptr %inode, align 8, !dbg !6023
  %tobool37 = icmp ne ptr %9, null, !dbg !6023
  %lnot38 = xor i1 %tobool37, true, !dbg !6023
  %lnot40 = xor i1 %lnot38, true, !dbg !6023
  %lnot42 = xor i1 %lnot40, true, !dbg !6023
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !6023
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !6023
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !6023
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !6023
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !6025

if.then47:                                        ; preds = %if.end35
  %call48 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !6026
  store ptr %call48, ptr %retval, align 8, !dbg !6027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6027

if.end49:                                         ; preds = %if.end35
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !6028
  %11 = load ptr, ptr %inode, align 8, !dbg !6029
  %12 = load ptr, ptr %attr.addr, align 8, !dbg !6030
  %13 = load i16, ptr %mode.addr, align 2, !dbg !6031
  call void @update_inode_attr(ptr noundef %10, ptr noundef %11, ptr noundef %12, i16 noundef zeroext %13) #16, !dbg !6032
  %14 = load ptr, ptr %inode, align 8, !dbg !6033
  %i_op = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8, !dbg !6034
  store ptr @eventfs_file_inode_operations, ptr %i_op, align 8, !dbg !6035
  %15 = load ptr, ptr %fop.addr, align 8, !dbg !6036
  %16 = load ptr, ptr %inode, align 8, !dbg !6037
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 39, !dbg !6038
  store ptr %15, ptr %17, align 8, !dbg !6039
  %18 = load ptr, ptr %data.addr, align 8, !dbg !6040
  %19 = load ptr, ptr %inode, align 8, !dbg !6041
  %i_private = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 47, !dbg !6042
  store ptr %18, ptr %i_private, align 8, !dbg !6043
  %20 = load ptr, ptr %inode, align 8, !dbg !6044
  %i_ino = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 12, !dbg !6045
  store i64 19680823, ptr %i_ino, align 8, !dbg !6046
  %21 = load ptr, ptr %inode, align 8, !dbg !6047
  %call50 = call ptr @get_tracefs(ptr noundef %21) #16, !dbg !6048
  store ptr %call50, ptr %ti, align 8, !dbg !6049
  %22 = load ptr, ptr %ti, align 8, !dbg !6050
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %22, i32 0, i32 2, !dbg !6051
  %23 = load i64, ptr %flags, align 8, !dbg !6052
  %or51 = or i64 %23, 2, !dbg !6052
  store i64 %or51, ptr %flags, align 8, !dbg !6052
  %24 = load ptr, ptr %parent_ei.addr, align 8, !dbg !6053
  %call52 = call ptr @get_ei(ptr noundef %24) #16, !dbg !6054
  %25 = load ptr, ptr %dentry.addr, align 8, !dbg !6055
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 11, !dbg !6056
  store ptr %call52, ptr %d_fsdata, align 8, !dbg !6057
  %26 = load ptr, ptr %dentry.addr, align 8, !dbg !6058
  %27 = load ptr, ptr %inode, align 8, !dbg !6059
  call void @d_add(ptr noundef %26, ptr noundef %27) #16, !dbg !6060
  store ptr null, ptr %retval, align 8, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

cleanup:                                          ; preds = %if.end49, %if.then47, %if.then34
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !6062
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #15, !dbg !6062
  %28 = load ptr, ptr %retval, align 8, !dbg !6062
  ret ptr %28, !dbg !6062
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_top_events_ownership(ptr noundef %inode) #0 align 16 !dbg !6063 {
entry:
  %inode.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6065, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #15, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !6066, metadata !DIExpression()), !dbg !6070
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6071
  %call = call ptr @get_tracefs(ptr noundef %0) #16, !dbg !6072
  store ptr %call, ptr %ti, align 8, !dbg !6070
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !6067, metadata !DIExpression()), !dbg !6074
  %1 = load ptr, ptr %ti, align 8, !dbg !6075
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %1, i32 0, i32 3, !dbg !6076
  %2 = load ptr, ptr %private, align 8, !dbg !6076
  store ptr %2, ptr %ei, align 8, !dbg !6074
  %3 = load ptr, ptr %ei, align 8, !dbg !6077
  %tobool = icmp ne ptr %3, null, !dbg !6077
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6079

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %ei, align 8, !dbg !6080
  %is_events = getelementptr inbounds %struct.eventfs_inode, ptr %4, i32 0, i32 8, !dbg !6081
  %bf.load = load i32, ptr %is_events, align 8, !dbg !6081
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !6081
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6081
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !6080
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6082

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %ei, align 8, !dbg !6084
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !6085
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9, !dbg !6086
  %7 = load ptr, ptr %i_sb, align 8, !dbg !6086
  call void @update_events_attr(ptr noundef %5, ptr noundef %7) #16, !dbg !6087
  %8 = load ptr, ptr %ei, align 8, !dbg !6088
  %attr = getelementptr inbounds %struct.eventfs_inode, ptr %8, i32 0, i32 6, !dbg !6090
  %mode = getelementptr inbounds %struct.eventfs_attr, ptr %attr, i32 0, i32 0, !dbg !6091
  %9 = load i32, ptr %mode, align 8, !dbg !6091
  %and = and i32 %9, 131072, !dbg !6092
  %tobool2 = icmp ne i32 %and, 0, !dbg !6092
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6093

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !6094
  %i_uid = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 2, !dbg !6095
  %11 = load ptr, ptr %ei, align 8, !dbg !6096
  %attr4 = getelementptr inbounds %struct.eventfs_inode, ptr %11, i32 0, i32 6, !dbg !6097
  %uid = getelementptr inbounds %struct.eventfs_attr, ptr %attr4, i32 0, i32 1, !dbg !6098
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %uid, i64 4, i1 false), !dbg !6098
  br label %if.end5, !dbg !6094

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load ptr, ptr %ei, align 8, !dbg !6099
  %attr6 = getelementptr inbounds %struct.eventfs_inode, ptr %12, i32 0, i32 6, !dbg !6101
  %mode7 = getelementptr inbounds %struct.eventfs_attr, ptr %attr6, i32 0, i32 0, !dbg !6102
  %13 = load i32, ptr %mode7, align 8, !dbg !6102
  %and8 = and i32 %13, 262144, !dbg !6103
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6103
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !6104

if.then10:                                        ; preds = %if.end5
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !6105
  %i_gid = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 4, !dbg !6106
  %15 = load ptr, ptr %ei, align 8, !dbg !6107
  %attr11 = getelementptr inbounds %struct.eventfs_inode, ptr %15, i32 0, i32 6, !dbg !6108
  %gid = getelementptr inbounds %struct.eventfs_attr, ptr %attr11, i32 0, i32 2, !dbg !6109
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %gid, i64 4, i1 false), !dbg !6109
  br label %if.end12, !dbg !6105

if.end12:                                         ; preds = %if.then10, %if.end5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6110
  br label %cleanup, !dbg !6110

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #15, !dbg !6110
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6110

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6111 dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !6112 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6116, metadata !DIExpression()), !dbg !6119
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6117, metadata !DIExpression()), !dbg !6120
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6118, metadata !DIExpression()), !dbg !6121
  %0 = load i64, ptr %n.addr, align 8, !dbg !6122
  %1 = load i64, ptr %size.addr, align 8, !dbg !6123
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6124
  %or = or i32 %2, 256, !dbg !6125
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #20, !dbg !6126
  ret ptr %call, !dbg !6127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6128 dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_attr(ptr noundef %attr, ptr noundef %iattr) #0 align 16 !dbg !6129 {
entry:
  %attr.addr = alloca ptr, align 8
  %iattr.addr = alloca ptr, align 8
  %ia_valid = alloca i32, align 4
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6133, metadata !DIExpression()), !dbg !6136
  store ptr %iattr, ptr %iattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iattr.addr, metadata !6134, metadata !DIExpression()), !dbg !6137
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #15, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !6135, metadata !DIExpression()), !dbg !6139
  %0 = load ptr, ptr %iattr.addr, align 8, !dbg !6140
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !6141
  %1 = load i32, ptr %ia_valid1, align 8, !dbg !6141
  store i32 %1, ptr %ia_valid, align 4, !dbg !6139
  %2 = load i32, ptr %ia_valid, align 4, !dbg !6142
  %and = and i32 %2, 1, !dbg !6144
  %tobool = icmp ne i32 %and, 0, !dbg !6144
  br i1 %tobool, label %if.then, label %if.end, !dbg !6145

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !6146
  %mode = getelementptr inbounds %struct.eventfs_attr, ptr %3, i32 0, i32 0, !dbg !6148
  %4 = load i32, ptr %mode, align 4, !dbg !6148
  %and2 = and i32 %4, -65536, !dbg !6149
  %5 = load ptr, ptr %iattr.addr, align 8, !dbg !6150
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 1, !dbg !6151
  %6 = load i16, ptr %ia_mode, align 4, !dbg !6151
  %conv = zext i16 %6 to i32, !dbg !6150
  %and3 = and i32 %conv, 65535, !dbg !6152
  %or = or i32 %and2, %and3, !dbg !6153
  %or4 = or i32 %or, 65536, !dbg !6154
  %7 = load ptr, ptr %attr.addr, align 8, !dbg !6155
  %mode5 = getelementptr inbounds %struct.eventfs_attr, ptr %7, i32 0, i32 0, !dbg !6156
  store i32 %or4, ptr %mode5, align 4, !dbg !6157
  br label %if.end, !dbg !6158

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %ia_valid, align 4, !dbg !6159
  %and6 = and i32 %8, 2, !dbg !6161
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6161
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !6162

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr %attr.addr, align 8, !dbg !6163
  %mode9 = getelementptr inbounds %struct.eventfs_attr, ptr %9, i32 0, i32 0, !dbg !6165
  %10 = load i32, ptr %mode9, align 4, !dbg !6166
  %or10 = or i32 %10, 131072, !dbg !6166
  store i32 %or10, ptr %mode9, align 4, !dbg !6166
  %11 = load ptr, ptr %attr.addr, align 8, !dbg !6167
  %uid = getelementptr inbounds %struct.eventfs_attr, ptr %11, i32 0, i32 1, !dbg !6168
  %12 = load ptr, ptr %iattr.addr, align 8, !dbg !6169
  %13 = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 2, !dbg !6170
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 8 %13, i64 4, i1 false), !dbg !6170
  br label %if.end11, !dbg !6171

if.end11:                                         ; preds = %if.then8, %if.end
  %14 = load i32, ptr %ia_valid, align 4, !dbg !6172
  %and12 = and i32 %14, 4, !dbg !6174
  %tobool13 = icmp ne i32 %and12, 0, !dbg !6174
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !6175

if.then14:                                        ; preds = %if.end11
  %15 = load ptr, ptr %attr.addr, align 8, !dbg !6176
  %mode15 = getelementptr inbounds %struct.eventfs_attr, ptr %15, i32 0, i32 0, !dbg !6178
  %16 = load i32, ptr %mode15, align 4, !dbg !6179
  %or16 = or i32 %16, 262144, !dbg !6179
  store i32 %or16, ptr %mode15, align 4, !dbg !6179
  %17 = load ptr, ptr %attr.addr, align 8, !dbg !6180
  %gid = getelementptr inbounds %struct.eventfs_attr, ptr %17, i32 0, i32 2, !dbg !6181
  %18 = load ptr, ptr %iattr.addr, align 8, !dbg !6182
  %19 = getelementptr inbounds %struct.iattr, ptr %18, i32 0, i32 3, !dbg !6183
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %19, i64 4, i1 false), !dbg !6183
  br label %if.end17, !dbg !6184

if.end17:                                         ; preds = %if.then14, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #15, !dbg !6185
  ret void, !dbg !6185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !6186 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6188, metadata !DIExpression()), !dbg !6192
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6189, metadata !DIExpression()), !dbg !6193
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6190, metadata !DIExpression()), !dbg !6194
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6191, metadata !DIExpression()), !dbg !6196
  %0 = load i64, ptr %n.addr, align 8, !dbg !6197
  %1 = load i64, ptr %size.addr, align 8, !dbg !6197
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6197
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6197
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6197
  store i64 %4, ptr %bytes, align 8, !dbg !6197
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6197
  %lnot = xor i1 %call, true, !dbg !6197
  %lnot1 = xor i1 %lnot, true, !dbg !6197
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6197
  %conv = sext i32 %lnot.ext to i64, !dbg !6197
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6197
  %tobool = icmp ne i64 %expval, 0, !dbg !6197
  br i1 %tobool, label %if.then, label %if.end, !dbg !6199

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6200

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6201
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6203
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6204

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6205
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6206
  br i1 %8, label %if.then2, label %if.end4, !dbg !6207

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6208
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6209
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !6210
  store ptr %call3, ptr %retval, align 8, !dbg !6211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6211

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6212
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6213
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !6214
  store ptr %call5, ptr %retval, align 8, !dbg !6215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6215

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6216
  %13 = load ptr, ptr %retval, align 8, !dbg !6216
  ret ptr %13, !dbg !6216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !6217 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6222, metadata !DIExpression()), !dbg !6223
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6224, !range !3932, !noundef !738
  %tobool = trunc i8 %0 to i1, !dbg !6224
  %lnot = xor i1 %tobool, true, !dbg !6224
  %lnot1 = xor i1 %lnot, true, !dbg !6224
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6224
  %conv = sext i32 %lnot.ext to i64, !dbg !6224
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6224
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6224
  ret i1 %tobool2, !dbg !6225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_backing_inode(ptr noundef %upper) #3 align 16 !dbg !6226 {
entry:
  %upper.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  store ptr %upper, ptr %upper.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %upper.addr, metadata !6228, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6229, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %upper.addr, align 8, !dbg !6233
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !6234
  %1 = load ptr, ptr %d_inode, align 8, !dbg !6234
  store ptr %1, ptr %inode, align 8, !dbg !6232
  %2 = load ptr, ptr %inode, align 8, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !6236
  ret ptr %2, !dbg !6237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6238 dso_local void @generic_fillattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_read_dir(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfs_iterate(ptr noundef %file, ptr noundef %ctx) #0 align 16 !dbg !6241 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %fops = alloca ptr, align 8
  %f_inode = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ei_child = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %name = alloca ptr, align 8
  %mode = alloca i16, align 2
  %idx = alloca i32, align 4
  %ret = alloca i32, align 4
  %ino = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cdata = alloca ptr, align 8
  %__UNIQUE_ID___x295 = alloca i32, align 4
  %__UNIQUE_ID___y296 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp46 = alloca ptr, align 8
  %tmp47 = alloca ptr, align 8
  %__mptr74 = alloca ptr, align 8
  %tmp78 = alloca ptr, align 8
  %tmp80 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6243, metadata !DIExpression()), !dbg !6274
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6244, metadata !DIExpression()), !dbg !6275
  call void @llvm.lifetime.start.p0(i64 8, ptr %fops) #15, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %fops, metadata !6245, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_inode) #15, !dbg !6278
  call void @llvm.dbg.declare(metadata ptr %f_inode, metadata !6246, metadata !DIExpression()), !dbg !6279
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6280
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !6281
  store ptr %call, ptr %f_inode, align 8, !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6247, metadata !DIExpression()), !dbg !6283
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei_child) #15, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %ei_child, metadata !6248, metadata !DIExpression()), !dbg !6285
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #15, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !6249, metadata !DIExpression()), !dbg !6287
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #15, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !6250, metadata !DIExpression()), !dbg !6289
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6251, metadata !DIExpression()), !dbg !6291
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #15, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !6252, metadata !DIExpression()), !dbg !6293
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6253, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6296
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6254, metadata !DIExpression()), !dbg !6297
  store i32 -22, ptr %ret, align 4, !dbg !6297
  call void @llvm.lifetime.start.p0(i64 4, ptr %ino) #15, !dbg !6298
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !6255, metadata !DIExpression()), !dbg !6299
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6256, metadata !DIExpression()), !dbg !6301
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #15, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6257, metadata !DIExpression()), !dbg !6302
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #15, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6258, metadata !DIExpression()), !dbg !6303
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6304
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6306
  %call2 = call zeroext i1 @dir_emit_dots(ptr noundef %1, ptr noundef %2) #16, !dbg !6307
  br i1 %call2, label %if.end, label %if.then, !dbg !6308

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !6309

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %f_inode, align 8, !dbg !6310
  %call3 = call ptr @get_tracefs(ptr noundef %3) #16, !dbg !6311
  store ptr %call3, ptr %ti, align 8, !dbg !6312
  %4 = load ptr, ptr %ti, align 8, !dbg !6313
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %4, i32 0, i32 2, !dbg !6315
  %5 = load i64, ptr %flags, align 8, !dbg !6315
  %and = and i64 %5, 2, !dbg !6316
  %tobool = icmp ne i64 %and, 0, !dbg !6316
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6317

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !6318

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6319
  %pos = getelementptr inbounds %struct.dir_context, ptr %6, i32 0, i32 1, !dbg !6320
  %7 = load i64, ptr %pos, align 8, !dbg !6320
  %sub = sub i64 %7, 2, !dbg !6321
  %conv = trunc i64 %sub to i32, !dbg !6319
  store i32 %conv, ptr %c, align 4, !dbg !6322
  %call6 = call i32 @srcu_read_lock(ptr noundef @eventfs_srcu) #16, !dbg !6323
  store i32 %call6, ptr %idx, align 4, !dbg !6324
  call void @mutex_lock(ptr noundef @eventfs_mutex) #16, !dbg !6325
  br label %do.body, !dbg !6326

do.body:                                          ; preds = %if.end5
  br label %do.cond, !dbg !6328

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6328

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %ti, align 8, !dbg !6326
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %8, i32 0, i32 3, !dbg !6326
  %9 = load volatile ptr, ptr %private, align 8, !dbg !6326
  store ptr %9, ptr %tmp, align 8, !dbg !6328
  %10 = load ptr, ptr %tmp, align 8, !dbg !6326
  store ptr %10, ptr %ei, align 8, !dbg !6330
  %11 = load ptr, ptr %ei, align 8, !dbg !6331
  %tobool7 = icmp ne ptr %11, null, !dbg !6331
  br i1 %tobool7, label %land.lhs.true, label %if.end10, !dbg !6333

land.lhs.true:                                    ; preds = %do.end
  %12 = load ptr, ptr %ei, align 8, !dbg !6334
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %12, i32 0, i32 8, !dbg !6335
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !6335
  %bf.clear = and i32 %bf.load, 1, !dbg !6335
  %tobool8 = icmp ne i32 %bf.clear, 0, !dbg !6334
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6336

if.then9:                                         ; preds = %land.lhs.true
  store ptr null, ptr %ei, align 8, !dbg !6337
  br label %if.end10, !dbg !6338

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %do.end
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !6339
  %13 = load ptr, ptr %ei, align 8, !dbg !6340
  %tobool11 = icmp ne ptr %13, null, !dbg !6340
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6342

if.then12:                                        ; preds = %if.end10
  br label %out, !dbg !6343

if.end13:                                         ; preds = %if.end10
  store i32 0, ptr %ret, align 4, !dbg !6344
  %14 = load i32, ptr %c, align 4, !dbg !6345
  store i32 %14, ptr %i, align 4, !dbg !6346
  br label %for.cond, !dbg !6347

for.cond:                                         ; preds = %for.inc, %if.end13
  %15 = load i32, ptr %i, align 4, !dbg !6348
  %16 = load ptr, ptr %ei, align 8, !dbg !6349
  %nr_entries = getelementptr inbounds %struct.eventfs_inode, ptr %16, i32 0, i32 8, !dbg !6350
  %bf.load14 = load i32, ptr %nr_entries, align 8, !dbg !6350
  %bf.lshr = lshr i32 %bf.load14, 2, !dbg !6350
  %cmp = icmp slt i32 %15, %bf.lshr, !dbg !6351
  br i1 %cmp, label %for.body, label %for.end, !dbg !6352

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdata) #15, !dbg !6353
  call void @llvm.dbg.declare(metadata ptr %cdata, metadata !6259, metadata !DIExpression()), !dbg !6354
  %17 = load ptr, ptr %ei, align 8, !dbg !6355
  %data = getelementptr inbounds %struct.eventfs_inode, ptr %17, i32 0, i32 5, !dbg !6356
  %18 = load ptr, ptr %data, align 8, !dbg !6356
  store ptr %18, ptr %cdata, align 8, !dbg !6354
  %19 = load ptr, ptr %ei, align 8, !dbg !6357
  %entries = getelementptr inbounds %struct.eventfs_inode, ptr %19, i32 0, i32 2, !dbg !6358
  %20 = load ptr, ptr %entries, align 8, !dbg !6358
  %21 = load i32, ptr %i, align 4, !dbg !6359
  %idxprom = sext i32 %21 to i64, !dbg !6357
  %arrayidx = getelementptr %struct.eventfs_entry, ptr %20, i64 %idxprom, !dbg !6357
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !6360
  %22 = load ptr, ptr %entry1, align 8, !dbg !6361
  %name16 = getelementptr inbounds %struct.eventfs_entry, ptr %22, i32 0, i32 0, !dbg !6362
  %23 = load ptr, ptr %name16, align 8, !dbg !6362
  store ptr %23, ptr %name, align 8, !dbg !6363
  call void @mutex_lock(ptr noundef @eventfs_mutex) #16, !dbg !6364
  %24 = load ptr, ptr %ei, align 8, !dbg !6365
  %is_freed17 = getelementptr inbounds %struct.eventfs_inode, ptr %24, i32 0, i32 8, !dbg !6367
  %bf.load18 = load i32, ptr %is_freed17, align 8, !dbg !6367
  %bf.clear19 = and i32 %bf.load18, 1, !dbg !6367
  %tobool20 = icmp ne i32 %bf.clear19, 0, !dbg !6365
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6368

if.then21:                                        ; preds = %for.body
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !6369
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6371

if.end22:                                         ; preds = %for.body
  %25 = load ptr, ptr %entry1, align 8, !dbg !6372
  %callback = getelementptr inbounds %struct.eventfs_entry, ptr %25, i32 0, i32 1, !dbg !6373
  %26 = load ptr, ptr %callback, align 8, !dbg !6373
  %27 = load ptr, ptr %name, align 8, !dbg !6374
  %call23 = call i32 %26(ptr noundef %27, ptr noundef %mode, ptr noundef %cdata, ptr noundef %fops) #16, !dbg !6372
  store i32 %call23, ptr %r, align 4, !dbg !6375
  call void @mutex_unlock(ptr noundef @eventfs_mutex) #16, !dbg !6376
  %28 = load i32, ptr %r, align 4, !dbg !6377
  %cmp24 = icmp sle i32 %28, 0, !dbg !6379
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6380

if.then26:                                        ; preds = %if.end22
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6381

if.end27:                                         ; preds = %if.end22
  store i32 19680823, ptr %ino, align 4, !dbg !6382
  %29 = load ptr, ptr %ctx.addr, align 8, !dbg !6383
  %30 = load ptr, ptr %name, align 8, !dbg !6385
  %31 = load ptr, ptr %name, align 8, !dbg !6386
  %call28 = call i64 @strlen(ptr noundef %31) #16, !dbg !6387
  %conv29 = trunc i64 %call28 to i32, !dbg !6387
  %32 = load i32, ptr %ino, align 4, !dbg !6388
  %conv30 = sext i32 %32 to i64, !dbg !6388
  %call31 = call zeroext i1 @dir_emit(ptr noundef %29, ptr noundef %30, i32 noundef %conv29, i64 noundef %conv30, i32 noundef 8) #16, !dbg !6389
  br i1 %call31, label %if.end33, label %if.then32, !dbg !6390

if.then32:                                        ; preds = %if.end27
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6391

if.end33:                                         ; preds = %if.end27
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6392
  br label %cleanup, !dbg !6392

cleanup:                                          ; preds = %if.then32, %if.then21, %if.end33, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdata) #15, !dbg !6392
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup85 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
    i32 4, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6393

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %33 = load i32, ptr %i, align 4, !dbg !6394
  %inc = add i32 %33, 1, !dbg !6394
  store i32 %inc, ptr %i, align 4, !dbg !6394
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !6395
  %pos34 = getelementptr inbounds %struct.dir_context, ptr %34, i32 0, i32 1, !dbg !6396
  %35 = load i64, ptr %pos34, align 8, !dbg !6397
  %inc35 = add i64 %35, 1, !dbg !6397
  store i64 %inc35, ptr %pos34, align 8, !dbg !6397
  br label %for.cond, !dbg !6398, !llvm.loop !6399

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x295) #15, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x295, metadata !6263, metadata !DIExpression()), !dbg !6401
  %36 = load i32, ptr %c, align 4, !dbg !6401
  store i32 %36, ptr %__UNIQUE_ID___x295, align 4, !dbg !6401
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y296) #15, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y296, metadata !6265, metadata !DIExpression()), !dbg !6401
  %37 = load ptr, ptr %ei, align 8, !dbg !6401
  %nr_entries36 = getelementptr inbounds %struct.eventfs_inode, ptr %37, i32 0, i32 8, !dbg !6401
  %bf.load37 = load i32, ptr %nr_entries36, align 8, !dbg !6401
  %bf.lshr38 = lshr i32 %bf.load37, 2, !dbg !6401
  store i32 %bf.lshr38, ptr %__UNIQUE_ID___y296, align 4, !dbg !6401
  %38 = load i32, ptr %__UNIQUE_ID___x295, align 4, !dbg !6401
  %39 = load i32, ptr %__UNIQUE_ID___y296, align 4, !dbg !6401
  %cmp40 = icmp ult i32 %38, %39, !dbg !6401
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !6401

cond.true:                                        ; preds = %for.end
  %40 = load i32, ptr %__UNIQUE_ID___x295, align 4, !dbg !6401
  br label %cond.end, !dbg !6401

cond.false:                                       ; preds = %for.end
  %41 = load i32, ptr %__UNIQUE_ID___y296, align 4, !dbg !6401
  br label %cond.end, !dbg !6401

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ], !dbg !6401
  store i32 %cond, ptr %tmp39, align 4, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y296) #15, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x295) #15, !dbg !6402
  %42 = load i32, ptr %tmp39, align 4, !dbg !6401
  %43 = load i32, ptr %c, align 4, !dbg !6403
  %sub42 = sub i32 %43, %42, !dbg !6403
  store i32 %sub42, ptr %c, align 4, !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6266, metadata !DIExpression()), !dbg !6404
  br label %do.body43, !dbg !6405

do.body43:                                        ; preds = %cond.end
  br label %do.cond44, !dbg !6407

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !6407

do.end45:                                         ; preds = %do.cond44
  %44 = load ptr, ptr %ei, align 8, !dbg !6405
  %children = getelementptr inbounds %struct.eventfs_inode, ptr %44, i32 0, i32 1, !dbg !6405
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !6405
  %45 = load volatile ptr, ptr %next, align 8, !dbg !6405
  store ptr %45, ptr %tmp46, align 8, !dbg !6407
  %46 = load ptr, ptr %tmp46, align 8, !dbg !6405
  store ptr %46, ptr %__mptr, align 8, !dbg !6404
  %47 = load ptr, ptr %__mptr, align 8, !dbg !6404
  %add.ptr = getelementptr i8, ptr %47, i64 0, !dbg !6404
  store ptr %add.ptr, ptr %tmp47, align 8, !dbg !6404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6409
  %48 = load ptr, ptr %tmp47, align 8, !dbg !6404
  store ptr %48, ptr %ei_child, align 8, !dbg !6409
  br label %for.cond48, !dbg !6409

for.cond48:                                       ; preds = %do.end77, %do.end45
  %49 = load ptr, ptr %ei_child, align 8, !dbg !6410
  %50 = getelementptr inbounds %struct.eventfs_inode, ptr %49, i32 0, i32 0, !dbg !6410
  %51 = load ptr, ptr %ei, align 8, !dbg !6410
  %children49 = getelementptr inbounds %struct.eventfs_inode, ptr %51, i32 0, i32 1, !dbg !6410
  %cmp50 = icmp ne ptr %50, %children49, !dbg !6410
  br i1 %cmp50, label %for.body52, label %for.end82, !dbg !6409

for.body52:                                       ; preds = %for.cond48
  %52 = load i32, ptr %c, align 4, !dbg !6411
  %cmp53 = icmp sgt i32 %52, 0, !dbg !6414
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !6415

if.then55:                                        ; preds = %for.body52
  %53 = load i32, ptr %c, align 4, !dbg !6416
  %dec = add i32 %53, -1, !dbg !6416
  store i32 %dec, ptr %c, align 4, !dbg !6416
  br label %for.inc73, !dbg !6418

if.end56:                                         ; preds = %for.body52
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !6419
  %pos57 = getelementptr inbounds %struct.dir_context, ptr %54, i32 0, i32 1, !dbg !6420
  %55 = load i64, ptr %pos57, align 8, !dbg !6421
  %inc58 = add i64 %55, 1, !dbg !6421
  store i64 %inc58, ptr %pos57, align 8, !dbg !6421
  %56 = load ptr, ptr %ei_child, align 8, !dbg !6422
  %is_freed59 = getelementptr inbounds %struct.eventfs_inode, ptr %56, i32 0, i32 8, !dbg !6424
  %bf.load60 = load i32, ptr %is_freed59, align 8, !dbg !6424
  %bf.clear61 = and i32 %bf.load60, 1, !dbg !6424
  %tobool62 = icmp ne i32 %bf.clear61, 0, !dbg !6422
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !6425

if.then63:                                        ; preds = %if.end56
  br label %for.inc73, !dbg !6426

if.end64:                                         ; preds = %if.end56
  %57 = load ptr, ptr %ei_child, align 8, !dbg !6427
  %name65 = getelementptr inbounds %struct.eventfs_inode, ptr %57, i32 0, i32 3, !dbg !6428
  %58 = load ptr, ptr %name65, align 8, !dbg !6428
  store ptr %58, ptr %name, align 8, !dbg !6429
  %59 = load ptr, ptr %ei_child, align 8, !dbg !6430
  %call66 = call i32 @eventfs_dir_ino(ptr noundef %59) #16, !dbg !6431
  store i32 %call66, ptr %ino, align 4, !dbg !6432
  %60 = load ptr, ptr %ctx.addr, align 8, !dbg !6433
  %61 = load ptr, ptr %name, align 8, !dbg !6435
  %62 = load ptr, ptr %name, align 8, !dbg !6436
  %call67 = call i64 @strlen(ptr noundef %62) #16, !dbg !6437
  %conv68 = trunc i64 %call67 to i32, !dbg !6437
  %63 = load i32, ptr %ino, align 4, !dbg !6438
  %conv69 = sext i32 %63 to i64, !dbg !6438
  %call70 = call zeroext i1 @dir_emit(ptr noundef %60, ptr noundef %61, i32 noundef %conv68, i64 noundef %conv69, i32 noundef 4) #16, !dbg !6439
  br i1 %call70, label %if.end72, label %if.then71, !dbg !6440

if.then71:                                        ; preds = %if.end64
  br label %out_dec, !dbg !6441

if.end72:                                         ; preds = %if.end64
  br label %for.inc73, !dbg !6442

for.inc73:                                        ; preds = %if.end72, %if.then63, %if.then55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr74) #15, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %__mptr74, metadata !6269, metadata !DIExpression()), !dbg !6443
  br label %do.body75, !dbg !6444

do.body75:                                        ; preds = %for.inc73
  br label %do.cond76, !dbg !6446

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !6446

do.end77:                                         ; preds = %do.cond76
  %64 = load ptr, ptr %ei_child, align 8, !dbg !6444
  %65 = getelementptr inbounds %struct.eventfs_inode, ptr %64, i32 0, i32 0, !dbg !6444
  %next79 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 0, !dbg !6444
  %66 = load volatile ptr, ptr %next79, align 8, !dbg !6444
  store ptr %66, ptr %tmp78, align 8, !dbg !6446
  %67 = load ptr, ptr %tmp78, align 8, !dbg !6444
  store ptr %67, ptr %__mptr74, align 8, !dbg !6443
  %68 = load ptr, ptr %__mptr74, align 8, !dbg !6443
  %add.ptr81 = getelementptr i8, ptr %68, i64 0, !dbg !6443
  store ptr %add.ptr81, ptr %tmp80, align 8, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr74) #15, !dbg !6410
  %69 = load ptr, ptr %tmp80, align 8, !dbg !6443
  store ptr %69, ptr %ei_child, align 8, !dbg !6410
  br label %for.cond48, !dbg !6410, !llvm.loop !6448

for.end82:                                        ; preds = %for.cond48
  store i32 1, ptr %ret, align 4, !dbg !6450
  br label %out, !dbg !6451

out:                                              ; preds = %out_dec, %for.end82, %cleanup, %if.then12
  call void @llvm.dbg.label(metadata !6272), !dbg !6452
  %70 = load i32, ptr %idx, align 4, !dbg !6453
  call void @srcu_read_unlock(ptr noundef @eventfs_srcu, i32 noundef %70) #16, !dbg !6454
  %71 = load i32, ptr %ret, align 4, !dbg !6455
  store i32 %71, ptr %retval, align 4, !dbg !6456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !6456

out_dec:                                          ; preds = %if.then71
  call void @llvm.dbg.label(metadata !6273), !dbg !6457
  %72 = load ptr, ptr %ctx.addr, align 8, !dbg !6458
  %pos83 = getelementptr inbounds %struct.dir_context, ptr %72, i32 0, i32 1, !dbg !6459
  %73 = load i64, ptr %pos83, align 8, !dbg !6460
  %dec84 = add i64 %73, -1, !dbg !6460
  store i64 %dec84, ptr %pos83, align 8, !dbg !6460
  br label %out, !dbg !6461

cleanup85:                                        ; preds = %out, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %ino) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei_child) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_inode) #15, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 8, ptr %fops) #15, !dbg !6462
  %74 = load i32, ptr %retval, align 4, !dbg !6462
  ret i32 %74, !dbg !6462
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6463 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6467, metadata !DIExpression()), !dbg !6468
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6469
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6470
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6470
  ret ptr %1, !dbg !6471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit_dots(ptr noundef %file, ptr noundef %ctx) #3 align 16 !dbg !6472 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6476, metadata !DIExpression()), !dbg !6478
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6477, metadata !DIExpression()), !dbg !6479
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6480
  %pos = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 1, !dbg !6482
  %1 = load i64, ptr %pos, align 8, !dbg !6482
  %cmp = icmp eq i64 %1, 0, !dbg !6483
  br i1 %cmp, label %if.then, label %if.end3, !dbg !6484

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6485
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6488
  %call = call zeroext i1 @dir_emit_dot(ptr noundef %2, ptr noundef %3) #16, !dbg !6489
  br i1 %call, label %if.end, label %if.then1, !dbg !6490

if.then1:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !6491
  br label %return, !dbg !6491

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !6492
  %pos2 = getelementptr inbounds %struct.dir_context, ptr %4, i32 0, i32 1, !dbg !6493
  store i64 1, ptr %pos2, align 8, !dbg !6494
  br label %if.end3, !dbg !6495

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !6496
  %pos4 = getelementptr inbounds %struct.dir_context, ptr %5, i32 0, i32 1, !dbg !6498
  %6 = load i64, ptr %pos4, align 8, !dbg !6498
  %cmp5 = icmp eq i64 %6, 1, !dbg !6499
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !6500

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6501
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !6504
  %call7 = call zeroext i1 @dir_emit_dotdot(ptr noundef %7, ptr noundef %8) #16, !dbg !6505
  br i1 %call7, label %if.end9, label %if.then8, !dbg !6506

if.then8:                                         ; preds = %if.then6
  store i1 false, ptr %retval, align 1, !dbg !6507
  br label %return, !dbg !6507

if.end9:                                          ; preds = %if.then6
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6508
  %pos10 = getelementptr inbounds %struct.dir_context, ptr %9, i32 0, i32 1, !dbg !6509
  store i64 2, ptr %pos10, align 8, !dbg !6510
  br label %if.end11, !dbg !6511

if.end11:                                         ; preds = %if.end9, %if.end3
  store i1 true, ptr %retval, align 1, !dbg !6512
  br label %return, !dbg !6512

return:                                           ; preds = %if.end11, %if.then8, %if.then1
  %10 = load i1, ptr %retval, align 1, !dbg !6513
  ret i1 %10, !dbg !6513
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @srcu_read_lock(ptr noundef %ssp) #3 align 16 !dbg !6514 {
entry:
  %ssp.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !6518, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6519, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %ssp.addr, align 8, !dbg !6523
  call void @srcu_check_nmi_safety(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !6524
  %1 = load ptr, ptr %ssp.addr, align 8, !dbg !6525
  %call = call i32 @__srcu_read_lock(ptr noundef %1) #16, !dbg !6526
  store i32 %call, ptr %retval1, align 4, !dbg !6527
  br label %do.body, !dbg !6528

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6529

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6529

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %retval1, align 4, !dbg !6531
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !6532
  ret i32 %2, !dbg !6533
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit(ptr noundef %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) #3 align 16 !dbg !6534 {
entry:
  %ctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %namelen.addr = alloca i32, align 4
  %ino.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6538, metadata !DIExpression()), !dbg !6543
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6539, metadata !DIExpression()), !dbg !6544
  store i32 %namelen, ptr %namelen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %namelen.addr, metadata !6540, metadata !DIExpression()), !dbg !6545
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !6541, metadata !DIExpression()), !dbg !6546
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6542, metadata !DIExpression()), !dbg !6547
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6548
  %actor = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 0, !dbg !6549
  %1 = load ptr, ptr %actor, align 8, !dbg !6549
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6550
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6551
  %4 = load i32, ptr %namelen.addr, align 4, !dbg !6552
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !6553
  %pos = getelementptr inbounds %struct.dir_context, ptr %5, i32 0, i32 1, !dbg !6554
  %6 = load i64, ptr %pos, align 8, !dbg !6554
  %7 = load i64, ptr %ino.addr, align 8, !dbg !6555
  %8 = load i32, ptr %type.addr, align 4, !dbg !6556
  %call = call zeroext i1 %1(ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %6, i64 noundef %7, i32 noundef %8) #16, !dbg !6548
  ret i1 %call, !dbg !6557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6558 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_read_unlock(ptr noundef %ssp, i32 noundef %idx) #3 align 16 !dbg !6561 {
entry:
  %ssp.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !6565, metadata !DIExpression()), !dbg !6572
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6566, metadata !DIExpression()), !dbg !6573
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6567, metadata !DIExpression()), !dbg !6574
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6574
  %and = and i32 %0, -2, !dbg !6574
  %tobool = icmp ne i32 %and, 0, !dbg !6574
  %lnot = xor i1 %tobool, true, !dbg !6574
  %lnot1 = xor i1 %lnot, true, !dbg !6574
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6574
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6574
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6575
  %tobool2 = icmp ne i32 %1, 0, !dbg !6575
  %lnot3 = xor i1 %tobool2, true, !dbg !6575
  %lnot5 = xor i1 %lnot3, true, !dbg !6575
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6575
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6575
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6575
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6575
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6574

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6575

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6569, metadata !DIExpression()), !dbg !6576
  store i32 2307, ptr %__flags, align 4, !dbg !6576
  br label %do.body8, !dbg !6576

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6577

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6577

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6576

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6579
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 285, i32 %2, i64 12) #15, !dbg !6579, !srcloc !6581
  br label %do.cond10, !dbg !6579

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6579

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6576

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6582

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6582

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6575
  br label %do.cond15, !dbg !6576

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6576

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6576

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6574
  %tobool17 = icmp ne i32 %3, 0, !dbg !6574
  %lnot18 = xor i1 %tobool17, true, !dbg !6574
  %lnot20 = xor i1 %lnot18, true, !dbg !6574
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6574
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6574
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6574
  store i64 %expval23, ptr %tmp, align 8, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6584
  %4 = load i64, ptr %tmp, align 8, !dbg !6574
  %5 = load ptr, ptr %ssp.addr, align 8, !dbg !6585
  call void @srcu_check_nmi_safety(ptr noundef %5, i1 noundef zeroext false) #16, !dbg !6586
  br label %do.body24, !dbg !6587

do.body24:                                        ; preds = %if.end
  br label %do.end26, !dbg !6588

do.end26:                                         ; preds = %do.body24
  %6 = load ptr, ptr %ssp.addr, align 8, !dbg !6590
  %7 = load i32, ptr %idx.addr, align 4, !dbg !6591
  call void @__srcu_read_unlock(ptr noundef %6, i32 noundef %7) #16, !dbg !6592
  ret void, !dbg !6593
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit_dot(ptr noundef %file, ptr noundef %ctx) #3 align 16 !dbg !6594 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6596, metadata !DIExpression()), !dbg !6598
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6597, metadata !DIExpression()), !dbg !6599
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6600
  %actor = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 0, !dbg !6601
  %1 = load ptr, ptr %actor, align 8, !dbg !6601
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6602
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6603
  %pos = getelementptr inbounds %struct.dir_context, ptr %3, i32 0, i32 1, !dbg !6604
  %4 = load i64, ptr %pos, align 8, !dbg !6604
  %5 = load ptr, ptr %file.addr, align 8, !dbg !6605
  %f_path = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10, !dbg !6606
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !6607
  %6 = load ptr, ptr %dentry, align 8, !dbg !6607
  %d_inode = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5, !dbg !6608
  %7 = load ptr, ptr %d_inode, align 8, !dbg !6608
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12, !dbg !6609
  %8 = load i64, ptr %i_ino, align 8, !dbg !6609
  %call = call zeroext i1 %1(ptr noundef %2, ptr noundef @.str.2, i32 noundef 1, i64 noundef %4, i64 noundef %8, i32 noundef 4) #16, !dbg !6600
  ret i1 %call, !dbg !6610
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit_dotdot(ptr noundef %file, ptr noundef %ctx) #3 align 16 !dbg !6611 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6613, metadata !DIExpression()), !dbg !6615
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6617
  %actor = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 0, !dbg !6618
  %1 = load ptr, ptr %actor, align 8, !dbg !6618
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6619
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6620
  %pos = getelementptr inbounds %struct.dir_context, ptr %3, i32 0, i32 1, !dbg !6621
  %4 = load i64, ptr %pos, align 8, !dbg !6621
  %5 = load ptr, ptr %file.addr, align 8, !dbg !6622
  %f_path = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10, !dbg !6623
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !6624
  %6 = load ptr, ptr %dentry, align 8, !dbg !6624
  %call = call i64 @parent_ino(ptr noundef %6) #16, !dbg !6625
  %call1 = call zeroext i1 %1(ptr noundef %2, ptr noundef @.str.3, i32 noundef 2, i64 noundef %4, i64 noundef %call, i32 noundef 4) #16, !dbg !6617
  ret i1 %call1, !dbg !6626
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @parent_ino(ptr noundef %dentry) #3 align 16 !dbg !6627 {
entry:
  %dentry.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6632, metadata !DIExpression()), !dbg !6634
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !6635
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6633, metadata !DIExpression()), !dbg !6636
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6637
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !6638
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !6638
  %lock = getelementptr inbounds %struct.anon.21, ptr %1, i32 0, i32 0, !dbg !6638
  call void @spin_lock(ptr noundef %lock) #16, !dbg !6639
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !6640
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !6641
  %3 = load ptr, ptr %d_parent, align 8, !dbg !6641
  %d_inode = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5, !dbg !6642
  %4 = load ptr, ptr %d_inode, align 8, !dbg !6642
  %i_ino = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 12, !dbg !6643
  %5 = load i64, ptr %i_ino, align 8, !dbg !6643
  store i64 %5, ptr %res, align 8, !dbg !6644
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !6645
  %d_lockref1 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7, !dbg !6646
  %7 = getelementptr inbounds %struct.lockref, ptr %d_lockref1, i32 0, i32 0, !dbg !6646
  %lock2 = getelementptr inbounds %struct.anon.21, ptr %7, i32 0, i32 0, !dbg !6646
  call void @spin_unlock(ptr noundef %lock2) #16, !dbg !6647
  %8 = load i64, ptr %res, align 8, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !6649
  ret i64 %8, !dbg !6650
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !6651 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6656, metadata !DIExpression()), !dbg !6657
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6658
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6658
  call void @_raw_spin_lock(ptr noundef %1) #16, !dbg !6658
  ret void, !dbg !6659
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !6660 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6662, metadata !DIExpression()), !dbg !6663
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6664
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6664
  call void @_raw_spin_unlock(ptr noundef %1) #16, !dbg !6664
  ret void, !dbg !6665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6666 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6671 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_check_nmi_safety(ptr noundef %ssp, i1 noundef zeroext %nmi_safe) #3 align 16 !dbg !6672 {
entry:
  %ssp.addr = alloca ptr, align 8
  %nmi_safe.addr = alloca i8, align 1
  store ptr %ssp, ptr %ssp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ssp.addr, metadata !6676, metadata !DIExpression()), !dbg !6678
  %frombool = zext i1 %nmi_safe to i8
  store i8 %frombool, ptr %nmi_safe.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nmi_safe.addr, metadata !6677, metadata !DIExpression()), !dbg !6679
  ret void, !dbg !6680
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6681 dso_local i32 @__srcu_read_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6682 dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #3 align 16 !dbg !6683 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6685, metadata !DIExpression()), !dbg !6686
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6687
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6688
  call void @refcount_inc(ptr noundef %refcount) #16, !dbg !6689
  ret void, !dbg !6690
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !6691 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6695, metadata !DIExpression()), !dbg !6696
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6697
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #16, !dbg !6698
  ret void, !dbg !6699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6700 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6704, metadata !DIExpression()), !dbg !6706
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6705, metadata !DIExpression()), !dbg !6707
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6708
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6709
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !6710
  ret void, !dbg !6711
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6712 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6716, metadata !DIExpression()), !dbg !6720
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6717, metadata !DIExpression()), !dbg !6721
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6718, metadata !DIExpression()), !dbg !6722
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !6723
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6719, metadata !DIExpression()), !dbg !6724
  %0 = load i32, ptr %i.addr, align 4, !dbg !6725
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6726
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6727
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #16, !dbg !6728
  store i32 %call, ptr %old, align 4, !dbg !6724
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6729
  %tobool = icmp ne ptr %2, null, !dbg !6729
  br i1 %tobool, label %if.then, label %if.end, !dbg !6731

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6732
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6733
  store i32 %3, ptr %4, align 4, !dbg !6734
  br label %if.end, !dbg !6735

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6736
  %tobool1 = icmp ne i32 %5, 0, !dbg !6736
  %lnot = xor i1 %tobool1, true, !dbg !6736
  %lnot2 = xor i1 %lnot, true, !dbg !6736
  %lnot3 = xor i1 %lnot2, true, !dbg !6736
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6736
  %conv = sext i32 %lnot.ext to i64, !dbg !6736
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6736
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6736
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6738

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6739
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #16, !dbg !6740
  br label %if.end18, !dbg !6740

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6741
  %cmp = icmp slt i32 %7, 0, !dbg !6741
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6741

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6741
  %9 = load i32, ptr %i.addr, align 4, !dbg !6741
  %add = add i32 %8, %9, !dbg !6741
  %cmp7 = icmp slt i32 %add, 0, !dbg !6741
  br label %lor.end, !dbg !6741

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6741
  %lnot11 = xor i1 %lnot9, true, !dbg !6741
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6741
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6741
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6741
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6741
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6743

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6744
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #16, !dbg !6745
  br label %if.end17, !dbg !6745

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !6746
  ret void, !dbg !6746
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6747 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6750, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6753
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6754
  %1 = load i32, ptr %i.addr, align 4, !dbg !6755
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6756
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #16, !dbg !6757
  ret i32 %call, !dbg !6758
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6759 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6761, metadata !DIExpression()), !dbg !6763
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6762, metadata !DIExpression()), !dbg !6764
  %0 = load i32, ptr %i.addr, align 4, !dbg !6765
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6766
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #16, !dbg !6767
  ret i32 %call, !dbg !6768
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6769 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6771, metadata !DIExpression()), !dbg !6775
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6772, metadata !DIExpression()), !dbg !6776
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !6777
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6773, metadata !DIExpression()), !dbg !6777
  %0 = load i32, ptr %i.addr, align 4, !dbg !6777
  store i32 %0, ptr %__ret, align 4, !dbg !6777
  %1 = load i32, ptr %__ret, align 4, !dbg !6777
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6777
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6777
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !6777, !srcloc !6778
  store i32 %3, ptr %__ret, align 4, !dbg !6777
  %4 = load i32, ptr %__ret, align 4, !dbg !6777
  store i32 %4, ptr %tmp, align 4, !dbg !6777
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !6779
  %5 = load i32, ptr %tmp, align 4, !dbg !6777
  ret i32 %5, !dbg !6780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_inode_child(ptr noundef %parent, ptr noundef %dentry, i8 noundef zeroext %type) #3 align 16 !dbg !6781 {
entry:
  %parent.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %type.addr = alloca i8, align 1
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6786, metadata !DIExpression()), !dbg !6789
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6787, metadata !DIExpression()), !dbg !6790
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6788, metadata !DIExpression()), !dbg !6791
  %call = call zeroext i1 @audit_dummy_context() #16, !dbg !6792
  %lnot = xor i1 %call, true, !dbg !6792
  %lnot1 = xor i1 %lnot, true, !dbg !6792
  %lnot2 = xor i1 %lnot1, true, !dbg !6792
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6792
  %conv = sext i32 %lnot.ext to i64, !dbg !6792
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6792
  %tobool = icmp ne i64 %expval, 0, !dbg !6792
  br i1 %tobool, label %if.then, label %if.end, !dbg !6794

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !6795
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6796
  %2 = load i8, ptr %type.addr, align 1, !dbg !6797
  call void @__audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #16, !dbg !6798
  br label %if.end, !dbg !6798

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_dirent(ptr noundef %dir, ptr noundef %dentry, i32 noundef %mask) #3 align 16 !dbg !6800 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6804, metadata !DIExpression()), !dbg !6807
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6805, metadata !DIExpression()), !dbg !6808
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6806, metadata !DIExpression()), !dbg !6809
  %0 = load i32, ptr %mask.addr, align 4, !dbg !6810
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6811
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !6812
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6813
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !6814
  %call = call i32 @fsnotify_name(i32 noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef %2, ptr noundef %d_name, i32 noundef 0) #16, !dbg !6815
  ret void, !dbg !6816
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @audit_dummy_context() #3 align 16 !dbg !6817 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !6822
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6821, metadata !DIExpression()), !dbg !6823
  %call = call ptr @audit_context() #16, !dbg !6824
  store ptr %call, ptr %p, align 8, !dbg !6823
  %0 = load ptr, ptr %p, align 8, !dbg !6825
  %tobool = icmp ne ptr %0, null, !dbg !6825
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6826

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !dbg !6827
  %2 = load i32, ptr %1, align 4, !dbg !6828
  %tobool1 = icmp ne i32 %2, 0, !dbg !6826
  br label %lor.end, !dbg !6826

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !6829
  ret i1 %3, !dbg !6830
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6831 dso_local void @__audit_inode_child(ptr noundef, ptr noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @audit_context() #3 align 16 !dbg !6832 {
entry:
  %call = call ptr @get_current() #16, !dbg !6835
  %audit_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 114, !dbg !6836
  %0 = load ptr, ptr %audit_context, align 32, !dbg !6836
  ret ptr %0, !dbg !6837
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !6838 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6849
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6843, metadata !DIExpression()), !dbg !6849
  br label %do.body, !dbg !6849

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6850
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6845, metadata !DIExpression()), !dbg !6850
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6850
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6850
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6849
  br label %do.cond, !dbg !6850

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6850

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !6851
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6847, metadata !DIExpression()), !dbg !6851
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !6851, !srcloc !6852
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6851
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6851
  %3 = inttoptr i64 %2 to ptr, !dbg !6851
  store ptr %3, ptr %tmp, align 8, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !6849
  %4 = load ptr, ptr %tmp, align 8, !dbg !6851
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6849
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6849
  store ptr %5, ptr %tmp1, align 8, !dbg !6849
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6853
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6849
  ret ptr %6, !dbg !6854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_name(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #3 align 16 !dbg !6855 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6859, metadata !DIExpression()), !dbg !6865
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6860, metadata !DIExpression()), !dbg !6866
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !6861, metadata !DIExpression()), !dbg !6867
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6862, metadata !DIExpression()), !dbg !6868
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6863, metadata !DIExpression()), !dbg !6869
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6864, metadata !DIExpression()), !dbg !6870
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !6871
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6873
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6873
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !6874
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #16, !dbg !6875
  %cmp = icmp eq i64 %call, 0, !dbg !6876
  br i1 %cmp, label %if.then, label %if.end, !dbg !6877

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6878
  br label %return, !dbg !6878

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6879
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6880
  %4 = load i32, ptr %data_type.addr, align 4, !dbg !6881
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !6882
  %6 = load ptr, ptr %name.addr, align 8, !dbg !6883
  %7 = load i32, ptr %cookie.addr, align 4, !dbg !6884
  %call1 = call i32 @fsnotify(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, i32 noundef %7) #16, !dbg !6885
  store i32 %call1, ptr %retval, align 4, !dbg !6886
  br label %return, !dbg !6886

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6887
  ret i32 %8, !dbg !6887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #7 align 16 !dbg !6888 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6894, metadata !DIExpression()), !dbg !6895
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6896
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #16, !dbg !6897
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6898
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #16, !dbg !6899
  ret i64 %call, !dbg !6900
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6901 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6904 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6906, metadata !DIExpression()), !dbg !6908
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6907, metadata !DIExpression()), !dbg !6909
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6910
  %1 = load i64, ptr %size.addr, align 8, !dbg !6911
  %conv = trunc i64 %1 to i32, !dbg !6911
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !6912
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6913
  %3 = load i64, ptr %size.addr, align 8, !dbg !6913
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !6913
  ret void, !dbg !6914
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #7 align 16 !dbg !6915 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6917, metadata !DIExpression()), !dbg !6918
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6919
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #16, !dbg !6920
  ret i64 %call, !dbg !6921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6922 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6924, metadata !DIExpression()), !dbg !6926
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6925, metadata !DIExpression()), !dbg !6927
  ret i1 true, !dbg !6928
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #7 align 16 !dbg !6929 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6935, metadata !DIExpression()), !dbg !6936
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6937
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #16, !dbg !6938
  ret i64 %call, !dbg !6939
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #7 align 16 !dbg !6940 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6943, metadata !DIExpression()), !dbg !6944
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6945
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6945
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6945
  ret i64 %1, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #3 align 16 !dbg !6947 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6950, metadata !DIExpression()), !dbg !6951
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6952
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !6953
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6954
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6955
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6956
  ret void, !dbg !6957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6958 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6960, metadata !DIExpression()), !dbg !6961
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6962
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !6964
  br i1 %call, label %if.end, label %if.then, !dbg !6965

if.then:                                          ; preds = %entry
  br label %return, !dbg !6966

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6967
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6968
  %2 = load ptr, ptr %prev, align 8, !dbg !6968
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6969
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6970
  %4 = load ptr, ptr %next, align 8, !dbg !6970
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !6971
  br label %return, !dbg !6972

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6972
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6973 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6977, metadata !DIExpression()), !dbg !6978
  ret i1 true, !dbg !6979
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6980 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6982, metadata !DIExpression()), !dbg !6984
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6983, metadata !DIExpression()), !dbg !6985
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6986
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6987
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6988
  store ptr %0, ptr %prev1, align 8, !dbg !6989
  br label %do.body, !dbg !6990

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6991

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6993

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6991

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6995
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6995
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6995
  store volatile ptr %2, ptr %next4, align 8, !dbg !6995
  br label %do.end5, !dbg !6995

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6991

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6997
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }
attributes #20 = { noredzone allocsize(0,1) }
attributes #21 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903}
!llvm.ident = !{!3904}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "eventfs_mutex", scope: !2, file: !3, line: 33, type: !318, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/tracefs/.event_inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/tracefs/tracefs\22 -D KBUILD_BASENAME=\22event_inode\22 -D KBUILD_MODNAME=\22tracefs\22 -D __KBUILD_MODNAME=kmod_tracefs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/tracefs/event_inode.ll fs/tracefs/event_inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !246, globals: !3781, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/tracefs/event_inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "134bc490122cae5b2c7325144d446a6a")
!4 = !{!5, !11, !16, !112, !118, !125, !133, !149, !156, !164, !170, !203, !208, !215, !220, !228, !238}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !6, line: 2052, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!10 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !18, file: !17, line: 147, baseType: !7, size: 32, elements: !109)
!17 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !17, line: 135, size: 512, elements: !19)
!19 = !{!20, !24, !26, !28, !32, !33, !49, !107, !108}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !18, file: !17, line: 136, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !17, line: 137, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !18, file: !17, line: 138, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !18, file: !17, line: 139, baseType: !29, size: 16, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !18, file: !17, line: 150, baseType: !16, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !18, file: !17, line: 151, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !17, line: 64, baseType: !36)
!36 = !DISubroutineType(types: !37)
!37 = !{!27, !38, !27, !25, !39, !45}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !42, line: 16, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !42, line: 88, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !18, file: !17, line: 152, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !17, line: 117, size: 256, elements: !52)
!52 = !{!53, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !17, line: 118, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !30, line: 173, baseType: !27, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !51, file: !17, line: 119, baseType: !59, size: 192, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !60, line: 41, baseType: !61)
!60 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !60, line: 37, size: 192, elements: !62)
!62 = !{!63, !101}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !61, file: !60, line: 38, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !65, line: 29, baseType: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !65, line: 17, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !65, line: 18, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 18, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !69, file: !65, line: 19, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !73, line: 14, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !72, file: !73, line: 15, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !77, line: 44, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !77, line: 14, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 15, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 15, size: 32, elements: !82)
!82 = !{!83, !84, !94}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !77, line: 16, baseType: !54, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 24, baseType: !85, size: 16)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 24, size: 16, elements: !86)
!86 = !{!87, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !85, file: !77, line: 25, baseType: !88, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !85, file: !77, line: 26, baseType: !88, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 28, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 28, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !95, file: !77, line: 29, baseType: !98, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !31)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !95, file: !77, line: 30, baseType: !98, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !61, file: !60, line: 39, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !30, line: 191, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !30, line: 191, baseType: !105, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !18, file: !17, line: 153, baseType: !25, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !18, file: !17, line: 154, baseType: !25, size: 64, offset: 448)
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !113, line: 16, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "TT_NONE", value: 0)
!116 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!117 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !119, line: 15, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!122 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!123 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!124 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !126, line: 68, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!130 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !134, line: 1325, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!136 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!137 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!138 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!139 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!140 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!141 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!142 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!143 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!144 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!145 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!146 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!147 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!148 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !157, line: 9, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!160 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!161 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!162 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!163 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !165, line: 54, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "USRQUOTA", value: 0)
!168 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!169 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !171, line: 107, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!173 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!174 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!175 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!176 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!177 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!178 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!179 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!180 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!181 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!182 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!183 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!184 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!185 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!186 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!187 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!188 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!189 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!190 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!191 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!192 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!193 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!194 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!195 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!196 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!197 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!198 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!199 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!200 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!201 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!202 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 72, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIEnumerator(name: "EVENTFS_SAVE_MODE", value: 65536)
!206 = !DIEnumerator(name: "EVENTFS_SAVE_UID", value: 131072)
!207 = !DIEnumerator(name: "EVENTFS_SAVE_GID", value: 262144)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 5, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "fs/tracefs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce2344b9feb8ac736f3a0742c5db1288")
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "TRACEFS_EVENT_INODE", value: 2)
!212 = !DIEnumerator(name: "TRACEFS_GID_PERM_SET", value: 4)
!213 = !DIEnumerator(name: "TRACEFS_UID_PERM_SET", value: 8)
!214 = !DIEnumerator(name: "TRACEFS_INSTANCE_INODE", value: 16)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 10, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!217 = !{!218, !219}
!218 = !DIEnumerator(name: "false", value: 0)
!219 = !DIEnumerator(name: "true", value: 1)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !221, line: 119, baseType: !7, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!222 = !{!223, !224, !225, !226, !227}
!223 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!224 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!225 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!226 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!227 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !229, line: 364, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!230 = !{!231, !232, !233, !234, !235, !236, !237}
!231 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!232 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!233 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!234 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!235 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!236 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!237 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !239, line: 286, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!242 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!243 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!244 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!245 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!246 = !{!25, !247, !44, !405, !3755, !3757, !3759, !3761, !3767, !3774, !7, !1245, !3777, !412, !3778}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !209, line: 48, size: 704, elements: !249)
!249 = !{!250, !263, !264, !3736, !3737, !3744, !3745, !3746, !3751, !3752, !3753, !3754}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !209, line: 49, baseType: !251, size: 128)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !209, line: 49, size: 128, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !251, file: !209, line: 50, baseType: !102, size: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !251, file: !209, line: 51, baseType: !255, size: 128, align: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !256)
!256 = !{!257, !259}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !30, line: 233, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !255, file: !30, line: 234, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !258}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !248, file: !209, line: 53, baseType: !102, size: 128, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !248, file: !209, line: 54, baseType: !265, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_entry", file: !268, line: 74, size: 192, elements: !269)
!268 = !DIFile(filename: "./include/linux/tracefs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4889574467ac457255616de05cb15d8")
!269 = !{!270, !271, !3731}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !268, line: 75, baseType: !21, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !267, file: !268, line: 76, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "eventfs_callback", file: !268, line: 62, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!27, !21, !276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !6, line: 1914, size: 2112, elements: !282)
!282 = !{!283, !287, !3613, !3617, !3621, !3622, !3623, !3629, !3642, !3650, !3654, !3655, !3659, !3660, !3664, !3669, !3670, !3674, !3678, !3684, !3685, !3689, !3690, !3694, !3698, !3699, !3704, !3708, !3712, !3716, !3720, !3721, !3727}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !281, file: !6, line: 1915, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !286, line: 103, flags: DIFlagFwdDecl)
!286 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !281, file: !6, line: 1916, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!46, !291, !46, !27}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !6, line: 994, size: 1856, align: 64, elements: !293)
!293 = !{!294, !305, !306, !308, !317, !330, !331, !332, !3592, !3593, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3610, !3611, !3612}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !6, line: 995, baseType: !295, size: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !6, line: 995, size: 128, elements: !296)
!296 = !{!297, !303, !304}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !295, file: !6, line: 996, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !299, line: 60, size: 64, elements: !300)
!299 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !299, line: 61, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !295, file: !6, line: 997, baseType: !255, size: 128, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !295, file: !6, line: 998, baseType: !7, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !292, file: !6, line: 1005, baseType: !64, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !292, file: !6, line: 1006, baseType: !307, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !7)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !292, file: !6, line: 1007, baseType: !309, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !310, line: 13, baseType: !311)
!310 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !312, file: !30, line: 180, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !48)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !292, file: !6, line: 1008, baseType: !318, size: 256, offset: 256)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !319, line: 66, size: 256, elements: !320)
!319 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!320 = !{!321, !322, !324, !329}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !318, file: !319, line: 67, baseType: !309, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !318, file: !319, line: 68, baseType: !323, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !73, line: 23, baseType: !72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !318, file: !319, line: 70, baseType: !325, size: 32, offset: 96)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !326, line: 15, size: 32, elements: !327)
!326 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !325, file: !326, line: 20, baseType: !54, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !318, file: !319, line: 72, baseType: !102, size: 128, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !292, file: !6, line: 1009, baseType: !46, size: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !292, file: !6, line: 1010, baseType: !7, size: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !292, file: !6, line: 1011, baseType: !333, size: 256, offset: 640)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !6, line: 948, size: 256, elements: !334)
!334 = !{!335, !358, !3588, !3589, !3590, !3591}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !333, file: !6, line: 949, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !337, line: 34, baseType: !338)
!337 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 25, size: 64, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !338, file: !337, line: 26, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !342, line: 27, baseType: !343)
!342 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !342, line: 13, size: 64, elements: !344)
!344 = !{!345, !357}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !342, line: 14, baseType: !346, size: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !342, line: 14, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !346, file: !342, line: 15, baseType: !54, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !342, line: 16, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !342, line: 16, size: 32, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !350, file: !342, line: 18, baseType: !88, size: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !350, file: !342, line: 19, baseType: !354, size: 24, offset: 8)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 3)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !343, file: !342, line: 26, baseType: !76, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !333, file: !6, line: 950, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !157, line: 59, size: 768, elements: !361)
!361 = !{!362, !367, !368, !369, !382, !383, !384, !385}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !360, file: !157, line: 61, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !221, line: 113, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !221, line: 111, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !364, file: !221, line: 112, baseType: !54, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !360, file: !157, line: 62, baseType: !7, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !360, file: !157, line: 63, baseType: !64, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !360, file: !157, line: 65, baseType: !370, size: 256, offset: 128)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 256, elements: !380)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !371, file: !30, line: 195, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !30, line: 199, baseType: !374, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !375, file: !30, line: 199, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!380 = !{!381}
!381 = !DISubrange(count: 4)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !360, file: !157, line: 66, baseType: !371, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !360, file: !157, line: 68, baseType: !59, size: 192, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !360, file: !157, line: 69, baseType: !255, size: 128, align: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !360, file: !157, line: 70, baseType: !386, offset: 768)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, elements: !1145)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !157, line: 54, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !387, file: !157, line: 55, baseType: !27, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !387, file: !157, line: 56, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !393, line: 26, size: 1152, elements: !394)
!393 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!394 = !{!395, !409, !410, !411, !3574, !3578, !3579, !3580, !3583, !3584, !3585, !3586, !3587}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !392, file: !393, line: 27, baseType: !396, size: 192)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !397, line: 19, size: 192, elements: !398)
!397 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!398 = !{!399, !407, !408}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !396, file: !397, line: 20, baseType: !400, size: 128)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !401, line: 296, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!402 = !{!403, !404, !406}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !400, file: !401, line: 297, baseType: !64, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !400, file: !401, line: 299, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !400, file: !401, line: 300, baseType: !25, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !396, file: !397, line: 21, baseType: !7, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !396, file: !397, line: 22, baseType: !7, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !392, file: !393, line: 28, baseType: !255, size: 128, align: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !392, file: !393, line: 29, baseType: !7, size: 32, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !392, file: !393, line: 30, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !414, line: 746, size: 58368, elements: !415)
!414 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!415 = !{!416, !426, !427, !428, !429, !430, !431, !432, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !508, !519, !619, !623, !626, !657, !658, !659, !660, !671, !673, !674, !675, !676, !677, !678, !689, !690, !693, !694, !695, !696, !697, !698, !699, !700, !707, !708, !715, !716, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1226, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1241, !1242, !1243, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1275, !1281, !1351, !1352, !1353, !1354, !1358, !1361, !1368, !1373, !1376, !1379, !1382, !1408, !1553, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1595, !1596, !1597, !1606, !1614, !1615, !1616, !1617, !1618, !1623, !1624, !1625, !1628, !1629, !1632, !1635, !1638, !1646, !1649, !1650, !1737, !1738, !1739, !1740, !1741, !1747, !1748, !1749, !1750, !1753, !1754, !1757, !1760, !1761, !1764, !1765, !1766, !1769, !1770, !1771, !1774, !1775, !1776, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1808, !1811, !3232, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3244, !3316, !3318, !3319, !3320, !3321, !3322, !3334, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3351, !3352, !3353}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !413, file: !414, line: 752, baseType: !417, size: 192)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !418, line: 56, size: 192, elements: !419)
!418 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!419 = !{!420, !421, !422, !425}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !418, line: 57, baseType: !44, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !417, file: !418, line: 58, baseType: !44, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !417, file: !418, line: 59, baseType: !423, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !417, file: !418, line: 61, baseType: !423, size: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !413, file: !414, line: 754, baseType: !7, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !413, file: !414, line: 767, baseType: !25, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !413, file: !414, line: 768, baseType: !363, size: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !414, line: 770, baseType: !7, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !413, file: !414, line: 771, baseType: !7, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !413, file: !414, line: 774, baseType: !27, size: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !413, file: !414, line: 775, baseType: !433, size: 128, offset: 448)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !434, line: 58, size: 128, elements: !435)
!434 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!435 = !{!436, !437, !442, !443}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !433, file: !434, line: 59, baseType: !298, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 60, baseType: !438, size: 32, offset: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 60, size: 32, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !438, file: !434, line: 61, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !438, file: !434, line: 62, baseType: !54, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !433, file: !434, line: 65, baseType: !98, size: 16, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !433, file: !434, line: 65, baseType: !98, size: 16, offset: 112)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !413, file: !414, line: 776, baseType: !7, size: 32, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !413, file: !414, line: 777, baseType: !44, size: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !413, file: !414, line: 778, baseType: !412, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !413, file: !414, line: 787, baseType: !27, size: 32, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !413, file: !414, line: 788, baseType: !27, size: 32, offset: 800)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !413, file: !414, line: 790, baseType: !27, size: 32, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !413, file: !414, line: 792, baseType: !27, size: 32, offset: 864)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !413, file: !414, line: 793, baseType: !27, size: 32, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !413, file: !414, line: 794, baseType: !27, size: 32, offset: 928)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !413, file: !414, line: 795, baseType: !7, size: 32, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !413, file: !414, line: 797, baseType: !455, size: 2048, offset: 1024)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !414, line: 551, size: 2048, elements: !456)
!456 = !{!457, !462, !470, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487, !490, !491, !492}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !455, file: !414, line: 553, baseType: !458, size: 128)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !414, line: 411, size: 128, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !458, file: !414, line: 412, baseType: !44, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !458, file: !414, line: 413, baseType: !423, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !455, file: !414, line: 554, baseType: !463, size: 192, align: 64, offset: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !464, line: 5, size: 192, align: 64, elements: !465)
!464 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!465 = !{!466, !467, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !463, file: !464, line: 6, baseType: !44, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !463, file: !464, line: 7, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !463, file: !464, line: 8, baseType: !468, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !455, file: !414, line: 555, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !473)
!473 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !455, file: !414, line: 556, baseType: !471, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !455, file: !414, line: 558, baseType: !102, size: 128, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !414, line: 559, baseType: !7, size: 32, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !455, file: !414, line: 561, baseType: !471, size: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !455, file: !414, line: 562, baseType: !471, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !455, file: !414, line: 563, baseType: !471, size: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !455, file: !414, line: 564, baseType: !471, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !455, file: !414, line: 565, baseType: !315, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !455, file: !414, line: 566, baseType: !471, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !455, file: !414, line: 568, baseType: !471, size: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !455, file: !414, line: 571, baseType: !27, size: 32, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !455, file: !414, line: 572, baseType: !486, size: 64, offset: 1152)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !455, file: !414, line: 574, baseType: !488, size: 64, offset: 1216)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !414, line: 49, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !455, file: !414, line: 576, baseType: !488, size: 64, offset: 1280)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !455, file: !414, line: 578, baseType: !44, size: 64, offset: 1344)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !455, file: !414, line: 588, baseType: !493, size: 512, align: 512, offset: 1536)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !414, line: 497, size: 512, align: 512, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !493, file: !414, line: 498, baseType: !471, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !493, file: !414, line: 499, baseType: !471, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !493, file: !414, line: 500, baseType: !471, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !493, file: !414, line: 501, baseType: !423, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !493, file: !414, line: 502, baseType: !423, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !493, file: !414, line: 503, baseType: !44, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !493, file: !414, line: 504, baseType: !44, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !493, file: !414, line: 505, baseType: !44, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !493, file: !414, line: 506, baseType: !504, size: 64, align: 64, offset: 448)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !414, line: 445, size: 64, align: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !504, file: !414, line: 446, baseType: !7, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !504, file: !414, line: 447, baseType: !7, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !413, file: !414, line: 798, baseType: !509, size: 384, offset: 3072)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !414, line: 592, size: 384, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !509, file: !414, line: 593, baseType: !102, size: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !509, file: !414, line: 594, baseType: !44, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !509, file: !414, line: 595, baseType: !44, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !509, file: !414, line: 596, baseType: !7, size: 32, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !509, file: !414, line: 597, baseType: !31, size: 16, offset: 288)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !509, file: !414, line: 598, baseType: !31, size: 16, offset: 304)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !509, file: !414, line: 600, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !413, file: !414, line: 799, baseType: !520, size: 1792, offset: 3456)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !414, line: 610, size: 1792, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !616, !617}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !520, file: !414, line: 611, baseType: !463, size: 192, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !520, file: !414, line: 618, baseType: !471, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !520, file: !414, line: 619, baseType: !471, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !520, file: !414, line: 620, baseType: !471, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !520, file: !414, line: 621, baseType: !471, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !520, file: !414, line: 622, baseType: !471, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !520, file: !414, line: 629, baseType: !315, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !520, file: !414, line: 630, baseType: !471, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !414, line: 631, baseType: !7, size: 32, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !520, file: !414, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !520, file: !414, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !520, file: !414, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !520, file: !414, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !520, file: !414, line: 662, baseType: !536, size: 512, offset: 704)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !537)
!537 = !{!538, !546, !547, !552, !612, !613, !614, !615}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !536, file: !12, line: 119, baseType: !539, size: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !540, line: 9, size: 256, elements: !541)
!540 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !539, file: !540, line: 10, baseType: !463, size: 192, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !539, file: !540, line: 11, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !545, line: 29, baseType: !315)
!545 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !536, file: !12, line: 120, baseType: !544, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !536, file: !12, line: 121, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!11, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !536, file: !12, line: 122, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !555)
!555 = !{!556, !581, !582, !585, !595, !596, !607, !611}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !554, file: !12, line: 160, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !558, file: !12, line: 216, baseType: !323, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !558, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !558, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !558, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !558, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !558, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !558, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !558, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !558, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !558, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !558, file: !12, line: 227, baseType: !31, size: 16, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !558, file: !12, line: 228, baseType: !31, size: 16, offset: 208)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !558, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !558, file: !12, line: 235, baseType: !544, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !558, file: !12, line: 236, baseType: !551, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !558, file: !12, line: 237, baseType: !544, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !558, file: !12, line: 238, baseType: !551, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !558, file: !12, line: 239, baseType: !578, size: 4096, align: 512, offset: 512)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 4096, align: 512, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 8)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !554, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !554, file: !12, line: 162, baseType: !583, size: 32, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !42, line: 96, baseType: !27)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !554, file: !12, line: 163, baseType: !586, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !587, line: 274, baseType: !588)
!587 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !587, line: 274, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !588, file: !587, line: 274, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !587, line: 69, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !587, line: 64, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !592, file: !587, line: 65, baseType: !7, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !554, file: !12, line: 164, baseType: !551, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !554, file: !12, line: 165, baseType: !597, size: 128, offset: 256)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !540, line: 14, size: 128, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !597, file: !540, line: 15, baseType: !600, size: 128)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !464, line: 26, size: 128, elements: !601)
!601 = !{!602, !606}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !600, file: !464, line: 27, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !464, line: 12, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !603, file: !464, line: 13, baseType: !468, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !600, file: !464, line: 28, baseType: !468, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !554, file: !12, line: 166, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!544}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !554, file: !12, line: 167, baseType: !544, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !536, file: !12, line: 123, baseType: !88, size: 8, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !536, file: !12, line: 124, baseType: !88, size: 8, offset: 456)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !536, file: !12, line: 125, baseType: !88, size: 8, offset: 464)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !536, file: !12, line: 126, baseType: !88, size: 8, offset: 472)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !520, file: !414, line: 671, baseType: !536, size: 512, offset: 1216)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !520, file: !414, line: 679, baseType: !618, size: 64, offset: 1728)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !413, file: !414, line: 800, baseType: !620, size: 64, offset: 5248)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !414, line: 800, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !413, file: !414, line: 809, baseType: !624, size: 64, offset: 5312)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !414, line: 70, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !413, file: !414, line: 825, baseType: !627, size: 2048, align: 512, offset: 5632)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !414, line: 509, size: 2048, align: 512, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !627, file: !414, line: 511, baseType: !471, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !627, file: !414, line: 512, baseType: !471, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !627, file: !414, line: 513, baseType: !471, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !627, file: !414, line: 514, baseType: !471, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !627, file: !414, line: 515, baseType: !471, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !627, file: !414, line: 516, baseType: !471, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !627, file: !414, line: 518, baseType: !471, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !627, file: !414, line: 519, baseType: !471, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !627, file: !414, line: 520, baseType: !315, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !627, file: !414, line: 522, baseType: !471, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !627, file: !414, line: 523, baseType: !471, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !627, file: !414, line: 524, baseType: !315, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !627, file: !414, line: 526, baseType: !315, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !627, file: !414, line: 527, baseType: !471, size: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !627, file: !414, line: 529, baseType: !471, size: 64, offset: 896)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !627, file: !414, line: 530, baseType: !471, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !627, file: !414, line: 531, baseType: !471, size: 64, offset: 1024)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !627, file: !414, line: 532, baseType: !471, size: 64, offset: 1088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !627, file: !414, line: 533, baseType: !471, size: 64, offset: 1152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !627, file: !414, line: 535, baseType: !471, size: 64, offset: 1216)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !627, file: !414, line: 536, baseType: !471, size: 64, offset: 1280)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !627, file: !414, line: 537, baseType: !471, size: 64, offset: 1344)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !627, file: !414, line: 538, baseType: !471, size: 64, offset: 1408)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !627, file: !414, line: 539, baseType: !471, size: 64, offset: 1472)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !627, file: !414, line: 540, baseType: !471, size: 64, offset: 1536)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !627, file: !414, line: 541, baseType: !471, size: 64, offset: 1600)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !627, file: !414, line: 542, baseType: !471, size: 64, offset: 1664)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !627, file: !414, line: 543, baseType: !471, size: 64, offset: 1728)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !413, file: !414, line: 833, baseType: !7, size: 32, offset: 7680)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !413, file: !414, line: 836, baseType: !7, size: 32, offset: 7712)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !413, file: !414, line: 837, baseType: !27, size: 32, offset: 7744)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !413, file: !414, line: 838, baseType: !661, size: 64, offset: 7808)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !664, line: 19, baseType: !665)
!664 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !664, line: 19, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !665, file: !664, line: 19, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 1)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !413, file: !414, line: 839, baseType: !672, size: 64, offset: 7872)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !413, file: !414, line: 840, baseType: !663, size: 64, offset: 7936)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !413, file: !414, line: 841, baseType: !25, size: 64, offset: 8000)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !413, file: !414, line: 843, baseType: !31, size: 16, offset: 8064)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !413, file: !414, line: 845, baseType: !31, size: 16, offset: 8080)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !413, file: !414, line: 848, baseType: !27, size: 32, offset: 8096)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !413, file: !414, line: 849, baseType: !679, size: 32, offset: 8128)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !414, line: 718, size: 32, elements: !680)
!680 = !{!681, !688}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !679, file: !414, line: 724, baseType: !682, size: 32)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !414, line: 719, size: 32, elements: !683)
!683 = !{!684, !685, !686, !687}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !682, file: !414, line: 720, baseType: !88, size: 8)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !682, file: !414, line: 721, baseType: !88, size: 8, offset: 8)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !682, file: !414, line: 722, baseType: !88, size: 8, offset: 16)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !682, file: !414, line: 723, baseType: !88, size: 8, offset: 24)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !679, file: !414, line: 725, baseType: !423, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !413, file: !414, line: 850, baseType: !102, size: 128, offset: 8192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !413, file: !414, line: 851, baseType: !691, size: 64, offset: 8320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !414, line: 60, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !413, file: !414, line: 855, baseType: !44, size: 64, offset: 8384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !413, file: !414, line: 856, baseType: !88, size: 8, offset: 8448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !413, file: !414, line: 857, baseType: !88, size: 8, offset: 8456)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !413, file: !414, line: 858, baseType: !27, size: 32, offset: 8480)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !413, file: !414, line: 859, baseType: !102, size: 128, offset: 8512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !413, file: !414, line: 860, baseType: !27, size: 32, offset: 8640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !413, file: !414, line: 861, baseType: !102, size: 128, offset: 8704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !413, file: !414, line: 873, baseType: !701, size: 256, offset: 8832)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !414, line: 376, size: 256, elements: !702)
!702 = !{!703, !704, !705, !706}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !701, file: !414, line: 381, baseType: !44, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !701, file: !414, line: 384, baseType: !473, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !701, file: !414, line: 389, baseType: !473, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !701, file: !414, line: 392, baseType: !473, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !413, file: !414, line: 875, baseType: !102, size: 128, offset: 9088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !413, file: !414, line: 877, baseType: !709, size: 320, offset: 9216)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !710, line: 86, size: 320, elements: !711)
!710 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !709, file: !710, line: 87, baseType: !27, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !709, file: !710, line: 88, baseType: !102, size: 128, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !709, file: !710, line: 89, baseType: !102, size: 128, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !413, file: !414, line: 878, baseType: !463, size: 192, align: 64, offset: 9536)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !413, file: !414, line: 881, baseType: !717, size: 64, offset: 9728)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !134, line: 733, size: 10240, elements: !719)
!719 = !{!720, !1143}
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !134, line: 734, baseType: !721, size: 10240)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !134, line: 734, size: 10240, elements: !722)
!722 = !{!723, !727, !741, !745, !746, !747, !748, !749, !750, !759, !760, !761, !767, !768, !769, !770, !771, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !808, !820, !823, !848, !849, !850, !853, !1129, !1130, !1133, !1134, !1135, !1141, !1142}
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !134, line: 739, baseType: !724, size: 512, align: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !721, file: !134, line: 739, size: 512, align: 512, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !724, file: !134, line: 747, baseType: !54, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !721, file: !134, line: 750, baseType: !728, size: 128, offset: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !729, line: 218, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!730 = !{!731, !739, !740}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !729, line: 219, baseType: !732, size: 32)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !729, line: 219, size: 32, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !732, file: !729, line: 220, baseType: !64, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !732, file: !729, line: 221, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !729, line: 197, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 197, elements: !738)
!738 = !{}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !728, file: !729, line: 223, baseType: !7, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !728, file: !729, line: 224, baseType: !25, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !721, file: !134, line: 752, baseType: !742, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!44, !291, !44, !44, !44, !44}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !721, file: !134, line: 756, baseType: !44, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !721, file: !134, line: 757, baseType: !44, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !721, file: !134, line: 760, baseType: !44, size: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !721, file: !134, line: 761, baseType: !44, size: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !721, file: !134, line: 763, baseType: !44, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !721, file: !134, line: 764, baseType: !751, size: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !753, line: 299, baseType: !754)
!753 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 299, size: 64, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !754, file: !753, line: 299, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !758, line: 18, baseType: !44)
!758 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !721, file: !134, line: 773, baseType: !54, size: 32, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !721, file: !134, line: 785, baseType: !54, size: 32, offset: 1120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !721, file: !134, line: 795, baseType: !762, size: 64, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !134, line: 726, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !763, file: !134, line: 727, baseType: !471, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !763, file: !134, line: 728, baseType: !27, size: 32, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !721, file: !134, line: 801, baseType: !44, size: 64, offset: 1216)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !721, file: !134, line: 804, baseType: !309, size: 64, offset: 1280)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !721, file: !134, line: 806, baseType: !27, size: 32, offset: 1344)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !721, file: !134, line: 808, baseType: !64, size: 32, offset: 1376)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !721, file: !134, line: 823, baseType: !772, size: 320, offset: 1408)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !773, line: 48, size: 320, elements: !774)
!773 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!774 = !{!775, !776, !777, !778, !779}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !772, file: !773, line: 49, baseType: !309, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !772, file: !773, line: 55, baseType: !309, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !772, file: !773, line: 57, baseType: !325, size: 32, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !772, file: !773, line: 59, baseType: !323, size: 32, offset: 160)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !772, file: !773, line: 60, baseType: !102, size: 128, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !721, file: !134, line: 825, baseType: !102, size: 128, offset: 1728)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !721, file: !134, line: 845, baseType: !27, size: 32, offset: 1856)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !721, file: !134, line: 849, baseType: !44, size: 64, offset: 1920)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !721, file: !134, line: 850, baseType: !44, size: 64, offset: 1984)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !721, file: !134, line: 852, baseType: !44, size: 64, offset: 2048)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !721, file: !134, line: 853, baseType: !44, size: 64, offset: 2112)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !721, file: !134, line: 854, baseType: !311, size: 64, offset: 2176)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !721, file: !134, line: 855, baseType: !44, size: 64, offset: 2240)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !721, file: !134, line: 856, baseType: !44, size: 64, offset: 2304)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !721, file: !134, line: 857, baseType: !44, size: 64, offset: 2368)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !721, file: !134, line: 858, baseType: !44, size: 64, offset: 2432)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !721, file: !134, line: 865, baseType: !591, size: 32, offset: 2496)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !721, file: !134, line: 867, baseType: !64, size: 32, offset: 2528)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !721, file: !134, line: 869, baseType: !44, size: 64, offset: 2560)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !721, file: !134, line: 869, baseType: !44, size: 64, offset: 2624)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !721, file: !134, line: 869, baseType: !44, size: 64, offset: 2688)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !721, file: !134, line: 869, baseType: !44, size: 64, offset: 2752)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !721, file: !134, line: 870, baseType: !44, size: 64, offset: 2816)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !721, file: !134, line: 870, baseType: !44, size: 64, offset: 2880)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !721, file: !134, line: 870, baseType: !44, size: 64, offset: 2944)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !721, file: !134, line: 871, baseType: !44, size: 64, offset: 3008)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !721, file: !134, line: 871, baseType: !44, size: 64, offset: 3072)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !721, file: !134, line: 871, baseType: !44, size: 64, offset: 3136)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !721, file: !134, line: 871, baseType: !44, size: 64, offset: 3200)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !721, file: !134, line: 873, baseType: !805, size: 3328, offset: 3264)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3328, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 52)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !721, file: !134, line: 875, baseType: !809, size: 1280, offset: 6592)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 1280, elements: !380)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !811, line: 22, size: 320, elements: !812)
!811 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!812 = !{!813, !814, !815, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !810, file: !811, line: 23, baseType: !323, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !811, line: 24, baseType: !315, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !810, file: !811, line: 26, baseType: !102, size: 128, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !810, file: !811, line: 28, baseType: !817, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !27)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !721, file: !134, line: 877, baseType: !821, size: 64, offset: 7872)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !134, line: 877, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !721, file: !134, line: 880, baseType: !824, size: 1088, offset: 7936)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !825, line: 72, baseType: !826)
!825 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !825, line: 23, size: 1088, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !835, !836, !837, !838, !842, !843, !844}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !826, file: !825, line: 28, baseType: !471, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !826, file: !825, line: 38, baseType: !311, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !826, file: !825, line: 40, baseType: !44, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !826, file: !825, line: 43, baseType: !772, size: 320, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !826, file: !825, line: 44, baseType: !833, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !825, line: 44, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !825, line: 48, baseType: !44, size: 64, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !826, file: !825, line: 59, baseType: !318, size: 256, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !826, file: !825, line: 60, baseType: !25, size: 64, offset: 896)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !826, file: !825, line: 61, baseType: !839, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !825, line: 61, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !826, file: !825, line: 63, baseType: !54, size: 32, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !826, file: !825, line: 69, baseType: !98, size: 16, offset: 1056)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !826, file: !825, line: 70, baseType: !845, size: 16, offset: 1072)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !847)
!847 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !134, line: 882, baseType: !44, size: 64, offset: 9024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !721, file: !134, line: 885, baseType: !64, size: 32, offset: 9088)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !721, file: !134, line: 886, baseType: !851, size: 64, offset: 9152)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !134, line: 732, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !721, file: !134, line: 901, baseType: !854, size: 64, offset: 9216)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !856, line: 68, size: 4800, elements: !857)
!856 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!857 = !{!858, !880, !881, !882, !883, !884, !892, !899, !910, !911, !914, !915, !1026, !1027, !1039, !1109, !1110, !1124, !1127}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !855, file: !856, line: 69, baseType: !859, size: 576)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !856, line: 23, size: 576, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !859, file: !856, line: 24, baseType: !423, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !856, line: 25, baseType: !863, size: 512, offset: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !859, file: !856, line: 25, size: 512, elements: !864)
!864 = !{!865, !874}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !863, file: !856, line: 26, baseType: !866, size: 480)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 480, elements: !872)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !856, line: 17, size: 96, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !867, file: !856, line: 18, baseType: !423, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !867, file: !856, line: 19, baseType: !423, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !867, file: !856, line: 20, baseType: !423, size: 32, offset: 64)
!872 = !{!873}
!873 = !DISubrange(count: 5)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !856, line: 27, baseType: !875, size: 128)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !856, line: 27, size: 128, elements: !876)
!876 = !{!877, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !875, file: !856, line: 28, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !875, file: !856, line: 29, baseType: !878, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !855, file: !856, line: 70, baseType: !859, size: 576, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !855, file: !856, line: 71, baseType: !859, size: 576, offset: 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !855, file: !856, line: 72, baseType: !854, size: 64, offset: 1728)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !855, file: !856, line: 73, baseType: !27, size: 32, offset: 1792)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !855, file: !856, line: 74, baseType: !885, size: 32, offset: 1824)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !886, line: 23, baseType: !887)
!886 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !886, line: 21, size: 32, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !887, file: !886, line: 22, baseType: !890, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !42, line: 49, baseType: !7)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !855, file: !856, line: 75, baseType: !893, size: 32, offset: 1856)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !886, line: 28, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !886, line: 26, size: 32, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !894, file: !886, line: 27, baseType: !897, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !42, line: 50, baseType: !7)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !855, file: !856, line: 76, baseType: !900, size: 192, offset: 1920)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !901, line: 9, size: 192, elements: !902)
!901 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!902 = !{!903, !904, !908, !909}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !900, file: !901, line: 10, baseType: !309, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !900, file: !901, line: 11, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !901, line: 7, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !900, file: !901, line: 12, baseType: !7, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !900, file: !901, line: 13, baseType: !363, size: 32, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !856, line: 77, baseType: !44, size: 64, offset: 2112)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !855, file: !856, line: 80, baseType: !912, size: 8, offset: 2176)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !913)
!913 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !855, file: !856, line: 88, baseType: !102, size: 128, offset: 2240)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !855, file: !856, line: 89, baseType: !916, size: 64, offset: 2368)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !918, line: 195, size: 1728, elements: !919)
!918 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!919 = !{!920, !921, !924, !929, !930, !933, !934, !941, !942, !943, !944, !947, !948, !949, !950, !951, !990, !1011}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !917, file: !918, line: 196, baseType: !363, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !917, file: !918, line: 197, baseType: !922, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !918, line: 28, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !818)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !918, line: 198, baseType: !925, size: 192, offset: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !918, line: 198, size: 192, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !925, file: !918, line: 199, baseType: !102, size: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !925, file: !918, line: 200, baseType: !463, size: 192, align: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !917, file: !918, line: 205, baseType: !772, size: 320, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !917, file: !918, line: 206, baseType: !931, size: 64, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !918, line: 206, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !917, file: !918, line: 207, baseType: !25, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !918, line: 208, baseType: !935, size: 64, offset: 704)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !918, line: 208, size: 64, elements: !936)
!936 = !{!937, !940}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !935, file: !918, line: 209, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !939, line: 8, baseType: !316)
!939 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !935, file: !918, line: 210, baseType: !938, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !917, file: !918, line: 212, baseType: !938, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !917, file: !918, line: 213, baseType: !885, size: 32, offset: 832)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !917, file: !918, line: 214, baseType: !893, size: 32, offset: 864)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !917, file: !918, line: 215, baseType: !945, size: 32, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !918, line: 31, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !423)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !917, file: !918, line: 216, baseType: !31, size: 16, offset: 928)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !917, file: !918, line: 217, baseType: !31, size: 16, offset: 944)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !917, file: !918, line: 221, baseType: !847, size: 16, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !917, file: !918, line: 228, baseType: !44, size: 64, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !918, line: 245, baseType: !952, size: 320, offset: 1088)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !918, line: 245, size: 320, elements: !953)
!953 = !{!954, !981}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !952, file: !918, line: 246, baseType: !955, size: 320)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !918, line: 114, size: 320, elements: !956)
!956 = !{!957, !958, !970, !973, !980}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !955, file: !918, line: 116, baseType: !44, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !918, line: 117, baseType: !959, size: 64, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !918, line: 117, size: 64, elements: !960)
!960 = !{!961, !969}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !918, line: 118, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !918, line: 118, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !962, file: !918, line: 120, baseType: !98, size: 16)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !962, file: !918, line: 121, baseType: !966, size: 48, offset: 16)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 6)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !959, file: !918, line: 127, baseType: !44, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !955, file: !918, line: 129, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !918, line: 102, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !955, file: !918, line: 130, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !918, line: 108, size: 192, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !975, file: !918, line: 109, baseType: !255, size: 128, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !975, file: !918, line: 110, baseType: !363, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !975, file: !918, line: 111, baseType: !912, size: 8, offset: 160)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !955, file: !918, line: 131, baseType: !21, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !918, line: 247, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !918, line: 247, size: 320, elements: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !982, file: !918, line: 248, baseType: !44, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !982, file: !918, line: 249, baseType: !44, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !982, file: !918, line: 250, baseType: !971, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !982, file: !918, line: 251, baseType: !974, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !982, file: !918, line: 252, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !918, line: 260, baseType: !991, size: 256, offset: 1408)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !918, line: 260, size: 256, elements: !992)
!992 = !{!993, !999}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !991, file: !918, line: 261, baseType: !994, size: 256)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !918, line: 134, size: 256, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !994, file: !918, line: 135, baseType: !25, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !994, file: !918, line: 136, baseType: !998, size: 256)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !380)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !918, line: 262, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !918, line: 262, size: 256, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1000, file: !918, line: 264, baseType: !102, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1000, file: !918, line: 265, baseType: !1004, size: 128, offset: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1005, line: 22, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1006 = !{!1007, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1004, file: !1005, line: 23, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1005, line: 23, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1004, file: !1005, line: 24, baseType: !44, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !917, file: !918, line: 280, baseType: !1012, size: 64, offset: 1664)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !918, line: 176, size: 192, elements: !1014)
!1014 = !{!1015, !1024, !1025}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1013, file: !918, line: 177, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !918, line: 171, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!27, !916, !1020, !1022, !916}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1013, file: !918, line: 178, baseType: !916, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1013, file: !918, line: 179, baseType: !971, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !855, file: !856, line: 90, baseType: !772, size: 320, offset: 2432)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !855, file: !856, line: 97, baseType: !1028, size: 256, offset: 2752)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1029, line: 98, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1028, file: !1029, line: 99, baseType: !309, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1028, file: !1029, line: 100, baseType: !102, size: 128, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1028, file: !1029, line: 101, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1029, line: 21, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !855, file: !856, line: 99, baseType: !1040, size: 768, offset: 3008)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !17, line: 199, size: 768, elements: !1041)
!1041 = !{!1042, !1047}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1040, file: !17, line: 200, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!27, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1040, file: !17, line: 201, baseType: !1048, size: 704, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !17, line: 193, size: 704, elements: !1049)
!1049 = !{!1050, !1108}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1048, file: !17, line: 195, baseType: !1051, size: 640)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !17, line: 173, size: 640, elements: !1052)
!1052 = !{!1053, !1065, !1077, !1078, !1098, !1099, !1101, !1107}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !17, line: 174, baseType: !1054, size: 192)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !17, line: 174, size: 192, elements: !1055)
!1055 = !{!1056, !1064}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !17, line: 175, baseType: !1057, size: 192)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !17, line: 175, size: 192, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1057, file: !17, line: 176, baseType: !38, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1057, file: !17, line: 177, baseType: !27, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1057, file: !17, line: 178, baseType: !27, size: 32, offset: 96)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1057, file: !17, line: 179, baseType: !27, size: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1057, file: !17, line: 180, baseType: !27, size: 32, offset: 160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1054, file: !17, line: 182, baseType: !255, size: 128, align: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1051, file: !17, line: 184, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1068, line: 26, size: 256, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1067, file: !1068, line: 27, baseType: !7, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1067, file: !1068, line: 28, baseType: !1072, size: 192, offset: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1073, line: 43, size: 192, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !1073, line: 44, baseType: !323, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1072, file: !1073, line: 45, baseType: !102, size: 128, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1051, file: !17, line: 185, baseType: !38, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1051, file: !17, line: 186, baseType: !1079, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !17, line: 204, size: 960, elements: !1081)
!1081 = !{!1082, !1083, !1087, !1094}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1080, file: !17, line: 205, baseType: !1040, size: 768)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1080, file: !17, line: 206, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1046, !1079}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1080, file: !17, line: 207, baseType: !1088, size: 64, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1080, file: !17, line: 209, baseType: !1095, size: 64, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!27, !1091, !38}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1051, file: !17, line: 187, baseType: !1046, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1051, file: !17, line: 188, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !17, line: 189, baseType: !1102, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !17, line: 157, size: 256, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1103, file: !17, line: 158, baseType: !463, size: 192, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1103, file: !17, line: 159, baseType: !1091, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1051, file: !17, line: 190, baseType: !371, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1048, file: !17, line: 196, baseType: !603, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !855, file: !856, line: 100, baseType: !1091, size: 64, offset: 3776)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !855, file: !856, line: 102, baseType: !1111, size: 64, offset: 3840)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !856, line: 107, size: 1152, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1122}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1112, file: !856, line: 108, baseType: !375, size: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1112, file: !856, line: 109, baseType: !854, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1112, file: !856, line: 110, baseType: !885, size: 32, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1112, file: !856, line: 111, baseType: !54, size: 32, offset: 224)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1112, file: !856, line: 112, baseType: !1119, size: 640, offset: 256)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 640, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 10)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1112, file: !856, line: 113, baseType: !1123, size: 256, offset: 896)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !380)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !855, file: !856, line: 103, baseType: !1125, size: 640, offset: 3904)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 640, elements: !1120)
!1126 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !855, file: !856, line: 104, baseType: !1128, size: 256, offset: 4544)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 256, elements: !380)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !721, file: !134, line: 904, baseType: !291, size: 64, offset: 9280)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !721, file: !134, line: 906, baseType: !1131, size: 64, offset: 9344)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !134, line: 906, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !721, file: !134, line: 930, baseType: !54, size: 32, offset: 9408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !721, file: !134, line: 933, baseType: !54, size: 32, offset: 9440)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !721, file: !134, line: 935, baseType: !1136, size: 64, offset: 9472)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1136, file: !150, line: 104, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !721, file: !134, line: 940, baseType: !309, size: 64, offset: 9536)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !721, file: !134, line: 942, baseType: !1028, size: 256, offset: 9600)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !718, file: !134, line: 986, baseType: !1144, offset: 10240)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: -1)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !413, file: !414, line: 882, baseType: !717, size: 64, offset: 9792)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !413, file: !414, line: 884, baseType: !27, size: 32, offset: 9856)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !413, file: !414, line: 885, baseType: !27, size: 32, offset: 9888)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !413, file: !414, line: 886, baseType: !27, size: 32, offset: 9920)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !413, file: !414, line: 888, baseType: !27, size: 32, offset: 9952)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !413, file: !414, line: 890, baseType: !44, size: 64, offset: 9984)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !413, file: !414, line: 893, baseType: !7, size: 32, offset: 10048)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !413, file: !414, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !413, file: !414, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !413, file: !414, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !413, file: !414, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !413, file: !414, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !413, file: !414, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !413, file: !414, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !413, file: !414, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !413, file: !414, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !413, file: !414, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !413, file: !414, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !413, file: !414, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !413, file: !414, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !413, file: !414, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !413, file: !414, line: 969, baseType: !44, size: 64, offset: 10176)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !413, file: !414, line: 971, baseType: !1170, size: 448, offset: 10240)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !113, line: 25, size: 448, elements: !1171)
!1171 = !{!1172, !1173, !1178}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1170, file: !113, line: 26, baseType: !44, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1170, file: !113, line: 27, baseType: !1174, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1126, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !113, line: 28, baseType: !1179, size: 320, offset: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !113, line: 28, size: 320, elements: !1180)
!1180 = !{!1181, !1191, !1216}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1179, file: !113, line: 37, baseType: !1182, size: 320)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !113, line: 30, size: 320, elements: !1183)
!1183 = !{!1184, !1186, !1187, !1188, !1189, !1190}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1182, file: !113, line: 31, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1182, file: !113, line: 32, baseType: !423, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !113, line: 33, baseType: !423, size: 32, offset: 96)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1182, file: !113, line: 34, baseType: !423, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1182, file: !113, line: 35, baseType: !471, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1182, file: !113, line: 36, baseType: !1185, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1179, file: !113, line: 47, baseType: !1192, size: 192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !113, line: 39, size: 192, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1215}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1192, file: !113, line: 40, baseType: !583, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1192, file: !113, line: 41, baseType: !112, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !113, line: 42, baseType: !1197, size: 64, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !113, line: 42, size: 64, elements: !1198)
!1198 = !{!1199, !1207}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1197, file: !113, line: 43, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1202, line: 7, size: 128, elements: !1203)
!1202 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1203 = !{!1204, !1206}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1201, file: !1202, line: 8, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !42, line: 93, baseType: !48)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1201, file: !1202, line: 9, baseType: !48, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1197, file: !113, line: 44, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1210, line: 7, size: 64, elements: !1211)
!1210 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1211 = !{!1212, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1209, file: !1210, line: 8, baseType: !1213, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1210, line: 5, baseType: !818)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1209, file: !1210, line: 9, baseType: !818, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1192, file: !113, line: 46, baseType: !471, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1179, file: !113, line: 55, baseType: !1217, size: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !113, line: 49, size: 256, elements: !1218)
!1218 = !{!1219, !1222, !1223, !1224, !1225}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1217, file: !113, line: 50, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !113, line: 14, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1217, file: !113, line: 51, baseType: !27, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1217, file: !113, line: 52, baseType: !27, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1217, file: !113, line: 53, baseType: !44, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1217, file: !113, line: 54, baseType: !44, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !413, file: !414, line: 973, baseType: !1227, size: 32, offset: 10688)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !42, line: 28, baseType: !27)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !413, file: !414, line: 974, baseType: !1227, size: 32, offset: 10720)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !413, file: !414, line: 978, baseType: !44, size: 64, offset: 10752)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !413, file: !414, line: 987, baseType: !412, size: 64, offset: 10816)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !413, file: !414, line: 990, baseType: !412, size: 64, offset: 10880)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !413, file: !414, line: 995, baseType: !102, size: 128, offset: 10944)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !413, file: !414, line: 996, baseType: !102, size: 128, offset: 11072)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !413, file: !414, line: 997, baseType: !412, size: 64, offset: 11200)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !413, file: !414, line: 1005, baseType: !102, size: 128, offset: 11264)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !413, file: !414, line: 1006, baseType: !102, size: 128, offset: 11392)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !413, file: !414, line: 1009, baseType: !359, size: 64, offset: 11520)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !413, file: !414, line: 1010, baseType: !1240, size: 512, offset: 11584)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 512, elements: !380)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !413, file: !414, line: 1011, baseType: !102, size: 128, offset: 12096)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !413, file: !414, line: 1012, baseType: !102, size: 128, offset: 12224)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !413, file: !414, line: 1014, baseType: !1066, size: 64, offset: 12352)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !413, file: !414, line: 1017, baseType: !1245, size: 64, offset: 12416)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !413, file: !414, line: 1020, baseType: !1245, size: 64, offset: 12480)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !413, file: !414, line: 1023, baseType: !25, size: 64, offset: 12544)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !413, file: !414, line: 1025, baseType: !471, size: 64, offset: 12608)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !413, file: !414, line: 1026, baseType: !471, size: 64, offset: 12672)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !413, file: !414, line: 1031, baseType: !471, size: 64, offset: 12736)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !413, file: !414, line: 1032, baseType: !1252, size: 192, offset: 12800)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !414, line: 324, size: 192, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1252, file: !414, line: 326, baseType: !471, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1252, file: !414, line: 327, baseType: !471, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1252, file: !414, line: 328, baseType: !323, size: 32, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !413, file: !414, line: 1041, baseType: !44, size: 64, offset: 12992)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !413, file: !414, line: 1042, baseType: !44, size: 64, offset: 13056)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !413, file: !414, line: 1045, baseType: !471, size: 64, offset: 13120)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !413, file: !414, line: 1048, baseType: !471, size: 64, offset: 13184)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !413, file: !414, line: 1051, baseType: !44, size: 64, offset: 13248)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !413, file: !414, line: 1052, baseType: !44, size: 64, offset: 13312)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !413, file: !414, line: 1055, baseType: !1264, size: 640, offset: 13376)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1265, line: 132, size: 640, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1266 = !{!1267, !1273, !1274}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1264, file: !1265, line: 133, baseType: !1268, size: 576)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1269, size: 576, elements: !355)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1265, line: 117, size: 192, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1269, file: !1265, line: 118, baseType: !471, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1269, file: !1265, line: 119, baseType: !597, size: 128, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1264, file: !1265, line: 134, baseType: !7, size: 32, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1264, file: !1265, line: 135, baseType: !7, size: 32, offset: 608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !413, file: !414, line: 1058, baseType: !1276, size: 448, offset: 14016)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1265, line: 144, size: 448, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1276, file: !1265, line: 145, baseType: !255, size: 128, align: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1276, file: !1265, line: 146, baseType: !318, size: 256, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1276, file: !1265, line: 147, baseType: !7, size: 32, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !413, file: !414, line: 1064, baseType: !1282, size: 64, offset: 14464)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1285, line: 110, size: 1472, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1336, !1337, !1338, !1346}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1284, file: !1285, line: 111, baseType: !309, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1284, file: !1285, line: 112, baseType: !885, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1284, file: !1285, line: 113, baseType: !893, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1284, file: !1285, line: 114, baseType: !885, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1284, file: !1285, line: 115, baseType: !893, size: 32, offset: 160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1284, file: !1285, line: 116, baseType: !885, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1284, file: !1285, line: 117, baseType: !893, size: 32, offset: 224)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1284, file: !1285, line: 118, baseType: !885, size: 32, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1284, file: !1285, line: 119, baseType: !893, size: 32, offset: 288)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1284, file: !1285, line: 120, baseType: !7, size: 32, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1284, file: !1285, line: 121, baseType: !1298, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1299, line: 24, baseType: !1300)
!1299 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1299, line: 24, size: 64, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1300, file: !1299, line: 24, baseType: !471, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1284, file: !1285, line: 122, baseType: !1298, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1284, file: !1285, line: 123, baseType: !1298, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1284, file: !1285, line: 124, baseType: !1298, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1284, file: !1285, line: 125, baseType: !1298, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1284, file: !1285, line: 127, baseType: !92, size: 8, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1284, file: !1285, line: 129, baseType: !916, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1284, file: !1285, line: 130, baseType: !916, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1284, file: !1285, line: 131, baseType: !916, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1284, file: !1285, line: 132, baseType: !916, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1284, file: !1285, line: 135, baseType: !25, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1284, file: !1285, line: 137, baseType: !1314, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1316, line: 14, size: 1088, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1315, file: !1316, line: 15, baseType: !363, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1315, file: !1316, line: 17, baseType: !810, size: 320, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1315, file: !1316, line: 19, baseType: !44, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1315, file: !1316, line: 20, baseType: !309, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1315, file: !1316, line: 23, baseType: !375, size: 128, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1315, file: !1316, line: 24, baseType: !885, size: 32, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1315, file: !1316, line: 29, baseType: !309, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1315, file: !1316, line: 36, baseType: !1326, size: 320, offset: 768)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1327, line: 15, size: 320, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !1327, line: 16, baseType: !323, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1326, file: !1327, line: 18, baseType: !27, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1326, file: !1327, line: 19, baseType: !27, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1326, file: !1327, line: 20, baseType: !27, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1326, file: !1327, line: 21, baseType: !27, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1326, file: !1327, line: 22, baseType: !44, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !1327, line: 23, baseType: !44, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1284, file: !1285, line: 138, baseType: !854, size: 64, offset: 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1284, file: !1285, line: 139, baseType: !1111, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1284, file: !1285, line: 140, baseType: !1339, size: 64, offset: 1280)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1285, line: 25, size: 64, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1340, file: !1285, line: 26, baseType: !54, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1340, file: !1285, line: 27, baseType: !27, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1340, file: !1285, line: 28, baseType: !1345, offset: 64)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, elements: !1145)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1285, line: 142, baseType: !1347, size: 128, offset: 1344)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !1285, line: 142, size: 128, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1347, file: !1285, line: 143, baseType: !27, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1347, file: !1285, line: 144, baseType: !255, size: 128, align: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !413, file: !414, line: 1067, baseType: !1282, size: 64, offset: 14528)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !413, file: !414, line: 1070, baseType: !1282, size: 64, offset: 14592)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !413, file: !414, line: 1074, baseType: !916, size: 64, offset: 14656)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !413, file: !414, line: 1084, baseType: !1355, size: 128, offset: 14720)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 16)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !413, file: !414, line: 1086, baseType: !1359, size: 64, offset: 14848)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !414, line: 55, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !413, file: !414, line: 1089, baseType: !1362, size: 64, offset: 14912)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1363, line: 12, size: 64, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1362, file: !1363, line: 13, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1363, line: 8, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !413, file: !414, line: 1090, baseType: !1369, size: 128, offset: 14976)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1370, line: 13, size: 128, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1369, file: !1370, line: 14, baseType: !102, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !413, file: !414, line: 1097, baseType: !1374, size: 64, offset: 15104)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !414, line: 50, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !413, file: !414, line: 1100, baseType: !1377, size: 64, offset: 15168)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !414, line: 1100, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !413, file: !414, line: 1103, baseType: !1380, size: 64, offset: 15232)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !414, line: 53, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !413, file: !414, line: 1107, baseType: !1383, size: 64, offset: 15296)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1385, line: 31, size: 576, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1386 = !{!1387, !1388, !1391, !1394, !1397, !1398, !1401, !1404, !1405}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1384, file: !1385, line: 32, baseType: !363, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1384, file: !1385, line: 33, baseType: !1389, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1385, line: 9, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1384, file: !1385, line: 34, baseType: !1392, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1385, line: 10, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1384, file: !1385, line: 35, baseType: !1395, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1385, line: 8, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1384, file: !1385, line: 36, baseType: !391, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1384, file: !1385, line: 37, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !918, line: 34, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1384, file: !1385, line: 38, baseType: !1402, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1385, line: 38, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1384, file: !1385, line: 39, baseType: !1402, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1384, file: !1385, line: 40, baseType: !1406, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1385, line: 12, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !413, file: !414, line: 1110, baseType: !1409, size: 64, offset: 15360)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1411, line: 93, size: 8768, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1463, !1472, !1473, !1475, !1476, !1477, !1480, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1522, !1523, !1530, !1540, !1543, !1544, !1547, !1548, !1549, !1550, !1551, !1552}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1410, file: !1411, line: 94, baseType: !363, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1410, file: !1411, line: 95, baseType: !54, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1410, file: !1411, line: 96, baseType: !27, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1410, file: !1411, line: 97, baseType: !27, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1410, file: !1411, line: 98, baseType: !102, size: 128, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1410, file: !1411, line: 100, baseType: !59, size: 192, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1410, file: !1411, line: 103, baseType: !412, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1410, file: !1411, line: 106, baseType: !1421, size: 192, offset: 512)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1422, line: 32, size: 192, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1421, file: !1422, line: 33, baseType: !102, size: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1421, file: !1422, line: 34, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1427, line: 25, baseType: !1428)
!1427 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1427, line: 23, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1428, file: !1427, line: 24, baseType: !668, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1410, file: !1411, line: 109, baseType: !371, size: 64, offset: 704)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1410, file: !1411, line: 112, baseType: !27, size: 32, offset: 768)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1410, file: !1411, line: 114, baseType: !27, size: 32, offset: 800)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1410, file: !1411, line: 115, baseType: !412, size: 64, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1410, file: !1411, line: 118, baseType: !27, size: 32, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !1411, line: 119, baseType: !7, size: 32, offset: 928)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1410, file: !1411, line: 121, baseType: !1438, size: 64, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1411, line: 80, size: 448, elements: !1440)
!1440 = !{!1441, !1442, !1448}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1439, file: !1411, line: 81, baseType: !54, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1439, file: !1411, line: 82, baseType: !1443, size: 128, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1411, line: 75, size: 128, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1443, file: !1411, line: 76, baseType: !412, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1443, file: !1411, line: 77, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1439, file: !1411, line: 83, baseType: !1067, size: 256, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1410, file: !1411, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1410, file: !1411, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1410, file: !1411, line: 138, baseType: !7, size: 32, offset: 1056)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1410, file: !1411, line: 139, baseType: !102, size: 128, offset: 1088)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1410, file: !1411, line: 142, baseType: !536, size: 512, offset: 1216)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1410, file: !1411, line: 143, baseType: !544, size: 64, offset: 1728)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1410, file: !1411, line: 150, baseType: !1456, size: 256, offset: 1792)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1457, size: 256, elements: !1461)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1411, line: 38, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1457, file: !1411, line: 39, baseType: !471, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1457, file: !1411, line: 40, baseType: !471, size: 64, offset: 64)
!1461 = !{!1462}
!1462 = !DISubrange(count: 2)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1410, file: !1411, line: 156, baseType: !1464, size: 192, offset: 2048)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1411, line: 66, size: 192, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1464, file: !1411, line: 67, baseType: !1467, size: 192)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1411, line: 47, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1467, file: !1411, line: 48, baseType: !311, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1467, file: !1411, line: 49, baseType: !311, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1467, file: !1411, line: 50, baseType: !311, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1410, file: !1411, line: 160, baseType: !1264, size: 640, offset: 2240)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1410, file: !1411, line: 163, baseType: !1474, size: 256, offset: 2880)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !380)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1410, file: !1411, line: 169, baseType: !359, size: 64, offset: 3136)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1410, file: !1411, line: 172, baseType: !27, size: 32, offset: 3200)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1410, file: !1411, line: 174, baseType: !1478, size: 64, offset: 3264)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1411, line: 174, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1410, file: !1411, line: 185, baseType: !1481, size: 64, offset: 3328)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !587, line: 860, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 853, size: 64, elements: !1483)
!1483 = !{!1484, !1489}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1482, file: !587, line: 858, baseType: !1485, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !587, line: 275, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !587, line: 275, size: 32, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1486, file: !587, line: 275, baseType: !591, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !587, line: 859, baseType: !64, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1410, file: !1411, line: 186, baseType: !471, size: 64, offset: 3392)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1410, file: !1411, line: 186, baseType: !471, size: 64, offset: 3456)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1410, file: !1411, line: 186, baseType: !471, size: 64, offset: 3520)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1410, file: !1411, line: 186, baseType: !471, size: 64, offset: 3584)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1410, file: !1411, line: 187, baseType: !471, size: 64, offset: 3648)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1410, file: !1411, line: 188, baseType: !471, size: 64, offset: 3712)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1410, file: !1411, line: 189, baseType: !1252, size: 192, offset: 3776)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1410, file: !1411, line: 190, baseType: !44, size: 64, offset: 3968)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1410, file: !1411, line: 190, baseType: !44, size: 64, offset: 4032)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1410, file: !1411, line: 190, baseType: !44, size: 64, offset: 4096)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1410, file: !1411, line: 190, baseType: !44, size: 64, offset: 4160)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1410, file: !1411, line: 191, baseType: !44, size: 64, offset: 4224)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1410, file: !1411, line: 191, baseType: !44, size: 64, offset: 4288)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1410, file: !1411, line: 191, baseType: !44, size: 64, offset: 4352)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1410, file: !1411, line: 191, baseType: !44, size: 64, offset: 4416)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1410, file: !1411, line: 192, baseType: !44, size: 64, offset: 4480)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1410, file: !1411, line: 192, baseType: !44, size: 64, offset: 4544)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1410, file: !1411, line: 192, baseType: !44, size: 64, offset: 4608)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1410, file: !1411, line: 192, baseType: !44, size: 64, offset: 4672)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1410, file: !1411, line: 193, baseType: !44, size: 64, offset: 4736)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1410, file: !1411, line: 193, baseType: !44, size: 64, offset: 4800)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1410, file: !1411, line: 194, baseType: !1512, size: 448, offset: 4864)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1513, line: 12, size: 448, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1512, file: !1513, line: 15, baseType: !471, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1512, file: !1513, line: 17, baseType: !471, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1512, file: !1513, line: 19, baseType: !471, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1512, file: !1513, line: 21, baseType: !471, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1512, file: !1513, line: 29, baseType: !471, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1512, file: !1513, line: 35, baseType: !471, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1512, file: !1513, line: 44, baseType: !471, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1410, file: !1411, line: 202, baseType: !473, size: 64, offset: 5312)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1410, file: !1411, line: 213, baseType: !1524, size: 2048, offset: 5376)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1525, size: 2048, elements: !1356)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1526, line: 43, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1525, file: !1526, line: 44, baseType: !43, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1525, file: !1526, line: 45, baseType: !43, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1410, file: !1411, line: 216, baseType: !1531, size: 448, offset: 7424)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1411, line: 30, size: 448, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1531, file: !1411, line: 31, baseType: !27, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1531, file: !1411, line: 32, baseType: !1126, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1531, file: !1411, line: 33, baseType: !44, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1531, file: !1411, line: 34, baseType: !471, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1531, file: !1411, line: 34, baseType: !471, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1531, file: !1411, line: 35, baseType: !44, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1531, file: !1411, line: 35, baseType: !44, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1410, file: !1411, line: 219, baseType: !1541, size: 64, offset: 7872)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1411, line: 219, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1410, file: !1411, line: 222, baseType: !7, size: 32, offset: 7936)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1410, file: !1411, line: 223, baseType: !1545, size: 64, offset: 8000)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1411, line: 223, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1410, file: !1411, line: 230, baseType: !912, size: 8, offset: 8064)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1410, file: !1411, line: 231, baseType: !847, size: 16, offset: 8080)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1410, file: !1411, line: 232, baseType: !847, size: 16, offset: 8096)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1410, file: !1411, line: 234, baseType: !717, size: 64, offset: 8128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1410, file: !1411, line: 237, baseType: !318, size: 256, offset: 8192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1410, file: !1411, line: 243, baseType: !772, size: 320, offset: 8448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !413, file: !414, line: 1111, baseType: !1554, size: 64, offset: 15424)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1411, line: 20, size: 16640, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1555, file: !1411, line: 21, baseType: !64, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1555, file: !1411, line: 22, baseType: !363, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1555, file: !1411, line: 23, baseType: !59, size: 192, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1555, file: !1411, line: 24, baseType: !1561, size: 16384, offset: 256)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 16384, elements: !1582)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1422, line: 51, size: 256, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1562, file: !1422, line: 52, baseType: !1565, size: 256)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1422, line: 37, size: 256, elements: !1566)
!1566 = !{!1567, !1574, !1575, !1581}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1565, file: !1422, line: 39, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1569, line: 83, baseType: !1570)
!1569 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1569, line: 82, baseType: !1572)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !27}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1565, file: !1422, line: 40, baseType: !44, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1565, file: !1422, line: 46, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1569, line: 86, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1569, line: 85, baseType: !1579)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1565, file: !1422, line: 48, baseType: !1426, size: 64, offset: 192)
!1582 = !{!1583}
!1583 = !DISubrange(count: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !413, file: !414, line: 1112, baseType: !1426, size: 64, offset: 15488)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !413, file: !414, line: 1113, baseType: !1426, size: 64, offset: 15552)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !413, file: !414, line: 1115, baseType: !1426, size: 64, offset: 15616)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !413, file: !414, line: 1116, baseType: !1421, size: 192, offset: 15680)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !413, file: !414, line: 1117, baseType: !44, size: 64, offset: 15872)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !413, file: !414, line: 1118, baseType: !40, size: 64, offset: 15936)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !413, file: !414, line: 1119, baseType: !7, size: 32, offset: 16000)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !413, file: !414, line: 1121, baseType: !258, size: 64, offset: 16064)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !413, file: !414, line: 1125, baseType: !1593, size: 64, offset: 16128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !414, line: 43, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !413, file: !414, line: 1127, baseType: !885, size: 32, offset: 16192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !413, file: !414, line: 1128, baseType: !7, size: 32, offset: 16224)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !413, file: !414, line: 1130, baseType: !1598, size: 128, offset: 16256)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1599, line: 37, size: 128, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1600 = !{!1601, !1602, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1598, file: !1599, line: 38, baseType: !27, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1598, file: !1599, line: 39, baseType: !54, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1598, file: !1599, line: 40, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1599, line: 24, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !413, file: !414, line: 1131, baseType: !1607, size: 256, offset: 16384)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1608, line: 12, size: 256, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1609 = !{!1610, !1611, !1612, !1613}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1607, file: !1608, line: 13, baseType: !989, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1607, file: !1608, line: 14, baseType: !44, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1607, file: !1608, line: 15, baseType: !44, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1607, file: !1608, line: 16, baseType: !912, size: 8, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !413, file: !414, line: 1134, baseType: !471, size: 64, offset: 16640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !413, file: !414, line: 1135, baseType: !471, size: 64, offset: 16704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !413, file: !414, line: 1138, baseType: !64, size: 32, offset: 16768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !413, file: !414, line: 1141, baseType: !323, size: 32, offset: 16800)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !413, file: !414, line: 1143, baseType: !1619, size: 64, offset: 16832)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !414, line: 735, size: 64, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1619, file: !414, line: 736, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !413, file: !414, line: 1147, baseType: !600, size: 128, offset: 16896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !413, file: !414, line: 1149, baseType: !412, size: 64, offset: 17024)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !413, file: !414, line: 1151, baseType: !1626, size: 64, offset: 17088)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !414, line: 1151, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !413, file: !414, line: 1188, baseType: !25, size: 64, offset: 17152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !413, file: !414, line: 1191, baseType: !1630, size: 64, offset: 17216)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !414, line: 44, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !413, file: !414, line: 1194, baseType: !1633, size: 64, offset: 17280)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !414, line: 45, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !413, file: !414, line: 1197, baseType: !1636, size: 64, offset: 17344)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !414, line: 61, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !413, file: !414, line: 1199, baseType: !1639, size: 64, offset: 17408)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1641, line: 99, size: 128, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1640, file: !1641, line: 100, baseType: !309, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1640, file: !1641, line: 101, baseType: !54, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1640, file: !1641, line: 103, baseType: !31, size: 16, offset: 96)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !413, file: !414, line: 1202, baseType: !1647, size: 64, offset: 17472)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !414, line: 48, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !413, file: !414, line: 1205, baseType: !44, size: 64, offset: 17536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !413, file: !414, line: 1206, baseType: !1651, size: 64, offset: 17600)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1422, line: 14, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1422, line: 12, size: 384, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1422, line: 13, baseType: !1656, size: 384)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1422, line: 13, size: 384, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1656, file: !1422, line: 13, baseType: !27, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1656, file: !1422, line: 13, baseType: !27, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1656, file: !1422, line: 13, baseType: !27, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1656, file: !1422, line: 13, baseType: !1662, size: 256, offset: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1663, line: 37, size: 256, elements: !1664)
!1663 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1664 = !{!1665, !1670, !1683, !1689, !1699, !1726, !1731}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1662, file: !1663, line: 42, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 39, size: 64, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1666, file: !1663, line: 40, baseType: !1228, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1666, file: !1663, line: 41, baseType: !891, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1662, file: !1663, line: 50, baseType: !1671, size: 192)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 45, size: 192, elements: !1672)
!1672 = !{!1673, !1675, !1676, !1682}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1671, file: !1663, line: 46, baseType: !1674, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !42, line: 95, baseType: !27)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1671, file: !1663, line: 47, baseType: !27, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1671, file: !1663, line: 48, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1663, line: 11, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1663, line: 8, size: 64, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1678, file: !1663, line: 9, baseType: !27, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1678, file: !1663, line: 10, baseType: !25, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1671, file: !1663, line: 49, baseType: !27, size: 32, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1662, file: !1663, line: 57, baseType: !1684, size: 128)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 53, size: 128, elements: !1685)
!1685 = !{!1686, !1687, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1684, file: !1663, line: 54, baseType: !1228, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1684, file: !1663, line: 55, baseType: !891, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1684, file: !1663, line: 56, baseType: !1677, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1662, file: !1663, line: 66, baseType: !1690, size: 256)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 60, size: 256, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1690, file: !1663, line: 61, baseType: !1228, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1690, file: !1663, line: 62, baseType: !891, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1690, file: !1663, line: 63, baseType: !27, size: 32, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1690, file: !1663, line: 64, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !42, line: 94, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !42, line: 15, baseType: !1126)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1690, file: !1663, line: 65, baseType: !1696, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1662, file: !1663, line: 105, baseType: !1700, size: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 69, size: 256, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1700, file: !1663, line: 70, baseType: !25, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1663, line: 79, baseType: !1704, size: 192, offset: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !1663, line: 79, size: 192, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1715, !1720}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1704, file: !1663, line: 81, baseType: !27, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1704, file: !1663, line: 86, baseType: !847, size: 16)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1704, file: !1663, line: 92, baseType: !1709, size: 192)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1663, line: 88, size: 192, elements: !1710)
!1710 = !{!1711, !1713, !1714}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1709, file: !1663, line: 89, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !579)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1709, file: !1663, line: 90, baseType: !25, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1709, file: !1663, line: 91, baseType: !25, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1704, file: !1663, line: 97, baseType: !1716, size: 96)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1663, line: 94, size: 96, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1716, file: !1663, line: 95, baseType: !1712, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1716, file: !1663, line: 96, baseType: !424, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1704, file: !1663, line: 103, baseType: !1721, size: 128)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1663, line: 99, size: 128, elements: !1722)
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1721, file: !1663, line: 100, baseType: !44, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1721, file: !1663, line: 101, baseType: !424, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1721, file: !1663, line: 102, baseType: !424, size: 32, offset: 96)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1662, file: !1663, line: 111, baseType: !1727, size: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 108, size: 128, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1727, file: !1663, line: 109, baseType: !1126, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1727, file: !1663, line: 110, baseType: !27, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1662, file: !1663, line: 118, baseType: !1732, size: 128)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1663, line: 114, size: 128, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1732, file: !1663, line: 115, baseType: !25, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1732, file: !1663, line: 116, baseType: !27, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1732, file: !1663, line: 117, baseType: !7, size: 32, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !413, file: !414, line: 1208, baseType: !1512, size: 448, offset: 17664)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !413, file: !414, line: 1215, baseType: !471, size: 64, offset: 18112)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !413, file: !414, line: 1217, baseType: !471, size: 64, offset: 18176)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !413, file: !414, line: 1219, baseType: !471, size: 64, offset: 18240)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !413, file: !414, line: 1223, baseType: !1742, size: 64, offset: 18304)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1743, line: 99, baseType: !1744)
!1743 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1743, line: 99, size: 64, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1744, file: !1743, line: 99, baseType: !668, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !413, file: !414, line: 1225, baseType: !1485, size: 32, offset: 18368)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !413, file: !414, line: 1226, baseType: !27, size: 32, offset: 18400)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !413, file: !414, line: 1227, baseType: !27, size: 32, offset: 18432)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !413, file: !414, line: 1231, baseType: !1751, size: 64, offset: 18496)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !414, line: 1231, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !413, file: !414, line: 1233, baseType: !102, size: 128, offset: 18560)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !413, file: !414, line: 1240, baseType: !1755, size: 64, offset: 18688)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !414, line: 62, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !413, file: !414, line: 1242, baseType: !1758, size: 64, offset: 18752)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !414, line: 1242, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !413, file: !414, line: 1244, baseType: !102, size: 128, offset: 18816)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !413, file: !414, line: 1245, baseType: !1762, size: 64, offset: 18944)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !414, line: 51, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !413, file: !414, line: 1246, baseType: !318, size: 256, offset: 19008)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !413, file: !414, line: 1247, baseType: !7, size: 32, offset: 19264)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !413, file: !414, line: 1250, baseType: !1767, size: 64, offset: 19328)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !414, line: 57, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !413, file: !414, line: 1251, baseType: !318, size: 256, offset: 19392)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !413, file: !414, line: 1252, baseType: !102, size: 128, offset: 19648)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !413, file: !414, line: 1259, baseType: !1772, size: 64, offset: 19776)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !134, line: 717, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !413, file: !414, line: 1260, baseType: !847, size: 16, offset: 19840)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !413, file: !414, line: 1261, baseType: !847, size: 16, offset: 19856)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !413, file: !414, line: 1314, baseType: !1777, size: 64, offset: 19904)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1779, line: 62, size: 256, align: 256, elements: !1780)
!1779 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1778, file: !1779, line: 75, baseType: !424, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1778, file: !1779, line: 90, baseType: !424, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1778, file: !1779, line: 112, baseType: !472, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1778, file: !1779, line: 132, baseType: !424, size: 32, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1778, file: !1779, line: 140, baseType: !424, size: 32, offset: 160)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1778, file: !1779, line: 149, baseType: !424, size: 32, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1778, file: !1779, line: 154, baseType: !1788, offset: 224)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !1145)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !413, file: !414, line: 1315, baseType: !423, size: 32, offset: 19968)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !413, file: !414, line: 1316, baseType: !423, size: 32, offset: 20000)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !413, file: !414, line: 1321, baseType: !44, size: 64, offset: 20032)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !413, file: !414, line: 1325, baseType: !27, size: 32, offset: 20096)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !413, file: !414, line: 1326, baseType: !27, size: 32, offset: 20128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !413, file: !414, line: 1327, baseType: !27, size: 32, offset: 20160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !413, file: !414, line: 1328, baseType: !27, size: 32, offset: 20192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !413, file: !414, line: 1329, baseType: !255, size: 128, align: 64, offset: 20224)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !413, file: !414, line: 1332, baseType: !1798, size: 128, offset: 20352)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1799, line: 51, size: 128, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1800 = !{!1801, !1806, !1807}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1798, file: !1799, line: 60, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1803, line: 7, size: 64, elements: !1804)
!1803 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1802, file: !1803, line: 12, baseType: !665, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1798, file: !1799, line: 63, baseType: !912, size: 8, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1798, file: !1799, line: 70, baseType: !912, size: 8, offset: 72)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !413, file: !414, line: 1335, baseType: !1809, size: 64, offset: 20480)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !414, line: 59, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !413, file: !414, line: 1337, baseType: !1812, size: 128, offset: 20544)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1799, line: 39, size: 128, elements: !1813)
!1813 = !{!1814, !3230, !3231}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1812, file: !1799, line: 40, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !134, line: 74, size: 512, align: 128, elements: !1817)
!1817 = !{!1818, !1819, !3224, !3229}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1816, file: !134, line: 75, baseType: !44, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !134, line: 83, baseType: !1820, size: 320, offset: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1816, file: !134, line: 83, size: 320, elements: !1821)
!1821 = !{!1822, !2975, !2989, !2993, !3223}
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !134, line: 84, baseType: !1823, size: 320)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !134, line: 84, size: 320, elements: !1824)
!1824 = !{!1825, !1836, !2969, !2974}
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !134, line: 90, baseType: !1826, size: 128)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !134, line: 90, size: 128, elements: !1827)
!1827 = !{!1828, !1829, !1834, !1835}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1826, file: !134, line: 91, baseType: !102, size: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !134, line: 94, baseType: !1830, size: 128)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1826, file: !134, line: 94, size: 128, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1830, file: !134, line: 96, baseType: !25, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1830, file: !134, line: 98, baseType: !7, size: 32, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1826, file: !134, line: 102, baseType: !102, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1826, file: !134, line: 103, baseType: !102, size: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1823, file: !134, line: 106, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !6, line: 472, size: 1536, align: 64, elements: !1839)
!1839 = !{!1840, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2963, !2964, !2965, !2966, !2967, !2968}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1838, file: !6, line: 473, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !6, line: 641, size: 4800, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1853, !1854, !2711, !2712, !2713, !2714, !2715, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2755, !2758, !2759, !2760, !2769, !2770, !2771, !2772}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1842, file: !6, line: 642, baseType: !29, size: 16)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1842, file: !6, line: 643, baseType: !31, size: 16, offset: 16)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1842, file: !6, line: 644, baseType: !885, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1842, file: !6, line: 645, baseType: !102, size: 128, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1842, file: !6, line: 646, baseType: !893, size: 32, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1842, file: !6, line: 647, baseType: !7, size: 32, offset: 224)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1842, file: !6, line: 650, baseType: !1851, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !6, line: 607, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1842, file: !6, line: 651, baseType: !1851, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1842, file: !6, line: 654, baseType: !1855, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !6, line: 1966, size: 2048, align: 512, elements: !1858)
!1858 = !{!1859, !2542, !2555, !2559, !2563, !2567, !2571, !2575, !2579, !2583, !2587, !2588, !2592, !2596, !2633, !2662, !2666, !2672, !2676, !2680, !2684, !2688, !2692, !2698, !2702}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1857, file: !6, line: 1967, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !1841, !1863, !7}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1865, line: 82, size: 1536, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1866 = !{!1867, !1868, !1869, !1877, !1878, !1893, !1894, !1898, !1911, !2525, !2526, !2527, !2528, !2534, !2535, !2536}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1864, file: !1865, line: 84, baseType: !7, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1864, file: !1865, line: 85, baseType: !1485, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1864, file: !1865, line: 86, baseType: !1870, size: 128, offset: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1871, line: 38, size: 128, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1872 = !{!1873, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1870, file: !1871, line: 39, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1870, file: !1871, line: 39, baseType: !1876, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1864, file: !1865, line: 87, baseType: !1863, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1864, file: !1865, line: 88, baseType: !1879, size: 128, offset: 256)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1865, line: 49, size: 128, elements: !1880)
!1880 = !{!1881, !1890}
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !1865, line: 50, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !1865, line: 50, size: 64, elements: !1883)
!1883 = !{!1884, !1889}
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !1865, line: 51, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1882, file: !1865, line: 51, size: 64, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1885, file: !1865, line: 52, baseType: !423, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1885, file: !1865, line: 52, baseType: !423, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1882, file: !1865, line: 54, baseType: !471, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1879, file: !1865, line: 56, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1864, file: !1865, line: 89, baseType: !1841, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1864, file: !1865, line: 91, baseType: !1895, size: 256, offset: 448)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1864, file: !1865, line: 94, baseType: !1899, size: 64, offset: 704)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1900, line: 25, size: 64, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 26, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 26, size: 64, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1903, file: !1900, line: 28, baseType: !472, size: 64, align: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1900, line: 30, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !1900, line: 30, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1907, file: !1900, line: 31, baseType: !64, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1907, file: !1900, line: 32, baseType: !27, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1864, file: !1865, line: 95, baseType: !1912, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1865, line: 128, size: 1024, align: 512, elements: !1915)
!1915 = !{!1916, !1920, !1921, !1928, !1934, !1938, !1942, !1946, !1947, !1951, !1955, !2515, !2519}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1914, file: !1865, line: 129, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!27, !1863, !7}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1914, file: !1865, line: 130, baseType: !1917, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1914, file: !1865, line: 131, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!27, !1925, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1914, file: !1865, line: 132, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!27, !1925, !7, !21, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1914, file: !1865, line: 134, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!27, !1925}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1914, file: !1865, line: 135, baseType: !1939, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!27, !1863}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1914, file: !1865, line: 136, baseType: !1943, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1863}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1914, file: !1865, line: 137, baseType: !1943, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1914, file: !1865, line: 138, baseType: !1948, size: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1863, !1841}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1914, file: !1865, line: 139, baseType: !1952, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!989, !1863, !989, !27}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1914, file: !1865, line: 140, baseType: !1956, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1959, !2514}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1961, line: 70, size: 256, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1962 = !{!1963, !1964, !2510, !2511}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1960, file: !1961, line: 71, baseType: !1863, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1960, file: !1961, line: 72, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !6, line: 1190, size: 10752, elements: !1967)
!1967 = !{!1968, !1969, !1972, !1973, !1974, !1975, !2013, !2187, !2227, !2317, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2334, !2338, !2339, !2342, !2345, !2348, !2351, !2352, !2353, !2394, !2421, !2422, !2423, !2424, !2425, !2426, !2447, !2449, !2456, !2457, !2458, !2459, !2460, !2475, !2476, !2477, !2478, !2481, !2484, !2485, !2486, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1966, file: !6, line: 1191, baseType: !102, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1966, file: !6, line: 1192, baseType: !1970, size: 32, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !1971)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !423)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1966, file: !6, line: 1193, baseType: !92, size: 8, offset: 160)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1966, file: !6, line: 1194, baseType: !44, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1966, file: !6, line: 1195, baseType: !46, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1966, file: !6, line: 1196, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !6, line: 2366, size: 576, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1987, !1991, !1995, !1999, !2000, !2001, !2002, !2005, !2006, !2007, !2009, !2010, !2011, !2012}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1977, file: !6, line: 2367, baseType: !21, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1977, file: !6, line: 2368, baseType: !27, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1977, file: !6, line: 2376, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!27, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1961, line: 21, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1977, file: !6, line: 2377, baseType: !1988, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !6, line: 75, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1977, file: !6, line: 2378, baseType: !1992, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1863, !1976, !27, !21, !25}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1977, file: !6, line: 2380, baseType: !1996, size: 64, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1965}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1977, file: !6, line: 2381, baseType: !284, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1977, file: !6, line: 2382, baseType: !1976, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1977, file: !6, line: 2383, baseType: !371, size: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1977, file: !6, line: 2385, baseType: !2003, offset: 576)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2004, line: 206, elements: !738)
!2004 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1977, file: !6, line: 2386, baseType: !2003, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1977, file: !6, line: 2387, baseType: !2003, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1977, file: !6, line: 2388, baseType: !2008, offset: 576)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2003, elements: !355)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1977, file: !6, line: 2390, baseType: !2003, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1977, file: !6, line: 2391, baseType: !2003, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1977, file: !6, line: 2392, baseType: !2003, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1977, file: !6, line: 2393, baseType: !2003, offset: 576)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1966, file: !6, line: 1197, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !6, line: 2057, size: 1664, elements: !2017)
!2017 = !{!2018, !2022, !2026, !2027, !2031, !2037, !2041, !2042, !2043, !2047, !2051, !2055, !2056, !2057, !2063, !2067, !2068, !2110, !2111, !2112, !2113, !2119, !2123, !2170, !2185, !2186}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2016, file: !6, line: 2058, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1841, !1965}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2016, file: !6, line: 2059, baseType: !2023, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !1841}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2016, file: !6, line: 2060, baseType: !2023, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2016, file: !6, line: 2062, baseType: !2028, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !1841, !27}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2016, file: !6, line: 2063, baseType: !2032, size: 64, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!27, !1841, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 309, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2016, file: !6, line: 2064, baseType: !2038, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!27, !1841}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2016, file: !6, line: 2065, baseType: !2023, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2016, file: !6, line: 2066, baseType: !1996, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2016, file: !6, line: 2067, baseType: !2044, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!27, !1965, !27}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2016, file: !6, line: 2068, baseType: !2048, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!27, !1965, !5}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2016, file: !6, line: 2069, baseType: !2052, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!27, !1965}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2016, file: !6, line: 2070, baseType: !2048, size: 64, offset: 704)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2016, file: !6, line: 2071, baseType: !2052, size: 64, offset: 768)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2016, file: !6, line: 2072, baseType: !2058, size: 64, offset: 832)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!27, !1863, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !6, line: 62, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2016, file: !6, line: 2073, baseType: !2064, size: 64, offset: 896)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!27, !1965, !1245, !989}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2016, file: !6, line: 2074, baseType: !1996, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2016, file: !6, line: 2076, baseType: !2069, size: 64, offset: 1024)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!27, !2072, !1863}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2074, line: 17, size: 960, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2105, !2106, !2109}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2073, file: !2074, line: 18, baseType: !989, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2073, file: !2074, line: 19, baseType: !40, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2073, file: !2074, line: 20, baseType: !40, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2073, file: !2074, line: 21, baseType: !40, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2073, file: !2074, line: 22, baseType: !40, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2073, file: !2074, line: 23, baseType: !46, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2073, file: !2074, line: 24, baseType: !46, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !2074, line: 25, baseType: !318, size: 256, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2073, file: !2074, line: 26, baseType: !2085, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2074, line: 32, size: 256, elements: !2088)
!2088 = !{!2089, !2093, !2097, !2101}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2087, file: !2074, line: 33, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!25, !2072, !45}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2087, file: !2074, line: 34, baseType: !2094, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !2072, !25}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2087, file: !2074, line: 35, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!25, !2072, !25, !45}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2087, file: !2074, line: 36, baseType: !2102, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!27, !2072, !25}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2073, file: !2074, line: 27, baseType: !27, size: 32, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2073, file: !2074, line: 28, baseType: !2107, size: 64, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2073, file: !2074, line: 29, baseType: !25, size: 64, offset: 896)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2016, file: !6, line: 2077, baseType: !2069, size: 64, offset: 1088)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2016, file: !6, line: 2078, baseType: !2069, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2016, file: !6, line: 2079, baseType: !2069, size: 64, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2016, file: !6, line: 2081, baseType: !2114, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!2117, !1965, !27, !989, !40, !46}
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !42, line: 73, baseType: !1697)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2016, file: !6, line: 2082, baseType: !2120, size: 64, offset: 1344)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2117, !1965, !27, !21, !40, !46}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2016, file: !6, line: 2083, baseType: !2124, size: 64, offset: 1408)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2127, !1841}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !165, line: 296, size: 1664, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2155, !2156, !2157}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2129, file: !165, line: 297, baseType: !375, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2129, file: !165, line: 298, baseType: !102, size: 128, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2129, file: !165, line: 299, baseType: !102, size: 128, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2129, file: !165, line: 300, baseType: !102, size: 128, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2129, file: !165, line: 301, baseType: !318, size: 256, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2129, file: !165, line: 302, baseType: !64, size: 32, offset: 768)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2129, file: !165, line: 303, baseType: !54, size: 32, offset: 800)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2129, file: !165, line: 304, baseType: !1965, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2129, file: !165, line: 305, baseType: !2140, size: 64, offset: 896)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !165, line: 68, size: 64, elements: !2141)
!2141 = !{!2142, !2154}
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !165, line: 69, baseType: !2143, size: 32)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !165, line: 69, size: 32, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2143, file: !165, line: 70, baseType: !885, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2143, file: !165, line: 71, baseType: !893, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2143, file: !165, line: 72, baseType: !2148, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2149, line: 24, baseType: !2150)
!2149 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 22, size: 32, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2150, file: !2149, line: 23, baseType: !2153, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2149, line: 20, baseType: !891)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2140, file: !165, line: 74, baseType: !164, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2129, file: !165, line: 306, baseType: !46, size: 64, offset: 960)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2129, file: !165, line: 307, baseType: !44, size: 64, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2129, file: !165, line: 308, baseType: !2158, size: 576, offset: 1088)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !165, line: 205, size: 576, elements: !2159)
!2159 = !{!2160, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2158, file: !165, line: 206, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !165, line: 66, baseType: !48)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2158, file: !165, line: 207, baseType: !2161, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2158, file: !165, line: 208, baseType: !2161, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2158, file: !165, line: 209, baseType: !2161, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2158, file: !165, line: 210, baseType: !2161, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2158, file: !165, line: 211, baseType: !2161, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2158, file: !165, line: 212, baseType: !2161, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2158, file: !165, line: 213, baseType: !938, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2158, file: !165, line: 214, baseType: !938, size: 64, offset: 512)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2016, file: !6, line: 2085, baseType: !2171, size: 64, offset: 1472)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!1126, !1965, !2174}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2176, line: 15, size: 256, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2177 = !{!2178, !2179, !2180, !2181, !2182}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2175, file: !2176, line: 16, baseType: !405, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2175, file: !2176, line: 19, baseType: !27, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2175, file: !2176, line: 26, baseType: !44, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2175, file: !2176, line: 33, baseType: !44, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2175, file: !2176, line: 36, baseType: !2183, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !134, line: 33, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2016, file: !6, line: 2087, baseType: !2171, size: 64, offset: 1536)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2016, file: !6, line: 2089, baseType: !1996, size: 64, offset: 1600)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1966, file: !6, line: 1198, baseType: !2188, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !165, line: 324, size: 704, elements: !2191)
!2191 = !{!2192, !2196, !2200, !2204, !2205, !2206, !2207, !2208, !2213, !2218, !2222}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2190, file: !165, line: 325, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!27, !2128}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2190, file: !165, line: 326, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!2128, !1965, !27}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2190, file: !165, line: 327, baseType: !2201, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2128}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2190, file: !165, line: 328, baseType: !2193, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2190, file: !165, line: 329, baseType: !2193, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2190, file: !165, line: 330, baseType: !2193, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2190, file: !165, line: 331, baseType: !2044, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2190, file: !165, line: 334, baseType: !2209, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!2212, !1841}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2190, file: !165, line: 335, baseType: !2214, size: 64, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!27, !1841, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2190, file: !165, line: 337, baseType: !2219, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!27, !1841, !2212}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2190, file: !165, line: 339, baseType: !2223, size: 64, offset: 640)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!27, !1965, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1966, file: !6, line: 1199, baseType: !2228, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !165, line: 430, size: 704, elements: !2231)
!2231 = !{!2232, !2243, !2244, !2248, !2249, !2250, !2265, !2288, !2292, !2293, !2316}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2230, file: !165, line: 431, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!27, !1965, !27, !27, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2239, line: 8, size: 128, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2238, file: !2239, line: 9, baseType: !1959, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2238, file: !2239, line: 10, baseType: !1863, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2230, file: !165, line: 432, baseType: !2044, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2230, file: !165, line: 433, baseType: !2245, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!27, !1965, !7}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2230, file: !165, line: 434, baseType: !2245, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2230, file: !165, line: 435, baseType: !2044, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2230, file: !165, line: 436, baseType: !2251, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!27, !1965, !27, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !165, line: 417, size: 256, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2255, file: !165, line: 418, baseType: !27, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2255, file: !165, line: 419, baseType: !7, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2255, file: !165, line: 420, baseType: !7, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2255, file: !165, line: 422, baseType: !7, size: 32, offset: 96)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2255, file: !165, line: 423, baseType: !7, size: 32, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2255, file: !165, line: 424, baseType: !7, size: 32, offset: 160)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2255, file: !165, line: 425, baseType: !7, size: 32, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2255, file: !165, line: 426, baseType: !7, size: 32, offset: 224)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2230, file: !165, line: 437, baseType: !2266, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!27, !1965, !2140, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !165, line: 345, size: 960, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2270, file: !165, line: 346, baseType: !27, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2270, file: !165, line: 347, baseType: !471, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2270, file: !165, line: 348, baseType: !471, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2270, file: !165, line: 349, baseType: !471, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2270, file: !165, line: 350, baseType: !471, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2270, file: !165, line: 351, baseType: !471, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2270, file: !165, line: 352, baseType: !471, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2270, file: !165, line: 353, baseType: !315, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2270, file: !165, line: 355, baseType: !315, size: 64, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2270, file: !165, line: 356, baseType: !27, size: 32, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2270, file: !165, line: 357, baseType: !27, size: 32, offset: 608)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2270, file: !165, line: 358, baseType: !471, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2270, file: !165, line: 359, baseType: !471, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2270, file: !165, line: 360, baseType: !471, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2270, file: !165, line: 361, baseType: !315, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2270, file: !165, line: 362, baseType: !27, size: 32, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2230, file: !165, line: 438, baseType: !2289, size: 64, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!27, !1965, !2226, !2269}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2230, file: !165, line: 440, baseType: !2266, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2230, file: !165, line: 441, baseType: !2294, size: 64, offset: 576)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!27, !1965, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !165, line: 411, size: 1408, elements: !2299)
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2298, file: !165, line: 412, baseType: !7, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2298, file: !165, line: 413, baseType: !2302, size: 1344, offset: 64)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 1344, elements: !355)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !165, line: 397, size: 448, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2315}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2303, file: !165, line: 398, baseType: !7, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2303, file: !165, line: 399, baseType: !7, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2303, file: !165, line: 401, baseType: !7, size: 32, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2303, file: !165, line: 402, baseType: !7, size: 32, offset: 96)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2303, file: !165, line: 403, baseType: !7, size: 32, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2303, file: !165, line: 404, baseType: !7, size: 32, offset: 160)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2303, file: !165, line: 405, baseType: !7, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2303, file: !165, line: 406, baseType: !473, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2303, file: !165, line: 407, baseType: !2314, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !471)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2303, file: !165, line: 408, baseType: !2314, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2230, file: !165, line: 442, baseType: !2245, size: 64, offset: 640)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1966, file: !6, line: 1200, baseType: !2318, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2320)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !6, line: 54, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1966, file: !6, line: 1201, baseType: !44, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1966, file: !6, line: 1202, baseType: !44, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1966, file: !6, line: 1203, baseType: !44, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1966, file: !6, line: 1204, baseType: !1863, size: 64, offset: 832)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1966, file: !6, line: 1205, baseType: !772, size: 320, offset: 896)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1966, file: !6, line: 1206, baseType: !27, size: 32, offset: 1216)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1966, file: !6, line: 1207, baseType: !54, size: 32, offset: 1248)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1966, file: !6, line: 1209, baseType: !25, size: 64, offset: 1280)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1966, file: !6, line: 1211, baseType: !2330, size: 64, offset: 1344)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !6, line: 1211, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1966, file: !6, line: 1223, baseType: !2335, size: 64, offset: 1408)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1871, line: 34, size: 64, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2335, file: !1871, line: 35, baseType: !1874, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1966, file: !6, line: 1224, baseType: !102, size: 128, offset: 1472)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1966, file: !6, line: 1225, baseType: !2340, size: 64, offset: 1600)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !6, line: 1225, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1966, file: !6, line: 1226, baseType: !2343, size: 64, offset: 1664)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !6, line: 1226, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1966, file: !6, line: 1227, baseType: !2346, size: 64, offset: 1728)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !6, line: 50, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1966, file: !6, line: 1228, baseType: !2349, size: 64, offset: 1792)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !6, line: 1228, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1966, file: !6, line: 1229, baseType: !375, size: 128, offset: 1856)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1966, file: !6, line: 1230, baseType: !7, size: 32, offset: 1984)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1966, file: !6, line: 1231, baseType: !2354, size: 2496, offset: 2048)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !165, line: 521, size: 2496, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2360, !2392}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2354, file: !165, line: 522, baseType: !7, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2354, file: !165, line: 523, baseType: !772, size: 320, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2354, file: !165, line: 524, baseType: !2359, size: 192, offset: 384)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1841, size: 192, elements: !355)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2354, file: !165, line: 525, baseType: !2361, size: 1728, offset: 576)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2362, size: 1728, elements: !355)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !165, line: 222, size: 576, elements: !2363)
!2363 = !{!2364, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2362, file: !165, line: 223, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !165, line: 445, size: 256, elements: !2367)
!2367 = !{!2368, !2369, !2382, !2383}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2366, file: !165, line: 446, baseType: !27, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2366, file: !165, line: 447, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !165, line: 312, size: 512, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2372, file: !165, line: 313, baseType: !2044, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2372, file: !165, line: 314, baseType: !2044, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2372, file: !165, line: 315, baseType: !2044, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2372, file: !165, line: 316, baseType: !2044, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2372, file: !165, line: 317, baseType: !2193, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2372, file: !165, line: 318, baseType: !2193, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2372, file: !165, line: 319, baseType: !2193, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2372, file: !165, line: 320, baseType: !2223, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2366, file: !165, line: 448, baseType: !284, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2366, file: !165, line: 449, baseType: !2365, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2362, file: !165, line: 224, baseType: !27, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2362, file: !165, line: 226, baseType: !102, size: 128, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2362, file: !165, line: 227, baseType: !44, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2362, file: !165, line: 228, baseType: !7, size: 32, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2362, file: !165, line: 229, baseType: !7, size: 32, offset: 352)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2362, file: !165, line: 230, baseType: !2161, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2362, file: !165, line: 231, baseType: !2161, size: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2362, file: !165, line: 232, baseType: !25, size: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2354, file: !165, line: 526, baseType: !2393, size: 192, offset: 2304)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2370, size: 192, elements: !355)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1966, file: !6, line: 1233, baseType: !2395, size: 2368, offset: 4544)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !6, line: 1184, size: 2368, elements: !2396)
!2396 = !{!2397, !2398, !2399}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2395, file: !6, line: 1185, baseType: !31, size: 16)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2395, file: !6, line: 1186, baseType: !31, size: 16, offset: 16)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2395, file: !6, line: 1187, baseType: !2400, size: 2304, offset: 64)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2401, size: 2304, elements: !355)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2402, line: 12, size: 768, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2403 = !{!2404, !2412, !2414, !2419, !2420}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2401, file: !2402, line: 13, baseType: !2405, size: 384)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2406, line: 17, size: 384, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2407 = !{!2408, !2409, !2410, !2411}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2405, file: !2406, line: 18, baseType: !27, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2405, file: !2406, line: 19, baseType: !27, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2405, file: !2406, line: 20, baseType: !59, size: 192, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2405, file: !2406, line: 22, baseType: !255, size: 128, align: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2401, file: !2402, line: 14, baseType: !2413, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2401, file: !2402, line: 15, baseType: !2415, size: 64, offset: 448)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2416, line: 16, size: 64, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2417 = !{!2418}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2415, file: !2416, line: 17, baseType: !412, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2401, file: !2402, line: 16, baseType: !59, size: 192, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2401, file: !2402, line: 17, baseType: !54, size: 32, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1966, file: !6, line: 1240, baseType: !25, size: 64, offset: 6912)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1966, file: !6, line: 1243, baseType: !423, size: 32, offset: 6976)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1966, file: !6, line: 1245, baseType: !938, size: 64, offset: 7040)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1966, file: !6, line: 1246, baseType: !938, size: 64, offset: 7104)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1966, file: !6, line: 1248, baseType: !424, size: 32, offset: 7168)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1966, file: !6, line: 1249, baseType: !2427, size: 64, offset: 7232)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !239, line: 472, size: 256, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2439, !2446}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2428, file: !239, line: 473, baseType: !64, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2428, file: !239, line: 474, baseType: !31, size: 16, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !239, line: 477, baseType: !31, size: 16, offset: 48)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !2428, file: !239, line: 478, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !42, line: 81, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 79, size: 64, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2435, file: !42, line: 80, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !1461)
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !239, line: 479, baseType: !2440, size: 64, offset: 128)
!2440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !239, line: 479, size: 64, elements: !2441)
!2441 = !{!2442, !2445}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !2440, file: !239, line: 481, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !239, line: 464, baseType: !2427)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !2440, file: !239, line: 483, baseType: !2427, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2428, file: !239, line: 485, baseType: !371, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1966, file: !6, line: 1252, baseType: !2448, size: 256, offset: 7296)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !1896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1966, file: !6, line: 1253, baseType: !2450, size: 128, offset: 7552)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2451, line: 21, baseType: !2452)
!2451 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2451, line: 19, size: 128, elements: !2453)
!2453 = !{!2454}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2452, file: !2451, line: 20, baseType: !2455, size: 128)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !1356)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1966, file: !6, line: 1255, baseType: !7, size: 32, offset: 7680)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1966, file: !6, line: 1261, baseType: !318, size: 256, offset: 7744)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1966, file: !6, line: 1267, baseType: !21, size: 64, offset: 8000)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1966, file: !6, line: 1269, baseType: !1912, size: 64, offset: 8064)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1966, file: !6, line: 1271, baseType: !2461, size: 448, offset: 8128)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2176, line: 63, size: 448, elements: !2462)
!2462 = !{!2463, !2468, !2469, !2470, !2471, !2472, !2473}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2461, file: !2176, line: 64, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!44, !2467, !2174}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2461, file: !2176, line: 66, baseType: !2464, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2461, file: !2176, line: 69, baseType: !1126, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2461, file: !2176, line: 70, baseType: !27, size: 32, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2461, file: !2176, line: 71, baseType: !7, size: 32, offset: 224)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2461, file: !2176, line: 74, baseType: !102, size: 128, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2461, file: !2176, line: 85, baseType: !2474, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1966, file: !6, line: 1274, baseType: !309, size: 64, offset: 8576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1966, file: !6, line: 1280, baseType: !309, size: 64, offset: 8640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1966, file: !6, line: 1283, baseType: !27, size: 32, offset: 8704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1966, file: !6, line: 1286, baseType: !2479, size: 32, offset: 8736)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2480, line: 8, baseType: !423)
!2480 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1966, file: !6, line: 1289, baseType: !2482, size: 64, offset: 8768)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1029, line: 18, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1966, file: !6, line: 1290, baseType: !371, size: 64, offset: 8832)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1966, file: !6, line: 1297, baseType: !854, size: 64, offset: 8896)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1966, file: !6, line: 1304, baseType: !2487, size: 64, offset: 8960)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2488, line: 49, size: 64, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2487, file: !2488, line: 50, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2488, line: 41, size: 512, align: 512, elements: !2493)
!2493 = !{!2494, !2495, !2500}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2492, file: !2488, line: 43, baseType: !64, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2492, file: !2488, line: 45, baseType: !2496, size: 192, offset: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2488, line: 29, size: 192, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2496, file: !2488, line: 30, baseType: !102, size: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2496, file: !2488, line: 32, baseType: !1126, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2492, file: !2488, line: 46, baseType: !1126, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1966, file: !6, line: 1305, baseType: !2487, size: 64, offset: 9024)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1966, file: !6, line: 1306, baseType: !255, size: 128, align: 64, offset: 9088)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1966, file: !6, line: 1307, baseType: !1028, size: 256, offset: 9216)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1966, file: !6, line: 1309, baseType: !318, size: 256, offset: 9472)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1966, file: !6, line: 1314, baseType: !27, size: 32, offset: 9728)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1966, file: !6, line: 1317, baseType: !64, size: 32, align: 512, offset: 10240)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1966, file: !6, line: 1318, baseType: !102, size: 128, offset: 10304)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1966, file: !6, line: 1320, baseType: !64, size: 32, offset: 10432)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1966, file: !6, line: 1321, baseType: !102, size: 128, offset: 10496)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1960, file: !1961, line: 73, baseType: !27, size: 32, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1960, file: !1961, line: 74, baseType: !2512, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1299, line: 42, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1914, file: !1865, line: 141, baseType: !2516, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!27, !2236, !912}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1914, file: !1865, line: 142, baseType: !2520, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!1863, !1863, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1864, file: !1865, line: 96, baseType: !1965, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1864, file: !1865, line: 97, baseType: !44, size: 64, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1864, file: !1865, line: 98, baseType: !25, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 100, baseType: !2529, size: 128, offset: 1024)
!2529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 100, size: 128, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2529, file: !1865, line: 101, baseType: !102, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2529, file: !1865, line: 102, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1864, file: !1865, line: 104, baseType: !102, size: 128, offset: 1152)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1864, file: !1865, line: 105, baseType: !102, size: 128, offset: 1280)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1864, file: !1865, line: 113, baseType: !2537, size: 128, offset: 1408)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 109, size: 128, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2537, file: !1865, line: 110, baseType: !375, size: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2537, file: !1865, line: 111, baseType: !1870, size: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2537, file: !1865, line: 112, baseType: !255, size: 128, align: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1857, file: !6, line: 1968, baseType: !2543, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!21, !1863, !1841, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2548, line: 10, size: 128, elements: !2549)
!2548 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2549 = !{!2550, !2554}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2547, file: !2548, line: 11, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !25}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2547, file: !2548, line: 12, baseType: !25, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1857, file: !6, line: 1969, baseType: !2556, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!27, !2512, !1841, !27}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1857, file: !6, line: 1970, baseType: !2560, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!1851, !1841, !27, !912}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1857, file: !6, line: 1972, baseType: !2564, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!27, !1863, !989, !27}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1857, file: !6, line: 1974, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!27, !2512, !1841, !1863, !29, !912}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1857, file: !6, line: 1976, baseType: !2572, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!27, !1863, !1841, !1863}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1857, file: !6, line: 1977, baseType: !2576, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!27, !1841, !1863}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1857, file: !6, line: 1978, baseType: !2580, size: 64, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!27, !2512, !1841, !1863, !21}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1857, file: !6, line: 1980, baseType: !2584, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!27, !2512, !1841, !1863, !29}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1857, file: !6, line: 1982, baseType: !2576, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1857, file: !6, line: 1983, baseType: !2589, size: 64, offset: 704)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!27, !2512, !1841, !1863, !29, !1970}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1857, file: !6, line: 1985, baseType: !2593, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!27, !2512, !1841, !1863, !1841, !1863, !7}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1857, file: !6, line: 1987, baseType: !2597, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!27, !2512, !1863, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !6, line: 226, size: 640, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2615, !2624, !2625, !2630, !2631, !2632}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2601, file: !6, line: 227, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2601, file: !6, line: 228, baseType: !29, size: 16, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !6, line: 241, baseType: !2606, size: 32, offset: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !6, line: 241, size: 32, elements: !2607)
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2606, file: !6, line: 242, baseType: !885, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2606, file: !6, line: 243, baseType: !2610, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2611, line: 16, baseType: !2612)
!2611 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2611, line: 14, size: 32, elements: !2613)
!2613 = !{!2614}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2612, file: !2611, line: 15, baseType: !890, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !6, line: 245, baseType: !2616, size: 32, offset: 96)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !6, line: 245, size: 32, elements: !2617)
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2616, file: !6, line: 246, baseType: !893, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2616, file: !6, line: 247, baseType: !2620, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2611, line: 20, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2611, line: 18, size: 32, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2621, file: !2611, line: 19, baseType: !897, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2601, file: !6, line: 249, baseType: !46, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2601, file: !6, line: 250, baseType: !2626, size: 128, offset: 192)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !939, line: 13, size: 128, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2626, file: !939, line: 14, baseType: !938, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2626, file: !939, line: 15, baseType: !1126, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2601, file: !6, line: 251, baseType: !2626, size: 128, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2601, file: !6, line: 252, baseType: !2626, size: 128, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2601, file: !6, line: 259, baseType: !291, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1857, file: !6, line: 1988, baseType: !2634, size: 64, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!27, !2512, !2236, !2637, !423, !7}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2639, line: 22, size: 1280, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2638, file: !2639, line: 23, baseType: !423, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2638, file: !2639, line: 24, baseType: !29, size: 16, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2638, file: !2639, line: 25, baseType: !7, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2638, file: !2639, line: 26, baseType: !946, size: 32, offset: 96)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2638, file: !2639, line: 27, baseType: !471, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2638, file: !2639, line: 28, baseType: !471, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2638, file: !2639, line: 41, baseType: !471, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2638, file: !2639, line: 42, baseType: !1970, size: 32, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2638, file: !2639, line: 43, baseType: !1970, size: 32, offset: 352)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2638, file: !2639, line: 44, baseType: !885, size: 32, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2638, file: !2639, line: 45, baseType: !893, size: 32, offset: 416)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2638, file: !2639, line: 46, baseType: !46, size: 64, offset: 448)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2638, file: !2639, line: 47, baseType: !2626, size: 128, offset: 512)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2638, file: !2639, line: 48, baseType: !2626, size: 128, offset: 640)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2638, file: !2639, line: 49, baseType: !2626, size: 128, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2638, file: !2639, line: 50, baseType: !2626, size: 128, offset: 896)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2638, file: !2639, line: 51, baseType: !471, size: 64, offset: 1024)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2638, file: !2639, line: 52, baseType: !471, size: 64, offset: 1088)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !2638, file: !2639, line: 53, baseType: !423, size: 32, offset: 1152)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !2638, file: !2639, line: 54, baseType: !423, size: 32, offset: 1184)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !2638, file: !2639, line: 55, baseType: !471, size: 64, offset: 1216)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1857, file: !6, line: 1990, baseType: !2663, size: 64, offset: 960)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!2117, !1863, !989, !40}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1857, file: !6, line: 1991, baseType: !2667, size: 64, offset: 1024)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!27, !1841, !2670, !471, !471}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !6, line: 55, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1857, file: !6, line: 1993, baseType: !2673, size: 64, offset: 1088)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!27, !1841, !27}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1857, file: !6, line: 1994, baseType: !2677, size: 64, offset: 1152)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!27, !1841, !1863, !291, !7, !29}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1857, file: !6, line: 1997, baseType: !2681, size: 64, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!27, !2512, !1841, !291, !29}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1857, file: !6, line: 1999, baseType: !2685, size: 64, offset: 1280)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!1851, !2512, !1863, !27}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1857, file: !6, line: 2001, baseType: !2689, size: 64, offset: 1344)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!27, !2512, !1863, !1851, !27}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1857, file: !6, line: 2003, baseType: !2693, size: 64, offset: 1408)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!27, !2512, !1863, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !6, line: 76, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1857, file: !6, line: 2005, baseType: !2699, size: 64, offset: 1472)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!27, !1863, !2696}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1857, file: !6, line: 2006, baseType: !2703, size: 64, offset: 1536)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2706, !1841}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !6, line: 3192, size: 192, elements: !2708)
!2708 = !{!2709, !2710}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2707, file: !6, line: 3193, baseType: !400, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !2707, file: !6, line: 3194, baseType: !423, size: 32, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1842, file: !6, line: 655, baseType: !1965, size: 64, offset: 448)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1842, file: !6, line: 656, baseType: !1837, size: 64, offset: 512)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1842, file: !6, line: 659, baseType: !25, size: 64, offset: 576)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1842, file: !6, line: 663, baseType: !44, size: 64, offset: 640)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !6, line: 671, baseType: !2716, size: 32, offset: 704)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !6, line: 671, size: 32, elements: !2717)
!2717 = !{!2718, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2716, file: !6, line: 672, baseType: !2719, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2716, file: !6, line: 673, baseType: !7, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1842, file: !6, line: 675, baseType: !1970, size: 32, offset: 736)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1842, file: !6, line: 676, baseType: !46, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1842, file: !6, line: 677, baseType: !2626, size: 128, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1842, file: !6, line: 678, baseType: !2626, size: 128, offset: 960)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1842, file: !6, line: 679, baseType: !2626, size: 128, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1842, file: !6, line: 680, baseType: !64, size: 32, offset: 1216)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1842, file: !6, line: 681, baseType: !31, size: 16, offset: 1248)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1842, file: !6, line: 682, baseType: !88, size: 8, offset: 1264)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1842, file: !6, line: 683, baseType: !88, size: 8, offset: 1272)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1842, file: !6, line: 684, baseType: !2314, size: 64, offset: 1280)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1842, file: !6, line: 691, baseType: !44, size: 64, offset: 1344)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1842, file: !6, line: 692, baseType: !772, size: 320, offset: 1408)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1842, file: !6, line: 694, baseType: !44, size: 64, offset: 1728)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1842, file: !6, line: 695, baseType: !44, size: 64, offset: 1792)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1842, file: !6, line: 697, baseType: !375, size: 128, offset: 1856)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1842, file: !6, line: 698, baseType: !102, size: 128, offset: 1984)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1842, file: !6, line: 707, baseType: !102, size: 128, offset: 2112)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1842, file: !6, line: 708, baseType: !102, size: 128, offset: 2240)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !6, line: 709, baseType: !2740, size: 128, offset: 2368)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !6, line: 709, size: 128, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2740, file: !6, line: 710, baseType: !371, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2740, file: !6, line: 711, baseType: !255, size: 128, align: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1842, file: !6, line: 713, baseType: !311, size: 64, offset: 2496)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1842, file: !6, line: 714, baseType: !311, size: 64, offset: 2560)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1842, file: !6, line: 715, baseType: !54, size: 32, offset: 2624)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1842, file: !6, line: 716, baseType: !54, size: 32, offset: 2656)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1842, file: !6, line: 717, baseType: !54, size: 32, offset: 2688)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1842, file: !6, line: 719, baseType: !54, size: 32, offset: 2720)
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !6, line: 721, baseType: !2751, size: 64, offset: 2752)
!2751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !6, line: 721, size: 64, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2751, file: !6, line: 722, baseType: !279, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2751, file: !6, line: 723, baseType: !2023, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1842, file: !6, line: 725, baseType: !2756, size: 64, offset: 2816)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !6, line: 725, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1842, file: !6, line: 726, baseType: !1838, size: 1536, align: 64, offset: 2880)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1842, file: !6, line: 727, baseType: !102, size: 128, offset: 4416)
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !6, line: 728, baseType: !2761, size: 64, offset: 4544)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !6, line: 728, size: 64, elements: !2762)
!2762 = !{!2763, !2764, !2767, !2768}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2761, file: !6, line: 729, baseType: !1809, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2761, file: !6, line: 730, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !6, line: 730, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2761, file: !6, line: 731, baseType: !989, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2761, file: !6, line: 732, baseType: !7, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1842, file: !6, line: 735, baseType: !424, size: 32, offset: 4608)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1842, file: !6, line: 738, baseType: !424, size: 32, offset: 4640)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1842, file: !6, line: 739, baseType: !2427, size: 64, offset: 4672)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1842, file: !6, line: 750, baseType: !25, size: 64, offset: 4736)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1838, file: !6, line: 474, baseType: !400, size: 128, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1838, file: !6, line: 475, baseType: !772, size: 320, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1838, file: !6, line: 476, baseType: !405, size: 32, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1838, file: !6, line: 477, baseType: !54, size: 32, offset: 544)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1838, file: !6, line: 482, baseType: !600, size: 128, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1838, file: !6, line: 483, baseType: !44, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1838, file: !6, line: 484, baseType: !44, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1838, file: !6, line: 485, baseType: !2781, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !6, line: 404, size: 1280, elements: !2784)
!2784 = !{!2785, !2789, !2859, !2863, !2867, !2873, !2878, !2882, !2887, !2891, !2895, !2899, !2927, !2931, !2935, !2939, !2944, !2948, !2955, !2959}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2783, file: !6, line: 405, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!27, !1815, !2035}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2783, file: !6, line: 406, baseType: !2790, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!27, !291, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !134, line: 293, size: 1536, elements: !2795)
!2795 = !{!2796, !2826, !2840}
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !134, line: 295, baseType: !2797, size: 512)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !134, line: 295, size: 512, elements: !2798)
!2798 = !{!2799, !2825}
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !134, line: 296, baseType: !2800, size: 448)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2797, file: !134, line: 296, size: 448, elements: !2801)
!2801 = !{!2802, !2803, !2812, !2813, !2814, !2823, !2824}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2800, file: !134, line: 298, baseType: !44, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !2800, file: !134, line: 299, baseType: !2804, size: 128, offset: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2800, file: !134, line: 299, size: 128, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2804, file: !134, line: 300, baseType: !102, size: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !134, line: 302, baseType: !2808, size: 128)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !134, line: 302, size: 128, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2808, file: !134, line: 303, baseType: !25, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2808, file: !134, line: 305, baseType: !7, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2800, file: !134, line: 310, baseType: !1837, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2800, file: !134, line: 311, baseType: !44, size: 64, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !2800, file: !134, line: 312, baseType: !2815, size: 64, offset: 320)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2800, file: !134, line: 312, size: 64, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2815, file: !134, line: 313, baseType: !25, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2815, file: !134, line: 314, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !134, line: 257, baseType: !2820)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 255, size: 64, elements: !2821)
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2820, file: !134, line: 256, baseType: !44, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2800, file: !134, line: 316, baseType: !54, size: 32, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2800, file: !134, line: 317, baseType: !54, size: 32, offset: 416)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2797, file: !134, line: 323, baseType: !1816, size: 512, align: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !134, line: 325, baseType: !2827, size: 512, offset: 512)
!2827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !134, line: 325, size: 512, elements: !2828)
!2828 = !{!2829, !2839}
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !134, line: 326, baseType: !2830, size: 320)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2827, file: !134, line: 326, size: 320, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2830, file: !134, line: 327, baseType: !44, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2830, file: !134, line: 328, baseType: !44, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2830, file: !134, line: 329, baseType: !44, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2830, file: !134, line: 331, baseType: !54, size: 32, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2830, file: !134, line: 332, baseType: !54, size: 32, offset: 224)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2830, file: !134, line: 333, baseType: !54, size: 32, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2830, file: !134, line: 335, baseType: !7, size: 32, offset: 288)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2827, file: !134, line: 339, baseType: !1816, size: 512, align: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !134, line: 341, baseType: !2841, size: 512, offset: 1024)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !134, line: 341, size: 512, elements: !2842)
!2842 = !{!2843, !2852, !2858}
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !134, line: 342, baseType: !2844, size: 384)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !134, line: 342, size: 384, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2844, file: !134, line: 343, baseType: !44, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2844, file: !134, line: 344, baseType: !44, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2844, file: !134, line: 346, baseType: !25, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2844, file: !134, line: 347, baseType: !25, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2844, file: !134, line: 348, baseType: !25, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2844, file: !134, line: 349, baseType: !25, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !134, line: 352, baseType: !2853, size: 256)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !134, line: 352, size: 256, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2853, file: !134, line: 353, baseType: !44, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2853, file: !134, line: 354, baseType: !44, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2853, file: !134, line: 356, baseType: !102, size: 128, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2841, file: !134, line: 359, baseType: !1816, size: 512, align: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2783, file: !6, line: 409, baseType: !2860, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!27, !1837, !2035}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2783, file: !6, line: 412, baseType: !2864, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!912, !1837, !2793}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2783, file: !6, line: 414, baseType: !2868, size: 64, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !6, line: 310, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2783, file: !6, line: 416, baseType: !2874, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!27, !291, !1837, !46, !7, !2877, !277}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2783, file: !6, line: 419, baseType: !2879, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!27, !291, !1837, !46, !7, !7, !1815, !25}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2783, file: !6, line: 424, baseType: !2883, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!2886, !1837, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !471)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2783, file: !6, line: 425, baseType: !2888, size: 64, offset: 512)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2793, !40, !40}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2783, file: !6, line: 426, baseType: !2892, size: 64, offset: 576)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!912, !2793, !405}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2783, file: !6, line: 427, baseType: !2896, size: 64, offset: 640)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2793}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2783, file: !6, line: 428, baseType: !2900, size: 64, offset: 704)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!2117, !2903, !2925}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !6, line: 373, size: 384, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2912, !2913, !2914, !2915}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2904, file: !6, line: 374, baseType: !291, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2904, file: !6, line: 375, baseType: !46, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2904, file: !6, line: 376, baseType: !2909, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2903, !1126}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2904, file: !6, line: 377, baseType: !25, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2904, file: !6, line: 378, baseType: !27, size: 32, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2904, file: !6, line: 379, baseType: !98, size: 16, offset: 288)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !6, line: 380, baseType: !2916, size: 64, offset: 320)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !6, line: 380, size: 64, elements: !2917)
!2917 = !{!2918, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2916, file: !6, line: 386, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !6, line: 386, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2916, file: !6, line: 395, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!2117, !25}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !6, line: 69, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2783, file: !6, line: 433, baseType: !2928, size: 64, offset: 768)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!27, !1837, !2793, !2793, !118}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2783, file: !6, line: 435, baseType: !2932, size: 64, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!27, !2793}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2783, file: !6, line: 436, baseType: !2936, size: 64, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!912, !2793, !40, !40}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2783, file: !6, line: 438, baseType: !2940, size: 64, offset: 960)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2793, !2943, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2783, file: !6, line: 439, baseType: !2945, size: 64, offset: 1024)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!27, !1837, !1815}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2783, file: !6, line: 442, baseType: !2949, size: 64, offset: 1088)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!27, !2952, !291, !2954}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !6, line: 66, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2783, file: !6, line: 444, baseType: !2956, size: 64, offset: 1152)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !291}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2783, file: !6, line: 445, baseType: !2960, size: 64, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!27, !2903, !2925}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !6, line: 486, baseType: !44, size: 64, offset: 896)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1838, file: !6, line: 487, baseType: !772, size: 320, offset: 960)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1838, file: !6, line: 488, baseType: !2479, size: 32, offset: 1280)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1838, file: !6, line: 489, baseType: !64, size: 32, offset: 1312)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1838, file: !6, line: 490, baseType: !102, size: 128, offset: 1344)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1838, file: !6, line: 491, baseType: !25, size: 64, offset: 1472)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !134, line: 107, baseType: !2970, size: 64, offset: 192)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !134, line: 107, size: 64, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2970, file: !134, line: 108, baseType: !44, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2970, file: !134, line: 109, baseType: !44, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1823, file: !134, line: 117, baseType: !44, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !134, line: 119, baseType: !2976, size: 320)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !134, line: 119, size: 320, elements: !2977)
!2977 = !{!2978, !2979, !2982, !2983, !2984}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2976, file: !134, line: 124, baseType: !44, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2976, file: !134, line: 125, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !134, line: 125, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2976, file: !134, line: 126, baseType: !44, size: 64, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2976, file: !134, line: 127, baseType: !44, size: 64, offset: 192)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2976, file: !134, line: 128, baseType: !2985, size: 64, offset: 256)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !134, line: 128, size: 64, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2985, file: !134, line: 133, baseType: !44, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2985, file: !134, line: 138, baseType: !309, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !134, line: 141, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !134, line: 141, size: 64, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2990, file: !134, line: 142, baseType: !44, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !134, line: 144, baseType: !2994, size: 128)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !134, line: 144, size: 128, elements: !2995)
!2995 = !{!2996, !3222}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2994, file: !134, line: 146, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !126, line: 126, size: 1216, elements: !2999)
!2999 = !{!3000, !3010, !3031, !3032, !3033, !3034, !3035, !3204, !3205, !3206}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2998, file: !126, line: 127, baseType: !3001, size: 384)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !126, line: 21, size: 384, elements: !3002)
!3002 = !{!3003, !3004, !3006, !3007, !3008, !3009}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3001, file: !126, line: 22, baseType: !44, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3001, file: !126, line: 23, baseType: !3005, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3001, file: !126, line: 24, baseType: !3005, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3001, file: !126, line: 25, baseType: !44, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3001, file: !126, line: 26, baseType: !44, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3001, file: !126, line: 27, baseType: !44, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2998, file: !126, line: 128, baseType: !3011, size: 128, offset: 384)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3012, line: 105, size: 128, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3011, file: !3012, line: 110, baseType: !44, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3011, file: !3012, line: 118, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3012, line: 95, size: 448, elements: !3018)
!3018 = !{!3019, !3020, !3026, !3027, !3028, !3029, !3030}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3017, file: !3012, line: 96, baseType: !309, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3017, file: !3012, line: 97, baseType: !3021, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3012, line: 60, baseType: !3023)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !3025}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3017, file: !3012, line: 98, baseType: !3021, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3017, file: !3012, line: 99, baseType: !912, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3017, file: !3012, line: 100, baseType: !912, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3017, file: !3012, line: 101, baseType: !255, size: 128, align: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3017, file: !3012, line: 102, baseType: !3025, size: 64, offset: 384)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2998, file: !126, line: 129, baseType: !1067, size: 256, offset: 512)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2998, file: !126, line: 130, baseType: !125, size: 32, offset: 768)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2998, file: !126, line: 131, baseType: !7, size: 32, offset: 800)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2998, file: !126, line: 132, baseType: !44, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2998, file: !126, line: 133, baseType: !3036, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !126, line: 77, size: 192, elements: !3039)
!3039 = !{!3040, !3044, !3200}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3038, file: !126, line: 83, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !1815}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3038, file: !126, line: 89, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !134, line: 1184, baseType: !7)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3051, line: 512, size: 896, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3052 = !{!3053, !3167, !3168, !3175, !3182, !3192, !3193, !3194, !3196, !3198}
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !3051, line: 513, baseType: !3054, size: 320)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 513, size: 320, elements: !3055)
!3055 = !{!3056, !3163, !3164, !3165, !3166}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3054, file: !3051, line: 514, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !134, line: 625, size: 1344, elements: !3059)
!3059 = !{!3060, !3069, !3070, !3076, !3083, !3084, !3089, !3090, !3095, !3096, !3099, !3156, !3157, !3158, !3159, !3160, !3161}
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !3058, file: !134, line: 628, baseType: !3061, size: 128)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3058, file: !134, line: 628, size: 128, elements: !3062)
!3062 = !{!3063, !3068}
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !3061, file: !134, line: 629, baseType: !3064, size: 128)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !134, line: 629, size: 128, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3064, file: !134, line: 631, baseType: !44, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3064, file: !134, line: 632, baseType: !44, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3061, file: !134, line: 635, baseType: !255, size: 128, align: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3058, file: !134, line: 639, baseType: !717, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3058, file: !134, line: 640, baseType: !3071, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !753, line: 297, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !753, line: 297, size: 64, elements: !3073)
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3072, file: !753, line: 297, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !758, line: 19, baseType: !44)
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3058, file: !134, line: 646, baseType: !3077, size: 64, offset: 256)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3058, file: !134, line: 646, size: 64, elements: !3078)
!3078 = !{!3079, !3082}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3077, file: !134, line: 647, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3081)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !134, line: 542, baseType: !44)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3077, file: !134, line: 648, baseType: !3081, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3058, file: !134, line: 666, baseType: !27, size: 32, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3058, file: !134, line: 667, baseType: !3085, size: 64, offset: 384)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !134, line: 579, size: 320, elements: !3087)
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3086, file: !134, line: 580, baseType: !772, size: 320)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3058, file: !134, line: 670, baseType: !912, size: 8, offset: 448)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3058, file: !134, line: 681, baseType: !3091, size: 256, offset: 512)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3058, file: !134, line: 678, size: 256, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3091, file: !134, line: 679, baseType: !463, size: 192, align: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3091, file: !134, line: 680, baseType: !44, size: 64, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3058, file: !134, line: 689, baseType: !102, size: 128, offset: 768)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3058, file: !134, line: 691, baseType: !3097, size: 64, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !134, line: 691, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3058, file: !134, line: 694, baseType: !3100, size: 64, offset: 960)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3051, line: 563, size: 1024, elements: !3103)
!3103 = !{!3104, !3108, !3109, !3113, !3117, !3121, !3122, !3126, !3130, !3134, !3135, !3136, !3140, !3144, !3148, !3152}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3102, file: !3051, line: 564, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !3057}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3102, file: !3051, line: 569, baseType: !3105, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3102, file: !3051, line: 571, baseType: !3110, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!27, !3057, !44}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3102, file: !3051, line: 572, baseType: !3114, size: 64, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!27, !3057}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3102, file: !3051, line: 578, baseType: !3118, size: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!27, !3057, !44, !44, !44}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3102, file: !3051, line: 580, baseType: !3045, size: 64, offset: 320)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3102, file: !3051, line: 581, baseType: !3123, size: 64, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!3048, !3049, !7}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3102, file: !3051, line: 582, baseType: !3127, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!3048, !3049, !44, !44}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3102, file: !3051, line: 584, baseType: !3131, size: 64, offset: 512)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!44, !3057}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3102, file: !3051, line: 588, baseType: !3045, size: 64, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3102, file: !3051, line: 591, baseType: !3045, size: 64, offset: 640)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3102, file: !3051, line: 597, baseType: !3137, size: 64, offset: 704)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!27, !3057, !44, !25, !27, !27}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3102, file: !3051, line: 603, baseType: !3141, size: 64, offset: 768)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!21, !3057}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3102, file: !3051, line: 613, baseType: !3145, size: 64, offset: 832)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!27, !3057, !1772}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3102, file: !3051, line: 625, baseType: !3149, size: 64, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!1772, !3057, !44}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3102, file: !3051, line: 633, baseType: !3153, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!1815, !3057, !44}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3058, file: !134, line: 697, baseType: !44, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3058, file: !134, line: 699, baseType: !291, size: 64, offset: 1088)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3058, file: !134, line: 700, baseType: !25, size: 64, offset: 1152)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3058, file: !134, line: 711, baseType: !309, size: 64, offset: 1216)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3058, file: !134, line: 717, baseType: !1772, size: 64, offset: 1280)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3058, file: !134, line: 722, baseType: !3162, offset: 1344)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !134, line: 570, elements: !738)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3054, file: !3051, line: 515, baseType: !405, size: 32, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3054, file: !3051, line: 516, baseType: !44, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3054, file: !3051, line: 517, baseType: !44, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3054, file: !3051, line: 518, baseType: !44, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3050, file: !3051, line: 520, baseType: !133, size: 32, offset: 320)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3050, file: !3051, line: 522, baseType: !3169, size: 64, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !758, line: 22, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 22, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3171, file: !758, line: 22, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !758, line: 15, baseType: !44)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3050, file: !3051, line: 524, baseType: !3176, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !753, line: 372, baseType: !3178)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 372, size: 64, elements: !3179)
!3179 = !{!3180}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3178, file: !753, line: 372, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !758, line: 16, baseType: !44)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !3051, line: 527, baseType: !3183, size: 64, offset: 512)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3050, file: !3051, line: 527, size: 64, elements: !3184)
!3184 = !{!3185, !3191}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3183, file: !3051, line: 528, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !758, line: 21, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 21, size: 64, elements: !3188)
!3188 = !{!3189}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3187, file: !758, line: 21, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !758, line: 14, baseType: !44)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3183, file: !3051, line: 529, baseType: !3170, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3050, file: !3051, line: 534, baseType: !1815, size: 64, offset: 576)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3050, file: !3051, line: 535, baseType: !1815, size: 64, offset: 640)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3050, file: !3051, line: 541, baseType: !3195, size: 64, offset: 704)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3050, file: !3051, line: 545, baseType: !3197, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3050, file: !3051, line: 549, baseType: !3199, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !753, line: 520, baseType: !1815)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3038, file: !126, line: 100, baseType: !3201, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!27, !2997, !44, !44, !27}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2998, file: !126, line: 134, baseType: !25, size: 64, offset: 960)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2998, file: !126, line: 135, baseType: !27, size: 32, offset: 1024)
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !2998, file: !126, line: 136, baseType: !3207, size: 128, offset: 1088)
!3207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2998, file: !126, line: 136, size: 128, elements: !3208)
!3208 = !{!3209, !3215}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3207, file: !126, line: 137, baseType: !3210, size: 128)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3211, line: 6, size: 128, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3210, file: !3211, line: 7, baseType: !471, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3210, file: !3211, line: 8, baseType: !471, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !126, line: 138, baseType: !3216)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3207, file: !126, line: 138, elements: !3217)
!3217 = !{!3218, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3216, file: !126, line: 138, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !126, line: 138, elements: !738)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3216, file: !126, line: 138, baseType: !3221)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3210, elements: !1145)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2994, file: !134, line: 147, baseType: !25, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1820, file: !134, line: 161, baseType: !255, size: 128, align: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !134, line: 164, baseType: !3225, size: 32, offset: 384)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1816, file: !134, line: 164, size: 32, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3225, file: !134, line: 169, baseType: !54, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3225, file: !134, line: 177, baseType: !7, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1816, file: !134, line: 181, baseType: !54, size: 32, offset: 416)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1812, file: !1799, line: 42, baseType: !424, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1812, file: !1799, line: 43, baseType: !424, size: 32, offset: 96)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !413, file: !414, line: 1340, baseType: !3233, size: 64, offset: 20672)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !414, line: 69, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !413, file: !414, line: 1351, baseType: !27, size: 32, offset: 20736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !413, file: !414, line: 1352, baseType: !27, size: 32, offset: 20768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !413, file: !414, line: 1354, baseType: !44, size: 64, offset: 20800)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !413, file: !414, line: 1364, baseType: !471, size: 64, offset: 20864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !413, file: !414, line: 1365, baseType: !471, size: 64, offset: 20928)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !413, file: !414, line: 1412, baseType: !44, size: 64, offset: 20992)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !413, file: !414, line: 1453, baseType: !3242, size: 64, offset: 21056)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !414, line: 1453, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !413, file: !414, line: 1457, baseType: !3245, size: 64, offset: 21120)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !3247)
!3247 = !{!3248, !3249, !3268, !3271, !3272, !3305, !3315}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3246, file: !150, line: 62, baseType: !149, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3246, file: !150, line: 64, baseType: !3250, size: 192, offset: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3246, file: !150, line: 64, size: 192, elements: !3251)
!3251 = !{!3252, !3263}
!3252 = !DIDerivedType(tag: DW_TAG_member, scope: !3250, file: !150, line: 65, baseType: !3253, size: 192)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3250, file: !150, line: 65, size: 192, elements: !3254)
!3254 = !{!3255, !3262}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3253, file: !150, line: 66, baseType: !3256, size: 128)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3257, line: 50, size: 128, elements: !3258)
!3257 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3256, file: !3257, line: 52, baseType: !44, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3256, file: !3257, line: 54, baseType: !7, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3256, file: !3257, line: 55, baseType: !7, size: 32, offset: 96)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3253, file: !150, line: 67, baseType: !44, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3250, file: !150, line: 70, baseType: !3264, size: 192)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3250, file: !150, line: 70, size: 192, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3264, file: !150, line: 71, baseType: !255, size: 128, align: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3264, file: !150, line: 72, baseType: !44, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3246, file: !150, line: 76, baseType: !3269, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3246, file: !150, line: 77, baseType: !44, size: 64, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3246, file: !150, line: 79, baseType: !3273, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3257, line: 25, size: 256, elements: !3275)
!3275 = !{!3276, !3282, !3286}
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !3257, line: 26, baseType: !3277, size: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3274, file: !3257, line: 26, size: 128, elements: !3278)
!3278 = !{!3279, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3277, file: !3257, line: 27, baseType: !3280, size: 128)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1356)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3277, file: !3257, line: 28, baseType: !3280, size: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3274, file: !3257, line: 31, baseType: !3283, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3285)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3257, line: 23, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !3257, line: 33, baseType: !3287, size: 64, offset: 192)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3274, file: !3257, line: 33, size: 64, elements: !3288)
!3288 = !{!3289, !3295, !3300}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3287, file: !3257, line: 38, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3257, line: 34, size: 64, elements: !3291)
!3291 = !{!3292, !3293, !3294}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3290, file: !3257, line: 35, baseType: !818, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3290, file: !3257, line: 36, baseType: !88, size: 8, offset: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3290, file: !3257, line: 37, baseType: !88, size: 8, offset: 40)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3287, file: !3257, line: 42, baseType: !3296, size: 16)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3257, line: 39, size: 16, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3296, file: !3257, line: 40, baseType: !88, size: 8)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3296, file: !3257, line: 41, baseType: !88, size: 8, offset: 8)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3287, file: !3257, line: 46, baseType: !3301, size: 16)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3257, line: 43, size: 16, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3301, file: !3257, line: 44, baseType: !88, size: 8)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3301, file: !3257, line: 45, baseType: !88, size: 8, offset: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3246, file: !150, line: 81, baseType: !3306, size: 64, offset: 448)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3307, file: !150, line: 86, baseType: !3269, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3307, file: !150, line: 87, baseType: !44, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3307, file: !150, line: 88, baseType: !44, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3307, file: !150, line: 89, baseType: !44, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3307, file: !150, line: 90, baseType: !912, size: 8, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3307, file: !150, line: 92, baseType: !3306, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3246, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !413, file: !414, line: 1463, baseType: !3317, offset: 21184)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !414, line: 739, elements: !738)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !413, file: !414, line: 1470, baseType: !255, size: 128, align: 64, offset: 21184)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !413, file: !414, line: 1471, baseType: !363, size: 32, offset: 21312)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !413, file: !414, line: 1472, baseType: !27, size: 32, offset: 21344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !413, file: !414, line: 1474, baseType: !412, size: 64, offset: 21376)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !413, file: !414, line: 1475, baseType: !3323, size: 320, offset: 21440)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3324, line: 11, size: 320, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3325 = !{!3326, !3327, !3328, !3333}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3323, file: !3324, line: 16, baseType: !375, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3323, file: !3324, line: 17, baseType: !44, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3323, file: !3324, line: 18, baseType: !3329, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3323, file: !3324, line: 19, baseType: !423, size: 32, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !413, file: !414, line: 1478, baseType: !3335, size: 64, offset: 21760)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !414, line: 1478, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !413, file: !414, line: 1482, baseType: !363, size: 32, offset: 21824)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !413, file: !414, line: 1489, baseType: !25, size: 64, offset: 21888)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !413, file: !414, line: 1504, baseType: !25, size: 64, offset: 21952)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !413, file: !414, line: 1505, baseType: !472, size: 64, offset: 22016)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !413, file: !414, line: 1506, baseType: !471, size: 64, offset: 22080)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !413, file: !414, line: 1507, baseType: !472, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !413, file: !414, line: 1508, baseType: !472, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !413, file: !414, line: 1509, baseType: !472, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !413, file: !414, line: 1510, baseType: !255, size: 128, align: 64, offset: 22208)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !413, file: !414, line: 1511, baseType: !27, size: 32, offset: 22336)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !413, file: !414, line: 1515, baseType: !3348, size: 64, offset: 22400)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !299, line: 56, size: 64, elements: !3349)
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3348, file: !299, line: 57, baseType: !302, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !413, file: !414, line: 1518, baseType: !3348, size: 64, offset: 22464)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !413, file: !414, line: 1528, baseType: !255, size: 128, align: 64, offset: 22528)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !413, file: !414, line: 1552, baseType: !3354, size: 35328, offset: 23040)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3355, line: 430, size: 35328, elements: !3356)
!3355 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3356 = !{!3357, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3386, !3387, !3388, !3389, !3390, !3391, !3394, !3395, !3396, !3397}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3354, file: !3355, line: 432, baseType: !3358, size: 192)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3359, size: 192, elements: !355)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3360, line: 16, size: 64, elements: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3359, file: !3360, line: 17, baseType: !98, size: 16)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3359, file: !3360, line: 18, baseType: !98, size: 16, offset: 16)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3359, file: !3360, line: 19, baseType: !98, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3359, file: !3360, line: 19, baseType: !98, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3359, file: !3360, line: 19, baseType: !98, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3359, file: !3360, line: 19, baseType: !98, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3359, file: !3360, line: 19, baseType: !98, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3359, file: !3360, line: 20, baseType: !98, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3359, file: !3360, line: 20, baseType: !98, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3359, file: !3360, line: 20, baseType: !98, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3359, file: !3360, line: 20, baseType: !98, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3359, file: !3360, line: 20, baseType: !98, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3359, file: !3360, line: 20, baseType: !98, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3354, file: !3355, line: 436, baseType: !44, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3354, file: !3355, line: 440, baseType: !31, size: 16, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3354, file: !3355, line: 441, baseType: !31, size: 16, offset: 272)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3354, file: !3355, line: 442, baseType: !31, size: 16, offset: 288)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3354, file: !3355, line: 443, baseType: !31, size: 16, offset: 304)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3354, file: !3355, line: 447, baseType: !44, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3354, file: !3355, line: 448, baseType: !44, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3354, file: !3355, line: 459, baseType: !3383, size: 256, offset: 448)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3384, size: 256, elements: !380)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3355, line: 428, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3354, file: !3355, line: 461, baseType: !44, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3354, file: !3355, line: 463, baseType: !44, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3354, file: !3355, line: 465, baseType: !44, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3354, file: !3355, line: 466, baseType: !44, size: 64, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3354, file: !3355, line: 467, baseType: !44, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3354, file: !3355, line: 473, baseType: !3392, size: 64, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3355, line: 10, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3354, file: !3355, line: 480, baseType: !44, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3354, file: !3355, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3354, file: !3355, line: 491, baseType: !423, size: 32, offset: 1184)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3354, file: !3355, line: 501, baseType: !3398, size: 33792, offset: 1536)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3399, line: 448, size: 33792, elements: !3400)
!3399 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3400 = !{!3401, !3402, !3403, !3565, !3566, !3572, !3573}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3398, file: !3399, line: 461, baseType: !7, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3398, file: !3399, line: 468, baseType: !44, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3398, file: !3399, line: 476, baseType: !3404, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3399, line: 356, size: 33280, align: 512, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3405, file: !3399, line: 358, baseType: !7, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3405, file: !3399, line: 361, baseType: !7, size: 32, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3405, file: !3399, line: 364, baseType: !471, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3405, file: !3399, line: 367, baseType: !471, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3405, file: !3399, line: 370, baseType: !471, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3405, file: !3399, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3405, file: !3399, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3405, file: !3399, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3405, file: !3399, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3405, file: !3399, line: 397, baseType: !3417, size: 32768, offset: 512)
!3417 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3399, line: 348, size: 32768, elements: !3418)
!3418 = !{!3419, !3434, !3471, !3548, !3561}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3417, file: !3399, line: 349, baseType: !3420, size: 896)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3399, line: 12, size: 896, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3433}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3399, line: 13, baseType: !423, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3399, line: 14, baseType: !423, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3399, line: 15, baseType: !423, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3399, line: 16, baseType: !423, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3399, line: 17, baseType: !423, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3399, line: 18, baseType: !423, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3399, line: 19, baseType: !423, size: 32, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3399, line: 22, baseType: !3430, size: 640, offset: 224)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 640, elements: !3431)
!3431 = !{!3432}
!3432 = !DISubrange(count: 20)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3420, file: !3399, line: 25, baseType: !423, size: 32, offset: 864)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3417, file: !3399, line: 350, baseType: !3435, size: 4096, align: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3399, line: 34, size: 4096, align: 128, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3456, !3457, !3458, !3460, !3462, !3466}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3435, file: !3399, line: 35, baseType: !98, size: 16)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3435, file: !3399, line: 36, baseType: !98, size: 16, offset: 16)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3435, file: !3399, line: 37, baseType: !98, size: 16, offset: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3435, file: !3399, line: 38, baseType: !98, size: 16, offset: 48)
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !3399, line: 39, baseType: !3442, size: 128, offset: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !3399, line: 39, size: 128, elements: !3443)
!3443 = !{!3444, !3449}
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3442, file: !3399, line: 40, baseType: !3445, size: 128)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3399, line: 40, size: 128, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3445, file: !3399, line: 41, baseType: !471, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3445, file: !3399, line: 42, baseType: !471, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3442, file: !3399, line: 44, baseType: !3450, size: 128)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3399, line: 44, size: 128, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3450, file: !3399, line: 45, baseType: !423, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3450, file: !3399, line: 46, baseType: !423, size: 32, offset: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3450, file: !3399, line: 47, baseType: !423, size: 32, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3450, file: !3399, line: 48, baseType: !423, size: 32, offset: 96)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3435, file: !3399, line: 51, baseType: !423, size: 32, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3435, file: !3399, line: 52, baseType: !423, size: 32, offset: 224)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3435, file: !3399, line: 55, baseType: !3459, size: 1024, offset: 256)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 1024, elements: !1896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3435, file: !3399, line: 58, baseType: !3461, size: 2048, offset: 1280)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 2048, elements: !1582)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3435, file: !3399, line: 60, baseType: !3463, size: 384, offset: 3328)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !3464)
!3464 = !{!3465}
!3465 = !DISubrange(count: 12)
!3466 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !3399, line: 62, baseType: !3467, size: 384, offset: 3712)
!3467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !3399, line: 62, size: 384, elements: !3468)
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3467, file: !3399, line: 63, baseType: !3463, size: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3467, file: !3399, line: 64, baseType: !3463, size: 384)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3417, file: !3399, line: 351, baseType: !3472, size: 1088)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3399, line: 79, size: 1088, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3547}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3472, file: !3399, line: 80, baseType: !423, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3472, file: !3399, line: 81, baseType: !423, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3472, file: !3399, line: 82, baseType: !423, size: 32, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3472, file: !3399, line: 83, baseType: !423, size: 32, offset: 96)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3472, file: !3399, line: 84, baseType: !423, size: 32, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3472, file: !3399, line: 85, baseType: !423, size: 32, offset: 160)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3472, file: !3399, line: 86, baseType: !423, size: 32, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3472, file: !3399, line: 88, baseType: !3430, size: 640, offset: 224)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3472, file: !3399, line: 89, baseType: !88, size: 8, offset: 864)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3472, file: !3399, line: 90, baseType: !88, size: 8, offset: 872)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3472, file: !3399, line: 91, baseType: !88, size: 8, offset: 880)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3472, file: !3399, line: 92, baseType: !88, size: 8, offset: 888)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3472, file: !3399, line: 93, baseType: !88, size: 8, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3472, file: !3399, line: 94, baseType: !88, size: 8, offset: 904)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3472, file: !3399, line: 95, baseType: !3489, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3491, line: 11, size: 128, elements: !3492)
!3491 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3490, file: !3491, line: 12, baseType: !1126, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3490, file: !3491, line: 13, baseType: !3495, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3497, line: 103, size: 1344, elements: !3498)
!3497 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3527, !3528, !3529}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3496, file: !3497, line: 109, baseType: !44, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3496, file: !3497, line: 110, baseType: !44, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3496, file: !3497, line: 111, baseType: !44, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3496, file: !3497, line: 112, baseType: !44, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3496, file: !3497, line: 113, baseType: !44, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3496, file: !3497, line: 114, baseType: !44, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3496, file: !3497, line: 117, baseType: !44, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3496, file: !3497, line: 118, baseType: !44, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3496, file: !3497, line: 119, baseType: !44, size: 64, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3496, file: !3497, line: 120, baseType: !44, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3496, file: !3497, line: 121, baseType: !44, size: 64, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3496, file: !3497, line: 122, baseType: !44, size: 64, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3496, file: !3497, line: 123, baseType: !44, size: 64, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3496, file: !3497, line: 124, baseType: !44, size: 64, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3496, file: !3497, line: 125, baseType: !44, size: 64, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3496, file: !3497, line: 139, baseType: !44, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3496, file: !3497, line: 142, baseType: !44, size: 64, offset: 1024)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !3497, line: 144, baseType: !3517, size: 64, offset: 1088)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !3497, line: 144, size: 64, elements: !3518)
!3518 = !{!3519, !3520, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3517, file: !3497, line: 146, baseType: !98, size: 16)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3517, file: !3497, line: 148, baseType: !471, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3517, file: !3497, line: 150, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3497, line: 59, size: 64, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3522, file: !3497, line: 61, baseType: !471, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3522, file: !3497, line: 63, baseType: !471, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3522, file: !3497, line: 65, baseType: !471, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3496, file: !3497, line: 153, baseType: !44, size: 64, offset: 1152)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3496, file: !3497, line: 154, baseType: !44, size: 64, offset: 1216)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !3497, line: 156, baseType: !3530, size: 64, offset: 1280)
!3530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !3497, line: 156, size: 64, elements: !3531)
!3531 = !{!3532, !3533, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3530, file: !3497, line: 158, baseType: !98, size: 16)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3530, file: !3497, line: 160, baseType: !471, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3530, file: !3497, line: 162, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3497, line: 69, size: 64, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3535, file: !3497, line: 71, baseType: !471, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3535, file: !3497, line: 73, baseType: !471, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3535, file: !3497, line: 75, baseType: !471, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3535, file: !3497, line: 77, baseType: !471, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3535, file: !3497, line: 80, baseType: !471, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3535, file: !3497, line: 83, baseType: !471, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3535, file: !3497, line: 86, baseType: !471, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3535, file: !3497, line: 88, baseType: !471, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3535, file: !3497, line: 93, baseType: !471, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3535, file: !3497, line: 100, baseType: !471, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3472, file: !3399, line: 96, baseType: !423, size: 32, offset: 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3417, file: !3399, line: 352, baseType: !3549, size: 4608, align: 512)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3399, line: 333, size: 4608, align: 512, elements: !3550)
!3550 = !{!3551, !3552, !3559}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3549, file: !3399, line: 334, baseType: !3435, size: 4096, align: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3549, file: !3399, line: 335, baseType: !3553, size: 512, offset: 4096)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3399, line: 312, size: 512, elements: !3554)
!3554 = !{!3555, !3556, !3557}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3553, file: !3399, line: 313, baseType: !471, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3553, file: !3399, line: 314, baseType: !471, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3553, file: !3399, line: 315, baseType: !3558, size: 384, offset: 128)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 384, elements: !967)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3549, file: !3399, line: 336, baseType: !3560, offset: 4608)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !1145)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3417, file: !3399, line: 353, baseType: !3562, size: 32768)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32768, elements: !3563)
!3563 = !{!3564}
!3564 = !DISubrange(count: 4096)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3398, file: !3399, line: 484, baseType: !3404, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3398, file: !3399, line: 491, baseType: !3567, size: 128, offset: 256)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3399, line: 404, size: 128, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3567, file: !3399, line: 424, baseType: !471, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3567, file: !3399, line: 432, baseType: !7, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3567, file: !3399, line: 440, baseType: !7, size: 32, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3398, file: !3399, line: 498, baseType: !3567, size: 128, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3398, file: !3399, line: 508, baseType: !3405, size: 33280, align: 512, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !392, file: !393, line: 31, baseType: !3575, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3577, line: 325, flags: DIFlagFwdDecl)
!3577 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !392, file: !393, line: 32, baseType: !7, size: 32, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !392, file: !393, line: 33, baseType: !391, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !392, file: !393, line: 35, baseType: !3581, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !393, line: 17, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !392, file: !393, line: 37, baseType: !854, size: 64, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !392, file: !393, line: 38, baseType: !1111, size: 64, offset: 768)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !392, file: !393, line: 39, baseType: !27, size: 32, offset: 832)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !392, file: !393, line: 40, baseType: !900, size: 192, offset: 896)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !392, file: !393, line: 42, baseType: !27, size: 32, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !333, file: !6, line: 951, baseType: !156, size: 32, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !333, file: !6, line: 952, baseType: !885, size: 32, offset: 160)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !333, file: !6, line: 952, baseType: !885, size: 32, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !333, file: !6, line: 953, baseType: !27, size: 32, offset: 224)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !292, file: !6, line: 1012, baseType: !1282, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !292, file: !6, line: 1013, baseType: !3594, size: 256, offset: 960)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !6, line: 970, size: 256, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3594, file: !6, line: 971, baseType: !44, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3594, file: !6, line: 972, baseType: !7, size: 32, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3594, file: !6, line: 973, baseType: !7, size: 32, offset: 96)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3594, file: !6, line: 974, baseType: !7, size: 32, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3594, file: !6, line: 975, baseType: !7, size: 32, offset: 160)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3594, file: !6, line: 976, baseType: !46, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !292, file: !6, line: 1014, baseType: !2238, size: 128, offset: 1216)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !292, file: !6, line: 1015, baseType: !1841, size: 64, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !292, file: !6, line: 1016, baseType: !279, size: 64, offset: 1408)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !292, file: !6, line: 1018, baseType: !471, size: 64, offset: 1472)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !292, file: !6, line: 1020, baseType: !25, size: 64, offset: 1536)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !292, file: !6, line: 1023, baseType: !25, size: 64, offset: 1600)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !292, file: !6, line: 1027, baseType: !3609, size: 64, offset: 1664)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !292, file: !6, line: 1029, baseType: !1837, size: 64, offset: 1728)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !292, file: !6, line: 1030, baseType: !2479, size: 32, offset: 1792)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !292, file: !6, line: 1031, baseType: !2479, size: 32, offset: 1824)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !281, file: !6, line: 1917, baseType: !3614, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!2117, !291, !989, !40, !45}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !281, file: !6, line: 1918, baseType: !3618, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!2117, !291, !21, !40, !45}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !281, file: !6, line: 1919, baseType: !2900, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !281, file: !6, line: 1920, baseType: !2900, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !281, file: !6, line: 1921, baseType: !3624, size: 64, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!27, !2903, !3627, !7}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !6, line: 53, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !281, file: !6, line: 1923, baseType: !3630, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!27, !291, !3633}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !6, line: 1858, size: 128, elements: !3635)
!3635 = !{!3636, !3641}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3634, file: !6, line: 1859, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !6, line: 1855, baseType: !3638)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!912, !3633, !21, !27, !46, !471, !7}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3634, file: !6, line: 1860, baseType: !46, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !281, file: !6, line: 1924, baseType: !3643, size: 64, offset: 512)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3646, !291, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3647, line: 59, baseType: !7)
!3647 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !6, line: 61, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !281, file: !6, line: 1925, baseType: !3651, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!1126, !291, !7, !44}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !281, file: !6, line: 1926, baseType: !3651, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !281, file: !6, line: 1927, baseType: !3656, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!27, !291, !3057}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !281, file: !6, line: 1928, baseType: !44, size: 64, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !281, file: !6, line: 1929, baseType: !3661, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!27, !1841, !291}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !281, file: !6, line: 1930, baseType: !3665, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!27, !291, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !6, line: 1061, baseType: !25)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !281, file: !6, line: 1931, baseType: !3661, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !281, file: !6, line: 1932, baseType: !3671, size: 64, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!27, !291, !46, !46, !27}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !281, file: !6, line: 1933, baseType: !3675, size: 64, offset: 1088)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!27, !27, !291, !27}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !281, file: !6, line: 1934, baseType: !3679, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!27, !291, !27, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !6, line: 1063, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !281, file: !6, line: 1935, baseType: !742, size: 64, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !281, file: !6, line: 1936, baseType: !3686, size: 64, offset: 1280)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!27, !27}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !281, file: !6, line: 1937, baseType: !3679, size: 64, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !281, file: !6, line: 1938, baseType: !3691, size: 64, offset: 1408)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!2117, !1809, !291, !45, !40, !7}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !281, file: !6, line: 1939, baseType: !3695, size: 64, offset: 1472)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!2117, !291, !45, !1809, !40, !7}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !281, file: !6, line: 1940, baseType: !2956, size: 64, offset: 1536)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !281, file: !6, line: 1941, baseType: !3700, size: 64, offset: 1600)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!27, !291, !27, !3703, !277}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !281, file: !6, line: 1942, baseType: !3705, size: 64, offset: 1664)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!1126, !291, !27, !46, !46}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !281, file: !6, line: 1944, baseType: !3709, size: 64, offset: 1728)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !2072, !291}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !281, file: !6, line: 1948, baseType: !3713, size: 64, offset: 1792)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!2117, !291, !46, !291, !46, !40, !7}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !281, file: !6, line: 1950, baseType: !3717, size: 64, offset: 1856)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!46, !291, !46, !291, !46, !46, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !281, file: !6, line: 1953, baseType: !3671, size: 64, offset: 1920)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !281, file: !6, line: 1954, baseType: !3722, size: 64, offset: 1984)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!27, !3725, !7}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !6, line: 1911, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !281, file: !6, line: 1955, baseType: !3728, size: 64, offset: 2048)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!27, !3725, !3627, !7}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !267, file: !268, line: 77, baseType: !3732, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_typedef, name: "eventfs_release", file: !268, line: 65, baseType: !3733)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !21, !25}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !209, line: 55, baseType: !21, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "entry_attrs", scope: !248, file: !209, line: 56, baseType: !3738, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_attr", file: !209, line: 26, size: 96, elements: !3740)
!3740 = !{!3741, !3742, !3743}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3739, file: !209, line: 27, baseType: !27, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3739, file: !209, line: 28, baseType: !885, size: 32, offset: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3739, file: !209, line: 29, baseType: !893, size: 32, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !248, file: !209, line: 57, baseType: !25, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !248, file: !209, line: 58, baseType: !3739, size: 96, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !248, file: !209, line: 59, baseType: !3747, size: 32, offset: 608)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3748, line: 19, size: 32, elements: !3749)
!3748 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3747, file: !3748, line: 20, baseType: !363, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "is_freed", scope: !248, file: !209, line: 60, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "is_events", scope: !248, file: !209, line: 61, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !248, file: !209, line: 62, baseType: !7, size: 30, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !248, file: !209, line: 63, baseType: !7, size: 32, offset: 672)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3758)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_root_inode", file: !3, line: 38, size: 832, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !3762, file: !3, line: 39, baseType: !248, size: 704)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "parent_inode", scope: !3762, file: !3, line: 40, baseType: !1841, size: 64, offset: 704)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "events_dir", scope: !3762, file: !3, line: 41, baseType: !1863, size: 64, offset: 768)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracefs_inode", file: !209, line: 12, size: 5056, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !3768, file: !209, line: 13, baseType: !1842, size: 4800)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3768, file: !209, line: 15, baseType: !102, size: 128, offset: 4800)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3768, file: !209, line: 16, baseType: !44, size: 64, offset: 4928)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3768, file: !209, line: 17, baseType: !25, size: 64, offset: 4992)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3776)
!3776 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3780 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!3781 = !{!3782, !3787, !3872, !3874, !3876, !0, !3881, !3883, !3885, !3887, !3890, !3893}
!3782 = !DIGlobalVariableExpression(var: !3783, expr: !DIExpression())
!3783 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !3784, isLocal: true, isDefinition: true)
!3784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 200, elements: !3785)
!3785 = !{!3786}
!3786 = !DISubrange(count: 25)
!3787 = !DIGlobalVariableExpression(var: !3788, expr: !DIExpression())
!3788 = distinct !DIGlobalVariable(name: "eventfs_srcu", scope: !2, file: !3, line: 69, type: !3789, isLocal: true, isDefinition: true)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3790, line: 96, size: 192, elements: !3791)
!3790 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3791 = !{!3792, !3793, !3836, !3838}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3789, file: !3790, line: 97, baseType: !7, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3789, file: !3790, line: 98, baseType: !3794, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3790, line: 24, size: 3072, elements: !3796)
!3796 = !{!3797, !3799, !3800, !3801, !3802, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3832, !3833, !3834}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3795, file: !3790, line: 26, baseType: !3798, size: 128)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 128, elements: !1461)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3795, file: !3790, line: 27, baseType: !3798, size: 128, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3795, file: !3790, line: 28, baseType: !27, size: 32, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3795, file: !3790, line: 31, baseType: !64, size: 32, align: 512, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3795, file: !3790, line: 32, baseType: !3803, size: 960, offset: 576)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3804, line: 206, size: 960, elements: !3805)
!3804 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3805 = !{!3806, !3807, !3810, !3812, !3813, !3814}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3803, file: !3804, line: 207, baseType: !258, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3803, file: !3804, line: 208, baseType: !3808, size: 256, offset: 64)
!3808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3809, size: 256, elements: !380)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3803, file: !3804, line: 209, baseType: !3811, size: 256, offset: 320)
!3811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !380)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3803, file: !3804, line: 213, baseType: !1126, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3803, file: !3804, line: 215, baseType: !1128, size: 256, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3803, file: !3804, line: 216, baseType: !88, size: 8, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3795, file: !3790, line: 33, baseType: !44, size: 64, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3795, file: !3790, line: 34, baseType: !44, size: 64, offset: 1600)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3795, file: !3790, line: 35, baseType: !912, size: 8, offset: 1664)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3795, file: !3790, line: 36, baseType: !3323, size: 320, offset: 1728)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3795, file: !3790, line: 37, baseType: !1028, size: 256, offset: 2048)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3795, file: !3790, line: 38, baseType: !255, size: 128, align: 64, offset: 2304)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3795, file: !3790, line: 39, baseType: !3822, size: 64, offset: 2432)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3790, line: 49, size: 768, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3823, file: !3790, line: 50, baseType: !64, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3823, file: !3790, line: 51, baseType: !3811, size: 256, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3823, file: !3790, line: 53, baseType: !3811, size: 256, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3823, file: !3790, line: 54, baseType: !44, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3823, file: !3790, line: 55, baseType: !3822, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3823, file: !3790, line: 56, baseType: !27, size: 32, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3823, file: !3790, line: 57, baseType: !27, size: 32, offset: 736)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3795, file: !3790, line: 40, baseType: !44, size: 64, offset: 2496)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3795, file: !3790, line: 42, baseType: !27, size: 32, offset: 2560)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3795, file: !3790, line: 43, baseType: !3835, size: 64, offset: 2624)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3789, file: !3790, line: 99, baseType: !3837, offset: 128)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2004, line: 211, elements: !738)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3789, file: !3790, line: 100, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3790, line: 63, size: 3008, elements: !3841)
!3841 = !{!3842, !3843, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3871}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3840, file: !3790, line: 64, baseType: !3822, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3840, file: !3790, line: 65, baseType: !3844, size: 192, offset: 64)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3822, size: 192, elements: !355)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3840, file: !3790, line: 67, baseType: !27, size: 32, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3840, file: !3790, line: 68, baseType: !318, size: 256, offset: 320)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3840, file: !3790, line: 69, baseType: !64, size: 32, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3840, file: !3790, line: 70, baseType: !318, size: 256, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3840, file: !3790, line: 71, baseType: !44, size: 64, offset: 896)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3840, file: !3790, line: 72, baseType: !44, size: 64, offset: 960)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3840, file: !3790, line: 73, baseType: !44, size: 64, offset: 1024)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3840, file: !3790, line: 74, baseType: !44, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3840, file: !3790, line: 75, baseType: !44, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3840, file: !3790, line: 76, baseType: !44, size: 64, offset: 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3840, file: !3790, line: 77, baseType: !44, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3840, file: !3790, line: 78, baseType: !44, size: 64, offset: 1344)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3840, file: !3790, line: 79, baseType: !912, size: 8, offset: 1408)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3840, file: !3790, line: 80, baseType: !44, size: 64, offset: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3840, file: !3790, line: 81, baseType: !318, size: 256, offset: 1536)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3840, file: !3790, line: 82, baseType: !1067, size: 256, offset: 1792)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3840, file: !3790, line: 84, baseType: !54, size: 32, offset: 2048)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3840, file: !3790, line: 87, baseType: !44, size: 64, offset: 2112)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3840, file: !3790, line: 88, baseType: !44, size: 64, offset: 2176)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3840, file: !3790, line: 89, baseType: !3865, size: 704, offset: 2240)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1029, line: 111, size: 704, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3865, file: !1029, line: 112, baseType: !1028, size: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3865, file: !1029, line: 113, baseType: !3323, size: 320, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3865, file: !1029, line: 116, baseType: !2482, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3865, file: !1029, line: 117, baseType: !27, size: 32, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3840, file: !3790, line: 90, baseType: !3835, size: 64, offset: 2944)
!3872 = !DIGlobalVariableExpression(var: !3873, expr: !DIExpression())
!3873 = distinct !DIGlobalVariable(name: "eventfs_srcu_srcu_data", scope: !2, file: !3, line: 69, type: !3795, isLocal: true, isDefinition: true)
!3874 = !DIGlobalVariableExpression(var: !3875, expr: !DIExpression())
!3875 = distinct !DIGlobalVariable(name: "eventfs_srcu_srcu_usage", scope: !2, file: !3, line: 69, type: !3840, isLocal: true, isDefinition: true)
!3876 = !DIGlobalVariableExpression(var: !3877, expr: !DIExpression())
!3877 = distinct !DIGlobalVariable(scope: null, file: !229, line: 480, type: !3878, isLocal: true, isDefinition: true)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 168, elements: !3879)
!3879 = !{!3880}
!3880 = !DISubrange(count: 21)
!3881 = !DIGlobalVariableExpression(var: !3882, expr: !DIExpression())
!3882 = distinct !DIGlobalVariable(name: "eventfs_dir_inode_operations", scope: !2, file: !3, line: 291, type: !1856, isLocal: true, isDefinition: true)
!3883 = !DIGlobalVariableExpression(var: !3884, expr: !DIExpression())
!3884 = distinct !DIGlobalVariable(name: "eventfs_file_inode_operations", scope: !2, file: !3, line: 298, type: !1856, isLocal: true, isDefinition: true)
!3885 = !DIGlobalVariableExpression(var: !3886, expr: !DIExpression())
!3886 = distinct !DIGlobalVariable(name: "eventfs_file_operations", scope: !2, file: !3, line: 302, type: !280, isLocal: true, isDefinition: true)
!3887 = !DIGlobalVariableExpression(var: !3888, expr: !DIExpression())
!3888 = distinct !DIGlobalVariable(scope: null, file: !6, line: 3425, type: !3889, isLocal: true, isDefinition: true)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !1461)
!3890 = !DIGlobalVariableExpression(var: !3891, expr: !DIExpression())
!3891 = distinct !DIGlobalVariable(scope: null, file: !6, line: 3430, type: !3892, isLocal: true, isDefinition: true)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !355)
!3893 = !DIGlobalVariableExpression(var: !3894, expr: !DIExpression())
!3894 = distinct !DIGlobalVariable(scope: null, file: !3895, line: 285, type: !3878, isLocal: true, isDefinition: true)
!3895 = !DIFile(filename: "./include/linux/srcu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3855d969f2ce3ac707545b2791ec624")
!3896 = !{i32 7, !"Dwarf Version", i32 5}
!3897 = !{i32 2, !"Debug Info Version", i32 3}
!3898 = !{i32 1, !"wchar_size", i32 2}
!3899 = !{i32 8, !"cf-protection-branch", i32 1}
!3900 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3901 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3902 = !{i32 1, !"Code Model", i32 2}
!3903 = !{i32 1, !"override-stack-alignment", i32 8}
!3904 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3905 = distinct !DISubprogram(name: "eventfs_remount", scope: !3, file: !3, line: 352, type: !3906, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3767, !912, !912}
!3908 = !{!3909, !3910, !3911, !3912}
!3909 = !DILocalVariable(name: "ti", arg: 1, scope: !3905, file: !3, line: 352, type: !3767)
!3910 = !DILocalVariable(name: "update_uid", arg: 2, scope: !3905, file: !3, line: 352, type: !912)
!3911 = !DILocalVariable(name: "update_gid", arg: 3, scope: !3905, file: !3, line: 352, type: !912)
!3912 = !DILocalVariable(name: "ei", scope: !3905, file: !3, line: 354, type: !247)
!3913 = !DILocation(line: 352, column: 44, scope: !3905)
!3914 = !DILocation(line: 352, column: 53, scope: !3905)
!3915 = !DILocation(line: 352, column: 70, scope: !3905)
!3916 = !DILocation(line: 354, column: 2, scope: !3905)
!3917 = !DILocation(line: 354, column: 24, scope: !3905)
!3918 = !DILocation(line: 354, column: 29, scope: !3905)
!3919 = !DILocation(line: 354, column: 33, scope: !3905)
!3920 = !DILocation(line: 357, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 357, column: 6)
!3922 = !DILocation(line: 357, column: 10, scope: !3921)
!3923 = !DILocation(line: 357, column: 14, scope: !3921)
!3924 = !DILocation(line: 357, column: 18, scope: !3921)
!3925 = !DILocation(line: 357, column: 28, scope: !3921)
!3926 = !DILocation(line: 357, column: 31, scope: !3921)
!3927 = !DILocation(line: 357, column: 35, scope: !3921)
!3928 = !DILocation(line: 357, column: 6, scope: !3905)
!3929 = !DILocation(line: 358, column: 3, scope: !3921)
!3930 = !DILocation(line: 360, column: 20, scope: !3905)
!3931 = !DILocation(line: 360, column: 24, scope: !3905)
!3932 = !{i8 0, i8 2}
!3933 = !DILocation(line: 360, column: 36, scope: !3905)
!3934 = !DILocation(line: 360, column: 40, scope: !3905)
!3935 = !DILocation(line: 360, column: 50, scope: !3905)
!3936 = !DILocation(line: 361, column: 6, scope: !3905)
!3937 = !DILocation(line: 361, column: 18, scope: !3905)
!3938 = !DILocation(line: 361, column: 22, scope: !3905)
!3939 = !DILocation(line: 361, column: 32, scope: !3905)
!3940 = !DILocation(line: 360, column: 2, scope: !3905)
!3941 = !DILocation(line: 362, column: 1, scope: !3905)
!3942 = distinct !DISubprogram(name: "eventfs_set_attrs", scope: !3, file: !3, line: 308, type: !3943, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !247, !912, !885, !912, !893, !27}
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3956, !3959, !3962, !3965}
!3946 = !DILocalVariable(name: "ei", arg: 1, scope: !3942, file: !3, line: 308, type: !247)
!3947 = !DILocalVariable(name: "update_uid", arg: 2, scope: !3942, file: !3, line: 308, type: !912)
!3948 = !DILocalVariable(name: "uid", arg: 3, scope: !3942, file: !3, line: 308, type: !885)
!3949 = !DILocalVariable(name: "update_gid", arg: 4, scope: !3942, file: !3, line: 309, type: !912)
!3950 = !DILocalVariable(name: "gid", arg: 5, scope: !3942, file: !3, line: 309, type: !893)
!3951 = !DILocalVariable(name: "level", arg: 6, scope: !3942, file: !3, line: 309, type: !27)
!3952 = !DILocalVariable(name: "ei_child", scope: !3942, file: !3, line: 311, type: !247)
!3953 = !DILocalVariable(name: "__ret_warn_on", scope: !3954, file: !3, line: 314, type: !27)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 314, column: 6)
!3955 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 314, column: 6)
!3956 = !DILocalVariable(name: "__flags", scope: !3957, file: !3, line: 314, type: !27)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 314, column: 6)
!3958 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 314, column: 6)
!3959 = !DILocalVariable(name: "__mptr", scope: !3960, file: !3, line: 327, type: !25)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 327, column: 2)
!3961 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 327, column: 2)
!3962 = !DILocalVariable(name: "__mptr", scope: !3963, file: !3, line: 327, type: !25)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 327, column: 2)
!3964 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 327, column: 2)
!3965 = !DILocalVariable(name: "i", scope: !3966, file: !3, line: 334, type: !27)
!3966 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 334, column: 2)
!3967 = !DILocation(line: 308, column: 53, scope: !3942)
!3968 = !DILocation(line: 308, column: 62, scope: !3942)
!3969 = !DILocation(line: 308, column: 81, scope: !3942)
!3970 = !DILocation(line: 309, column: 15, scope: !3942)
!3971 = !DILocation(line: 309, column: 34, scope: !3942)
!3972 = !DILocation(line: 309, column: 43, scope: !3942)
!3973 = !DILocation(line: 311, column: 2, scope: !3942)
!3974 = !DILocation(line: 311, column: 24, scope: !3942)
!3975 = !DILocation(line: 314, column: 6, scope: !3954)
!3976 = !DILocation(line: 314, column: 6, scope: !3958)
!3977 = !DILocation(line: 314, column: 6, scope: !3957)
!3978 = !DILocation(line: 314, column: 6, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 314, column: 6)
!3980 = !DILocation(line: 314, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 314, column: 6)
!3982 = !{i64 2154428455, i64 2154428484, i64 2154428530, i64 2154428588, i64 2154428642, i64 2154428696, i64 2154428751, i64 2154428782, i64 2154429090, i64 2154429096, i64 2154429143, i64 2154429166, i64 2154429192}
!3983 = !DILocation(line: 314, column: 6, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 314, column: 6)
!3985 = !DILocation(line: 314, column: 6, scope: !3955)
!3986 = !DILocation(line: 314, column: 6, scope: !3942)
!3987 = !DILocation(line: 315, column: 3, scope: !3955)
!3988 = !DILocation(line: 317, column: 6, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 317, column: 6)
!3990 = !DILocation(line: 317, column: 6, scope: !3942)
!3991 = !DILocation(line: 318, column: 3, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 317, column: 18)
!3993 = !DILocation(line: 318, column: 7, scope: !3992)
!3994 = !DILocation(line: 318, column: 12, scope: !3992)
!3995 = !DILocation(line: 318, column: 17, scope: !3992)
!3996 = !DILocation(line: 319, column: 3, scope: !3992)
!3997 = !DILocation(line: 319, column: 7, scope: !3992)
!3998 = !DILocation(line: 319, column: 12, scope: !3992)
!3999 = !DILocation(line: 319, column: 18, scope: !3992)
!4000 = !DILocation(line: 320, column: 2, scope: !3992)
!4001 = !DILocation(line: 322, column: 6, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 322, column: 6)
!4003 = !DILocation(line: 322, column: 6, scope: !3942)
!4004 = !DILocation(line: 323, column: 3, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 322, column: 18)
!4006 = !DILocation(line: 323, column: 7, scope: !4005)
!4007 = !DILocation(line: 323, column: 12, scope: !4005)
!4008 = !DILocation(line: 323, column: 17, scope: !4005)
!4009 = !DILocation(line: 324, column: 3, scope: !4005)
!4010 = !DILocation(line: 324, column: 7, scope: !4005)
!4011 = !DILocation(line: 324, column: 12, scope: !4005)
!4012 = !DILocation(line: 324, column: 18, scope: !4005)
!4013 = !DILocation(line: 325, column: 2, scope: !4005)
!4014 = !DILocation(line: 327, column: 2, scope: !3960)
!4015 = !DILocation(line: 327, column: 2, scope: !3961)
!4016 = !DILocation(line: 327, column: 2, scope: !3964)
!4017 = !DILocation(line: 328, column: 21, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 327, column: 53)
!4019 = !DILocation(line: 328, column: 31, scope: !4018)
!4020 = !DILocation(line: 328, column: 48, scope: !4018)
!4021 = !DILocation(line: 328, column: 65, scope: !4018)
!4022 = !DILocation(line: 328, column: 71, scope: !4018)
!4023 = !DILocation(line: 328, column: 3, scope: !4018)
!4024 = !DILocation(line: 329, column: 2, scope: !4018)
!4025 = !DILocation(line: 327, column: 2, scope: !3963)
!4026 = distinct !{!4026, !4015, !4027, !4028, !4029}
!4027 = !DILocation(line: 329, column: 2, scope: !3961)
!4028 = !{!"llvm.loop.mustprogress"}
!4029 = !{!"llvm.loop.unroll.disable"}
!4030 = !DILocation(line: 331, column: 7, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 331, column: 6)
!4032 = !DILocation(line: 331, column: 11, scope: !4031)
!4033 = !DILocation(line: 331, column: 6, scope: !3942)
!4034 = !DILocation(line: 332, column: 3, scope: !4031)
!4035 = !DILocation(line: 334, column: 7, scope: !3966)
!4036 = !DILocation(line: 334, column: 11, scope: !3966)
!4037 = !DILocation(line: 334, column: 18, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 334, column: 2)
!4039 = !DILocation(line: 334, column: 22, scope: !4038)
!4040 = !DILocation(line: 334, column: 26, scope: !4038)
!4041 = !DILocation(line: 334, column: 20, scope: !4038)
!4042 = !DILocation(line: 334, column: 2, scope: !3966)
!4043 = !DILocation(line: 334, column: 2, scope: !4038)
!4044 = !DILocation(line: 335, column: 7, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 335, column: 7)
!4046 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 334, column: 43)
!4047 = !DILocation(line: 335, column: 7, scope: !4046)
!4048 = !DILocation(line: 336, column: 4, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 335, column: 19)
!4050 = !DILocation(line: 336, column: 8, scope: !4049)
!4051 = !DILocation(line: 336, column: 20, scope: !4049)
!4052 = !DILocation(line: 336, column: 23, scope: !4049)
!4053 = !DILocation(line: 336, column: 28, scope: !4049)
!4054 = !DILocation(line: 337, column: 4, scope: !4049)
!4055 = !DILocation(line: 337, column: 8, scope: !4049)
!4056 = !DILocation(line: 337, column: 20, scope: !4049)
!4057 = !DILocation(line: 337, column: 23, scope: !4049)
!4058 = !DILocation(line: 337, column: 29, scope: !4049)
!4059 = !DILocation(line: 338, column: 3, scope: !4049)
!4060 = !DILocation(line: 339, column: 7, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 339, column: 7)
!4062 = !DILocation(line: 339, column: 7, scope: !4046)
!4063 = !DILocation(line: 340, column: 4, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 339, column: 19)
!4065 = !DILocation(line: 340, column: 8, scope: !4064)
!4066 = !DILocation(line: 340, column: 20, scope: !4064)
!4067 = !DILocation(line: 340, column: 23, scope: !4064)
!4068 = !DILocation(line: 340, column: 28, scope: !4064)
!4069 = !DILocation(line: 341, column: 4, scope: !4064)
!4070 = !DILocation(line: 341, column: 8, scope: !4064)
!4071 = !DILocation(line: 341, column: 20, scope: !4064)
!4072 = !DILocation(line: 341, column: 23, scope: !4064)
!4073 = !DILocation(line: 341, column: 29, scope: !4064)
!4074 = !DILocation(line: 342, column: 3, scope: !4064)
!4075 = !DILocation(line: 343, column: 2, scope: !4046)
!4076 = !DILocation(line: 334, column: 39, scope: !4038)
!4077 = distinct !{!4077, !4042, !4078, !4028, !4029}
!4078 = !DILocation(line: 343, column: 2, scope: !3966)
!4079 = !DILocation(line: 345, column: 1, scope: !3942)
!4080 = distinct !DISubprogram(name: "eventfs_d_release", scope: !3, file: !3, line: 552, type: !1944, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "dentry", arg: 1, scope: !4080, file: !3, line: 552, type: !1863)
!4083 = !DILocation(line: 552, column: 39, scope: !4080)
!4084 = !DILocation(line: 554, column: 9, scope: !4080)
!4085 = !DILocation(line: 554, column: 17, scope: !4080)
!4086 = !DILocation(line: 554, column: 2, scope: !4080)
!4087 = !DILocation(line: 555, column: 1, scope: !4080)
!4088 = distinct !DISubprogram(name: "put_ei", scope: !3, file: !3, line: 119, type: !4089, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !247}
!4091 = !{!4092}
!4092 = !DILocalVariable(name: "ei", arg: 1, scope: !4088, file: !3, line: 119, type: !247)
!4093 = !DILocation(line: 119, column: 49, scope: !4088)
!4094 = !DILocation(line: 121, column: 6, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 121, column: 6)
!4096 = !DILocation(line: 121, column: 6, scope: !4088)
!4097 = !DILocation(line: 122, column: 13, scope: !4095)
!4098 = !DILocation(line: 122, column: 17, scope: !4095)
!4099 = !DILocation(line: 122, column: 3, scope: !4095)
!4100 = !DILocation(line: 123, column: 1, scope: !4088)
!4101 = distinct !DISubprogram(name: "eventfs_create_dir", scope: !3, file: !3, line: 782, type: !4102, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!247, !21, !247, !265, !27, !25}
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110}
!4105 = !DILocalVariable(name: "name", arg: 1, scope: !4101, file: !3, line: 782, type: !21)
!4106 = !DILocalVariable(name: "parent", arg: 2, scope: !4101, file: !3, line: 782, type: !247)
!4107 = !DILocalVariable(name: "entries", arg: 3, scope: !4101, file: !3, line: 783, type: !265)
!4108 = !DILocalVariable(name: "size", arg: 4, scope: !4101, file: !3, line: 784, type: !27)
!4109 = !DILocalVariable(name: "data", arg: 5, scope: !4101, file: !3, line: 784, type: !25)
!4110 = !DILocalVariable(name: "ei", scope: !4101, file: !3, line: 786, type: !247)
!4111 = !DILocation(line: 782, column: 54, scope: !4101)
!4112 = !DILocation(line: 782, column: 82, scope: !4101)
!4113 = !DILocation(line: 783, column: 35, scope: !4101)
!4114 = !DILocation(line: 784, column: 11, scope: !4101)
!4115 = !DILocation(line: 784, column: 23, scope: !4101)
!4116 = !DILocation(line: 786, column: 2, scope: !4101)
!4117 = !DILocation(line: 786, column: 24, scope: !4101)
!4118 = !DILocation(line: 788, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 788, column: 6)
!4120 = !DILocation(line: 788, column: 6, scope: !4101)
!4121 = !DILocation(line: 789, column: 10, scope: !4119)
!4122 = !DILocation(line: 789, column: 3, scope: !4119)
!4123 = !DILocation(line: 791, column: 16, scope: !4101)
!4124 = !DILocation(line: 791, column: 7, scope: !4101)
!4125 = !DILocation(line: 791, column: 5, scope: !4101)
!4126 = !DILocation(line: 792, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 792, column: 6)
!4128 = !DILocation(line: 792, column: 6, scope: !4101)
!4129 = !DILocation(line: 793, column: 10, scope: !4127)
!4130 = !DILocation(line: 793, column: 3, scope: !4127)
!4131 = !DILocation(line: 795, column: 16, scope: !4101)
!4132 = !DILocation(line: 795, column: 2, scope: !4101)
!4133 = !DILocation(line: 795, column: 6, scope: !4101)
!4134 = !DILocation(line: 795, column: 14, scope: !4101)
!4135 = !DILocation(line: 796, column: 19, scope: !4101)
!4136 = !DILocation(line: 796, column: 2, scope: !4101)
!4137 = !DILocation(line: 796, column: 6, scope: !4101)
!4138 = !DILocation(line: 796, column: 17, scope: !4101)
!4139 = !DILocation(line: 797, column: 13, scope: !4101)
!4140 = !DILocation(line: 797, column: 2, scope: !4101)
!4141 = !DILocation(line: 797, column: 6, scope: !4101)
!4142 = !DILocation(line: 797, column: 11, scope: !4101)
!4143 = !DILocation(line: 798, column: 18, scope: !4101)
!4144 = !DILocation(line: 798, column: 22, scope: !4101)
!4145 = !DILocation(line: 798, column: 2, scope: !4101)
!4146 = !DILocation(line: 799, column: 18, scope: !4101)
!4147 = !DILocation(line: 799, column: 22, scope: !4101)
!4148 = !DILocation(line: 799, column: 2, scope: !4101)
!4149 = !DILocation(line: 801, column: 2, scope: !4101)
!4150 = !DILocation(line: 802, column: 7, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 802, column: 6)
!4152 = !DILocation(line: 802, column: 15, scope: !4151)
!4153 = !DILocation(line: 802, column: 6, scope: !4101)
!4154 = !DILocation(line: 803, column: 18, scope: !4151)
!4155 = !DILocation(line: 803, column: 22, scope: !4151)
!4156 = !DILocation(line: 803, column: 29, scope: !4151)
!4157 = !DILocation(line: 803, column: 37, scope: !4151)
!4158 = !DILocation(line: 803, column: 3, scope: !4151)
!4159 = !DILocation(line: 804, column: 2, scope: !4101)
!4160 = !DILocation(line: 807, column: 18, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 807, column: 6)
!4162 = !DILocation(line: 807, column: 22, scope: !4161)
!4163 = !DILocation(line: 807, column: 6, scope: !4161)
!4164 = !DILocation(line: 807, column: 6, scope: !4101)
!4165 = !DILocation(line: 808, column: 14, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 807, column: 29)
!4167 = !DILocation(line: 808, column: 3, scope: !4166)
!4168 = !DILocation(line: 809, column: 8, scope: !4166)
!4169 = !DILocation(line: 809, column: 6, scope: !4166)
!4170 = !DILocation(line: 810, column: 2, scope: !4166)
!4171 = !DILocation(line: 811, column: 9, scope: !4101)
!4172 = !DILocation(line: 811, column: 2, scope: !4101)
!4173 = !DILocation(line: 812, column: 1, scope: !4101)
!4174 = distinct !DISubprogram(name: "ERR_PTR", scope: !4175, file: !4175, line: 39, type: !4176, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4178)
!4175 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!25, !1126}
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "error", arg: 1, scope: !4174, file: !4175, line: 39, type: !1126)
!4180 = !DILocation(line: 39, column: 48, scope: !4174)
!4181 = !DILocation(line: 41, column: 18, scope: !4174)
!4182 = !DILocation(line: 41, column: 9, scope: !4174)
!4183 = !DILocation(line: 41, column: 2, scope: !4174)
!4184 = distinct !DISubprogram(name: "alloc_ei", scope: !3, file: !3, line: 515, type: !4185, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!247, !21}
!4187 = !{!4188, !4189, !4190}
!4188 = !DILocalVariable(name: "name", arg: 1, scope: !4184, file: !3, line: 515, type: !21)
!4189 = !DILocalVariable(name: "ei", scope: !4184, file: !3, line: 517, type: !247)
!4190 = !DILocalVariable(name: "result", scope: !4184, file: !3, line: 518, type: !247)
!4191 = !DILocation(line: 515, column: 58, scope: !4184)
!4192 = !DILocation(line: 517, column: 2, scope: !4184)
!4193 = !DILocation(line: 517, column: 24, scope: !4184)
!4194 = !DILocation(line: 517, column: 29, scope: !4184)
!4195 = !DILocation(line: 518, column: 2, scope: !4184)
!4196 = !DILocation(line: 518, column: 24, scope: !4184)
!4197 = !DILocation(line: 520, column: 7, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 520, column: 6)
!4199 = !DILocation(line: 520, column: 6, scope: !4184)
!4200 = !DILocation(line: 521, column: 3, scope: !4198)
!4201 = !DILocation(line: 523, column: 19, scope: !4184)
!4202 = !DILocation(line: 523, column: 23, scope: !4184)
!4203 = !DILocation(line: 523, column: 11, scope: !4184)
!4204 = !DILocation(line: 523, column: 9, scope: !4184)
!4205 = !DILocation(line: 524, column: 7, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 524, column: 6)
!4207 = !DILocation(line: 524, column: 6, scope: !4184)
!4208 = !DILocation(line: 525, column: 9, scope: !4206)
!4209 = !DILocation(line: 525, column: 3, scope: !4206)
!4210 = !DILocation(line: 527, column: 9, scope: !4184)
!4211 = !DILocation(line: 527, column: 2, scope: !4184)
!4212 = !DILocation(line: 528, column: 1, scope: !4184)
!4213 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4214, file: !4214, line: 35, type: !4215, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4214 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !105}
!4217 = !{!4218}
!4218 = !DILocalVariable(name: "list", arg: 1, scope: !4213, file: !4214, line: 35, type: !105)
!4219 = !DILocation(line: 35, column: 53, scope: !4213)
!4220 = !DILocation(line: 37, column: 2, scope: !4213)
!4221 = !DILocation(line: 37, column: 2, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4213, file: !4214, line: 37, column: 2)
!4223 = !DILocation(line: 37, column: 2, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4222, file: !4214, line: 37, column: 2)
!4225 = !DILocation(line: 37, column: 2, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !4214, line: 37, column: 2)
!4227 = !DILocation(line: 38, column: 2, scope: !4213)
!4228 = !DILocation(line: 38, column: 2, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4213, file: !4214, line: 38, column: 2)
!4230 = !DILocation(line: 38, column: 2, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4229, file: !4214, line: 38, column: 2)
!4232 = !DILocation(line: 38, column: 2, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !4214, line: 38, column: 2)
!4234 = !DILocation(line: 39, column: 1, scope: !4213)
!4235 = !DISubprogram(name: "mutex_lock", scope: !319, file: !319, line: 227, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !4238}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!4239 = distinct !DISubprogram(name: "list_add_tail", scope: !4214, file: !4214, line: 181, type: !4240, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !105, !105}
!4242 = !{!4243, !4244}
!4243 = !DILocalVariable(name: "new", arg: 1, scope: !4239, file: !4214, line: 181, type: !105)
!4244 = !DILocalVariable(name: "head", arg: 2, scope: !4239, file: !4214, line: 181, type: !105)
!4245 = !DILocation(line: 181, column: 52, scope: !4239)
!4246 = !DILocation(line: 181, column: 75, scope: !4239)
!4247 = !DILocation(line: 183, column: 13, scope: !4239)
!4248 = !DILocation(line: 183, column: 18, scope: !4239)
!4249 = !DILocation(line: 183, column: 24, scope: !4239)
!4250 = !DILocation(line: 183, column: 30, scope: !4239)
!4251 = !DILocation(line: 183, column: 2, scope: !4239)
!4252 = !DILocation(line: 184, column: 1, scope: !4239)
!4253 = !DISubprogram(name: "mutex_unlock", scope: !319, file: !319, line: 246, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4254 = distinct !DISubprogram(name: "list_empty", scope: !4214, file: !4214, line: 371, type: !4255, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4259)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!27, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "head", arg: 1, scope: !4254, file: !4214, line: 371, type: !4257)
!4261 = !DILocation(line: 371, column: 54, scope: !4254)
!4262 = !DILocation(line: 373, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4254, file: !4214, line: 373, column: 9)
!4264 = !DILocation(line: 373, column: 9, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4263, file: !4214, line: 373, column: 9)
!4266 = !DILocation(line: 373, column: 34, scope: !4254)
!4267 = !DILocation(line: 373, column: 31, scope: !4254)
!4268 = !DILocation(line: 373, column: 2, scope: !4254)
!4269 = distinct !DISubprogram(name: "cleanup_ei", scope: !3, file: !3, line: 136, type: !4089, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4270)
!4270 = !{!4271}
!4271 = !DILocalVariable(name: "ei", arg: 1, scope: !4269, file: !3, line: 136, type: !247)
!4272 = !DILocation(line: 136, column: 53, scope: !4269)
!4273 = !DILocation(line: 138, column: 6, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 138, column: 6)
!4275 = !DILocation(line: 138, column: 6, scope: !4269)
!4276 = !DILocation(line: 140, column: 3, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 138, column: 10)
!4278 = !DILocation(line: 140, column: 7, scope: !4277)
!4279 = !DILocation(line: 140, column: 18, scope: !4277)
!4280 = !DILocation(line: 141, column: 11, scope: !4277)
!4281 = !DILocation(line: 141, column: 3, scope: !4277)
!4282 = !DILocation(line: 142, column: 2, scope: !4277)
!4283 = !DILocation(line: 143, column: 1, scope: !4269)
!4284 = distinct !DISubprogram(name: "eventfs_create_events_dir", scope: !3, file: !3, line: 826, type: !4285, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!247, !21, !1863, !265, !27, !25}
!4287 = !{!4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4288 = !DILocalVariable(name: "name", arg: 1, scope: !4284, file: !3, line: 826, type: !21)
!4289 = !DILocalVariable(name: "parent", arg: 2, scope: !4284, file: !3, line: 826, type: !1863)
!4290 = !DILocalVariable(name: "entries", arg: 3, scope: !4284, file: !3, line: 827, type: !265)
!4291 = !DILocalVariable(name: "size", arg: 4, scope: !4284, file: !3, line: 828, type: !27)
!4292 = !DILocalVariable(name: "data", arg: 5, scope: !4284, file: !3, line: 828, type: !25)
!4293 = !DILocalVariable(name: "dentry", scope: !4284, file: !3, line: 830, type: !1863)
!4294 = !DILocalVariable(name: "rei", scope: !4284, file: !3, line: 831, type: !3761)
!4295 = !DILocalVariable(name: "ei", scope: !4284, file: !3, line: 832, type: !247)
!4296 = !DILocalVariable(name: "ti", scope: !4284, file: !3, line: 833, type: !3767)
!4297 = !DILocalVariable(name: "inode", scope: !4284, file: !3, line: 834, type: !1841)
!4298 = !DILocalVariable(name: "uid", scope: !4284, file: !3, line: 835, type: !885)
!4299 = !DILocalVariable(name: "gid", scope: !4284, file: !3, line: 836, type: !893)
!4300 = !DILabel(scope: !4284, name: "fail", file: !3, line: 906)
!4301 = !DILocation(line: 826, column: 61, scope: !4284)
!4302 = !DILocation(line: 826, column: 82, scope: !4284)
!4303 = !DILocation(line: 827, column: 35, scope: !4284)
!4304 = !DILocation(line: 828, column: 11, scope: !4284)
!4305 = !DILocation(line: 828, column: 23, scope: !4284)
!4306 = !DILocation(line: 830, column: 2, scope: !4284)
!4307 = !DILocation(line: 830, column: 17, scope: !4284)
!4308 = !DILocation(line: 830, column: 49, scope: !4284)
!4309 = !DILocation(line: 830, column: 55, scope: !4284)
!4310 = !DILocation(line: 830, column: 26, scope: !4284)
!4311 = !DILocation(line: 831, column: 2, scope: !4284)
!4312 = !DILocation(line: 831, column: 29, scope: !4284)
!4313 = !DILocation(line: 832, column: 2, scope: !4284)
!4314 = !DILocation(line: 832, column: 24, scope: !4284)
!4315 = !DILocation(line: 833, column: 2, scope: !4284)
!4316 = !DILocation(line: 833, column: 24, scope: !4284)
!4317 = !DILocation(line: 834, column: 2, scope: !4284)
!4318 = !DILocation(line: 834, column: 16, scope: !4284)
!4319 = !DILocation(line: 835, column: 2, scope: !4284)
!4320 = !DILocation(line: 835, column: 9, scope: !4284)
!4321 = !DILocation(line: 836, column: 2, scope: !4284)
!4322 = !DILocation(line: 836, column: 9, scope: !4284)
!4323 = !DILocation(line: 838, column: 6, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 838, column: 6)
!4325 = !DILocation(line: 838, column: 6, scope: !4284)
!4326 = !DILocation(line: 839, column: 3, scope: !4324)
!4327 = !DILocation(line: 841, column: 13, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 841, column: 6)
!4329 = !DILocation(line: 841, column: 6, scope: !4328)
!4330 = !DILocation(line: 841, column: 6, scope: !4284)
!4331 = !DILocation(line: 842, column: 19, scope: !4328)
!4332 = !DILocation(line: 842, column: 10, scope: !4328)
!4333 = !DILocation(line: 842, column: 3, scope: !4328)
!4334 = !DILocation(line: 844, column: 21, scope: !4284)
!4335 = !DILocation(line: 844, column: 7, scope: !4284)
!4336 = !DILocation(line: 844, column: 5, scope: !4284)
!4337 = !DILocation(line: 845, column: 7, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 845, column: 6)
!4339 = !DILocation(line: 845, column: 6, scope: !4284)
!4340 = !DILocation(line: 846, column: 3, scope: !4338)
!4341 = !DILocation(line: 848, column: 28, scope: !4284)
!4342 = !DILocation(line: 848, column: 36, scope: !4284)
!4343 = !DILocation(line: 848, column: 10, scope: !4284)
!4344 = !DILocation(line: 848, column: 8, scope: !4284)
!4345 = !DILocation(line: 849, column: 6, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 849, column: 6)
!4347 = !DILocation(line: 849, column: 6, scope: !4284)
!4348 = !DILocation(line: 850, column: 3, scope: !4346)
!4349 = !DILocation(line: 853, column: 23, scope: !4284)
!4350 = !DILocation(line: 853, column: 8, scope: !4284)
!4351 = !DILocation(line: 853, column: 6, scope: !4284)
!4352 = !DILocation(line: 854, column: 20, scope: !4284)
!4353 = !DILocation(line: 854, column: 2, scope: !4284)
!4354 = !DILocation(line: 854, column: 7, scope: !4284)
!4355 = !DILocation(line: 854, column: 18, scope: !4284)
!4356 = !DILocation(line: 855, column: 30, scope: !4284)
!4357 = !DILocation(line: 855, column: 38, scope: !4284)
!4358 = !DILocation(line: 855, column: 44, scope: !4284)
!4359 = !DILocation(line: 855, column: 22, scope: !4284)
!4360 = !DILocation(line: 855, column: 2, scope: !4284)
!4361 = !DILocation(line: 855, column: 7, scope: !4284)
!4362 = !DILocation(line: 855, column: 20, scope: !4284)
!4363 = !DILocation(line: 857, column: 16, scope: !4284)
!4364 = !DILocation(line: 857, column: 2, scope: !4284)
!4365 = !DILocation(line: 857, column: 6, scope: !4284)
!4366 = !DILocation(line: 857, column: 14, scope: !4284)
!4367 = !DILocation(line: 858, column: 19, scope: !4284)
!4368 = !DILocation(line: 858, column: 2, scope: !4284)
!4369 = !DILocation(line: 858, column: 6, scope: !4284)
!4370 = !DILocation(line: 858, column: 17, scope: !4284)
!4371 = !DILocation(line: 859, column: 13, scope: !4284)
!4372 = !DILocation(line: 859, column: 2, scope: !4284)
!4373 = !DILocation(line: 859, column: 6, scope: !4284)
!4374 = !DILocation(line: 859, column: 11, scope: !4284)
!4375 = !DILocation(line: 862, column: 16, scope: !4284)
!4376 = !DILocation(line: 862, column: 24, scope: !4284)
!4377 = !DILocation(line: 862, column: 8, scope: !4284)
!4378 = !DILocation(line: 862, column: 35, scope: !4284)
!4379 = !DILocation(line: 863, column: 16, scope: !4284)
!4380 = !DILocation(line: 863, column: 24, scope: !4284)
!4381 = !DILocation(line: 863, column: 8, scope: !4284)
!4382 = !DILocation(line: 863, column: 35, scope: !4284)
!4383 = !DILocation(line: 865, column: 2, scope: !4284)
!4384 = !DILocation(line: 865, column: 6, scope: !4284)
!4385 = !DILocation(line: 865, column: 11, scope: !4284)
!4386 = !DILocation(line: 865, column: 17, scope: !4284)
!4387 = !DILocation(line: 866, column: 2, scope: !4284)
!4388 = !DILocation(line: 866, column: 6, scope: !4284)
!4389 = !DILocation(line: 866, column: 11, scope: !4284)
!4390 = !DILocation(line: 866, column: 17, scope: !4284)
!4391 = !DILocation(line: 872, column: 2, scope: !4284)
!4392 = !DILocation(line: 872, column: 6, scope: !4284)
!4393 = !DILocation(line: 872, column: 11, scope: !4284)
!4394 = !DILocation(line: 872, column: 16, scope: !4284)
!4395 = !DILocation(line: 874, column: 18, scope: !4284)
!4396 = !DILocation(line: 874, column: 22, scope: !4284)
!4397 = !DILocation(line: 874, column: 2, scope: !4284)
!4398 = !DILocation(line: 875, column: 18, scope: !4284)
!4399 = !DILocation(line: 875, column: 22, scope: !4284)
!4400 = !DILocation(line: 875, column: 2, scope: !4284)
!4401 = !DILocation(line: 877, column: 19, scope: !4284)
!4402 = !DILocation(line: 877, column: 7, scope: !4284)
!4403 = !DILocation(line: 877, column: 5, scope: !4284)
!4404 = !DILocation(line: 878, column: 2, scope: !4284)
!4405 = !DILocation(line: 878, column: 6, scope: !4284)
!4406 = !DILocation(line: 878, column: 12, scope: !4284)
!4407 = !DILocation(line: 879, column: 16, scope: !4284)
!4408 = !DILocation(line: 879, column: 2, scope: !4284)
!4409 = !DILocation(line: 879, column: 6, scope: !4284)
!4410 = !DILocation(line: 879, column: 14, scope: !4284)
!4411 = !DILocation(line: 881, column: 2, scope: !4284)
!4412 = !DILocation(line: 881, column: 9, scope: !4284)
!4413 = !DILocation(line: 881, column: 16, scope: !4284)
!4414 = !DILocation(line: 882, column: 2, scope: !4284)
!4415 = !DILocation(line: 882, column: 9, scope: !4284)
!4416 = !DILocation(line: 882, column: 17, scope: !4284)
!4417 = !DILocation(line: 883, column: 2, scope: !4284)
!4418 = !DILocation(line: 883, column: 9, scope: !4284)
!4419 = !DILocation(line: 883, column: 17, scope: !4284)
!4420 = !DILocation(line: 884, column: 2, scope: !4284)
!4421 = !DILocation(line: 884, column: 9, scope: !4284)
!4422 = !DILocation(line: 884, column: 14, scope: !4284)
!4423 = !DILocation(line: 885, column: 2, scope: !4284)
!4424 = !DILocation(line: 885, column: 9, scope: !4284)
!4425 = !DILocation(line: 885, column: 15, scope: !4284)
!4426 = !DILocation(line: 887, column: 28, scope: !4284)
!4427 = !DILocation(line: 887, column: 21, scope: !4284)
!4428 = !DILocation(line: 887, column: 2, scope: !4284)
!4429 = !DILocation(line: 887, column: 10, scope: !4284)
!4430 = !DILocation(line: 887, column: 19, scope: !4284)
!4431 = !DILocation(line: 898, column: 16, scope: !4284)
!4432 = !DILocation(line: 898, column: 24, scope: !4284)
!4433 = !DILocation(line: 898, column: 2, scope: !4284)
!4434 = !DILocation(line: 900, column: 12, scope: !4284)
!4435 = !DILocation(line: 900, column: 20, scope: !4284)
!4436 = !DILocation(line: 900, column: 30, scope: !4284)
!4437 = !DILocation(line: 900, column: 2, scope: !4284)
!4438 = !DILocation(line: 901, column: 17, scope: !4284)
!4439 = !DILocation(line: 901, column: 25, scope: !4284)
!4440 = !DILocation(line: 901, column: 35, scope: !4284)
!4441 = !DILocation(line: 901, column: 44, scope: !4284)
!4442 = !DILocation(line: 901, column: 2, scope: !4284)
!4443 = !DILocation(line: 902, column: 23, scope: !4284)
!4444 = !DILocation(line: 902, column: 2, scope: !4284)
!4445 = !DILocation(line: 904, column: 9, scope: !4284)
!4446 = !DILocation(line: 904, column: 2, scope: !4284)
!4447 = !DILocation(line: 906, column: 2, scope: !4284)
!4448 = !DILocation(line: 907, column: 13, scope: !4284)
!4449 = !DILocation(line: 907, column: 2, scope: !4284)
!4450 = !DILocation(line: 908, column: 26, scope: !4284)
!4451 = !DILocation(line: 908, column: 2, scope: !4284)
!4452 = !DILocation(line: 909, column: 9, scope: !4284)
!4453 = !DILocation(line: 909, column: 2, scope: !4284)
!4454 = !DILocation(line: 910, column: 1, scope: !4284)
!4455 = !DISubprogram(name: "tracefs_start_creating", scope: !209, file: !209, line: 71, type: !4456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!1863, !21, !1863}
!4458 = !DISubprogram(name: "security_locked_down", scope: !171, file: !171, line: 488, type: !4459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!27, !170}
!4461 = distinct !DISubprogram(name: "IS_ERR", scope: !4175, file: !4175, line: 59, type: !4462, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4466)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!912, !4464}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "ptr", arg: 1, scope: !4461, file: !4175, line: 59, type: !4464)
!4468 = !DILocation(line: 59, column: 60, scope: !4461)
!4469 = !DILocation(line: 61, column: 9, scope: !4461)
!4470 = !DILocation(line: 61, column: 2, scope: !4461)
!4471 = distinct !DISubprogram(name: "ERR_CAST", scope: !4175, file: !4175, line: 82, type: !4472, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4474)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!25, !4464}
!4474 = !{!4475}
!4475 = !DILocalVariable(name: "ptr", arg: 1, scope: !4471, file: !4175, line: 82, type: !4464)
!4476 = !DILocation(line: 82, column: 64, scope: !4471)
!4477 = !DILocation(line: 85, column: 18, scope: !4471)
!4478 = !DILocation(line: 85, column: 2, scope: !4471)
!4479 = distinct !DISubprogram(name: "alloc_root_ei", scope: !3, file: !3, line: 530, type: !4185, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4480)
!4480 = !{!4481, !4482, !4483}
!4481 = !DILocalVariable(name: "name", arg: 1, scope: !4479, file: !3, line: 530, type: !21)
!4482 = !DILocalVariable(name: "rei", scope: !4479, file: !3, line: 532, type: !3761)
!4483 = !DILocalVariable(name: "ei", scope: !4479, file: !3, line: 533, type: !247)
!4484 = !DILocation(line: 530, column: 63, scope: !4479)
!4485 = !DILocation(line: 532, column: 2, scope: !4479)
!4486 = !DILocation(line: 532, column: 29, scope: !4479)
!4487 = !DILocation(line: 532, column: 35, scope: !4479)
!4488 = !DILocation(line: 533, column: 2, scope: !4479)
!4489 = !DILocation(line: 533, column: 24, scope: !4479)
!4490 = !DILocation(line: 535, column: 7, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 535, column: 6)
!4492 = !DILocation(line: 535, column: 6, scope: !4479)
!4493 = !DILocation(line: 536, column: 3, scope: !4491)
!4494 = !DILocation(line: 538, column: 2, scope: !4479)
!4495 = !DILocation(line: 538, column: 7, scope: !4479)
!4496 = !DILocation(line: 538, column: 10, scope: !4479)
!4497 = !DILocation(line: 538, column: 20, scope: !4479)
!4498 = !DILocation(line: 539, column: 16, scope: !4479)
!4499 = !DILocation(line: 539, column: 21, scope: !4479)
!4500 = !DILocation(line: 539, column: 25, scope: !4479)
!4501 = !DILocation(line: 539, column: 7, scope: !4479)
!4502 = !DILocation(line: 539, column: 5, scope: !4479)
!4503 = !DILocation(line: 540, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 540, column: 6)
!4505 = !DILocation(line: 540, column: 6, scope: !4479)
!4506 = !DILocation(line: 541, column: 9, scope: !4504)
!4507 = !DILocation(line: 541, column: 3, scope: !4504)
!4508 = !DILocation(line: 543, column: 9, scope: !4479)
!4509 = !DILocation(line: 543, column: 2, scope: !4479)
!4510 = !DILocation(line: 544, column: 1, scope: !4479)
!4511 = !DISubprogram(name: "tracefs_get_inode", scope: !209, file: !209, line: 74, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4512 = distinct !DISubprogram(name: "get_root_inode", scope: !3, file: !3, line: 44, type: !4513, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4515)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!3761, !247}
!4515 = !{!4516, !4517, !4519, !4522}
!4516 = !DILocalVariable(name: "ei", arg: 1, scope: !4512, file: !3, line: 44, type: !247)
!4517 = !DILocalVariable(name: "__ret_warn_on", scope: !4518, file: !3, line: 46, type: !27)
!4518 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 46, column: 2)
!4519 = !DILocalVariable(name: "__flags", scope: !4520, file: !3, line: 46, type: !27)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 46, column: 2)
!4521 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 46, column: 2)
!4522 = !DILocalVariable(name: "__mptr", scope: !4523, file: !3, line: 47, type: !25)
!4523 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 47, column: 9)
!4524 = !DILocation(line: 44, column: 72, scope: !4512)
!4525 = !DILocation(line: 46, column: 2, scope: !4518)
!4526 = !DILocation(line: 46, column: 2, scope: !4521)
!4527 = !DILocation(line: 46, column: 2, scope: !4520)
!4528 = !DILocation(line: 46, column: 2, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 46, column: 2)
!4530 = !DILocation(line: 46, column: 2, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 46, column: 2)
!4532 = !{i64 2154413842, i64 2154413871, i64 2154413917, i64 2154413975, i64 2154414029, i64 2154414083, i64 2154414138, i64 2154414169, i64 2154414477, i64 2154414483, i64 2154414530, i64 2154414553, i64 2154414579}
!4533 = !DILocation(line: 46, column: 2, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 46, column: 2)
!4535 = !DILocation(line: 46, column: 2, scope: !4512)
!4536 = !DILocation(line: 47, column: 9, scope: !4523)
!4537 = !DILocation(line: 47, column: 9, scope: !4512)
!4538 = !DILocation(line: 47, column: 2, scope: !4512)
!4539 = distinct !DISubprogram(name: "d_inode", scope: !1865, file: !1865, line: 514, type: !4540, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!1841, !1925}
!4542 = !{!4543}
!4543 = !DILocalVariable(name: "dentry", arg: 1, scope: !4539, file: !1865, line: 514, type: !1925)
!4544 = !DILocation(line: 514, column: 58, scope: !4539)
!4545 = !DILocation(line: 516, column: 9, scope: !4539)
!4546 = !DILocation(line: 516, column: 17, scope: !4539)
!4547 = !DILocation(line: 516, column: 2, scope: !4539)
!4548 = distinct !DISubprogram(name: "get_tracefs", scope: !209, file: !209, line: 66, type: !4549, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4551)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!3767, !2523}
!4551 = !{!4552, !4553}
!4552 = !DILocalVariable(name: "inode", arg: 1, scope: !4548, file: !209, line: 66, type: !2523)
!4553 = !DILocalVariable(name: "__mptr", scope: !4554, file: !209, line: 68, type: !25)
!4554 = distinct !DILexicalBlock(scope: !4548, file: !209, line: 68, column: 9)
!4555 = !DILocation(line: 66, column: 69, scope: !4548)
!4556 = !DILocation(line: 68, column: 9, scope: !4554)
!4557 = !DILocation(line: 68, column: 9, scope: !4548)
!4558 = !DILocation(line: 68, column: 2, scope: !4548)
!4559 = distinct !DISubprogram(name: "get_ei", scope: !3, file: !3, line: 145, type: !4560, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!247, !247}
!4562 = !{!4563}
!4563 = !DILocalVariable(name: "ei", arg: 1, scope: !4559, file: !3, line: 145, type: !247)
!4564 = !DILocation(line: 145, column: 66, scope: !4559)
!4565 = !DILocation(line: 147, column: 6, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 147, column: 6)
!4567 = !DILocation(line: 147, column: 6, scope: !4559)
!4568 = !DILocation(line: 148, column: 13, scope: !4566)
!4569 = !DILocation(line: 148, column: 17, scope: !4566)
!4570 = !DILocation(line: 148, column: 3, scope: !4566)
!4571 = !DILocation(line: 149, column: 9, scope: !4559)
!4572 = !DILocation(line: 149, column: 2, scope: !4559)
!4573 = !DISubprogram(name: "d_instantiate", scope: !1865, file: !1865, line: 221, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4574 = !DISubprogram(name: "inc_nlink", scope: !6, file: !6, line: 2327, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4575 = distinct !DISubprogram(name: "fsnotify_mkdir", scope: !4576, file: !4576, line: 292, type: !4577, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4579)
!4576 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !1841, !1863}
!4579 = !{!4580, !4581}
!4580 = !DILocalVariable(name: "dir", arg: 1, scope: !4575, file: !4576, line: 292, type: !1841)
!4581 = !DILocalVariable(name: "dentry", arg: 2, scope: !4575, file: !4576, line: 292, type: !1863)
!4582 = !DILocation(line: 292, column: 49, scope: !4575)
!4583 = !DILocation(line: 292, column: 69, scope: !4575)
!4584 = !DILocation(line: 294, column: 20, scope: !4575)
!4585 = !DILocation(line: 294, column: 25, scope: !4575)
!4586 = !DILocation(line: 294, column: 2, scope: !4575)
!4587 = !DILocation(line: 296, column: 18, scope: !4575)
!4588 = !DILocation(line: 296, column: 23, scope: !4575)
!4589 = !DILocation(line: 296, column: 2, scope: !4575)
!4590 = !DILocation(line: 297, column: 1, scope: !4575)
!4591 = !DISubprogram(name: "tracefs_end_creating", scope: !209, file: !209, line: 72, type: !4592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!1863, !1863}
!4594 = !DISubprogram(name: "tracefs_failed_creating", scope: !209, file: !209, line: 73, type: !4592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4595 = distinct !DISubprogram(name: "eventfs_remove_dir", scope: !3, file: !3, line: 948, type: !4089, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4596)
!4596 = !{!4597}
!4597 = !DILocalVariable(name: "ei", arg: 1, scope: !4595, file: !3, line: 948, type: !247)
!4598 = !DILocation(line: 948, column: 47, scope: !4595)
!4599 = !DILocation(line: 950, column: 7, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 950, column: 6)
!4601 = !DILocation(line: 950, column: 6, scope: !4595)
!4602 = !DILocation(line: 951, column: 3, scope: !4600)
!4603 = !DILocation(line: 953, column: 2, scope: !4595)
!4604 = !DILocation(line: 954, column: 21, scope: !4595)
!4605 = !DILocation(line: 954, column: 2, scope: !4595)
!4606 = !DILocation(line: 955, column: 2, scope: !4595)
!4607 = !DILocation(line: 956, column: 1, scope: !4595)
!4608 = distinct !DISubprogram(name: "eventfs_remove_rec", scope: !3, file: !3, line: 920, type: !4609, scopeLine: 921, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4611)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{null, !247, !27}
!4611 = !{!4612, !4613, !4614, !4615, !4618, !4621, !4624}
!4612 = !DILocalVariable(name: "ei", arg: 1, scope: !4608, file: !3, line: 920, type: !247)
!4613 = !DILocalVariable(name: "level", arg: 2, scope: !4608, file: !3, line: 920, type: !27)
!4614 = !DILocalVariable(name: "ei_child", scope: !4608, file: !3, line: 922, type: !247)
!4615 = !DILocalVariable(name: "__ret_warn_on", scope: !4616, file: !3, line: 931, type: !27)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 931, column: 6)
!4617 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 931, column: 6)
!4618 = !DILocalVariable(name: "__flags", scope: !4619, file: !3, line: 931, type: !27)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 931, column: 6)
!4620 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 931, column: 6)
!4621 = !DILocalVariable(name: "__mptr", scope: !4622, file: !3, line: 935, type: !25)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 935, column: 2)
!4623 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 935, column: 2)
!4624 = !DILocalVariable(name: "__mptr", scope: !4625, file: !3, line: 935, type: !25)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 935, column: 2)
!4626 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 935, column: 2)
!4627 = !DILocation(line: 920, column: 54, scope: !4608)
!4628 = !DILocation(line: 920, column: 62, scope: !4608)
!4629 = !DILocation(line: 922, column: 2, scope: !4608)
!4630 = !DILocation(line: 922, column: 24, scope: !4608)
!4631 = !DILocation(line: 931, column: 6, scope: !4616)
!4632 = !DILocation(line: 931, column: 6, scope: !4620)
!4633 = !DILocation(line: 931, column: 6, scope: !4619)
!4634 = !DILocation(line: 931, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 931, column: 6)
!4636 = !DILocation(line: 931, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 931, column: 6)
!4638 = !{i64 2154488423, i64 2154488452, i64 2154488498, i64 2154488556, i64 2154488610, i64 2154488664, i64 2154488719, i64 2154488750, i64 2154489058, i64 2154489064, i64 2154489111, i64 2154489134, i64 2154489160}
!4639 = !DILocation(line: 931, column: 6, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 931, column: 6)
!4641 = !DILocation(line: 931, column: 6, scope: !4617)
!4642 = !DILocation(line: 931, column: 6, scope: !4608)
!4643 = !DILocation(line: 932, column: 3, scope: !4617)
!4644 = !DILocation(line: 935, column: 2, scope: !4622)
!4645 = !DILocation(line: 935, column: 2, scope: !4623)
!4646 = !DILocation(line: 935, column: 2, scope: !4626)
!4647 = !DILocation(line: 936, column: 22, scope: !4626)
!4648 = !DILocation(line: 936, column: 32, scope: !4626)
!4649 = !DILocation(line: 936, column: 38, scope: !4626)
!4650 = !DILocation(line: 936, column: 3, scope: !4626)
!4651 = !DILocation(line: 935, column: 2, scope: !4625)
!4652 = distinct !{!4652, !4645, !4653, !4028, !4029}
!4653 = !DILocation(line: 936, column: 41, scope: !4623)
!4654 = !DILocation(line: 938, column: 16, scope: !4608)
!4655 = !DILocation(line: 938, column: 20, scope: !4608)
!4656 = !DILocation(line: 938, column: 2, scope: !4608)
!4657 = !DILocation(line: 939, column: 10, scope: !4608)
!4658 = !DILocation(line: 939, column: 2, scope: !4608)
!4659 = !DILocation(line: 940, column: 1, scope: !4608)
!4660 = distinct !DISubprogram(name: "eventfs_remove_events_dir", scope: !3, file: !3, line: 964, type: !4089, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4661)
!4661 = !{!4662, !4663, !4664}
!4662 = !DILocalVariable(name: "ei", arg: 1, scope: !4660, file: !3, line: 964, type: !247)
!4663 = !DILocalVariable(name: "rei", scope: !4660, file: !3, line: 966, type: !3761)
!4664 = !DILocalVariable(name: "dentry", scope: !4660, file: !3, line: 967, type: !1863)
!4665 = !DILocation(line: 964, column: 54, scope: !4660)
!4666 = !DILocation(line: 966, column: 2, scope: !4660)
!4667 = !DILocation(line: 966, column: 29, scope: !4660)
!4668 = !DILocation(line: 967, column: 2, scope: !4660)
!4669 = !DILocation(line: 967, column: 17, scope: !4660)
!4670 = !DILocation(line: 969, column: 23, scope: !4660)
!4671 = !DILocation(line: 969, column: 8, scope: !4660)
!4672 = !DILocation(line: 969, column: 6, scope: !4660)
!4673 = !DILocation(line: 970, column: 11, scope: !4660)
!4674 = !DILocation(line: 970, column: 16, scope: !4660)
!4675 = !DILocation(line: 970, column: 9, scope: !4660)
!4676 = !DILocation(line: 971, column: 7, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 971, column: 6)
!4678 = !DILocation(line: 971, column: 6, scope: !4660)
!4679 = !DILocation(line: 972, column: 3, scope: !4677)
!4680 = !DILocation(line: 974, column: 2, scope: !4660)
!4681 = !DILocation(line: 974, column: 7, scope: !4660)
!4682 = !DILocation(line: 974, column: 18, scope: !4660)
!4683 = !DILocation(line: 975, column: 21, scope: !4660)
!4684 = !DILocation(line: 975, column: 2, scope: !4660)
!4685 = !DILocation(line: 984, column: 15, scope: !4660)
!4686 = !DILocation(line: 984, column: 2, scope: !4660)
!4687 = !DILocation(line: 985, column: 7, scope: !4660)
!4688 = !DILocation(line: 985, column: 2, scope: !4660)
!4689 = !DILocation(line: 986, column: 1, scope: !4660)
!4690 = !DISubprogram(name: "d_invalidate", scope: !1865, file: !1865, line: 246, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4691 = !DISubprogram(name: "dput", scope: !1865, file: !1865, line: 368, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4692 = distinct !DISubprogram(name: "kref_put", scope: !3748, file: !3748, line: 62, type: !4693, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4699)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!27, !4695, !4696}
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{null, !4695}
!4699 = !{!4700, !4701}
!4700 = !DILocalVariable(name: "kref", arg: 1, scope: !4692, file: !3748, line: 62, type: !4695)
!4701 = !DILocalVariable(name: "release", arg: 2, scope: !4692, file: !3748, line: 62, type: !4696)
!4702 = !DILocation(line: 62, column: 41, scope: !4692)
!4703 = !DILocation(line: 62, column: 54, scope: !4692)
!4704 = !DILocation(line: 64, column: 29, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4692, file: !3748, line: 64, column: 6)
!4706 = !DILocation(line: 64, column: 35, scope: !4705)
!4707 = !DILocation(line: 64, column: 6, scope: !4705)
!4708 = !DILocation(line: 64, column: 6, scope: !4692)
!4709 = !DILocation(line: 65, column: 3, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !3748, line: 64, column: 46)
!4711 = !DILocation(line: 65, column: 11, scope: !4710)
!4712 = !DILocation(line: 66, column: 3, scope: !4710)
!4713 = !DILocation(line: 68, column: 2, scope: !4692)
!4714 = !DILocation(line: 69, column: 1, scope: !4692)
!4715 = distinct !DISubprogram(name: "release_ei", scope: !3, file: !3, line: 103, type: !4697, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4716)
!4716 = !{!4717, !4718, !4719, !4721, !4722, !4724, !4727}
!4717 = !DILocalVariable(name: "ref", arg: 1, scope: !4715, file: !3, line: 103, type: !4695)
!4718 = !DILocalVariable(name: "ei", scope: !4715, file: !3, line: 105, type: !247)
!4719 = !DILocalVariable(name: "__mptr", scope: !4720, file: !3, line: 105, type: !25)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 105, column: 29)
!4721 = !DILocalVariable(name: "entry", scope: !4715, file: !3, line: 106, type: !265)
!4722 = !DILocalVariable(name: "__ret_warn_on", scope: !4723, file: !3, line: 108, type: !27)
!4723 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 108, column: 2)
!4724 = !DILocalVariable(name: "__flags", scope: !4725, file: !3, line: 108, type: !27)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 108, column: 2)
!4726 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 108, column: 2)
!4727 = !DILocalVariable(name: "i", scope: !4728, file: !3, line: 110, type: !27)
!4728 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 110, column: 2)
!4729 = !DILocation(line: 103, column: 37, scope: !4715)
!4730 = !DILocation(line: 105, column: 2, scope: !4715)
!4731 = !DILocation(line: 105, column: 24, scope: !4715)
!4732 = !DILocation(line: 105, column: 29, scope: !4720)
!4733 = !DILocation(line: 105, column: 29, scope: !4715)
!4734 = !DILocation(line: 106, column: 2, scope: !4715)
!4735 = !DILocation(line: 106, column: 30, scope: !4715)
!4736 = !DILocation(line: 108, column: 2, scope: !4723)
!4737 = !DILocation(line: 108, column: 2, scope: !4726)
!4738 = !DILocation(line: 108, column: 2, scope: !4725)
!4739 = !DILocation(line: 108, column: 2, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 108, column: 2)
!4741 = !DILocation(line: 108, column: 2, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 108, column: 2)
!4743 = !{i64 2154426036, i64 2154426065, i64 2154426111, i64 2154426169, i64 2154426223, i64 2154426277, i64 2154426332, i64 2154426363, i64 2154426671, i64 2154426677, i64 2154426724, i64 2154426747, i64 2154426773}
!4744 = !DILocation(line: 108, column: 2, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 108, column: 2)
!4746 = !DILocation(line: 108, column: 2, scope: !4715)
!4747 = !DILocation(line: 110, column: 7, scope: !4728)
!4748 = !DILocation(line: 110, column: 11, scope: !4728)
!4749 = !DILocation(line: 110, column: 18, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 110, column: 2)
!4751 = !DILocation(line: 110, column: 22, scope: !4750)
!4752 = !DILocation(line: 110, column: 26, scope: !4750)
!4753 = !DILocation(line: 110, column: 20, scope: !4750)
!4754 = !DILocation(line: 110, column: 2, scope: !4728)
!4755 = !DILocation(line: 110, column: 2, scope: !4750)
!4756 = !DILocation(line: 111, column: 12, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 110, column: 43)
!4758 = !DILocation(line: 111, column: 16, scope: !4757)
!4759 = !DILocation(line: 111, column: 24, scope: !4757)
!4760 = !DILocation(line: 111, column: 9, scope: !4757)
!4761 = !DILocation(line: 112, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 112, column: 7)
!4763 = !DILocation(line: 112, column: 14, scope: !4762)
!4764 = !DILocation(line: 112, column: 7, scope: !4757)
!4765 = !DILocation(line: 113, column: 4, scope: !4762)
!4766 = !DILocation(line: 113, column: 11, scope: !4762)
!4767 = !DILocation(line: 113, column: 19, scope: !4762)
!4768 = !DILocation(line: 113, column: 26, scope: !4762)
!4769 = !DILocation(line: 113, column: 32, scope: !4762)
!4770 = !DILocation(line: 113, column: 36, scope: !4762)
!4771 = !DILocation(line: 114, column: 2, scope: !4757)
!4772 = !DILocation(line: 110, column: 39, scope: !4750)
!4773 = distinct !{!4773, !4754, !4774, !4028, !4029}
!4774 = !DILocation(line: 114, column: 2, scope: !4728)
!4775 = !DILocation(line: 116, column: 28, scope: !4715)
!4776 = !DILocation(line: 116, column: 32, scope: !4715)
!4777 = !DILocation(line: 116, column: 2, scope: !4715)
!4778 = !DILocation(line: 117, column: 1, scope: !4715)
!4779 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !221, file: !221, line: 331, type: !4780, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4783)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!912, !4782}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!4783 = !{!4784}
!4784 = !DILocalVariable(name: "r", arg: 1, scope: !4779, file: !221, line: 331, type: !4782)
!4785 = !DILocation(line: 331, column: 67, scope: !4779)
!4786 = !DILocation(line: 333, column: 33, scope: !4779)
!4787 = !DILocation(line: 333, column: 9, scope: !4779)
!4788 = !DILocation(line: 333, column: 2, scope: !4779)
!4789 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !221, file: !221, line: 313, type: !4790, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!912, !4782, !1245}
!4792 = !{!4793, !4794}
!4793 = !DILocalVariable(name: "r", arg: 1, scope: !4789, file: !221, line: 313, type: !4782)
!4794 = !DILocalVariable(name: "oldp", arg: 2, scope: !4789, file: !221, line: 313, type: !1245)
!4795 = !DILocation(line: 313, column: 69, scope: !4789)
!4796 = !DILocation(line: 313, column: 77, scope: !4789)
!4797 = !DILocation(line: 315, column: 36, scope: !4789)
!4798 = !DILocation(line: 315, column: 39, scope: !4789)
!4799 = !DILocation(line: 315, column: 9, scope: !4789)
!4800 = !DILocation(line: 315, column: 2, scope: !4789)
!4801 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !221, file: !221, line: 270, type: !4802, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!912, !27, !4782, !1245}
!4804 = !{!4805, !4806, !4807, !4808}
!4805 = !DILocalVariable(name: "i", arg: 1, scope: !4801, file: !221, line: 270, type: !27)
!4806 = !DILocalVariable(name: "r", arg: 2, scope: !4801, file: !221, line: 270, type: !4782)
!4807 = !DILocalVariable(name: "oldp", arg: 3, scope: !4801, file: !221, line: 270, type: !1245)
!4808 = !DILocalVariable(name: "old", scope: !4801, file: !221, line: 272, type: !27)
!4809 = !DILocation(line: 270, column: 61, scope: !4801)
!4810 = !DILocation(line: 270, column: 76, scope: !4801)
!4811 = !DILocation(line: 270, column: 84, scope: !4801)
!4812 = !DILocation(line: 272, column: 2, scope: !4801)
!4813 = !DILocation(line: 272, column: 6, scope: !4801)
!4814 = !DILocation(line: 272, column: 37, scope: !4801)
!4815 = !DILocation(line: 272, column: 41, scope: !4801)
!4816 = !DILocation(line: 272, column: 44, scope: !4801)
!4817 = !DILocation(line: 272, column: 12, scope: !4801)
!4818 = !DILocation(line: 274, column: 6, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4801, file: !221, line: 274, column: 6)
!4820 = !DILocation(line: 274, column: 6, scope: !4801)
!4821 = !DILocation(line: 275, column: 11, scope: !4819)
!4822 = !DILocation(line: 275, column: 4, scope: !4819)
!4823 = !DILocation(line: 275, column: 9, scope: !4819)
!4824 = !DILocation(line: 275, column: 3, scope: !4819)
!4825 = !DILocation(line: 277, column: 6, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4801, file: !221, line: 277, column: 6)
!4827 = !DILocation(line: 277, column: 13, scope: !4826)
!4828 = !DILocation(line: 277, column: 10, scope: !4826)
!4829 = !DILocation(line: 277, column: 6, scope: !4801)
!4830 = !DILocation(line: 278, column: 3, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4826, file: !221, line: 277, column: 16)
!4832 = !DILocation(line: 278, column: 3, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4831, file: !221, line: 278, column: 3)
!4834 = !DILocation(line: 278, column: 3, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4833, file: !221, line: 278, column: 3)
!4836 = !DILocation(line: 278, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4833, file: !221, line: 278, column: 3)
!4838 = !DILocation(line: 278, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !221, line: 278, column: 3)
!4840 = !{i64 2150410206}
!4841 = !DILocation(line: 279, column: 3, scope: !4831)
!4842 = !DILocation(line: 282, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4801, file: !221, line: 282, column: 6)
!4844 = !DILocation(line: 282, column: 6, scope: !4801)
!4845 = !DILocation(line: 283, column: 26, scope: !4843)
!4846 = !DILocation(line: 283, column: 3, scope: !4843)
!4847 = !DILocation(line: 285, column: 2, scope: !4801)
!4848 = !DILocation(line: 286, column: 1, scope: !4801)
!4849 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4850, file: !4850, line: 397, type: !4851, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4850 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!27, !27, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "i", arg: 1, scope: !4849, file: !4850, line: 397, type: !27)
!4856 = !DILocalVariable(name: "v", arg: 2, scope: !4849, file: !4850, line: 397, type: !4853)
!4857 = !DILocation(line: 397, column: 30, scope: !4849)
!4858 = !DILocation(line: 397, column: 43, scope: !4849)
!4859 = !DILocation(line: 399, column: 2, scope: !4849)
!4860 = !DILocation(line: 399, column: 2, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4849, file: !4850, line: 399, column: 2)
!4862 = !DILocation(line: 400, column: 31, scope: !4849)
!4863 = !DILocation(line: 400, column: 2, scope: !4849)
!4864 = !DILocation(line: 401, column: 38, scope: !4849)
!4865 = !DILocation(line: 401, column: 41, scope: !4849)
!4866 = !DILocation(line: 401, column: 9, scope: !4849)
!4867 = !DILocation(line: 401, column: 2, scope: !4849)
!4868 = !DISubprogram(name: "refcount_warn_saturate", scope: !221, file: !221, line: 127, type: !4869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !4782, !220}
!4871 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4872, file: !4872, line: 94, type: !4873, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4878)
!4872 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !4875, !40}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4877)
!4877 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4878 = !{!4879, !4880}
!4879 = !DILocalVariable(name: "v", arg: 1, scope: !4871, file: !4872, line: 94, type: !4875)
!4880 = !DILocalVariable(name: "size", arg: 2, scope: !4871, file: !4872, line: 94, type: !40)
!4881 = !DILocation(line: 94, column: 79, scope: !4871)
!4882 = !DILocation(line: 94, column: 89, scope: !4871)
!4883 = !DILocation(line: 96, column: 20, scope: !4871)
!4884 = !DILocation(line: 96, column: 23, scope: !4871)
!4885 = !DILocation(line: 96, column: 2, scope: !4871)
!4886 = !DILocation(line: 97, column: 2, scope: !4871)
!4887 = !DILocation(line: 98, column: 1, scope: !4871)
!4888 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4889, file: !4889, line: 928, type: !4851, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4889 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4890 = !{!4891, !4892}
!4891 = !DILocalVariable(name: "i", arg: 1, scope: !4888, file: !4889, line: 928, type: !27)
!4892 = !DILocalVariable(name: "v", arg: 2, scope: !4888, file: !4889, line: 928, type: !4853)
!4893 = !DILocation(line: 928, column: 34, scope: !4888)
!4894 = !DILocation(line: 928, column: 47, scope: !4888)
!4895 = !DILocation(line: 936, column: 31, scope: !4888)
!4896 = !DILocation(line: 936, column: 34, scope: !4888)
!4897 = !DILocation(line: 936, column: 9, scope: !4888)
!4898 = !DILocation(line: 936, column: 2, scope: !4888)
!4899 = distinct !DISubprogram(name: "kasan_check_write", scope: !4900, file: !4900, line: 44, type: !4901, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4903)
!4900 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!912, !4875, !7}
!4903 = !{!4904, !4905}
!4904 = !DILocalVariable(name: "p", arg: 1, scope: !4899, file: !4900, line: 44, type: !4875)
!4905 = !DILocalVariable(name: "size", arg: 2, scope: !4899, file: !4900, line: 44, type: !7)
!4906 = !DILocation(line: 44, column: 59, scope: !4899)
!4907 = !DILocation(line: 44, column: 75, scope: !4899)
!4908 = !DILocation(line: 46, column: 2, scope: !4899)
!4909 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4910, file: !4910, line: 229, type: !4911, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4913)
!4910 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4875, !40, !27}
!4913 = !{!4914, !4915, !4916}
!4914 = !DILocalVariable(name: "ptr", arg: 1, scope: !4909, file: !4910, line: 229, type: !4875)
!4915 = !DILocalVariable(name: "size", arg: 2, scope: !4909, file: !4910, line: 229, type: !40)
!4916 = !DILocalVariable(name: "type", arg: 3, scope: !4909, file: !4910, line: 230, type: !27)
!4917 = !DILocation(line: 229, column: 60, scope: !4909)
!4918 = !DILocation(line: 229, column: 72, scope: !4909)
!4919 = !DILocation(line: 230, column: 15, scope: !4909)
!4920 = !DILocation(line: 230, column: 23, scope: !4909)
!4921 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4922, file: !4922, line: 101, type: !4851, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4923)
!4922 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4923 = !{!4924, !4925, !4926}
!4924 = !DILocalVariable(name: "i", arg: 1, scope: !4921, file: !4922, line: 101, type: !27)
!4925 = !DILocalVariable(name: "v", arg: 2, scope: !4921, file: !4922, line: 101, type: !4853)
!4926 = !DILocalVariable(name: "__ret", scope: !4927, file: !4922, line: 103, type: !27)
!4927 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 103, column: 9)
!4928 = !DILocation(line: 101, column: 54, scope: !4921)
!4929 = !DILocation(line: 101, column: 67, scope: !4921)
!4930 = !DILocation(line: 103, column: 9, scope: !4927)
!4931 = !{i64 2148506951, i64 2148506990, i64 2148507011, i64 2148507048, i64 2148507071, i64 2148507080}
!4932 = !DILocation(line: 103, column: 9, scope: !4921)
!4933 = !DILocation(line: 103, column: 2, scope: !4921)
!4934 = !DISubprogram(name: "call_srcu", scope: !3895, file: !3895, line: 54, type: !4935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{null, !3835, !258, !260}
!4937 = distinct !DISubprogram(name: "free_ei_rcu", scope: !3, file: !3, line: 80, type: !261, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4938)
!4938 = !{!4939, !4940, !4941, !4943}
!4939 = !DILocalVariable(name: "rcu", arg: 1, scope: !4937, file: !3, line: 80, type: !258)
!4940 = !DILocalVariable(name: "ei", scope: !4937, file: !3, line: 82, type: !247)
!4941 = !DILocalVariable(name: "__mptr", scope: !4942, file: !3, line: 82, type: !25)
!4942 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 82, column: 29)
!4943 = !DILocalVariable(name: "rei", scope: !4937, file: !3, line: 83, type: !3761)
!4944 = !DILocation(line: 80, column: 42, scope: !4937)
!4945 = !DILocation(line: 82, column: 2, scope: !4937)
!4946 = !DILocation(line: 82, column: 24, scope: !4937)
!4947 = !DILocation(line: 82, column: 29, scope: !4942)
!4948 = !DILocation(line: 82, column: 29, scope: !4937)
!4949 = !DILocation(line: 83, column: 2, scope: !4937)
!4950 = !DILocation(line: 83, column: 29, scope: !4937)
!4951 = !DILocation(line: 85, column: 8, scope: !4937)
!4952 = !DILocation(line: 85, column: 12, scope: !4937)
!4953 = !DILocation(line: 85, column: 2, scope: !4937)
!4954 = !DILocation(line: 86, column: 14, scope: !4937)
!4955 = !DILocation(line: 86, column: 18, scope: !4937)
!4956 = !DILocation(line: 86, column: 2, scope: !4937)
!4957 = !DILocation(line: 87, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 87, column: 6)
!4959 = !DILocation(line: 87, column: 10, scope: !4958)
!4960 = !DILocation(line: 87, column: 6, scope: !4937)
!4961 = !DILocation(line: 88, column: 24, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 87, column: 21)
!4963 = !DILocation(line: 88, column: 9, scope: !4962)
!4964 = !DILocation(line: 88, column: 7, scope: !4962)
!4965 = !DILocation(line: 89, column: 9, scope: !4962)
!4966 = !DILocation(line: 89, column: 3, scope: !4962)
!4967 = !DILocation(line: 90, column: 2, scope: !4962)
!4968 = !DILocation(line: 91, column: 9, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 90, column: 9)
!4970 = !DILocation(line: 91, column: 3, scope: !4969)
!4971 = !DILocation(line: 93, column: 1, scope: !4937)
!4972 = !DISubprogram(name: "kfree", scope: !229, file: !229, line: 227, type: !4973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !4464}
!4975 = !DISubprogram(name: "kfree_const", scope: !4976, file: !4976, line: 214, type: !4973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4976 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4977 = distinct !DISubprogram(name: "kzalloc", scope: !229, file: !229, line: 719, type: !4978, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4980)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!25, !40, !405}
!4980 = !{!4981, !4982}
!4981 = !DILocalVariable(name: "size", arg: 1, scope: !4977, file: !229, line: 719, type: !40)
!4982 = !DILocalVariable(name: "flags", arg: 2, scope: !4977, file: !229, line: 719, type: !405)
!4983 = !DILocation(line: 719, column: 52, scope: !4977)
!4984 = !DILocation(line: 719, column: 64, scope: !4977)
!4985 = !DILocation(line: 721, column: 17, scope: !4977)
!4986 = !DILocation(line: 721, column: 23, scope: !4977)
!4987 = !DILocation(line: 721, column: 29, scope: !4977)
!4988 = !DILocation(line: 721, column: 9, scope: !4977)
!4989 = !DILocation(line: 721, column: 2, scope: !4977)
!4990 = distinct !DISubprogram(name: "init_ei", scope: !3, file: !3, line: 506, type: !4991, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!247, !247, !21}
!4993 = !{!4994, !4995}
!4994 = !DILocalVariable(name: "ei", arg: 1, scope: !4990, file: !3, line: 506, type: !247)
!4995 = !DILocalVariable(name: "name", arg: 2, scope: !4990, file: !3, line: 506, type: !21)
!4996 = !DILocation(line: 506, column: 67, scope: !4990)
!4997 = !DILocation(line: 506, column: 83, scope: !4990)
!4998 = !DILocation(line: 508, column: 27, scope: !4990)
!4999 = !DILocation(line: 508, column: 13, scope: !4990)
!5000 = !DILocation(line: 508, column: 2, scope: !4990)
!5001 = !DILocation(line: 508, column: 6, scope: !4990)
!5002 = !DILocation(line: 508, column: 11, scope: !4990)
!5003 = !DILocation(line: 509, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 509, column: 6)
!5005 = !DILocation(line: 509, column: 11, scope: !5004)
!5006 = !DILocation(line: 509, column: 6, scope: !4990)
!5007 = !DILocation(line: 510, column: 3, scope: !5004)
!5008 = !DILocation(line: 511, column: 13, scope: !4990)
!5009 = !DILocation(line: 511, column: 17, scope: !4990)
!5010 = !DILocation(line: 511, column: 2, scope: !4990)
!5011 = !DILocation(line: 512, column: 9, scope: !4990)
!5012 = !DILocation(line: 512, column: 2, scope: !4990)
!5013 = !DILocation(line: 513, column: 1, scope: !4990)
!5014 = distinct !DISubprogram(name: "kmalloc", scope: !229, file: !229, line: 591, type: !4978, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5015)
!5015 = !{!5016, !5017, !5018}
!5016 = !DILocalVariable(name: "size", arg: 1, scope: !5014, file: !229, line: 591, type: !40)
!5017 = !DILocalVariable(name: "flags", arg: 2, scope: !5014, file: !229, line: 591, type: !405)
!5018 = !DILocalVariable(name: "index", scope: !5019, file: !229, line: 594, type: !7)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !229, line: 593, column: 42)
!5020 = distinct !DILexicalBlock(scope: !5014, file: !229, line: 593, column: 6)
!5021 = !DILocation(line: 591, column: 61, scope: !5014)
!5022 = !DILocation(line: 591, column: 73, scope: !5014)
!5023 = !DILocation(line: 593, column: 27, scope: !5020)
!5024 = !DILocation(line: 593, column: 6, scope: !5020)
!5025 = !DILocation(line: 593, column: 33, scope: !5020)
!5026 = !DILocation(line: 593, column: 36, scope: !5020)
!5027 = !DILocation(line: 593, column: 6, scope: !5014)
!5028 = !DILocation(line: 594, column: 3, scope: !5019)
!5029 = !DILocation(line: 594, column: 16, scope: !5019)
!5030 = !DILocation(line: 596, column: 7, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5019, file: !229, line: 596, column: 7)
!5032 = !DILocation(line: 596, column: 12, scope: !5031)
!5033 = !DILocation(line: 596, column: 7, scope: !5019)
!5034 = !DILocation(line: 597, column: 25, scope: !5031)
!5035 = !DILocation(line: 597, column: 31, scope: !5031)
!5036 = !DILocation(line: 597, column: 11, scope: !5031)
!5037 = !DILocation(line: 597, column: 4, scope: !5031)
!5038 = !DILocation(line: 599, column: 11, scope: !5019)
!5039 = !DILocation(line: 599, column: 9, scope: !5019)
!5040 = !DILocation(line: 601, column: 33, scope: !5019)
!5041 = !DILocation(line: 601, column: 40, scope: !5019)
!5042 = !DILocation(line: 601, column: 20, scope: !5019)
!5043 = !DILocation(line: 601, column: 5, scope: !5019)
!5044 = !DILocation(line: 601, column: 51, scope: !5019)
!5045 = !DILocation(line: 602, column: 5, scope: !5019)
!5046 = !DILocation(line: 602, column: 12, scope: !5019)
!5047 = !DILocation(line: 600, column: 10, scope: !5019)
!5048 = !DILocation(line: 600, column: 3, scope: !5019)
!5049 = !DILocation(line: 603, column: 2, scope: !5020)
!5050 = !DILocation(line: 604, column: 19, scope: !5014)
!5051 = !DILocation(line: 604, column: 25, scope: !5014)
!5052 = !DILocation(line: 604, column: 9, scope: !5014)
!5053 = !DILocation(line: 604, column: 2, scope: !5014)
!5054 = !DILocation(line: 605, column: 1, scope: !5014)
!5055 = !DISubprogram(name: "kmalloc_large", scope: !229, file: !229, line: 531, type: !4978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5056 = distinct !DISubprogram(name: "__kmalloc_index", scope: !229, file: !229, line: 444, type: !5057, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5059)
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!7, !40, !912}
!5059 = !{!5060, !5061}
!5060 = !DILocalVariable(name: "size", arg: 1, scope: !5056, file: !229, line: 444, type: !40)
!5061 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5056, file: !229, line: 445, type: !912)
!5062 = !DILocation(line: 444, column: 60, scope: !5056)
!5063 = !DILocation(line: 445, column: 16, scope: !5056)
!5064 = !DILocation(line: 447, column: 7, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 447, column: 6)
!5066 = !DILocation(line: 447, column: 6, scope: !5056)
!5067 = !DILocation(line: 448, column: 3, scope: !5065)
!5068 = !DILocation(line: 450, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 450, column: 6)
!5070 = !DILocation(line: 450, column: 11, scope: !5069)
!5071 = !DILocation(line: 450, column: 6, scope: !5056)
!5072 = !DILocation(line: 451, column: 3, scope: !5069)
!5073 = !DILocation(line: 453, column: 32, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 453, column: 6)
!5075 = !DILocation(line: 453, column: 37, scope: !5074)
!5076 = !DILocation(line: 453, column: 42, scope: !5074)
!5077 = !DILocation(line: 453, column: 45, scope: !5074)
!5078 = !DILocation(line: 453, column: 50, scope: !5074)
!5079 = !DILocation(line: 453, column: 6, scope: !5056)
!5080 = !DILocation(line: 454, column: 3, scope: !5074)
!5081 = !DILocation(line: 455, column: 32, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 455, column: 6)
!5083 = !DILocation(line: 455, column: 37, scope: !5082)
!5084 = !DILocation(line: 455, column: 43, scope: !5082)
!5085 = !DILocation(line: 455, column: 46, scope: !5082)
!5086 = !DILocation(line: 455, column: 51, scope: !5082)
!5087 = !DILocation(line: 455, column: 6, scope: !5056)
!5088 = !DILocation(line: 456, column: 3, scope: !5082)
!5089 = !DILocation(line: 457, column: 6, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 457, column: 6)
!5091 = !DILocation(line: 457, column: 11, scope: !5090)
!5092 = !DILocation(line: 457, column: 6, scope: !5056)
!5093 = !DILocation(line: 457, column: 26, scope: !5090)
!5094 = !DILocation(line: 458, column: 6, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 458, column: 6)
!5096 = !DILocation(line: 458, column: 11, scope: !5095)
!5097 = !DILocation(line: 458, column: 6, scope: !5056)
!5098 = !DILocation(line: 458, column: 26, scope: !5095)
!5099 = !DILocation(line: 459, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 459, column: 6)
!5101 = !DILocation(line: 459, column: 11, scope: !5100)
!5102 = !DILocation(line: 459, column: 6, scope: !5056)
!5103 = !DILocation(line: 459, column: 26, scope: !5100)
!5104 = !DILocation(line: 460, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 460, column: 6)
!5106 = !DILocation(line: 460, column: 11, scope: !5105)
!5107 = !DILocation(line: 460, column: 6, scope: !5056)
!5108 = !DILocation(line: 460, column: 26, scope: !5105)
!5109 = !DILocation(line: 461, column: 6, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 461, column: 6)
!5111 = !DILocation(line: 461, column: 11, scope: !5110)
!5112 = !DILocation(line: 461, column: 6, scope: !5056)
!5113 = !DILocation(line: 461, column: 26, scope: !5110)
!5114 = !DILocation(line: 462, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 462, column: 6)
!5116 = !DILocation(line: 462, column: 11, scope: !5115)
!5117 = !DILocation(line: 462, column: 6, scope: !5056)
!5118 = !DILocation(line: 462, column: 26, scope: !5115)
!5119 = !DILocation(line: 463, column: 6, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 463, column: 6)
!5121 = !DILocation(line: 463, column: 11, scope: !5120)
!5122 = !DILocation(line: 463, column: 6, scope: !5056)
!5123 = !DILocation(line: 463, column: 26, scope: !5120)
!5124 = !DILocation(line: 464, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 464, column: 6)
!5126 = !DILocation(line: 464, column: 11, scope: !5125)
!5127 = !DILocation(line: 464, column: 6, scope: !5056)
!5128 = !DILocation(line: 464, column: 26, scope: !5125)
!5129 = !DILocation(line: 465, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 465, column: 6)
!5131 = !DILocation(line: 465, column: 11, scope: !5130)
!5132 = !DILocation(line: 465, column: 6, scope: !5056)
!5133 = !DILocation(line: 465, column: 26, scope: !5130)
!5134 = !DILocation(line: 466, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 466, column: 6)
!5136 = !DILocation(line: 466, column: 11, scope: !5135)
!5137 = !DILocation(line: 466, column: 6, scope: !5056)
!5138 = !DILocation(line: 466, column: 26, scope: !5135)
!5139 = !DILocation(line: 467, column: 6, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 467, column: 6)
!5141 = !DILocation(line: 467, column: 11, scope: !5140)
!5142 = !DILocation(line: 467, column: 6, scope: !5056)
!5143 = !DILocation(line: 467, column: 26, scope: !5140)
!5144 = !DILocation(line: 468, column: 6, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 468, column: 6)
!5146 = !DILocation(line: 468, column: 11, scope: !5145)
!5147 = !DILocation(line: 468, column: 6, scope: !5056)
!5148 = !DILocation(line: 468, column: 26, scope: !5145)
!5149 = !DILocation(line: 469, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 469, column: 6)
!5151 = !DILocation(line: 469, column: 11, scope: !5150)
!5152 = !DILocation(line: 469, column: 6, scope: !5056)
!5153 = !DILocation(line: 469, column: 26, scope: !5150)
!5154 = !DILocation(line: 470, column: 6, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 470, column: 6)
!5156 = !DILocation(line: 470, column: 11, scope: !5155)
!5157 = !DILocation(line: 470, column: 6, scope: !5056)
!5158 = !DILocation(line: 470, column: 26, scope: !5155)
!5159 = !DILocation(line: 471, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 471, column: 6)
!5161 = !DILocation(line: 471, column: 11, scope: !5160)
!5162 = !DILocation(line: 471, column: 6, scope: !5056)
!5163 = !DILocation(line: 471, column: 26, scope: !5160)
!5164 = !DILocation(line: 472, column: 6, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 472, column: 6)
!5166 = !DILocation(line: 472, column: 11, scope: !5165)
!5167 = !DILocation(line: 472, column: 6, scope: !5056)
!5168 = !DILocation(line: 472, column: 26, scope: !5165)
!5169 = !DILocation(line: 473, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 473, column: 6)
!5171 = !DILocation(line: 473, column: 11, scope: !5170)
!5172 = !DILocation(line: 473, column: 6, scope: !5056)
!5173 = !DILocation(line: 473, column: 26, scope: !5170)
!5174 = !DILocation(line: 474, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 474, column: 6)
!5176 = !DILocation(line: 474, column: 11, scope: !5175)
!5177 = !DILocation(line: 474, column: 6, scope: !5056)
!5178 = !DILocation(line: 474, column: 27, scope: !5175)
!5179 = !DILocation(line: 475, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 475, column: 6)
!5181 = !DILocation(line: 475, column: 11, scope: !5180)
!5182 = !DILocation(line: 475, column: 6, scope: !5056)
!5183 = !DILocation(line: 475, column: 32, scope: !5180)
!5184 = !DILocation(line: 477, column: 50, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5056, file: !229, line: 477, column: 6)
!5186 = !DILocation(line: 477, column: 6, scope: !5056)
!5187 = !DILocation(line: 478, column: 3, scope: !5185)
!5188 = !DILocation(line: 478, column: 3, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !229, line: 478, column: 3)
!5190 = distinct !DILexicalBlock(scope: !5185, file: !229, line: 478, column: 3)
!5191 = !{i32 -2141633177}
!5192 = !DILocation(line: 478, column: 3, scope: !5190)
!5193 = !DILocation(line: 480, column: 3, scope: !5185)
!5194 = !DILocation(line: 480, column: 3, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5185, file: !229, line: 480, column: 3)
!5196 = !DILocation(line: 480, column: 3, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5195, file: !229, line: 480, column: 3)
!5198 = !DILocation(line: 480, column: 3, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5195, file: !229, line: 480, column: 3)
!5200 = !{i64 2153334322, i64 2153334351, i64 2153334397, i64 2153334455, i64 2153334509, i64 2153334563, i64 2153334618, i64 2153334649}
!5201 = !DILocation(line: 483, column: 2, scope: !5056)
!5202 = !DILocation(line: 484, column: 1, scope: !5056)
!5203 = !DISubprogram(name: "kmalloc_trace", scope: !229, file: !229, line: 525, type: !5204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!25, !3575, !405, !40}
!5206 = distinct !DISubprogram(name: "kmalloc_type", scope: !229, file: !229, line: 401, type: !5207, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!228, !405, !44}
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "flags", arg: 1, scope: !5206, file: !229, line: 401, type: !405)
!5211 = !DILocalVariable(name: "caller", arg: 2, scope: !5206, file: !229, line: 401, type: !44)
!5212 = !DILocation(line: 401, column: 67, scope: !5206)
!5213 = !DILocation(line: 401, column: 88, scope: !5206)
!5214 = !DILocation(line: 407, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5206, file: !229, line: 407, column: 6)
!5216 = !DILocation(line: 407, column: 6, scope: !5206)
!5217 = !DILocation(line: 413, column: 3, scope: !5215)
!5218 = !DILocation(line: 423, column: 38, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5206, file: !229, line: 423, column: 6)
!5220 = !DILocation(line: 423, column: 44, scope: !5219)
!5221 = !DILocation(line: 423, column: 6, scope: !5206)
!5222 = !DILocation(line: 424, column: 3, scope: !5219)
!5223 = !DILocation(line: 426, column: 3, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5206, file: !229, line: 425, column: 6)
!5225 = !DILocation(line: 429, column: 1, scope: !5206)
!5226 = !DISubprogram(name: "__kmalloc", scope: !229, file: !229, line: 488, type: !4978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5227 = !DISubprogram(name: "__compiletime_assert_248", scope: !229, file: !229, line: 478, type: !1579, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5228 = !DISubprogram(name: "kstrdup_const", scope: !4976, file: !4976, line: 217, type: !5229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!21, !21, !405}
!5231 = distinct !DISubprogram(name: "kref_init", scope: !3748, file: !3748, line: 29, type: !4697, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5232)
!5232 = !{!5233}
!5233 = !DILocalVariable(name: "kref", arg: 1, scope: !5231, file: !3748, line: 29, type: !4695)
!5234 = !DILocation(line: 29, column: 43, scope: !5231)
!5235 = !DILocation(line: 31, column: 16, scope: !5231)
!5236 = !DILocation(line: 31, column: 22, scope: !5231)
!5237 = !DILocation(line: 31, column: 2, scope: !5231)
!5238 = !DILocation(line: 32, column: 1, scope: !5231)
!5239 = distinct !DISubprogram(name: "refcount_set", scope: !221, file: !221, line: 134, type: !5240, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5242)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !4782, !27}
!5242 = !{!5243, !5244}
!5243 = !DILocalVariable(name: "r", arg: 1, scope: !5239, file: !221, line: 134, type: !4782)
!5244 = !DILocalVariable(name: "n", arg: 2, scope: !5239, file: !221, line: 134, type: !27)
!5245 = !DILocation(line: 134, column: 45, scope: !5239)
!5246 = !DILocation(line: 134, column: 52, scope: !5239)
!5247 = !DILocation(line: 136, column: 14, scope: !5239)
!5248 = !DILocation(line: 136, column: 17, scope: !5239)
!5249 = !DILocation(line: 136, column: 23, scope: !5239)
!5250 = !DILocation(line: 136, column: 2, scope: !5239)
!5251 = !DILocation(line: 137, column: 1, scope: !5239)
!5252 = distinct !DISubprogram(name: "atomic_set", scope: !4850, file: !4850, line: 65, type: !5253, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5255)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{null, !4853, !27}
!5255 = !{!5256, !5257}
!5256 = !DILocalVariable(name: "v", arg: 1, scope: !5252, file: !4850, line: 65, type: !4853)
!5257 = !DILocalVariable(name: "i", arg: 2, scope: !5252, file: !4850, line: 65, type: !27)
!5258 = !DILocation(line: 65, column: 22, scope: !5252)
!5259 = !DILocation(line: 65, column: 29, scope: !5252)
!5260 = !DILocation(line: 67, column: 26, scope: !5252)
!5261 = !DILocation(line: 67, column: 2, scope: !5252)
!5262 = !DILocation(line: 68, column: 17, scope: !5252)
!5263 = !DILocation(line: 68, column: 20, scope: !5252)
!5264 = !DILocation(line: 68, column: 2, scope: !5252)
!5265 = !DILocation(line: 69, column: 1, scope: !5252)
!5266 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4872, file: !4872, line: 80, type: !4873, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5267)
!5267 = !{!5268, !5269}
!5268 = !DILocalVariable(name: "v", arg: 1, scope: !5266, file: !4872, line: 80, type: !4875)
!5269 = !DILocalVariable(name: "size", arg: 2, scope: !5266, file: !4872, line: 80, type: !40)
!5270 = !DILocation(line: 80, column: 74, scope: !5266)
!5271 = !DILocation(line: 80, column: 84, scope: !5266)
!5272 = !DILocation(line: 82, column: 20, scope: !5266)
!5273 = !DILocation(line: 82, column: 23, scope: !5266)
!5274 = !DILocation(line: 82, column: 2, scope: !5266)
!5275 = !DILocation(line: 83, column: 2, scope: !5266)
!5276 = !DILocation(line: 84, column: 1, scope: !5266)
!5277 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4889, file: !4889, line: 488, type: !5253, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5278 = !{!5279, !5280}
!5279 = !DILocalVariable(name: "v", arg: 1, scope: !5277, file: !4889, line: 488, type: !4853)
!5280 = !DILocalVariable(name: "i", arg: 2, scope: !5277, file: !4889, line: 488, type: !27)
!5281 = !DILocation(line: 488, column: 26, scope: !5277)
!5282 = !DILocation(line: 488, column: 33, scope: !5277)
!5283 = !DILocation(line: 490, column: 18, scope: !5277)
!5284 = !DILocation(line: 490, column: 21, scope: !5277)
!5285 = !DILocation(line: 490, column: 2, scope: !5277)
!5286 = !DILocation(line: 491, column: 1, scope: !5277)
!5287 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4922, file: !4922, line: 26, type: !5253, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "v", arg: 1, scope: !5287, file: !4922, line: 26, type: !4853)
!5290 = !DILocalVariable(name: "i", arg: 2, scope: !5287, file: !4922, line: 26, type: !27)
!5291 = !DILocation(line: 26, column: 55, scope: !5287)
!5292 = !DILocation(line: 26, column: 62, scope: !5287)
!5293 = !DILocation(line: 28, column: 2, scope: !5287)
!5294 = !DILocation(line: 28, column: 2, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5287, file: !4922, line: 28, column: 2)
!5296 = !DILocation(line: 29, column: 1, scope: !5287)
!5297 = distinct !DISubprogram(name: "__list_add", scope: !4214, file: !4214, line: 146, type: !5298, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5300)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{null, !105, !105, !105}
!5300 = !{!5301, !5302, !5303}
!5301 = !DILocalVariable(name: "new", arg: 1, scope: !5297, file: !4214, line: 146, type: !105)
!5302 = !DILocalVariable(name: "prev", arg: 2, scope: !5297, file: !4214, line: 147, type: !105)
!5303 = !DILocalVariable(name: "next", arg: 3, scope: !5297, file: !4214, line: 148, type: !105)
!5304 = !DILocation(line: 146, column: 49, scope: !5297)
!5305 = !DILocation(line: 147, column: 28, scope: !5297)
!5306 = !DILocation(line: 148, column: 28, scope: !5297)
!5307 = !DILocation(line: 150, column: 24, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5297, file: !4214, line: 150, column: 6)
!5309 = !DILocation(line: 150, column: 29, scope: !5308)
!5310 = !DILocation(line: 150, column: 35, scope: !5308)
!5311 = !DILocation(line: 150, column: 7, scope: !5308)
!5312 = !DILocation(line: 150, column: 6, scope: !5297)
!5313 = !DILocation(line: 151, column: 3, scope: !5308)
!5314 = !DILocation(line: 153, column: 15, scope: !5297)
!5315 = !DILocation(line: 153, column: 2, scope: !5297)
!5316 = !DILocation(line: 153, column: 8, scope: !5297)
!5317 = !DILocation(line: 153, column: 13, scope: !5297)
!5318 = !DILocation(line: 154, column: 14, scope: !5297)
!5319 = !DILocation(line: 154, column: 2, scope: !5297)
!5320 = !DILocation(line: 154, column: 7, scope: !5297)
!5321 = !DILocation(line: 154, column: 12, scope: !5297)
!5322 = !DILocation(line: 155, column: 14, scope: !5297)
!5323 = !DILocation(line: 155, column: 2, scope: !5297)
!5324 = !DILocation(line: 155, column: 7, scope: !5297)
!5325 = !DILocation(line: 155, column: 12, scope: !5297)
!5326 = !DILocation(line: 156, column: 2, scope: !5297)
!5327 = !DILocation(line: 156, column: 2, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5297, file: !4214, line: 156, column: 2)
!5329 = !DILocation(line: 156, column: 2, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5328, file: !4214, line: 156, column: 2)
!5331 = !DILocation(line: 156, column: 2, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !4214, line: 156, column: 2)
!5333 = !DILocation(line: 157, column: 1, scope: !5297)
!5334 = distinct !DISubprogram(name: "__list_add_valid", scope: !4214, file: !4214, line: 128, type: !5335, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!912, !105, !105, !105}
!5337 = !{!5338, !5339, !5340}
!5338 = !DILocalVariable(name: "new", arg: 1, scope: !5334, file: !4214, line: 128, type: !105)
!5339 = !DILocalVariable(name: "prev", arg: 2, scope: !5334, file: !4214, line: 129, type: !105)
!5340 = !DILocalVariable(name: "next", arg: 3, scope: !5334, file: !4214, line: 130, type: !105)
!5341 = !DILocation(line: 128, column: 55, scope: !5334)
!5342 = !DILocation(line: 129, column: 23, scope: !5334)
!5343 = !DILocation(line: 130, column: 23, scope: !5334)
!5344 = !DILocation(line: 132, column: 2, scope: !5334)
!5345 = distinct !DISubprogram(name: "free_ei", scope: !3, file: !3, line: 125, type: !4089, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5346)
!5346 = !{!5347}
!5347 = !DILocalVariable(name: "ei", arg: 1, scope: !5345, file: !3, line: 125, type: !247)
!5348 = !DILocation(line: 125, column: 50, scope: !5345)
!5349 = !DILocation(line: 127, column: 6, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 127, column: 6)
!5351 = !DILocation(line: 127, column: 6, scope: !5345)
!5352 = !DILocation(line: 128, column: 3, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 127, column: 10)
!5354 = !DILocation(line: 128, column: 7, scope: !5353)
!5355 = !DILocation(line: 128, column: 16, scope: !5353)
!5356 = !DILocation(line: 129, column: 10, scope: !5353)
!5357 = !DILocation(line: 129, column: 3, scope: !5353)
!5358 = !DILocation(line: 130, column: 2, scope: !5353)
!5359 = !DILocation(line: 131, column: 1, scope: !5345)
!5360 = distinct !DISubprogram(name: "eventfs_root_lookup", scope: !3, file: !3, line: 594, type: !1861, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5373, !5376, !5378, !5381, !5382, !5383, !5384}
!5362 = !DILocalVariable(name: "dir", arg: 1, scope: !5360, file: !3, line: 594, type: !1841)
!5363 = !DILocalVariable(name: "dentry", arg: 2, scope: !5360, file: !3, line: 595, type: !1863)
!5364 = !DILocalVariable(name: "flags", arg: 3, scope: !5360, file: !3, line: 596, type: !7)
!5365 = !DILocalVariable(name: "ei_child", scope: !5360, file: !3, line: 598, type: !247)
!5366 = !DILocalVariable(name: "ti", scope: !5360, file: !3, line: 599, type: !3767)
!5367 = !DILocalVariable(name: "ei", scope: !5360, file: !3, line: 600, type: !247)
!5368 = !DILocalVariable(name: "name", scope: !5360, file: !3, line: 601, type: !21)
!5369 = !DILocalVariable(name: "result", scope: !5360, file: !3, line: 602, type: !1863)
!5370 = !DILocalVariable(name: "__mptr", scope: !5371, file: !3, line: 614, type: !25)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 614, column: 2)
!5372 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 614, column: 2)
!5373 = !DILocalVariable(name: "__mptr", scope: !5374, file: !3, line: 614, type: !25)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 614, column: 2)
!5375 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 614, column: 2)
!5376 = !DILocalVariable(name: "i", scope: !5377, file: !3, line: 623, type: !27)
!5377 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 623, column: 2)
!5378 = !DILocalVariable(name: "data", scope: !5379, file: !3, line: 624, type: !25)
!5379 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 623, column: 43)
!5380 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 623, column: 2)
!5381 = !DILocalVariable(name: "mode", scope: !5379, file: !3, line: 625, type: !29)
!5382 = !DILocalVariable(name: "fops", scope: !5379, file: !3, line: 626, type: !279)
!5383 = !DILocalVariable(name: "entry", scope: !5379, file: !3, line: 627, type: !265)
!5384 = !DILabel(scope: !5360, name: "out", file: !3, line: 639)
!5385 = !DILocation(line: 594, column: 57, scope: !5360)
!5386 = !DILocation(line: 595, column: 23, scope: !5360)
!5387 = !DILocation(line: 596, column: 21, scope: !5360)
!5388 = !DILocation(line: 598, column: 2, scope: !5360)
!5389 = !DILocation(line: 598, column: 24, scope: !5360)
!5390 = !DILocation(line: 599, column: 2, scope: !5360)
!5391 = !DILocation(line: 599, column: 24, scope: !5360)
!5392 = !DILocation(line: 600, column: 2, scope: !5360)
!5393 = !DILocation(line: 600, column: 24, scope: !5360)
!5394 = !DILocation(line: 601, column: 2, scope: !5360)
!5395 = !DILocation(line: 601, column: 14, scope: !5360)
!5396 = !DILocation(line: 601, column: 21, scope: !5360)
!5397 = !DILocation(line: 601, column: 29, scope: !5360)
!5398 = !DILocation(line: 601, column: 36, scope: !5360)
!5399 = !DILocation(line: 602, column: 2, scope: !5360)
!5400 = !DILocation(line: 602, column: 17, scope: !5360)
!5401 = !DILocation(line: 604, column: 19, scope: !5360)
!5402 = !DILocation(line: 604, column: 7, scope: !5360)
!5403 = !DILocation(line: 604, column: 5, scope: !5360)
!5404 = !DILocation(line: 605, column: 8, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 605, column: 6)
!5406 = !DILocation(line: 605, column: 12, scope: !5405)
!5407 = !DILocation(line: 605, column: 18, scope: !5405)
!5408 = !DILocation(line: 605, column: 6, scope: !5360)
!5409 = !DILocation(line: 606, column: 10, scope: !5405)
!5410 = !DILocation(line: 606, column: 3, scope: !5405)
!5411 = !DILocation(line: 608, column: 2, scope: !5360)
!5412 = !DILocation(line: 610, column: 7, scope: !5360)
!5413 = !DILocation(line: 610, column: 11, scope: !5360)
!5414 = !DILocation(line: 610, column: 5, scope: !5360)
!5415 = !DILocation(line: 611, column: 7, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 611, column: 6)
!5417 = !DILocation(line: 611, column: 10, scope: !5416)
!5418 = !DILocation(line: 611, column: 13, scope: !5416)
!5419 = !DILocation(line: 611, column: 17, scope: !5416)
!5420 = !DILocation(line: 611, column: 6, scope: !5360)
!5421 = !DILocation(line: 612, column: 3, scope: !5416)
!5422 = !DILocation(line: 614, column: 2, scope: !5371)
!5423 = !DILocation(line: 614, column: 2, scope: !5372)
!5424 = !DILocation(line: 614, column: 2, scope: !5375)
!5425 = !DILocation(line: 615, column: 14, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 615, column: 7)
!5427 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 614, column: 53)
!5428 = !DILocation(line: 615, column: 24, scope: !5426)
!5429 = !DILocation(line: 615, column: 30, scope: !5426)
!5430 = !DILocation(line: 615, column: 7, scope: !5426)
!5431 = !DILocation(line: 615, column: 36, scope: !5426)
!5432 = !DILocation(line: 615, column: 7, scope: !5427)
!5433 = !DILocation(line: 616, column: 4, scope: !5426)
!5434 = !DILocation(line: 617, column: 7, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 617, column: 7)
!5436 = !DILocation(line: 617, column: 17, scope: !5435)
!5437 = !DILocation(line: 617, column: 7, scope: !5427)
!5438 = !DILocation(line: 618, column: 4, scope: !5435)
!5439 = !DILocation(line: 619, column: 29, scope: !5427)
!5440 = !DILocation(line: 619, column: 37, scope: !5427)
!5441 = !DILocation(line: 619, column: 41, scope: !5427)
!5442 = !DILocation(line: 619, column: 12, scope: !5427)
!5443 = !DILocation(line: 619, column: 10, scope: !5427)
!5444 = !DILocation(line: 620, column: 3, scope: !5427)
!5445 = !DILocation(line: 614, column: 2, scope: !5374)
!5446 = distinct !{!5446, !5423, !5447, !4028, !4029}
!5447 = !DILocation(line: 621, column: 2, scope: !5372)
!5448 = !DILocation(line: 623, column: 7, scope: !5377)
!5449 = !DILocation(line: 623, column: 11, scope: !5377)
!5450 = !DILocation(line: 623, column: 18, scope: !5380)
!5451 = !DILocation(line: 623, column: 22, scope: !5380)
!5452 = !DILocation(line: 623, column: 26, scope: !5380)
!5453 = !DILocation(line: 623, column: 20, scope: !5380)
!5454 = !DILocation(line: 623, column: 2, scope: !5377)
!5455 = !DILocation(line: 624, column: 3, scope: !5379)
!5456 = !DILocation(line: 624, column: 9, scope: !5379)
!5457 = !DILocation(line: 625, column: 3, scope: !5379)
!5458 = !DILocation(line: 625, column: 11, scope: !5379)
!5459 = !DILocation(line: 626, column: 3, scope: !5379)
!5460 = !DILocation(line: 626, column: 33, scope: !5379)
!5461 = !DILocation(line: 627, column: 3, scope: !5379)
!5462 = !DILocation(line: 627, column: 31, scope: !5379)
!5463 = !DILocation(line: 627, column: 40, scope: !5379)
!5464 = !DILocation(line: 627, column: 44, scope: !5379)
!5465 = !DILocation(line: 627, column: 52, scope: !5379)
!5466 = !DILocation(line: 629, column: 14, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 629, column: 7)
!5468 = !DILocation(line: 629, column: 20, scope: !5467)
!5469 = !DILocation(line: 629, column: 27, scope: !5467)
!5470 = !DILocation(line: 629, column: 7, scope: !5467)
!5471 = !DILocation(line: 629, column: 33, scope: !5467)
!5472 = !DILocation(line: 629, column: 7, scope: !5379)
!5473 = !DILocation(line: 630, column: 4, scope: !5467)
!5474 = !DILocation(line: 632, column: 10, scope: !5379)
!5475 = !DILocation(line: 632, column: 14, scope: !5379)
!5476 = !DILocation(line: 632, column: 8, scope: !5379)
!5477 = !DILocation(line: 633, column: 7, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 633, column: 7)
!5479 = !DILocation(line: 633, column: 14, scope: !5478)
!5480 = !DILocation(line: 633, column: 23, scope: !5478)
!5481 = !DILocation(line: 633, column: 50, scope: !5478)
!5482 = !DILocation(line: 633, column: 7, scope: !5379)
!5483 = !DILocation(line: 634, column: 4, scope: !5478)
!5484 = !DILocation(line: 636, column: 31, scope: !5379)
!5485 = !DILocation(line: 636, column: 39, scope: !5379)
!5486 = !DILocation(line: 636, column: 43, scope: !5379)
!5487 = !DILocation(line: 636, column: 46, scope: !5379)
!5488 = !DILocation(line: 636, column: 52, scope: !5379)
!5489 = !DILocation(line: 636, column: 58, scope: !5379)
!5490 = !DILocation(line: 636, column: 12, scope: !5379)
!5491 = !DILocation(line: 636, column: 10, scope: !5379)
!5492 = !DILocation(line: 637, column: 3, scope: !5379)
!5493 = !DILocation(line: 638, column: 2, scope: !5380)
!5494 = !DILocation(line: 623, column: 39, scope: !5380)
!5495 = !DILocation(line: 623, column: 2, scope: !5380)
!5496 = distinct !{!5496, !5454, !5497, !4028, !4029}
!5497 = !DILocation(line: 638, column: 2, scope: !5377)
!5498 = !DILocation(line: 639, column: 2, scope: !5360)
!5499 = !DILocation(line: 640, column: 2, scope: !5360)
!5500 = !DILocation(line: 641, column: 9, scope: !5360)
!5501 = !DILocation(line: 641, column: 2, scope: !5360)
!5502 = !DILocation(line: 642, column: 1, scope: !5360)
!5503 = distinct !DISubprogram(name: "eventfs_permission", scope: !3, file: !3, line: 284, type: !2557, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5504)
!5504 = !{!5505, !5506, !5507}
!5505 = !DILocalVariable(name: "idmap", arg: 1, scope: !5503, file: !3, line: 284, type: !2512)
!5506 = !DILocalVariable(name: "inode", arg: 2, scope: !5503, file: !3, line: 285, type: !1841)
!5507 = !DILocalVariable(name: "mask", arg: 3, scope: !5503, file: !3, line: 285, type: !27)
!5508 = !DILocation(line: 284, column: 49, scope: !5503)
!5509 = !DILocation(line: 285, column: 24, scope: !5503)
!5510 = !DILocation(line: 285, column: 35, scope: !5503)
!5511 = !DILocation(line: 287, column: 27, scope: !5503)
!5512 = !DILocation(line: 287, column: 2, scope: !5503)
!5513 = !DILocation(line: 288, column: 28, scope: !5503)
!5514 = !DILocation(line: 288, column: 35, scope: !5503)
!5515 = !DILocation(line: 288, column: 42, scope: !5503)
!5516 = !DILocation(line: 288, column: 9, scope: !5503)
!5517 = !DILocation(line: 288, column: 2, scope: !5503)
!5518 = distinct !DISubprogram(name: "eventfs_set_attr", scope: !3, file: !3, line: 176, type: !2598, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5519 = !{!5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5531}
!5520 = !DILocalVariable(name: "idmap", arg: 1, scope: !5518, file: !3, line: 176, type: !2512)
!5521 = !DILocalVariable(name: "dentry", arg: 2, scope: !5518, file: !3, line: 176, type: !1863)
!5522 = !DILocalVariable(name: "iattr", arg: 3, scope: !5518, file: !3, line: 177, type: !2600)
!5523 = !DILocalVariable(name: "entry", scope: !5518, file: !3, line: 179, type: !265)
!5524 = !DILocalVariable(name: "ei", scope: !5518, file: !3, line: 180, type: !247)
!5525 = !DILocalVariable(name: "name", scope: !5518, file: !3, line: 181, type: !21)
!5526 = !DILocalVariable(name: "ret", scope: !5518, file: !3, line: 182, type: !27)
!5527 = !DILocalVariable(name: "i", scope: !5528, file: !3, line: 219, type: !27)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 219, column: 3)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 216, column: 9)
!5530 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 213, column: 6)
!5531 = !DILabel(scope: !5518, name: "out", file: !3, line: 227)
!5532 = !DILocation(line: 176, column: 47, scope: !5518)
!5533 = !DILocation(line: 176, column: 69, scope: !5518)
!5534 = !DILocation(line: 177, column: 22, scope: !5518)
!5535 = !DILocation(line: 179, column: 2, scope: !5518)
!5536 = !DILocation(line: 179, column: 30, scope: !5518)
!5537 = !DILocation(line: 180, column: 2, scope: !5518)
!5538 = !DILocation(line: 180, column: 24, scope: !5518)
!5539 = !DILocation(line: 181, column: 2, scope: !5518)
!5540 = !DILocation(line: 181, column: 14, scope: !5518)
!5541 = !DILocation(line: 182, column: 2, scope: !5518)
!5542 = !DILocation(line: 182, column: 6, scope: !5518)
!5543 = !DILocation(line: 184, column: 2, scope: !5518)
!5544 = !DILocation(line: 185, column: 7, scope: !5518)
!5545 = !DILocation(line: 185, column: 15, scope: !5518)
!5546 = !DILocation(line: 185, column: 5, scope: !5518)
!5547 = !DILocation(line: 186, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 186, column: 6)
!5549 = !DILocation(line: 186, column: 10, scope: !5548)
!5550 = !DILocation(line: 186, column: 6, scope: !5518)
!5551 = !DILocation(line: 188, column: 3, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 186, column: 20)
!5553 = !DILocation(line: 189, column: 3, scope: !5552)
!5554 = !DILocation(line: 193, column: 8, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 193, column: 6)
!5556 = !DILocation(line: 193, column: 16, scope: !5555)
!5557 = !DILocation(line: 193, column: 25, scope: !5555)
!5558 = !DILocation(line: 193, column: 32, scope: !5555)
!5559 = !DILocation(line: 193, column: 6, scope: !5518)
!5560 = !DILocation(line: 194, column: 8, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 194, column: 7)
!5562 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 193, column: 44)
!5563 = !DILocation(line: 194, column: 12, scope: !5561)
!5564 = !DILocation(line: 194, column: 7, scope: !5562)
!5565 = !DILocation(line: 195, column: 30, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 194, column: 25)
!5567 = !DILocation(line: 195, column: 34, scope: !5566)
!5568 = !DILocation(line: 195, column: 22, scope: !5566)
!5569 = !DILocation(line: 195, column: 4, scope: !5566)
!5570 = !DILocation(line: 195, column: 8, scope: !5566)
!5571 = !DILocation(line: 195, column: 20, scope: !5566)
!5572 = !DILocation(line: 197, column: 9, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 197, column: 8)
!5574 = !DILocation(line: 197, column: 13, scope: !5573)
!5575 = !DILocation(line: 197, column: 8, scope: !5566)
!5576 = !DILocation(line: 198, column: 9, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 197, column: 26)
!5578 = !DILocation(line: 199, column: 5, scope: !5577)
!5579 = !DILocation(line: 201, column: 3, scope: !5566)
!5580 = !DILocation(line: 202, column: 2, scope: !5562)
!5581 = !DILocation(line: 204, column: 23, scope: !5518)
!5582 = !DILocation(line: 204, column: 30, scope: !5518)
!5583 = !DILocation(line: 204, column: 38, scope: !5518)
!5584 = !DILocation(line: 204, column: 8, scope: !5518)
!5585 = !DILocation(line: 204, column: 6, scope: !5518)
!5586 = !DILocation(line: 205, column: 6, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 205, column: 6)
!5588 = !DILocation(line: 205, column: 10, scope: !5587)
!5589 = !DILocation(line: 205, column: 6, scope: !5518)
!5590 = !DILocation(line: 206, column: 3, scope: !5587)
!5591 = !DILocation(line: 213, column: 6, scope: !5530)
!5592 = !DILocation(line: 213, column: 14, scope: !5530)
!5593 = !DILocation(line: 213, column: 23, scope: !5530)
!5594 = !DILocation(line: 213, column: 30, scope: !5530)
!5595 = !DILocation(line: 213, column: 6, scope: !5518)
!5596 = !DILocation(line: 214, column: 16, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 213, column: 41)
!5598 = !DILocation(line: 214, column: 20, scope: !5597)
!5599 = !DILocation(line: 214, column: 26, scope: !5597)
!5600 = !DILocation(line: 214, column: 3, scope: !5597)
!5601 = !DILocation(line: 216, column: 2, scope: !5597)
!5602 = !DILocation(line: 217, column: 10, scope: !5529)
!5603 = !DILocation(line: 217, column: 18, scope: !5529)
!5604 = !DILocation(line: 217, column: 25, scope: !5529)
!5605 = !DILocation(line: 217, column: 8, scope: !5529)
!5606 = !DILocation(line: 219, column: 8, scope: !5528)
!5607 = !DILocation(line: 219, column: 12, scope: !5528)
!5608 = !DILocation(line: 219, column: 19, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 219, column: 3)
!5610 = !DILocation(line: 219, column: 23, scope: !5609)
!5611 = !DILocation(line: 219, column: 27, scope: !5609)
!5612 = !DILocation(line: 219, column: 21, scope: !5609)
!5613 = !DILocation(line: 219, column: 3, scope: !5528)
!5614 = !DILocation(line: 220, column: 13, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 219, column: 44)
!5616 = !DILocation(line: 220, column: 17, scope: !5615)
!5617 = !DILocation(line: 220, column: 25, scope: !5615)
!5618 = !DILocation(line: 220, column: 10, scope: !5615)
!5619 = !DILocation(line: 221, column: 15, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 221, column: 8)
!5621 = !DILocation(line: 221, column: 21, scope: !5620)
!5622 = !DILocation(line: 221, column: 28, scope: !5620)
!5623 = !DILocation(line: 221, column: 8, scope: !5620)
!5624 = !DILocation(line: 221, column: 34, scope: !5620)
!5625 = !DILocation(line: 221, column: 8, scope: !5615)
!5626 = !DILocation(line: 222, column: 18, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 221, column: 40)
!5628 = !DILocation(line: 222, column: 22, scope: !5627)
!5629 = !DILocation(line: 222, column: 34, scope: !5627)
!5630 = !DILocation(line: 222, column: 38, scope: !5627)
!5631 = !DILocation(line: 222, column: 5, scope: !5627)
!5632 = !DILocation(line: 223, column: 5, scope: !5627)
!5633 = !DILocation(line: 225, column: 3, scope: !5615)
!5634 = !DILocation(line: 219, column: 40, scope: !5609)
!5635 = !DILocation(line: 219, column: 3, scope: !5609)
!5636 = distinct !{!5636, !5613, !5637, !4028, !4029}
!5637 = !DILocation(line: 225, column: 3, scope: !5528)
!5638 = !DILocation(line: 213, column: 32, scope: !5530)
!5639 = !DILocation(line: 227, column: 2, scope: !5518)
!5640 = !DILocation(line: 228, column: 2, scope: !5518)
!5641 = !DILocation(line: 229, column: 9, scope: !5518)
!5642 = !DILocation(line: 229, column: 2, scope: !5518)
!5643 = !DILocation(line: 230, column: 1, scope: !5518)
!5644 = distinct !DISubprogram(name: "eventfs_get_attr", scope: !3, file: !3, line: 271, type: !2635, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5645 = !{!5646, !5647, !5648, !5649, !5650, !5651, !5652}
!5646 = !DILocalVariable(name: "idmap", arg: 1, scope: !5644, file: !3, line: 271, type: !2512)
!5647 = !DILocalVariable(name: "path", arg: 2, scope: !5644, file: !3, line: 272, type: !2236)
!5648 = !DILocalVariable(name: "stat", arg: 3, scope: !5644, file: !3, line: 272, type: !2637)
!5649 = !DILocalVariable(name: "request_mask", arg: 4, scope: !5644, file: !3, line: 273, type: !423)
!5650 = !DILocalVariable(name: "flags", arg: 5, scope: !5644, file: !3, line: 273, type: !7)
!5651 = !DILocalVariable(name: "dentry", scope: !5644, file: !3, line: 275, type: !1863)
!5652 = !DILocalVariable(name: "inode", scope: !5644, file: !3, line: 276, type: !1841)
!5653 = !DILocation(line: 271, column: 47, scope: !5644)
!5654 = !DILocation(line: 272, column: 27, scope: !5644)
!5655 = !DILocation(line: 272, column: 47, scope: !5644)
!5656 = !DILocation(line: 273, column: 12, scope: !5644)
!5657 = !DILocation(line: 273, column: 39, scope: !5644)
!5658 = !DILocation(line: 275, column: 2, scope: !5644)
!5659 = !DILocation(line: 275, column: 17, scope: !5644)
!5660 = !DILocation(line: 275, column: 26, scope: !5644)
!5661 = !DILocation(line: 275, column: 32, scope: !5644)
!5662 = !DILocation(line: 276, column: 2, scope: !5644)
!5663 = !DILocation(line: 276, column: 16, scope: !5644)
!5664 = !DILocation(line: 276, column: 40, scope: !5644)
!5665 = !DILocation(line: 276, column: 24, scope: !5644)
!5666 = !DILocation(line: 278, column: 27, scope: !5644)
!5667 = !DILocation(line: 278, column: 2, scope: !5644)
!5668 = !DILocation(line: 280, column: 19, scope: !5644)
!5669 = !DILocation(line: 280, column: 26, scope: !5644)
!5670 = !DILocation(line: 280, column: 40, scope: !5644)
!5671 = !DILocation(line: 280, column: 47, scope: !5644)
!5672 = !DILocation(line: 280, column: 2, scope: !5644)
!5673 = !DILocation(line: 282, column: 1, scope: !5644)
!5674 = !DILocation(line: 281, column: 2, scope: !5644)
!5675 = !DISubprogram(name: "strcmp", scope: !4976, file: !4976, line: 88, type: !5676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!27, !21, !21}
!5678 = distinct !DISubprogram(name: "lookup_dir_entry", scope: !3, file: !3, line: 475, type: !5679, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5681)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!1863, !1863, !247, !247}
!5681 = !{!5682, !5683, !5684, !5685, !5686}
!5682 = !DILocalVariable(name: "dentry", arg: 1, scope: !5678, file: !3, line: 475, type: !1863)
!5683 = !DILocalVariable(name: "pei", arg: 2, scope: !5678, file: !3, line: 476, type: !247)
!5684 = !DILocalVariable(name: "ei", arg: 3, scope: !5678, file: !3, line: 476, type: !247)
!5685 = !DILocalVariable(name: "ti", scope: !5678, file: !3, line: 478, type: !3767)
!5686 = !DILocalVariable(name: "inode", scope: !5678, file: !3, line: 479, type: !1841)
!5687 = !DILocation(line: 475, column: 55, scope: !5678)
!5688 = !DILocation(line: 476, column: 24, scope: !5678)
!5689 = !DILocation(line: 476, column: 51, scope: !5678)
!5690 = !DILocation(line: 478, column: 2, scope: !5678)
!5691 = !DILocation(line: 478, column: 24, scope: !5678)
!5692 = !DILocation(line: 479, column: 2, scope: !5678)
!5693 = !DILocation(line: 479, column: 16, scope: !5678)
!5694 = !DILocation(line: 481, column: 28, scope: !5678)
!5695 = !DILocation(line: 481, column: 36, scope: !5678)
!5696 = !DILocation(line: 481, column: 10, scope: !5678)
!5697 = !DILocation(line: 481, column: 8, scope: !5678)
!5698 = !DILocation(line: 482, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 482, column: 6)
!5700 = !DILocation(line: 482, column: 6, scope: !5678)
!5701 = !DILocation(line: 483, column: 10, scope: !5699)
!5702 = !DILocation(line: 483, column: 3, scope: !5699)
!5703 = !DILocation(line: 486, column: 20, scope: !5678)
!5704 = !DILocation(line: 486, column: 28, scope: !5678)
!5705 = !DILocation(line: 486, column: 36, scope: !5678)
!5706 = !DILocation(line: 486, column: 40, scope: !5678)
!5707 = !DILocation(line: 486, column: 2, scope: !5678)
!5708 = !DILocation(line: 489, column: 2, scope: !5678)
!5709 = !DILocation(line: 489, column: 9, scope: !5678)
!5710 = !DILocation(line: 489, column: 14, scope: !5678)
!5711 = !DILocation(line: 490, column: 2, scope: !5678)
!5712 = !DILocation(line: 490, column: 9, scope: !5678)
!5713 = !DILocation(line: 490, column: 15, scope: !5678)
!5714 = !DILocation(line: 493, column: 33, scope: !5678)
!5715 = !DILocation(line: 493, column: 17, scope: !5678)
!5716 = !DILocation(line: 493, column: 2, scope: !5678)
!5717 = !DILocation(line: 493, column: 9, scope: !5678)
!5718 = !DILocation(line: 493, column: 15, scope: !5678)
!5719 = !DILocation(line: 495, column: 19, scope: !5678)
!5720 = !DILocation(line: 495, column: 7, scope: !5678)
!5721 = !DILocation(line: 495, column: 5, scope: !5678)
!5722 = !DILocation(line: 496, column: 2, scope: !5678)
!5723 = !DILocation(line: 496, column: 6, scope: !5678)
!5724 = !DILocation(line: 496, column: 12, scope: !5678)
!5725 = !DILocation(line: 498, column: 16, scope: !5678)
!5726 = !DILocation(line: 498, column: 2, scope: !5678)
!5727 = !DILocation(line: 498, column: 6, scope: !5678)
!5728 = !DILocation(line: 498, column: 14, scope: !5678)
!5729 = !DILocation(line: 500, column: 28, scope: !5678)
!5730 = !DILocation(line: 500, column: 21, scope: !5678)
!5731 = !DILocation(line: 500, column: 2, scope: !5678)
!5732 = !DILocation(line: 500, column: 10, scope: !5678)
!5733 = !DILocation(line: 500, column: 19, scope: !5678)
!5734 = !DILocation(line: 502, column: 8, scope: !5678)
!5735 = !DILocation(line: 502, column: 16, scope: !5678)
!5736 = !DILocation(line: 502, column: 2, scope: !5678)
!5737 = !DILocation(line: 503, column: 2, scope: !5678)
!5738 = !DILocation(line: 504, column: 1, scope: !5678)
!5739 = distinct !DISubprogram(name: "lookup_file_dentry", scope: !3, file: !3, line: 571, type: !5740, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5742)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!1863, !1863, !247, !27, !29, !25, !279}
!5742 = !{!5743, !5744, !5745, !5746, !5747, !5748, !5749}
!5743 = !DILocalVariable(name: "dentry", arg: 1, scope: !5739, file: !3, line: 571, type: !1863)
!5744 = !DILocalVariable(name: "ei", arg: 2, scope: !5739, file: !3, line: 572, type: !247)
!5745 = !DILocalVariable(name: "idx", arg: 3, scope: !5739, file: !3, line: 572, type: !27)
!5746 = !DILocalVariable(name: "mode", arg: 4, scope: !5739, file: !3, line: 573, type: !29)
!5747 = !DILocalVariable(name: "data", arg: 5, scope: !5739, file: !3, line: 573, type: !25)
!5748 = !DILocalVariable(name: "fops", arg: 6, scope: !5739, file: !3, line: 574, type: !279)
!5749 = !DILocalVariable(name: "attr", scope: !5739, file: !3, line: 576, type: !3738)
!5750 = !DILocation(line: 571, column: 35, scope: !5739)
!5751 = !DILocation(line: 572, column: 28, scope: !5739)
!5752 = !DILocation(line: 572, column: 36, scope: !5739)
!5753 = !DILocation(line: 573, column: 14, scope: !5739)
!5754 = !DILocation(line: 573, column: 26, scope: !5739)
!5755 = !DILocation(line: 574, column: 36, scope: !5739)
!5756 = !DILocation(line: 576, column: 2, scope: !5739)
!5757 = !DILocation(line: 576, column: 23, scope: !5739)
!5758 = !DILocation(line: 578, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 578, column: 6)
!5760 = !DILocation(line: 578, column: 10, scope: !5759)
!5761 = !DILocation(line: 578, column: 6, scope: !5739)
!5762 = !DILocation(line: 579, column: 11, scope: !5759)
!5763 = !DILocation(line: 579, column: 15, scope: !5759)
!5764 = !DILocation(line: 579, column: 27, scope: !5759)
!5765 = !DILocation(line: 579, column: 8, scope: !5759)
!5766 = !DILocation(line: 579, column: 3, scope: !5759)
!5767 = !DILocation(line: 581, column: 21, scope: !5739)
!5768 = !DILocation(line: 581, column: 25, scope: !5739)
!5769 = !DILocation(line: 581, column: 33, scope: !5739)
!5770 = !DILocation(line: 581, column: 39, scope: !5739)
!5771 = !DILocation(line: 581, column: 45, scope: !5739)
!5772 = !DILocation(line: 581, column: 51, scope: !5739)
!5773 = !DILocation(line: 581, column: 9, scope: !5739)
!5774 = !DILocation(line: 582, column: 1, scope: !5739)
!5775 = !DILocation(line: 581, column: 2, scope: !5739)
!5776 = distinct !DISubprogram(name: "update_inode_attr", scope: !3, file: !3, line: 390, type: !5777, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5779)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{null, !1863, !1841, !3738, !29}
!5779 = !{!5780, !5781, !5782, !5783, !5784}
!5780 = !DILocalVariable(name: "dentry", arg: 1, scope: !5776, file: !3, line: 390, type: !1863)
!5781 = !DILocalVariable(name: "inode", arg: 2, scope: !5776, file: !3, line: 390, type: !1841)
!5782 = !DILocalVariable(name: "attr", arg: 3, scope: !5776, file: !3, line: 391, type: !3738)
!5783 = !DILocalVariable(name: "mode", arg: 4, scope: !5776, file: !3, line: 391, type: !29)
!5784 = !DILocalVariable(name: "events_ei", scope: !5776, file: !3, line: 393, type: !247)
!5785 = !DILocation(line: 390, column: 46, scope: !5776)
!5786 = !DILocation(line: 390, column: 68, scope: !5776)
!5787 = !DILocation(line: 391, column: 31, scope: !5776)
!5788 = !DILocation(line: 391, column: 45, scope: !5776)
!5789 = !DILocation(line: 393, column: 2, scope: !5776)
!5790 = !DILocation(line: 393, column: 24, scope: !5776)
!5791 = !DILocation(line: 393, column: 56, scope: !5776)
!5792 = !DILocation(line: 393, column: 36, scope: !5776)
!5793 = !DILocation(line: 395, column: 7, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 395, column: 6)
!5795 = !DILocation(line: 395, column: 6, scope: !5776)
!5796 = !DILocation(line: 396, column: 3, scope: !5794)
!5797 = !DILocation(line: 398, column: 18, scope: !5776)
!5798 = !DILocation(line: 398, column: 2, scope: !5776)
!5799 = !DILocation(line: 398, column: 9, scope: !5776)
!5800 = !DILocation(line: 398, column: 16, scope: !5776)
!5801 = !DILocation(line: 399, column: 2, scope: !5776)
!5802 = !DILocation(line: 399, column: 9, scope: !5776)
!5803 = !DILocation(line: 399, column: 17, scope: !5776)
!5804 = !DILocation(line: 399, column: 28, scope: !5776)
!5805 = !DILocation(line: 399, column: 33, scope: !5776)
!5806 = !DILocation(line: 400, column: 2, scope: !5776)
!5807 = !DILocation(line: 400, column: 9, scope: !5776)
!5808 = !DILocation(line: 400, column: 17, scope: !5776)
!5809 = !DILocation(line: 400, column: 28, scope: !5776)
!5810 = !DILocation(line: 400, column: 33, scope: !5776)
!5811 = !DILocation(line: 402, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 402, column: 6)
!5813 = !DILocation(line: 402, column: 6, scope: !5776)
!5814 = !DILocation(line: 403, column: 3, scope: !5812)
!5815 = !DILocation(line: 405, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 405, column: 6)
!5817 = !DILocation(line: 405, column: 12, scope: !5816)
!5818 = !DILocation(line: 405, column: 17, scope: !5816)
!5819 = !DILocation(line: 405, column: 6, scope: !5776)
!5820 = !DILocation(line: 406, column: 19, scope: !5816)
!5821 = !DILocation(line: 406, column: 25, scope: !5816)
!5822 = !DILocation(line: 406, column: 30, scope: !5816)
!5823 = !DILocation(line: 406, column: 3, scope: !5816)
!5824 = !DILocation(line: 406, column: 10, scope: !5816)
!5825 = !DILocation(line: 406, column: 17, scope: !5816)
!5826 = !DILocation(line: 408, column: 6, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 408, column: 6)
!5828 = !DILocation(line: 408, column: 12, scope: !5827)
!5829 = !DILocation(line: 408, column: 17, scope: !5827)
!5830 = !DILocation(line: 408, column: 6, scope: !5776)
!5831 = !DILocation(line: 409, column: 3, scope: !5827)
!5832 = !DILocation(line: 409, column: 10, scope: !5827)
!5833 = !DILocation(line: 409, column: 18, scope: !5827)
!5834 = !DILocation(line: 409, column: 24, scope: !5827)
!5835 = !DILocation(line: 411, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 411, column: 6)
!5837 = !DILocation(line: 411, column: 12, scope: !5836)
!5838 = !DILocation(line: 411, column: 17, scope: !5836)
!5839 = !DILocation(line: 411, column: 6, scope: !5776)
!5840 = !DILocation(line: 412, column: 3, scope: !5836)
!5841 = !DILocation(line: 412, column: 10, scope: !5836)
!5842 = !DILocation(line: 412, column: 18, scope: !5836)
!5843 = !DILocation(line: 412, column: 24, scope: !5836)
!5844 = !DILocation(line: 413, column: 1, scope: !5776)
!5845 = distinct !DISubprogram(name: "eventfs_dir_ino", scope: !3, file: !3, line: 51, type: !5846, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5848)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!27, !247}
!5848 = !{!5849}
!5849 = !DILocalVariable(name: "ei", arg: 1, scope: !5845, file: !3, line: 51, type: !247)
!5850 = !DILocation(line: 51, column: 50, scope: !5845)
!5851 = !DILocation(line: 53, column: 7, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 53, column: 6)
!5853 = !DILocation(line: 53, column: 11, scope: !5852)
!5854 = !DILocation(line: 53, column: 6, scope: !5845)
!5855 = !DILocation(line: 54, column: 13, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 53, column: 16)
!5857 = !DILocation(line: 54, column: 3, scope: !5856)
!5858 = !DILocation(line: 54, column: 7, scope: !5856)
!5859 = !DILocation(line: 54, column: 11, scope: !5856)
!5860 = !DILocation(line: 56, column: 7, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 56, column: 7)
!5862 = !DILocation(line: 56, column: 11, scope: !5861)
!5863 = !DILocation(line: 56, column: 15, scope: !5861)
!5864 = !DILocation(line: 56, column: 7, scope: !5856)
!5865 = !DILocation(line: 57, column: 14, scope: !5861)
!5866 = !DILocation(line: 57, column: 4, scope: !5861)
!5867 = !DILocation(line: 57, column: 8, scope: !5861)
!5868 = !DILocation(line: 57, column: 12, scope: !5861)
!5869 = !DILocation(line: 58, column: 2, scope: !5856)
!5870 = !DILocation(line: 60, column: 9, scope: !5845)
!5871 = !DILocation(line: 60, column: 13, scope: !5845)
!5872 = !DILocation(line: 60, column: 2, scope: !5845)
!5873 = !DISubprogram(name: "d_add", scope: !1865, file: !1865, line: 269, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5874 = distinct !DISubprogram(name: "eventfs_find_events", scope: !3, file: !3, line: 365, type: !5875, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!247, !1863}
!5877 = !{!5878, !5879}
!5878 = !DILocalVariable(name: "dentry", arg: 1, scope: !5874, file: !3, line: 365, type: !1863)
!5879 = !DILocalVariable(name: "ei", scope: !5874, file: !3, line: 367, type: !247)
!5880 = !DILocation(line: 365, column: 65, scope: !5874)
!5881 = !DILocation(line: 367, column: 2, scope: !5874)
!5882 = !DILocation(line: 367, column: 24, scope: !5874)
!5883 = !DILocation(line: 369, column: 2, scope: !5874)
!5884 = !DILocation(line: 371, column: 12, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 369, column: 5)
!5886 = !DILocation(line: 371, column: 20, scope: !5885)
!5887 = !DILocation(line: 371, column: 10, scope: !5885)
!5888 = !DILocation(line: 373, column: 8, scope: !5885)
!5889 = !DILocation(line: 373, column: 16, scope: !5885)
!5890 = !DILocation(line: 373, column: 6, scope: !5885)
!5891 = !DILocation(line: 379, column: 7, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 379, column: 7)
!5893 = !DILocation(line: 379, column: 11, scope: !5892)
!5894 = !DILocation(line: 379, column: 7, scope: !5885)
!5895 = !DILocation(line: 380, column: 4, scope: !5892)
!5896 = !DILocation(line: 383, column: 2, scope: !5885)
!5897 = !DILocation(line: 383, column: 12, scope: !5874)
!5898 = !DILocation(line: 383, column: 16, scope: !5874)
!5899 = !DILocation(line: 383, column: 11, scope: !5874)
!5900 = distinct !{!5900, !5883, !5901, !4028, !4029}
!5901 = !DILocation(line: 383, column: 25, scope: !5874)
!5902 = !DILocation(line: 385, column: 21, scope: !5874)
!5903 = !DILocation(line: 385, column: 25, scope: !5874)
!5904 = !DILocation(line: 385, column: 33, scope: !5874)
!5905 = !DILocation(line: 385, column: 2, scope: !5874)
!5906 = !DILocation(line: 387, column: 9, scope: !5874)
!5907 = !DILocation(line: 387, column: 2, scope: !5874)
!5908 = !DILocation(line: 388, column: 1, scope: !5874)
!5909 = distinct !DISubprogram(name: "update_events_attr", scope: !3, file: !3, line: 232, type: !5910, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5912)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{null, !247, !1965}
!5912 = !{!5913, !5914, !5915, !5916}
!5913 = !DILocalVariable(name: "ei", arg: 1, scope: !5909, file: !3, line: 232, type: !247)
!5914 = !DILocalVariable(name: "sb", arg: 2, scope: !5909, file: !3, line: 232, type: !1965)
!5915 = !DILocalVariable(name: "rei", scope: !5909, file: !3, line: 234, type: !3761)
!5916 = !DILocalVariable(name: "parent", scope: !5909, file: !3, line: 235, type: !1841)
!5917 = !DILocation(line: 232, column: 54, scope: !5909)
!5918 = !DILocation(line: 232, column: 78, scope: !5909)
!5919 = !DILocation(line: 234, column: 2, scope: !5909)
!5920 = !DILocation(line: 234, column: 29, scope: !5909)
!5921 = !DILocation(line: 235, column: 2, scope: !5909)
!5922 = !DILocation(line: 235, column: 16, scope: !5909)
!5923 = !DILocation(line: 237, column: 23, scope: !5909)
!5924 = !DILocation(line: 237, column: 8, scope: !5909)
!5925 = !DILocation(line: 237, column: 6, scope: !5909)
!5926 = !DILocation(line: 240, column: 11, scope: !5909)
!5927 = !DILocation(line: 240, column: 16, scope: !5909)
!5928 = !DILocation(line: 240, column: 9, scope: !5909)
!5929 = !DILocation(line: 242, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 242, column: 6)
!5931 = !DILocation(line: 242, column: 11, scope: !5930)
!5932 = !DILocation(line: 242, column: 14, scope: !5930)
!5933 = !DILocation(line: 242, column: 19, scope: !5930)
!5934 = !DILocation(line: 242, column: 24, scope: !5930)
!5935 = !DILocation(line: 242, column: 6, scope: !5909)
!5936 = !DILocation(line: 243, column: 3, scope: !5930)
!5937 = !DILocation(line: 243, column: 7, scope: !5930)
!5938 = !DILocation(line: 243, column: 12, scope: !5930)
!5939 = !DILocation(line: 243, column: 18, scope: !5930)
!5940 = !DILocation(line: 243, column: 23, scope: !5930)
!5941 = !DILocation(line: 243, column: 26, scope: !5930)
!5942 = !DILocation(line: 243, column: 31, scope: !5930)
!5943 = !DILocation(line: 245, column: 3, scope: !5930)
!5944 = !DILocation(line: 245, column: 7, scope: !5930)
!5945 = !DILocation(line: 245, column: 12, scope: !5930)
!5946 = !DILocation(line: 245, column: 18, scope: !5930)
!5947 = !DILocation(line: 245, column: 26, scope: !5930)
!5948 = !DILocation(line: 247, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 247, column: 6)
!5950 = !DILocation(line: 247, column: 11, scope: !5949)
!5951 = !DILocation(line: 247, column: 14, scope: !5949)
!5952 = !DILocation(line: 247, column: 19, scope: !5949)
!5953 = !DILocation(line: 247, column: 24, scope: !5949)
!5954 = !DILocation(line: 247, column: 6, scope: !5909)
!5955 = !DILocation(line: 248, column: 3, scope: !5949)
!5956 = !DILocation(line: 248, column: 7, scope: !5949)
!5957 = !DILocation(line: 248, column: 12, scope: !5949)
!5958 = !DILocation(line: 248, column: 18, scope: !5949)
!5959 = !DILocation(line: 248, column: 23, scope: !5949)
!5960 = !DILocation(line: 248, column: 26, scope: !5949)
!5961 = !DILocation(line: 248, column: 31, scope: !5949)
!5962 = !DILocation(line: 250, column: 3, scope: !5949)
!5963 = !DILocation(line: 250, column: 7, scope: !5949)
!5964 = !DILocation(line: 250, column: 12, scope: !5949)
!5965 = !DILocation(line: 250, column: 18, scope: !5949)
!5966 = !DILocation(line: 250, column: 26, scope: !5949)
!5967 = !DILocation(line: 251, column: 1, scope: !5909)
!5968 = !DISubprogram(name: "get_next_ino", scope: !6, file: !6, line: 2908, type: !5969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!7}
!5971 = distinct !DISubprogram(name: "lookup_file", scope: !3, file: !3, line: 427, type: !5972, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5974)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!1863, !247, !1863, !29, !3738, !25, !279}
!5974 = !{!5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5986}
!5975 = !DILocalVariable(name: "parent_ei", arg: 1, scope: !5971, file: !3, line: 427, type: !247)
!5976 = !DILocalVariable(name: "dentry", arg: 2, scope: !5971, file: !3, line: 428, type: !1863)
!5977 = !DILocalVariable(name: "mode", arg: 3, scope: !5971, file: !3, line: 429, type: !29)
!5978 = !DILocalVariable(name: "attr", arg: 4, scope: !5971, file: !3, line: 430, type: !3738)
!5979 = !DILocalVariable(name: "data", arg: 5, scope: !5971, file: !3, line: 431, type: !25)
!5980 = !DILocalVariable(name: "fop", arg: 6, scope: !5971, file: !3, line: 432, type: !279)
!5981 = !DILocalVariable(name: "ti", scope: !5971, file: !3, line: 434, type: !3767)
!5982 = !DILocalVariable(name: "inode", scope: !5971, file: !3, line: 435, type: !1841)
!5983 = !DILocalVariable(name: "__ret_warn_on", scope: !5984, file: !3, line: 440, type: !27)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 440, column: 6)
!5985 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 440, column: 6)
!5986 = !DILocalVariable(name: "__flags", scope: !5987, file: !3, line: 440, type: !27)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 440, column: 6)
!5988 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 440, column: 6)
!5989 = !DILocation(line: 427, column: 57, scope: !5971)
!5990 = !DILocation(line: 428, column: 22, scope: !5971)
!5991 = !DILocation(line: 429, column: 15, scope: !5971)
!5992 = !DILocation(line: 430, column: 28, scope: !5971)
!5993 = !DILocation(line: 431, column: 13, scope: !5971)
!5994 = !DILocation(line: 432, column: 37, scope: !5971)
!5995 = !DILocation(line: 434, column: 2, scope: !5971)
!5996 = !DILocation(line: 434, column: 24, scope: !5971)
!5997 = !DILocation(line: 435, column: 2, scope: !5971)
!5998 = !DILocation(line: 435, column: 16, scope: !5971)
!5999 = !DILocation(line: 437, column: 8, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 437, column: 6)
!6001 = !DILocation(line: 437, column: 13, scope: !6000)
!6002 = !DILocation(line: 437, column: 6, scope: !5971)
!6003 = !DILocation(line: 438, column: 8, scope: !6000)
!6004 = !DILocation(line: 438, column: 3, scope: !6000)
!6005 = !DILocation(line: 440, column: 6, scope: !5984)
!6006 = !DILocation(line: 440, column: 6, scope: !5988)
!6007 = !DILocation(line: 440, column: 6, scope: !5987)
!6008 = !DILocation(line: 440, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 440, column: 6)
!6010 = !DILocation(line: 440, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 440, column: 6)
!6012 = !{i64 2154433418, i64 2154433447, i64 2154433493, i64 2154433551, i64 2154433605, i64 2154433659, i64 2154433714, i64 2154433745, i64 2154434053, i64 2154434059, i64 2154434106, i64 2154434129, i64 2154434155}
!6013 = !DILocation(line: 440, column: 6, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 440, column: 6)
!6015 = !DILocation(line: 440, column: 6, scope: !5985)
!6016 = !DILocation(line: 440, column: 6, scope: !5971)
!6017 = !DILocation(line: 441, column: 10, scope: !5985)
!6018 = !DILocation(line: 441, column: 3, scope: !5985)
!6019 = !DILocation(line: 443, column: 28, scope: !5971)
!6020 = !DILocation(line: 443, column: 36, scope: !5971)
!6021 = !DILocation(line: 443, column: 10, scope: !5971)
!6022 = !DILocation(line: 443, column: 8, scope: !5971)
!6023 = !DILocation(line: 444, column: 6, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 444, column: 6)
!6025 = !DILocation(line: 444, column: 6, scope: !5971)
!6026 = !DILocation(line: 445, column: 10, scope: !6024)
!6027 = !DILocation(line: 445, column: 3, scope: !6024)
!6028 = !DILocation(line: 448, column: 20, scope: !5971)
!6029 = !DILocation(line: 448, column: 28, scope: !5971)
!6030 = !DILocation(line: 448, column: 35, scope: !5971)
!6031 = !DILocation(line: 448, column: 41, scope: !5971)
!6032 = !DILocation(line: 448, column: 2, scope: !5971)
!6033 = !DILocation(line: 450, column: 2, scope: !5971)
!6034 = !DILocation(line: 450, column: 9, scope: !5971)
!6035 = !DILocation(line: 450, column: 14, scope: !5971)
!6036 = !DILocation(line: 451, column: 17, scope: !5971)
!6037 = !DILocation(line: 451, column: 2, scope: !5971)
!6038 = !DILocation(line: 451, column: 9, scope: !5971)
!6039 = !DILocation(line: 451, column: 15, scope: !5971)
!6040 = !DILocation(line: 452, column: 21, scope: !5971)
!6041 = !DILocation(line: 452, column: 2, scope: !5971)
!6042 = !DILocation(line: 452, column: 9, scope: !5971)
!6043 = !DILocation(line: 452, column: 19, scope: !5971)
!6044 = !DILocation(line: 455, column: 2, scope: !5971)
!6045 = !DILocation(line: 455, column: 9, scope: !5971)
!6046 = !DILocation(line: 455, column: 15, scope: !5971)
!6047 = !DILocation(line: 457, column: 19, scope: !5971)
!6048 = !DILocation(line: 457, column: 7, scope: !5971)
!6049 = !DILocation(line: 457, column: 5, scope: !5971)
!6050 = !DILocation(line: 458, column: 2, scope: !5971)
!6051 = !DILocation(line: 458, column: 6, scope: !5971)
!6052 = !DILocation(line: 458, column: 12, scope: !5971)
!6053 = !DILocation(line: 461, column: 28, scope: !5971)
!6054 = !DILocation(line: 461, column: 21, scope: !5971)
!6055 = !DILocation(line: 461, column: 2, scope: !5971)
!6056 = !DILocation(line: 461, column: 10, scope: !5971)
!6057 = !DILocation(line: 461, column: 19, scope: !5971)
!6058 = !DILocation(line: 463, column: 8, scope: !5971)
!6059 = !DILocation(line: 463, column: 16, scope: !5971)
!6060 = !DILocation(line: 463, column: 2, scope: !5971)
!6061 = !DILocation(line: 464, column: 2, scope: !5971)
!6062 = !DILocation(line: 465, column: 1, scope: !5971)
!6063 = distinct !DISubprogram(name: "set_top_events_ownership", scope: !3, file: !3, line: 253, type: !2024, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6064)
!6064 = !{!6065, !6066, !6067}
!6065 = !DILocalVariable(name: "inode", arg: 1, scope: !6063, file: !3, line: 253, type: !1841)
!6066 = !DILocalVariable(name: "ti", scope: !6063, file: !3, line: 255, type: !3767)
!6067 = !DILocalVariable(name: "ei", scope: !6063, file: !3, line: 256, type: !247)
!6068 = !DILocation(line: 253, column: 52, scope: !6063)
!6069 = !DILocation(line: 255, column: 2, scope: !6063)
!6070 = !DILocation(line: 255, column: 24, scope: !6063)
!6071 = !DILocation(line: 255, column: 41, scope: !6063)
!6072 = !DILocation(line: 255, column: 29, scope: !6063)
!6073 = !DILocation(line: 256, column: 2, scope: !6063)
!6074 = !DILocation(line: 256, column: 24, scope: !6063)
!6075 = !DILocation(line: 256, column: 29, scope: !6063)
!6076 = !DILocation(line: 256, column: 33, scope: !6063)
!6077 = !DILocation(line: 259, column: 7, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 259, column: 6)
!6079 = !DILocation(line: 259, column: 10, scope: !6078)
!6080 = !DILocation(line: 259, column: 14, scope: !6078)
!6081 = !DILocation(line: 259, column: 18, scope: !6078)
!6082 = !DILocation(line: 259, column: 6, scope: !6063)
!6083 = !DILocation(line: 260, column: 3, scope: !6078)
!6084 = !DILocation(line: 262, column: 21, scope: !6063)
!6085 = !DILocation(line: 262, column: 25, scope: !6063)
!6086 = !DILocation(line: 262, column: 32, scope: !6063)
!6087 = !DILocation(line: 262, column: 2, scope: !6063)
!6088 = !DILocation(line: 264, column: 8, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 264, column: 6)
!6090 = !DILocation(line: 264, column: 12, scope: !6089)
!6091 = !DILocation(line: 264, column: 17, scope: !6089)
!6092 = !DILocation(line: 264, column: 22, scope: !6089)
!6093 = !DILocation(line: 264, column: 6, scope: !6063)
!6094 = !DILocation(line: 265, column: 3, scope: !6089)
!6095 = !DILocation(line: 265, column: 10, scope: !6089)
!6096 = !DILocation(line: 265, column: 18, scope: !6089)
!6097 = !DILocation(line: 265, column: 22, scope: !6089)
!6098 = !DILocation(line: 265, column: 27, scope: !6089)
!6099 = !DILocation(line: 267, column: 8, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 267, column: 6)
!6101 = !DILocation(line: 267, column: 12, scope: !6100)
!6102 = !DILocation(line: 267, column: 17, scope: !6100)
!6103 = !DILocation(line: 267, column: 22, scope: !6100)
!6104 = !DILocation(line: 267, column: 6, scope: !6063)
!6105 = !DILocation(line: 268, column: 3, scope: !6100)
!6106 = !DILocation(line: 268, column: 10, scope: !6100)
!6107 = !DILocation(line: 268, column: 18, scope: !6100)
!6108 = !DILocation(line: 268, column: 22, scope: !6100)
!6109 = !DILocation(line: 268, column: 27, scope: !6100)
!6110 = !DILocation(line: 269, column: 1, scope: !6063)
!6111 = !DISubprogram(name: "generic_permission", scope: !6, file: !6, line: 2676, type: !2557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6112 = distinct !DISubprogram(name: "kcalloc", scope: !229, file: !229, line: 666, type: !6113, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6115)
!6113 = !DISubroutineType(types: !6114)
!6114 = !{!25, !40, !40, !405}
!6115 = !{!6116, !6117, !6118}
!6116 = !DILocalVariable(name: "n", arg: 1, scope: !6112, file: !229, line: 666, type: !40)
!6117 = !DILocalVariable(name: "size", arg: 2, scope: !6112, file: !229, line: 666, type: !40)
!6118 = !DILocalVariable(name: "flags", arg: 3, scope: !6112, file: !229, line: 666, type: !405)
!6119 = !DILocation(line: 666, column: 55, scope: !6112)
!6120 = !DILocation(line: 666, column: 65, scope: !6112)
!6121 = !DILocation(line: 666, column: 77, scope: !6112)
!6122 = !DILocation(line: 668, column: 23, scope: !6112)
!6123 = !DILocation(line: 668, column: 26, scope: !6112)
!6124 = !DILocation(line: 668, column: 32, scope: !6112)
!6125 = !DILocation(line: 668, column: 38, scope: !6112)
!6126 = !DILocation(line: 668, column: 9, scope: !6112)
!6127 = !DILocation(line: 668, column: 2, scope: !6112)
!6128 = !DISubprogram(name: "simple_setattr", scope: !6, file: !6, line: 3144, type: !2598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6129 = distinct !DISubprogram(name: "update_attr", scope: !3, file: !3, line: 157, type: !6130, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6132)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{null, !3738, !2600}
!6132 = !{!6133, !6134, !6135}
!6133 = !DILocalVariable(name: "attr", arg: 1, scope: !6129, file: !3, line: 157, type: !3738)
!6134 = !DILocalVariable(name: "iattr", arg: 2, scope: !6129, file: !3, line: 157, type: !2600)
!6135 = !DILocalVariable(name: "ia_valid", scope: !6129, file: !3, line: 159, type: !7)
!6136 = !DILocation(line: 157, column: 46, scope: !6129)
!6137 = !DILocation(line: 157, column: 66, scope: !6129)
!6138 = !DILocation(line: 159, column: 2, scope: !6129)
!6139 = !DILocation(line: 159, column: 15, scope: !6129)
!6140 = !DILocation(line: 159, column: 26, scope: !6129)
!6141 = !DILocation(line: 159, column: 33, scope: !6129)
!6142 = !DILocation(line: 161, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 161, column: 6)
!6144 = !DILocation(line: 161, column: 15, scope: !6143)
!6145 = !DILocation(line: 161, column: 6, scope: !6129)
!6146 = !DILocation(line: 162, column: 17, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 161, column: 28)
!6148 = !DILocation(line: 162, column: 23, scope: !6147)
!6149 = !DILocation(line: 162, column: 28, scope: !6147)
!6150 = !DILocation(line: 163, column: 5, scope: !6147)
!6151 = !DILocation(line: 163, column: 12, scope: !6147)
!6152 = !DILocation(line: 163, column: 20, scope: !6147)
!6153 = !DILocation(line: 162, column: 50, scope: !6147)
!6154 = !DILocation(line: 163, column: 41, scope: !6147)
!6155 = !DILocation(line: 162, column: 3, scope: !6147)
!6156 = !DILocation(line: 162, column: 9, scope: !6147)
!6157 = !DILocation(line: 162, column: 14, scope: !6147)
!6158 = !DILocation(line: 165, column: 2, scope: !6147)
!6159 = !DILocation(line: 166, column: 6, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 166, column: 6)
!6161 = !DILocation(line: 166, column: 15, scope: !6160)
!6162 = !DILocation(line: 166, column: 6, scope: !6129)
!6163 = !DILocation(line: 167, column: 3, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 166, column: 27)
!6165 = !DILocation(line: 167, column: 9, scope: !6164)
!6166 = !DILocation(line: 167, column: 14, scope: !6164)
!6167 = !DILocation(line: 168, column: 3, scope: !6164)
!6168 = !DILocation(line: 168, column: 9, scope: !6164)
!6169 = !DILocation(line: 168, column: 15, scope: !6164)
!6170 = !DILocation(line: 168, column: 22, scope: !6164)
!6171 = !DILocation(line: 169, column: 2, scope: !6164)
!6172 = !DILocation(line: 170, column: 6, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 170, column: 6)
!6174 = !DILocation(line: 170, column: 15, scope: !6173)
!6175 = !DILocation(line: 170, column: 6, scope: !6129)
!6176 = !DILocation(line: 171, column: 3, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 170, column: 27)
!6178 = !DILocation(line: 171, column: 9, scope: !6177)
!6179 = !DILocation(line: 171, column: 14, scope: !6177)
!6180 = !DILocation(line: 172, column: 3, scope: !6177)
!6181 = !DILocation(line: 172, column: 9, scope: !6177)
!6182 = !DILocation(line: 172, column: 15, scope: !6177)
!6183 = !DILocation(line: 172, column: 22, scope: !6177)
!6184 = !DILocation(line: 173, column: 2, scope: !6177)
!6185 = !DILocation(line: 174, column: 1, scope: !6129)
!6186 = distinct !DISubprogram(name: "kmalloc_array", scope: !229, file: !229, line: 629, type: !6113, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6187)
!6187 = !{!6188, !6189, !6190, !6191}
!6188 = !DILocalVariable(name: "n", arg: 1, scope: !6186, file: !229, line: 629, type: !40)
!6189 = !DILocalVariable(name: "size", arg: 2, scope: !6186, file: !229, line: 629, type: !40)
!6190 = !DILocalVariable(name: "flags", arg: 3, scope: !6186, file: !229, line: 629, type: !405)
!6191 = !DILocalVariable(name: "bytes", scope: !6186, file: !229, line: 631, type: !40)
!6192 = !DILocation(line: 629, column: 61, scope: !6186)
!6193 = !DILocation(line: 629, column: 71, scope: !6186)
!6194 = !DILocation(line: 629, column: 83, scope: !6186)
!6195 = !DILocation(line: 631, column: 2, scope: !6186)
!6196 = !DILocation(line: 631, column: 9, scope: !6186)
!6197 = !DILocation(line: 633, column: 6, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6186, file: !229, line: 633, column: 6)
!6199 = !DILocation(line: 633, column: 6, scope: !6186)
!6200 = !DILocation(line: 634, column: 3, scope: !6198)
!6201 = !DILocation(line: 635, column: 27, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6186, file: !229, line: 635, column: 6)
!6203 = !DILocation(line: 635, column: 6, scope: !6202)
!6204 = !DILocation(line: 635, column: 30, scope: !6202)
!6205 = !DILocation(line: 635, column: 54, scope: !6202)
!6206 = !DILocation(line: 635, column: 33, scope: !6202)
!6207 = !DILocation(line: 635, column: 6, scope: !6186)
!6208 = !DILocation(line: 636, column: 18, scope: !6202)
!6209 = !DILocation(line: 636, column: 25, scope: !6202)
!6210 = !DILocation(line: 636, column: 10, scope: !6202)
!6211 = !DILocation(line: 636, column: 3, scope: !6202)
!6212 = !DILocation(line: 637, column: 19, scope: !6186)
!6213 = !DILocation(line: 637, column: 26, scope: !6186)
!6214 = !DILocation(line: 637, column: 9, scope: !6186)
!6215 = !DILocation(line: 637, column: 2, scope: !6186)
!6216 = !DILocation(line: 638, column: 1, scope: !6186)
!6217 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6218, file: !6218, line: 51, type: !6219, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6221)
!6218 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!912, !912}
!6221 = !{!6222}
!6222 = !DILocalVariable(name: "overflow", arg: 1, scope: !6217, file: !6218, line: 51, type: !912)
!6223 = !DILocation(line: 51, column: 60, scope: !6217)
!6224 = !DILocation(line: 53, column: 9, scope: !6217)
!6225 = !DILocation(line: 53, column: 2, scope: !6217)
!6226 = distinct !DISubprogram(name: "d_backing_inode", scope: !1865, file: !1865, line: 541, type: !4540, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229}
!6228 = !DILocalVariable(name: "upper", arg: 1, scope: !6226, file: !1865, line: 541, type: !1925)
!6229 = !DILocalVariable(name: "inode", scope: !6226, file: !1865, line: 543, type: !1841)
!6230 = !DILocation(line: 541, column: 66, scope: !6226)
!6231 = !DILocation(line: 543, column: 2, scope: !6226)
!6232 = !DILocation(line: 543, column: 16, scope: !6226)
!6233 = !DILocation(line: 543, column: 24, scope: !6226)
!6234 = !DILocation(line: 543, column: 31, scope: !6226)
!6235 = !DILocation(line: 545, column: 9, scope: !6226)
!6236 = !DILocation(line: 546, column: 1, scope: !6226)
!6237 = !DILocation(line: 545, column: 2, scope: !6226)
!6238 = !DISubprogram(name: "generic_fillattr", scope: !6, file: !6, line: 3094, type: !6239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{null, !2512, !423, !1841, !2637}
!6241 = distinct !DISubprogram(name: "eventfs_iterate", scope: !3, file: !3, line: 647, type: !3631, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6242 = !{!6243, !6244, !6245, !6246, !6247, !6248, !6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6258, !6259, !6263, !6265, !6266, !6269, !6272, !6273}
!6243 = !DILocalVariable(name: "file", arg: 1, scope: !6241, file: !3, line: 647, type: !291)
!6244 = !DILocalVariable(name: "ctx", arg: 2, scope: !6241, file: !3, line: 647, type: !3633)
!6245 = !DILocalVariable(name: "fops", scope: !6241, file: !3, line: 649, type: !279)
!6246 = !DILocalVariable(name: "f_inode", scope: !6241, file: !3, line: 650, type: !1841)
!6247 = !DILocalVariable(name: "entry", scope: !6241, file: !3, line: 651, type: !265)
!6248 = !DILocalVariable(name: "ei_child", scope: !6241, file: !3, line: 652, type: !247)
!6249 = !DILocalVariable(name: "ti", scope: !6241, file: !3, line: 653, type: !3767)
!6250 = !DILocalVariable(name: "ei", scope: !6241, file: !3, line: 654, type: !247)
!6251 = !DILocalVariable(name: "name", scope: !6241, file: !3, line: 655, type: !21)
!6252 = !DILocalVariable(name: "mode", scope: !6241, file: !3, line: 656, type: !29)
!6253 = !DILocalVariable(name: "idx", scope: !6241, file: !3, line: 657, type: !27)
!6254 = !DILocalVariable(name: "ret", scope: !6241, file: !3, line: 658, type: !27)
!6255 = !DILocalVariable(name: "ino", scope: !6241, file: !3, line: 659, type: !27)
!6256 = !DILocalVariable(name: "i", scope: !6241, file: !3, line: 660, type: !27)
!6257 = !DILocalVariable(name: "r", scope: !6241, file: !3, line: 660, type: !27)
!6258 = !DILocalVariable(name: "c", scope: !6241, file: !3, line: 660, type: !27)
!6259 = !DILocalVariable(name: "cdata", scope: !6260, file: !3, line: 690, type: !25)
!6260 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 689, column: 51)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 689, column: 2)
!6262 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 689, column: 2)
!6263 = !DILocalVariable(name: "__UNIQUE_ID___x295", scope: !6264, file: !3, line: 713, type: !7)
!6264 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 713, column: 7)
!6265 = !DILocalVariable(name: "__UNIQUE_ID___y296", scope: !6264, file: !3, line: 713, type: !7)
!6266 = !DILocalVariable(name: "__mptr", scope: !6267, file: !3, line: 715, type: !25)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 715, column: 2)
!6268 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 715, column: 2)
!6269 = !DILocalVariable(name: "__mptr", scope: !6270, file: !3, line: 715, type: !25)
!6270 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 715, column: 2)
!6271 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 715, column: 2)
!6272 = !DILabel(scope: !6241, name: "out", file: !3, line: 736)
!6273 = !DILabel(scope: !6241, name: "out_dec", file: !3, line: 741)
!6274 = !DILocation(line: 647, column: 41, scope: !6241)
!6275 = !DILocation(line: 647, column: 67, scope: !6241)
!6276 = !DILocation(line: 649, column: 2, scope: !6241)
!6277 = !DILocation(line: 649, column: 32, scope: !6241)
!6278 = !DILocation(line: 650, column: 2, scope: !6241)
!6279 = !DILocation(line: 650, column: 16, scope: !6241)
!6280 = !DILocation(line: 650, column: 37, scope: !6241)
!6281 = !DILocation(line: 650, column: 26, scope: !6241)
!6282 = !DILocation(line: 651, column: 2, scope: !6241)
!6283 = !DILocation(line: 651, column: 30, scope: !6241)
!6284 = !DILocation(line: 652, column: 2, scope: !6241)
!6285 = !DILocation(line: 652, column: 24, scope: !6241)
!6286 = !DILocation(line: 653, column: 2, scope: !6241)
!6287 = !DILocation(line: 653, column: 24, scope: !6241)
!6288 = !DILocation(line: 654, column: 2, scope: !6241)
!6289 = !DILocation(line: 654, column: 24, scope: !6241)
!6290 = !DILocation(line: 655, column: 2, scope: !6241)
!6291 = !DILocation(line: 655, column: 14, scope: !6241)
!6292 = !DILocation(line: 656, column: 2, scope: !6241)
!6293 = !DILocation(line: 656, column: 10, scope: !6241)
!6294 = !DILocation(line: 657, column: 2, scope: !6241)
!6295 = !DILocation(line: 657, column: 6, scope: !6241)
!6296 = !DILocation(line: 658, column: 2, scope: !6241)
!6297 = !DILocation(line: 658, column: 6, scope: !6241)
!6298 = !DILocation(line: 659, column: 2, scope: !6241)
!6299 = !DILocation(line: 659, column: 6, scope: !6241)
!6300 = !DILocation(line: 660, column: 2, scope: !6241)
!6301 = !DILocation(line: 660, column: 6, scope: !6241)
!6302 = !DILocation(line: 660, column: 9, scope: !6241)
!6303 = !DILocation(line: 660, column: 12, scope: !6241)
!6304 = !DILocation(line: 662, column: 21, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 662, column: 6)
!6306 = !DILocation(line: 662, column: 27, scope: !6305)
!6307 = !DILocation(line: 662, column: 7, scope: !6305)
!6308 = !DILocation(line: 662, column: 6, scope: !6241)
!6309 = !DILocation(line: 663, column: 3, scope: !6305)
!6310 = !DILocation(line: 665, column: 19, scope: !6241)
!6311 = !DILocation(line: 665, column: 7, scope: !6241)
!6312 = !DILocation(line: 665, column: 5, scope: !6241)
!6313 = !DILocation(line: 666, column: 8, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 666, column: 6)
!6315 = !DILocation(line: 666, column: 12, scope: !6314)
!6316 = !DILocation(line: 666, column: 18, scope: !6314)
!6317 = !DILocation(line: 666, column: 6, scope: !6241)
!6318 = !DILocation(line: 667, column: 3, scope: !6314)
!6319 = !DILocation(line: 669, column: 6, scope: !6241)
!6320 = !DILocation(line: 669, column: 11, scope: !6241)
!6321 = !DILocation(line: 669, column: 15, scope: !6241)
!6322 = !DILocation(line: 669, column: 4, scope: !6241)
!6323 = !DILocation(line: 671, column: 8, scope: !6241)
!6324 = !DILocation(line: 671, column: 6, scope: !6241)
!6325 = !DILocation(line: 673, column: 2, scope: !6241)
!6326 = !DILocation(line: 674, column: 7, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 674, column: 7)
!6328 = !DILocation(line: 674, column: 7, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 674, column: 7)
!6330 = !DILocation(line: 674, column: 5, scope: !6241)
!6331 = !DILocation(line: 675, column: 6, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 675, column: 6)
!6333 = !DILocation(line: 675, column: 9, scope: !6332)
!6334 = !DILocation(line: 675, column: 12, scope: !6332)
!6335 = !DILocation(line: 675, column: 16, scope: !6332)
!6336 = !DILocation(line: 675, column: 6, scope: !6241)
!6337 = !DILocation(line: 676, column: 6, scope: !6332)
!6338 = !DILocation(line: 676, column: 3, scope: !6332)
!6339 = !DILocation(line: 677, column: 2, scope: !6241)
!6340 = !DILocation(line: 679, column: 7, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 679, column: 6)
!6342 = !DILocation(line: 679, column: 6, scope: !6241)
!6343 = !DILocation(line: 680, column: 3, scope: !6341)
!6344 = !DILocation(line: 686, column: 6, scope: !6241)
!6345 = !DILocation(line: 689, column: 11, scope: !6262)
!6346 = !DILocation(line: 689, column: 9, scope: !6262)
!6347 = !DILocation(line: 689, column: 7, scope: !6262)
!6348 = !DILocation(line: 689, column: 14, scope: !6261)
!6349 = !DILocation(line: 689, column: 18, scope: !6261)
!6350 = !DILocation(line: 689, column: 22, scope: !6261)
!6351 = !DILocation(line: 689, column: 16, scope: !6261)
!6352 = !DILocation(line: 689, column: 2, scope: !6262)
!6353 = !DILocation(line: 690, column: 3, scope: !6260)
!6354 = !DILocation(line: 690, column: 9, scope: !6260)
!6355 = !DILocation(line: 690, column: 17, scope: !6260)
!6356 = !DILocation(line: 690, column: 21, scope: !6260)
!6357 = !DILocation(line: 692, column: 12, scope: !6260)
!6358 = !DILocation(line: 692, column: 16, scope: !6260)
!6359 = !DILocation(line: 692, column: 24, scope: !6260)
!6360 = !DILocation(line: 692, column: 9, scope: !6260)
!6361 = !DILocation(line: 693, column: 10, scope: !6260)
!6362 = !DILocation(line: 693, column: 17, scope: !6260)
!6363 = !DILocation(line: 693, column: 8, scope: !6260)
!6364 = !DILocation(line: 695, column: 3, scope: !6260)
!6365 = !DILocation(line: 697, column: 7, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 697, column: 7)
!6367 = !DILocation(line: 697, column: 11, scope: !6366)
!6368 = !DILocation(line: 697, column: 7, scope: !6260)
!6369 = !DILocation(line: 698, column: 4, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 697, column: 21)
!6371 = !DILocation(line: 699, column: 4, scope: !6370)
!6372 = !DILocation(line: 701, column: 7, scope: !6260)
!6373 = !DILocation(line: 701, column: 14, scope: !6260)
!6374 = !DILocation(line: 701, column: 23, scope: !6260)
!6375 = !DILocation(line: 701, column: 5, scope: !6260)
!6376 = !DILocation(line: 702, column: 3, scope: !6260)
!6377 = !DILocation(line: 703, column: 7, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 703, column: 7)
!6379 = !DILocation(line: 703, column: 9, scope: !6378)
!6380 = !DILocation(line: 703, column: 7, scope: !6260)
!6381 = !DILocation(line: 704, column: 4, scope: !6378)
!6382 = !DILocation(line: 706, column: 7, scope: !6260)
!6383 = !DILocation(line: 708, column: 17, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 708, column: 7)
!6385 = !DILocation(line: 708, column: 22, scope: !6384)
!6386 = !DILocation(line: 708, column: 35, scope: !6384)
!6387 = !DILocation(line: 708, column: 28, scope: !6384)
!6388 = !DILocation(line: 708, column: 42, scope: !6384)
!6389 = !DILocation(line: 708, column: 8, scope: !6384)
!6390 = !DILocation(line: 708, column: 7, scope: !6260)
!6391 = !DILocation(line: 709, column: 4, scope: !6384)
!6392 = !DILocation(line: 710, column: 2, scope: !6261)
!6393 = !DILocation(line: 710, column: 2, scope: !6260)
!6394 = !DILocation(line: 689, column: 35, scope: !6261)
!6395 = !DILocation(line: 689, column: 39, scope: !6261)
!6396 = !DILocation(line: 689, column: 44, scope: !6261)
!6397 = !DILocation(line: 689, column: 47, scope: !6261)
!6398 = !DILocation(line: 689, column: 2, scope: !6261)
!6399 = distinct !{!6399, !6352, !6400, !4028, !4029}
!6400 = !DILocation(line: 710, column: 2, scope: !6262)
!6401 = !DILocation(line: 713, column: 7, scope: !6264)
!6402 = !DILocation(line: 713, column: 7, scope: !6241)
!6403 = !DILocation(line: 713, column: 4, scope: !6241)
!6404 = !DILocation(line: 715, column: 2, scope: !6267)
!6405 = !DILocation(line: 715, column: 2, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 715, column: 2)
!6407 = !DILocation(line: 715, column: 2, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 715, column: 2)
!6409 = !DILocation(line: 715, column: 2, scope: !6268)
!6410 = !DILocation(line: 715, column: 2, scope: !6271)
!6411 = !DILocation(line: 718, column: 7, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 718, column: 7)
!6413 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 716, column: 42)
!6414 = !DILocation(line: 718, column: 9, scope: !6412)
!6415 = !DILocation(line: 718, column: 7, scope: !6413)
!6416 = !DILocation(line: 719, column: 5, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6412, file: !3, line: 718, column: 14)
!6418 = !DILocation(line: 720, column: 4, scope: !6417)
!6419 = !DILocation(line: 723, column: 3, scope: !6413)
!6420 = !DILocation(line: 723, column: 8, scope: !6413)
!6421 = !DILocation(line: 723, column: 11, scope: !6413)
!6422 = !DILocation(line: 725, column: 7, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 725, column: 7)
!6424 = !DILocation(line: 725, column: 17, scope: !6423)
!6425 = !DILocation(line: 725, column: 7, scope: !6413)
!6426 = !DILocation(line: 726, column: 4, scope: !6423)
!6427 = !DILocation(line: 728, column: 10, scope: !6413)
!6428 = !DILocation(line: 728, column: 20, scope: !6413)
!6429 = !DILocation(line: 728, column: 8, scope: !6413)
!6430 = !DILocation(line: 730, column: 25, scope: !6413)
!6431 = !DILocation(line: 730, column: 9, scope: !6413)
!6432 = !DILocation(line: 730, column: 7, scope: !6413)
!6433 = !DILocation(line: 732, column: 17, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 732, column: 7)
!6435 = !DILocation(line: 732, column: 22, scope: !6434)
!6436 = !DILocation(line: 732, column: 35, scope: !6434)
!6437 = !DILocation(line: 732, column: 28, scope: !6434)
!6438 = !DILocation(line: 732, column: 42, scope: !6434)
!6439 = !DILocation(line: 732, column: 8, scope: !6434)
!6440 = !DILocation(line: 732, column: 7, scope: !6413)
!6441 = !DILocation(line: 733, column: 4, scope: !6434)
!6442 = !DILocation(line: 734, column: 2, scope: !6413)
!6443 = !DILocation(line: 715, column: 2, scope: !6270)
!6444 = !DILocation(line: 715, column: 2, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 715, column: 2)
!6446 = !DILocation(line: 715, column: 2, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 715, column: 2)
!6448 = distinct !{!6448, !6409, !6449, !4028, !4029}
!6449 = !DILocation(line: 734, column: 2, scope: !6268)
!6450 = !DILocation(line: 735, column: 6, scope: !6241)
!6451 = !DILocation(line: 735, column: 2, scope: !6241)
!6452 = !DILocation(line: 736, column: 2, scope: !6241)
!6453 = !DILocation(line: 737, column: 34, scope: !6241)
!6454 = !DILocation(line: 737, column: 2, scope: !6241)
!6455 = !DILocation(line: 739, column: 9, scope: !6241)
!6456 = !DILocation(line: 739, column: 2, scope: !6241)
!6457 = !DILocation(line: 741, column: 2, scope: !6241)
!6458 = !DILocation(line: 743, column: 2, scope: !6241)
!6459 = !DILocation(line: 743, column: 7, scope: !6241)
!6460 = !DILocation(line: 743, column: 10, scope: !6241)
!6461 = !DILocation(line: 744, column: 2, scope: !6241)
!6462 = !DILocation(line: 745, column: 1, scope: !6241)
!6463 = distinct !DISubprogram(name: "file_inode", scope: !6, file: !6, line: 1073, type: !6464, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6466)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{!1841, !2107}
!6466 = !{!6467}
!6467 = !DILocalVariable(name: "f", arg: 1, scope: !6463, file: !6, line: 1073, type: !2107)
!6468 = !DILocation(line: 1073, column: 59, scope: !6463)
!6469 = !DILocation(line: 1075, column: 9, scope: !6463)
!6470 = !DILocation(line: 1075, column: 12, scope: !6463)
!6471 = !DILocation(line: 1075, column: 2, scope: !6463)
!6472 = distinct !DISubprogram(name: "dir_emit_dots", scope: !6, file: !6, line: 3433, type: !6473, scopeLine: 3434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6475)
!6473 = !DISubroutineType(types: !6474)
!6474 = !{!912, !291, !3633}
!6475 = !{!6476, !6477}
!6476 = !DILocalVariable(name: "file", arg: 1, scope: !6472, file: !6, line: 3433, type: !291)
!6477 = !DILocalVariable(name: "ctx", arg: 2, scope: !6472, file: !6, line: 3433, type: !3633)
!6478 = !DILocation(line: 3433, column: 47, scope: !6472)
!6479 = !DILocation(line: 3433, column: 73, scope: !6472)
!6480 = !DILocation(line: 3435, column: 6, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6472, file: !6, line: 3435, column: 6)
!6482 = !DILocation(line: 3435, column: 11, scope: !6481)
!6483 = !DILocation(line: 3435, column: 15, scope: !6481)
!6484 = !DILocation(line: 3435, column: 6, scope: !6472)
!6485 = !DILocation(line: 3436, column: 21, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6487, file: !6, line: 3436, column: 7)
!6487 = distinct !DILexicalBlock(scope: !6481, file: !6, line: 3435, column: 21)
!6488 = !DILocation(line: 3436, column: 27, scope: !6486)
!6489 = !DILocation(line: 3436, column: 8, scope: !6486)
!6490 = !DILocation(line: 3436, column: 7, scope: !6487)
!6491 = !DILocation(line: 3437, column: 4, scope: !6486)
!6492 = !DILocation(line: 3438, column: 3, scope: !6487)
!6493 = !DILocation(line: 3438, column: 8, scope: !6487)
!6494 = !DILocation(line: 3438, column: 12, scope: !6487)
!6495 = !DILocation(line: 3439, column: 2, scope: !6487)
!6496 = !DILocation(line: 3440, column: 6, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6472, file: !6, line: 3440, column: 6)
!6498 = !DILocation(line: 3440, column: 11, scope: !6497)
!6499 = !DILocation(line: 3440, column: 15, scope: !6497)
!6500 = !DILocation(line: 3440, column: 6, scope: !6472)
!6501 = !DILocation(line: 3441, column: 24, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6503, file: !6, line: 3441, column: 7)
!6503 = distinct !DILexicalBlock(scope: !6497, file: !6, line: 3440, column: 21)
!6504 = !DILocation(line: 3441, column: 30, scope: !6502)
!6505 = !DILocation(line: 3441, column: 8, scope: !6502)
!6506 = !DILocation(line: 3441, column: 7, scope: !6503)
!6507 = !DILocation(line: 3442, column: 4, scope: !6502)
!6508 = !DILocation(line: 3443, column: 3, scope: !6503)
!6509 = !DILocation(line: 3443, column: 8, scope: !6503)
!6510 = !DILocation(line: 3443, column: 12, scope: !6503)
!6511 = !DILocation(line: 3444, column: 2, scope: !6503)
!6512 = !DILocation(line: 3445, column: 2, scope: !6472)
!6513 = !DILocation(line: 3446, column: 1, scope: !6472)
!6514 = distinct !DISubprogram(name: "srcu_read_lock", scope: !3895, file: !3895, line: 209, type: !6515, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6515 = !DISubroutineType(types: !6516)
!6516 = !{!27, !3835}
!6517 = !{!6518, !6519}
!6518 = !DILocalVariable(name: "ssp", arg: 1, scope: !6514, file: !3895, line: 209, type: !3835)
!6519 = !DILocalVariable(name: "retval", scope: !6514, file: !3895, line: 211, type: !27)
!6520 = !DILocation(line: 209, column: 54, scope: !6514)
!6521 = !DILocation(line: 211, column: 2, scope: !6514)
!6522 = !DILocation(line: 211, column: 6, scope: !6514)
!6523 = !DILocation(line: 213, column: 24, scope: !6514)
!6524 = !DILocation(line: 213, column: 2, scope: !6514)
!6525 = !DILocation(line: 214, column: 28, scope: !6514)
!6526 = !DILocation(line: 214, column: 11, scope: !6514)
!6527 = !DILocation(line: 214, column: 9, scope: !6514)
!6528 = !DILocation(line: 215, column: 2, scope: !6514)
!6529 = !DILocation(line: 215, column: 2, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6514, file: !3895, line: 215, column: 2)
!6531 = !DILocation(line: 216, column: 9, scope: !6514)
!6532 = !DILocation(line: 217, column: 1, scope: !6514)
!6533 = !DILocation(line: 216, column: 2, scope: !6514)
!6534 = distinct !DISubprogram(name: "dir_emit", scope: !6, file: !6, line: 3417, type: !6535, scopeLine: 3420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6537)
!6535 = !DISubroutineType(types: !6536)
!6536 = !{!912, !3633, !21, !27, !471, !7}
!6537 = !{!6538, !6539, !6540, !6541, !6542}
!6538 = !DILocalVariable(name: "ctx", arg: 1, scope: !6534, file: !6, line: 3417, type: !3633)
!6539 = !DILocalVariable(name: "name", arg: 2, scope: !6534, file: !6, line: 3418, type: !21)
!6540 = !DILocalVariable(name: "namelen", arg: 3, scope: !6534, file: !6, line: 3418, type: !27)
!6541 = !DILocalVariable(name: "ino", arg: 4, scope: !6534, file: !6, line: 3419, type: !471)
!6542 = !DILocalVariable(name: "type", arg: 5, scope: !6534, file: !6, line: 3419, type: !7)
!6543 = !DILocation(line: 3417, column: 49, scope: !6534)
!6544 = !DILocation(line: 3418, column: 20, scope: !6534)
!6545 = !DILocation(line: 3418, column: 30, scope: !6534)
!6546 = !DILocation(line: 3419, column: 12, scope: !6534)
!6547 = !DILocation(line: 3419, column: 26, scope: !6534)
!6548 = !DILocation(line: 3421, column: 9, scope: !6534)
!6549 = !DILocation(line: 3421, column: 14, scope: !6534)
!6550 = !DILocation(line: 3421, column: 20, scope: !6534)
!6551 = !DILocation(line: 3421, column: 25, scope: !6534)
!6552 = !DILocation(line: 3421, column: 31, scope: !6534)
!6553 = !DILocation(line: 3421, column: 40, scope: !6534)
!6554 = !DILocation(line: 3421, column: 45, scope: !6534)
!6555 = !DILocation(line: 3421, column: 50, scope: !6534)
!6556 = !DILocation(line: 3421, column: 55, scope: !6534)
!6557 = !DILocation(line: 3421, column: 2, scope: !6534)
!6558 = !DISubprogram(name: "strlen", scope: !4976, file: !4976, line: 128, type: !6559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{!44, !21}
!6561 = distinct !DISubprogram(name: "srcu_read_unlock", scope: !3895, file: !3895, line: 282, type: !6562, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6564)
!6562 = !DISubroutineType(types: !6563)
!6563 = !{null, !3835, !27}
!6564 = !{!6565, !6566, !6567, !6569}
!6565 = !DILocalVariable(name: "ssp", arg: 1, scope: !6561, file: !3895, line: 282, type: !3835)
!6566 = !DILocalVariable(name: "idx", arg: 2, scope: !6561, file: !3895, line: 282, type: !27)
!6567 = !DILocalVariable(name: "__ret_warn_on", scope: !6568, file: !3895, line: 285, type: !27)
!6568 = distinct !DILexicalBlock(scope: !6561, file: !3895, line: 285, column: 2)
!6569 = !DILocalVariable(name: "__flags", scope: !6570, file: !3895, line: 285, type: !27)
!6570 = distinct !DILexicalBlock(scope: !6571, file: !3895, line: 285, column: 2)
!6571 = distinct !DILexicalBlock(scope: !6568, file: !3895, line: 285, column: 2)
!6572 = !DILocation(line: 282, column: 57, scope: !6561)
!6573 = !DILocation(line: 282, column: 66, scope: !6561)
!6574 = !DILocation(line: 285, column: 2, scope: !6568)
!6575 = !DILocation(line: 285, column: 2, scope: !6571)
!6576 = !DILocation(line: 285, column: 2, scope: !6570)
!6577 = !DILocation(line: 285, column: 2, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6570, file: !3895, line: 285, column: 2)
!6579 = !DILocation(line: 285, column: 2, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6570, file: !3895, line: 285, column: 2)
!6581 = !{i64 2150735634, i64 2150735663, i64 2150735709, i64 2150735767, i64 2150735821, i64 2150735875, i64 2150735930, i64 2150735961, i64 2150736269, i64 2150736275, i64 2150736322, i64 2150736345, i64 2150736371}
!6582 = !DILocation(line: 285, column: 2, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6570, file: !3895, line: 285, column: 2)
!6584 = !DILocation(line: 285, column: 2, scope: !6561)
!6585 = !DILocation(line: 286, column: 24, scope: !6561)
!6586 = !DILocation(line: 286, column: 2, scope: !6561)
!6587 = !DILocation(line: 287, column: 2, scope: !6561)
!6588 = !DILocation(line: 287, column: 2, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6561, file: !3895, line: 287, column: 2)
!6590 = !DILocation(line: 288, column: 21, scope: !6561)
!6591 = !DILocation(line: 288, column: 26, scope: !6561)
!6592 = !DILocation(line: 288, column: 2, scope: !6561)
!6593 = !DILocation(line: 289, column: 1, scope: !6561)
!6594 = distinct !DISubprogram(name: "dir_emit_dot", scope: !6, file: !6, line: 3423, type: !6473, scopeLine: 3424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6595)
!6595 = !{!6596, !6597}
!6596 = !DILocalVariable(name: "file", arg: 1, scope: !6594, file: !6, line: 3423, type: !291)
!6597 = !DILocalVariable(name: "ctx", arg: 2, scope: !6594, file: !6, line: 3423, type: !3633)
!6598 = !DILocation(line: 3423, column: 46, scope: !6594)
!6599 = !DILocation(line: 3423, column: 72, scope: !6594)
!6600 = !DILocation(line: 3425, column: 9, scope: !6594)
!6601 = !DILocation(line: 3425, column: 14, scope: !6594)
!6602 = !DILocation(line: 3425, column: 20, scope: !6594)
!6603 = !DILocation(line: 3425, column: 33, scope: !6594)
!6604 = !DILocation(line: 3425, column: 38, scope: !6594)
!6605 = !DILocation(line: 3426, column: 6, scope: !6594)
!6606 = !DILocation(line: 3426, column: 12, scope: !6594)
!6607 = !DILocation(line: 3426, column: 19, scope: !6594)
!6608 = !DILocation(line: 3426, column: 27, scope: !6594)
!6609 = !DILocation(line: 3426, column: 36, scope: !6594)
!6610 = !DILocation(line: 3425, column: 2, scope: !6594)
!6611 = distinct !DISubprogram(name: "dir_emit_dotdot", scope: !6, file: !6, line: 3428, type: !6473, scopeLine: 3429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6612)
!6612 = !{!6613, !6614}
!6613 = !DILocalVariable(name: "file", arg: 1, scope: !6611, file: !6, line: 3428, type: !291)
!6614 = !DILocalVariable(name: "ctx", arg: 2, scope: !6611, file: !6, line: 3428, type: !3633)
!6615 = !DILocation(line: 3428, column: 49, scope: !6611)
!6616 = !DILocation(line: 3428, column: 75, scope: !6611)
!6617 = !DILocation(line: 3430, column: 9, scope: !6611)
!6618 = !DILocation(line: 3430, column: 14, scope: !6611)
!6619 = !DILocation(line: 3430, column: 20, scope: !6611)
!6620 = !DILocation(line: 3430, column: 34, scope: !6611)
!6621 = !DILocation(line: 3430, column: 39, scope: !6611)
!6622 = !DILocation(line: 3431, column: 17, scope: !6611)
!6623 = !DILocation(line: 3431, column: 23, scope: !6611)
!6624 = !DILocation(line: 3431, column: 30, scope: !6611)
!6625 = !DILocation(line: 3431, column: 6, scope: !6611)
!6626 = !DILocation(line: 3430, column: 2, scope: !6611)
!6627 = distinct !DISubprogram(name: "parent_ino", scope: !6, file: !6, line: 3293, type: !6628, scopeLine: 3294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6631)
!6628 = !DISubroutineType(types: !6629)
!6629 = !{!6630, !1863}
!6630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !30, line: 22, baseType: !43)
!6631 = !{!6632, !6633}
!6632 = !DILocalVariable(name: "dentry", arg: 1, scope: !6627, file: !6, line: 3293, type: !1863)
!6633 = !DILocalVariable(name: "res", scope: !6627, file: !6, line: 3295, type: !6630)
!6634 = !DILocation(line: 3293, column: 47, scope: !6627)
!6635 = !DILocation(line: 3295, column: 2, scope: !6627)
!6636 = !DILocation(line: 3295, column: 8, scope: !6627)
!6637 = !DILocation(line: 3301, column: 13, scope: !6627)
!6638 = !DILocation(line: 3301, column: 21, scope: !6627)
!6639 = !DILocation(line: 3301, column: 2, scope: !6627)
!6640 = !DILocation(line: 3302, column: 8, scope: !6627)
!6641 = !DILocation(line: 3302, column: 16, scope: !6627)
!6642 = !DILocation(line: 3302, column: 26, scope: !6627)
!6643 = !DILocation(line: 3302, column: 35, scope: !6627)
!6644 = !DILocation(line: 3302, column: 6, scope: !6627)
!6645 = !DILocation(line: 3303, column: 15, scope: !6627)
!6646 = !DILocation(line: 3303, column: 23, scope: !6627)
!6647 = !DILocation(line: 3303, column: 2, scope: !6627)
!6648 = !DILocation(line: 3304, column: 9, scope: !6627)
!6649 = !DILocation(line: 3305, column: 1, scope: !6627)
!6650 = !DILocation(line: 3304, column: 2, scope: !6627)
!6651 = distinct !DISubprogram(name: "spin_lock", scope: !6652, file: !6652, line: 349, type: !6653, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6655)
!6652 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6653 = !DISubroutineType(types: !6654)
!6654 = !{null, !3197}
!6655 = !{!6656}
!6656 = !DILocalVariable(name: "lock", arg: 1, scope: !6651, file: !6652, line: 349, type: !3197)
!6657 = !DILocation(line: 349, column: 51, scope: !6651)
!6658 = !DILocation(line: 351, column: 2, scope: !6651)
!6659 = !DILocation(line: 352, column: 1, scope: !6651)
!6660 = distinct !DISubprogram(name: "spin_unlock", scope: !6652, file: !6652, line: 389, type: !6653, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6661)
!6661 = !{!6662}
!6662 = !DILocalVariable(name: "lock", arg: 1, scope: !6660, file: !6652, line: 389, type: !3197)
!6663 = !DILocation(line: 389, column: 53, scope: !6660)
!6664 = !DILocation(line: 391, column: 2, scope: !6660)
!6665 = !DILocation(line: 392, column: 1, scope: !6660)
!6666 = !DISubprogram(name: "_raw_spin_lock", scope: !6667, file: !6667, line: 22, type: !6668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6667 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6668 = !DISubroutineType(types: !6669)
!6669 = !{null, !6670}
!6670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!6671 = !DISubprogram(name: "_raw_spin_unlock", scope: !6667, file: !6667, line: 39, type: !6668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6672 = distinct !DISubprogram(name: "srcu_check_nmi_safety", scope: !3895, file: !3895, line: 151, type: !6673, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6675)
!6673 = !DISubroutineType(types: !6674)
!6674 = !{null, !3835, !912}
!6675 = !{!6676, !6677}
!6676 = !DILocalVariable(name: "ssp", arg: 1, scope: !6672, file: !3895, line: 151, type: !3835)
!6677 = !DILocalVariable(name: "nmi_safe", arg: 2, scope: !6672, file: !3895, line: 152, type: !912)
!6678 = !DILocation(line: 151, column: 62, scope: !6672)
!6679 = !DILocation(line: 152, column: 12, scope: !6672)
!6680 = !DILocation(line: 152, column: 24, scope: !6672)
!6681 = !DISubprogram(name: "__srcu_read_lock", scope: !3895, file: !3895, line: 57, type: !6515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6682 = !DISubprogram(name: "__srcu_read_unlock", scope: !3895, file: !3895, line: 58, type: !6562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = distinct !DISubprogram(name: "kref_get", scope: !3748, file: !3748, line: 43, type: !4697, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6684)
!6684 = !{!6685}
!6685 = !DILocalVariable(name: "kref", arg: 1, scope: !6683, file: !3748, line: 43, type: !4695)
!6686 = !DILocation(line: 43, column: 42, scope: !6683)
!6687 = !DILocation(line: 45, column: 16, scope: !6683)
!6688 = !DILocation(line: 45, column: 22, scope: !6683)
!6689 = !DILocation(line: 45, column: 2, scope: !6683)
!6690 = !DILocation(line: 46, column: 1, scope: !6683)
!6691 = distinct !DISubprogram(name: "refcount_inc", scope: !221, file: !221, line: 265, type: !6692, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6692 = !DISubroutineType(types: !6693)
!6693 = !{null, !4782}
!6694 = !{!6695}
!6695 = !DILocalVariable(name: "r", arg: 1, scope: !6691, file: !221, line: 265, type: !4782)
!6696 = !DILocation(line: 265, column: 45, scope: !6691)
!6697 = !DILocation(line: 267, column: 17, scope: !6691)
!6698 = !DILocation(line: 267, column: 2, scope: !6691)
!6699 = !DILocation(line: 268, column: 1, scope: !6691)
!6700 = distinct !DISubprogram(name: "__refcount_inc", scope: !221, file: !221, line: 248, type: !6701, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6703)
!6701 = !DISubroutineType(types: !6702)
!6702 = !{null, !4782, !1245}
!6703 = !{!6704, !6705}
!6704 = !DILocalVariable(name: "r", arg: 1, scope: !6700, file: !221, line: 248, type: !4782)
!6705 = !DILocalVariable(name: "oldp", arg: 2, scope: !6700, file: !221, line: 248, type: !1245)
!6706 = !DILocation(line: 248, column: 47, scope: !6700)
!6707 = !DILocation(line: 248, column: 55, scope: !6700)
!6708 = !DILocation(line: 250, column: 20, scope: !6700)
!6709 = !DILocation(line: 250, column: 23, scope: !6700)
!6710 = !DILocation(line: 250, column: 2, scope: !6700)
!6711 = !DILocation(line: 251, column: 1, scope: !6700)
!6712 = distinct !DISubprogram(name: "__refcount_add", scope: !221, file: !221, line: 191, type: !6713, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6715)
!6713 = !DISubroutineType(types: !6714)
!6714 = !{null, !27, !4782, !1245}
!6715 = !{!6716, !6717, !6718, !6719}
!6716 = !DILocalVariable(name: "i", arg: 1, scope: !6712, file: !221, line: 191, type: !27)
!6717 = !DILocalVariable(name: "r", arg: 2, scope: !6712, file: !221, line: 191, type: !4782)
!6718 = !DILocalVariable(name: "oldp", arg: 3, scope: !6712, file: !221, line: 191, type: !1245)
!6719 = !DILocalVariable(name: "old", scope: !6712, file: !221, line: 193, type: !27)
!6720 = !DILocation(line: 191, column: 39, scope: !6712)
!6721 = !DILocation(line: 191, column: 54, scope: !6712)
!6722 = !DILocation(line: 191, column: 62, scope: !6712)
!6723 = !DILocation(line: 193, column: 2, scope: !6712)
!6724 = !DILocation(line: 193, column: 6, scope: !6712)
!6725 = !DILocation(line: 193, column: 37, scope: !6712)
!6726 = !DILocation(line: 193, column: 41, scope: !6712)
!6727 = !DILocation(line: 193, column: 44, scope: !6712)
!6728 = !DILocation(line: 193, column: 12, scope: !6712)
!6729 = !DILocation(line: 195, column: 6, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6712, file: !221, line: 195, column: 6)
!6731 = !DILocation(line: 195, column: 6, scope: !6712)
!6732 = !DILocation(line: 196, column: 11, scope: !6730)
!6733 = !DILocation(line: 196, column: 4, scope: !6730)
!6734 = !DILocation(line: 196, column: 9, scope: !6730)
!6735 = !DILocation(line: 196, column: 3, scope: !6730)
!6736 = !DILocation(line: 198, column: 6, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6712, file: !221, line: 198, column: 6)
!6738 = !DILocation(line: 198, column: 6, scope: !6712)
!6739 = !DILocation(line: 199, column: 26, scope: !6737)
!6740 = !DILocation(line: 199, column: 3, scope: !6737)
!6741 = !DILocation(line: 200, column: 11, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6737, file: !221, line: 200, column: 11)
!6743 = !DILocation(line: 200, column: 11, scope: !6737)
!6744 = !DILocation(line: 201, column: 26, scope: !6742)
!6745 = !DILocation(line: 201, column: 3, scope: !6742)
!6746 = !DILocation(line: 202, column: 1, scope: !6712)
!6747 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4850, file: !4850, line: 250, type: !4851, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6748 = !{!6749, !6750}
!6749 = !DILocalVariable(name: "i", arg: 1, scope: !6747, file: !4850, line: 250, type: !27)
!6750 = !DILocalVariable(name: "v", arg: 2, scope: !6747, file: !4850, line: 250, type: !4853)
!6751 = !DILocation(line: 250, column: 30, scope: !6747)
!6752 = !DILocation(line: 250, column: 43, scope: !6747)
!6753 = !DILocation(line: 252, column: 31, scope: !6747)
!6754 = !DILocation(line: 252, column: 2, scope: !6747)
!6755 = !DILocation(line: 253, column: 38, scope: !6747)
!6756 = !DILocation(line: 253, column: 41, scope: !6747)
!6757 = !DILocation(line: 253, column: 9, scope: !6747)
!6758 = !DILocation(line: 253, column: 2, scope: !6747)
!6759 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4889, file: !4889, line: 731, type: !4851, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6760 = !{!6761, !6762}
!6761 = !DILocalVariable(name: "i", arg: 1, scope: !6759, file: !4889, line: 731, type: !27)
!6762 = !DILocalVariable(name: "v", arg: 2, scope: !6759, file: !4889, line: 731, type: !4853)
!6763 = !DILocation(line: 731, column: 34, scope: !6759)
!6764 = !DILocation(line: 731, column: 47, scope: !6759)
!6765 = !DILocation(line: 736, column: 31, scope: !6759)
!6766 = !DILocation(line: 736, column: 34, scope: !6759)
!6767 = !DILocation(line: 736, column: 9, scope: !6759)
!6768 = !DILocation(line: 736, column: 2, scope: !6759)
!6769 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4922, file: !4922, line: 95, type: !4851, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6770)
!6770 = !{!6771, !6772, !6773}
!6771 = !DILocalVariable(name: "i", arg: 1, scope: !6769, file: !4922, line: 95, type: !27)
!6772 = !DILocalVariable(name: "v", arg: 2, scope: !6769, file: !4922, line: 95, type: !4853)
!6773 = !DILocalVariable(name: "__ret", scope: !6774, file: !4922, line: 97, type: !27)
!6774 = distinct !DILexicalBlock(scope: !6769, file: !4922, line: 97, column: 9)
!6775 = !DILocation(line: 95, column: 54, scope: !6769)
!6776 = !DILocation(line: 95, column: 67, scope: !6769)
!6777 = !DILocation(line: 97, column: 9, scope: !6774)
!6778 = !{i64 2148504766, i64 2148504805, i64 2148504826, i64 2148504863, i64 2148504886, i64 2148504895}
!6779 = !DILocation(line: 97, column: 9, scope: !6769)
!6780 = !DILocation(line: 97, column: 2, scope: !6769)
!6781 = distinct !DISubprogram(name: "audit_inode_child", scope: !6782, file: !6782, line: 388, type: !6783, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6785)
!6782 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!6783 = !DISubroutineType(types: !6784)
!6784 = !{null, !1841, !1925, !1892}
!6785 = !{!6786, !6787, !6788}
!6786 = !DILocalVariable(name: "parent", arg: 1, scope: !6781, file: !6782, line: 388, type: !1841)
!6787 = !DILocalVariable(name: "dentry", arg: 2, scope: !6781, file: !6782, line: 389, type: !1925)
!6788 = !DILocalVariable(name: "type", arg: 3, scope: !6781, file: !6782, line: 390, type: !1892)
!6789 = !DILocation(line: 388, column: 52, scope: !6781)
!6790 = !DILocation(line: 389, column: 31, scope: !6781)
!6791 = !DILocation(line: 390, column: 30, scope: !6781)
!6792 = !DILocation(line: 391, column: 6, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6781, file: !6782, line: 391, column: 6)
!6794 = !DILocation(line: 391, column: 6, scope: !6781)
!6795 = !DILocation(line: 392, column: 23, scope: !6793)
!6796 = !DILocation(line: 392, column: 31, scope: !6793)
!6797 = !DILocation(line: 392, column: 39, scope: !6793)
!6798 = !DILocation(line: 392, column: 3, scope: !6793)
!6799 = !DILocation(line: 393, column: 1, scope: !6781)
!6800 = distinct !DISubprogram(name: "fsnotify_dirent", scope: !4576, file: !4576, line: 39, type: !6801, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6803)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{null, !1841, !1863, !424}
!6803 = !{!6804, !6805, !6806}
!6804 = !DILocalVariable(name: "dir", arg: 1, scope: !6800, file: !4576, line: 39, type: !1841)
!6805 = !DILocalVariable(name: "dentry", arg: 2, scope: !6800, file: !4576, line: 39, type: !1863)
!6806 = !DILocalVariable(name: "mask", arg: 3, scope: !6800, file: !4576, line: 40, type: !424)
!6807 = !DILocation(line: 39, column: 50, scope: !6800)
!6808 = !DILocation(line: 39, column: 70, scope: !6800)
!6809 = !DILocation(line: 40, column: 14, scope: !6800)
!6810 = !DILocation(line: 42, column: 16, scope: !6800)
!6811 = !DILocation(line: 42, column: 22, scope: !6800)
!6812 = !DILocation(line: 42, column: 53, scope: !6800)
!6813 = !DILocation(line: 42, column: 59, scope: !6800)
!6814 = !DILocation(line: 42, column: 67, scope: !6800)
!6815 = !DILocation(line: 42, column: 2, scope: !6800)
!6816 = !DILocation(line: 43, column: 1, scope: !6800)
!6817 = distinct !DISubprogram(name: "audit_dummy_context", scope: !6782, file: !6782, line: 318, type: !6818, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6820)
!6818 = !DISubroutineType(types: !6819)
!6819 = !{!912}
!6820 = !{!6821}
!6821 = !DILocalVariable(name: "p", scope: !6817, file: !6782, line: 320, type: !25)
!6822 = !DILocation(line: 320, column: 2, scope: !6817)
!6823 = !DILocation(line: 320, column: 8, scope: !6817)
!6824 = !DILocation(line: 320, column: 12, scope: !6817)
!6825 = !DILocation(line: 321, column: 10, scope: !6817)
!6826 = !DILocation(line: 321, column: 12, scope: !6817)
!6827 = !DILocation(line: 321, column: 23, scope: !6817)
!6828 = !DILocation(line: 321, column: 15, scope: !6817)
!6829 = !DILocation(line: 322, column: 1, scope: !6817)
!6830 = !DILocation(line: 321, column: 2, scope: !6817)
!6831 = !DISubprogram(name: "__audit_inode_child", scope: !6782, file: !6782, line: 300, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6832 = distinct !DISubprogram(name: "audit_context", scope: !6782, file: !6782, line: 313, type: !6833, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6833 = !DISubroutineType(types: !6834)
!6834 = !{!1593}
!6835 = !DILocation(line: 315, column: 9, scope: !6832)
!6836 = !DILocation(line: 315, column: 18, scope: !6832)
!6837 = !DILocation(line: 315, column: 2, scope: !6832)
!6838 = distinct !DISubprogram(name: "get_current", scope: !6839, file: !6839, line: 39, type: !6840, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6842)
!6839 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6840 = !DISubroutineType(types: !6841)
!6841 = !{!412}
!6842 = !{!6843, !6845, !6847}
!6843 = !DILocalVariable(name: "pscr_ret__", scope: !6844, file: !6839, line: 41, type: !412)
!6844 = distinct !DILexicalBlock(scope: !6838, file: !6839, line: 41, column: 9)
!6845 = !DILocalVariable(name: "__vpp_verify", scope: !6846, file: !6839, line: 41, type: !4464)
!6846 = distinct !DILexicalBlock(scope: !6844, file: !6839, line: 41, column: 9)
!6847 = !DILocalVariable(name: "pfo_val__", scope: !6848, file: !6839, line: 41, type: !471)
!6848 = distinct !DILexicalBlock(scope: !6844, file: !6839, line: 41, column: 9)
!6849 = !DILocation(line: 41, column: 9, scope: !6844)
!6850 = !DILocation(line: 41, column: 9, scope: !6846)
!6851 = !DILocation(line: 41, column: 9, scope: !6848)
!6852 = !{i64 2149132350}
!6853 = !DILocation(line: 41, column: 9, scope: !6838)
!6854 = !DILocation(line: 41, column: 2, scope: !6838)
!6855 = distinct !DISubprogram(name: "fsnotify_name", scope: !4576, file: !4576, line: 29, type: !6856, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6858)
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!27, !424, !4464, !27, !1841, !1932, !423}
!6858 = !{!6859, !6860, !6861, !6862, !6863, !6864}
!6859 = !DILocalVariable(name: "mask", arg: 1, scope: !6855, file: !4576, line: 29, type: !424)
!6860 = !DILocalVariable(name: "data", arg: 2, scope: !6855, file: !4576, line: 29, type: !4464)
!6861 = !DILocalVariable(name: "data_type", arg: 3, scope: !6855, file: !4576, line: 29, type: !27)
!6862 = !DILocalVariable(name: "dir", arg: 4, scope: !6855, file: !4576, line: 30, type: !1841)
!6863 = !DILocalVariable(name: "name", arg: 5, scope: !6855, file: !4576, line: 30, type: !1932)
!6864 = !DILocalVariable(name: "cookie", arg: 6, scope: !6855, file: !4576, line: 31, type: !423)
!6865 = !DILocation(line: 29, column: 39, scope: !6855)
!6866 = !DILocation(line: 29, column: 57, scope: !6855)
!6867 = !DILocation(line: 29, column: 67, scope: !6855)
!6868 = !DILocation(line: 30, column: 19, scope: !6855)
!6869 = !DILocation(line: 30, column: 43, scope: !6855)
!6870 = !DILocation(line: 31, column: 9, scope: !6855)
!6871 = !DILocation(line: 33, column: 24, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6855, file: !4576, line: 33, column: 6)
!6873 = !DILocation(line: 33, column: 29, scope: !6872)
!6874 = !DILocation(line: 33, column: 35, scope: !6872)
!6875 = !DILocation(line: 33, column: 6, scope: !6872)
!6876 = !DILocation(line: 33, column: 58, scope: !6872)
!6877 = !DILocation(line: 33, column: 6, scope: !6855)
!6878 = !DILocation(line: 34, column: 3, scope: !6872)
!6879 = !DILocation(line: 36, column: 18, scope: !6855)
!6880 = !DILocation(line: 36, column: 24, scope: !6855)
!6881 = !DILocation(line: 36, column: 30, scope: !6855)
!6882 = !DILocation(line: 36, column: 41, scope: !6855)
!6883 = !DILocation(line: 36, column: 46, scope: !6855)
!6884 = !DILocation(line: 36, column: 58, scope: !6855)
!6885 = !DILocation(line: 36, column: 9, scope: !6855)
!6886 = !DILocation(line: 36, column: 2, scope: !6855)
!6887 = !DILocation(line: 37, column: 1, scope: !6855)
!6888 = distinct !DISubprogram(name: "atomic_long_read", scope: !4850, file: !4850, line: 3158, type: !6889, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6893)
!6889 = !DISubroutineType(types: !6890)
!6890 = !{!1126, !6891}
!6891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6892, size: 64)
!6892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!6893 = !{!6894}
!6894 = !DILocalVariable(name: "v", arg: 1, scope: !6888, file: !4850, line: 3158, type: !6891)
!6895 = !DILocation(line: 3158, column: 39, scope: !6888)
!6896 = !DILocation(line: 3160, column: 25, scope: !6888)
!6897 = !DILocation(line: 3160, column: 2, scope: !6888)
!6898 = !DILocation(line: 3161, column: 30, scope: !6888)
!6899 = !DILocation(line: 3161, column: 9, scope: !6888)
!6900 = !DILocation(line: 3161, column: 2, scope: !6888)
!6901 = !DISubprogram(name: "fsnotify", scope: !239, file: !239, line: 541, type: !6902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6902 = !DISubroutineType(types: !6903)
!6903 = !{!27, !424, !4464, !27, !1841, !1932, !1841, !423}
!6904 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4872, file: !4872, line: 66, type: !4873, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6905)
!6905 = !{!6906, !6907}
!6906 = !DILocalVariable(name: "v", arg: 1, scope: !6904, file: !4872, line: 66, type: !4875)
!6907 = !DILocalVariable(name: "size", arg: 2, scope: !6904, file: !4872, line: 66, type: !40)
!6908 = !DILocation(line: 66, column: 73, scope: !6904)
!6909 = !DILocation(line: 66, column: 83, scope: !6904)
!6910 = !DILocation(line: 68, column: 19, scope: !6904)
!6911 = !DILocation(line: 68, column: 22, scope: !6904)
!6912 = !DILocation(line: 68, column: 2, scope: !6904)
!6913 = !DILocation(line: 69, column: 2, scope: !6904)
!6914 = !DILocation(line: 70, column: 1, scope: !6904)
!6915 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !310, file: !310, line: 35, type: !6889, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6916)
!6916 = !{!6917}
!6917 = !DILocalVariable(name: "v", arg: 1, scope: !6915, file: !310, line: 35, type: !6891)
!6918 = !DILocation(line: 35, column: 43, scope: !6915)
!6919 = !DILocation(line: 38, column: 27, scope: !6915)
!6920 = !DILocation(line: 38, column: 9, scope: !6915)
!6921 = !DILocation(line: 38, column: 2, scope: !6915)
!6922 = distinct !DISubprogram(name: "kasan_check_read", scope: !4900, file: !4900, line: 40, type: !4901, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6923)
!6923 = !{!6924, !6925}
!6924 = !DILocalVariable(name: "p", arg: 1, scope: !6922, file: !4900, line: 40, type: !4875)
!6925 = !DILocalVariable(name: "size", arg: 2, scope: !6922, file: !4900, line: 40, type: !7)
!6926 = !DILocation(line: 40, column: 58, scope: !6922)
!6927 = !DILocation(line: 40, column: 74, scope: !6922)
!6928 = !DILocation(line: 42, column: 2, scope: !6922)
!6929 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !4889, file: !4889, line: 2554, type: !6930, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6934)
!6930 = !DISubroutineType(types: !6931)
!6931 = !{!315, !6932}
!6932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6933, size: 64)
!6933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!6934 = !{!6935}
!6935 = !DILocalVariable(name: "v", arg: 1, scope: !6929, file: !4889, line: 2554, type: !6932)
!6936 = !DILocation(line: 2554, column: 37, scope: !6929)
!6937 = !DILocation(line: 2556, column: 28, scope: !6929)
!6938 = !DILocation(line: 2556, column: 9, scope: !6929)
!6939 = !DILocation(line: 2556, column: 2, scope: !6929)
!6940 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6941, file: !6941, line: 13, type: !6930, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6942)
!6941 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6942 = !{!6943}
!6943 = !DILocalVariable(name: "v", arg: 1, scope: !6940, file: !6941, line: 13, type: !6932)
!6944 = !DILocation(line: 13, column: 65, scope: !6940)
!6945 = !DILocation(line: 15, column: 9, scope: !6940)
!6946 = !DILocation(line: 15, column: 2, scope: !6940)
!6947 = distinct !DISubprogram(name: "list_del_rcu", scope: !6948, file: !6948, line: 155, type: !4215, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6949)
!6948 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!6949 = !{!6950}
!6950 = !DILocalVariable(name: "entry", arg: 1, scope: !6947, file: !6948, line: 155, type: !105)
!6951 = !DILocation(line: 155, column: 51, scope: !6947)
!6952 = !DILocation(line: 157, column: 19, scope: !6947)
!6953 = !DILocation(line: 157, column: 2, scope: !6947)
!6954 = !DILocation(line: 158, column: 2, scope: !6947)
!6955 = !DILocation(line: 158, column: 9, scope: !6947)
!6956 = !DILocation(line: 158, column: 14, scope: !6947)
!6957 = !DILocation(line: 159, column: 1, scope: !6947)
!6958 = distinct !DISubprogram(name: "__list_del_entry", scope: !4214, file: !4214, line: 213, type: !4215, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6959)
!6959 = !{!6960}
!6960 = !DILocalVariable(name: "entry", arg: 1, scope: !6958, file: !4214, line: 213, type: !105)
!6961 = !DILocation(line: 213, column: 55, scope: !6958)
!6962 = !DILocation(line: 215, column: 30, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6958, file: !4214, line: 215, column: 6)
!6964 = !DILocation(line: 215, column: 7, scope: !6963)
!6965 = !DILocation(line: 215, column: 6, scope: !6958)
!6966 = !DILocation(line: 216, column: 3, scope: !6963)
!6967 = !DILocation(line: 218, column: 13, scope: !6958)
!6968 = !DILocation(line: 218, column: 20, scope: !6958)
!6969 = !DILocation(line: 218, column: 26, scope: !6958)
!6970 = !DILocation(line: 218, column: 33, scope: !6958)
!6971 = !DILocation(line: 218, column: 2, scope: !6958)
!6972 = !DILocation(line: 219, column: 1, scope: !6958)
!6973 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4214, file: !4214, line: 134, type: !6974, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6976)
!6974 = !DISubroutineType(types: !6975)
!6975 = !{!912, !105}
!6976 = !{!6977}
!6977 = !DILocalVariable(name: "entry", arg: 1, scope: !6973, file: !4214, line: 134, type: !105)
!6978 = !DILocation(line: 134, column: 61, scope: !6973)
!6979 = !DILocation(line: 136, column: 2, scope: !6973)
!6980 = distinct !DISubprogram(name: "__list_del", scope: !4214, file: !4214, line: 193, type: !4240, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6981)
!6981 = !{!6982, !6983}
!6982 = !DILocalVariable(name: "prev", arg: 1, scope: !6980, file: !4214, line: 193, type: !105)
!6983 = !DILocalVariable(name: "next", arg: 2, scope: !6980, file: !4214, line: 193, type: !105)
!6984 = !DILocation(line: 193, column: 50, scope: !6980)
!6985 = !DILocation(line: 193, column: 75, scope: !6980)
!6986 = !DILocation(line: 195, column: 15, scope: !6980)
!6987 = !DILocation(line: 195, column: 2, scope: !6980)
!6988 = !DILocation(line: 195, column: 8, scope: !6980)
!6989 = !DILocation(line: 195, column: 13, scope: !6980)
!6990 = !DILocation(line: 196, column: 2, scope: !6980)
!6991 = !DILocation(line: 196, column: 2, scope: !6992)
!6992 = distinct !DILexicalBlock(scope: !6980, file: !4214, line: 196, column: 2)
!6993 = !DILocation(line: 196, column: 2, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6992, file: !4214, line: 196, column: 2)
!6995 = !DILocation(line: 196, column: 2, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6992, file: !4214, line: 196, column: 2)
!6997 = !DILocation(line: 197, column: 1, scope: !6980)
