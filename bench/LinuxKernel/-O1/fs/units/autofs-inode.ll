; ModuleID = 'fs/autofs/inode.c'
source_filename = "fs/autofs/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.user_namespace = type opaque
%struct.match_token = type { i32, ptr }
%struct.pcpu_hot = type { %union.anon.24 }
%union.anon.24 = type { %struct.anon.25, [16 x i8] }
%struct.anon.25 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.autofs_info = type { ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
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
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.22 = type { ptr }
%struct.substring_t = type { ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.23 }
%struct.kernel_cap_t = type { i64 }
%union.anon.23 = type { %struct.callback_head }
%struct.file = type { %union.anon.26, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.26 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.27, %struct.qspinlock }
%union.anon.27 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@autofs_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"&sbi->wq_mutex\00", align 1, !dbg !3521
@autofs_fill_super.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3526
@.str.2 = private unnamed_addr constant [17 x i8] c"&sbi->pipe_mutex\00", align 1, !dbg !3528
@autofs_sops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @autofs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3571
@autofs_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@.str.3 = private unnamed_addr constant [48 x i8] c"\013autofs4:pid:%d:%s: called with bogus options\0A\00", align 1, !dbg !3533
@__func__.autofs_fill_super = private unnamed_addr constant [18 x i8] c"autofs_fill_super\00", align 1, !dbg !3538
@.str.4 = private unnamed_addr constant [91 x i8] c"\013autofs4:pid:%d:%s: kernel does not match daemon version daemon (%d, %d) kernel (%d, %d)\0A\00", align 1, !dbg !3543
@.str.5 = private unnamed_addr constant [54 x i8] c"\013autofs4:pid:%d:%s: could not find process group %d\0A\00", align 1, !dbg !3548
@autofs_root_operations = external dso_local constant %struct.file_operations, align 8
@autofs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.6 = private unnamed_addr constant [58 x i8] c"\013autofs4:pid:%d:%s: could not open pipe file descriptor\0A\00", align 1, !dbg !3553
@.str.7 = private unnamed_addr constant [71 x i8] c"\013autofs4:pid:%d:%s: pipe file descriptor does not contain proper ops\0A\00", align 1, !dbg !3558
@autofs_dir_operations = external dso_local constant %struct.file_operations, align 8
@autofs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.8 = private unnamed_addr constant [18 x i8] c"fs/autofs/inode.c\00", align 1, !dbg !3563
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3566
@.str.10 = private unnamed_addr constant [7 x i8] c",fd=%d\00", align 1, !dbg !3573
@.str.11 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1, !dbg !3578
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.12 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1, !dbg !3580
@.str.13 = private unnamed_addr constant [9 x i8] c",pgrp=%d\00", align 1, !dbg !3582
@.str.14 = private unnamed_addr constant [13 x i8] c",timeout=%lu\00", align 1, !dbg !3587
@.str.15 = private unnamed_addr constant [13 x i8] c",minproto=%d\00", align 1, !dbg !3592
@.str.16 = private unnamed_addr constant [13 x i8] c",maxproto=%d\00", align 1, !dbg !3594
@.str.17 = private unnamed_addr constant [8 x i8] c",offset\00", align 1, !dbg !3596
@.str.18 = private unnamed_addr constant [8 x i8] c",direct\00", align 1, !dbg !3598
@.str.19 = private unnamed_addr constant [10 x i8] c",indirect\00", align 1, !dbg !3600
@.str.20 = private unnamed_addr constant [14 x i8] c",strictexpire\00", align 1, !dbg !3605
@.str.21 = private unnamed_addr constant [8 x i8] c",ignore\00", align 1, !dbg !3610
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !3612
@tokens = internal constant [12 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.23 }, %struct.match_token { i32 2, ptr @.str.24 }, %struct.match_token { i32 3, ptr @.str.25 }, %struct.match_token { i32 4, ptr @.str.26 }, %struct.match_token { i32 5, ptr @.str.27 }, %struct.match_token { i32 6, ptr @.str.28 }, %struct.match_token { i32 7, ptr @.str.29 }, %struct.match_token { i32 8, ptr @.str.30 }, %struct.match_token { i32 9, ptr @.str.31 }, %struct.match_token { i32 10, ptr @.str.32 }, %struct.match_token { i32 11, ptr @.str.33 }, %struct.match_token zeroinitializer], align 16, !dbg !3638
@.str.23 = private unnamed_addr constant [6 x i8] c"fd=%u\00", align 1, !dbg !3615
@.str.24 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1, !dbg !3617
@.str.25 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1, !dbg !3619
@.str.26 = private unnamed_addr constant [8 x i8] c"pgrp=%u\00", align 1, !dbg !3621
@.str.27 = private unnamed_addr constant [12 x i8] c"minproto=%u\00", align 1, !dbg !3623
@.str.28 = private unnamed_addr constant [12 x i8] c"maxproto=%u\00", align 1, !dbg !3626
@.str.29 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1, !dbg !3628
@.str.30 = private unnamed_addr constant [7 x i8] c"direct\00", align 1, !dbg !3630
@.str.31 = private unnamed_addr constant [7 x i8] c"offset\00", align 1, !dbg !3632
@.str.32 = private unnamed_addr constant [13 x i8] c"strictexpire\00", align 1, !dbg !3634
@.str.33 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1, !dbg !3636
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @autofs_new_ino(ptr noundef %sbi) #0 align 16 !dbg !3687 {
entry:
  %sbi.addr = alloca ptr, align 8
  %ino = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3694
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3692, metadata !DIExpression()), !dbg !3695
  %call = call noalias ptr @kzalloc(i64 noundef 128, i32 noundef 3264) #16, !dbg !3696
  store ptr %call, ptr %ino, align 8, !dbg !3697
  %0 = load ptr, ptr %ino, align 8, !dbg !3698
  %tobool = icmp ne ptr %0, null, !dbg !3698
  br i1 %tobool, label %if.then, label %if.end, !dbg !3700

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ino, align 8, !dbg !3701
  %active = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 3, !dbg !3703
  call void @INIT_LIST_HEAD(ptr noundef %active) #17, !dbg !3704
  %2 = load ptr, ptr %ino, align 8, !dbg !3705
  %expiring = getelementptr inbounds %struct.autofs_info, ptr %2, i32 0, i32 4, !dbg !3706
  call void @INIT_LIST_HEAD(ptr noundef %expiring) #17, !dbg !3707
  %3 = load volatile i64, ptr @jiffies, align 64, !dbg !3708
  %4 = load ptr, ptr %ino, align 8, !dbg !3709
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 6, !dbg !3710
  store i64 %3, ptr %last_used, align 8, !dbg !3711
  %5 = load ptr, ptr %sbi.addr, align 8, !dbg !3712
  %6 = load ptr, ptr %ino, align 8, !dbg !3713
  %sbi1 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 5, !dbg !3714
  store ptr %5, ptr %sbi1, align 8, !dbg !3715
  %7 = load ptr, ptr %ino, align 8, !dbg !3716
  %count = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 7, !dbg !3717
  store i32 1, ptr %count, align 8, !dbg !3718
  br label %if.end, !dbg !3719

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %ino, align 8, !dbg !3720
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3721
  ret ptr %8, !dbg !3722
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !3723 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3727, metadata !DIExpression()), !dbg !3729
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3728, metadata !DIExpression()), !dbg !3730
  %0 = load i64, ptr %size.addr, align 8, !dbg !3731
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3732
  %or = or i32 %1, 256, !dbg !3733
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !3734
  ret ptr %call, !dbg !3735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !3736 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  br label %do.body, !dbg !3743

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3744

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3746

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3744

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3748
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3748
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3748
  store volatile ptr %0, ptr %next, align 8, !dbg !3748
  br label %do.end3, !dbg !3748

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3744

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3750

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3751

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3753

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3751

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3755
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3755
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3755
  store volatile ptr %2, ptr %prev, align 8, !dbg !3755
  br label %do.end9, !dbg !3755

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3751

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3757
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @autofs_clean_ino(ptr noundef %ino) #0 align 16 !dbg !3758 {
entry:
  %ino.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral1 = alloca %struct.kgid_t, align 4
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !3762, metadata !DIExpression()), !dbg !3763
  %0 = load ptr, ptr %ino.addr, align 8, !dbg !3764
  %uid = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 8, !dbg !3765
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3766
  store i32 0, ptr %val, align 4, !dbg !3766
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !3766
  %1 = load ptr, ptr %ino.addr, align 8, !dbg !3767
  %gid = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 9, !dbg !3768
  %val2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !3769
  store i32 0, ptr %val2, align 4, !dbg !3769
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid, ptr align 4 %.compoundliteral1, i64 4, i1 false), !dbg !3769
  %2 = load volatile i64, ptr @jiffies, align 64, !dbg !3770
  %3 = load ptr, ptr %ino.addr, align 8, !dbg !3771
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 6, !dbg !3772
  store i64 %2, ptr %last_used, align 8, !dbg !3773
  ret void, !dbg !3774
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @autofs_free_ino(ptr noundef %ino) #0 align 16 !dbg !3775 {
entry:
  %ino.addr = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !3777, metadata !DIExpression()), !dbg !3780
  br label %do.body, !dbg !3781

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #15, !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !3778, metadata !DIExpression()), !dbg !3782
  %0 = load ptr, ptr %ino.addr, align 8, !dbg !3782
  store ptr %0, ptr %___p, align 8, !dbg !3782
  %1 = load ptr, ptr %___p, align 8, !dbg !3783
  %tobool = icmp ne ptr %1, null, !dbg !3783
  br i1 %tobool, label %if.then, label %if.end, !dbg !3782

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !3785

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !3787

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3787

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %___p, align 8, !dbg !3785
  %rcu = getelementptr inbounds %struct.autofs_info, ptr %2, i32 0, i32 10, !dbg !3785
  %3 = load ptr, ptr %___p, align 8, !dbg !3785
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %3) #17, !dbg !3785
  br label %if.end, !dbg !3785

if.end:                                           ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #15, !dbg !3781
  br label %do.end3, !dbg !3782

do.end3:                                          ; preds = %if.end
  ret void, !dbg !3789
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3790 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @autofs_kill_sb(ptr noundef %sb) #0 align 16 !dbg !3794 {
entry:
  %sb.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %___p = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3796, metadata !DIExpression()), !dbg !3801
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3802
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3797, metadata !DIExpression()), !dbg !3803
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3804
  %call = call ptr @autofs_sbi(ptr noundef %0) #17, !dbg !3805
  store ptr %call, ptr %sbi, align 8, !dbg !3803
  %1 = load ptr, ptr %sbi, align 8, !dbg !3806
  %tobool = icmp ne ptr %1, null, !dbg !3806
  br i1 %tobool, label %if.then, label %if.end, !dbg !3808

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sbi, align 8, !dbg !3809
  call void @autofs_catatonic_mode(ptr noundef %2) #17, !dbg !3811
  %3 = load ptr, ptr %sbi, align 8, !dbg !3812
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3, !dbg !3813
  %4 = load ptr, ptr %oz_pgrp, align 8, !dbg !3813
  call void @put_pid(ptr noundef %4) #17, !dbg !3814
  br label %if.end, !dbg !3815

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %tmp, align 4, !dbg !3816
  %5 = load i32, ptr %tmp, align 4, !dbg !3819
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !3820
  call void @kill_litter_super(ptr noundef %6) #17, !dbg !3821
  %7 = load ptr, ptr %sbi, align 8, !dbg !3822
  %tobool1 = icmp ne ptr %7, null, !dbg !3822
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !3823

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !3824

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #15, !dbg !3825
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !3798, metadata !DIExpression()), !dbg !3825
  %8 = load ptr, ptr %sbi, align 8, !dbg !3825
  store ptr %8, ptr %___p, align 8, !dbg !3825
  %9 = load ptr, ptr %___p, align 8, !dbg !3826
  %tobool3 = icmp ne ptr %9, null, !dbg !3826
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !3825

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !3828

do.body5:                                         ; preds = %if.then4
  br label %do.cond, !dbg !3830

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !3830

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %___p, align 8, !dbg !3828
  %rcu = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 19, !dbg !3828
  %11 = load ptr, ptr %___p, align 8, !dbg !3828
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %11) #17, !dbg !3828
  br label %if.end6, !dbg !3828

if.end6:                                          ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #15, !dbg !3824
  br label %do.cond7, !dbg !3825

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !3825

do.end8:                                          ; preds = %do.cond7
  br label %if.end9, !dbg !3825

if.end9:                                          ; preds = %do.end8, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3832
  ret void, !dbg !3832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_sbi(ptr noundef %sb) #4 align 16 !dbg !3833 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3839
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !3840
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !3840
  ret ptr %1, !dbg !3841
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3842 dso_local void @autofs_catatonic_mode(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3845 dso_local void @put_pid(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3848 dso_local void @kill_litter_super(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %silent.addr = alloca i32, align 4
  %root_inode = alloca ptr, align 8
  %root = alloca ptr, align 8
  %pipe = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %pgrp = alloca i32, align 4
  %pgrp_set = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral13 = alloca %struct.spinlock, align 4
  %tmp33 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3648, metadata !DIExpression()), !dbg !3849
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3649, metadata !DIExpression()), !dbg !3850
  store i32 %silent, ptr %silent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %silent.addr, metadata !3650, metadata !DIExpression()), !dbg !3851
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_inode) #15, !dbg !3852
  call void @llvm.dbg.declare(metadata ptr %root_inode, metadata !3651, metadata !DIExpression()), !dbg !3853
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #15, !dbg !3854
  call void @llvm.dbg.declare(metadata ptr %root, metadata !3652, metadata !DIExpression()), !dbg !3855
  call void @llvm.lifetime.start.p0(i64 8, ptr %pipe) #15, !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %pipe, metadata !3653, metadata !DIExpression()), !dbg !3857
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3858
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3654, metadata !DIExpression()), !dbg !3859
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3655, metadata !DIExpression()), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 4, ptr %pgrp) #15, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !3670, metadata !DIExpression()), !dbg !3863
  store i32 0, ptr %pgrp, align 4, !dbg !3863
  call void @llvm.lifetime.start.p0(i64 1, ptr %pgrp_set) #15, !dbg !3864
  call void @llvm.dbg.declare(metadata ptr %pgrp_set, metadata !3671, metadata !DIExpression()), !dbg !3865
  store i8 0, ptr %pgrp_set, align 1, !dbg !3865
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3866
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3672, metadata !DIExpression()), !dbg !3867
  store i32 -22, ptr %ret, align 4, !dbg !3867
  %call = call noalias ptr @kzalloc(i64 noundef 208, i32 noundef 3264) #16, !dbg !3868
  store ptr %call, ptr %sbi, align 8, !dbg !3869
  %0 = load ptr, ptr %sbi, align 8, !dbg !3870
  %tobool = icmp ne ptr %0, null, !dbg !3870
  br i1 %tobool, label %if.end, label %if.then, !dbg !3872

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3873

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !3874
  %1 = load i32, ptr %tmp, align 4, !dbg !3877
  %2 = load ptr, ptr %sbi, align 8, !dbg !3878
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3879
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 29, !dbg !3880
  store ptr %2, ptr %s_fs_info, align 32, !dbg !3881
  %4 = load ptr, ptr %sbi, align 8, !dbg !3882
  %magic = getelementptr inbounds %struct.autofs_sb_info, ptr %4, i32 0, i32 0, !dbg !3883
  store i32 1833588077, ptr %magic, align 8, !dbg !3884
  %5 = load ptr, ptr %sbi, align 8, !dbg !3885
  %pipefd = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 1, !dbg !3886
  store i32 -1, ptr %pipefd, align 4, !dbg !3887
  %6 = load ptr, ptr %sbi, align 8, !dbg !3888
  %pipe1 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 2, !dbg !3889
  store ptr null, ptr %pipe1, align 8, !dbg !3890
  %7 = load ptr, ptr %sbi, align 8, !dbg !3891
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 9, !dbg !3892
  store i64 0, ptr %exp_timeout, align 8, !dbg !3893
  %8 = load ptr, ptr %sbi, align 8, !dbg !3894
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 3, !dbg !3895
  store ptr null, ptr %oz_pgrp, align 8, !dbg !3896
  %9 = load ptr, ptr %s.addr, align 8, !dbg !3897
  %10 = load ptr, ptr %sbi, align 8, !dbg !3898
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 11, !dbg !3899
  store ptr %9, ptr %sb, align 8, !dbg !3900
  %11 = load ptr, ptr %sbi, align 8, !dbg !3901
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 4, !dbg !3902
  store i32 0, ptr %version, align 8, !dbg !3903
  %12 = load ptr, ptr %sbi, align 8, !dbg !3904
  %sub_version = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 5, !dbg !3905
  store i32 0, ptr %sub_version, align 4, !dbg !3906
  %13 = load ptr, ptr %sbi, align 8, !dbg !3907
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 8, !dbg !3908
  store i32 1, ptr %flags, align 8, !dbg !3909
  %14 = load ptr, ptr %sbi, align 8, !dbg !3910
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %14, i32 0, i32 10, !dbg !3911
  call void @set_autofs_type_indirect(ptr noundef %type) #17, !dbg !3912
  %15 = load ptr, ptr %sbi, align 8, !dbg !3913
  %min_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 6, !dbg !3914
  store i32 0, ptr %min_proto, align 8, !dbg !3915
  %16 = load ptr, ptr %sbi, align 8, !dbg !3916
  %max_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %16, i32 0, i32 7, !dbg !3917
  store i32 0, ptr %max_proto, align 4, !dbg !3918
  br label %do.body, !dbg !3919

do.body:                                          ; preds = %if.end
  %17 = load ptr, ptr %sbi, align 8, !dbg !3920
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %17, i32 0, i32 12, !dbg !3920
  call void @__mutex_init(ptr noundef %wq_mutex, ptr noundef @.str, ptr noundef @autofs_fill_super.__key) #17, !dbg !3920
  br label %do.cond, !dbg !3920

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3920

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !3922

do.body2:                                         ; preds = %do.end
  %18 = load ptr, ptr %sbi, align 8, !dbg !3923
  %pipe_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %18, i32 0, i32 13, !dbg !3923
  call void @__mutex_init(ptr noundef %pipe_mutex, ptr noundef @.str.2, ptr noundef @autofs_fill_super.__key.1) #17, !dbg !3923
  br label %do.cond3, !dbg !3923

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !3923

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !3925

do.body5:                                         ; preds = %do.end4
  %19 = load ptr, ptr %sbi, align 8, !dbg !3926
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %19, i32 0, i32 14, !dbg !3926
  %call6 = call ptr @spinlock_check(ptr noundef %fs_lock) #17, !dbg !3926
  %20 = load ptr, ptr %sbi, align 8, !dbg !3926
  %fs_lock7 = getelementptr inbounds %struct.autofs_sb_info, ptr %20, i32 0, i32 14, !dbg !3926
  %21 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !3926
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %21, i32 0, i32 0, !dbg !3926
  %22 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !3926
  %counter = getelementptr inbounds %struct.atomic_t, ptr %22, i32 0, i32 0, !dbg !3926
  store i32 0, ptr %counter, align 4, !dbg !3926
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %fs_lock7, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !3926
  br label %do.cond8, !dbg !3926

do.cond8:                                         ; preds = %do.body5
  br label %do.end9, !dbg !3926

do.end9:                                          ; preds = %do.cond8
  %23 = load ptr, ptr %sbi, align 8, !dbg !3928
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %23, i32 0, i32 15, !dbg !3929
  store ptr null, ptr %queues, align 8, !dbg !3930
  br label %do.body10, !dbg !3931

do.body10:                                        ; preds = %do.end9
  %24 = load ptr, ptr %sbi, align 8, !dbg !3932
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %24, i32 0, i32 16, !dbg !3932
  %call11 = call ptr @spinlock_check(ptr noundef %lookup_lock) #17, !dbg !3932
  %25 = load ptr, ptr %sbi, align 8, !dbg !3932
  %lookup_lock12 = getelementptr inbounds %struct.autofs_sb_info, ptr %25, i32 0, i32 16, !dbg !3932
  %26 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral13, i32 0, i32 0, !dbg !3932
  %raw_lock14 = getelementptr inbounds %struct.raw_spinlock, ptr %26, i32 0, i32 0, !dbg !3932
  %27 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock14, i32 0, i32 0, !dbg !3932
  %counter15 = getelementptr inbounds %struct.atomic_t, ptr %27, i32 0, i32 0, !dbg !3932
  store i32 0, ptr %counter15, align 4, !dbg !3932
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lookup_lock12, ptr align 4 %.compoundliteral13, i64 4, i1 false), !dbg !3932
  br label %do.cond16, !dbg !3932

do.cond16:                                        ; preds = %do.body10
  br label %do.end17, !dbg !3932

do.end17:                                         ; preds = %do.cond16
  %28 = load ptr, ptr %sbi, align 8, !dbg !3934
  %active_list = getelementptr inbounds %struct.autofs_sb_info, ptr %28, i32 0, i32 17, !dbg !3935
  call void @INIT_LIST_HEAD(ptr noundef %active_list) #17, !dbg !3936
  %29 = load ptr, ptr %sbi, align 8, !dbg !3937
  %expiring_list = getelementptr inbounds %struct.autofs_sb_info, ptr %29, i32 0, i32 18, !dbg !3938
  call void @INIT_LIST_HEAD(ptr noundef %expiring_list) #17, !dbg !3939
  %30 = load ptr, ptr %s.addr, align 8, !dbg !3940
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 3, !dbg !3941
  store i64 1024, ptr %s_blocksize, align 8, !dbg !3942
  %31 = load ptr, ptr %s.addr, align 8, !dbg !3943
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 2, !dbg !3944
  store i8 10, ptr %s_blocksize_bits, align 4, !dbg !3945
  %32 = load ptr, ptr %s.addr, align 8, !dbg !3946
  %s_magic = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 12, !dbg !3947
  store i64 391, ptr %s_magic, align 32, !dbg !3948
  %33 = load ptr, ptr %s.addr, align 8, !dbg !3949
  %s_op = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 6, !dbg !3950
  store ptr @autofs_sops, ptr %s_op, align 16, !dbg !3951
  %34 = load ptr, ptr %s.addr, align 8, !dbg !3952
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 40, !dbg !3953
  store ptr @autofs_dentry_operations, ptr %s_d_op, align 16, !dbg !3954
  %35 = load ptr, ptr %s.addr, align 8, !dbg !3955
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 30, !dbg !3956
  store i32 1, ptr %s_time_gran, align 8, !dbg !3957
  %36 = load ptr, ptr %sbi, align 8, !dbg !3958
  %call18 = call ptr @autofs_new_ino(ptr noundef %36) #17, !dbg !3959
  store ptr %call18, ptr %ino, align 8, !dbg !3960
  %37 = load ptr, ptr %ino, align 8, !dbg !3961
  %tobool19 = icmp ne ptr %37, null, !dbg !3961
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3963

if.then20:                                        ; preds = %do.end17
  store i32 -12, ptr %ret, align 4, !dbg !3964
  br label %fail_free, !dbg !3966

if.end21:                                         ; preds = %do.end17
  %38 = load ptr, ptr %s.addr, align 8, !dbg !3967
  %call22 = call ptr @autofs_get_inode(ptr noundef %38, i16 noundef zeroext 16877) #17, !dbg !3968
  store ptr %call22, ptr %root_inode, align 8, !dbg !3969
  %39 = load ptr, ptr %root_inode, align 8, !dbg !3970
  %call23 = call ptr @d_make_root(ptr noundef %39) #17, !dbg !3971
  store ptr %call23, ptr %root, align 8, !dbg !3972
  %40 = load ptr, ptr %root, align 8, !dbg !3973
  %tobool24 = icmp ne ptr %40, null, !dbg !3973
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !3975

if.then25:                                        ; preds = %if.end21
  store i32 -12, ptr %ret, align 4, !dbg !3976
  br label %fail_ino, !dbg !3978

if.end26:                                         ; preds = %if.end21
  store ptr null, ptr %pipe, align 8, !dbg !3979
  %41 = load ptr, ptr %ino, align 8, !dbg !3980
  %42 = load ptr, ptr %root, align 8, !dbg !3981
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 11, !dbg !3982
  store ptr %41, ptr %d_fsdata, align 8, !dbg !3983
  %43 = load ptr, ptr %data.addr, align 8, !dbg !3984
  %44 = load ptr, ptr %root_inode, align 8, !dbg !3986
  %45 = load ptr, ptr %sbi, align 8, !dbg !3987
  %call27 = call i32 @parse_options(ptr noundef %43, ptr noundef %44, ptr noundef %pgrp, ptr noundef %pgrp_set, ptr noundef %45) #17, !dbg !3988
  %tobool28 = icmp ne i32 %call27, 0, !dbg !3988
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !3989

if.then29:                                        ; preds = %if.end26
  br label %do.body30, !dbg !3990

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !3993

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !3993

do.end32:                                         ; preds = %do.cond31
  %call34 = call ptr @get_current() #17, !dbg !3990
  %pid = getelementptr inbounds %struct.task_struct, ptr %call34, i32 0, i32 62, !dbg !3990
  %46 = load i32, ptr %pid, align 8, !dbg !3990
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %46, ptr noundef @__func__.autofs_fill_super) #18, !dbg !3990
  store i32 %call35, ptr %tmp33, align 4, !dbg !3993
  %47 = load i32, ptr %tmp33, align 4, !dbg !3990
  br label %fail_dput, !dbg !3995

if.end36:                                         ; preds = %if.end26
  %48 = load ptr, ptr %sbi, align 8, !dbg !3996
  %max_proto37 = getelementptr inbounds %struct.autofs_sb_info, ptr %48, i32 0, i32 7, !dbg !3998
  %49 = load i32, ptr %max_proto37, align 4, !dbg !3998
  %cmp = icmp slt i32 %49, 3, !dbg !3999
  br i1 %cmp, label %if.then40, label %lor.lhs.false, !dbg !4000

lor.lhs.false:                                    ; preds = %if.end36
  %50 = load ptr, ptr %sbi, align 8, !dbg !4001
  %min_proto38 = getelementptr inbounds %struct.autofs_sb_info, ptr %50, i32 0, i32 6, !dbg !4002
  %51 = load i32, ptr %min_proto38, align 8, !dbg !4002
  %cmp39 = icmp sgt i32 %51, 5, !dbg !4003
  br i1 %cmp39, label %if.then40, label %if.end50, !dbg !4004

if.then40:                                        ; preds = %lor.lhs.false, %if.end36
  br label %do.body41, !dbg !4005

do.body41:                                        ; preds = %if.then40
  br label %do.cond42, !dbg !4008

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !4008

do.end43:                                         ; preds = %do.cond42
  %call45 = call ptr @get_current() #17, !dbg !4005
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %call45, i32 0, i32 62, !dbg !4005
  %52 = load i32, ptr %pid46, align 8, !dbg !4005
  %53 = load ptr, ptr %sbi, align 8, !dbg !4005
  %min_proto47 = getelementptr inbounds %struct.autofs_sb_info, ptr %53, i32 0, i32 6, !dbg !4005
  %54 = load i32, ptr %min_proto47, align 8, !dbg !4005
  %55 = load ptr, ptr %sbi, align 8, !dbg !4005
  %max_proto48 = getelementptr inbounds %struct.autofs_sb_info, ptr %55, i32 0, i32 7, !dbg !4005
  %56 = load i32, ptr %max_proto48, align 4, !dbg !4005
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %52, ptr noundef @__func__.autofs_fill_super, i32 noundef %54, i32 noundef %56, i32 noundef 3, i32 noundef 5) #18, !dbg !4005
  store i32 %call49, ptr %tmp44, align 4, !dbg !4008
  %57 = load i32, ptr %tmp44, align 4, !dbg !4005
  br label %fail_dput, !dbg !4010

if.end50:                                         ; preds = %lor.lhs.false
  %58 = load ptr, ptr %sbi, align 8, !dbg !4011
  %max_proto51 = getelementptr inbounds %struct.autofs_sb_info, ptr %58, i32 0, i32 7, !dbg !4013
  %59 = load i32, ptr %max_proto51, align 4, !dbg !4013
  %cmp52 = icmp sgt i32 %59, 5, !dbg !4014
  br i1 %cmp52, label %if.then53, label %if.else, !dbg !4015

if.then53:                                        ; preds = %if.end50
  %60 = load ptr, ptr %sbi, align 8, !dbg !4016
  %version54 = getelementptr inbounds %struct.autofs_sb_info, ptr %60, i32 0, i32 4, !dbg !4017
  store i32 5, ptr %version54, align 8, !dbg !4018
  br label %if.end57, !dbg !4016

if.else:                                          ; preds = %if.end50
  %61 = load ptr, ptr %sbi, align 8, !dbg !4019
  %max_proto55 = getelementptr inbounds %struct.autofs_sb_info, ptr %61, i32 0, i32 7, !dbg !4020
  %62 = load i32, ptr %max_proto55, align 4, !dbg !4020
  %63 = load ptr, ptr %sbi, align 8, !dbg !4021
  %version56 = getelementptr inbounds %struct.autofs_sb_info, ptr %63, i32 0, i32 4, !dbg !4022
  store i32 %62, ptr %version56, align 8, !dbg !4023
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then53
  %64 = load ptr, ptr %sbi, align 8, !dbg !4024
  %sub_version58 = getelementptr inbounds %struct.autofs_sb_info, ptr %64, i32 0, i32 5, !dbg !4025
  store i32 5, ptr %sub_version58, align 4, !dbg !4026
  %65 = load i8, ptr %pgrp_set, align 1, !dbg !4027, !range !4029, !noundef !909
  %tobool59 = trunc i8 %65 to i1, !dbg !4027
  br i1 %tobool59, label %if.then60, label %if.else74, !dbg !4030

if.then60:                                        ; preds = %if.end57
  %66 = load i32, ptr %pgrp, align 4, !dbg !4031
  %call61 = call ptr @find_get_pid(i32 noundef %66) #17, !dbg !4033
  %67 = load ptr, ptr %sbi, align 8, !dbg !4034
  %oz_pgrp62 = getelementptr inbounds %struct.autofs_sb_info, ptr %67, i32 0, i32 3, !dbg !4035
  store ptr %call61, ptr %oz_pgrp62, align 8, !dbg !4036
  %68 = load ptr, ptr %sbi, align 8, !dbg !4037
  %oz_pgrp63 = getelementptr inbounds %struct.autofs_sb_info, ptr %68, i32 0, i32 3, !dbg !4039
  %69 = load ptr, ptr %oz_pgrp63, align 8, !dbg !4039
  %tobool64 = icmp ne ptr %69, null, !dbg !4037
  br i1 %tobool64, label %if.end73, label %if.then65, !dbg !4040

if.then65:                                        ; preds = %if.then60
  br label %do.body66, !dbg !4041

do.body66:                                        ; preds = %if.then65
  br label %do.cond67, !dbg !4044

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !4044

do.end68:                                         ; preds = %do.cond67
  %call70 = call ptr @get_current() #17, !dbg !4041
  %pid71 = getelementptr inbounds %struct.task_struct, ptr %call70, i32 0, i32 62, !dbg !4041
  %70 = load i32, ptr %pid71, align 8, !dbg !4041
  %71 = load i32, ptr %pgrp, align 4, !dbg !4041
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %70, ptr noundef @__func__.autofs_fill_super, i32 noundef %71) #18, !dbg !4041
  store i32 %call72, ptr %tmp69, align 4, !dbg !4044
  %72 = load i32, ptr %tmp69, align 4, !dbg !4041
  br label %fail_dput, !dbg !4046

if.end73:                                         ; preds = %if.then60
  br label %if.end78, !dbg !4047

if.else74:                                        ; preds = %if.end57
  %call75 = call ptr @get_current() #17, !dbg !4048
  %call76 = call ptr @get_task_pid(ptr noundef %call75, i32 noundef 2) #17, !dbg !4050
  %73 = load ptr, ptr %sbi, align 8, !dbg !4051
  %oz_pgrp77 = getelementptr inbounds %struct.autofs_sb_info, ptr %73, i32 0, i32 3, !dbg !4052
  store ptr %call76, ptr %oz_pgrp77, align 8, !dbg !4053
  br label %if.end78

if.end78:                                         ; preds = %if.else74, %if.end73
  %74 = load ptr, ptr %sbi, align 8, !dbg !4054
  %type79 = getelementptr inbounds %struct.autofs_sb_info, ptr %74, i32 0, i32 10, !dbg !4056
  %75 = load i32, ptr %type79, align 8, !dbg !4056
  %call80 = call i32 @autofs_type_trigger(i32 noundef %75) #17, !dbg !4057
  %tobool81 = icmp ne i32 %call80, 0, !dbg !4057
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !4058

if.then82:                                        ; preds = %if.end78
  %76 = load ptr, ptr %root, align 8, !dbg !4059
  call void @__managed_dentry_set_managed(ptr noundef %76) #17, !dbg !4060
  br label %if.end83, !dbg !4060

if.end83:                                         ; preds = %if.then82, %if.end78
  %77 = load ptr, ptr %root_inode, align 8, !dbg !4061
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 39, !dbg !4062
  store ptr @autofs_root_operations, ptr %78, align 8, !dbg !4063
  %79 = load ptr, ptr %root_inode, align 8, !dbg !4064
  %i_op = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 8, !dbg !4065
  store ptr @autofs_dir_inode_operations, ptr %i_op, align 8, !dbg !4066
  store i32 0, ptr %tmp84, align 4, !dbg !4067
  %80 = load i32, ptr %tmp84, align 4, !dbg !4070
  %81 = load ptr, ptr %sbi, align 8, !dbg !4071
  %pipefd85 = getelementptr inbounds %struct.autofs_sb_info, ptr %81, i32 0, i32 1, !dbg !4072
  %82 = load i32, ptr %pipefd85, align 4, !dbg !4072
  %call86 = call ptr @fget(i32 noundef %82) #17, !dbg !4073
  store ptr %call86, ptr %pipe, align 8, !dbg !4074
  %83 = load ptr, ptr %pipe, align 8, !dbg !4075
  %tobool87 = icmp ne ptr %83, null, !dbg !4075
  br i1 %tobool87, label %if.end96, label %if.then88, !dbg !4077

if.then88:                                        ; preds = %if.end83
  br label %do.body89, !dbg !4078

do.body89:                                        ; preds = %if.then88
  br label %do.cond90, !dbg !4081

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !4081

do.end91:                                         ; preds = %do.cond90
  %call93 = call ptr @get_current() #17, !dbg !4078
  %pid94 = getelementptr inbounds %struct.task_struct, ptr %call93, i32 0, i32 62, !dbg !4078
  %84 = load i32, ptr %pid94, align 8, !dbg !4078
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %84, ptr noundef @__func__.autofs_fill_super) #18, !dbg !4078
  store i32 %call95, ptr %tmp92, align 4, !dbg !4081
  %85 = load i32, ptr %tmp92, align 4, !dbg !4078
  br label %fail_put_pid, !dbg !4083

if.end96:                                         ; preds = %if.end83
  %86 = load ptr, ptr %pipe, align 8, !dbg !4084
  %call97 = call i32 @autofs_prepare_pipe(ptr noundef %86) #17, !dbg !4085
  store i32 %call97, ptr %ret, align 4, !dbg !4086
  %87 = load i32, ptr %ret, align 4, !dbg !4087
  %cmp98 = icmp slt i32 %87, 0, !dbg !4089
  br i1 %cmp98, label %if.then99, label %if.end100, !dbg !4090

if.then99:                                        ; preds = %if.end96
  br label %fail_fput, !dbg !4091

if.end100:                                        ; preds = %if.end96
  %88 = load ptr, ptr %pipe, align 8, !dbg !4092
  %89 = load ptr, ptr %sbi, align 8, !dbg !4093
  %pipe101 = getelementptr inbounds %struct.autofs_sb_info, ptr %89, i32 0, i32 2, !dbg !4094
  store ptr %88, ptr %pipe101, align 8, !dbg !4095
  %90 = load ptr, ptr %sbi, align 8, !dbg !4096
  %flags102 = getelementptr inbounds %struct.autofs_sb_info, ptr %90, i32 0, i32 8, !dbg !4097
  %91 = load i32, ptr %flags102, align 8, !dbg !4098
  %and = and i32 %91, -2, !dbg !4098
  store i32 %and, ptr %flags102, align 8, !dbg !4098
  %92 = load ptr, ptr %root, align 8, !dbg !4099
  %93 = load ptr, ptr %s.addr, align 8, !dbg !4100
  %s_root = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 13, !dbg !4101
  store ptr %92, ptr %s_root, align 8, !dbg !4102
  store i32 0, ptr %retval, align 4, !dbg !4103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4103

fail_fput:                                        ; preds = %if.then99
  call void @llvm.dbg.label(metadata !3673), !dbg !4104
  br label %do.body103, !dbg !4105

do.body103:                                       ; preds = %fail_fput
  br label %do.cond104, !dbg !4107

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !4107

do.end105:                                        ; preds = %do.cond104
  %call107 = call ptr @get_current() #17, !dbg !4105
  %pid108 = getelementptr inbounds %struct.task_struct, ptr %call107, i32 0, i32 62, !dbg !4105
  %94 = load i32, ptr %pid108, align 8, !dbg !4105
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %94, ptr noundef @__func__.autofs_fill_super) #18, !dbg !4105
  store i32 %call109, ptr %tmp106, align 4, !dbg !4107
  %95 = load i32, ptr %tmp106, align 4, !dbg !4105
  %96 = load ptr, ptr %pipe, align 8, !dbg !4109
  call void @fput(ptr noundef %96) #17, !dbg !4110
  br label %fail_put_pid, !dbg !4110

fail_put_pid:                                     ; preds = %do.end105, %do.end91
  call void @llvm.dbg.label(metadata !3674), !dbg !4111
  %97 = load ptr, ptr %sbi, align 8, !dbg !4112
  %oz_pgrp110 = getelementptr inbounds %struct.autofs_sb_info, ptr %97, i32 0, i32 3, !dbg !4113
  %98 = load ptr, ptr %oz_pgrp110, align 8, !dbg !4113
  call void @put_pid(ptr noundef %98) #17, !dbg !4114
  br label %fail_dput, !dbg !4114

fail_dput:                                        ; preds = %fail_put_pid, %do.end68, %do.end43, %do.end32
  call void @llvm.dbg.label(metadata !3675), !dbg !4115
  %99 = load ptr, ptr %root, align 8, !dbg !4116
  call void @dput(ptr noundef %99) #17, !dbg !4117
  br label %fail_free, !dbg !4118

fail_ino:                                         ; preds = %if.then25
  call void @llvm.dbg.label(metadata !3676), !dbg !4119
  %100 = load ptr, ptr %ino, align 8, !dbg !4120
  call void @autofs_free_ino(ptr noundef %100) #17, !dbg !4121
  br label %fail_free, !dbg !4121

fail_free:                                        ; preds = %fail_ino, %fail_dput, %if.then20
  call void @llvm.dbg.label(metadata !3677), !dbg !4122
  %101 = load ptr, ptr %sbi, align 8, !dbg !4123
  call void @kfree(ptr noundef %101) #17, !dbg !4124
  %102 = load ptr, ptr %s.addr, align 8, !dbg !4125
  %s_fs_info111 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 29, !dbg !4126
  store ptr null, ptr %s_fs_info111, align 32, !dbg !4127
  %103 = load i32, ptr %ret, align 4, !dbg !4128
  store i32 %103, ptr %retval, align 4, !dbg !4129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4129

cleanup:                                          ; preds = %fail_free, %if.end100, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 1, ptr %pgrp_set) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 4, ptr %pgrp) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %pipe) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #15, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_inode) #15, !dbg !4130
  %104 = load i32, ptr %retval, align 4, !dbg !4130
  ret i32 %104, !dbg !4130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_autofs_type_indirect(ptr noundef %type) #4 align 16 !dbg !4131 {
entry:
  %type.addr = alloca ptr, align 8
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4135, metadata !DIExpression()), !dbg !4136
  %0 = load ptr, ptr %type.addr, align 8, !dbg !4137
  store i32 1, ptr %0, align 4, !dbg !4138
  ret void, !dbg !4139
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4140 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !4145 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4151, metadata !DIExpression()), !dbg !4152
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4153
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4154
  ret ptr %1, !dbg !4155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @autofs_get_inode(ptr noundef %sb, i16 noundef zeroext %mode) #0 align 16 !dbg !4156 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp37 = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4160, metadata !DIExpression()), !dbg !4170
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4161, metadata !DIExpression()), !dbg !4171
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4162, metadata !DIExpression()), !dbg !4173
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4174
  %call = call ptr @new_inode(ptr noundef %0) #17, !dbg !4175
  store ptr %call, ptr %inode, align 8, !dbg !4173
  %1 = load ptr, ptr %inode, align 8, !dbg !4176
  %cmp = icmp eq ptr %1, null, !dbg !4178
  br i1 %cmp, label %if.then, label %if.end, !dbg !4179

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4180

if.end:                                           ; preds = %entry
  %2 = load i16, ptr %mode.addr, align 2, !dbg !4181
  %3 = load ptr, ptr %inode, align 8, !dbg !4182
  %i_mode = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 0, !dbg !4183
  store i16 %2, ptr %i_mode, align 8, !dbg !4184
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !4185
  %s_root = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13, !dbg !4187
  %5 = load ptr, ptr %s_root, align 8, !dbg !4187
  %tobool = icmp ne ptr %5, null, !dbg !4185
  br i1 %tobool, label %if.then1, label %if.end8, !dbg !4188

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %inode, align 8, !dbg !4189
  %i_uid = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2, !dbg !4191
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !4192
  %s_root2 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13, !dbg !4193
  %8 = load ptr, ptr %s_root2, align 8, !dbg !4193
  %call3 = call ptr @d_inode(ptr noundef %8) #17, !dbg !4194
  %i_uid4 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 2, !dbg !4195
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %i_uid4, i64 4, i1 false), !dbg !4195
  %9 = load ptr, ptr %inode, align 8, !dbg !4196
  %i_gid = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4, !dbg !4197
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !4198
  %s_root5 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 13, !dbg !4199
  %11 = load ptr, ptr %s_root5, align 8, !dbg !4199
  %call6 = call ptr @d_inode(ptr noundef %11) #17, !dbg !4200
  %i_gid7 = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 4, !dbg !4201
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %i_gid7, i64 4, i1 false), !dbg !4201
  br label %if.end8, !dbg !4202

if.end8:                                          ; preds = %if.then1, %if.end
  %12 = load ptr, ptr %inode, align 8, !dbg !4203
  %i_atime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16, !dbg !4204
  %13 = load ptr, ptr %inode, align 8, !dbg !4205
  %i_mtime = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 17, !dbg !4206
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !4207
  %14 = load ptr, ptr %inode, align 8, !dbg !4208
  %call9 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %14) #17, !dbg !4207
  %15 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4207
  %16 = extractvalue { i64, i64 } %call9, 0, !dbg !4207
  store i64 %16, ptr %15, align 8, !dbg !4207
  %17 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4207
  %18 = extractvalue { i64, i64 } %call9, 1, !dbg !4207
  store i64 %18, ptr %17, align 8, !dbg !4207
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !4207
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !4207
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %i_mtime, i64 16, i1 false), !dbg !4209
  %call10 = call i32 @get_next_ino() #17, !dbg !4210
  %conv = zext i32 %call10 to i64, !dbg !4210
  %19 = load ptr, ptr %inode, align 8, !dbg !4211
  %i_ino = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 12, !dbg !4212
  store i64 %conv, ptr %i_ino, align 8, !dbg !4213
  %20 = load i16, ptr %mode.addr, align 2, !dbg !4214
  %conv11 = zext i16 %20 to i32, !dbg !4214
  %and = and i32 %conv11, 61440, !dbg !4214
  %cmp12 = icmp eq i32 %and, 16384, !dbg !4214
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4215

if.then14:                                        ; preds = %if.end8
  %21 = load ptr, ptr %inode, align 8, !dbg !4216
  call void @set_nlink(ptr noundef %21, i32 noundef 2) #17, !dbg !4218
  %22 = load ptr, ptr %inode, align 8, !dbg !4219
  %i_op = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8, !dbg !4220
  store ptr @autofs_dir_inode_operations, ptr %i_op, align 8, !dbg !4221
  %23 = load ptr, ptr %inode, align 8, !dbg !4222
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 39, !dbg !4223
  store ptr @autofs_dir_operations, ptr %24, align 8, !dbg !4224
  br label %if.end46, !dbg !4225

if.else:                                          ; preds = %if.end8
  %25 = load i16, ptr %mode.addr, align 2, !dbg !4226
  %conv15 = zext i16 %25 to i32, !dbg !4226
  %and16 = and i32 %conv15, 61440, !dbg !4226
  %cmp17 = icmp eq i32 %and16, 40960, !dbg !4226
  br i1 %cmp17, label %if.then19, label %if.else21, !dbg !4227

if.then19:                                        ; preds = %if.else
  %26 = load ptr, ptr %inode, align 8, !dbg !4228
  %i_op20 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8, !dbg !4230
  store ptr @autofs_symlink_inode_operations, ptr %i_op20, align 8, !dbg !4231
  br label %if.end45, !dbg !4232

if.else21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4233
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4163, metadata !DIExpression()), !dbg !4233
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4233
  %27 = load i32, ptr %__ret_warn_on, align 4, !dbg !4234
  %tobool22 = icmp ne i32 %27, 0, !dbg !4234
  %lnot = xor i1 %tobool22, true, !dbg !4234
  %lnot23 = xor i1 %lnot, true, !dbg !4234
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !4234
  %conv24 = sext i32 %lnot.ext to i64, !dbg !4234
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4234
  %tobool25 = icmp ne i64 %expval, 0, !dbg !4234
  br i1 %tobool25, label %if.then26, label %if.end36, !dbg !4233

if.then26:                                        ; preds = %if.else21
  br label %do.body, !dbg !4234

do.body:                                          ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4235
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4167, metadata !DIExpression()), !dbg !4235
  store i32 2305, ptr %__flags, align 4, !dbg !4235
  br label %do.body27, !dbg !4235

do.body27:                                        ; preds = %do.body
  br label %do.cond, !dbg !4236

do.cond:                                          ; preds = %do.body27
  br label %do.end, !dbg !4236

do.end:                                           ; preds = %do.cond
  br label %do.body28, !dbg !4235

do.body28:                                        ; preds = %do.end
  %28 = load i32, ptr %__flags, align 4, !dbg !4238
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 383, i32 %28, i64 12) #15, !dbg !4238, !srcloc !4240
  br label %do.cond29, !dbg !4238

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4238

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !4235

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !4241

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !4241

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4234
  br label %do.cond34, !dbg !4235

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !4235

do.end35:                                         ; preds = %do.cond34
  br label %if.end36, !dbg !4235

if.end36:                                         ; preds = %do.end35, %if.else21
  %29 = load i32, ptr %__ret_warn_on, align 4, !dbg !4233
  %tobool38 = icmp ne i32 %29, 0, !dbg !4233
  %lnot39 = xor i1 %tobool38, true, !dbg !4233
  %lnot41 = xor i1 %lnot39, true, !dbg !4233
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4233
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4233
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4233
  store i64 %expval44, ptr %tmp37, align 8, !dbg !4234
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4243
  %30 = load i64, ptr %tmp37, align 8, !dbg !4233
  br label %if.end45

if.end45:                                         ; preds = %if.end36, %if.then19
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then14
  %31 = load ptr, ptr %inode, align 8, !dbg !4244
  store ptr %31, ptr %retval, align 8, !dbg !4245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4245

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !4246
  %32 = load ptr, ptr %retval, align 8, !dbg !4246
  ret ptr %32, !dbg !4246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4247 dso_local ptr @d_make_root(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_options(ptr noundef %options, ptr noundef %root, ptr noundef %pgrp, ptr noundef %pgrp_set, ptr noundef %sbi) #0 align 16 !dbg !4250 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %pgrp.addr = alloca ptr, align 8
  %pgrp_set.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %args = alloca [3 x %struct.substring_t], align 16
  %option = alloca i32, align 4
  %pipefd = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %token = alloca i32, align 4
  %tmp27 = alloca %struct.kuid_t, align 4
  %tmp41 = alloca %struct.kgid_t, align 4
  store ptr %options, ptr %options.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !4254, metadata !DIExpression()), !dbg !4273
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4255, metadata !DIExpression()), !dbg !4274
  store ptr %pgrp, ptr %pgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgrp.addr, metadata !4256, metadata !DIExpression()), !dbg !4275
  store ptr %pgrp_set, ptr %pgrp_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgrp_set.addr, metadata !4257, metadata !DIExpression()), !dbg !4276
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4258, metadata !DIExpression()), !dbg !4277
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4278
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4259, metadata !DIExpression()), !dbg !4279
  call void @llvm.lifetime.start.p0(i64 48, ptr %args) #15, !dbg !4280
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4260, metadata !DIExpression()), !dbg !4281
  call void @llvm.lifetime.start.p0(i64 4, ptr %option) #15, !dbg !4282
  call void @llvm.dbg.declare(metadata ptr %option, metadata !4267, metadata !DIExpression()), !dbg !4283
  call void @llvm.lifetime.start.p0(i64 4, ptr %pipefd) #15, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %pipefd, metadata !4268, metadata !DIExpression()), !dbg !4285
  store i32 -1, ptr %pipefd, align 4, !dbg !4285
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #15, !dbg !4286
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4269, metadata !DIExpression()), !dbg !4287
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #15, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4270, metadata !DIExpression()), !dbg !4289
  %0 = load ptr, ptr %root.addr, align 8, !dbg !4290
  %i_uid = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2, !dbg !4291
  br label %do.body, !dbg !4292

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4295

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4295

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #17, !dbg !4292
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !4292
  %1 = load ptr, ptr %cred, align 32, !dbg !4292
  store ptr %1, ptr %tmp, align 8, !dbg !4295
  %2 = load ptr, ptr %tmp, align 8, !dbg !4292
  %uid1 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 1, !dbg !4297
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 8 %uid1, i64 4, i1 false), !dbg !4297
  %3 = load ptr, ptr %root.addr, align 8, !dbg !4298
  %i_gid = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4, !dbg !4299
  br label %do.body2, !dbg !4300

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !4303

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4303

do.end4:                                          ; preds = %do.cond3
  %call6 = call ptr @get_current() #17, !dbg !4300
  %cred7 = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 94, !dbg !4300
  %4 = load ptr, ptr %cred7, align 32, !dbg !4300
  store ptr %4, ptr %tmp5, align 8, !dbg !4303
  %5 = load ptr, ptr %tmp5, align 8, !dbg !4300
  %gid8 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 2, !dbg !4305
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %gid8, i64 4, i1 false), !dbg !4305
  %6 = load ptr, ptr %sbi.addr, align 8, !dbg !4306
  %min_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 6, !dbg !4307
  store i32 3, ptr %min_proto, align 8, !dbg !4308
  %7 = load ptr, ptr %sbi.addr, align 8, !dbg !4309
  %max_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 7, !dbg !4310
  store i32 5, ptr %max_proto, align 4, !dbg !4311
  %8 = load ptr, ptr %sbi.addr, align 8, !dbg !4312
  %pipefd9 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 1, !dbg !4313
  store i32 -1, ptr %pipefd9, align 4, !dbg !4314
  %9 = load ptr, ptr %options.addr, align 8, !dbg !4315
  %tobool = icmp ne ptr %9, null, !dbg !4315
  br i1 %tobool, label %if.end, label %if.then, !dbg !4317

if.then:                                          ; preds = %do.end4
  store i32 1, ptr %retval, align 4, !dbg !4318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !4318

if.end:                                           ; preds = %do.end4
  br label %while.cond, !dbg !4319

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %call10 = call ptr @strsep(ptr noundef %options.addr, ptr noundef @.str.22) #17, !dbg !4320
  store ptr %call10, ptr %p, align 8, !dbg !4321
  %cmp = icmp ne ptr %call10, null, !dbg !4322
  br i1 %cmp, label %while.body, label %while.end, !dbg !4319

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #15, !dbg !4323
  call void @llvm.dbg.declare(metadata ptr %token, metadata !4271, metadata !DIExpression()), !dbg !4324
  %10 = load ptr, ptr %p, align 8, !dbg !4325
  %11 = load i8, ptr %10, align 1, !dbg !4327
  %tobool11 = icmp ne i8 %11, 0, !dbg !4327
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4328

if.then12:                                        ; preds = %while.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4329, !llvm.loop !4330

if.end13:                                         ; preds = %while.body
  %12 = load ptr, ptr %p, align 8, !dbg !4334
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4335
  %call14 = call i32 @match_token(ptr noundef %12, ptr noundef @tokens, ptr noundef %arraydecay) #17, !dbg !4336
  store i32 %call14, ptr %token, align 4, !dbg !4337
  %13 = load i32, ptr %token, align 4, !dbg !4338
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
    i32 3, label %sw.bb35
    i32 4, label %sw.bb50
    i32 5, label %sw.bb56
    i32 6, label %sw.bb63
    i32 7, label %sw.bb70
    i32 8, label %sw.bb71
    i32 9, label %sw.bb73
    i32 10, label %sw.bb75
    i32 11, label %sw.bb76
  ], !dbg !4339

sw.bb:                                            ; preds = %if.end13
  %arraydecay15 = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4340
  %call16 = call i32 @match_int(ptr noundef %arraydecay15, ptr noundef %pipefd) #17, !dbg !4343
  %tobool17 = icmp ne i32 %call16, 0, !dbg !4343
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4344

if.then18:                                        ; preds = %sw.bb
  store i32 1, ptr %retval, align 4, !dbg !4345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4345

if.end19:                                         ; preds = %sw.bb
  %14 = load i32, ptr %pipefd, align 4, !dbg !4346
  %15 = load ptr, ptr %sbi.addr, align 8, !dbg !4347
  %pipefd20 = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 1, !dbg !4348
  store i32 %14, ptr %pipefd20, align 4, !dbg !4349
  br label %sw.epilog, !dbg !4350

sw.bb21:                                          ; preds = %if.end13
  %arraydecay22 = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4351
  %call23 = call i32 @match_int(ptr noundef %arraydecay22, ptr noundef %option) #17, !dbg !4353
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4353
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4354

if.then25:                                        ; preds = %sw.bb21
  store i32 1, ptr %retval, align 4, !dbg !4355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4355

if.end26:                                         ; preds = %sw.bb21
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp27) #15, !dbg !4356
  %call28 = call ptr @current_user_ns() #17, !dbg !4357
  %16 = load i32, ptr %option, align 4, !dbg !4358
  %call29 = call i32 @make_kuid(ptr noundef %call28, i32 noundef %16) #17, !dbg !4356
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp27, i32 0, i32 0, !dbg !4356
  store i32 %call29, ptr %coerce.dive, align 4, !dbg !4356
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp27, i64 4, i1 false), !dbg !4356
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp27) #15, !dbg !4356
  %coerce.dive30 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4359
  %17 = load i32, ptr %coerce.dive30, align 4, !dbg !4359
  %call31 = call zeroext i1 @uid_valid(i32 %17) #17, !dbg !4359
  br i1 %call31, label %if.end33, label %if.then32, !dbg !4361

if.then32:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4362

if.end33:                                         ; preds = %if.end26
  %18 = load ptr, ptr %root.addr, align 8, !dbg !4363
  %i_uid34 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 2, !dbg !4364
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid34, ptr align 4 %uid, i64 4, i1 false), !dbg !4365
  br label %sw.epilog, !dbg !4366

sw.bb35:                                          ; preds = %if.end13
  %arraydecay36 = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4367
  %call37 = call i32 @match_int(ptr noundef %arraydecay36, ptr noundef %option) #17, !dbg !4369
  %tobool38 = icmp ne i32 %call37, 0, !dbg !4369
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4370

if.then39:                                        ; preds = %sw.bb35
  store i32 1, ptr %retval, align 4, !dbg !4371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4371

if.end40:                                         ; preds = %sw.bb35
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp41) #15, !dbg !4372
  %call42 = call ptr @current_user_ns() #17, !dbg !4373
  %19 = load i32, ptr %option, align 4, !dbg !4374
  %call43 = call i32 @make_kgid(ptr noundef %call42, i32 noundef %19) #17, !dbg !4372
  %coerce.dive44 = getelementptr inbounds %struct.kgid_t, ptr %tmp41, i32 0, i32 0, !dbg !4372
  store i32 %call43, ptr %coerce.dive44, align 4, !dbg !4372
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %tmp41, i64 4, i1 false), !dbg !4372
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp41) #15, !dbg !4372
  %coerce.dive45 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4375
  %20 = load i32, ptr %coerce.dive45, align 4, !dbg !4375
  %call46 = call zeroext i1 @gid_valid(i32 %20) #17, !dbg !4375
  br i1 %call46, label %if.end48, label %if.then47, !dbg !4377

if.then47:                                        ; preds = %if.end40
  store i32 1, ptr %retval, align 4, !dbg !4378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4378

if.end48:                                         ; preds = %if.end40
  %21 = load ptr, ptr %root.addr, align 8, !dbg !4379
  %i_gid49 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4, !dbg !4380
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid49, ptr align 4 %gid, i64 4, i1 false), !dbg !4381
  br label %sw.epilog, !dbg !4382

sw.bb50:                                          ; preds = %if.end13
  %arraydecay51 = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4383
  %call52 = call i32 @match_int(ptr noundef %arraydecay51, ptr noundef %option) #17, !dbg !4385
  %tobool53 = icmp ne i32 %call52, 0, !dbg !4385
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !4386

if.then54:                                        ; preds = %sw.bb50
  store i32 1, ptr %retval, align 4, !dbg !4387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4387

if.end55:                                         ; preds = %sw.bb50
  %22 = load i32, ptr %option, align 4, !dbg !4388
  %23 = load ptr, ptr %pgrp.addr, align 8, !dbg !4389
  store i32 %22, ptr %23, align 4, !dbg !4390
  %24 = load ptr, ptr %pgrp_set.addr, align 8, !dbg !4391
  store i8 1, ptr %24, align 1, !dbg !4392
  br label %sw.epilog, !dbg !4393

sw.bb56:                                          ; preds = %if.end13
  %arraydecay57 = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4394
  %call58 = call i32 @match_int(ptr noundef %arraydecay57, ptr noundef %option) #17, !dbg !4396
  %tobool59 = icmp ne i32 %call58, 0, !dbg !4396
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !4397

if.then60:                                        ; preds = %sw.bb56
  store i32 1, ptr %retval, align 4, !dbg !4398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4398

if.end61:                                         ; preds = %sw.bb56
  %25 = load i32, ptr %option, align 4, !dbg !4399
  %26 = load ptr, ptr %sbi.addr, align 8, !dbg !4400
  %min_proto62 = getelementptr inbounds %struct.autofs_sb_info, ptr %26, i32 0, i32 6, !dbg !4401
  store i32 %25, ptr %min_proto62, align 8, !dbg !4402
  br label %sw.epilog, !dbg !4403

sw.bb63:                                          ; preds = %if.end13
  %arraydecay64 = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !4404
  %call65 = call i32 @match_int(ptr noundef %arraydecay64, ptr noundef %option) #17, !dbg !4406
  %tobool66 = icmp ne i32 %call65, 0, !dbg !4406
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !4407

if.then67:                                        ; preds = %sw.bb63
  store i32 1, ptr %retval, align 4, !dbg !4408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4408

if.end68:                                         ; preds = %sw.bb63
  %27 = load i32, ptr %option, align 4, !dbg !4409
  %28 = load ptr, ptr %sbi.addr, align 8, !dbg !4410
  %max_proto69 = getelementptr inbounds %struct.autofs_sb_info, ptr %28, i32 0, i32 7, !dbg !4411
  store i32 %27, ptr %max_proto69, align 4, !dbg !4412
  br label %sw.epilog, !dbg !4413

sw.bb70:                                          ; preds = %if.end13
  %29 = load ptr, ptr %sbi.addr, align 8, !dbg !4414
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %29, i32 0, i32 10, !dbg !4415
  call void @set_autofs_type_indirect(ptr noundef %type) #17, !dbg !4416
  br label %sw.epilog, !dbg !4417

sw.bb71:                                          ; preds = %if.end13
  %30 = load ptr, ptr %sbi.addr, align 8, !dbg !4418
  %type72 = getelementptr inbounds %struct.autofs_sb_info, ptr %30, i32 0, i32 10, !dbg !4419
  call void @set_autofs_type_direct(ptr noundef %type72) #17, !dbg !4420
  br label %sw.epilog, !dbg !4421

sw.bb73:                                          ; preds = %if.end13
  %31 = load ptr, ptr %sbi.addr, align 8, !dbg !4422
  %type74 = getelementptr inbounds %struct.autofs_sb_info, ptr %31, i32 0, i32 10, !dbg !4423
  call void @set_autofs_type_offset(ptr noundef %type74) #17, !dbg !4424
  br label %sw.epilog, !dbg !4425

sw.bb75:                                          ; preds = %if.end13
  %32 = load ptr, ptr %sbi.addr, align 8, !dbg !4426
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %32, i32 0, i32 8, !dbg !4427
  %33 = load i32, ptr %flags, align 8, !dbg !4428
  %or = or i32 %33, 2, !dbg !4428
  store i32 %or, ptr %flags, align 8, !dbg !4428
  br label %sw.epilog, !dbg !4429

sw.bb76:                                          ; preds = %if.end13
  %34 = load ptr, ptr %sbi.addr, align 8, !dbg !4430
  %flags77 = getelementptr inbounds %struct.autofs_sb_info, ptr %34, i32 0, i32 8, !dbg !4431
  %35 = load i32, ptr %flags77, align 8, !dbg !4432
  %or78 = or i32 %35, 4, !dbg !4432
  store i32 %or78, ptr %flags77, align 8, !dbg !4432
  br label %sw.epilog, !dbg !4433

sw.default:                                       ; preds = %if.end13
  store i32 1, ptr %retval, align 4, !dbg !4434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4434

sw.epilog:                                        ; preds = %sw.bb76, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb70, %if.end68, %if.end61, %if.end55, %if.end48, %if.end33, %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4331
  br label %cleanup, !dbg !4331

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then67, %if.then60, %if.then54, %if.then47, %if.then39, %if.then32, %if.then25, %if.then18, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #15, !dbg !4331
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup81 [
    i32 0, label %cleanup.cont
    i32 6, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4319, !llvm.loop !4330

while.end:                                        ; preds = %while.cond
  %36 = load ptr, ptr %sbi.addr, align 8, !dbg !4435
  %pipefd79 = getelementptr inbounds %struct.autofs_sb_info, ptr %36, i32 0, i32 1, !dbg !4436
  %37 = load i32, ptr %pipefd79, align 4, !dbg !4436
  %cmp80 = icmp slt i32 %37, 0, !dbg !4437
  %conv = zext i1 %cmp80 to i32, !dbg !4437
  store i32 %conv, ptr %retval, align 4, !dbg !4438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !4438

cleanup81:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #15, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #15, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 4, ptr %pipefd) #15, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 4, ptr %option) #15, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 48, ptr %args) #15, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4439
  %38 = load i32, ptr %retval, align 4, !dbg !4439
  ret i32 %38, !dbg !4439
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4440 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !4444 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4457
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4449, metadata !DIExpression()), !dbg !4457
  br label %do.body, !dbg !4457

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4451, metadata !DIExpression()), !dbg !4458
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4458
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4457
  br label %do.cond, !dbg !4458

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4458

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4459
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4455, metadata !DIExpression()), !dbg !4459
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !4459, !srcloc !4460
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4459
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4459
  %3 = inttoptr i64 %2 to ptr, !dbg !4459
  store ptr %3, ptr %tmp, align 8, !dbg !4459
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4457
  %4 = load ptr, ptr %tmp, align 8, !dbg !4459
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4457
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4457
  store ptr %5, ptr %tmp1, align 8, !dbg !4457
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4461
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4457
  ret ptr %6, !dbg !4462
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4463 dso_local ptr @find_get_pid(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4466 dso_local ptr @get_task_pid(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_trigger(i32 noundef %type) #4 align 16 !dbg !4469 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4473, metadata !DIExpression()), !dbg !4474
  %0 = load i32, ptr %type.addr, align 4, !dbg !4475
  %cmp = icmp eq i32 %0, 2, !dbg !4476
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4477

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !4478
  %cmp1 = icmp eq i32 %1, 4, !dbg !4479
  br label %lor.end, !dbg !4477

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !4477
  ret i32 %lor.ext, !dbg !4480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__managed_dentry_set_managed(ptr noundef %dentry) #4 align 16 !dbg !4481 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4485
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !4486
  %1 = load i32, ptr %d_flags, align 8, !dbg !4487
  %or = or i32 %1, 393216, !dbg !4487
  store i32 %or, ptr %d_flags, align 8, !dbg !4487
  ret void, !dbg !4488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4489 dso_local ptr @fget(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_prepare_pipe(ptr noundef %pipe) #4 align 16 !dbg !4493 {
entry:
  %retval = alloca i32, align 4
  %pipe.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !4499
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !4501
  %1 = load i32, ptr %f_mode, align 4, !dbg !4501
  %and = and i32 %1, 262144, !dbg !4502
  %tobool = icmp ne i32 %and, 0, !dbg !4502
  br i1 %tobool, label %if.end, label %if.then, !dbg !4503

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pipe.addr, align 8, !dbg !4505
  %call = call ptr @file_inode(ptr noundef %2) #17, !dbg !4505
  %i_mode = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 0, !dbg !4505
  %3 = load i16, ptr %i_mode, align 8, !dbg !4505
  %conv = zext i16 %3 to i32, !dbg !4505
  %and1 = and i32 %conv, 61440, !dbg !4505
  %cmp = icmp eq i32 %and1, 4096, !dbg !4505
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !4507

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %pipe.addr, align 8, !dbg !4509
  %f_flags = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 6, !dbg !4510
  %5 = load i32, ptr %f_flags, align 8, !dbg !4511
  %or = or i32 %5, 16384, !dbg !4511
  store i32 %or, ptr %f_flags, align 8, !dbg !4511
  %6 = load ptr, ptr %pipe.addr, align 8, !dbg !4512
  %f_flags5 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 6, !dbg !4513
  %7 = load i32, ptr %f_flags5, align 8, !dbg !4514
  %and6 = and i32 %7, -2049, !dbg !4514
  store i32 %and6, ptr %f_flags5, align 8, !dbg !4514
  store i32 0, ptr %retval, align 4, !dbg !4515
  br label %return, !dbg !4515

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !4516
  ret i32 %8, !dbg !4516
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4517 dso_local void @fput(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4518 dso_local void @dput(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4519 dso_local void @kfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4522 dso_local ptr @new_inode(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !4523 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4527, metadata !DIExpression()), !dbg !4528
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4529
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4530
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4530
  ret ptr %1, !dbg !4531
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4532 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4535 dso_local i32 @get_next_ino() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4538 dso_local void @set_nlink(ptr noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4541 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4543, metadata !DIExpression()), !dbg !4548
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4544, metadata !DIExpression()), !dbg !4549
  %0 = load i64, ptr %size.addr, align 8, !dbg !4550
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4551
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4552

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4553
  %tobool = icmp ne i64 %2, 0, !dbg !4553
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4554

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4545, metadata !DIExpression()), !dbg !4556
  %3 = load i64, ptr %size.addr, align 8, !dbg !4557
  %cmp = icmp ugt i64 %3, 8192, !dbg !4559
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4560

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4561
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4562
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4563
  store ptr %call, ptr %retval, align 8, !dbg !4564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4564

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4565
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4565
  store i32 %call2, ptr %index, align 4, !dbg !4566
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4567
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4568
  %9 = ptrtoint ptr %8 to i64, !dbg !4568
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4569
  %idxprom = zext i32 %call3 to i64, !dbg !4570
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4570
  %10 = load i32, ptr %index, align 4, !dbg !4571
  %idxprom4 = zext i32 %10 to i64, !dbg !4570
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4570
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4570
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4572
  %13 = load i64, ptr %size.addr, align 8, !dbg !4573
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !4574
  store ptr %call6, ptr %retval, align 8, !dbg !4575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4575

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4576
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4577
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4578
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4579
  store ptr %call8, ptr %retval, align 8, !dbg !4580
  br label %return, !dbg !4580

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4581
  ret ptr %16, !dbg !4581
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4582 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !4583 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4587, metadata !DIExpression()), !dbg !4589
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4588, metadata !DIExpression()), !dbg !4590
  %0 = load i64, ptr %size.addr, align 8, !dbg !4591
  %tobool = icmp ne i64 %0, 0, !dbg !4591
  br i1 %tobool, label %if.end, label %if.then, !dbg !4593

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4594
  br label %return, !dbg !4594

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4595
  %cmp = icmp ule i64 %1, 8, !dbg !4597
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4598

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4599
  br label %return, !dbg !4599

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4600
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4602
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4603

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4604
  %cmp4 = icmp ule i64 %3, 96, !dbg !4605
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4606

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4607
  br label %return, !dbg !4607

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4608
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4610
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4611

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4612
  %cmp9 = icmp ule i64 %5, 192, !dbg !4613
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4614

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4615
  br label %return, !dbg !4615

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4616
  %cmp12 = icmp ule i64 %6, 8, !dbg !4618
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4619

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4620
  br label %return, !dbg !4620

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4621
  %cmp15 = icmp ule i64 %7, 16, !dbg !4623
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4624

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4626
  %cmp18 = icmp ule i64 %8, 32, !dbg !4628
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4629

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4631
  %cmp21 = icmp ule i64 %9, 64, !dbg !4633
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4634

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4635
  br label %return, !dbg !4635

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4636
  %cmp24 = icmp ule i64 %10, 128, !dbg !4638
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4639

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4640
  br label %return, !dbg !4640

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4641
  %cmp27 = icmp ule i64 %11, 256, !dbg !4643
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4644

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4645
  br label %return, !dbg !4645

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4646
  %cmp30 = icmp ule i64 %12, 512, !dbg !4648
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4649

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4650
  br label %return, !dbg !4650

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4651
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4653
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4654

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4655
  br label %return, !dbg !4655

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4656
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4658
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4659

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4660
  br label %return, !dbg !4660

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4661
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4663
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4664

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4665
  br label %return, !dbg !4665

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4666
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4668
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4669

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4670
  br label %return, !dbg !4670

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4671
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4673
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4674

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4675
  br label %return, !dbg !4675

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4676
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4678
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4679

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4680
  br label %return, !dbg !4680

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4681
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4683
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4684

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4685
  br label %return, !dbg !4685

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4686
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4688
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4689

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4690
  br label %return, !dbg !4690

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4691
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4693
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4694

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4695
  br label %return, !dbg !4695

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4696
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4698
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4699

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4700
  br label %return, !dbg !4700

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4701
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4703
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4704

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4705
  br label %return, !dbg !4705

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4706
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4708
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4709

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4710
  br label %return, !dbg !4710

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4711, !range !4029, !noundef !909
  %tobool69 = trunc i8 %25 to i1, !dbg !4711
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4713

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4714

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !4715, !srcloc !4718
  unreachable, !dbg !4715

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4719

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4720

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4721

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4723

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4721

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #15, !dbg !4725, !srcloc !4727
  br label %do.end75, !dbg !4725

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4721

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4728
  br label %return, !dbg !4728

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4729
  ret i32 %26, !dbg !4729
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4730 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !4736 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4740, metadata !DIExpression()), !dbg !4742
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4741, metadata !DIExpression()), !dbg !4743
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4744
  %and = and i32 %0, 17, !dbg !4744
  %cmp = icmp eq i32 %and, 0, !dbg !4744
  %lnot = xor i1 %cmp, true, !dbg !4744
  %lnot1 = xor i1 %lnot, true, !dbg !4744
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4744
  %conv = sext i32 %lnot.ext to i64, !dbg !4744
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4744
  %tobool = icmp ne i64 %expval, 0, !dbg !4744
  br i1 %tobool, label %if.then, label %if.end, !dbg !4746

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4747
  br label %return, !dbg !4747

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4748
  %and2 = and i32 %1, 1, !dbg !4750
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4750
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4751

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4752
  br label %return, !dbg !4752

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4753
  br label %return, !dbg !4753

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4755
  ret i32 %2, !dbg !4755
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4756 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4757 dso_local void @__compiletime_assert_245() #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_evict_inode(ptr noundef %inode) #0 align 16 !dbg !4758 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4762
  call void @clear_inode(ptr noundef %0) #17, !dbg !4763
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4764
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !4765
  %2 = load ptr, ptr %i_private, align 8, !dbg !4765
  call void @kfree(ptr noundef %2) #17, !dbg !4766
  ret void, !dbg !4767
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_show_options(ptr noundef %m, ptr noundef %root) #0 align 16 !dbg !4768 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %root_inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral10 = alloca %struct.kgid_t, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4770, metadata !DIExpression()), !dbg !4774
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4771, metadata !DIExpression()), !dbg !4775
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !4776
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4772, metadata !DIExpression()), !dbg !4777
  %0 = load ptr, ptr %root.addr, align 8, !dbg !4778
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4779
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4779
  %call = call ptr @autofs_sbi(ptr noundef %1) #17, !dbg !4780
  store ptr %call, ptr %sbi, align 8, !dbg !4777
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_inode) #15, !dbg !4781
  call void @llvm.dbg.declare(metadata ptr %root_inode, metadata !4773, metadata !DIExpression()), !dbg !4782
  %2 = load ptr, ptr %root.addr, align 8, !dbg !4783
  %d_sb1 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9, !dbg !4784
  %3 = load ptr, ptr %d_sb1, align 8, !dbg !4784
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13, !dbg !4785
  %4 = load ptr, ptr %s_root, align 8, !dbg !4785
  %call2 = call ptr @d_inode(ptr noundef %4) #17, !dbg !4786
  store ptr %call2, ptr %root_inode, align 8, !dbg !4782
  %5 = load ptr, ptr %sbi, align 8, !dbg !4787
  %tobool = icmp ne ptr %5, null, !dbg !4787
  br i1 %tobool, label %if.end, label %if.then, !dbg !4789

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4790

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %m.addr, align 8, !dbg !4791
  %7 = load ptr, ptr %sbi, align 8, !dbg !4792
  %pipefd = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 1, !dbg !4793
  %8 = load i32, ptr %pipefd, align 4, !dbg !4793
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef @.str.10, i32 noundef %8) #17, !dbg !4794
  %9 = load ptr, ptr %root_inode, align 8, !dbg !4795
  %i_uid = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2, !dbg !4797
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4798
  store i32 0, ptr %val, align 4, !dbg !4798
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %i_uid, i32 0, i32 0, !dbg !4799
  %10 = load i32, ptr %coerce.dive, align 4, !dbg !4799
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4799
  %11 = load i32, ptr %coerce.dive3, align 4, !dbg !4799
  %call4 = call zeroext i1 @uid_eq(i32 %10, i32 %11) #17, !dbg !4799
  br i1 %call4, label %if.end9, label %if.then5, !dbg !4800

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %m.addr, align 8, !dbg !4801
  %13 = load ptr, ptr %root_inode, align 8, !dbg !4802
  %i_uid6 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 2, !dbg !4803
  %coerce.dive7 = getelementptr inbounds %struct.kuid_t, ptr %i_uid6, i32 0, i32 0, !dbg !4804
  %14 = load i32, ptr %coerce.dive7, align 4, !dbg !4804
  %call8 = call i32 @from_kuid_munged(ptr noundef @init_user_ns, i32 %14) #17, !dbg !4804
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef @.str.11, i32 noundef %call8) #17, !dbg !4805
  br label %if.end9, !dbg !4805

if.end9:                                          ; preds = %if.then5, %if.end
  %15 = load ptr, ptr %root_inode, align 8, !dbg !4806
  %i_gid = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4, !dbg !4808
  %val11 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral10, i32 0, i32 0, !dbg !4809
  store i32 0, ptr %val11, align 4, !dbg !4809
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %i_gid, i32 0, i32 0, !dbg !4810
  %16 = load i32, ptr %coerce.dive12, align 8, !dbg !4810
  %coerce.dive13 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral10, i32 0, i32 0, !dbg !4810
  %17 = load i32, ptr %coerce.dive13, align 4, !dbg !4810
  %call14 = call zeroext i1 @gid_eq(i32 %16, i32 %17) #17, !dbg !4810
  br i1 %call14, label %if.end19, label %if.then15, !dbg !4811

if.then15:                                        ; preds = %if.end9
  %18 = load ptr, ptr %m.addr, align 8, !dbg !4812
  %19 = load ptr, ptr %root_inode, align 8, !dbg !4813
  %i_gid16 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4, !dbg !4814
  %coerce.dive17 = getelementptr inbounds %struct.kgid_t, ptr %i_gid16, i32 0, i32 0, !dbg !4815
  %20 = load i32, ptr %coerce.dive17, align 8, !dbg !4815
  %call18 = call i32 @from_kgid_munged(ptr noundef @init_user_ns, i32 %20) #17, !dbg !4815
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef @.str.12, i32 noundef %call18) #17, !dbg !4816
  br label %if.end19, !dbg !4816

if.end19:                                         ; preds = %if.then15, %if.end9
  %21 = load ptr, ptr %m.addr, align 8, !dbg !4817
  %22 = load ptr, ptr %sbi, align 8, !dbg !4818
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %22, i32 0, i32 3, !dbg !4819
  %23 = load ptr, ptr %oz_pgrp, align 8, !dbg !4819
  %call20 = call i32 @pid_vnr(ptr noundef %23) #17, !dbg !4820
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.13, i32 noundef %call20) #17, !dbg !4821
  %24 = load ptr, ptr %m.addr, align 8, !dbg !4822
  %25 = load ptr, ptr %sbi, align 8, !dbg !4823
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %25, i32 0, i32 9, !dbg !4824
  %26 = load i64, ptr %exp_timeout, align 8, !dbg !4824
  %div = udiv i64 %26, 1000, !dbg !4825
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef @.str.14, i64 noundef %div) #17, !dbg !4826
  %27 = load ptr, ptr %m.addr, align 8, !dbg !4827
  %28 = load ptr, ptr %sbi, align 8, !dbg !4828
  %min_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %28, i32 0, i32 6, !dbg !4829
  %29 = load i32, ptr %min_proto, align 8, !dbg !4829
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef @.str.15, i32 noundef %29) #17, !dbg !4830
  %30 = load ptr, ptr %m.addr, align 8, !dbg !4831
  %31 = load ptr, ptr %sbi, align 8, !dbg !4832
  %max_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %31, i32 0, i32 7, !dbg !4833
  %32 = load i32, ptr %max_proto, align 4, !dbg !4833
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef @.str.16, i32 noundef %32) #17, !dbg !4834
  %33 = load ptr, ptr %sbi, align 8, !dbg !4835
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %33, i32 0, i32 10, !dbg !4837
  %34 = load i32, ptr %type, align 8, !dbg !4837
  %call21 = call i32 @autofs_type_offset(i32 noundef %34) #17, !dbg !4838
  %tobool22 = icmp ne i32 %call21, 0, !dbg !4838
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !4839

if.then23:                                        ; preds = %if.end19
  %35 = load ptr, ptr %m.addr, align 8, !dbg !4840
  call void @seq_puts(ptr noundef %35, ptr noundef @.str.17) #17, !dbg !4841
  br label %if.end30, !dbg !4841

if.else:                                          ; preds = %if.end19
  %36 = load ptr, ptr %sbi, align 8, !dbg !4842
  %type24 = getelementptr inbounds %struct.autofs_sb_info, ptr %36, i32 0, i32 10, !dbg !4844
  %37 = load i32, ptr %type24, align 8, !dbg !4844
  %call25 = call i32 @autofs_type_direct(i32 noundef %37) #17, !dbg !4845
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4845
  br i1 %tobool26, label %if.then27, label %if.else28, !dbg !4846

if.then27:                                        ; preds = %if.else
  %38 = load ptr, ptr %m.addr, align 8, !dbg !4847
  call void @seq_puts(ptr noundef %38, ptr noundef @.str.18) #17, !dbg !4848
  br label %if.end29, !dbg !4848

if.else28:                                        ; preds = %if.else
  %39 = load ptr, ptr %m.addr, align 8, !dbg !4849
  call void @seq_puts(ptr noundef %39, ptr noundef @.str.19) #17, !dbg !4850
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then23
  %40 = load ptr, ptr %sbi, align 8, !dbg !4851
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %40, i32 0, i32 8, !dbg !4853
  %41 = load i32, ptr %flags, align 8, !dbg !4853
  %and = and i32 %41, 2, !dbg !4854
  %tobool31 = icmp ne i32 %and, 0, !dbg !4854
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4855

if.then32:                                        ; preds = %if.end30
  %42 = load ptr, ptr %m.addr, align 8, !dbg !4856
  call void @seq_puts(ptr noundef %42, ptr noundef @.str.20) #17, !dbg !4857
  br label %if.end33, !dbg !4857

if.end33:                                         ; preds = %if.then32, %if.end30
  %43 = load ptr, ptr %sbi, align 8, !dbg !4858
  %flags34 = getelementptr inbounds %struct.autofs_sb_info, ptr %43, i32 0, i32 8, !dbg !4860
  %44 = load i32, ptr %flags34, align 8, !dbg !4860
  %and35 = and i32 %44, 4, !dbg !4861
  %tobool36 = icmp ne i32 %and35, 0, !dbg !4861
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4862

if.then37:                                        ; preds = %if.end33
  %45 = load ptr, ptr %m.addr, align 8, !dbg !4863
  call void @seq_puts(ptr noundef %45, ptr noundef @.str.21) #17, !dbg !4864
  br label %if.end38, !dbg !4864

if.end38:                                         ; preds = %if.then37, %if.end33
  store i32 0, ptr %retval, align 4, !dbg !4865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4865

cleanup:                                          ; preds = %if.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_inode) #15, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4866
  %46 = load i32, ptr %retval, align 4, !dbg !4866
  ret i32 %46, !dbg !4866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4867 dso_local void @clear_inode(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4868 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !4871 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !4875, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %right, metadata !4876, metadata !DIExpression()), !dbg !4878
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !4879
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !4879
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !4879
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !4880
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !4880
  %call4 = call i32 @__kuid_val(i32 %1) #17, !dbg !4880
  %cmp = icmp eq i32 %call, %call4, !dbg !4881
  ret i1 %cmp, !dbg !4882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !4883 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4887, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4888, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #15, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4889, metadata !DIExpression()), !dbg !4893
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4894
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4895
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4895
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #17, !dbg !4895
  store i32 %call, ptr %uid, align 4, !dbg !4893
  %2 = load i32, ptr %uid, align 4, !dbg !4896
  %cmp = icmp eq i32 %2, -1, !dbg !4898
  br i1 %cmp, label %if.then, label %if.end, !dbg !4899

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !4900
  store i32 %3, ptr %uid, align 4, !dbg !4901
  br label %if.end, !dbg !4902

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !4903
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #15, !dbg !4904
  ret i32 %4, !dbg !4905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !4906 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !4910, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.declare(metadata ptr %right, metadata !4911, metadata !DIExpression()), !dbg !4913
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !4914
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !4914
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !4914
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !4915
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !4915
  %call4 = call i32 @__kgid_val(i32 %1) #17, !dbg !4915
  %cmp = icmp eq i32 %call, %call4, !dbg !4916
  ret i1 %cmp, !dbg !4917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !4918 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4922, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4923, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #15, !dbg !4927
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4924, metadata !DIExpression()), !dbg !4928
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4929
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4930
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4930
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #17, !dbg !4930
  store i32 %call, ptr %gid, align 4, !dbg !4928
  %2 = load i32, ptr %gid, align 4, !dbg !4931
  %cmp = icmp eq i32 %2, -1, !dbg !4933
  br i1 %cmp, label %if.then, label %if.end, !dbg !4934

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !4935
  store i32 %3, ptr %gid, align 4, !dbg !4936
  br label %if.end, !dbg !4937

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #15, !dbg !4939
  ret i32 %4, !dbg !4940
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4941 dso_local i32 @pid_vnr(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_offset(i32 noundef %type) #4 align 16 !dbg !4944 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  %0 = load i32, ptr %type.addr, align 4, !dbg !4948
  %cmp = icmp eq i32 %0, 4, !dbg !4949
  %conv = zext i1 %cmp to i32, !dbg !4949
  ret i32 %conv, !dbg !4950
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4951 dso_local void @seq_puts(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_direct(i32 noundef %type) #4 align 16 !dbg !4954 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  %0 = load i32, ptr %type.addr, align 4, !dbg !4958
  %cmp = icmp eq i32 %0, 2, !dbg !4959
  %conv = zext i1 %cmp to i32, !dbg !4959
  ret i32 %conv, !dbg !4960
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !4961 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4965, metadata !DIExpression()), !dbg !4966
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4967
  %0 = load i32, ptr %val, align 4, !dbg !4967
  ret i32 %0, !dbg !4968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !4969 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4971, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4972, metadata !DIExpression()), !dbg !4974
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4975
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4975
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !4975
  ret i32 %call, !dbg !4976
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #4 align 16 !dbg !4977 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4981, metadata !DIExpression()), !dbg !4982
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4983
  %0 = load i32, ptr %val, align 4, !dbg !4983
  ret i32 %0, !dbg !4984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !4985 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4987, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4988, metadata !DIExpression()), !dbg !4990
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4991
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4991
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !4991
  ret i32 %call, !dbg !4992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4993 dso_local ptr @strsep(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4998 dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5003 dso_local i32 @match_int(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #4 align 16 !dbg !5006 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5010, metadata !DIExpression()), !dbg !5012
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !5011, metadata !DIExpression()), !dbg !5013
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5014
  %0 = load i32, ptr %uid.addr, align 4, !dbg !5014
  store i32 %0, ptr %val, align 4, !dbg !5014
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5015
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5015
  ret i32 %1, !dbg !5015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #4 align 16 !dbg !5016 {
entry:
  ret ptr @init_user_ns, !dbg !5019
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #4 align 16 !dbg !5020 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5024, metadata !DIExpression()), !dbg !5025
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5026
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5026
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !5026
  %cmp = icmp ne i32 %call, -1, !dbg !5027
  ret i1 %cmp, !dbg !5028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #4 align 16 !dbg !5029 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5033, metadata !DIExpression()), !dbg !5035
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !5034, metadata !DIExpression()), !dbg !5036
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5037
  %0 = load i32, ptr %gid.addr, align 4, !dbg !5037
  store i32 %0, ptr %val, align 4, !dbg !5037
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5038
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5038
  ret i32 %1, !dbg !5038
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #4 align 16 !dbg !5039 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5043, metadata !DIExpression()), !dbg !5044
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5045
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5045
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !5045
  %cmp = icmp ne i32 %call, -1, !dbg !5046
  ret i1 %cmp, !dbg !5047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_autofs_type_direct(ptr noundef %type) #4 align 16 !dbg !5048 {
entry:
  %type.addr = alloca ptr, align 8
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = load ptr, ptr %type.addr, align 8, !dbg !5052
  store i32 2, ptr %0, align 4, !dbg !5053
  ret void, !dbg !5054
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_autofs_type_offset(ptr noundef %type) #4 align 16 !dbg !5055 {
entry:
  %type.addr = alloca ptr, align 8
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load ptr, ptr %type.addr, align 8, !dbg !5059
  store i32 4, ptr %0, align 4, !dbg !5060
  ret void, !dbg !5061
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #4 align 16 !dbg !5062 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5068
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5069
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5069
  ret ptr %1, !dbg !5070
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!3443}
!llvm.module.flags = !{!3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!llvm.ident = !{!3686}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 250, type: !1793, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "autofs_fill_super", scope: !3, file: !3, line: 221, type: !4, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3647)
!3 = !DIFile(filename: "fs/autofs/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bb8ec26fad7c4738b9714fb5ccd4ebc")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !151, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !9, line: 1190, size: 10752, elements: !10)
!9 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!10 = !{!11, !18, !26, !28, !30, !35, !1803, !1943, !1983, !2065, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2082, !2086, !2087, !2090, !2093, !2096, !2099, !2100, !2101, !2142, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3384, !3391, !3392, !3393, !3394, !3395, !3410, !3411, !3412, !3413, !3414, !3417, !3418, !3419, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !8, file: !9, line: 1191, baseType: !12, size: 128)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !13, line: 190, size: 128, elements: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !13, line: 191, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !12, file: !13, line: 191, baseType: !16, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !8, file: !9, line: 1192, baseType: !19, size: 32, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !13, line: 21, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !13, line: 18, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !8, file: !9, line: 1193, baseType: !27, size: 8, offset: 160)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !8, file: !9, line: 1194, baseType: !29, size: 64, offset: 192)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !8, file: !9, line: 1195, baseType: !31, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !13, line: 52, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !33, line: 88, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!34 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !8, file: !9, line: 1196, baseType: !36, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !9, line: 2366, size: 576, elements: !38)
!38 = !{!39, !43, !44, !51, !55, !1785, !1789, !1790, !1791, !1792, !1795, !1796, !1797, !1799, !1800, !1801, !1802}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !9, line: 2367, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !37, file: !9, line: 2368, baseType: !6, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !37, file: !9, line: 2376, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!6, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !50, line: 21, flags: DIFlagFwdDecl)
!50 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!51 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !37, file: !9, line: 2377, baseType: !52, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !9, line: 75, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !37, file: !9, line: 2378, baseType: !56, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !36, !6, !40, !151}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !61, line: 82, size: 1536, elements: !62)
!61 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!62 = !{!63, !64, !74, !82, !83, !101, !1692, !1696, !1709, !1768, !1769, !1770, !1771, !1777, !1778, !1779}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !60, file: !61, line: 84, baseType: !25, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !60, file: !61, line: 85, baseType: !65, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !66, line: 275, baseType: !67)
!66 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !66, line: 275, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !67, file: !66, line: 275, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !66, line: 69, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !66, line: 64, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !71, file: !66, line: 65, baseType: !25, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !60, file: !61, line: 86, baseType: !75, size: 128, offset: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !76, line: 38, size: 128, elements: !77)
!76 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!77 = !{!78, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !76, line: 39, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !75, file: !76, line: 39, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !60, file: !61, line: 87, baseType: !59, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !60, file: !61, line: 88, baseType: !84, size: 128, offset: 256)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !61, line: 49, size: 128, elements: !85)
!85 = !{!86, !98}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !61, line: 50, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !61, line: 50, size: 64, elements: !88)
!88 = !{!89, !94}
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !87, file: !61, line: 51, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !61, line: 51, size: 64, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !90, file: !61, line: 52, baseType: !21, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !90, file: !61, line: 52, baseType: !21, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !87, file: !61, line: 54, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !61, line: 56, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !60, file: !61, line: 89, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !9, line: 641, size: 4800, elements: !104)
!104 = !{!105, !108, !109, !117, !118, !125, !126, !129, !130, !1624, !1625, !1626, !1627, !1628, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1672, !1675, !1676, !1677, !1686, !1687, !1688, !1691}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !103, file: !9, line: 642, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !13, line: 24, baseType: !107)
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !103, file: !9, line: 643, baseType: !107, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !103, file: !9, line: 644, baseType: !110, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !111, line: 23, baseType: !112)
!111 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 21, size: 32, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !111, line: 22, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !13, line: 37, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !33, line: 49, baseType: !25)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !103, file: !9, line: 645, baseType: !12, size: 128, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !103, file: !9, line: 646, baseType: !119, size: 32, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !111, line: 28, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 26, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !120, file: !111, line: 27, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !13, line: 38, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !33, line: 50, baseType: !25)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !103, file: !9, line: 647, baseType: !25, size: 32, offset: 224)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !103, file: !9, line: 650, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !9, line: 607, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !103, file: !9, line: 651, baseType: !127, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !103, file: !9, line: 654, baseType: !131, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !9, line: 1966, size: 2048, align: 512, elements: !134)
!134 = !{!135, !139, !153, !160, !166, !171, !175, !179, !183, !187, !191, !192, !196, !200, !1544, !1575, !1579, !1585, !1589, !1593, !1597, !1601, !1605, !1611, !1615}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !133, file: !9, line: 1967, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!59, !102, !59, !25}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !133, file: !9, line: 1968, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!40, !59, !102, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !145, line: 10, size: 128, elements: !146)
!145 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!146 = !{!147, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !144, file: !145, line: 11, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !144, file: !145, line: 12, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !133, file: !9, line: 1969, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!6, !157, !102, !6}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !159, line: 42, flags: DIFlagFwdDecl)
!159 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !133, file: !9, line: 1970, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!127, !102, !6, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 35, baseType: !165)
!165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !133, file: !9, line: 1972, baseType: !167, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!6, !59, !170, !6}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !133, file: !9, line: 1974, baseType: !172, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!6, !157, !102, !59, !106, !164}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !133, file: !9, line: 1976, baseType: !176, size: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!6, !59, !102, !59}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !133, file: !9, line: 1977, baseType: !180, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!6, !102, !59}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !133, file: !9, line: 1978, baseType: !184, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!6, !157, !102, !59, !40}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !133, file: !9, line: 1980, baseType: !188, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!6, !157, !102, !59, !106}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !133, file: !9, line: 1982, baseType: !180, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !133, file: !9, line: 1983, baseType: !193, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!6, !157, !102, !59, !106, !19}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !133, file: !9, line: 1985, baseType: !197, size: 64, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!6, !157, !102, !59, !102, !59, !25}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !133, file: !9, line: 1987, baseType: !201, size: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!6, !157, !59, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !9, line: 226, size: 640, elements: !206)
!206 = !{!207, !208, !209, !219, !228, !229, !238, !239, !240}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !205, file: !9, line: 227, baseType: !25, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !205, file: !9, line: 228, baseType: !106, size: 16, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !9, line: 241, baseType: !210, size: 32, offset: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !9, line: 241, size: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !210, file: !9, line: 242, baseType: !110, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !210, file: !9, line: 243, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !215, line: 16, baseType: !216)
!215 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 14, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !215, line: 15, baseType: !115, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !9, line: 245, baseType: !220, size: 32, offset: 96)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !9, line: 245, size: 32, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !220, file: !9, line: 246, baseType: !119, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !220, file: !9, line: 247, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !215, line: 20, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 18, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !225, file: !215, line: 19, baseType: !123, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !205, file: !9, line: 249, baseType: !31, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !205, file: !9, line: 250, baseType: !230, size: 128, offset: 192)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !231, line: 13, size: 128, elements: !232)
!231 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!232 = !{!233, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !230, file: !231, line: 14, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !231, line: 8, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !24, line: 30, baseType: !34)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !230, file: !231, line: 15, baseType: !237, size: 64, offset: 64)
!237 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !205, file: !9, line: 251, baseType: !230, size: 128, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !205, file: !9, line: 252, baseType: !230, size: 128, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !205, file: !9, line: 259, baseType: !241, size: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !9, line: 994, size: 1856, align: 64, elements: !243)
!243 = !{!244, !263, !302, !304, !312, !325, !326, !327, !409, !616, !625, !638, !639, !1536, !1537, !1538, !1539, !1541, !1542, !1543}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !9, line: 995, baseType: !245, size: 128)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !9, line: 995, size: 128, elements: !246)
!246 = !{!247, !253, !262}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !245, file: !9, line: 996, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !249, line: 60, size: 64, elements: !250)
!249 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !249, line: 61, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !245, file: !9, line: 997, baseType: !254, size: 128, align: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !13, line: 232, size: 128, align: 64, elements: !255)
!255 = !{!256, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !13, line: 233, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !254, file: !13, line: 234, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !257}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !245, file: !9, line: 998, baseType: !25, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !242, file: !9, line: 1005, baseType: !264, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !265, line: 29, baseType: !266)
!265 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !265, line: 17, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !265, line: 18, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !265, line: 18, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !269, file: !265, line: 19, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !273, line: 14, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !272, file: !273, line: 15, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !277, line: 44, baseType: !278)
!277 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !277, line: 14, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 15, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 15, size: 32, elements: !282)
!282 = !{!283, !288, !295}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !281, file: !277, line: 16, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !13, line: 174, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 172, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !13, line: 173, baseType: !6, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !277, line: 24, baseType: !289, size: 16)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !277, line: 24, size: 16, elements: !290)
!290 = !{!291, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !289, file: !277, line: 25, baseType: !292, size: 8)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !27)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !289, file: !277, line: 26, baseType: !292, size: 8, offset: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !277, line: 28, baseType: !296, size: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !277, line: 28, size: 32, elements: !297)
!297 = !{!298, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !296, file: !277, line: 29, baseType: !299, size: 16)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !107)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !296, file: !277, line: 30, baseType: !299, size: 16, offset: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !242, file: !9, line: 1006, baseType: !303, size: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !13, line: 156, baseType: !25)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !242, file: !9, line: 1007, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !306, line: 13, baseType: !307)
!306 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !13, line: 181, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 179, size: 64, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !308, file: !13, line: 180, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !22, line: 22, baseType: !235)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !242, file: !9, line: 1008, baseType: !313, size: 256, offset: 256)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !314, line: 66, size: 256, elements: !315)
!314 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!315 = !{!316, !317, !319, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !313, file: !314, line: 67, baseType: !305, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !313, file: !314, line: 68, baseType: !318, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !273, line: 23, baseType: !272)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !313, file: !314, line: 70, baseType: !320, size: 32, offset: 96)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !321, line: 15, size: 32, elements: !322)
!321 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !320, file: !321, line: 20, baseType: !284, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !313, file: !314, line: 72, baseType: !12, size: 128, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !242, file: !9, line: 1009, baseType: !31, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !242, file: !9, line: 1010, baseType: !25, size: 32, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !242, file: !9, line: 1011, baseType: !328, size: 256, offset: 640)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !9, line: 948, size: 256, elements: !329)
!329 = !{!330, !353, !398, !406, !407, !408}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !328, file: !9, line: 949, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !332, line: 34, baseType: !333)
!332 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 25, size: 64, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !333, file: !332, line: 26, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !337, line: 27, baseType: !338)
!337 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !337, line: 13, size: 64, elements: !339)
!339 = !{!340, !352}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !337, line: 14, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !337, line: 14, size: 32, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !341, file: !337, line: 15, baseType: !284, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !337, line: 16, baseType: !345, size: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !337, line: 16, size: 32, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !345, file: !337, line: 18, baseType: !292, size: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !345, file: !337, line: 19, baseType: !349, size: 24, offset: 8)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 24, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 3)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !338, file: !337, line: 26, baseType: !276, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !328, file: !9, line: 950, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !356, line: 59, size: 768, elements: !357)
!356 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!357 = !{!358, !364, !365, !366, !379, !380, !387, !388}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !355, file: !356, line: 61, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !360, line: 113, baseType: !361)
!360 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !360, line: 111, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !361, file: !360, line: 112, baseType: !284, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !355, file: !356, line: 62, baseType: !25, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !355, file: !356, line: 63, baseType: !264, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !355, file: !356, line: 65, baseType: !367, size: 256, offset: 128)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !377)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !13, line: 194, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !368, file: !13, line: 195, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !13, line: 198, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !13, line: 199, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !372, file: !13, line: 199, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!377 = !{!378}
!378 = !DISubrange(count: 4)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !355, file: !356, line: 66, baseType: !368, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !355, file: !356, line: 68, baseType: !381, size: 192, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !382, line: 41, baseType: !383)
!382 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !382, line: 37, size: 192, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !382, line: 38, baseType: !264, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !383, file: !382, line: 39, baseType: !12, size: 128, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !355, file: !356, line: 69, baseType: !254, size: 128, align: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !355, file: !356, line: 70, baseType: !389, offset: 768)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, elements: !396)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !356, line: 54, size: 128, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !390, file: !356, line: 55, baseType: !6, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !390, file: !356, line: 56, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !356, line: 56, flags: DIFlagFwdDecl)
!396 = !{!397}
!397 = !DISubrange(count: -1)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !328, file: !9, line: 951, baseType: !399, size: 32, offset: 128)
!399 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !356, line: 9, baseType: !25, size: 32, elements: !400)
!400 = !{!401, !402, !403, !404, !405}
!401 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!402 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!403 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!404 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!405 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !328, file: !9, line: 952, baseType: !110, size: 32, offset: 160)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !328, file: !9, line: 952, baseType: !110, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !328, file: !9, line: 953, baseType: !6, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !242, file: !9, line: 1012, baseType: !410, size: 64, offset: 896)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !413, line: 110, size: 1472, elements: !414)
!413 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !430, !431, !432, !433, !434, !435, !561, !562, !563, !564, !565, !596, !599, !603, !611}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !412, file: !413, line: 111, baseType: !305, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !412, file: !413, line: 112, baseType: !110, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !412, file: !413, line: 113, baseType: !119, size: 32, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !412, file: !413, line: 114, baseType: !110, size: 32, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !412, file: !413, line: 115, baseType: !119, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !412, file: !413, line: 116, baseType: !110, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !412, file: !413, line: 117, baseType: !119, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !412, file: !413, line: 118, baseType: !110, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !412, file: !413, line: 119, baseType: !119, size: 32, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !412, file: !413, line: 120, baseType: !25, size: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !412, file: !413, line: 121, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !159, line: 24, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 24, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !159, line: 24, baseType: !95, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !412, file: !413, line: 122, baseType: !426, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !412, file: !413, line: 123, baseType: !426, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !412, file: !413, line: 124, baseType: !426, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !412, file: !413, line: 125, baseType: !426, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !412, file: !413, line: 127, baseType: !27, size: 8, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !412, file: !413, line: 129, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !438, line: 195, size: 1728, elements: !439)
!438 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!439 = !{!440, !441, !446, !458, !467, !470, !471, !476, !477, !478, !479, !482, !483, !484, !486, !487, !525, !546}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !437, file: !438, line: 196, baseType: !359, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !437, file: !438, line: 197, baseType: !442, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !438, line: 28, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 104, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !22, line: 20, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !24, line: 26, baseType: !6)
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 198, baseType: !447, size: 192, offset: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 198, size: 192, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !447, file: !438, line: 199, baseType: !12, size: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !447, file: !438, line: 200, baseType: !451, size: 192, align: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !452, line: 5, size: 192, align: 64, elements: !453)
!452 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!453 = !{!454, !455, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !451, file: !452, line: 6, baseType: !29, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !451, file: !452, line: 7, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !451, file: !452, line: 8, baseType: !456, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !437, file: !438, line: 205, baseType: !459, size: 320, offset: 256)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !460, line: 48, size: 320, elements: !461)
!460 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!461 = !{!462, !463, !464, !465, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !459, file: !460, line: 49, baseType: !305, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !459, file: !460, line: 55, baseType: !305, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !459, file: !460, line: 57, baseType: !320, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !459, file: !460, line: 59, baseType: !318, size: 32, offset: 160)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !459, file: !460, line: 60, baseType: !12, size: 128, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !437, file: !438, line: 206, baseType: !468, size: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !438, line: 206, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !437, file: !438, line: 207, baseType: !151, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 208, baseType: !472, size: 64, offset: 704)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 208, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !472, file: !438, line: 209, baseType: !234, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !472, file: !438, line: 210, baseType: !234, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !437, file: !438, line: 212, baseType: !234, size: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !437, file: !438, line: 213, baseType: !110, size: 32, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !437, file: !438, line: 214, baseType: !119, size: 32, offset: 864)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !437, file: !438, line: 215, baseType: !480, size: 32, offset: 896)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !438, line: 31, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 110, baseType: !21)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !437, file: !438, line: 216, baseType: !107, size: 16, offset: 928)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !437, file: !438, line: 217, baseType: !107, size: 16, offset: 944)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !437, file: !438, line: 221, baseType: !485, size: 16, offset: 960)
!485 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !438, line: 228, baseType: !29, size: 64, offset: 1024)
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 245, baseType: !488, size: 320, offset: 1088)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 245, size: 320, elements: !489)
!489 = !{!490, !517}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !488, file: !438, line: 246, baseType: !491, size: 320)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !438, line: 114, size: 320, elements: !492)
!492 = !{!493, !494, !506, !509, !516}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !491, file: !438, line: 116, baseType: !29, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !438, line: 117, baseType: !495, size: 64, offset: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !438, line: 117, size: 64, elements: !496)
!496 = !{!497, !505}
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !438, line: 118, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !495, file: !438, line: 118, size: 64, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !498, file: !438, line: 120, baseType: !299, size: 16)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !498, file: !438, line: 121, baseType: !502, size: 48, offset: 16)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 48, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 6)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !495, file: !438, line: 127, baseType: !29, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !438, line: 129, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !438, line: 102, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !491, file: !438, line: 130, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !438, line: 108, size: 192, elements: !512)
!512 = !{!513, !514, !515}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !511, file: !438, line: 109, baseType: !254, size: 128, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !511, file: !438, line: 110, baseType: !359, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !511, file: !438, line: 111, baseType: !164, size: 8, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !491, file: !438, line: 131, baseType: !40, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !438, line: 247, baseType: !518, size: 320)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !438, line: 247, size: 320, elements: !519)
!519 = !{!520, !521, !522, !523, !524}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !518, file: !438, line: 248, baseType: !29, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !518, file: !438, line: 249, baseType: !29, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !438, line: 250, baseType: !507, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !518, file: !438, line: 251, baseType: !510, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !518, file: !438, line: 252, baseType: !170, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !438, line: 260, baseType: !526, size: 256, offset: 1408)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !438, line: 260, size: 256, elements: !527)
!527 = !{!528, !534}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !526, file: !438, line: 261, baseType: !529, size: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !438, line: 134, size: 256, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !529, file: !438, line: 135, baseType: !151, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !529, file: !438, line: 136, baseType: !533, size: 256)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !377)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !438, line: 262, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !438, line: 262, size: 256, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !535, file: !438, line: 264, baseType: !12, size: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !535, file: !438, line: 265, baseType: !539, size: 128, offset: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !540, line: 22, size: 128, elements: !541)
!540 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!541 = !{!542, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !539, file: !540, line: 23, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !540, line: 23, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !539, file: !540, line: 24, baseType: !29, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !437, file: !438, line: 280, baseType: !547, size: 64, offset: 1664)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !438, line: 176, size: 192, elements: !549)
!549 = !{!550, !559, !560}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !548, file: !438, line: 177, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !438, line: 171, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!6, !436, !555, !557, !436}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !548, file: !438, line: 178, baseType: !436, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !548, file: !438, line: 179, baseType: !507, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !412, file: !413, line: 130, baseType: !436, size: 64, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !412, file: !413, line: 131, baseType: !436, size: 64, offset: 896)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !412, file: !413, line: 132, baseType: !436, size: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !412, file: !413, line: 135, baseType: !151, size: 64, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !412, file: !413, line: 137, baseType: !566, size: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !568, line: 14, size: 1088, elements: !569)
!568 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!569 = !{!570, !571, !580, !581, !582, !583, !584, !585}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !567, file: !568, line: 15, baseType: !359, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !567, file: !568, line: 17, baseType: !572, size: 320, offset: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !573, line: 22, size: 320, elements: !574)
!573 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!574 = !{!575, !576, !577, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !573, line: 23, baseType: !318, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !573, line: 24, baseType: !311, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !572, file: !573, line: 26, baseType: !12, size: 128, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !572, file: !573, line: 28, baseType: !579, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !567, file: !568, line: 19, baseType: !29, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !567, file: !568, line: 20, baseType: !305, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !567, file: !568, line: 23, baseType: !372, size: 128, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !567, file: !568, line: 24, baseType: !110, size: 32, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !567, file: !568, line: 29, baseType: !305, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !567, file: !568, line: 36, baseType: !586, size: 320, offset: 768)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !587, line: 15, size: 320, elements: !588)
!587 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!588 = !{!589, !590, !591, !592, !593, !594, !595}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !586, file: !587, line: 16, baseType: !318, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !586, file: !587, line: 18, baseType: !6, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !586, file: !587, line: 19, baseType: !6, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !586, file: !587, line: 20, baseType: !6, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !586, file: !587, line: 21, baseType: !6, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !586, file: !587, line: 22, baseType: !29, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !587, line: 23, baseType: !29, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !412, file: !413, line: 138, baseType: !597, size: 64, offset: 1152)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !111, line: 18, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !412, file: !413, line: 139, baseType: !600, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !602, line: 16, flags: DIFlagFwdDecl)
!602 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!603 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !412, file: !413, line: 140, baseType: !604, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !413, line: 25, size: 64, elements: !606)
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !605, file: !413, line: 26, baseType: !284, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !605, file: !413, line: 27, baseType: !6, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !605, file: !413, line: 28, baseType: !610, offset: 64)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !396)
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 142, baseType: !612, size: 128, offset: 1344)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 142, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !612, file: !413, line: 143, baseType: !6, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !612, file: !413, line: 144, baseType: !254, size: 128, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !242, file: !9, line: 1013, baseType: !617, size: 256, offset: 960)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !9, line: 970, size: 256, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !617, file: !9, line: 971, baseType: !29, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !617, file: !9, line: 972, baseType: !25, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !617, file: !9, line: 973, baseType: !25, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !617, file: !9, line: 974, baseType: !25, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !617, file: !9, line: 975, baseType: !25, size: 32, offset: 160)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !617, file: !9, line: 976, baseType: !31, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !242, file: !9, line: 1014, baseType: !626, size: 128, offset: 1216)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !627, line: 8, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!628 = !{!629, !637}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !626, file: !627, line: 9, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !50, line: 70, size: 256, elements: !632)
!632 = !{!633, !634, !635, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !631, file: !50, line: 71, baseType: !59, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !631, file: !50, line: 72, baseType: !7, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !631, file: !50, line: 73, baseType: !6, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !631, file: !50, line: 74, baseType: !157, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !626, file: !627, line: 10, baseType: !59, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !242, file: !9, line: 1015, baseType: !102, size: 64, offset: 1344)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !242, file: !9, line: 1016, baseType: !640, size: 64, offset: 1408)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !9, line: 1914, size: 2112, elements: !643)
!643 = !{!644, !648, !652, !663, !667, !1386, !1387, !1393, !1406, !1414, !1418, !1419, !1423, !1424, !1428, !1433, !1434, !1438, !1442, !1448, !1449, !1453, !1454, !1461, !1465, !1466, !1471, !1475, !1517, !1521, !1525, !1526, !1532}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !9, line: 1915, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !647, line: 196, flags: DIFlagFwdDecl)
!647 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !642, file: !9, line: 1916, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!31, !241, !31, !6}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !642, file: !9, line: 1917, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!656, !241, !170, !659, !662}
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 66, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !33, line: 73, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !33, line: 15, baseType: !237)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 61, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !33, line: 72, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !33, line: 16, baseType: !29)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !642, file: !9, line: 1918, baseType: !664, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!656, !241, !40, !659, !662}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !642, file: !9, line: 1919, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!656, !671, !1312}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !9, line: 373, size: 384, elements: !673)
!673 = !{!674, !675, !676, !680, !681, !682, !683}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !672, file: !9, line: 374, baseType: !241, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !672, file: !9, line: 375, baseType: !31, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !672, file: !9, line: 376, baseType: !677, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !671, !237}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !672, file: !9, line: 377, baseType: !151, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !672, file: !9, line: 378, baseType: !6, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !672, file: !9, line: 379, baseType: !299, size: 16, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !9, line: 380, baseType: !684, size: 64, offset: 320)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !9, line: 380, size: 64, elements: !685)
!685 = !{!686, !1382}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !684, file: !9, line: 386, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !689, line: 998, size: 448, elements: !690)
!689 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!690 = !{!691, !1368, !1369}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !688, file: !689, line: 999, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !694, line: 293, size: 1536, elements: !695)
!694 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!695 = !{!696, !1335, !1349}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !694, line: 295, baseType: !697, size: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !694, line: 295, size: 512, elements: !698)
!698 = !{!699, !1334}
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !694, line: 296, baseType: !700, size: 448)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !694, line: 296, size: 448, elements: !701)
!701 = !{!702, !703, !712, !1322, !1323, !1332, !1333}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !694, line: 298, baseType: !29, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !694, line: 299, baseType: !704, size: 128, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !694, line: 299, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !704, file: !694, line: 300, baseType: !12, size: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !694, line: 302, baseType: !708, size: 128)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !694, line: 302, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !708, file: !694, line: 303, baseType: !151, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !708, file: !694, line: 305, baseType: !25, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !700, file: !694, line: 310, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !9, line: 472, size: 1536, align: 64, elements: !715)
!715 = !{!716, !717, !725, !726, !727, !728, !736, !737, !738, !1314, !1315, !1316, !1319, !1320, !1321}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !714, file: !9, line: 473, baseType: !102, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !714, file: !9, line: 474, baseType: !718, size: 128, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !719, line: 296, size: 128, elements: !720)
!719 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!720 = !{!721, !722, !724}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !718, file: !719, line: 297, baseType: !264, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !718, file: !719, line: 299, baseType: !723, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !13, line: 154, baseType: !25)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !718, file: !719, line: 300, baseType: !151, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !714, file: !9, line: 475, baseType: !459, size: 320, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !714, file: !9, line: 476, baseType: !723, size: 32, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !714, file: !9, line: 477, baseType: !284, size: 32, offset: 544)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !714, file: !9, line: 482, baseType: !729, size: 128, offset: 576)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !452, line: 26, size: 128, elements: !730)
!730 = !{!731, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !729, file: !452, line: 27, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !452, line: 12, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !732, file: !452, line: 13, baseType: !456, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !729, file: !452, line: 28, baseType: !456, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !714, file: !9, line: 483, baseType: !29, size: 64, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !714, file: !9, line: 484, baseType: !29, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !714, file: !9, line: 485, baseType: !739, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !9, line: 404, size: 1280, elements: !742)
!742 = !{!743, !1213, !1217, !1221, !1225, !1241, !1247, !1251, !1256, !1260, !1264, !1268, !1269, !1280, !1284, !1288, !1293, !1297, !1304, !1308}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !741, file: !9, line: 405, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!6, !747, !1211}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !694, line: 74, size: 512, align: 128, elements: !749)
!749 = !{!750, !751, !1205, !1210}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !694, line: 75, baseType: !29, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !694, line: 83, baseType: !752, size: 320, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !694, line: 83, size: 320, elements: !753)
!753 = !{!754, !775, !789, !793, !1204}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !694, line: 84, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !694, line: 84, size: 320, elements: !756)
!756 = !{!757, !768, !769, !774}
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !694, line: 90, baseType: !758, size: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !694, line: 90, size: 128, elements: !759)
!759 = !{!760, !761, !766, !767}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !758, file: !694, line: 91, baseType: !12, size: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !694, line: 94, baseType: !762, size: 128)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !694, line: 94, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !762, file: !694, line: 96, baseType: !151, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !762, file: !694, line: 98, baseType: !25, size: 32, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !758, file: !694, line: 102, baseType: !12, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !758, file: !694, line: 103, baseType: !12, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !755, file: !694, line: 106, baseType: !713, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !694, line: 107, baseType: !770, size: 64, offset: 192)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !694, line: 107, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !770, file: !694, line: 108, baseType: !29, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !770, file: !694, line: 109, baseType: !29, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !694, line: 117, baseType: !29, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !694, line: 119, baseType: !776, size: 320)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !694, line: 119, size: 320, elements: !777)
!777 = !{!778, !779, !782, !783, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !776, file: !694, line: 124, baseType: !29, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !776, file: !694, line: 125, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !694, line: 125, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !776, file: !694, line: 126, baseType: !29, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !776, file: !694, line: 127, baseType: !29, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !694, line: 128, baseType: !785, size: 64, offset: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !694, line: 128, size: 64, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !785, file: !694, line: 133, baseType: !29, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !785, file: !694, line: 138, baseType: !305, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !694, line: 141, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !694, line: 141, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !790, file: !694, line: 142, baseType: !29, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !694, line: 144, baseType: !794, size: 128)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !694, line: 144, size: 128, elements: !795)
!795 = !{!796, !1203}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !794, file: !694, line: 146, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !799, line: 126, size: 1216, elements: !800)
!799 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!800 = !{!801, !811, !832, !843, !851, !852, !853, !1185, !1186, !1187}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !798, file: !799, line: 127, baseType: !802, size: 384)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !799, line: 21, size: 384, elements: !803)
!803 = !{!804, !805, !807, !808, !809, !810}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !802, file: !799, line: 22, baseType: !29, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !802, file: !799, line: 23, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !802, file: !799, line: 24, baseType: !806, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !802, file: !799, line: 25, baseType: !29, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !802, file: !799, line: 26, baseType: !29, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !802, file: !799, line: 27, baseType: !29, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !798, file: !799, line: 128, baseType: !812, size: 128, offset: 384)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !813, line: 105, size: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !812, file: !813, line: 110, baseType: !29, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !812, file: !813, line: 118, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !813, line: 95, size: 448, elements: !819)
!819 = !{!820, !821, !827, !828, !829, !830, !831}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !818, file: !813, line: 96, baseType: !305, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !818, file: !813, line: 97, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !813, line: 60, baseType: !824)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !818, file: !813, line: 98, baseType: !822, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !818, file: !813, line: 99, baseType: !164, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !818, file: !813, line: 100, baseType: !164, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !818, file: !813, line: 101, baseType: !254, size: 128, align: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !818, file: !813, line: 102, baseType: !826, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !798, file: !799, line: 129, baseType: !833, size: 256, offset: 512)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !834, line: 26, size: 256, elements: !835)
!834 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !833, file: !834, line: 27, baseType: !25, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !833, file: !834, line: 28, baseType: !838, size: 192, offset: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !839, line: 43, size: 192, elements: !840)
!839 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !838, file: !839, line: 44, baseType: !318, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !838, file: !839, line: 45, baseType: !12, size: 128, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !799, line: 130, baseType: !844, size: 32, offset: 768)
!844 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !799, line: 68, baseType: !25, size: 32, elements: !845)
!845 = !{!846, !847, !848, !849, !850}
!846 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!847 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!848 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!849 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!850 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 131, baseType: !25, size: 32, offset: 800)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !798, file: !799, line: 132, baseType: !29, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !798, file: !799, line: 133, baseType: !854, size: 64, offset: 896)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !799, line: 77, size: 192, elements: !857)
!857 = !{!858, !862, !1181}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !856, file: !799, line: 83, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !747}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !856, file: !799, line: 89, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !694, line: 1184, baseType: !25)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !869, line: 512, size: 896, elements: !870)
!869 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!870 = !{!871, !1133, !1149, !1156, !1163, !1173, !1174, !1175, !1177, !1179}
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !869, line: 513, baseType: !872, size: 320)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 513, size: 320, elements: !873)
!873 = !{!874, !1129, !1130, !1131, !1132}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !872, file: !869, line: 514, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !694, line: 625, size: 1344, elements: !877)
!877 = !{!878, !887, !1034, !1040, !1047, !1048, !1053, !1054, !1059, !1060, !1063, !1122, !1123, !1124, !1125, !1126, !1127}
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !694, line: 628, baseType: !879, size: 128)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !694, line: 628, size: 128, elements: !880)
!880 = !{!881, !886}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !694, line: 629, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !694, line: 629, size: 128, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !882, file: !694, line: 631, baseType: !29, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !882, file: !694, line: 632, baseType: !29, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !879, file: !694, line: 635, baseType: !254, size: 128, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !876, file: !694, line: 639, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !694, line: 733, size: 10240, elements: !890)
!890 = !{!891, !1032}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !694, line: 734, baseType: !892, size: 10240)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !694, line: 734, size: 10240, elements: !893)
!893 = !{!894, !898, !912, !916, !917, !918, !919, !920, !921, !930, !931, !932, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !971, !973, !976, !1000, !1001, !1002, !1005, !1006, !1007, !1010, !1011, !1012, !1019, !1020}
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !694, line: 739, baseType: !895, size: 512, align: 512)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !694, line: 739, size: 512, align: 512, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !895, file: !694, line: 747, baseType: !284, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !892, file: !694, line: 750, baseType: !899, size: 128, offset: 512)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !900, line: 218, size: 128, elements: !901)
!900 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!901 = !{!902, !910, !911}
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !900, line: 219, baseType: !903, size: 32)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !900, line: 219, size: 32, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !903, file: !900, line: 220, baseType: !264, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !903, file: !900, line: 221, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !900, line: 197, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !900, line: 197, elements: !909)
!909 = !{}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !899, file: !900, line: 223, baseType: !25, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !899, file: !900, line: 224, baseType: !151, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !892, file: !694, line: 752, baseType: !913, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!29, !241, !29, !29, !29, !29}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !892, file: !694, line: 756, baseType: !29, size: 64, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !892, file: !694, line: 757, baseType: !29, size: 64, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !892, file: !694, line: 760, baseType: !29, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !892, file: !694, line: 761, baseType: !29, size: 64, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !892, file: !694, line: 763, baseType: !29, size: 64, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !892, file: !694, line: 764, baseType: !922, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !924, line: 299, baseType: !925)
!924 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 299, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !925, file: !924, line: 299, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !929, line: 18, baseType: !29)
!929 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!930 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !892, file: !694, line: 773, baseType: !284, size: 32, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !892, file: !694, line: 785, baseType: !284, size: 32, offset: 1120)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !892, file: !694, line: 795, baseType: !933, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !694, line: 726, size: 128, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !934, file: !694, line: 727, baseType: !95, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !934, file: !694, line: 728, baseType: !6, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !892, file: !694, line: 801, baseType: !29, size: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !892, file: !694, line: 804, baseType: !305, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !892, file: !694, line: 806, baseType: !6, size: 32, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !892, file: !694, line: 808, baseType: !264, size: 32, offset: 1376)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !892, file: !694, line: 823, baseType: !459, size: 320, offset: 1408)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !892, file: !694, line: 825, baseType: !12, size: 128, offset: 1728)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !892, file: !694, line: 845, baseType: !6, size: 32, offset: 1856)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !892, file: !694, line: 849, baseType: !29, size: 64, offset: 1920)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !892, file: !694, line: 850, baseType: !29, size: 64, offset: 1984)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !892, file: !694, line: 852, baseType: !29, size: 64, offset: 2048)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !892, file: !694, line: 853, baseType: !29, size: 64, offset: 2112)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !892, file: !694, line: 854, baseType: !307, size: 64, offset: 2176)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !892, file: !694, line: 855, baseType: !29, size: 64, offset: 2240)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !892, file: !694, line: 856, baseType: !29, size: 64, offset: 2304)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !892, file: !694, line: 857, baseType: !29, size: 64, offset: 2368)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !892, file: !694, line: 858, baseType: !29, size: 64, offset: 2432)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !892, file: !694, line: 865, baseType: !70, size: 32, offset: 2496)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !892, file: !694, line: 867, baseType: !264, size: 32, offset: 2528)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !892, file: !694, line: 869, baseType: !29, size: 64, offset: 2560)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !892, file: !694, line: 869, baseType: !29, size: 64, offset: 2624)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !892, file: !694, line: 869, baseType: !29, size: 64, offset: 2688)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !892, file: !694, line: 869, baseType: !29, size: 64, offset: 2752)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !892, file: !694, line: 870, baseType: !29, size: 64, offset: 2816)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !892, file: !694, line: 870, baseType: !29, size: 64, offset: 2880)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !892, file: !694, line: 870, baseType: !29, size: 64, offset: 2944)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !892, file: !694, line: 871, baseType: !29, size: 64, offset: 3008)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !892, file: !694, line: 871, baseType: !29, size: 64, offset: 3072)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !892, file: !694, line: 871, baseType: !29, size: 64, offset: 3136)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !892, file: !694, line: 871, baseType: !29, size: 64, offset: 3200)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !892, file: !694, line: 873, baseType: !968, size: 3328, offset: 3264)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 3328, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 52)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !892, file: !694, line: 875, baseType: !972, size: 1280, offset: 6592)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 1280, elements: !377)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !892, file: !694, line: 877, baseType: !974, size: 64, offset: 7872)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !694, line: 877, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !892, file: !694, line: 880, baseType: !977, size: 1088, offset: 7936)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !978, line: 72, baseType: !979)
!978 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !978, line: 23, size: 1088, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !988, !989, !990, !991, !995, !996, !997}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !979, file: !978, line: 28, baseType: !95, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !979, file: !978, line: 38, baseType: !307, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !979, file: !978, line: 40, baseType: !29, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !979, file: !978, line: 43, baseType: !459, size: 320, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !979, file: !978, line: 44, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !978, line: 44, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !978, line: 48, baseType: !29, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !978, line: 59, baseType: !313, size: 256, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !979, file: !978, line: 60, baseType: !151, size: 64, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !979, file: !978, line: 61, baseType: !992, size: 64, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !978, line: 61, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !979, file: !978, line: 63, baseType: !284, size: 32, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !979, file: !978, line: 69, baseType: !299, size: 16, offset: 1056)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !979, file: !978, line: 70, baseType: !998, size: 16, offset: 1072)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !22, line: 18, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !24, line: 23, baseType: !485)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !892, file: !694, line: 882, baseType: !29, size: 64, offset: 9024)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !892, file: !694, line: 885, baseType: !264, size: 32, offset: 9088)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !892, file: !694, line: 886, baseType: !1003, size: 64, offset: 9152)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !694, line: 732, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !892, file: !694, line: 901, baseType: !597, size: 64, offset: 9216)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !892, file: !694, line: 904, baseType: !241, size: 64, offset: 9280)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !892, file: !694, line: 906, baseType: !1008, size: 64, offset: 9344)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !694, line: 906, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !892, file: !694, line: 930, baseType: !284, size: 32, offset: 9408)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !892, file: !694, line: 933, baseType: !284, size: 32, offset: 9440)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !892, file: !694, line: 935, baseType: !1013, size: 64, offset: 9472)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1014, line: 103, size: 64, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1013, file: !1014, line: 104, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1014, line: 101, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !892, file: !694, line: 940, baseType: !305, size: 64, offset: 9536)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !892, file: !694, line: 942, baseType: !1021, size: 256, offset: 9600)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1022, line: 98, size: 256, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1021, file: !1022, line: 99, baseType: !305, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1021, file: !1022, line: 100, baseType: !12, size: 128, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1021, file: !1022, line: 101, baseType: !1027, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1022, line: 21, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !889, file: !694, line: 986, baseType: !1033, offset: 10240)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !396)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !876, file: !694, line: 640, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !924, line: 297, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !924, line: 297, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1036, file: !924, line: 297, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !929, line: 19, baseType: !29)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !694, line: 646, baseType: !1041, size: 64, offset: 256)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !694, line: 646, size: 64, elements: !1042)
!1042 = !{!1043, !1046}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1041, file: !694, line: 647, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !694, line: 542, baseType: !29)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1041, file: !694, line: 648, baseType: !1045, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !876, file: !694, line: 666, baseType: !6, size: 32, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !876, file: !694, line: 667, baseType: !1049, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !694, line: 579, size: 320, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1050, file: !694, line: 580, baseType: !459, size: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !876, file: !694, line: 670, baseType: !164, size: 8, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !876, file: !694, line: 681, baseType: !1055, size: 256, offset: 512)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !694, line: 678, size: 256, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1055, file: !694, line: 679, baseType: !451, size: 192, align: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1055, file: !694, line: 680, baseType: !29, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !876, file: !694, line: 689, baseType: !12, size: 128, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !876, file: !694, line: 691, baseType: !1061, size: 64, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !694, line: 691, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !876, file: !694, line: 694, baseType: !1064, size: 64, offset: 960)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !869, line: 563, size: 1024, elements: !1067)
!1067 = !{!1068, !1072, !1073, !1077, !1081, !1085, !1086, !1090, !1094, !1098, !1099, !1100, !1104, !1108, !1114, !1118}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1066, file: !869, line: 564, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !875}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1066, file: !869, line: 569, baseType: !1069, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1066, file: !869, line: 571, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!6, !875, !29}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1066, file: !869, line: 572, baseType: !1078, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!6, !875}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1066, file: !869, line: 578, baseType: !1082, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!6, !875, !29, !29, !29}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1066, file: !869, line: 580, baseType: !863, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1066, file: !869, line: 581, baseType: !1087, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!866, !867, !25}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1066, file: !869, line: 582, baseType: !1091, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!866, !867, !29, !29}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1066, file: !869, line: 584, baseType: !1095, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!29, !875}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1066, file: !869, line: 588, baseType: !863, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1066, file: !869, line: 591, baseType: !863, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1066, file: !869, line: 597, baseType: !1101, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!6, !875, !29, !151, !6, !6}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1066, file: !869, line: 603, baseType: !1105, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!40, !875}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1066, file: !869, line: 613, baseType: !1109, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!6, !875, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !694, line: 717, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1066, file: !869, line: 625, baseType: !1115, size: 64, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1112, !875, !29}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1066, file: !869, line: 633, baseType: !1119, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!747, !875, !29}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !876, file: !694, line: 697, baseType: !29, size: 64, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !876, file: !694, line: 699, baseType: !241, size: 64, offset: 1088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !876, file: !694, line: 700, baseType: !151, size: 64, offset: 1152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !876, file: !694, line: 711, baseType: !305, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !876, file: !694, line: 717, baseType: !1112, size: 64, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !876, file: !694, line: 722, baseType: !1128, offset: 1344)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !694, line: 570, elements: !909)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !872, file: !869, line: 515, baseType: !723, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !872, file: !869, line: 516, baseType: !29, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !872, file: !869, line: 517, baseType: !29, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !872, file: !869, line: 518, baseType: !29, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !869, line: 520, baseType: !1134, size: 32, offset: 320)
!1134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !694, line: 1325, baseType: !25, size: 32, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1136 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1137 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1138 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1139 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1140 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1141 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1142 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1143 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1144 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1145 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1146 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1147 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1148 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !868, file: !869, line: 522, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !929, line: 22, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !929, line: 22, size: 64, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1152, file: !929, line: 22, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !929, line: 15, baseType: !29)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !868, file: !869, line: 524, baseType: !1157, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !924, line: 372, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 372, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1159, file: !924, line: 372, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !929, line: 16, baseType: !29)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !869, line: 527, baseType: !1164, size: 64, offset: 512)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !869, line: 527, size: 64, elements: !1165)
!1165 = !{!1166, !1172}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1164, file: !869, line: 528, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !929, line: 21, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !929, line: 21, size: 64, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1168, file: !929, line: 21, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !929, line: 14, baseType: !29)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1164, file: !869, line: 529, baseType: !1151, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !868, file: !869, line: 534, baseType: !747, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !868, file: !869, line: 535, baseType: !747, size: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !868, file: !869, line: 541, baseType: !1176, size: 64, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !868, file: !869, line: 545, baseType: !1178, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !868, file: !869, line: 549, baseType: !1180, size: 64, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !924, line: 520, baseType: !747)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !856, file: !799, line: 100, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!6, !797, !29, !29, !6}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !798, file: !799, line: 134, baseType: !151, size: 64, offset: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !798, file: !799, line: 135, baseType: !6, size: 32, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !799, line: 136, baseType: !1188, size: 128, offset: 1088)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !799, line: 136, size: 128, elements: !1189)
!1189 = !{!1190, !1196}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1188, file: !799, line: 137, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1192, line: 6, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1191, file: !1192, line: 7, baseType: !95, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1191, file: !1192, line: 8, baseType: !95, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !799, line: 138, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !799, line: 138, elements: !1198)
!1198 = !{!1199, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1197, file: !799, line: 138, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !799, line: 138, elements: !909)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1197, file: !799, line: 138, baseType: !1202)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, elements: !396)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !794, file: !694, line: 147, baseType: !151, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !752, file: !694, line: 161, baseType: !254, size: 128, align: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !694, line: 164, baseType: !1206, size: 32, offset: 384)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !694, line: 164, size: 32, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1206, file: !694, line: 169, baseType: !284, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1206, file: !694, line: 177, baseType: !25, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !748, file: !694, line: 181, baseType: !284, size: 32, offset: 416)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !9, line: 309, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !741, file: !9, line: 406, baseType: !1214, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!6, !241, !692}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !741, file: !9, line: 409, baseType: !1218, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!6, !713, !1211}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !741, file: !9, line: 412, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!164, !713, !692}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !741, file: !9, line: 414, baseType: !1226, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !689, line: 1276, size: 448, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1236, !1237, !1238, !1239, !1240}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1230, file: !689, line: 1277, baseType: !241, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1230, file: !689, line: 1278, baseType: !713, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1230, file: !689, line: 1279, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1230, file: !689, line: 1281, baseType: !29, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1230, file: !689, line: 1282, baseType: !25, size: 32, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1230, file: !689, line: 1283, baseType: !25, size: 32, offset: 288)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1230, file: !689, line: 1284, baseType: !164, size: 8, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1230, file: !689, line: 1285, baseType: !29, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !741, file: !9, line: 416, baseType: !1242, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!6, !241, !713, !31, !25, !1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !741, file: !9, line: 419, baseType: !1248, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!6, !241, !713, !31, !25, !25, !747, !151}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !741, file: !9, line: 424, baseType: !1252, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1255, !713, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !13, line: 131, baseType: !95)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !741, file: !9, line: 425, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !692, !659, !659}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !741, file: !9, line: 426, baseType: !1261, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!164, !692, !723}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !741, file: !9, line: 427, baseType: !1265, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !692}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !741, file: !9, line: 428, baseType: !668, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !741, file: !9, line: 433, baseType: !1270, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!6, !713, !692, !692, !1273}
!1273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1274, line: 15, baseType: !25, size: 32, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1277 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1278 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1279 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !741, file: !9, line: 435, baseType: !1281, size: 64, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!6, !692}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !741, file: !9, line: 436, baseType: !1285, size: 64, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!164, !692, !659, !659}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !741, file: !9, line: 438, baseType: !1289, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !692, !1292, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !741, file: !9, line: 439, baseType: !1294, size: 64, offset: 1024)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!6, !713, !747}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !741, file: !9, line: 442, baseType: !1298, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!6, !1301, !241, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !9, line: 66, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !741, file: !9, line: 444, baseType: !1305, size: 64, offset: 1152)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !241}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !741, file: !9, line: 445, baseType: !1309, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!6, !671, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !9, line: 69, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !9, line: 486, baseType: !29, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !714, file: !9, line: 487, baseType: !459, size: 320, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !714, file: !9, line: 488, baseType: !1317, size: 32, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1318, line: 8, baseType: !21)
!1318 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !714, file: !9, line: 489, baseType: !264, size: 32, offset: 1312)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !714, file: !9, line: 490, baseType: !12, size: 128, offset: 1344)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !714, file: !9, line: 491, baseType: !151, size: 64, offset: 1472)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !700, file: !694, line: 311, baseType: !29, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !694, line: 312, baseType: !1324, size: 64, offset: 320)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !694, line: 312, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1324, file: !694, line: 313, baseType: !151, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1324, file: !694, line: 314, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !694, line: 257, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !694, line: 255, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1329, file: !694, line: 256, baseType: !29, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !700, file: !694, line: 316, baseType: !284, size: 32, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !700, file: !694, line: 317, baseType: !284, size: 32, offset: 416)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !697, file: !694, line: 323, baseType: !748, size: 512, align: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !694, line: 325, baseType: !1336, size: 512, offset: 512)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !694, line: 325, size: 512, elements: !1337)
!1337 = !{!1338, !1348}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !694, line: 326, baseType: !1339, size: 320)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !694, line: 326, size: 320, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1339, file: !694, line: 327, baseType: !29, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1339, file: !694, line: 328, baseType: !29, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1339, file: !694, line: 329, baseType: !29, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1339, file: !694, line: 331, baseType: !284, size: 32, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1339, file: !694, line: 332, baseType: !284, size: 32, offset: 224)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1339, file: !694, line: 333, baseType: !284, size: 32, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1339, file: !694, line: 335, baseType: !25, size: 32, offset: 288)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1336, file: !694, line: 339, baseType: !748, size: 512, align: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !694, line: 341, baseType: !1350, size: 512, offset: 1024)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !694, line: 341, size: 512, elements: !1351)
!1351 = !{!1352, !1361, !1367}
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !694, line: 342, baseType: !1353, size: 384)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !694, line: 342, size: 384, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1353, file: !694, line: 343, baseType: !29, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1353, file: !694, line: 344, baseType: !29, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1353, file: !694, line: 346, baseType: !151, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1353, file: !694, line: 347, baseType: !151, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1353, file: !694, line: 348, baseType: !151, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1353, file: !694, line: 349, baseType: !151, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !694, line: 352, baseType: !1362, size: 256)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !694, line: 352, size: 256, elements: !1363)
!1363 = !{!1364, !1365, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1362, file: !694, line: 353, baseType: !29, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1362, file: !694, line: 354, baseType: !29, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1362, file: !694, line: 356, baseType: !12, size: 128, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1350, file: !694, line: 359, baseType: !748, size: 512, align: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !688, file: !689, line: 1000, baseType: !6, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !688, file: !689, line: 1001, baseType: !1370, size: 320, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !382, line: 14, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !382, line: 30, size: 320, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1381}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !382, line: 31, baseType: !25, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1371, file: !382, line: 32, baseType: !151, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1371, file: !382, line: 33, baseType: !1376, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !382, line: 16, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!6, !1380, !25, !6, !151}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1371, file: !382, line: 34, baseType: !12, size: 128, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !684, file: !9, line: 395, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!656, !151}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !642, file: !9, line: 1920, baseType: !668, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !642, file: !9, line: 1921, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!6, !671, !1391, !25}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !9, line: 53, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !642, file: !9, line: 1923, baseType: !1394, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!6, !241, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !9, line: 1858, size: 128, elements: !1399)
!1399 = !{!1400, !1405}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1398, file: !9, line: 1859, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !9, line: 1855, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!164, !1397, !40, !6, !31, !95, !25}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1398, file: !9, line: 1860, baseType: !31, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !642, file: !9, line: 1924, baseType: !1407, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1410, !241, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1411, line: 59, baseType: !25)
!1411 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !9, line: 61, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !642, file: !9, line: 1925, baseType: !1415, size: 64, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!237, !241, !25, !29}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !642, file: !9, line: 1926, baseType: !1415, size: 64, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !642, file: !9, line: 1927, baseType: !1420, size: 64, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!6, !241, !875}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !642, file: !9, line: 1928, baseType: !29, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !642, file: !9, line: 1929, baseType: !1425, size: 64, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!6, !102, !241}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !642, file: !9, line: 1930, baseType: !1429, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!6, !241, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !9, line: 1061, baseType: !151)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !642, file: !9, line: 1931, baseType: !1425, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !642, file: !9, line: 1932, baseType: !1435, size: 64, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!6, !241, !31, !31, !6}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !642, file: !9, line: 1933, baseType: !1439, size: 64, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!6, !6, !241, !6}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !642, file: !9, line: 1934, baseType: !1443, size: 64, offset: 1152)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!6, !241, !6, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !9, line: 1063, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !642, file: !9, line: 1935, baseType: !913, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !642, file: !9, line: 1936, baseType: !1450, size: 64, offset: 1280)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!6, !6}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !642, file: !9, line: 1937, baseType: !1443, size: 64, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !642, file: !9, line: 1938, baseType: !1455, size: 64, offset: 1408)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!656, !1458, !241, !662, !659, !25}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1460, line: 59, flags: DIFlagFwdDecl)
!1460 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !642, file: !9, line: 1939, baseType: !1462, size: 64, offset: 1472)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!656, !241, !662, !1458, !659, !25}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !642, file: !9, line: 1940, baseType: !1305, size: 64, offset: 1536)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !642, file: !9, line: 1941, baseType: !1467, size: 64, offset: 1600)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!6, !241, !6, !1470, !1246}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !642, file: !9, line: 1942, baseType: !1472, size: 64, offset: 1664)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!237, !241, !6, !31, !31}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !642, file: !9, line: 1944, baseType: !1476, size: 64, offset: 1728)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !1479, !241}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1481, line: 17, size: 960, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1512, !1513, !1516}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1480, file: !1481, line: 18, baseType: !170, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1480, file: !1481, line: 19, baseType: !659, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1480, file: !1481, line: 20, baseType: !659, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1480, file: !1481, line: 21, baseType: !659, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1480, file: !1481, line: 22, baseType: !659, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1480, file: !1481, line: 23, baseType: !31, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1480, file: !1481, line: 24, baseType: !31, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1480, file: !1481, line: 25, baseType: !313, size: 256, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1480, file: !1481, line: 26, baseType: !1492, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1481, line: 32, size: 256, elements: !1495)
!1495 = !{!1496, !1500, !1504, !1508}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1494, file: !1481, line: 33, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!151, !1479, !662}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1494, file: !1481, line: 34, baseType: !1501, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1479, !151}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1494, file: !1481, line: 35, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!151, !1479, !151, !662}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1494, file: !1481, line: 36, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!6, !1479, !151}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1480, file: !1481, line: 27, baseType: !6, size: 32, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1480, file: !1481, line: 28, baseType: !1514, size: 64, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1480, file: !1481, line: 29, baseType: !151, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !642, file: !9, line: 1948, baseType: !1518, size: 64, offset: 1792)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!656, !241, !31, !241, !31, !659, !25}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !642, file: !9, line: 1950, baseType: !1522, size: 64, offset: 1856)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!31, !241, !31, !241, !31, !31, !25}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !642, file: !9, line: 1953, baseType: !1435, size: 64, offset: 1920)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !642, file: !9, line: 1954, baseType: !1527, size: 64, offset: 1984)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!6, !1530, !25}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !9, line: 1911, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !642, file: !9, line: 1955, baseType: !1533, size: 64, offset: 2048)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!6, !1530, !1391, !25}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !242, file: !9, line: 1018, baseType: !95, size: 64, offset: 1472)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !242, file: !9, line: 1020, baseType: !151, size: 64, offset: 1536)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !242, file: !9, line: 1023, baseType: !151, size: 64, offset: 1600)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !242, file: !9, line: 1027, baseType: !1540, size: 64, offset: 1664)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !242, file: !9, line: 1029, baseType: !713, size: 64, offset: 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !242, file: !9, line: 1030, baseType: !1317, size: 32, offset: 1792)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !242, file: !9, line: 1031, baseType: !1317, size: 32, offset: 1824)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !133, file: !9, line: 1988, baseType: !1545, size: 64, offset: 896)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!6, !157, !1548, !1550, !21, !25}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1552, line: 22, size: 1280, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1551, file: !1552, line: 23, baseType: !21, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1551, file: !1552, line: 24, baseType: !106, size: 16, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1551, file: !1552, line: 25, baseType: !25, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1551, file: !1552, line: 26, baseType: !481, size: 32, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1551, file: !1552, line: 27, baseType: !95, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1551, file: !1552, line: 28, baseType: !95, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1551, file: !1552, line: 41, baseType: !95, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1551, file: !1552, line: 42, baseType: !19, size: 32, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1551, file: !1552, line: 43, baseType: !19, size: 32, offset: 352)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !1552, line: 44, baseType: !110, size: 32, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1551, file: !1552, line: 45, baseType: !119, size: 32, offset: 416)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1551, file: !1552, line: 46, baseType: !31, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1551, file: !1552, line: 47, baseType: !230, size: 128, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1551, file: !1552, line: 48, baseType: !230, size: 128, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1551, file: !1552, line: 49, baseType: !230, size: 128, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1551, file: !1552, line: 50, baseType: !230, size: 128, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1551, file: !1552, line: 51, baseType: !95, size: 64, offset: 1024)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1551, file: !1552, line: 52, baseType: !95, size: 64, offset: 1088)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1551, file: !1552, line: 53, baseType: !21, size: 32, offset: 1152)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1551, file: !1552, line: 54, baseType: !21, size: 32, offset: 1184)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1551, file: !1552, line: 55, baseType: !95, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !133, file: !9, line: 1990, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!656, !59, !170, !659}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !133, file: !9, line: 1991, baseType: !1580, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!6, !102, !1583, !95, !95}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !9, line: 55, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !133, file: !9, line: 1993, baseType: !1586, size: 64, offset: 1088)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!6, !102, !6}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !133, file: !9, line: 1994, baseType: !1590, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!6, !102, !59, !241, !25, !106}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !133, file: !9, line: 1997, baseType: !1594, size: 64, offset: 1216)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!6, !157, !102, !241, !106}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !133, file: !9, line: 1999, baseType: !1598, size: 64, offset: 1280)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!127, !157, !59, !6}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !133, file: !9, line: 2001, baseType: !1602, size: 64, offset: 1344)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!6, !157, !59, !127, !6}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !133, file: !9, line: 2003, baseType: !1606, size: 64, offset: 1408)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!6, !157, !59, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !9, line: 76, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !133, file: !9, line: 2005, baseType: !1612, size: 64, offset: 1472)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!6, !59, !1609}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !133, file: !9, line: 2006, baseType: !1616, size: 64, offset: 1536)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1619, !102}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !9, line: 3192, size: 192, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1620, file: !9, line: 3193, baseType: !718, size: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1620, file: !9, line: 3194, baseType: !21, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !103, file: !9, line: 655, baseType: !7, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !103, file: !9, line: 656, baseType: !713, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !103, file: !9, line: 659, baseType: !151, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !103, file: !9, line: 663, baseType: !29, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !9, line: 671, baseType: !1629, size: 32, offset: 704)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !9, line: 671, size: 32, elements: !1630)
!1630 = !{!1631, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1629, file: !9, line: 672, baseType: !1632, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1629, file: !9, line: 673, baseType: !25, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !103, file: !9, line: 675, baseType: !19, size: 32, offset: 736)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !103, file: !9, line: 676, baseType: !31, size: 64, offset: 768)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !103, file: !9, line: 677, baseType: !230, size: 128, offset: 832)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !103, file: !9, line: 678, baseType: !230, size: 128, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !103, file: !9, line: 679, baseType: !230, size: 128, offset: 1088)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !103, file: !9, line: 680, baseType: !264, size: 32, offset: 1216)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !103, file: !9, line: 681, baseType: !107, size: 16, offset: 1248)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !103, file: !9, line: 682, baseType: !292, size: 8, offset: 1264)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !103, file: !9, line: 683, baseType: !292, size: 8, offset: 1272)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !103, file: !9, line: 684, baseType: !1644, size: 64, offset: 1280)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !13, line: 132, baseType: !95)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !103, file: !9, line: 691, baseType: !29, size: 64, offset: 1344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !103, file: !9, line: 692, baseType: !459, size: 320, offset: 1408)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !103, file: !9, line: 694, baseType: !29, size: 64, offset: 1728)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !103, file: !9, line: 695, baseType: !29, size: 64, offset: 1792)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !103, file: !9, line: 697, baseType: !372, size: 128, offset: 1856)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !103, file: !9, line: 698, baseType: !12, size: 128, offset: 1984)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !103, file: !9, line: 707, baseType: !12, size: 128, offset: 2112)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !103, file: !9, line: 708, baseType: !12, size: 128, offset: 2240)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !9, line: 709, baseType: !1654, size: 128, offset: 2368)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !9, line: 709, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1654, file: !9, line: 710, baseType: !368, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1654, file: !9, line: 711, baseType: !254, size: 128, align: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !103, file: !9, line: 713, baseType: !307, size: 64, offset: 2496)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !103, file: !9, line: 714, baseType: !307, size: 64, offset: 2560)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !103, file: !9, line: 715, baseType: !284, size: 32, offset: 2624)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !103, file: !9, line: 716, baseType: !284, size: 32, offset: 2656)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !103, file: !9, line: 717, baseType: !284, size: 32, offset: 2688)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !103, file: !9, line: 719, baseType: !284, size: 32, offset: 2720)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !9, line: 721, baseType: !1665, size: 64, offset: 2752)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !9, line: 721, size: 64, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1665, file: !9, line: 722, baseType: !640, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1665, file: !9, line: 723, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !102}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !103, file: !9, line: 725, baseType: !1673, size: 64, offset: 2816)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !9, line: 725, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !103, file: !9, line: 726, baseType: !714, size: 1536, align: 64, offset: 2880)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !103, file: !9, line: 727, baseType: !12, size: 128, offset: 4416)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !9, line: 728, baseType: !1678, size: 64, offset: 4544)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !9, line: 728, size: 64, elements: !1679)
!1679 = !{!1680, !1681, !1684, !1685}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1678, file: !9, line: 729, baseType: !1458, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1678, file: !9, line: 730, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !9, line: 730, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1678, file: !9, line: 731, baseType: !170, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1678, file: !9, line: 732, baseType: !25, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !103, file: !9, line: 735, baseType: !23, size: 32, offset: 4608)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !103, file: !9, line: 738, baseType: !23, size: 32, offset: 4640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !103, file: !9, line: 739, baseType: !1689, size: 64, offset: 4672)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !9, line: 634, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !103, file: !9, line: 750, baseType: !151, size: 64, offset: 4736)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !60, file: !61, line: 91, baseType: !1693, size: 256, offset: 448)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !60, file: !61, line: 94, baseType: !1697, size: 64, offset: 704)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1698, line: 25, size: 64, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1698, line: 26, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !1698, line: 26, size: 64, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1701, file: !1698, line: 28, baseType: !96, size: 64, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !1698, line: 30, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !1698, line: 30, size: 64, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !1698, line: 31, baseType: !264, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1705, file: !1698, line: 32, baseType: !6, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !60, file: !61, line: 95, baseType: !1710, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !61, line: 128, size: 1024, align: 512, elements: !1713)
!1713 = !{!1714, !1718, !1719, !1726, !1732, !1736, !1740, !1744, !1745, !1749, !1753, !1758, !1762}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1712, file: !61, line: 129, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!6, !59, !25}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1712, file: !61, line: 130, baseType: !1715, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1712, file: !61, line: 131, baseType: !1720, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!6, !1723, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1712, file: !61, line: 132, baseType: !1727, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!6, !1723, !25, !40, !1730}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1712, file: !61, line: 134, baseType: !1733, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!6, !1723}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1712, file: !61, line: 135, baseType: !1737, size: 64, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!6, !59}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1712, file: !61, line: 136, baseType: !1741, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !59}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1712, file: !61, line: 137, baseType: !1741, size: 64, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1712, file: !61, line: 138, baseType: !1746, size: 64, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !59, !102}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1712, file: !61, line: 139, baseType: !1750, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!170, !59, !170, !6}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1712, file: !61, line: 140, baseType: !1754, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!630, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1712, file: !61, line: 141, baseType: !1759, size: 64, offset: 704)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!6, !1548, !164}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1712, file: !61, line: 142, baseType: !1763, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!59, !59, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !60, file: !61, line: 96, baseType: !7, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !60, file: !61, line: 97, baseType: !29, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !60, file: !61, line: 98, baseType: !151, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !61, line: 100, baseType: !1772, size: 128, offset: 1024)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !61, line: 100, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1772, file: !61, line: 101, baseType: !12, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1772, file: !61, line: 102, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !60, file: !61, line: 104, baseType: !12, size: 128, offset: 1152)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !60, file: !61, line: 105, baseType: !12, size: 128, offset: 1280)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !60, file: !61, line: 113, baseType: !1780, size: 128, offset: 1408)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !61, line: 109, size: 128, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1780, file: !61, line: 110, baseType: !372, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1780, file: !61, line: 111, baseType: !75, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1780, file: !61, line: 112, baseType: !254, size: 128, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !37, file: !9, line: 2380, baseType: !1786, size: 64, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !7}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !37, file: !9, line: 2381, baseType: !645, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !9, line: 2382, baseType: !36, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !37, file: !9, line: 2383, baseType: !368, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !37, file: !9, line: 2385, baseType: !1793, offset: 576)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1794, line: 206, elements: !909)
!1794 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !37, file: !9, line: 2386, baseType: !1793, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !37, file: !9, line: 2387, baseType: !1793, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !37, file: !9, line: 2388, baseType: !1798, offset: 576)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1793, elements: !350)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !37, file: !9, line: 2390, baseType: !1793, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !37, file: !9, line: 2391, baseType: !1793, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !37, file: !9, line: 2392, baseType: !1793, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !37, file: !9, line: 2393, baseType: !1793, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !8, file: !9, line: 1197, baseType: !1804, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !9, line: 2057, size: 1664, elements: !1807)
!1807 = !{!1808, !1812, !1813, !1814, !1818, !1822, !1826, !1827, !1828, !1832, !1840, !1844, !1845, !1846, !1852, !1857, !1858, !1862, !1863, !1864, !1865, !1869, !1873, !1926, !1941, !1942}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1806, file: !9, line: 2058, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!102, !7}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1806, file: !9, line: 2059, baseType: !1669, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1806, file: !9, line: 2060, baseType: !1669, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1806, file: !9, line: 2062, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !102, !6}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1806, file: !9, line: 2063, baseType: !1819, size: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!6, !102, !1211}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1806, file: !9, line: 2064, baseType: !1823, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!6, !102}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1806, file: !9, line: 2065, baseType: !1669, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1806, file: !9, line: 2066, baseType: !1786, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1806, file: !9, line: 2067, baseType: !1829, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!6, !7, !6}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1806, file: !9, line: 2068, baseType: !1833, size: 64, offset: 576)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!6, !7, !1836}
!1836 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !9, line: 2052, baseType: !25, size: 32, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!1839 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1806, file: !9, line: 2069, baseType: !1841, size: 64, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!6, !7}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1806, file: !9, line: 2070, baseType: !1833, size: 64, offset: 704)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1806, file: !9, line: 2071, baseType: !1841, size: 64, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1806, file: !9, line: 2072, baseType: !1847, size: 64, offset: 832)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!6, !59, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !9, line: 62, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1806, file: !9, line: 2073, baseType: !1853, size: 64, offset: 896)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!6, !7, !1856, !170}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1806, file: !9, line: 2074, baseType: !1786, size: 64, offset: 960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1806, file: !9, line: 2076, baseType: !1859, size: 64, offset: 1024)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!6, !1479, !59}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1806, file: !9, line: 2077, baseType: !1859, size: 64, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1806, file: !9, line: 2078, baseType: !1859, size: 64, offset: 1152)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1806, file: !9, line: 2079, baseType: !1859, size: 64, offset: 1216)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1806, file: !9, line: 2081, baseType: !1866, size: 64, offset: 1280)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!656, !7, !6, !170, !659, !31}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1806, file: !9, line: 2082, baseType: !1870, size: 64, offset: 1344)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!656, !7, !6, !40, !659, !31}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1806, file: !9, line: 2083, baseType: !1874, size: 64, offset: 1408)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1877, !102}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !1880, line: 296, size: 1664, elements: !1881)
!1880 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1911, !1912, !1913}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1879, file: !1880, line: 297, baseType: !372, size: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1879, file: !1880, line: 298, baseType: !12, size: 128, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1879, file: !1880, line: 299, baseType: !12, size: 128, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1879, file: !1880, line: 300, baseType: !12, size: 128, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1879, file: !1880, line: 301, baseType: !313, size: 256, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1879, file: !1880, line: 302, baseType: !264, size: 32, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1879, file: !1880, line: 303, baseType: !284, size: 32, offset: 800)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1879, file: !1880, line: 304, baseType: !7, size: 64, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1879, file: !1880, line: 305, baseType: !1891, size: 64, offset: 896)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !1880, line: 68, size: 64, elements: !1892)
!1892 = !{!1893, !1905}
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1880, line: 69, baseType: !1894, size: 32)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1880, line: 69, size: 32, elements: !1895)
!1895 = !{!1896, !1897, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1894, file: !1880, line: 70, baseType: !110, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1894, file: !1880, line: 71, baseType: !119, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1894, file: !1880, line: 72, baseType: !1899, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1900, line: 24, baseType: !1901)
!1900 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1900, line: 22, size: 32, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1901, file: !1900, line: 23, baseType: !1904, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1900, line: 20, baseType: !116)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1891, file: !1880, line: 74, baseType: !1906, size: 32, offset: 32)
!1906 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !1880, line: 54, baseType: !25, size: 32, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIEnumerator(name: "USRQUOTA", value: 0)
!1909 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!1910 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1879, file: !1880, line: 306, baseType: !31, size: 64, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1879, file: !1880, line: 307, baseType: !29, size: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1879, file: !1880, line: 308, baseType: !1914, size: 576, offset: 1088)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !1880, line: 205, size: 576, elements: !1915)
!1915 = !{!1916, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1914, file: !1880, line: 206, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !1880, line: 66, baseType: !34)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1914, file: !1880, line: 207, baseType: !1917, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1914, file: !1880, line: 208, baseType: !1917, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1914, file: !1880, line: 209, baseType: !1917, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1914, file: !1880, line: 210, baseType: !1917, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1914, file: !1880, line: 211, baseType: !1917, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1914, file: !1880, line: 212, baseType: !1917, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1914, file: !1880, line: 213, baseType: !234, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1914, file: !1880, line: 214, baseType: !234, size: 64, offset: 512)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1806, file: !9, line: 2085, baseType: !1927, size: 64, offset: 1472)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!237, !7, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1932, line: 15, size: 256, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1933 = !{!1934, !1935, !1936, !1937, !1938}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1931, file: !1932, line: 16, baseType: !723, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1931, file: !1932, line: 19, baseType: !6, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1931, file: !1932, line: 26, baseType: !29, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1931, file: !1932, line: 33, baseType: !29, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1931, file: !1932, line: 36, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1932, line: 36, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1806, file: !9, line: 2087, baseType: !1927, size: 64, offset: 1536)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1806, file: !9, line: 2089, baseType: !1786, size: 64, offset: 1600)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !8, file: !9, line: 1198, baseType: !1944, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !1880, line: 324, size: 704, elements: !1947)
!1947 = !{!1948, !1952, !1956, !1960, !1961, !1962, !1963, !1964, !1969, !1974, !1978}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1946, file: !1880, line: 325, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!6, !1878}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1946, file: !1880, line: 326, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1878, !7, !6}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1946, file: !1880, line: 327, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1878}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1946, file: !1880, line: 328, baseType: !1949, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1946, file: !1880, line: 329, baseType: !1949, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1946, file: !1880, line: 330, baseType: !1949, size: 64, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1946, file: !1880, line: 331, baseType: !1829, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1946, file: !1880, line: 334, baseType: !1965, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1968, !102}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1946, file: !1880, line: 335, baseType: !1970, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!6, !102, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1946, file: !1880, line: 337, baseType: !1975, size: 64, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!6, !102, !1968}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1946, file: !1880, line: 339, baseType: !1979, size: 64, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!6, !7, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !8, file: !9, line: 1199, baseType: !1984, size: 64, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !1880, line: 430, size: 704, elements: !1987)
!1987 = !{!1988, !1992, !1993, !1997, !1998, !1999, !2014, !2037, !2041, !2042, !2064}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1986, file: !1880, line: 431, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!6, !7, !6, !6, !1548}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1986, file: !1880, line: 432, baseType: !1829, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1986, file: !1880, line: 433, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!6, !7, !25}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1986, file: !1880, line: 434, baseType: !1994, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1986, file: !1880, line: 435, baseType: !1829, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1986, file: !1880, line: 436, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!6, !7, !6, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !1880, line: 417, size: 256, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2004, file: !1880, line: 418, baseType: !6, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2004, file: !1880, line: 419, baseType: !25, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2004, file: !1880, line: 420, baseType: !25, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2004, file: !1880, line: 422, baseType: !25, size: 32, offset: 96)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2004, file: !1880, line: 423, baseType: !25, size: 32, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2004, file: !1880, line: 424, baseType: !25, size: 32, offset: 160)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2004, file: !1880, line: 425, baseType: !25, size: 32, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2004, file: !1880, line: 426, baseType: !25, size: 32, offset: 224)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1986, file: !1880, line: 437, baseType: !2015, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!6, !7, !1891, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !1880, line: 345, size: 960, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2019, file: !1880, line: 346, baseType: !6, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2019, file: !1880, line: 347, baseType: !95, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2019, file: !1880, line: 348, baseType: !95, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2019, file: !1880, line: 349, baseType: !95, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2019, file: !1880, line: 350, baseType: !95, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2019, file: !1880, line: 351, baseType: !95, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2019, file: !1880, line: 352, baseType: !95, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2019, file: !1880, line: 353, baseType: !311, size: 64, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2019, file: !1880, line: 355, baseType: !311, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2019, file: !1880, line: 356, baseType: !6, size: 32, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2019, file: !1880, line: 357, baseType: !6, size: 32, offset: 608)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2019, file: !1880, line: 358, baseType: !95, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2019, file: !1880, line: 359, baseType: !95, size: 64, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2019, file: !1880, line: 360, baseType: !95, size: 64, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2019, file: !1880, line: 361, baseType: !311, size: 64, offset: 832)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2019, file: !1880, line: 362, baseType: !6, size: 32, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1986, file: !1880, line: 438, baseType: !2038, size: 64, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!6, !7, !1982, !2018}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1986, file: !1880, line: 440, baseType: !2015, size: 64, offset: 512)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1986, file: !1880, line: 441, baseType: !2043, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!6, !7, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !1880, line: 411, size: 1408, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2047, file: !1880, line: 412, baseType: !25, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2047, file: !1880, line: 413, baseType: !2051, size: 1344, offset: 64)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 1344, elements: !350)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !1880, line: 397, size: 448, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !1880, line: 398, baseType: !25, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2052, file: !1880, line: 399, baseType: !25, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2052, file: !1880, line: 401, baseType: !25, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2052, file: !1880, line: 402, baseType: !25, size: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2052, file: !1880, line: 403, baseType: !25, size: 32, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2052, file: !1880, line: 404, baseType: !25, size: 32, offset: 160)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2052, file: !1880, line: 405, baseType: !25, size: 32, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2052, file: !1880, line: 406, baseType: !97, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2052, file: !1880, line: 407, baseType: !1644, size: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2052, file: !1880, line: 408, baseType: !1644, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1986, file: !1880, line: 442, baseType: !1994, size: 64, offset: 640)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !8, file: !9, line: 1200, baseType: !2066, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !9, line: 54, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !8, file: !9, line: 1201, baseType: !29, size: 64, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !8, file: !9, line: 1202, baseType: !29, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !8, file: !9, line: 1203, baseType: !29, size: 64, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !8, file: !9, line: 1204, baseType: !59, size: 64, offset: 832)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !8, file: !9, line: 1205, baseType: !459, size: 320, offset: 896)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !8, file: !9, line: 1206, baseType: !6, size: 32, offset: 1216)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !8, file: !9, line: 1207, baseType: !284, size: 32, offset: 1248)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !8, file: !9, line: 1209, baseType: !151, size: 64, offset: 1280)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !8, file: !9, line: 1211, baseType: !2078, size: 64, offset: 1344)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !9, line: 1211, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !8, file: !9, line: 1223, baseType: !2083, size: 64, offset: 1408)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !76, line: 34, size: 64, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2083, file: !76, line: 35, baseType: !79, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !8, file: !9, line: 1224, baseType: !12, size: 128, offset: 1472)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !8, file: !9, line: 1225, baseType: !2088, size: 64, offset: 1600)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !9, line: 1225, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !8, file: !9, line: 1226, baseType: !2091, size: 64, offset: 1664)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !9, line: 1226, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !8, file: !9, line: 1227, baseType: !2094, size: 64, offset: 1728)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !9, line: 50, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !8, file: !9, line: 1228, baseType: !2097, size: 64, offset: 1792)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !9, line: 1228, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !8, file: !9, line: 1229, baseType: !372, size: 128, offset: 1856)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !8, file: !9, line: 1230, baseType: !25, size: 32, offset: 1984)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !8, file: !9, line: 1231, baseType: !2102, size: 2496, offset: 2048)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !1880, line: 521, size: 2496, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2108, !2140}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2102, file: !1880, line: 522, baseType: !25, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2102, file: !1880, line: 523, baseType: !459, size: 320, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2102, file: !1880, line: 524, baseType: !2107, size: 192, offset: 384)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 192, elements: !350)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2102, file: !1880, line: 525, baseType: !2109, size: 1728, offset: 576)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2110, size: 1728, elements: !350)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !1880, line: 222, size: 576, elements: !2111)
!2111 = !{!2112, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2110, file: !1880, line: 223, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !1880, line: 445, size: 256, elements: !2115)
!2115 = !{!2116, !2117, !2130, !2131}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2114, file: !1880, line: 446, baseType: !6, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2114, file: !1880, line: 447, baseType: !2118, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !1880, line: 312, size: 512, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2120, file: !1880, line: 313, baseType: !1829, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2120, file: !1880, line: 314, baseType: !1829, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2120, file: !1880, line: 315, baseType: !1829, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2120, file: !1880, line: 316, baseType: !1829, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2120, file: !1880, line: 317, baseType: !1949, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2120, file: !1880, line: 318, baseType: !1949, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2120, file: !1880, line: 319, baseType: !1949, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2120, file: !1880, line: 320, baseType: !1979, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2114, file: !1880, line: 448, baseType: !645, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2114, file: !1880, line: 449, baseType: !2113, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2110, file: !1880, line: 224, baseType: !6, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2110, file: !1880, line: 226, baseType: !12, size: 128, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2110, file: !1880, line: 227, baseType: !29, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2110, file: !1880, line: 228, baseType: !25, size: 32, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2110, file: !1880, line: 229, baseType: !25, size: 32, offset: 352)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2110, file: !1880, line: 230, baseType: !1917, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2110, file: !1880, line: 231, baseType: !1917, size: 64, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2110, file: !1880, line: 232, baseType: !151, size: 64, offset: 512)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2102, file: !1880, line: 526, baseType: !2141, size: 192, offset: 2304)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2118, size: 192, elements: !350)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !8, file: !9, line: 1233, baseType: !2143, size: 2368, offset: 4544)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !9, line: 1184, size: 2368, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2143, file: !9, line: 1185, baseType: !107, size: 16)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2143, file: !9, line: 1186, baseType: !107, size: 16, offset: 16)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2143, file: !9, line: 1187, baseType: !2148, size: 2304, offset: 64)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2149, size: 2304, elements: !350)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2150, line: 12, size: 768, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2151 = !{!2152, !2160, !2162, !3374, !3375}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2149, file: !2150, line: 13, baseType: !2153, size: 384)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2154, line: 17, size: 384, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2153, file: !2154, line: 18, baseType: !6, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2153, file: !2154, line: 19, baseType: !6, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2153, file: !2154, line: 20, baseType: !381, size: 192, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2153, file: !2154, line: 22, baseType: !254, size: 128, align: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2149, file: !2150, line: 14, baseType: !2161, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2149, file: !2150, line: 15, baseType: !2163, size: 64, offset: 448)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2164, line: 16, size: 64, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2163, file: !2164, line: 17, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1460, line: 746, size: 58368, elements: !2169)
!2169 = !{!2170, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2250, !2261, !2354, !2358, !2361, !2392, !2393, !2394, !2395, !2406, !2408, !2409, !2410, !2411, !2412, !2413, !2424, !2425, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2442, !2443, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2537, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2552, !2553, !2554, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2586, !2592, !2593, !2594, !2595, !2596, !2600, !2603, !2610, !2615, !2618, !2621, !2624, !2627, !2767, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2809, !2810, !2811, !2820, !2828, !2829, !2830, !2831, !2832, !2837, !2838, !2839, !2842, !2843, !2846, !2849, !2852, !2860, !2863, !2864, !2950, !2951, !2952, !2953, !2954, !2960, !2961, !2962, !2963, !2966, !2967, !2970, !2973, !2974, !2977, !2978, !2979, !2982, !2983, !2984, !2985, !2986, !2987, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3019, !3020, !3026, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3038, !3116, !3118, !3119, !3120, !3121, !3122, !3134, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3151, !3152, !3153}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2168, file: !1460, line: 752, baseType: !2171, size: 192)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2172, line: 56, size: 192, elements: !2173)
!2172 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2173 = !{!2174, !2175, !2176, !2177}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2171, file: !2172, line: 57, baseType: !29, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2171, file: !2172, line: 58, baseType: !29, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2171, file: !2172, line: 59, baseType: !21, size: 32, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2171, file: !2172, line: 61, baseType: !21, size: 32, offset: 160)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2168, file: !1460, line: 754, baseType: !25, size: 32, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2168, file: !1460, line: 767, baseType: !151, size: 64, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2168, file: !1460, line: 768, baseType: !359, size: 32, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2168, file: !1460, line: 770, baseType: !25, size: 32, offset: 352)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2168, file: !1460, line: 771, baseType: !25, size: 32, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2168, file: !1460, line: 774, baseType: !6, size: 32, offset: 416)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2168, file: !1460, line: 775, baseType: !2185, size: 128, offset: 448)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2186, line: 58, size: 128, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2187 = !{!2188, !2189, !2194, !2195}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2185, file: !2186, line: 59, baseType: !248, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !2186, line: 60, baseType: !2190, size: 32, offset: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !2186, line: 60, size: 32, elements: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2190, file: !2186, line: 61, baseType: !25, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2190, file: !2186, line: 62, baseType: !284, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2185, file: !2186, line: 65, baseType: !299, size: 16, offset: 96)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2185, file: !2186, line: 65, baseType: !299, size: 16, offset: 112)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2168, file: !1460, line: 776, baseType: !25, size: 32, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2168, file: !1460, line: 777, baseType: !29, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2168, file: !1460, line: 778, baseType: !2167, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2168, file: !1460, line: 787, baseType: !6, size: 32, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2168, file: !1460, line: 788, baseType: !6, size: 32, offset: 800)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2168, file: !1460, line: 790, baseType: !6, size: 32, offset: 832)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2168, file: !1460, line: 792, baseType: !6, size: 32, offset: 864)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2168, file: !1460, line: 793, baseType: !6, size: 32, offset: 896)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2168, file: !1460, line: 794, baseType: !6, size: 32, offset: 928)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2168, file: !1460, line: 795, baseType: !25, size: 32, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2168, file: !1460, line: 797, baseType: !2207, size: 2048, offset: 1024)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1460, line: 551, size: 2048, elements: !2208)
!2208 = !{!2209, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2229, !2232, !2233, !2234}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2207, file: !1460, line: 553, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1460, line: 411, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2210, file: !1460, line: 412, baseType: !29, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2210, file: !1460, line: 413, baseType: !21, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2207, file: !1460, line: 554, baseType: !451, size: 192, align: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2207, file: !1460, line: 555, baseType: !95, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2207, file: !1460, line: 556, baseType: !95, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2207, file: !1460, line: 558, baseType: !12, size: 128, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2207, file: !1460, line: 559, baseType: !25, size: 32, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2207, file: !1460, line: 561, baseType: !95, size: 64, offset: 640)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2207, file: !1460, line: 562, baseType: !95, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2207, file: !1460, line: 563, baseType: !95, size: 64, offset: 768)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2207, file: !1460, line: 564, baseType: !95, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2207, file: !1460, line: 565, baseType: !311, size: 64, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2207, file: !1460, line: 566, baseType: !95, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2207, file: !1460, line: 568, baseType: !95, size: 64, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2207, file: !1460, line: 571, baseType: !6, size: 32, offset: 1088)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2207, file: !1460, line: 572, baseType: !2228, size: 64, offset: 1152)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2207, file: !1460, line: 574, baseType: !2230, size: 64, offset: 1216)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1460, line: 49, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2207, file: !1460, line: 576, baseType: !2230, size: 64, offset: 1280)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2207, file: !1460, line: 578, baseType: !29, size: 64, offset: 1344)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2207, file: !1460, line: 588, baseType: !2235, size: 512, align: 512, offset: 1536)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1460, line: 497, size: 512, align: 512, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2235, file: !1460, line: 498, baseType: !95, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2235, file: !1460, line: 499, baseType: !95, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2235, file: !1460, line: 500, baseType: !95, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2235, file: !1460, line: 501, baseType: !21, size: 32, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2235, file: !1460, line: 502, baseType: !21, size: 32, offset: 224)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2235, file: !1460, line: 503, baseType: !29, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2235, file: !1460, line: 504, baseType: !29, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2235, file: !1460, line: 505, baseType: !29, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2235, file: !1460, line: 506, baseType: !2246, size: 64, align: 64, offset: 448)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1460, line: 445, size: 64, align: 64, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2246, file: !1460, line: 446, baseType: !25, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2246, file: !1460, line: 447, baseType: !25, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2168, file: !1460, line: 798, baseType: !2251, size: 384, offset: 3072)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1460, line: 592, size: 384, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2251, file: !1460, line: 593, baseType: !12, size: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2251, file: !1460, line: 594, baseType: !29, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2251, file: !1460, line: 595, baseType: !29, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2251, file: !1460, line: 596, baseType: !25, size: 32, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2251, file: !1460, line: 597, baseType: !107, size: 16, offset: 288)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2251, file: !1460, line: 598, baseType: !107, size: 16, offset: 304)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2251, file: !1460, line: 600, baseType: !2260, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2168, file: !1460, line: 799, baseType: !2262, size: 1792, offset: 3456)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1460, line: 610, size: 1792, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2351, !2352}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2262, file: !1460, line: 611, baseType: !451, size: 192, align: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2262, file: !1460, line: 618, baseType: !95, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2262, file: !1460, line: 619, baseType: !95, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2262, file: !1460, line: 620, baseType: !95, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2262, file: !1460, line: 621, baseType: !95, size: 64, offset: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2262, file: !1460, line: 622, baseType: !95, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2262, file: !1460, line: 629, baseType: !311, size: 64, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2262, file: !1460, line: 630, baseType: !95, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2262, file: !1460, line: 631, baseType: !25, size: 32, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2262, file: !1460, line: 653, baseType: !25, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2262, file: !1460, line: 654, baseType: !25, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2262, file: !1460, line: 655, baseType: !25, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2262, file: !1460, line: 656, baseType: !25, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2262, file: !1460, line: 662, baseType: !2278, size: 512, offset: 704)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2279, line: 118, size: 512, elements: !2280)
!2279 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2280 = !{!2281, !2289, !2290, !2299, !2347, !2348, !2349, !2350}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2278, file: !2279, line: 119, baseType: !2282, size: 256)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2283, line: 9, size: 256, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2282, file: !2283, line: 10, baseType: !451, size: 192, align: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2282, file: !2283, line: 11, baseType: !2287, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2288, line: 29, baseType: !311)
!2288 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2278, file: !2279, line: 120, baseType: !2287, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2278, file: !2279, line: 121, baseType: !2291, size: 64, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2294, !2298}
!2294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2279, line: 65, baseType: !25, size: 32, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2297 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2278, file: !2279, line: 122, baseType: !2300, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2279, line: 159, size: 512, align: 512, elements: !2302)
!2302 = !{!2303, !2328, !2329, !2332, !2337, !2338, !2342, !2346}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2301, file: !2279, line: 160, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2279, line: 215, size: 4608, align: 512, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2305, file: !2279, line: 216, baseType: !318, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2305, file: !2279, line: 217, baseType: !25, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2305, file: !2279, line: 218, baseType: !25, size: 32, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2305, file: !2279, line: 219, baseType: !25, size: 32, offset: 96)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2305, file: !2279, line: 220, baseType: !25, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2305, file: !2279, line: 221, baseType: !25, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2305, file: !2279, line: 222, baseType: !25, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2305, file: !2279, line: 223, baseType: !25, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2305, file: !2279, line: 224, baseType: !25, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2305, file: !2279, line: 226, baseType: !25, size: 32, offset: 160)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2305, file: !2279, line: 227, baseType: !107, size: 16, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2305, file: !2279, line: 228, baseType: !107, size: 16, offset: 208)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2305, file: !2279, line: 229, baseType: !25, size: 32, offset: 224)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2305, file: !2279, line: 235, baseType: !2287, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2305, file: !2279, line: 236, baseType: !2298, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2305, file: !2279, line: 237, baseType: !2287, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2305, file: !2279, line: 238, baseType: !2298, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2305, file: !2279, line: 239, baseType: !2325, size: 4096, align: 512, offset: 512)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, size: 4096, align: 512, elements: !2326)
!2326 = !{!2327}
!2327 = !DISubrange(count: 8)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2301, file: !2279, line: 161, baseType: !25, size: 32, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2301, file: !2279, line: 162, baseType: !2330, size: 32, offset: 96)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !13, line: 32, baseType: !2331)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !33, line: 96, baseType: !6)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2301, file: !2279, line: 163, baseType: !2333, size: 32, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !66, line: 274, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !66, line: 274, size: 32, elements: !2335)
!2335 = !{!2336}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2334, file: !66, line: 274, baseType: !70, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2301, file: !2279, line: 164, baseType: !2298, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2301, file: !2279, line: 165, baseType: !2339, size: 128, offset: 256)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2283, line: 14, size: 128, elements: !2340)
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2339, file: !2283, line: 15, baseType: !729, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2301, file: !2279, line: 166, baseType: !2343, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!2287}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2301, file: !2279, line: 167, baseType: !2287, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2278, file: !2279, line: 123, baseType: !292, size: 8, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2278, file: !2279, line: 124, baseType: !292, size: 8, offset: 456)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2278, file: !2279, line: 125, baseType: !292, size: 8, offset: 464)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2278, file: !2279, line: 126, baseType: !292, size: 8, offset: 472)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2262, file: !1460, line: 671, baseType: !2278, size: 512, offset: 1216)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2262, file: !1460, line: 679, baseType: !2353, size: 64, offset: 1728)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2168, file: !1460, line: 800, baseType: !2355, size: 64, offset: 5248)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1460, line: 800, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2168, file: !1460, line: 809, baseType: !2359, size: 64, offset: 5312)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1460, line: 70, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2168, file: !1460, line: 825, baseType: !2362, size: 2048, align: 512, offset: 5632)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1460, line: 509, size: 2048, align: 512, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2362, file: !1460, line: 511, baseType: !95, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2362, file: !1460, line: 512, baseType: !95, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2362, file: !1460, line: 513, baseType: !95, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2362, file: !1460, line: 514, baseType: !95, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2362, file: !1460, line: 515, baseType: !95, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2362, file: !1460, line: 516, baseType: !95, size: 64, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2362, file: !1460, line: 518, baseType: !95, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2362, file: !1460, line: 519, baseType: !95, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2362, file: !1460, line: 520, baseType: !311, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2362, file: !1460, line: 522, baseType: !95, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2362, file: !1460, line: 523, baseType: !95, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2362, file: !1460, line: 524, baseType: !311, size: 64, offset: 704)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2362, file: !1460, line: 526, baseType: !311, size: 64, offset: 768)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2362, file: !1460, line: 527, baseType: !95, size: 64, offset: 832)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2362, file: !1460, line: 529, baseType: !95, size: 64, offset: 896)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2362, file: !1460, line: 530, baseType: !95, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2362, file: !1460, line: 531, baseType: !95, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2362, file: !1460, line: 532, baseType: !95, size: 64, offset: 1088)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2362, file: !1460, line: 533, baseType: !95, size: 64, offset: 1152)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2362, file: !1460, line: 535, baseType: !95, size: 64, offset: 1216)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2362, file: !1460, line: 536, baseType: !95, size: 64, offset: 1280)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2362, file: !1460, line: 537, baseType: !95, size: 64, offset: 1344)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2362, file: !1460, line: 538, baseType: !95, size: 64, offset: 1408)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2362, file: !1460, line: 539, baseType: !95, size: 64, offset: 1472)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2362, file: !1460, line: 540, baseType: !95, size: 64, offset: 1536)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2362, file: !1460, line: 541, baseType: !95, size: 64, offset: 1600)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2362, file: !1460, line: 542, baseType: !95, size: 64, offset: 1664)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2362, file: !1460, line: 543, baseType: !95, size: 64, offset: 1728)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2168, file: !1460, line: 833, baseType: !25, size: 32, offset: 7680)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2168, file: !1460, line: 836, baseType: !25, size: 32, offset: 7712)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2168, file: !1460, line: 837, baseType: !6, size: 32, offset: 7744)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2168, file: !1460, line: 838, baseType: !2396, size: 64, offset: 7808)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2399, line: 19, baseType: !2400)
!2399 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2399, line: 19, size: 64, elements: !2401)
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2400, file: !2399, line: 19, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !2404)
!2404 = !{!2405}
!2405 = !DISubrange(count: 1)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2168, file: !1460, line: 839, baseType: !2407, size: 64, offset: 7872)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2168, file: !1460, line: 840, baseType: !2398, size: 64, offset: 7936)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2168, file: !1460, line: 841, baseType: !151, size: 64, offset: 8000)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2168, file: !1460, line: 843, baseType: !107, size: 16, offset: 8064)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2168, file: !1460, line: 845, baseType: !107, size: 16, offset: 8080)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2168, file: !1460, line: 848, baseType: !6, size: 32, offset: 8096)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2168, file: !1460, line: 849, baseType: !2414, size: 32, offset: 8128)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1460, line: 718, size: 32, elements: !2415)
!2415 = !{!2416, !2423}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2414, file: !1460, line: 724, baseType: !2417, size: 32)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2414, file: !1460, line: 719, size: 32, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2417, file: !1460, line: 720, baseType: !292, size: 8)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2417, file: !1460, line: 721, baseType: !292, size: 8, offset: 8)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2417, file: !1460, line: 722, baseType: !292, size: 8, offset: 16)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2417, file: !1460, line: 723, baseType: !292, size: 8, offset: 24)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2414, file: !1460, line: 725, baseType: !21, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2168, file: !1460, line: 850, baseType: !12, size: 128, offset: 8192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2168, file: !1460, line: 851, baseType: !2426, size: 64, offset: 8320)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1460, line: 60, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2168, file: !1460, line: 855, baseType: !29, size: 64, offset: 8384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2168, file: !1460, line: 856, baseType: !292, size: 8, offset: 8448)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2168, file: !1460, line: 857, baseType: !292, size: 8, offset: 8456)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2168, file: !1460, line: 858, baseType: !6, size: 32, offset: 8480)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2168, file: !1460, line: 859, baseType: !12, size: 128, offset: 8512)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2168, file: !1460, line: 860, baseType: !6, size: 32, offset: 8640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2168, file: !1460, line: 861, baseType: !12, size: 128, offset: 8704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2168, file: !1460, line: 873, baseType: !2436, size: 256, offset: 8832)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1460, line: 376, size: 256, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2436, file: !1460, line: 381, baseType: !29, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2436, file: !1460, line: 384, baseType: !97, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2436, file: !1460, line: 389, baseType: !97, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2436, file: !1460, line: 392, baseType: !97, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2168, file: !1460, line: 875, baseType: !12, size: 128, offset: 9088)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2168, file: !1460, line: 877, baseType: !2444, size: 320, offset: 9216)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2445, line: 86, size: 320, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2446 = !{!2447, !2448, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2444, file: !2445, line: 87, baseType: !6, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2444, file: !2445, line: 88, baseType: !12, size: 128, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2444, file: !2445, line: 89, baseType: !12, size: 128, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2168, file: !1460, line: 878, baseType: !451, size: 192, align: 64, offset: 9536)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2168, file: !1460, line: 881, baseType: !888, size: 64, offset: 9728)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2168, file: !1460, line: 882, baseType: !888, size: 64, offset: 9792)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2168, file: !1460, line: 884, baseType: !6, size: 32, offset: 9856)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2168, file: !1460, line: 885, baseType: !6, size: 32, offset: 9888)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2168, file: !1460, line: 886, baseType: !6, size: 32, offset: 9920)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2168, file: !1460, line: 888, baseType: !6, size: 32, offset: 9952)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2168, file: !1460, line: 890, baseType: !29, size: 64, offset: 9984)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2168, file: !1460, line: 893, baseType: !25, size: 32, offset: 10048)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2168, file: !1460, line: 896, baseType: !25, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2168, file: !1460, line: 897, baseType: !25, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2168, file: !1460, line: 898, baseType: !25, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2168, file: !1460, line: 899, baseType: !25, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2168, file: !1460, line: 919, baseType: !25, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2168, file: !1460, line: 922, baseType: !25, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2168, file: !1460, line: 923, baseType: !25, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2168, file: !1460, line: 925, baseType: !25, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2168, file: !1460, line: 939, baseType: !25, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2168, file: !1460, line: 941, baseType: !25, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2168, file: !1460, line: 944, baseType: !25, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2168, file: !1460, line: 956, baseType: !25, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2168, file: !1460, line: 962, baseType: !25, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2168, file: !1460, line: 966, baseType: !25, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2168, file: !1460, line: 969, baseType: !29, size: 64, offset: 10176)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2168, file: !1460, line: 971, baseType: !2475, size: 448, offset: 10240)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2476, line: 25, size: 448, elements: !2477)
!2476 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2477 = !{!2478, !2479, !2484}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2475, file: !2476, line: 26, baseType: !29, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2475, file: !2476, line: 27, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!237, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2475, file: !2476, line: 28, baseType: !2485, size: 320, offset: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2475, file: !2476, line: 28, size: 320, elements: !2486)
!2486 = !{!2487, !2497, !2527}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2485, file: !2476, line: 37, baseType: !2488, size: 320)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2485, file: !2476, line: 30, size: 320, elements: !2489)
!2489 = !{!2490, !2492, !2493, !2494, !2495, !2496}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2488, file: !2476, line: 31, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2488, file: !2476, line: 32, baseType: !21, size: 32, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2488, file: !2476, line: 33, baseType: !21, size: 32, offset: 96)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2488, file: !2476, line: 34, baseType: !21, size: 32, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2488, file: !2476, line: 35, baseType: !95, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2488, file: !2476, line: 36, baseType: !2491, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2485, file: !2476, line: 47, baseType: !2498, size: 192)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2485, file: !2476, line: 39, size: 192, elements: !2499)
!2499 = !{!2500, !2501, !2507, !2526}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2498, file: !2476, line: 40, baseType: !2330, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2498, file: !2476, line: 41, baseType: !2502, size: 32, offset: 32)
!2502 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2476, line: 16, baseType: !25, size: 32, elements: !2503)
!2503 = !{!2504, !2505, !2506}
!2504 = !DIEnumerator(name: "TT_NONE", value: 0)
!2505 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2506 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2498, file: !2476, line: 42, baseType: !2508, size: 64, offset: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2498, file: !2476, line: 42, size: 64, elements: !2509)
!2509 = !{!2510, !2518}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2508, file: !2476, line: 43, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2513, line: 7, size: 128, elements: !2514)
!2513 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2514 = !{!2515, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2512, file: !2513, line: 8, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !33, line: 93, baseType: !34)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2512, file: !2513, line: 9, baseType: !34, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2508, file: !2476, line: 44, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2521, line: 7, size: 64, elements: !2522)
!2521 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2522 = !{!2523, !2525}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2520, file: !2521, line: 8, baseType: !2524, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2521, line: 5, baseType: !444)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2520, file: !2521, line: 9, baseType: !444, size: 32, offset: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2498, file: !2476, line: 46, baseType: !95, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2485, file: !2476, line: 55, baseType: !2528, size: 256)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2485, file: !2476, line: 49, size: 256, elements: !2529)
!2529 = !{!2530, !2533, !2534, !2535, !2536}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2528, file: !2476, line: 50, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2476, line: 14, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2528, file: !2476, line: 51, baseType: !6, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2528, file: !2476, line: 52, baseType: !6, size: 32, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2528, file: !2476, line: 53, baseType: !29, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2528, file: !2476, line: 54, baseType: !29, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2168, file: !1460, line: 973, baseType: !2538, size: 32, offset: 10688)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !13, line: 27, baseType: !2539)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !33, line: 28, baseType: !6)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2168, file: !1460, line: 974, baseType: !2538, size: 32, offset: 10720)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2168, file: !1460, line: 978, baseType: !29, size: 64, offset: 10752)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2168, file: !1460, line: 987, baseType: !2167, size: 64, offset: 10816)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2168, file: !1460, line: 990, baseType: !2167, size: 64, offset: 10880)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2168, file: !1460, line: 995, baseType: !12, size: 128, offset: 10944)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2168, file: !1460, line: 996, baseType: !12, size: 128, offset: 11072)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2168, file: !1460, line: 997, baseType: !2167, size: 64, offset: 11200)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2168, file: !1460, line: 1005, baseType: !12, size: 128, offset: 11264)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2168, file: !1460, line: 1006, baseType: !12, size: 128, offset: 11392)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2168, file: !1460, line: 1009, baseType: !354, size: 64, offset: 11520)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2168, file: !1460, line: 1010, baseType: !2551, size: 512, offset: 11584)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 512, elements: !377)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2168, file: !1460, line: 1011, baseType: !12, size: 128, offset: 12096)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2168, file: !1460, line: 1012, baseType: !12, size: 128, offset: 12224)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2168, file: !1460, line: 1014, baseType: !2555, size: 64, offset: 12352)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2168, file: !1460, line: 1017, baseType: !1856, size: 64, offset: 12416)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2168, file: !1460, line: 1020, baseType: !1856, size: 64, offset: 12480)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2168, file: !1460, line: 1023, baseType: !151, size: 64, offset: 12544)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2168, file: !1460, line: 1025, baseType: !95, size: 64, offset: 12608)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2168, file: !1460, line: 1026, baseType: !95, size: 64, offset: 12672)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2168, file: !1460, line: 1031, baseType: !95, size: 64, offset: 12736)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2168, file: !1460, line: 1032, baseType: !2563, size: 192, offset: 12800)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1460, line: 324, size: 192, elements: !2564)
!2564 = !{!2565, !2566, !2567}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2563, file: !1460, line: 326, baseType: !95, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2563, file: !1460, line: 327, baseType: !95, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2563, file: !1460, line: 328, baseType: !318, size: 32, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2168, file: !1460, line: 1041, baseType: !29, size: 64, offset: 12992)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2168, file: !1460, line: 1042, baseType: !29, size: 64, offset: 13056)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2168, file: !1460, line: 1045, baseType: !95, size: 64, offset: 13120)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2168, file: !1460, line: 1048, baseType: !95, size: 64, offset: 13184)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2168, file: !1460, line: 1051, baseType: !29, size: 64, offset: 13248)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2168, file: !1460, line: 1052, baseType: !29, size: 64, offset: 13312)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2168, file: !1460, line: 1055, baseType: !2575, size: 640, offset: 13376)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2576, line: 132, size: 640, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2577 = !{!2578, !2584, !2585}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2575, file: !2576, line: 133, baseType: !2579, size: 576)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2580, size: 576, elements: !350)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2576, line: 117, size: 192, elements: !2581)
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2580, file: !2576, line: 118, baseType: !95, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2580, file: !2576, line: 119, baseType: !2339, size: 128, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2575, file: !2576, line: 134, baseType: !25, size: 32, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2575, file: !2576, line: 135, baseType: !25, size: 32, offset: 608)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2168, file: !1460, line: 1058, baseType: !2587, size: 448, offset: 14016)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2576, line: 144, size: 448, elements: !2588)
!2588 = !{!2589, !2590, !2591}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2587, file: !2576, line: 145, baseType: !254, size: 128, align: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2587, file: !2576, line: 146, baseType: !313, size: 256, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2587, file: !2576, line: 147, baseType: !25, size: 32, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2168, file: !1460, line: 1064, baseType: !410, size: 64, offset: 14464)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2168, file: !1460, line: 1067, baseType: !410, size: 64, offset: 14528)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2168, file: !1460, line: 1070, baseType: !410, size: 64, offset: 14592)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2168, file: !1460, line: 1074, baseType: !436, size: 64, offset: 14656)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2168, file: !1460, line: 1084, baseType: !2597, size: 128, offset: 14720)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !2598)
!2598 = !{!2599}
!2599 = !DISubrange(count: 16)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2168, file: !1460, line: 1086, baseType: !2601, size: 64, offset: 14848)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1460, line: 55, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2168, file: !1460, line: 1089, baseType: !2604, size: 64, offset: 14912)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2605, line: 12, size: 64, elements: !2606)
!2605 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2606 = !{!2607}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2604, file: !2605, line: 13, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2605, line: 8, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2168, file: !1460, line: 1090, baseType: !2611, size: 128, offset: 14976)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2612, line: 13, size: 128, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2613 = !{!2614}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2611, file: !2612, line: 14, baseType: !12, size: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2168, file: !1460, line: 1097, baseType: !2616, size: 64, offset: 15104)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1460, line: 50, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2168, file: !1460, line: 1100, baseType: !2619, size: 64, offset: 15168)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1460, line: 1100, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2168, file: !1460, line: 1103, baseType: !2622, size: 64, offset: 15232)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1460, line: 53, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2168, file: !1460, line: 1107, baseType: !2625, size: 64, offset: 15296)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1460, line: 56, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2168, file: !1460, line: 1110, baseType: !2628, size: 64, offset: 15360)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2630, line: 93, size: 8768, elements: !2631)
!2630 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2681, !2690, !2691, !2693, !2694, !2695, !2698, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2736, !2737, !2744, !2754, !2757, !2758, !2761, !2762, !2763, !2764, !2765, !2766}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2629, file: !2630, line: 94, baseType: !359, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2629, file: !2630, line: 95, baseType: !284, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2629, file: !2630, line: 96, baseType: !6, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2629, file: !2630, line: 97, baseType: !6, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2629, file: !2630, line: 98, baseType: !12, size: 128, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2629, file: !2630, line: 100, baseType: !381, size: 192, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2629, file: !2630, line: 103, baseType: !2167, size: 64, offset: 448)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2629, file: !2630, line: 106, baseType: !2640, size: 192, offset: 512)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !602, line: 32, size: 192, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2640, file: !602, line: 33, baseType: !12, size: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2640, file: !602, line: 34, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2645, line: 25, baseType: !2646)
!2645 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2645, line: 23, size: 64, elements: !2647)
!2647 = !{!2648}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2646, file: !2645, line: 24, baseType: !2403, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2629, file: !2630, line: 109, baseType: !368, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2629, file: !2630, line: 112, baseType: !6, size: 32, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2629, file: !2630, line: 114, baseType: !6, size: 32, offset: 800)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2629, file: !2630, line: 115, baseType: !2167, size: 64, offset: 832)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2629, file: !2630, line: 118, baseType: !6, size: 32, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !2630, line: 119, baseType: !25, size: 32, offset: 928)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2629, file: !2630, line: 121, baseType: !2656, size: 64, offset: 960)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2630, line: 80, size: 448, elements: !2658)
!2658 = !{!2659, !2660, !2666}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2657, file: !2630, line: 81, baseType: !284, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2657, file: !2630, line: 82, baseType: !2661, size: 128, offset: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2630, line: 75, size: 128, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2661, file: !2630, line: 76, baseType: !2167, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2661, file: !2630, line: 77, baseType: !2665, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2657, file: !2630, line: 83, baseType: !833, size: 256, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2629, file: !2630, line: 132, baseType: !25, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2629, file: !2630, line: 133, baseType: !25, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2629, file: !2630, line: 138, baseType: !25, size: 32, offset: 1056)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2629, file: !2630, line: 139, baseType: !12, size: 128, offset: 1088)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2629, file: !2630, line: 142, baseType: !2278, size: 512, offset: 1216)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2629, file: !2630, line: 143, baseType: !2287, size: 64, offset: 1728)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2629, file: !2630, line: 150, baseType: !2674, size: 256, offset: 1792)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2675, size: 256, elements: !2679)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2630, line: 38, size: 128, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2675, file: !2630, line: 39, baseType: !95, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2675, file: !2630, line: 40, baseType: !95, size: 64, offset: 64)
!2679 = !{!2680}
!2680 = !DISubrange(count: 2)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2629, file: !2630, line: 156, baseType: !2682, size: 192, offset: 2048)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2630, line: 66, size: 192, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2682, file: !2630, line: 67, baseType: !2685, size: 192)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2630, line: 47, size: 192, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2685, file: !2630, line: 48, baseType: !307, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2685, file: !2630, line: 49, baseType: !307, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2685, file: !2630, line: 50, baseType: !307, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2629, file: !2630, line: 160, baseType: !2575, size: 640, offset: 2240)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2629, file: !2630, line: 163, baseType: !2692, size: 256, offset: 2880)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 256, elements: !377)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2629, file: !2630, line: 169, baseType: !354, size: 64, offset: 3136)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2629, file: !2630, line: 172, baseType: !6, size: 32, offset: 3200)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2629, file: !2630, line: 174, baseType: !2696, size: 64, offset: 3264)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2630, line: 174, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2629, file: !2630, line: 185, baseType: !2699, size: 64, offset: 3328)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !66, line: 860, baseType: !2700)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 853, size: 64, elements: !2701)
!2701 = !{!2702, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2700, file: !66, line: 858, baseType: !65, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2700, file: !66, line: 859, baseType: !264, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2629, file: !2630, line: 186, baseType: !95, size: 64, offset: 3392)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2629, file: !2630, line: 186, baseType: !95, size: 64, offset: 3456)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2629, file: !2630, line: 186, baseType: !95, size: 64, offset: 3520)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2629, file: !2630, line: 186, baseType: !95, size: 64, offset: 3584)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2629, file: !2630, line: 187, baseType: !95, size: 64, offset: 3648)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2629, file: !2630, line: 188, baseType: !95, size: 64, offset: 3712)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2629, file: !2630, line: 189, baseType: !2563, size: 192, offset: 3776)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2629, file: !2630, line: 190, baseType: !29, size: 64, offset: 3968)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2629, file: !2630, line: 190, baseType: !29, size: 64, offset: 4032)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2629, file: !2630, line: 190, baseType: !29, size: 64, offset: 4096)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2629, file: !2630, line: 190, baseType: !29, size: 64, offset: 4160)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2629, file: !2630, line: 191, baseType: !29, size: 64, offset: 4224)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2629, file: !2630, line: 191, baseType: !29, size: 64, offset: 4288)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2629, file: !2630, line: 191, baseType: !29, size: 64, offset: 4352)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2629, file: !2630, line: 191, baseType: !29, size: 64, offset: 4416)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2629, file: !2630, line: 192, baseType: !29, size: 64, offset: 4480)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2629, file: !2630, line: 192, baseType: !29, size: 64, offset: 4544)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2629, file: !2630, line: 192, baseType: !29, size: 64, offset: 4608)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2629, file: !2630, line: 192, baseType: !29, size: 64, offset: 4672)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2629, file: !2630, line: 193, baseType: !29, size: 64, offset: 4736)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2629, file: !2630, line: 193, baseType: !29, size: 64, offset: 4800)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2629, file: !2630, line: 194, baseType: !2726, size: 448, offset: 4864)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2727, line: 12, size: 448, elements: !2728)
!2727 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2726, file: !2727, line: 15, baseType: !95, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2726, file: !2727, line: 17, baseType: !95, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2726, file: !2727, line: 19, baseType: !95, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2726, file: !2727, line: 21, baseType: !95, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2726, file: !2727, line: 29, baseType: !95, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2726, file: !2727, line: 35, baseType: !95, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2726, file: !2727, line: 44, baseType: !95, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2629, file: !2630, line: 202, baseType: !97, size: 64, offset: 5312)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2629, file: !2630, line: 213, baseType: !2738, size: 2048, offset: 5376)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2739, size: 2048, elements: !2598)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2740, line: 43, size: 128, elements: !2741)
!2740 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2739, file: !2740, line: 44, baseType: !661, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2739, file: !2740, line: 45, baseType: !661, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2629, file: !2630, line: 216, baseType: !2745, size: 448, offset: 7424)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2630, line: 30, size: 448, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2745, file: !2630, line: 31, baseType: !6, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2745, file: !2630, line: 32, baseType: !237, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2745, file: !2630, line: 33, baseType: !29, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2745, file: !2630, line: 34, baseType: !95, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2745, file: !2630, line: 34, baseType: !95, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2745, file: !2630, line: 35, baseType: !29, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2745, file: !2630, line: 35, baseType: !29, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2629, file: !2630, line: 219, baseType: !2755, size: 64, offset: 7872)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2630, line: 219, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2629, file: !2630, line: 222, baseType: !25, size: 32, offset: 7936)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2629, file: !2630, line: 223, baseType: !2759, size: 64, offset: 8000)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2630, line: 223, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2629, file: !2630, line: 230, baseType: !164, size: 8, offset: 8064)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2629, file: !2630, line: 231, baseType: !485, size: 16, offset: 8080)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2629, file: !2630, line: 232, baseType: !485, size: 16, offset: 8096)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2629, file: !2630, line: 234, baseType: !888, size: 64, offset: 8128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2629, file: !2630, line: 237, baseType: !313, size: 256, offset: 8192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2629, file: !2630, line: 243, baseType: !459, size: 320, offset: 8448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2168, file: !1460, line: 1111, baseType: !2768, size: 64, offset: 15424)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2630, line: 20, size: 16640, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2769, file: !2630, line: 21, baseType: !264, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2769, file: !2630, line: 22, baseType: !359, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2769, file: !2630, line: 23, baseType: !381, size: 192, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2769, file: !2630, line: 24, baseType: !2775, size: 16384, offset: 256)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2776, size: 16384, elements: !2796)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !602, line: 51, size: 256, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2776, file: !602, line: 52, baseType: !2779, size: 256)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !602, line: 37, size: 256, elements: !2780)
!2780 = !{!2781, !2788, !2789, !2795}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2779, file: !602, line: 39, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2783, line: 83, baseType: !2784)
!2783 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2783, line: 82, baseType: !2786)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !6}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2779, file: !602, line: 40, baseType: !29, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2779, file: !602, line: 46, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2783, line: 86, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2783, line: 85, baseType: !2793)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2779, file: !602, line: 48, baseType: !2644, size: 64, offset: 192)
!2796 = !{!2797}
!2797 = !DISubrange(count: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2168, file: !1460, line: 1112, baseType: !2644, size: 64, offset: 15488)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2168, file: !1460, line: 1113, baseType: !2644, size: 64, offset: 15552)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2168, file: !1460, line: 1115, baseType: !2644, size: 64, offset: 15616)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2168, file: !1460, line: 1116, baseType: !2640, size: 192, offset: 15680)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2168, file: !1460, line: 1117, baseType: !29, size: 64, offset: 15872)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2168, file: !1460, line: 1118, baseType: !659, size: 64, offset: 15936)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2168, file: !1460, line: 1119, baseType: !25, size: 32, offset: 16000)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2168, file: !1460, line: 1121, baseType: !257, size: 64, offset: 16064)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2168, file: !1460, line: 1125, baseType: !2807, size: 64, offset: 16128)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1460, line: 43, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2168, file: !1460, line: 1127, baseType: !110, size: 32, offset: 16192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2168, file: !1460, line: 1128, baseType: !25, size: 32, offset: 16224)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2168, file: !1460, line: 1130, baseType: !2812, size: 128, offset: 16256)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2813, line: 37, size: 128, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2812, file: !2813, line: 38, baseType: !6, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2812, file: !2813, line: 39, baseType: !284, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2812, file: !2813, line: 40, baseType: !2818, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2813, line: 24, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2168, file: !1460, line: 1131, baseType: !2821, size: 256, offset: 16384)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2822, line: 12, size: 256, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2821, file: !2822, line: 13, baseType: !170, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2821, file: !2822, line: 14, baseType: !29, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2821, file: !2822, line: 15, baseType: !29, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2821, file: !2822, line: 16, baseType: !164, size: 8, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2168, file: !1460, line: 1134, baseType: !95, size: 64, offset: 16640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2168, file: !1460, line: 1135, baseType: !95, size: 64, offset: 16704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2168, file: !1460, line: 1138, baseType: !264, size: 32, offset: 16768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2168, file: !1460, line: 1141, baseType: !318, size: 32, offset: 16800)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2168, file: !1460, line: 1143, baseType: !2833, size: 64, offset: 16832)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1460, line: 735, size: 64, elements: !2834)
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2833, file: !1460, line: 736, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2168, file: !1460, line: 1147, baseType: !729, size: 128, offset: 16896)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2168, file: !1460, line: 1149, baseType: !2167, size: 64, offset: 17024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2168, file: !1460, line: 1151, baseType: !2840, size: 64, offset: 17088)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1460, line: 1151, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2168, file: !1460, line: 1188, baseType: !151, size: 64, offset: 17152)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2168, file: !1460, line: 1191, baseType: !2844, size: 64, offset: 17216)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1460, line: 44, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2168, file: !1460, line: 1194, baseType: !2847, size: 64, offset: 17280)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1460, line: 45, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2168, file: !1460, line: 1197, baseType: !2850, size: 64, offset: 17344)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1460, line: 61, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2168, file: !1460, line: 1199, baseType: !2853, size: 64, offset: 17408)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2855, line: 99, size: 128, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2856 = !{!2857, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2854, file: !2855, line: 100, baseType: !305, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2854, file: !2855, line: 101, baseType: !284, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2854, file: !2855, line: 103, baseType: !107, size: 16, offset: 96)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2168, file: !1460, line: 1202, baseType: !2861, size: 64, offset: 17472)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1460, line: 48, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2168, file: !1460, line: 1205, baseType: !29, size: 64, offset: 17536)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2168, file: !1460, line: 1206, baseType: !2865, size: 64, offset: 17600)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !602, line: 14, baseType: !2867)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !602, line: 12, size: 384, elements: !2868)
!2868 = !{!2869}
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2867, file: !602, line: 13, baseType: !2870, size: 384)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2867, file: !602, line: 13, size: 384, elements: !2871)
!2871 = !{!2872, !2873, !2874, !2875}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2870, file: !602, line: 13, baseType: !6, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2870, file: !602, line: 13, baseType: !6, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2870, file: !602, line: 13, baseType: !6, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2870, file: !602, line: 13, baseType: !2876, size: 256, offset: 128)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2877, line: 37, size: 256, elements: !2878)
!2877 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2878 = !{!2879, !2884, !2897, !2903, !2912, !2939, !2944}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2876, file: !2877, line: 42, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 39, size: 64, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2880, file: !2877, line: 40, baseType: !2539, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2880, file: !2877, line: 41, baseType: !116, size: 32, offset: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2876, file: !2877, line: 50, baseType: !2885, size: 192)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 45, size: 192, elements: !2886)
!2886 = !{!2887, !2889, !2890, !2896}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2885, file: !2877, line: 46, baseType: !2888, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !33, line: 95, baseType: !6)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2885, file: !2877, line: 47, baseType: !6, size: 32, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2885, file: !2877, line: 48, baseType: !2891, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2877, line: 11, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2877, line: 8, size: 64, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2892, file: !2877, line: 9, baseType: !6, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2892, file: !2877, line: 10, baseType: !151, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2885, file: !2877, line: 49, baseType: !6, size: 32, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2876, file: !2877, line: 57, baseType: !2898, size: 128)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 53, size: 128, elements: !2899)
!2899 = !{!2900, !2901, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2898, file: !2877, line: 54, baseType: !2539, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2898, file: !2877, line: 55, baseType: !116, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2898, file: !2877, line: 56, baseType: !2891, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2876, file: !2877, line: 66, baseType: !2904, size: 256)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 60, size: 256, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2911}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2904, file: !2877, line: 61, baseType: !2539, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2904, file: !2877, line: 62, baseType: !116, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2904, file: !2877, line: 63, baseType: !6, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2904, file: !2877, line: 64, baseType: !2910, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !33, line: 94, baseType: !658)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2904, file: !2877, line: 65, baseType: !2910, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2876, file: !2877, line: 105, baseType: !2913, size: 256)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 69, size: 256, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2913, file: !2877, line: 70, baseType: !151, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !2877, line: 79, baseType: !2917, size: 192, offset: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !2877, line: 79, size: 192, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2928, !2933}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2917, file: !2877, line: 81, baseType: !6, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2917, file: !2877, line: 86, baseType: !485, size: 16)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2917, file: !2877, line: 92, baseType: !2922, size: 192)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2917, file: !2877, line: 88, size: 192, elements: !2923)
!2923 = !{!2924, !2926, !2927}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2922, file: !2877, line: 89, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !2326)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2922, file: !2877, line: 90, baseType: !151, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2922, file: !2877, line: 91, baseType: !151, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2917, file: !2877, line: 97, baseType: !2929, size: 96)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2917, file: !2877, line: 94, size: 96, elements: !2930)
!2930 = !{!2931, !2932}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2929, file: !2877, line: 95, baseType: !2925, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2929, file: !2877, line: 96, baseType: !23, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2917, file: !2877, line: 103, baseType: !2934, size: 128)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2917, file: !2877, line: 99, size: 128, elements: !2935)
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2934, file: !2877, line: 100, baseType: !29, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2934, file: !2877, line: 101, baseType: !23, size: 32, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2934, file: !2877, line: 102, baseType: !23, size: 32, offset: 96)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2876, file: !2877, line: 111, baseType: !2940, size: 128)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 108, size: 128, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2940, file: !2877, line: 109, baseType: !237, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2940, file: !2877, line: 110, baseType: !6, size: 32, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2876, file: !2877, line: 118, baseType: !2945, size: 128)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2877, line: 114, size: 128, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2945, file: !2877, line: 115, baseType: !151, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2945, file: !2877, line: 116, baseType: !6, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2945, file: !2877, line: 117, baseType: !25, size: 32, offset: 96)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2168, file: !1460, line: 1208, baseType: !2726, size: 448, offset: 17664)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2168, file: !1460, line: 1215, baseType: !95, size: 64, offset: 18112)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2168, file: !1460, line: 1217, baseType: !95, size: 64, offset: 18176)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2168, file: !1460, line: 1219, baseType: !95, size: 64, offset: 18240)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2168, file: !1460, line: 1223, baseType: !2955, size: 64, offset: 18304)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2956, line: 99, baseType: !2957)
!2956 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2956, line: 99, size: 64, elements: !2958)
!2958 = !{!2959}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2957, file: !2956, line: 99, baseType: !2403, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2168, file: !1460, line: 1225, baseType: !65, size: 32, offset: 18368)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2168, file: !1460, line: 1226, baseType: !6, size: 32, offset: 18400)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2168, file: !1460, line: 1227, baseType: !6, size: 32, offset: 18432)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2168, file: !1460, line: 1231, baseType: !2964, size: 64, offset: 18496)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1460, line: 1231, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2168, file: !1460, line: 1233, baseType: !12, size: 128, offset: 18560)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2168, file: !1460, line: 1240, baseType: !2968, size: 64, offset: 18688)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1460, line: 62, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2168, file: !1460, line: 1242, baseType: !2971, size: 64, offset: 18752)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1460, line: 1242, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2168, file: !1460, line: 1244, baseType: !12, size: 128, offset: 18816)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2168, file: !1460, line: 1245, baseType: !2975, size: 64, offset: 18944)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1460, line: 51, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2168, file: !1460, line: 1246, baseType: !313, size: 256, offset: 19008)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2168, file: !1460, line: 1247, baseType: !25, size: 32, offset: 19264)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2168, file: !1460, line: 1250, baseType: !2980, size: 64, offset: 19328)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1460, line: 57, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2168, file: !1460, line: 1251, baseType: !313, size: 256, offset: 19392)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2168, file: !1460, line: 1252, baseType: !12, size: 128, offset: 19648)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2168, file: !1460, line: 1259, baseType: !1112, size: 64, offset: 19776)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2168, file: !1460, line: 1260, baseType: !485, size: 16, offset: 19840)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2168, file: !1460, line: 1261, baseType: !485, size: 16, offset: 19856)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2168, file: !1460, line: 1314, baseType: !2988, size: 64, offset: 19904)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2990, line: 62, size: 256, align: 256, elements: !2991)
!2990 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997, !2998}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2989, file: !2990, line: 75, baseType: !23, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2989, file: !2990, line: 90, baseType: !23, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2989, file: !2990, line: 112, baseType: !96, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2989, file: !2990, line: 132, baseType: !23, size: 32, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2989, file: !2990, line: 140, baseType: !23, size: 32, offset: 160)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2989, file: !2990, line: 149, baseType: !23, size: 32, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2989, file: !2990, line: 154, baseType: !2999, offset: 224)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !396)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2168, file: !1460, line: 1315, baseType: !21, size: 32, offset: 19968)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2168, file: !1460, line: 1316, baseType: !21, size: 32, offset: 20000)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2168, file: !1460, line: 1321, baseType: !29, size: 64, offset: 20032)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2168, file: !1460, line: 1325, baseType: !6, size: 32, offset: 20096)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2168, file: !1460, line: 1326, baseType: !6, size: 32, offset: 20128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2168, file: !1460, line: 1327, baseType: !6, size: 32, offset: 20160)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2168, file: !1460, line: 1328, baseType: !6, size: 32, offset: 20192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2168, file: !1460, line: 1329, baseType: !254, size: 128, align: 64, offset: 20224)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2168, file: !1460, line: 1332, baseType: !3009, size: 128, offset: 20352)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3010, line: 51, size: 128, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3011 = !{!3012, !3017, !3018}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3009, file: !3010, line: 60, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3014, line: 7, size: 64, elements: !3015)
!3014 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3013, file: !3014, line: 12, baseType: !2400, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3009, file: !3010, line: 63, baseType: !164, size: 8, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3009, file: !3010, line: 70, baseType: !164, size: 8, offset: 72)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2168, file: !1460, line: 1335, baseType: !1458, size: 64, offset: 20480)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2168, file: !1460, line: 1337, baseType: !3021, size: 128, offset: 20544)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3010, line: 39, size: 128, elements: !3022)
!3022 = !{!3023, !3024, !3025}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3021, file: !3010, line: 40, baseType: !747, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3021, file: !3010, line: 42, baseType: !23, size: 32, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3021, file: !3010, line: 43, baseType: !23, size: 32, offset: 96)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2168, file: !1460, line: 1340, baseType: !3027, size: 64, offset: 20672)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1460, line: 69, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2168, file: !1460, line: 1351, baseType: !6, size: 32, offset: 20736)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2168, file: !1460, line: 1352, baseType: !6, size: 32, offset: 20768)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2168, file: !1460, line: 1354, baseType: !29, size: 64, offset: 20800)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2168, file: !1460, line: 1364, baseType: !95, size: 64, offset: 20864)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2168, file: !1460, line: 1365, baseType: !95, size: 64, offset: 20928)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2168, file: !1460, line: 1412, baseType: !29, size: 64, offset: 20992)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2168, file: !1460, line: 1453, baseType: !3036, size: 64, offset: 21056)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1460, line: 1453, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2168, file: !1460, line: 1457, baseType: !3039, size: 64, offset: 21120)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1014, line: 61, size: 576, elements: !3041)
!3041 = !{!3042, !3049, !3068, !3071, !3072, !3105, !3115}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3040, file: !1014, line: 62, baseType: !3043, size: 32)
!3043 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1014, line: 51, baseType: !25, size: 32, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048}
!3045 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3046 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3047 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3048 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !1014, line: 64, baseType: !3050, size: 192, offset: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3040, file: !1014, line: 64, size: 192, elements: !3051)
!3051 = !{!3052, !3063}
!3052 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !1014, line: 65, baseType: !3053, size: 192)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !1014, line: 65, size: 192, elements: !3054)
!3054 = !{!3055, !3062}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3053, file: !1014, line: 66, baseType: !3056, size: 128)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3057, line: 50, size: 128, elements: !3058)
!3057 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3056, file: !3057, line: 52, baseType: !29, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3056, file: !3057, line: 54, baseType: !25, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3056, file: !3057, line: 55, baseType: !25, size: 32, offset: 96)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3053, file: !1014, line: 67, baseType: !29, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !1014, line: 70, baseType: !3064, size: 192)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !1014, line: 70, size: 192, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3064, file: !1014, line: 71, baseType: !254, size: 128, align: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3064, file: !1014, line: 72, baseType: !29, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3040, file: !1014, line: 76, baseType: !3069, size: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1014, line: 76, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3040, file: !1014, line: 77, baseType: !29, size: 64, offset: 320)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3040, file: !1014, line: 79, baseType: !3073, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3057, line: 25, size: 256, elements: !3075)
!3075 = !{!3076, !3082, !3086}
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !3057, line: 26, baseType: !3077, size: 128)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3074, file: !3057, line: 26, size: 128, elements: !3078)
!3078 = !{!3079, !3081}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3077, file: !3057, line: 27, baseType: !3080, size: 128)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, elements: !2598)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3077, file: !3057, line: 28, baseType: !3080, size: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3074, file: !3057, line: 31, baseType: !3083, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3085)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3057, line: 23, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !3057, line: 33, baseType: !3087, size: 64, offset: 192)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3074, file: !3057, line: 33, size: 64, elements: !3088)
!3088 = !{!3089, !3095, !3100}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3087, file: !3057, line: 38, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3057, line: 34, size: 64, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3090, file: !3057, line: 35, baseType: !444, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3090, file: !3057, line: 36, baseType: !292, size: 8, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3090, file: !3057, line: 37, baseType: !292, size: 8, offset: 40)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3087, file: !3057, line: 42, baseType: !3096, size: 16)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3057, line: 39, size: 16, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3096, file: !3057, line: 40, baseType: !292, size: 8)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3096, file: !3057, line: 41, baseType: !292, size: 8, offset: 8)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3087, file: !3057, line: 46, baseType: !3101, size: 16)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3057, line: 43, size: 16, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3101, file: !3057, line: 44, baseType: !292, size: 8)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3101, file: !3057, line: 45, baseType: !292, size: 8, offset: 8)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3040, file: !1014, line: 81, baseType: !3106, size: 64, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1014, line: 85, size: 384, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3107, file: !1014, line: 86, baseType: !3069, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3107, file: !1014, line: 87, baseType: !29, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3107, file: !1014, line: 88, baseType: !29, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3107, file: !1014, line: 89, baseType: !29, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3107, file: !1014, line: 90, baseType: !164, size: 8, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3107, file: !1014, line: 92, baseType: !3106, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3040, file: !1014, line: 82, baseType: !25, size: 32, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2168, file: !1460, line: 1463, baseType: !3117, offset: 21184)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1460, line: 739, elements: !909)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2168, file: !1460, line: 1470, baseType: !254, size: 128, align: 64, offset: 21184)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2168, file: !1460, line: 1471, baseType: !359, size: 32, offset: 21312)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2168, file: !1460, line: 1472, baseType: !6, size: 32, offset: 21344)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2168, file: !1460, line: 1474, baseType: !2167, size: 64, offset: 21376)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2168, file: !1460, line: 1475, baseType: !3123, size: 320, offset: 21440)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3124, line: 11, size: 320, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3125 = !{!3126, !3127, !3128, !3133}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3123, file: !3124, line: 16, baseType: !372, size: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3123, file: !3124, line: 17, baseType: !29, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3123, file: !3124, line: 18, baseType: !3129, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3132}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3123, file: !3124, line: 19, baseType: !21, size: 32, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2168, file: !1460, line: 1478, baseType: !3135, size: 64, offset: 21760)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1460, line: 1478, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2168, file: !1460, line: 1482, baseType: !359, size: 32, offset: 21824)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2168, file: !1460, line: 1489, baseType: !151, size: 64, offset: 21888)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2168, file: !1460, line: 1504, baseType: !151, size: 64, offset: 21952)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2168, file: !1460, line: 1505, baseType: !96, size: 64, offset: 22016)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2168, file: !1460, line: 1506, baseType: !95, size: 64, offset: 22080)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2168, file: !1460, line: 1507, baseType: !96, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2168, file: !1460, line: 1508, baseType: !96, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2168, file: !1460, line: 1509, baseType: !96, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2168, file: !1460, line: 1510, baseType: !254, size: 128, align: 64, offset: 22208)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2168, file: !1460, line: 1511, baseType: !6, size: 32, offset: 22336)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2168, file: !1460, line: 1515, baseType: !3148, size: 64, offset: 22400)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !249, line: 56, size: 64, elements: !3149)
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3148, file: !249, line: 57, baseType: !252, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2168, file: !1460, line: 1518, baseType: !3148, size: 64, offset: 22464)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2168, file: !1460, line: 1528, baseType: !254, size: 128, align: 64, offset: 22528)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2168, file: !1460, line: 1552, baseType: !3154, size: 35328, offset: 23040)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3155, line: 430, size: 35328, elements: !3156)
!3155 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3156 = !{!3157, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3186, !3187, !3188, !3189, !3190, !3191, !3194, !3195, !3196, !3197}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3154, file: !3155, line: 432, baseType: !3158, size: 192)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3159, size: 192, elements: !350)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3160, line: 16, size: 64, elements: !3161)
!3160 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3159, file: !3160, line: 17, baseType: !299, size: 16)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3159, file: !3160, line: 18, baseType: !299, size: 16, offset: 16)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3159, file: !3160, line: 19, baseType: !299, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3159, file: !3160, line: 19, baseType: !299, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3159, file: !3160, line: 19, baseType: !299, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3159, file: !3160, line: 19, baseType: !299, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3159, file: !3160, line: 19, baseType: !299, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3159, file: !3160, line: 20, baseType: !299, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3159, file: !3160, line: 20, baseType: !299, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3159, file: !3160, line: 20, baseType: !299, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3159, file: !3160, line: 20, baseType: !299, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3159, file: !3160, line: 20, baseType: !299, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3159, file: !3160, line: 20, baseType: !299, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3154, file: !3155, line: 436, baseType: !29, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3154, file: !3155, line: 440, baseType: !107, size: 16, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3154, file: !3155, line: 441, baseType: !107, size: 16, offset: 272)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3154, file: !3155, line: 442, baseType: !107, size: 16, offset: 288)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3154, file: !3155, line: 443, baseType: !107, size: 16, offset: 304)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3154, file: !3155, line: 447, baseType: !29, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3154, file: !3155, line: 448, baseType: !29, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3154, file: !3155, line: 459, baseType: !3183, size: 256, offset: 448)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3184, size: 256, elements: !377)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3155, line: 428, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3154, file: !3155, line: 461, baseType: !29, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3154, file: !3155, line: 463, baseType: !29, size: 64, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3154, file: !3155, line: 465, baseType: !29, size: 64, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3154, file: !3155, line: 466, baseType: !29, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3154, file: !3155, line: 467, baseType: !29, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3154, file: !3155, line: 473, baseType: !3192, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3155, line: 10, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3154, file: !3155, line: 480, baseType: !29, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3154, file: !3155, line: 482, baseType: !25, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3154, file: !3155, line: 491, baseType: !21, size: 32, offset: 1184)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3154, file: !3155, line: 501, baseType: !3198, size: 33792, offset: 1536)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3199, line: 448, size: 33792, elements: !3200)
!3199 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3200 = !{!3201, !3202, !3203, !3365, !3366, !3372, !3373}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3198, file: !3199, line: 461, baseType: !25, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3198, file: !3199, line: 468, baseType: !29, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3198, file: !3199, line: 476, baseType: !3204, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3199, line: 356, size: 33280, align: 512, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3205, file: !3199, line: 358, baseType: !25, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3205, file: !3199, line: 361, baseType: !25, size: 32, offset: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3205, file: !3199, line: 364, baseType: !95, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3205, file: !3199, line: 367, baseType: !95, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3205, file: !3199, line: 370, baseType: !95, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3205, file: !3199, line: 373, baseType: !25, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3205, file: !3199, line: 376, baseType: !25, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3205, file: !3199, line: 391, baseType: !25, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3205, file: !3199, line: 394, baseType: !25, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3205, file: !3199, line: 397, baseType: !3217, size: 32768, offset: 512)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3199, line: 348, size: 32768, elements: !3218)
!3218 = !{!3219, !3234, !3271, !3348, !3361}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3217, file: !3199, line: 349, baseType: !3220, size: 896)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3199, line: 12, size: 896, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3233}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3220, file: !3199, line: 13, baseType: !21, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3220, file: !3199, line: 14, baseType: !21, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3220, file: !3199, line: 15, baseType: !21, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3220, file: !3199, line: 16, baseType: !21, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3220, file: !3199, line: 17, baseType: !21, size: 32, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3220, file: !3199, line: 18, baseType: !21, size: 32, offset: 160)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3220, file: !3199, line: 19, baseType: !21, size: 32, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3220, file: !3199, line: 22, baseType: !3230, size: 640, offset: 224)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 640, elements: !3231)
!3231 = !{!3232}
!3232 = !DISubrange(count: 20)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3220, file: !3199, line: 25, baseType: !21, size: 32, offset: 864)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3217, file: !3199, line: 350, baseType: !3235, size: 4096, align: 128)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3199, line: 34, size: 4096, align: 128, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3256, !3257, !3258, !3260, !3262, !3266}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3235, file: !3199, line: 35, baseType: !299, size: 16)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3235, file: !3199, line: 36, baseType: !299, size: 16, offset: 16)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3235, file: !3199, line: 37, baseType: !299, size: 16, offset: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3235, file: !3199, line: 38, baseType: !299, size: 16, offset: 48)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !3199, line: 39, baseType: !3242, size: 128, offset: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !3199, line: 39, size: 128, elements: !3243)
!3243 = !{!3244, !3249}
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !3199, line: 40, baseType: !3245, size: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3199, line: 40, size: 128, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3245, file: !3199, line: 41, baseType: !95, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3245, file: !3199, line: 42, baseType: !95, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !3199, line: 44, baseType: !3250, size: 128)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3199, line: 44, size: 128, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3250, file: !3199, line: 45, baseType: !21, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3250, file: !3199, line: 46, baseType: !21, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3250, file: !3199, line: 47, baseType: !21, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3250, file: !3199, line: 48, baseType: !21, size: 32, offset: 96)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3235, file: !3199, line: 51, baseType: !21, size: 32, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3235, file: !3199, line: 52, baseType: !21, size: 32, offset: 224)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3235, file: !3199, line: 55, baseType: !3259, size: 1024, offset: 256)
!3259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !1694)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3235, file: !3199, line: 58, baseType: !3261, size: 2048, offset: 1280)
!3261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !2796)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3235, file: !3199, line: 60, baseType: !3263, size: 384, offset: 3328)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 384, elements: !3264)
!3264 = !{!3265}
!3265 = !DISubrange(count: 12)
!3266 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !3199, line: 62, baseType: !3267, size: 384, offset: 3712)
!3267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !3199, line: 62, size: 384, elements: !3268)
!3268 = !{!3269, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3267, file: !3199, line: 63, baseType: !3263, size: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3267, file: !3199, line: 64, baseType: !3263, size: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3217, file: !3199, line: 351, baseType: !3272, size: 1088)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3199, line: 79, size: 1088, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3347}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3272, file: !3199, line: 80, baseType: !21, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3272, file: !3199, line: 81, baseType: !21, size: 32, offset: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3272, file: !3199, line: 82, baseType: !21, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3272, file: !3199, line: 83, baseType: !21, size: 32, offset: 96)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3272, file: !3199, line: 84, baseType: !21, size: 32, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3272, file: !3199, line: 85, baseType: !21, size: 32, offset: 160)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3272, file: !3199, line: 86, baseType: !21, size: 32, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3272, file: !3199, line: 88, baseType: !3230, size: 640, offset: 224)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3272, file: !3199, line: 89, baseType: !292, size: 8, offset: 864)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3272, file: !3199, line: 90, baseType: !292, size: 8, offset: 872)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3272, file: !3199, line: 91, baseType: !292, size: 8, offset: 880)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3272, file: !3199, line: 92, baseType: !292, size: 8, offset: 888)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3272, file: !3199, line: 93, baseType: !292, size: 8, offset: 896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3272, file: !3199, line: 94, baseType: !292, size: 8, offset: 904)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3272, file: !3199, line: 95, baseType: !3289, size: 64, offset: 960)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3291, line: 11, size: 128, elements: !3292)
!3291 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3290, file: !3291, line: 12, baseType: !237, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3290, file: !3291, line: 13, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3297, line: 103, size: 1344, elements: !3298)
!3297 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3327, !3328, !3329}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3296, file: !3297, line: 109, baseType: !29, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3296, file: !3297, line: 110, baseType: !29, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3296, file: !3297, line: 111, baseType: !29, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3296, file: !3297, line: 112, baseType: !29, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3296, file: !3297, line: 113, baseType: !29, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3296, file: !3297, line: 114, baseType: !29, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3296, file: !3297, line: 117, baseType: !29, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3296, file: !3297, line: 118, baseType: !29, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3296, file: !3297, line: 119, baseType: !29, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3296, file: !3297, line: 120, baseType: !29, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3296, file: !3297, line: 121, baseType: !29, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3296, file: !3297, line: 122, baseType: !29, size: 64, offset: 704)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3296, file: !3297, line: 123, baseType: !29, size: 64, offset: 768)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3296, file: !3297, line: 124, baseType: !29, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3296, file: !3297, line: 125, baseType: !29, size: 64, offset: 896)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3296, file: !3297, line: 139, baseType: !29, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3296, file: !3297, line: 142, baseType: !29, size: 64, offset: 1024)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !3297, line: 144, baseType: !3317, size: 64, offset: 1088)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3296, file: !3297, line: 144, size: 64, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3317, file: !3297, line: 146, baseType: !299, size: 16)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3317, file: !3297, line: 148, baseType: !95, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3317, file: !3297, line: 150, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3297, line: 59, size: 64, elements: !3323)
!3323 = !{!3324, !3325, !3326}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3322, file: !3297, line: 61, baseType: !95, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3322, file: !3297, line: 63, baseType: !95, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3322, file: !3297, line: 65, baseType: !95, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3296, file: !3297, line: 153, baseType: !29, size: 64, offset: 1152)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3296, file: !3297, line: 154, baseType: !29, size: 64, offset: 1216)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !3297, line: 156, baseType: !3330, size: 64, offset: 1280)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3296, file: !3297, line: 156, size: 64, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3330, file: !3297, line: 158, baseType: !299, size: 16)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3330, file: !3297, line: 160, baseType: !95, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3330, file: !3297, line: 162, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3297, line: 69, size: 64, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3335, file: !3297, line: 71, baseType: !95, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3335, file: !3297, line: 73, baseType: !95, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3335, file: !3297, line: 75, baseType: !95, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3335, file: !3297, line: 77, baseType: !95, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3335, file: !3297, line: 80, baseType: !95, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3335, file: !3297, line: 83, baseType: !95, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3335, file: !3297, line: 86, baseType: !95, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3335, file: !3297, line: 88, baseType: !95, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3335, file: !3297, line: 93, baseType: !95, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3335, file: !3297, line: 100, baseType: !95, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3272, file: !3199, line: 96, baseType: !21, size: 32, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3217, file: !3199, line: 352, baseType: !3349, size: 4608, align: 512)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3199, line: 333, size: 4608, align: 512, elements: !3350)
!3350 = !{!3351, !3352, !3359}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3349, file: !3199, line: 334, baseType: !3235, size: 4096, align: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3349, file: !3199, line: 335, baseType: !3353, size: 512, offset: 4096)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3199, line: 312, size: 512, elements: !3354)
!3354 = !{!3355, !3356, !3357}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3353, file: !3199, line: 313, baseType: !95, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3353, file: !3199, line: 314, baseType: !95, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3353, file: !3199, line: 315, baseType: !3358, size: 384, offset: 128)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 384, elements: !503)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3349, file: !3199, line: 336, baseType: !3360, offset: 4608)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !396)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3217, file: !3199, line: 353, baseType: !3362, size: 32768)
!3362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 32768, elements: !3363)
!3363 = !{!3364}
!3364 = !DISubrange(count: 4096)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3198, file: !3199, line: 484, baseType: !3204, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3198, file: !3199, line: 491, baseType: !3367, size: 128, offset: 256)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3199, line: 404, size: 128, elements: !3368)
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3367, file: !3199, line: 424, baseType: !95, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3367, file: !3199, line: 432, baseType: !25, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3367, file: !3199, line: 440, baseType: !25, size: 32, offset: 96)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3198, file: !3199, line: 498, baseType: !3367, size: 128, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3198, file: !3199, line: 508, baseType: !3205, size: 33280, align: 512, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2149, file: !2150, line: 16, baseType: !381, size: 192, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2149, file: !2150, line: 17, baseType: !284, size: 32, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !8, file: !9, line: 1240, baseType: !151, size: 64, offset: 6912)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !8, file: !9, line: 1243, baseType: !21, size: 32, offset: 6976)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !8, file: !9, line: 1245, baseType: !234, size: 64, offset: 7040)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !8, file: !9, line: 1246, baseType: !234, size: 64, offset: 7104)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !8, file: !9, line: 1248, baseType: !23, size: 32, offset: 7168)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !8, file: !9, line: 1249, baseType: !1689, size: 64, offset: 7232)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !8, file: !9, line: 1252, baseType: !3383, size: 256, offset: 7296)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !1694)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !8, file: !9, line: 1253, baseType: !3385, size: 128, offset: 7552)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3386, line: 21, baseType: !3387)
!3386 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3386, line: 19, size: 128, elements: !3388)
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3387, file: !3386, line: 20, baseType: !3390, size: 128)
!3390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 128, elements: !2598)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !8, file: !9, line: 1255, baseType: !25, size: 32, offset: 7680)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !8, file: !9, line: 1261, baseType: !313, size: 256, offset: 7744)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !8, file: !9, line: 1267, baseType: !40, size: 64, offset: 8000)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !8, file: !9, line: 1269, baseType: !1710, size: 64, offset: 8064)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !8, file: !9, line: 1271, baseType: !3396, size: 448, offset: 8128)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1932, line: 63, size: 448, elements: !3397)
!3397 = !{!3398, !3403, !3404, !3405, !3406, !3407, !3408}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3396, file: !1932, line: 64, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!29, !3402, !1930}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3396, file: !1932, line: 66, baseType: !3399, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3396, file: !1932, line: 69, baseType: !237, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3396, file: !1932, line: 70, baseType: !6, size: 32, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3396, file: !1932, line: 71, baseType: !25, size: 32, offset: 224)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3396, file: !1932, line: 74, baseType: !12, size: 128, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3396, file: !1932, line: 85, baseType: !3409, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !8, file: !9, line: 1274, baseType: !305, size: 64, offset: 8576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !8, file: !9, line: 1280, baseType: !305, size: 64, offset: 8640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !8, file: !9, line: 1283, baseType: !6, size: 32, offset: 8704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !8, file: !9, line: 1286, baseType: !1317, size: 32, offset: 8736)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !8, file: !9, line: 1289, baseType: !3415, size: 64, offset: 8768)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1022, line: 18, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !8, file: !9, line: 1290, baseType: !368, size: 64, offset: 8832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !8, file: !9, line: 1297, baseType: !597, size: 64, offset: 8896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !8, file: !9, line: 1304, baseType: !3420, size: 64, offset: 8960)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3421, line: 49, size: 64, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3422 = !{!3423}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3420, file: !3421, line: 50, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3421, line: 41, size: 512, align: 512, elements: !3426)
!3426 = !{!3427, !3428, !3433}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3425, file: !3421, line: 43, baseType: !264, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3425, file: !3421, line: 45, baseType: !3429, size: 192, offset: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3421, line: 29, size: 192, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3429, file: !3421, line: 30, baseType: !12, size: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3429, file: !3421, line: 32, baseType: !237, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3425, file: !3421, line: 46, baseType: !237, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !8, file: !9, line: 1305, baseType: !3420, size: 64, offset: 9024)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !8, file: !9, line: 1306, baseType: !254, size: 128, align: 64, offset: 9088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !8, file: !9, line: 1307, baseType: !1021, size: 256, offset: 9216)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !8, file: !9, line: 1309, baseType: !313, size: 256, offset: 9472)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !8, file: !9, line: 1314, baseType: !6, size: 32, offset: 9728)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !8, file: !9, line: 1317, baseType: !264, size: 32, align: 512, offset: 10240)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !8, file: !9, line: 1318, baseType: !12, size: 128, offset: 10304)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !8, file: !9, line: 1320, baseType: !264, size: 32, offset: 10432)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !8, file: !9, line: 1321, baseType: !12, size: 128, offset: 10496)
!3443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/autofs/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/autofs/autofs4\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22autofs4\22 -D __KBUILD_MODNAME=kmod_autofs4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/autofs/inode.ll fs/autofs/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !3444, retainedTypes: !3474, globals: !3520, splitDebugInlining: false, nameTableKind: None)
!3444 = !{!399, !1836, !1906, !2294, !2502, !1273, !844, !1134, !3043, !3445, !3450, !3460}
!3445 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3446, line: 10, baseType: !25, size: 32, elements: !3447)
!3446 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!3447 = !{!3448, !3449}
!3448 = !DIEnumerator(name: "false", value: 0)
!3449 = !DIEnumerator(name: "true", value: 1)
!3450 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !3451, line: 364, baseType: !25, size: 32, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3453 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!3454 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!3455 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!3456 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!3457 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!3458 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!3459 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!3460 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 113, baseType: !25, size: 32, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3462 = !DIEnumerator(name: "Opt_err", value: 0)
!3463 = !DIEnumerator(name: "Opt_fd", value: 1)
!3464 = !DIEnumerator(name: "Opt_uid", value: 2)
!3465 = !DIEnumerator(name: "Opt_gid", value: 3)
!3466 = !DIEnumerator(name: "Opt_pgrp", value: 4)
!3467 = !DIEnumerator(name: "Opt_minproto", value: 5)
!3468 = !DIEnumerator(name: "Opt_maxproto", value: 6)
!3469 = !DIEnumerator(name: "Opt_indirect", value: 7)
!3470 = !DIEnumerator(name: "Opt_direct", value: 8)
!3471 = !DIEnumerator(name: "Opt_offset", value: 9)
!3472 = !DIEnumerator(name: "Opt_strictexpire", value: 10)
!3473 = !DIEnumerator(name: "Opt_ignore", value: 11)
!3474 = !{!723, !151, !29, !3475, !3477, !115, !123, !410, !3519, !2167, !303}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_sb_info", file: !3479, line: 106, size: 1664, elements: !3480)
!3479 = !DIFile(filename: "fs/autofs/autofs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "474496a990f5ae9b197285e0b4803e95")
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3515, !3516, !3517, !3518}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3478, file: !3479, line: 107, baseType: !21, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pipefd", scope: !3478, file: !3479, line: 108, baseType: !6, size: 32, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3478, file: !3479, line: 109, baseType: !241, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "oz_pgrp", scope: !3478, file: !3479, line: 110, baseType: !354, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3478, file: !3479, line: 111, baseType: !6, size: 32, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sub_version", scope: !3478, file: !3479, line: 112, baseType: !6, size: 32, offset: 224)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "min_proto", scope: !3478, file: !3479, line: 113, baseType: !6, size: 32, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "max_proto", scope: !3478, file: !3479, line: 114, baseType: !6, size: 32, offset: 288)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3478, file: !3479, line: 115, baseType: !25, size: 32, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "exp_timeout", scope: !3478, file: !3479, line: 116, baseType: !29, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3478, file: !3479, line: 117, baseType: !25, size: 32, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3478, file: !3479, line: 118, baseType: !7, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "wq_mutex", scope: !3478, file: !3479, line: 119, baseType: !313, size: 256, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mutex", scope: !3478, file: !3479, line: 120, baseType: !313, size: 256, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "fs_lock", scope: !3478, file: !3479, line: 121, baseType: !264, size: 32, offset: 1088)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !3478, file: !3479, line: 122, baseType: !3497, size: 64, offset: 1152)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_wait_queue", file: !3479, line: 82, size: 768, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3498, file: !3479, line: 83, baseType: !381, size: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3498, file: !3479, line: 84, baseType: !3497, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !3498, file: !3479, line: 85, baseType: !3503, size: 32, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_wqt_t", file: !3504, line: 38, baseType: !25)
!3504 = !DIFile(filename: "./include/uapi/linux/auto_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "967b492b126909646225f054deef702b")
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3498, file: !3479, line: 87, baseType: !84, size: 128, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3498, file: !3479, line: 88, baseType: !21, size: 32, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3498, file: !3479, line: 89, baseType: !21, size: 32, offset: 480)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3498, file: !3479, line: 90, baseType: !95, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3498, file: !3479, line: 91, baseType: !110, size: 32, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3498, file: !3479, line: 92, baseType: !119, size: 32, offset: 608)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3498, file: !3479, line: 93, baseType: !2538, size: 32, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3498, file: !3479, line: 94, baseType: !2538, size: 32, offset: 672)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3498, file: !3479, line: 96, baseType: !6, size: 32, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_ctr", scope: !3498, file: !3479, line: 97, baseType: !25, size: 32, offset: 736)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_lock", scope: !3478, file: !3479, line: 123, baseType: !264, size: 32, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3478, file: !3479, line: 124, baseType: !12, size: 128, offset: 1280)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "expiring_list", scope: !3478, file: !3479, line: 125, baseType: !12, size: 128, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3478, file: !3479, line: 126, baseType: !254, size: 128, align: 64, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!3520 = !{!0, !3521, !3526, !3528, !3533, !3538, !3543, !3548, !3553, !3558, !3563, !3566, !3571, !3573, !3578, !3580, !3582, !3587, !3592, !3594, !3596, !3598, !3600, !3605, !3610, !3612, !3615, !3617, !3619, !3621, !3623, !3626, !3628, !3630, !3632, !3634, !3636, !3638}
!3521 = !DIGlobalVariableExpression(var: !3522, expr: !DIExpression())
!3522 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !3523, isLocal: true, isDefinition: true)
!3523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 120, elements: !3524)
!3524 = !{!3525}
!3525 = !DISubrange(count: 15)
!3526 = !DIGlobalVariableExpression(var: !3527, expr: !DIExpression())
!3527 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 251, type: !1793, isLocal: true, isDefinition: true)
!3528 = !DIGlobalVariableExpression(var: !3529, expr: !DIExpression())
!3529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !3530, isLocal: true, isDefinition: true)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 136, elements: !3531)
!3531 = !{!3532}
!3532 = !DISubrange(count: 17)
!3533 = !DIGlobalVariableExpression(var: !3534, expr: !DIExpression())
!3534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !3535, isLocal: true, isDefinition: true)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, elements: !3536)
!3536 = !{!3537}
!3537 = !DISubrange(count: 48)
!3538 = !DIGlobalVariableExpression(var: !3539, expr: !DIExpression())
!3539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !3540, isLocal: true, isDefinition: true)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 144, elements: !3541)
!3541 = !{!3542}
!3542 = !DISubrange(count: 18)
!3543 = !DIGlobalVariableExpression(var: !3544, expr: !DIExpression())
!3544 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !3545, isLocal: true, isDefinition: true)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 728, elements: !3546)
!3546 = !{!3547}
!3547 = !DISubrange(count: 91)
!3548 = !DIGlobalVariableExpression(var: !3549, expr: !DIExpression())
!3549 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !3550, isLocal: true, isDefinition: true)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 432, elements: !3551)
!3551 = !{!3552}
!3552 = !DISubrange(count: 54)
!3553 = !DIGlobalVariableExpression(var: !3554, expr: !DIExpression())
!3554 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !3555, isLocal: true, isDefinition: true)
!3555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 464, elements: !3556)
!3556 = !{!3557}
!3557 = !DISubrange(count: 58)
!3558 = !DIGlobalVariableExpression(var: !3559, expr: !DIExpression())
!3559 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !3560, isLocal: true, isDefinition: true)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 568, elements: !3561)
!3561 = !{!3562}
!3562 = !DISubrange(count: 71)
!3563 = !DIGlobalVariableExpression(var: !3564, expr: !DIExpression())
!3564 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !3565, isLocal: true, isDefinition: true)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 144, elements: !3541)
!3566 = !DIGlobalVariableExpression(var: !3567, expr: !DIExpression())
!3567 = distinct !DIGlobalVariable(scope: null, file: !3451, line: 480, type: !3568, isLocal: true, isDefinition: true)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !3569)
!3569 = !{!3570}
!3570 = !DISubrange(count: 21)
!3571 = !DIGlobalVariableExpression(var: !3572, expr: !DIExpression())
!3572 = distinct !DIGlobalVariable(name: "autofs_sops", scope: !3443, file: !3, line: 107, type: !1805, isLocal: true, isDefinition: true)
!3573 = !DIGlobalVariableExpression(var: !3574, expr: !DIExpression())
!3574 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !3575, isLocal: true, isDefinition: true)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 56, elements: !3576)
!3576 = !{!3577}
!3577 = !DISubrange(count: 7)
!3578 = !DIGlobalVariableExpression(var: !3579, expr: !DIExpression())
!3579 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !2925, isLocal: true, isDefinition: true)
!3580 = !DIGlobalVariableExpression(var: !3581, expr: !DIExpression())
!3581 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !2925, isLocal: true, isDefinition: true)
!3582 = !DIGlobalVariableExpression(var: !3583, expr: !DIExpression())
!3583 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !3584, isLocal: true, isDefinition: true)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 72, elements: !3585)
!3585 = !{!3586}
!3586 = !DISubrange(count: 9)
!3587 = !DIGlobalVariableExpression(var: !3588, expr: !DIExpression())
!3588 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !3589, isLocal: true, isDefinition: true)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 104, elements: !3590)
!3590 = !{!3591}
!3591 = !DISubrange(count: 13)
!3592 = !DIGlobalVariableExpression(var: !3593, expr: !DIExpression())
!3593 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !3589, isLocal: true, isDefinition: true)
!3594 = !DIGlobalVariableExpression(var: !3595, expr: !DIExpression())
!3595 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !3589, isLocal: true, isDefinition: true)
!3596 = !DIGlobalVariableExpression(var: !3597, expr: !DIExpression())
!3597 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !2925, isLocal: true, isDefinition: true)
!3598 = !DIGlobalVariableExpression(var: !3599, expr: !DIExpression())
!3599 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !2925, isLocal: true, isDefinition: true)
!3600 = !DIGlobalVariableExpression(var: !3601, expr: !DIExpression())
!3601 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !3602, isLocal: true, isDefinition: true)
!3602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 80, elements: !3603)
!3603 = !{!3604}
!3604 = !DISubrange(count: 10)
!3605 = !DIGlobalVariableExpression(var: !3606, expr: !DIExpression())
!3606 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !3607, isLocal: true, isDefinition: true)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 112, elements: !3608)
!3608 = !{!3609}
!3609 = !DISubrange(count: 14)
!3610 = !DIGlobalVariableExpression(var: !3611, expr: !DIExpression())
!3611 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !2925, isLocal: true, isDefinition: true)
!3612 = !DIGlobalVariableExpression(var: !3613, expr: !DIExpression())
!3613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !3614, isLocal: true, isDefinition: true)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16, elements: !2679)
!3615 = !DIGlobalVariableExpression(var: !3616, expr: !DIExpression())
!3616 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !502, isLocal: true, isDefinition: true)
!3617 = !DIGlobalVariableExpression(var: !3618, expr: !DIExpression())
!3618 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !3575, isLocal: true, isDefinition: true)
!3619 = !DIGlobalVariableExpression(var: !3620, expr: !DIExpression())
!3620 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !3575, isLocal: true, isDefinition: true)
!3621 = !DIGlobalVariableExpression(var: !3622, expr: !DIExpression())
!3622 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !2925, isLocal: true, isDefinition: true)
!3623 = !DIGlobalVariableExpression(var: !3624, expr: !DIExpression())
!3624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !3625, isLocal: true, isDefinition: true)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 96, elements: !3264)
!3626 = !DIGlobalVariableExpression(var: !3627, expr: !DIExpression())
!3627 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !3625, isLocal: true, isDefinition: true)
!3628 = !DIGlobalVariableExpression(var: !3629, expr: !DIExpression())
!3629 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !3584, isLocal: true, isDefinition: true)
!3630 = !DIGlobalVariableExpression(var: !3631, expr: !DIExpression())
!3631 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !3575, isLocal: true, isDefinition: true)
!3632 = !DIGlobalVariableExpression(var: !3633, expr: !DIExpression())
!3633 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !3575, isLocal: true, isDefinition: true)
!3634 = !DIGlobalVariableExpression(var: !3635, expr: !DIExpression())
!3635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !3589, isLocal: true, isDefinition: true)
!3636 = !DIGlobalVariableExpression(var: !3637, expr: !DIExpression())
!3637 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !3575, isLocal: true, isDefinition: true)
!3638 = !DIGlobalVariableExpression(var: !3639, expr: !DIExpression())
!3639 = distinct !DIGlobalVariable(name: "tokens", scope: !3443, file: !3, line: 117, type: !3640, isLocal: true, isDefinition: true)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3641, size: 1536, elements: !3264)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !3643, line: 14, size: 128, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!3644 = !{!3645, !3646}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !3642, file: !3643, line: 15, baseType: !6, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !3642, file: !3643, line: 16, baseType: !40, size: 64, offset: 64)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677}
!3648 = !DILocalVariable(name: "s", arg: 1, scope: !2, file: !3, line: 221, type: !7)
!3649 = !DILocalVariable(name: "data", arg: 2, scope: !2, file: !3, line: 221, type: !151)
!3650 = !DILocalVariable(name: "silent", arg: 3, scope: !2, file: !3, line: 221, type: !6)
!3651 = !DILocalVariable(name: "root_inode", scope: !2, file: !3, line: 223, type: !102)
!3652 = !DILocalVariable(name: "root", scope: !2, file: !3, line: 224, type: !59)
!3653 = !DILocalVariable(name: "pipe", scope: !2, file: !3, line: 225, type: !241)
!3654 = !DILocalVariable(name: "sbi", scope: !2, file: !3, line: 226, type: !3477)
!3655 = !DILocalVariable(name: "ino", scope: !2, file: !3, line: 227, type: !3656)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_info", file: !3479, line: 52, size: 1024, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3657, file: !3479, line: 53, baseType: !59, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3657, file: !3479, line: 54, baseType: !6, size: 32, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "expire_complete", scope: !3657, file: !3479, line: 56, baseType: !833, size: 256, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3657, file: !3479, line: 58, baseType: !12, size: 128, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "expiring", scope: !3657, file: !3479, line: 60, baseType: !12, size: 128, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "sbi", scope: !3657, file: !3479, line: 62, baseType: !3477, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !3657, file: !3479, line: 63, baseType: !29, size: 64, offset: 704)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3657, file: !3479, line: 64, baseType: !6, size: 32, offset: 768)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3657, file: !3479, line: 66, baseType: !110, size: 32, offset: 800)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3657, file: !3479, line: 67, baseType: !119, size: 32, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3657, file: !3479, line: 68, baseType: !254, size: 128, align: 64, offset: 896)
!3670 = !DILocalVariable(name: "pgrp", scope: !2, file: !3, line: 228, type: !6)
!3671 = !DILocalVariable(name: "pgrp_set", scope: !2, file: !3, line: 229, type: !164)
!3672 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 230, type: !6)
!3673 = !DILabel(scope: !2, name: "fail_fput", file: !3, line: 345)
!3674 = !DILabel(scope: !2, name: "fail_put_pid", file: !3, line: 348)
!3675 = !DILabel(scope: !2, name: "fail_dput", file: !3, line: 350)
!3676 = !DILabel(scope: !2, name: "fail_ino", file: !3, line: 353)
!3677 = !DILabel(scope: !2, name: "fail_free", file: !3, line: 355)
!3678 = !{i32 7, !"Dwarf Version", i32 5}
!3679 = !{i32 2, !"Debug Info Version", i32 3}
!3680 = !{i32 1, !"wchar_size", i32 2}
!3681 = !{i32 8, !"cf-protection-branch", i32 1}
!3682 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3683 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3684 = !{i32 1, !"Code Model", i32 2}
!3685 = !{i32 1, !"override-stack-alignment", i32 8}
!3686 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3687 = distinct !DISubprogram(name: "autofs_new_ino", scope: !3, file: !3, line: 13, type: !3688, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!3656, !3477}
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "sbi", arg: 1, scope: !3687, file: !3, line: 13, type: !3477)
!3692 = !DILocalVariable(name: "ino", scope: !3687, file: !3, line: 15, type: !3656)
!3693 = !DILocation(line: 13, column: 59, scope: !3687)
!3694 = !DILocation(line: 15, column: 2, scope: !3687)
!3695 = !DILocation(line: 15, column: 22, scope: !3687)
!3696 = !DILocation(line: 17, column: 8, scope: !3687)
!3697 = !DILocation(line: 17, column: 6, scope: !3687)
!3698 = !DILocation(line: 18, column: 6, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 18, column: 6)
!3700 = !DILocation(line: 18, column: 6, scope: !3687)
!3701 = !DILocation(line: 19, column: 19, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 18, column: 11)
!3703 = !DILocation(line: 19, column: 24, scope: !3702)
!3704 = !DILocation(line: 19, column: 3, scope: !3702)
!3705 = !DILocation(line: 20, column: 19, scope: !3702)
!3706 = !DILocation(line: 20, column: 24, scope: !3702)
!3707 = !DILocation(line: 20, column: 3, scope: !3702)
!3708 = !DILocation(line: 21, column: 20, scope: !3702)
!3709 = !DILocation(line: 21, column: 3, scope: !3702)
!3710 = !DILocation(line: 21, column: 8, scope: !3702)
!3711 = !DILocation(line: 21, column: 18, scope: !3702)
!3712 = !DILocation(line: 22, column: 14, scope: !3702)
!3713 = !DILocation(line: 22, column: 3, scope: !3702)
!3714 = !DILocation(line: 22, column: 8, scope: !3702)
!3715 = !DILocation(line: 22, column: 12, scope: !3702)
!3716 = !DILocation(line: 23, column: 3, scope: !3702)
!3717 = !DILocation(line: 23, column: 8, scope: !3702)
!3718 = !DILocation(line: 23, column: 14, scope: !3702)
!3719 = !DILocation(line: 24, column: 2, scope: !3702)
!3720 = !DILocation(line: 25, column: 9, scope: !3687)
!3721 = !DILocation(line: 26, column: 1, scope: !3687)
!3722 = !DILocation(line: 25, column: 2, scope: !3687)
!3723 = distinct !DISubprogram(name: "kzalloc", scope: !3451, file: !3451, line: 719, type: !3724, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!151, !659, !723}
!3726 = !{!3727, !3728}
!3727 = !DILocalVariable(name: "size", arg: 1, scope: !3723, file: !3451, line: 719, type: !659)
!3728 = !DILocalVariable(name: "flags", arg: 2, scope: !3723, file: !3451, line: 719, type: !723)
!3729 = !DILocation(line: 719, column: 52, scope: !3723)
!3730 = !DILocation(line: 719, column: 64, scope: !3723)
!3731 = !DILocation(line: 721, column: 17, scope: !3723)
!3732 = !DILocation(line: 721, column: 23, scope: !3723)
!3733 = !DILocation(line: 721, column: 29, scope: !3723)
!3734 = !DILocation(line: 721, column: 9, scope: !3723)
!3735 = !DILocation(line: 721, column: 2, scope: !3723)
!3736 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3737, file: !3737, line: 35, type: !3738, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3740)
!3737 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !16}
!3740 = !{!3741}
!3741 = !DILocalVariable(name: "list", arg: 1, scope: !3736, file: !3737, line: 35, type: !16)
!3742 = !DILocation(line: 35, column: 53, scope: !3736)
!3743 = !DILocation(line: 37, column: 2, scope: !3736)
!3744 = !DILocation(line: 37, column: 2, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3736, file: !3737, line: 37, column: 2)
!3746 = !DILocation(line: 37, column: 2, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3745, file: !3737, line: 37, column: 2)
!3748 = !DILocation(line: 37, column: 2, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3745, file: !3737, line: 37, column: 2)
!3750 = !DILocation(line: 38, column: 2, scope: !3736)
!3751 = !DILocation(line: 38, column: 2, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3736, file: !3737, line: 38, column: 2)
!3753 = !DILocation(line: 38, column: 2, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3752, file: !3737, line: 38, column: 2)
!3755 = !DILocation(line: 38, column: 2, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !3737, line: 38, column: 2)
!3757 = !DILocation(line: 39, column: 1, scope: !3736)
!3758 = distinct !DISubprogram(name: "autofs_clean_ino", scope: !3, file: !3, line: 28, type: !3759, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{null, !3656}
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "ino", arg: 1, scope: !3758, file: !3, line: 28, type: !3656)
!3763 = !DILocation(line: 28, column: 43, scope: !3758)
!3764 = !DILocation(line: 30, column: 2, scope: !3758)
!3765 = !DILocation(line: 30, column: 7, scope: !3758)
!3766 = !DILocation(line: 30, column: 13, scope: !3758)
!3767 = !DILocation(line: 31, column: 2, scope: !3758)
!3768 = !DILocation(line: 31, column: 7, scope: !3758)
!3769 = !DILocation(line: 31, column: 13, scope: !3758)
!3770 = !DILocation(line: 32, column: 19, scope: !3758)
!3771 = !DILocation(line: 32, column: 2, scope: !3758)
!3772 = !DILocation(line: 32, column: 7, scope: !3758)
!3773 = !DILocation(line: 32, column: 17, scope: !3758)
!3774 = !DILocation(line: 33, column: 1, scope: !3758)
!3775 = distinct !DISubprogram(name: "autofs_free_ino", scope: !3, file: !3, line: 35, type: !3759, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3776)
!3776 = !{!3777, !3778}
!3777 = !DILocalVariable(name: "ino", arg: 1, scope: !3775, file: !3, line: 35, type: !3656)
!3778 = !DILocalVariable(name: "___p", scope: !3779, file: !3, line: 37, type: !3656)
!3779 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 37, column: 2)
!3780 = !DILocation(line: 35, column: 42, scope: !3775)
!3781 = !DILocation(line: 37, column: 2, scope: !3775)
!3782 = !DILocation(line: 37, column: 2, scope: !3779)
!3783 = !DILocation(line: 37, column: 2, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 37, column: 2)
!3785 = !DILocation(line: 37, column: 2, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 37, column: 2)
!3787 = !DILocation(line: 37, column: 2, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 37, column: 2)
!3789 = !DILocation(line: 38, column: 1, scope: !3775)
!3790 = !DISubprogram(name: "kvfree_call_rcu", scope: !3791, file: !3791, line: 37, type: !3792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3791 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!3792 = !DISubroutineType(types: !3793)
!3793 = !{null, !257, !151}
!3794 = distinct !DISubprogram(name: "autofs_kill_sb", scope: !3, file: !3, line: 40, type: !1787, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DILocalVariable(name: "sb", arg: 1, scope: !3794, file: !3, line: 40, type: !7)
!3797 = !DILocalVariable(name: "sbi", scope: !3794, file: !3, line: 42, type: !3477)
!3798 = !DILocalVariable(name: "___p", scope: !3799, file: !3, line: 59, type: !3477)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 59, column: 3)
!3800 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 58, column: 6)
!3801 = !DILocation(line: 40, column: 41, scope: !3794)
!3802 = !DILocation(line: 42, column: 2, scope: !3794)
!3803 = !DILocation(line: 42, column: 25, scope: !3794)
!3804 = !DILocation(line: 42, column: 42, scope: !3794)
!3805 = !DILocation(line: 42, column: 31, scope: !3794)
!3806 = !DILocation(line: 50, column: 6, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 50, column: 6)
!3808 = !DILocation(line: 50, column: 6, scope: !3794)
!3809 = !DILocation(line: 52, column: 25, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 50, column: 11)
!3811 = !DILocation(line: 52, column: 3, scope: !3810)
!3812 = !DILocation(line: 53, column: 11, scope: !3810)
!3813 = !DILocation(line: 53, column: 16, scope: !3810)
!3814 = !DILocation(line: 53, column: 3, scope: !3810)
!3815 = !DILocation(line: 54, column: 2, scope: !3810)
!3816 = !DILocation(line: 56, column: 2, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 56, column: 2)
!3818 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 56, column: 2)
!3819 = !DILocation(line: 56, column: 2, scope: !3818)
!3820 = !DILocation(line: 57, column: 20, scope: !3794)
!3821 = !DILocation(line: 57, column: 2, scope: !3794)
!3822 = !DILocation(line: 58, column: 6, scope: !3800)
!3823 = !DILocation(line: 58, column: 6, scope: !3794)
!3824 = !DILocation(line: 59, column: 3, scope: !3800)
!3825 = !DILocation(line: 59, column: 3, scope: !3799)
!3826 = !DILocation(line: 59, column: 3, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 59, column: 3)
!3828 = !DILocation(line: 59, column: 3, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 59, column: 3)
!3830 = !DILocation(line: 59, column: 3, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 59, column: 3)
!3832 = !DILocation(line: 60, column: 1, scope: !3794)
!3833 = distinct !DISubprogram(name: "autofs_sbi", scope: !3479, file: !3479, line: 129, type: !3834, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!3477, !7}
!3836 = !{!3837}
!3837 = !DILocalVariable(name: "sb", arg: 1, scope: !3833, file: !3479, line: 129, type: !7)
!3838 = !DILocation(line: 129, column: 69, scope: !3833)
!3839 = !DILocation(line: 131, column: 35, scope: !3833)
!3840 = !DILocation(line: 131, column: 39, scope: !3833)
!3841 = !DILocation(line: 131, column: 2, scope: !3833)
!3842 = !DISubprogram(name: "autofs_catatonic_mode", scope: !3479, file: !3479, line: 230, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3477}
!3845 = !DISubprogram(name: "put_pid", scope: !356, file: !356, line: 92, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !354}
!3848 = !DISubprogram(name: "kill_litter_super", scope: !9, file: !9, line: 2412, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3849 = !DILocation(line: 221, column: 43, scope: !2)
!3850 = !DILocation(line: 221, column: 52, scope: !2)
!3851 = !DILocation(line: 221, column: 62, scope: !2)
!3852 = !DILocation(line: 223, column: 2, scope: !2)
!3853 = !DILocation(line: 223, column: 16, scope: !2)
!3854 = !DILocation(line: 224, column: 2, scope: !2)
!3855 = !DILocation(line: 224, column: 17, scope: !2)
!3856 = !DILocation(line: 225, column: 2, scope: !2)
!3857 = !DILocation(line: 225, column: 15, scope: !2)
!3858 = !DILocation(line: 226, column: 2, scope: !2)
!3859 = !DILocation(line: 226, column: 25, scope: !2)
!3860 = !DILocation(line: 227, column: 2, scope: !2)
!3861 = !DILocation(line: 227, column: 22, scope: !2)
!3862 = !DILocation(line: 228, column: 2, scope: !2)
!3863 = !DILocation(line: 228, column: 6, scope: !2)
!3864 = !DILocation(line: 229, column: 2, scope: !2)
!3865 = !DILocation(line: 229, column: 7, scope: !2)
!3866 = !DILocation(line: 230, column: 2, scope: !2)
!3867 = !DILocation(line: 230, column: 6, scope: !2)
!3868 = !DILocation(line: 232, column: 8, scope: !2)
!3869 = !DILocation(line: 232, column: 6, scope: !2)
!3870 = !DILocation(line: 233, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !2, file: !3, line: 233, column: 6)
!3872 = !DILocation(line: 233, column: 6, scope: !2)
!3873 = !DILocation(line: 234, column: 3, scope: !3871)
!3874 = !DILocation(line: 235, column: 2, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 235, column: 2)
!3876 = distinct !DILexicalBlock(scope: !2, file: !3, line: 235, column: 2)
!3877 = !DILocation(line: 235, column: 2, scope: !3876)
!3878 = !DILocation(line: 237, column: 17, scope: !2)
!3879 = !DILocation(line: 237, column: 2, scope: !2)
!3880 = !DILocation(line: 237, column: 5, scope: !2)
!3881 = !DILocation(line: 237, column: 15, scope: !2)
!3882 = !DILocation(line: 238, column: 2, scope: !2)
!3883 = !DILocation(line: 238, column: 7, scope: !2)
!3884 = !DILocation(line: 238, column: 13, scope: !2)
!3885 = !DILocation(line: 239, column: 2, scope: !2)
!3886 = !DILocation(line: 239, column: 7, scope: !2)
!3887 = !DILocation(line: 239, column: 14, scope: !2)
!3888 = !DILocation(line: 240, column: 2, scope: !2)
!3889 = !DILocation(line: 240, column: 7, scope: !2)
!3890 = !DILocation(line: 240, column: 12, scope: !2)
!3891 = !DILocation(line: 241, column: 2, scope: !2)
!3892 = !DILocation(line: 241, column: 7, scope: !2)
!3893 = !DILocation(line: 241, column: 19, scope: !2)
!3894 = !DILocation(line: 242, column: 2, scope: !2)
!3895 = !DILocation(line: 242, column: 7, scope: !2)
!3896 = !DILocation(line: 242, column: 15, scope: !2)
!3897 = !DILocation(line: 243, column: 12, scope: !2)
!3898 = !DILocation(line: 243, column: 2, scope: !2)
!3899 = !DILocation(line: 243, column: 7, scope: !2)
!3900 = !DILocation(line: 243, column: 10, scope: !2)
!3901 = !DILocation(line: 244, column: 2, scope: !2)
!3902 = !DILocation(line: 244, column: 7, scope: !2)
!3903 = !DILocation(line: 244, column: 15, scope: !2)
!3904 = !DILocation(line: 245, column: 2, scope: !2)
!3905 = !DILocation(line: 245, column: 7, scope: !2)
!3906 = !DILocation(line: 245, column: 19, scope: !2)
!3907 = !DILocation(line: 246, column: 2, scope: !2)
!3908 = !DILocation(line: 246, column: 7, scope: !2)
!3909 = !DILocation(line: 246, column: 13, scope: !2)
!3910 = !DILocation(line: 247, column: 28, scope: !2)
!3911 = !DILocation(line: 247, column: 33, scope: !2)
!3912 = !DILocation(line: 247, column: 2, scope: !2)
!3913 = !DILocation(line: 248, column: 2, scope: !2)
!3914 = !DILocation(line: 248, column: 7, scope: !2)
!3915 = !DILocation(line: 248, column: 17, scope: !2)
!3916 = !DILocation(line: 249, column: 2, scope: !2)
!3917 = !DILocation(line: 249, column: 7, scope: !2)
!3918 = !DILocation(line: 249, column: 17, scope: !2)
!3919 = !DILocation(line: 250, column: 2, scope: !2)
!3920 = !DILocation(line: 250, column: 2, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !2, file: !3, line: 250, column: 2)
!3922 = !DILocation(line: 251, column: 2, scope: !2)
!3923 = !DILocation(line: 251, column: 2, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !2, file: !3, line: 251, column: 2)
!3925 = !DILocation(line: 252, column: 2, scope: !2)
!3926 = !DILocation(line: 252, column: 2, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !2, file: !3, line: 252, column: 2)
!3928 = !DILocation(line: 253, column: 2, scope: !2)
!3929 = !DILocation(line: 253, column: 7, scope: !2)
!3930 = !DILocation(line: 253, column: 14, scope: !2)
!3931 = !DILocation(line: 254, column: 2, scope: !2)
!3932 = !DILocation(line: 254, column: 2, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !2, file: !3, line: 254, column: 2)
!3934 = !DILocation(line: 255, column: 18, scope: !2)
!3935 = !DILocation(line: 255, column: 23, scope: !2)
!3936 = !DILocation(line: 255, column: 2, scope: !2)
!3937 = !DILocation(line: 256, column: 18, scope: !2)
!3938 = !DILocation(line: 256, column: 23, scope: !2)
!3939 = !DILocation(line: 256, column: 2, scope: !2)
!3940 = !DILocation(line: 257, column: 2, scope: !2)
!3941 = !DILocation(line: 257, column: 5, scope: !2)
!3942 = !DILocation(line: 257, column: 17, scope: !2)
!3943 = !DILocation(line: 258, column: 2, scope: !2)
!3944 = !DILocation(line: 258, column: 5, scope: !2)
!3945 = !DILocation(line: 258, column: 22, scope: !2)
!3946 = !DILocation(line: 259, column: 2, scope: !2)
!3947 = !DILocation(line: 259, column: 5, scope: !2)
!3948 = !DILocation(line: 259, column: 13, scope: !2)
!3949 = !DILocation(line: 260, column: 2, scope: !2)
!3950 = !DILocation(line: 260, column: 5, scope: !2)
!3951 = !DILocation(line: 260, column: 10, scope: !2)
!3952 = !DILocation(line: 261, column: 2, scope: !2)
!3953 = !DILocation(line: 261, column: 5, scope: !2)
!3954 = !DILocation(line: 261, column: 12, scope: !2)
!3955 = !DILocation(line: 262, column: 2, scope: !2)
!3956 = !DILocation(line: 262, column: 5, scope: !2)
!3957 = !DILocation(line: 262, column: 17, scope: !2)
!3958 = !DILocation(line: 267, column: 23, scope: !2)
!3959 = !DILocation(line: 267, column: 8, scope: !2)
!3960 = !DILocation(line: 267, column: 6, scope: !2)
!3961 = !DILocation(line: 268, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !2, file: !3, line: 268, column: 6)
!3963 = !DILocation(line: 268, column: 6, scope: !2)
!3964 = !DILocation(line: 269, column: 7, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 268, column: 12)
!3966 = !DILocation(line: 270, column: 3, scope: !3965)
!3967 = !DILocation(line: 272, column: 32, scope: !2)
!3968 = !DILocation(line: 272, column: 15, scope: !2)
!3969 = !DILocation(line: 272, column: 13, scope: !2)
!3970 = !DILocation(line: 273, column: 21, scope: !2)
!3971 = !DILocation(line: 273, column: 9, scope: !2)
!3972 = !DILocation(line: 273, column: 7, scope: !2)
!3973 = !DILocation(line: 274, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !2, file: !3, line: 274, column: 6)
!3975 = !DILocation(line: 274, column: 6, scope: !2)
!3976 = !DILocation(line: 275, column: 7, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 274, column: 13)
!3978 = !DILocation(line: 276, column: 3, scope: !3977)
!3979 = !DILocation(line: 278, column: 7, scope: !2)
!3980 = !DILocation(line: 280, column: 19, scope: !2)
!3981 = !DILocation(line: 280, column: 2, scope: !2)
!3982 = !DILocation(line: 280, column: 8, scope: !2)
!3983 = !DILocation(line: 280, column: 17, scope: !2)
!3984 = !DILocation(line: 283, column: 20, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !2, file: !3, line: 283, column: 6)
!3986 = !DILocation(line: 283, column: 26, scope: !3985)
!3987 = !DILocation(line: 283, column: 56, scope: !3985)
!3988 = !DILocation(line: 283, column: 6, scope: !3985)
!3989 = !DILocation(line: 283, column: 6, scope: !2)
!3990 = !DILocation(line: 284, column: 3, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 284, column: 3)
!3992 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 283, column: 62)
!3993 = !DILocation(line: 284, column: 3, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 284, column: 3)
!3995 = !DILocation(line: 285, column: 3, scope: !3992)
!3996 = !DILocation(line: 289, column: 6, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !2, file: !3, line: 289, column: 6)
!3998 = !DILocation(line: 289, column: 11, scope: !3997)
!3999 = !DILocation(line: 289, column: 21, scope: !3997)
!4000 = !DILocation(line: 289, column: 48, scope: !3997)
!4001 = !DILocation(line: 290, column: 6, scope: !3997)
!4002 = !DILocation(line: 290, column: 11, scope: !3997)
!4003 = !DILocation(line: 290, column: 21, scope: !3997)
!4004 = !DILocation(line: 289, column: 6, scope: !2)
!4005 = !DILocation(line: 291, column: 3, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 291, column: 3)
!4007 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 290, column: 49)
!4008 = !DILocation(line: 291, column: 3, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 291, column: 3)
!4010 = !DILocation(line: 295, column: 3, scope: !4007)
!4011 = !DILocation(line: 299, column: 6, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !2, file: !3, line: 299, column: 6)
!4013 = !DILocation(line: 299, column: 11, scope: !4012)
!4014 = !DILocation(line: 299, column: 21, scope: !4012)
!4015 = !DILocation(line: 299, column: 6, scope: !2)
!4016 = !DILocation(line: 300, column: 3, scope: !4012)
!4017 = !DILocation(line: 300, column: 8, scope: !4012)
!4018 = !DILocation(line: 300, column: 16, scope: !4012)
!4019 = !DILocation(line: 302, column: 18, scope: !4012)
!4020 = !DILocation(line: 302, column: 23, scope: !4012)
!4021 = !DILocation(line: 302, column: 3, scope: !4012)
!4022 = !DILocation(line: 302, column: 8, scope: !4012)
!4023 = !DILocation(line: 302, column: 16, scope: !4012)
!4024 = !DILocation(line: 303, column: 2, scope: !2)
!4025 = !DILocation(line: 303, column: 7, scope: !2)
!4026 = !DILocation(line: 303, column: 19, scope: !2)
!4027 = !DILocation(line: 305, column: 6, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !2, file: !3, line: 305, column: 6)
!4029 = !{i8 0, i8 2}
!4030 = !DILocation(line: 305, column: 6, scope: !2)
!4031 = !DILocation(line: 306, column: 31, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 305, column: 16)
!4033 = !DILocation(line: 306, column: 18, scope: !4032)
!4034 = !DILocation(line: 306, column: 3, scope: !4032)
!4035 = !DILocation(line: 306, column: 8, scope: !4032)
!4036 = !DILocation(line: 306, column: 16, scope: !4032)
!4037 = !DILocation(line: 307, column: 8, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 307, column: 7)
!4039 = !DILocation(line: 307, column: 13, scope: !4038)
!4040 = !DILocation(line: 307, column: 7, scope: !4032)
!4041 = !DILocation(line: 308, column: 4, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 308, column: 4)
!4043 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 307, column: 22)
!4044 = !DILocation(line: 308, column: 4, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 308, column: 4)
!4046 = !DILocation(line: 310, column: 4, scope: !4043)
!4047 = !DILocation(line: 312, column: 2, scope: !4032)
!4048 = !DILocation(line: 313, column: 31, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 312, column: 9)
!4050 = !DILocation(line: 313, column: 18, scope: !4049)
!4051 = !DILocation(line: 313, column: 3, scope: !4049)
!4052 = !DILocation(line: 313, column: 8, scope: !4049)
!4053 = !DILocation(line: 313, column: 16, scope: !4049)
!4054 = !DILocation(line: 316, column: 26, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !2, file: !3, line: 316, column: 6)
!4056 = !DILocation(line: 316, column: 31, scope: !4055)
!4057 = !DILocation(line: 316, column: 6, scope: !4055)
!4058 = !DILocation(line: 316, column: 6, scope: !2)
!4059 = !DILocation(line: 317, column: 32, scope: !4055)
!4060 = !DILocation(line: 317, column: 3, scope: !4055)
!4061 = !DILocation(line: 319, column: 2, scope: !2)
!4062 = !DILocation(line: 319, column: 14, scope: !2)
!4063 = !DILocation(line: 319, column: 20, scope: !2)
!4064 = !DILocation(line: 320, column: 2, scope: !2)
!4065 = !DILocation(line: 320, column: 14, scope: !2)
!4066 = !DILocation(line: 320, column: 19, scope: !2)
!4067 = !DILocation(line: 322, column: 2, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 322, column: 2)
!4069 = distinct !DILexicalBlock(scope: !2, file: !3, line: 322, column: 2)
!4070 = !DILocation(line: 322, column: 2, scope: !4069)
!4071 = !DILocation(line: 324, column: 14, scope: !2)
!4072 = !DILocation(line: 324, column: 19, scope: !2)
!4073 = !DILocation(line: 324, column: 9, scope: !2)
!4074 = !DILocation(line: 324, column: 7, scope: !2)
!4075 = !DILocation(line: 326, column: 7, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !2, file: !3, line: 326, column: 6)
!4077 = !DILocation(line: 326, column: 6, scope: !2)
!4078 = !DILocation(line: 327, column: 3, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 327, column: 3)
!4080 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 326, column: 13)
!4081 = !DILocation(line: 327, column: 3, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 327, column: 3)
!4083 = !DILocation(line: 328, column: 3, scope: !4080)
!4084 = !DILocation(line: 330, column: 28, scope: !2)
!4085 = !DILocation(line: 330, column: 8, scope: !2)
!4086 = !DILocation(line: 330, column: 6, scope: !2)
!4087 = !DILocation(line: 331, column: 6, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !2, file: !3, line: 331, column: 6)
!4089 = !DILocation(line: 331, column: 10, scope: !4088)
!4090 = !DILocation(line: 331, column: 6, scope: !2)
!4091 = !DILocation(line: 332, column: 3, scope: !4088)
!4092 = !DILocation(line: 333, column: 14, scope: !2)
!4093 = !DILocation(line: 333, column: 2, scope: !2)
!4094 = !DILocation(line: 333, column: 7, scope: !2)
!4095 = !DILocation(line: 333, column: 12, scope: !2)
!4096 = !DILocation(line: 334, column: 2, scope: !2)
!4097 = !DILocation(line: 334, column: 7, scope: !2)
!4098 = !DILocation(line: 334, column: 13, scope: !2)
!4099 = !DILocation(line: 339, column: 14, scope: !2)
!4100 = !DILocation(line: 339, column: 2, scope: !2)
!4101 = !DILocation(line: 339, column: 5, scope: !2)
!4102 = !DILocation(line: 339, column: 12, scope: !2)
!4103 = !DILocation(line: 340, column: 2, scope: !2)
!4104 = !DILocation(line: 345, column: 1, scope: !2)
!4105 = !DILocation(line: 346, column: 2, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !2, file: !3, line: 346, column: 2)
!4107 = !DILocation(line: 346, column: 2, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 346, column: 2)
!4109 = !DILocation(line: 347, column: 7, scope: !2)
!4110 = !DILocation(line: 347, column: 2, scope: !2)
!4111 = !DILocation(line: 348, column: 1, scope: !2)
!4112 = !DILocation(line: 349, column: 10, scope: !2)
!4113 = !DILocation(line: 349, column: 15, scope: !2)
!4114 = !DILocation(line: 349, column: 2, scope: !2)
!4115 = !DILocation(line: 350, column: 1, scope: !2)
!4116 = !DILocation(line: 351, column: 7, scope: !2)
!4117 = !DILocation(line: 351, column: 2, scope: !2)
!4118 = !DILocation(line: 352, column: 2, scope: !2)
!4119 = !DILocation(line: 353, column: 1, scope: !2)
!4120 = !DILocation(line: 354, column: 18, scope: !2)
!4121 = !DILocation(line: 354, column: 2, scope: !2)
!4122 = !DILocation(line: 355, column: 1, scope: !2)
!4123 = !DILocation(line: 356, column: 8, scope: !2)
!4124 = !DILocation(line: 356, column: 2, scope: !2)
!4125 = !DILocation(line: 357, column: 2, scope: !2)
!4126 = !DILocation(line: 357, column: 5, scope: !2)
!4127 = !DILocation(line: 357, column: 15, scope: !2)
!4128 = !DILocation(line: 358, column: 9, scope: !2)
!4129 = !DILocation(line: 358, column: 2, scope: !2)
!4130 = !DILocation(line: 359, column: 1, scope: !2)
!4131 = distinct !DISubprogram(name: "set_autofs_type_indirect", scope: !3504, file: !3504, line: 103, type: !4132, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !2161}
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "type", arg: 1, scope: !4131, file: !3504, line: 103, type: !2161)
!4136 = !DILocation(line: 103, column: 59, scope: !4131)
!4137 = !DILocation(line: 105, column: 3, scope: !4131)
!4138 = !DILocation(line: 105, column: 8, scope: !4131)
!4139 = !DILocation(line: 106, column: 1, scope: !4131)
!4140 = !DISubprogram(name: "__mutex_init", scope: !314, file: !314, line: 121, type: !4141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{null, !4143, !40, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!4145 = distinct !DISubprogram(name: "spinlock_check", scope: !4146, file: !4146, line: 324, type: !4147, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4150)
!4146 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!4149, !1178}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!4150 = !{!4151}
!4151 = !DILocalVariable(name: "lock", arg: 1, scope: !4145, file: !4146, line: 324, type: !1178)
!4152 = !DILocation(line: 324, column: 67, scope: !4145)
!4153 = !DILocation(line: 326, column: 10, scope: !4145)
!4154 = !DILocation(line: 326, column: 16, scope: !4145)
!4155 = !DILocation(line: 326, column: 2, scope: !4145)
!4156 = distinct !DISubprogram(name: "autofs_get_inode", scope: !3, file: !3, line: 361, type: !4157, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!102, !7, !106}
!4159 = !{!4160, !4161, !4162, !4163, !4167}
!4160 = !DILocalVariable(name: "sb", arg: 1, scope: !4156, file: !3, line: 361, type: !7)
!4161 = !DILocalVariable(name: "mode", arg: 2, scope: !4156, file: !3, line: 361, type: !106)
!4162 = !DILocalVariable(name: "inode", scope: !4156, file: !3, line: 363, type: !102)
!4163 = !DILocalVariable(name: "__ret_warn_on", scope: !4164, file: !3, line: 383, type: !6)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 383, column: 3)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 380, column: 13)
!4166 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 376, column: 6)
!4167 = !DILocalVariable(name: "__flags", scope: !4168, file: !3, line: 383, type: !6)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 383, column: 3)
!4169 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 383, column: 3)
!4170 = !DILocation(line: 361, column: 52, scope: !4156)
!4171 = !DILocation(line: 361, column: 64, scope: !4156)
!4172 = !DILocation(line: 363, column: 2, scope: !4156)
!4173 = !DILocation(line: 363, column: 16, scope: !4156)
!4174 = !DILocation(line: 363, column: 34, scope: !4156)
!4175 = !DILocation(line: 363, column: 24, scope: !4156)
!4176 = !DILocation(line: 365, column: 6, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 365, column: 6)
!4178 = !DILocation(line: 365, column: 12, scope: !4177)
!4179 = !DILocation(line: 365, column: 6, scope: !4156)
!4180 = !DILocation(line: 366, column: 3, scope: !4177)
!4181 = !DILocation(line: 368, column: 18, scope: !4156)
!4182 = !DILocation(line: 368, column: 2, scope: !4156)
!4183 = !DILocation(line: 368, column: 9, scope: !4156)
!4184 = !DILocation(line: 368, column: 16, scope: !4156)
!4185 = !DILocation(line: 369, column: 6, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 369, column: 6)
!4187 = !DILocation(line: 369, column: 10, scope: !4186)
!4188 = !DILocation(line: 369, column: 6, scope: !4156)
!4189 = !DILocation(line: 370, column: 3, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 369, column: 18)
!4191 = !DILocation(line: 370, column: 10, scope: !4190)
!4192 = !DILocation(line: 370, column: 26, scope: !4190)
!4193 = !DILocation(line: 370, column: 30, scope: !4190)
!4194 = !DILocation(line: 370, column: 18, scope: !4190)
!4195 = !DILocation(line: 370, column: 39, scope: !4190)
!4196 = !DILocation(line: 371, column: 3, scope: !4190)
!4197 = !DILocation(line: 371, column: 10, scope: !4190)
!4198 = !DILocation(line: 371, column: 26, scope: !4190)
!4199 = !DILocation(line: 371, column: 30, scope: !4190)
!4200 = !DILocation(line: 371, column: 18, scope: !4190)
!4201 = !DILocation(line: 371, column: 39, scope: !4190)
!4202 = !DILocation(line: 372, column: 2, scope: !4190)
!4203 = !DILocation(line: 373, column: 2, scope: !4156)
!4204 = !DILocation(line: 373, column: 9, scope: !4156)
!4205 = !DILocation(line: 373, column: 19, scope: !4156)
!4206 = !DILocation(line: 373, column: 26, scope: !4156)
!4207 = !DILocation(line: 373, column: 36, scope: !4156)
!4208 = !DILocation(line: 373, column: 60, scope: !4156)
!4209 = !DILocation(line: 373, column: 34, scope: !4156)
!4210 = !DILocation(line: 374, column: 17, scope: !4156)
!4211 = !DILocation(line: 374, column: 2, scope: !4156)
!4212 = !DILocation(line: 374, column: 9, scope: !4156)
!4213 = !DILocation(line: 374, column: 15, scope: !4156)
!4214 = !DILocation(line: 376, column: 6, scope: !4166)
!4215 = !DILocation(line: 376, column: 6, scope: !4156)
!4216 = !DILocation(line: 377, column: 13, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 376, column: 21)
!4218 = !DILocation(line: 377, column: 3, scope: !4217)
!4219 = !DILocation(line: 378, column: 3, scope: !4217)
!4220 = !DILocation(line: 378, column: 10, scope: !4217)
!4221 = !DILocation(line: 378, column: 15, scope: !4217)
!4222 = !DILocation(line: 379, column: 3, scope: !4217)
!4223 = !DILocation(line: 379, column: 10, scope: !4217)
!4224 = !DILocation(line: 379, column: 16, scope: !4217)
!4225 = !DILocation(line: 380, column: 2, scope: !4217)
!4226 = !DILocation(line: 380, column: 13, scope: !4165)
!4227 = !DILocation(line: 380, column: 13, scope: !4166)
!4228 = !DILocation(line: 381, column: 3, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 380, column: 28)
!4230 = !DILocation(line: 381, column: 10, scope: !4229)
!4231 = !DILocation(line: 381, column: 15, scope: !4229)
!4232 = !DILocation(line: 382, column: 2, scope: !4229)
!4233 = !DILocation(line: 383, column: 3, scope: !4164)
!4234 = !DILocation(line: 383, column: 3, scope: !4169)
!4235 = !DILocation(line: 383, column: 3, scope: !4168)
!4236 = !DILocation(line: 383, column: 3, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 383, column: 3)
!4238 = !DILocation(line: 383, column: 3, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 383, column: 3)
!4240 = !{i64 2154222594, i64 2154222623, i64 2154222669, i64 2154222727, i64 2154222781, i64 2154222835, i64 2154222890, i64 2154222921, i64 2154223229, i64 2154223235, i64 2154223282, i64 2154223305, i64 2154223331}
!4241 = !DILocation(line: 383, column: 3, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 383, column: 3)
!4243 = !DILocation(line: 383, column: 3, scope: !4165)
!4244 = !DILocation(line: 385, column: 9, scope: !4156)
!4245 = !DILocation(line: 385, column: 2, scope: !4156)
!4246 = !DILocation(line: 386, column: 1, scope: !4156)
!4247 = !DISubprogram(name: "d_make_root", scope: !61, file: !61, line: 249, type: !4248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!59, !102}
!4250 = distinct !DISubprogram(name: "parse_options", scope: !3, file: !3, line: 132, type: !4251, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!6, !170, !102, !1856, !1292, !3477}
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4267, !4268, !4269, !4270, !4271}
!4254 = !DILocalVariable(name: "options", arg: 1, scope: !4250, file: !3, line: 132, type: !170)
!4255 = !DILocalVariable(name: "root", arg: 2, scope: !4250, file: !3, line: 133, type: !102)
!4256 = !DILocalVariable(name: "pgrp", arg: 3, scope: !4250, file: !3, line: 133, type: !1856)
!4257 = !DILocalVariable(name: "pgrp_set", arg: 4, scope: !4250, file: !3, line: 133, type: !1292)
!4258 = !DILocalVariable(name: "sbi", arg: 5, scope: !4250, file: !3, line: 134, type: !3477)
!4259 = !DILocalVariable(name: "p", scope: !4250, file: !3, line: 136, type: !170)
!4260 = !DILocalVariable(name: "args", scope: !4250, file: !3, line: 137, type: !4261)
!4261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4262, size: 384, elements: !350)
!4262 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !3643, line: 28, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3643, line: 25, size: 128, elements: !4264)
!4264 = !{!4265, !4266}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4263, file: !3643, line: 26, baseType: !170, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4263, file: !3643, line: 27, baseType: !170, size: 64, offset: 64)
!4267 = !DILocalVariable(name: "option", scope: !4250, file: !3, line: 138, type: !6)
!4268 = !DILocalVariable(name: "pipefd", scope: !4250, file: !3, line: 139, type: !6)
!4269 = !DILocalVariable(name: "uid", scope: !4250, file: !3, line: 140, type: !110)
!4270 = !DILocalVariable(name: "gid", scope: !4250, file: !3, line: 141, type: !119)
!4271 = !DILocalVariable(name: "token", scope: !4272, file: !3, line: 155, type: !6)
!4272 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 154, column: 46)
!4273 = !DILocation(line: 132, column: 32, scope: !4250)
!4274 = !DILocation(line: 133, column: 19, scope: !4250)
!4275 = !DILocation(line: 133, column: 30, scope: !4250)
!4276 = !DILocation(line: 133, column: 42, scope: !4250)
!4277 = !DILocation(line: 134, column: 28, scope: !4250)
!4278 = !DILocation(line: 136, column: 2, scope: !4250)
!4279 = !DILocation(line: 136, column: 8, scope: !4250)
!4280 = !DILocation(line: 137, column: 2, scope: !4250)
!4281 = !DILocation(line: 137, column: 14, scope: !4250)
!4282 = !DILocation(line: 138, column: 2, scope: !4250)
!4283 = !DILocation(line: 138, column: 6, scope: !4250)
!4284 = !DILocation(line: 139, column: 2, scope: !4250)
!4285 = !DILocation(line: 139, column: 6, scope: !4250)
!4286 = !DILocation(line: 140, column: 2, scope: !4250)
!4287 = !DILocation(line: 140, column: 9, scope: !4250)
!4288 = !DILocation(line: 141, column: 2, scope: !4250)
!4289 = !DILocation(line: 141, column: 9, scope: !4250)
!4290 = !DILocation(line: 143, column: 2, scope: !4250)
!4291 = !DILocation(line: 143, column: 8, scope: !4250)
!4292 = !DILocation(line: 143, column: 16, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 143, column: 16)
!4294 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 143, column: 16)
!4295 = !DILocation(line: 143, column: 16, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 143, column: 16)
!4297 = !DILocation(line: 143, column: 16, scope: !4294)
!4298 = !DILocation(line: 144, column: 2, scope: !4250)
!4299 = !DILocation(line: 144, column: 8, scope: !4250)
!4300 = !DILocation(line: 144, column: 16, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 144, column: 16)
!4302 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 144, column: 16)
!4303 = !DILocation(line: 144, column: 16, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 144, column: 16)
!4305 = !DILocation(line: 144, column: 16, scope: !4302)
!4306 = !DILocation(line: 146, column: 2, scope: !4250)
!4307 = !DILocation(line: 146, column: 7, scope: !4250)
!4308 = !DILocation(line: 146, column: 17, scope: !4250)
!4309 = !DILocation(line: 147, column: 2, scope: !4250)
!4310 = !DILocation(line: 147, column: 7, scope: !4250)
!4311 = !DILocation(line: 147, column: 17, scope: !4250)
!4312 = !DILocation(line: 149, column: 2, scope: !4250)
!4313 = !DILocation(line: 149, column: 7, scope: !4250)
!4314 = !DILocation(line: 149, column: 14, scope: !4250)
!4315 = !DILocation(line: 151, column: 7, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 151, column: 6)
!4317 = !DILocation(line: 151, column: 6, scope: !4250)
!4318 = !DILocation(line: 152, column: 3, scope: !4316)
!4319 = !DILocation(line: 154, column: 2, scope: !4250)
!4320 = !DILocation(line: 154, column: 14, scope: !4250)
!4321 = !DILocation(line: 154, column: 12, scope: !4250)
!4322 = !DILocation(line: 154, column: 37, scope: !4250)
!4323 = !DILocation(line: 155, column: 3, scope: !4272)
!4324 = !DILocation(line: 155, column: 7, scope: !4272)
!4325 = !DILocation(line: 157, column: 9, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 157, column: 7)
!4327 = !DILocation(line: 157, column: 8, scope: !4326)
!4328 = !DILocation(line: 157, column: 7, scope: !4272)
!4329 = !DILocation(line: 158, column: 4, scope: !4326)
!4330 = distinct !{!4330, !4319, !4331, !4332, !4333}
!4331 = !DILocation(line: 217, column: 2, scope: !4250)
!4332 = !{!"llvm.loop.mustprogress"}
!4333 = !{!"llvm.loop.unroll.disable"}
!4334 = !DILocation(line: 160, column: 23, scope: !4272)
!4335 = !DILocation(line: 160, column: 34, scope: !4272)
!4336 = !DILocation(line: 160, column: 11, scope: !4272)
!4337 = !DILocation(line: 160, column: 9, scope: !4272)
!4338 = !DILocation(line: 161, column: 11, scope: !4272)
!4339 = !DILocation(line: 161, column: 3, scope: !4272)
!4340 = !DILocation(line: 163, column: 18, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 163, column: 8)
!4342 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 161, column: 18)
!4343 = !DILocation(line: 163, column: 8, scope: !4341)
!4344 = !DILocation(line: 163, column: 8, scope: !4342)
!4345 = !DILocation(line: 164, column: 5, scope: !4341)
!4346 = !DILocation(line: 165, column: 18, scope: !4342)
!4347 = !DILocation(line: 165, column: 4, scope: !4342)
!4348 = !DILocation(line: 165, column: 9, scope: !4342)
!4349 = !DILocation(line: 165, column: 16, scope: !4342)
!4350 = !DILocation(line: 166, column: 4, scope: !4342)
!4351 = !DILocation(line: 168, column: 18, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 168, column: 8)
!4353 = !DILocation(line: 168, column: 8, scope: !4352)
!4354 = !DILocation(line: 168, column: 8, scope: !4342)
!4355 = !DILocation(line: 169, column: 5, scope: !4352)
!4356 = !DILocation(line: 170, column: 10, scope: !4342)
!4357 = !DILocation(line: 170, column: 20, scope: !4342)
!4358 = !DILocation(line: 170, column: 39, scope: !4342)
!4359 = !DILocation(line: 171, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 171, column: 8)
!4361 = !DILocation(line: 171, column: 8, scope: !4342)
!4362 = !DILocation(line: 172, column: 5, scope: !4360)
!4363 = !DILocation(line: 173, column: 4, scope: !4342)
!4364 = !DILocation(line: 173, column: 10, scope: !4342)
!4365 = !DILocation(line: 173, column: 18, scope: !4342)
!4366 = !DILocation(line: 174, column: 4, scope: !4342)
!4367 = !DILocation(line: 176, column: 18, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 176, column: 8)
!4369 = !DILocation(line: 176, column: 8, scope: !4368)
!4370 = !DILocation(line: 176, column: 8, scope: !4342)
!4371 = !DILocation(line: 177, column: 5, scope: !4368)
!4372 = !DILocation(line: 178, column: 10, scope: !4342)
!4373 = !DILocation(line: 178, column: 20, scope: !4342)
!4374 = !DILocation(line: 178, column: 39, scope: !4342)
!4375 = !DILocation(line: 179, column: 9, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 179, column: 8)
!4377 = !DILocation(line: 179, column: 8, scope: !4342)
!4378 = !DILocation(line: 180, column: 5, scope: !4376)
!4379 = !DILocation(line: 181, column: 4, scope: !4342)
!4380 = !DILocation(line: 181, column: 10, scope: !4342)
!4381 = !DILocation(line: 181, column: 18, scope: !4342)
!4382 = !DILocation(line: 182, column: 4, scope: !4342)
!4383 = !DILocation(line: 184, column: 18, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 184, column: 8)
!4385 = !DILocation(line: 184, column: 8, scope: !4384)
!4386 = !DILocation(line: 184, column: 8, scope: !4342)
!4387 = !DILocation(line: 185, column: 5, scope: !4384)
!4388 = !DILocation(line: 186, column: 12, scope: !4342)
!4389 = !DILocation(line: 186, column: 5, scope: !4342)
!4390 = !DILocation(line: 186, column: 10, scope: !4342)
!4391 = !DILocation(line: 187, column: 5, scope: !4342)
!4392 = !DILocation(line: 187, column: 14, scope: !4342)
!4393 = !DILocation(line: 188, column: 4, scope: !4342)
!4394 = !DILocation(line: 190, column: 18, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 190, column: 8)
!4396 = !DILocation(line: 190, column: 8, scope: !4395)
!4397 = !DILocation(line: 190, column: 8, scope: !4342)
!4398 = !DILocation(line: 191, column: 5, scope: !4395)
!4399 = !DILocation(line: 192, column: 21, scope: !4342)
!4400 = !DILocation(line: 192, column: 4, scope: !4342)
!4401 = !DILocation(line: 192, column: 9, scope: !4342)
!4402 = !DILocation(line: 192, column: 19, scope: !4342)
!4403 = !DILocation(line: 193, column: 4, scope: !4342)
!4404 = !DILocation(line: 195, column: 18, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 195, column: 8)
!4406 = !DILocation(line: 195, column: 8, scope: !4405)
!4407 = !DILocation(line: 195, column: 8, scope: !4342)
!4408 = !DILocation(line: 196, column: 5, scope: !4405)
!4409 = !DILocation(line: 197, column: 21, scope: !4342)
!4410 = !DILocation(line: 197, column: 4, scope: !4342)
!4411 = !DILocation(line: 197, column: 9, scope: !4342)
!4412 = !DILocation(line: 197, column: 19, scope: !4342)
!4413 = !DILocation(line: 198, column: 4, scope: !4342)
!4414 = !DILocation(line: 200, column: 30, scope: !4342)
!4415 = !DILocation(line: 200, column: 35, scope: !4342)
!4416 = !DILocation(line: 200, column: 4, scope: !4342)
!4417 = !DILocation(line: 201, column: 4, scope: !4342)
!4418 = !DILocation(line: 203, column: 28, scope: !4342)
!4419 = !DILocation(line: 203, column: 33, scope: !4342)
!4420 = !DILocation(line: 203, column: 4, scope: !4342)
!4421 = !DILocation(line: 204, column: 4, scope: !4342)
!4422 = !DILocation(line: 206, column: 28, scope: !4342)
!4423 = !DILocation(line: 206, column: 33, scope: !4342)
!4424 = !DILocation(line: 206, column: 4, scope: !4342)
!4425 = !DILocation(line: 207, column: 4, scope: !4342)
!4426 = !DILocation(line: 209, column: 4, scope: !4342)
!4427 = !DILocation(line: 209, column: 9, scope: !4342)
!4428 = !DILocation(line: 209, column: 15, scope: !4342)
!4429 = !DILocation(line: 210, column: 4, scope: !4342)
!4430 = !DILocation(line: 212, column: 4, scope: !4342)
!4431 = !DILocation(line: 212, column: 9, scope: !4342)
!4432 = !DILocation(line: 212, column: 15, scope: !4342)
!4433 = !DILocation(line: 213, column: 4, scope: !4342)
!4434 = !DILocation(line: 215, column: 4, scope: !4342)
!4435 = !DILocation(line: 218, column: 10, scope: !4250)
!4436 = !DILocation(line: 218, column: 15, scope: !4250)
!4437 = !DILocation(line: 218, column: 22, scope: !4250)
!4438 = !DILocation(line: 218, column: 2, scope: !4250)
!4439 = !DILocation(line: 219, column: 1, scope: !4250)
!4440 = !DISubprogram(name: "_printk", scope: !4441, file: !4441, line: 153, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4441 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!6, !40, null}
!4444 = distinct !DISubprogram(name: "get_current", scope: !4445, file: !4445, line: 39, type: !4446, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4448)
!4445 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!2167}
!4448 = !{!4449, !4451, !4455}
!4449 = !DILocalVariable(name: "pscr_ret__", scope: !4450, file: !4445, line: 41, type: !2167)
!4450 = distinct !DILexicalBlock(scope: !4444, file: !4445, line: 41, column: 9)
!4451 = !DILocalVariable(name: "__vpp_verify", scope: !4452, file: !4445, line: 41, type: !4453)
!4452 = distinct !DILexicalBlock(scope: !4450, file: !4445, line: 41, column: 9)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4455 = !DILocalVariable(name: "pfo_val__", scope: !4456, file: !4445, line: 41, type: !95)
!4456 = distinct !DILexicalBlock(scope: !4450, file: !4445, line: 41, column: 9)
!4457 = !DILocation(line: 41, column: 9, scope: !4450)
!4458 = !DILocation(line: 41, column: 9, scope: !4452)
!4459 = !DILocation(line: 41, column: 9, scope: !4456)
!4460 = !{i64 2148234821}
!4461 = !DILocation(line: 41, column: 9, scope: !4444)
!4462 = !DILocation(line: 41, column: 2, scope: !4444)
!4463 = !DISubprogram(name: "find_get_pid", scope: !356, file: !356, line: 134, type: !4464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!354, !6}
!4466 = !DISubprogram(name: "get_task_pid", scope: !356, file: !356, line: 100, type: !4467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!354, !2167, !399}
!4469 = distinct !DISubprogram(name: "autofs_type_trigger", scope: !3504, file: !3504, line: 133, type: !4470, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!25, !25}
!4472 = !{!4473}
!4473 = !DILocalVariable(name: "type", arg: 1, scope: !4469, file: !3504, line: 133, type: !25)
!4474 = !DILocation(line: 133, column: 61, scope: !4469)
!4475 = !DILocation(line: 135, column: 10, scope: !4469)
!4476 = !DILocation(line: 135, column: 15, scope: !4469)
!4477 = !DILocation(line: 135, column: 37, scope: !4469)
!4478 = !DILocation(line: 135, column: 40, scope: !4469)
!4479 = !DILocation(line: 135, column: 45, scope: !4469)
!4480 = !DILocation(line: 135, column: 2, scope: !4469)
!4481 = distinct !DISubprogram(name: "__managed_dentry_set_managed", scope: !3479, file: !3479, line: 182, type: !1742, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4482)
!4482 = !{!4483}
!4483 = !DILocalVariable(name: "dentry", arg: 1, scope: !4481, file: !3479, line: 182, type: !59)
!4484 = !DILocation(line: 182, column: 64, scope: !4481)
!4485 = !DILocation(line: 184, column: 2, scope: !4481)
!4486 = !DILocation(line: 184, column: 10, scope: !4481)
!4487 = !DILocation(line: 184, column: 18, scope: !4481)
!4488 = !DILocation(line: 185, column: 1, scope: !4481)
!4489 = !DISubprogram(name: "fget", scope: !4490, file: !4490, line: 49, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4490 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!241, !25}
!4493 = distinct !DISubprogram(name: "autofs_prepare_pipe", scope: !3479, file: !3479, line: 212, type: !4494, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!6, !241}
!4496 = !{!4497}
!4497 = !DILocalVariable(name: "pipe", arg: 1, scope: !4493, file: !3479, line: 212, type: !241)
!4498 = !DILocation(line: 212, column: 52, scope: !4493)
!4499 = !DILocation(line: 214, column: 8, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4493, file: !3479, line: 214, column: 6)
!4501 = !DILocation(line: 214, column: 14, scope: !4500)
!4502 = !DILocation(line: 214, column: 21, scope: !4500)
!4503 = !DILocation(line: 214, column: 6, scope: !4493)
!4504 = !DILocation(line: 215, column: 3, scope: !4500)
!4505 = !DILocation(line: 216, column: 7, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4493, file: !3479, line: 216, column: 6)
!4507 = !DILocation(line: 216, column: 6, scope: !4493)
!4508 = !DILocation(line: 217, column: 3, scope: !4506)
!4509 = !DILocation(line: 219, column: 2, scope: !4493)
!4510 = !DILocation(line: 219, column: 8, scope: !4493)
!4511 = !DILocation(line: 219, column: 16, scope: !4493)
!4512 = !DILocation(line: 221, column: 2, scope: !4493)
!4513 = !DILocation(line: 221, column: 8, scope: !4493)
!4514 = !DILocation(line: 221, column: 16, scope: !4493)
!4515 = !DILocation(line: 222, column: 2, scope: !4493)
!4516 = !DILocation(line: 223, column: 1, scope: !4493)
!4517 = !DISubprogram(name: "fput", scope: !4490, file: !4490, line: 17, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4518 = !DISubprogram(name: "dput", scope: !61, file: !61, line: 368, type: !1742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = !DISubprogram(name: "kfree", scope: !3451, file: !3451, line: 227, type: !4520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !4453}
!4522 = !DISubprogram(name: "new_inode", scope: !9, file: !9, line: 2932, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4523 = distinct !DISubprogram(name: "d_inode", scope: !61, file: !61, line: 514, type: !4524, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!102, !1723}
!4526 = !{!4527}
!4527 = !DILocalVariable(name: "dentry", arg: 1, scope: !4523, file: !61, line: 514, type: !1723)
!4528 = !DILocation(line: 514, column: 58, scope: !4523)
!4529 = !DILocation(line: 516, column: 9, scope: !4523)
!4530 = !DILocation(line: 516, column: 17, scope: !4523)
!4531 = !DILocation(line: 516, column: 2, scope: !4523)
!4532 = !DISubprogram(name: "inode_set_ctime_current", scope: !9, file: !9, line: 1515, type: !4533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!230, !102}
!4535 = !DISubprogram(name: "get_next_ino", scope: !9, file: !9, line: 2908, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!25}
!4538 = !DISubprogram(name: "set_nlink", scope: !9, file: !9, line: 2330, type: !4539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !102, !25}
!4541 = distinct !DISubprogram(name: "kmalloc", scope: !3451, file: !3451, line: 591, type: !3724, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4542)
!4542 = !{!4543, !4544, !4545}
!4543 = !DILocalVariable(name: "size", arg: 1, scope: !4541, file: !3451, line: 591, type: !659)
!4544 = !DILocalVariable(name: "flags", arg: 2, scope: !4541, file: !3451, line: 591, type: !723)
!4545 = !DILocalVariable(name: "index", scope: !4546, file: !3451, line: 594, type: !25)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !3451, line: 593, column: 42)
!4547 = distinct !DILexicalBlock(scope: !4541, file: !3451, line: 593, column: 6)
!4548 = !DILocation(line: 591, column: 61, scope: !4541)
!4549 = !DILocation(line: 591, column: 73, scope: !4541)
!4550 = !DILocation(line: 593, column: 27, scope: !4547)
!4551 = !DILocation(line: 593, column: 6, scope: !4547)
!4552 = !DILocation(line: 593, column: 33, scope: !4547)
!4553 = !DILocation(line: 593, column: 36, scope: !4547)
!4554 = !DILocation(line: 593, column: 6, scope: !4541)
!4555 = !DILocation(line: 594, column: 3, scope: !4546)
!4556 = !DILocation(line: 594, column: 16, scope: !4546)
!4557 = !DILocation(line: 596, column: 7, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4546, file: !3451, line: 596, column: 7)
!4559 = !DILocation(line: 596, column: 12, scope: !4558)
!4560 = !DILocation(line: 596, column: 7, scope: !4546)
!4561 = !DILocation(line: 597, column: 25, scope: !4558)
!4562 = !DILocation(line: 597, column: 31, scope: !4558)
!4563 = !DILocation(line: 597, column: 11, scope: !4558)
!4564 = !DILocation(line: 597, column: 4, scope: !4558)
!4565 = !DILocation(line: 599, column: 11, scope: !4546)
!4566 = !DILocation(line: 599, column: 9, scope: !4546)
!4567 = !DILocation(line: 601, column: 33, scope: !4546)
!4568 = !DILocation(line: 601, column: 40, scope: !4546)
!4569 = !DILocation(line: 601, column: 20, scope: !4546)
!4570 = !DILocation(line: 601, column: 5, scope: !4546)
!4571 = !DILocation(line: 601, column: 51, scope: !4546)
!4572 = !DILocation(line: 602, column: 5, scope: !4546)
!4573 = !DILocation(line: 602, column: 12, scope: !4546)
!4574 = !DILocation(line: 600, column: 10, scope: !4546)
!4575 = !DILocation(line: 600, column: 3, scope: !4546)
!4576 = !DILocation(line: 603, column: 2, scope: !4547)
!4577 = !DILocation(line: 604, column: 19, scope: !4541)
!4578 = !DILocation(line: 604, column: 25, scope: !4541)
!4579 = !DILocation(line: 604, column: 9, scope: !4541)
!4580 = !DILocation(line: 604, column: 2, scope: !4541)
!4581 = !DILocation(line: 605, column: 1, scope: !4541)
!4582 = !DISubprogram(name: "kmalloc_large", scope: !3451, file: !3451, line: 531, type: !3724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4583 = distinct !DISubprogram(name: "__kmalloc_index", scope: !3451, file: !3451, line: 444, type: !4584, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!25, !659, !164}
!4586 = !{!4587, !4588}
!4587 = !DILocalVariable(name: "size", arg: 1, scope: !4583, file: !3451, line: 444, type: !659)
!4588 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4583, file: !3451, line: 445, type: !164)
!4589 = !DILocation(line: 444, column: 60, scope: !4583)
!4590 = !DILocation(line: 445, column: 16, scope: !4583)
!4591 = !DILocation(line: 447, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 447, column: 6)
!4593 = !DILocation(line: 447, column: 6, scope: !4583)
!4594 = !DILocation(line: 448, column: 3, scope: !4592)
!4595 = !DILocation(line: 450, column: 6, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 450, column: 6)
!4597 = !DILocation(line: 450, column: 11, scope: !4596)
!4598 = !DILocation(line: 450, column: 6, scope: !4583)
!4599 = !DILocation(line: 451, column: 3, scope: !4596)
!4600 = !DILocation(line: 453, column: 32, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 453, column: 6)
!4602 = !DILocation(line: 453, column: 37, scope: !4601)
!4603 = !DILocation(line: 453, column: 42, scope: !4601)
!4604 = !DILocation(line: 453, column: 45, scope: !4601)
!4605 = !DILocation(line: 453, column: 50, scope: !4601)
!4606 = !DILocation(line: 453, column: 6, scope: !4583)
!4607 = !DILocation(line: 454, column: 3, scope: !4601)
!4608 = !DILocation(line: 455, column: 32, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 455, column: 6)
!4610 = !DILocation(line: 455, column: 37, scope: !4609)
!4611 = !DILocation(line: 455, column: 43, scope: !4609)
!4612 = !DILocation(line: 455, column: 46, scope: !4609)
!4613 = !DILocation(line: 455, column: 51, scope: !4609)
!4614 = !DILocation(line: 455, column: 6, scope: !4583)
!4615 = !DILocation(line: 456, column: 3, scope: !4609)
!4616 = !DILocation(line: 457, column: 6, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 457, column: 6)
!4618 = !DILocation(line: 457, column: 11, scope: !4617)
!4619 = !DILocation(line: 457, column: 6, scope: !4583)
!4620 = !DILocation(line: 457, column: 26, scope: !4617)
!4621 = !DILocation(line: 458, column: 6, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 458, column: 6)
!4623 = !DILocation(line: 458, column: 11, scope: !4622)
!4624 = !DILocation(line: 458, column: 6, scope: !4583)
!4625 = !DILocation(line: 458, column: 26, scope: !4622)
!4626 = !DILocation(line: 459, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 459, column: 6)
!4628 = !DILocation(line: 459, column: 11, scope: !4627)
!4629 = !DILocation(line: 459, column: 6, scope: !4583)
!4630 = !DILocation(line: 459, column: 26, scope: !4627)
!4631 = !DILocation(line: 460, column: 6, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 460, column: 6)
!4633 = !DILocation(line: 460, column: 11, scope: !4632)
!4634 = !DILocation(line: 460, column: 6, scope: !4583)
!4635 = !DILocation(line: 460, column: 26, scope: !4632)
!4636 = !DILocation(line: 461, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 461, column: 6)
!4638 = !DILocation(line: 461, column: 11, scope: !4637)
!4639 = !DILocation(line: 461, column: 6, scope: !4583)
!4640 = !DILocation(line: 461, column: 26, scope: !4637)
!4641 = !DILocation(line: 462, column: 6, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 462, column: 6)
!4643 = !DILocation(line: 462, column: 11, scope: !4642)
!4644 = !DILocation(line: 462, column: 6, scope: !4583)
!4645 = !DILocation(line: 462, column: 26, scope: !4642)
!4646 = !DILocation(line: 463, column: 6, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 463, column: 6)
!4648 = !DILocation(line: 463, column: 11, scope: !4647)
!4649 = !DILocation(line: 463, column: 6, scope: !4583)
!4650 = !DILocation(line: 463, column: 26, scope: !4647)
!4651 = !DILocation(line: 464, column: 6, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 464, column: 6)
!4653 = !DILocation(line: 464, column: 11, scope: !4652)
!4654 = !DILocation(line: 464, column: 6, scope: !4583)
!4655 = !DILocation(line: 464, column: 26, scope: !4652)
!4656 = !DILocation(line: 465, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 465, column: 6)
!4658 = !DILocation(line: 465, column: 11, scope: !4657)
!4659 = !DILocation(line: 465, column: 6, scope: !4583)
!4660 = !DILocation(line: 465, column: 26, scope: !4657)
!4661 = !DILocation(line: 466, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 466, column: 6)
!4663 = !DILocation(line: 466, column: 11, scope: !4662)
!4664 = !DILocation(line: 466, column: 6, scope: !4583)
!4665 = !DILocation(line: 466, column: 26, scope: !4662)
!4666 = !DILocation(line: 467, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 467, column: 6)
!4668 = !DILocation(line: 467, column: 11, scope: !4667)
!4669 = !DILocation(line: 467, column: 6, scope: !4583)
!4670 = !DILocation(line: 467, column: 26, scope: !4667)
!4671 = !DILocation(line: 468, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 468, column: 6)
!4673 = !DILocation(line: 468, column: 11, scope: !4672)
!4674 = !DILocation(line: 468, column: 6, scope: !4583)
!4675 = !DILocation(line: 468, column: 26, scope: !4672)
!4676 = !DILocation(line: 469, column: 6, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 469, column: 6)
!4678 = !DILocation(line: 469, column: 11, scope: !4677)
!4679 = !DILocation(line: 469, column: 6, scope: !4583)
!4680 = !DILocation(line: 469, column: 26, scope: !4677)
!4681 = !DILocation(line: 470, column: 6, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 470, column: 6)
!4683 = !DILocation(line: 470, column: 11, scope: !4682)
!4684 = !DILocation(line: 470, column: 6, scope: !4583)
!4685 = !DILocation(line: 470, column: 26, scope: !4682)
!4686 = !DILocation(line: 471, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 471, column: 6)
!4688 = !DILocation(line: 471, column: 11, scope: !4687)
!4689 = !DILocation(line: 471, column: 6, scope: !4583)
!4690 = !DILocation(line: 471, column: 26, scope: !4687)
!4691 = !DILocation(line: 472, column: 6, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 472, column: 6)
!4693 = !DILocation(line: 472, column: 11, scope: !4692)
!4694 = !DILocation(line: 472, column: 6, scope: !4583)
!4695 = !DILocation(line: 472, column: 26, scope: !4692)
!4696 = !DILocation(line: 473, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 473, column: 6)
!4698 = !DILocation(line: 473, column: 11, scope: !4697)
!4699 = !DILocation(line: 473, column: 6, scope: !4583)
!4700 = !DILocation(line: 473, column: 26, scope: !4697)
!4701 = !DILocation(line: 474, column: 6, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 474, column: 6)
!4703 = !DILocation(line: 474, column: 11, scope: !4702)
!4704 = !DILocation(line: 474, column: 6, scope: !4583)
!4705 = !DILocation(line: 474, column: 27, scope: !4702)
!4706 = !DILocation(line: 475, column: 6, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 475, column: 6)
!4708 = !DILocation(line: 475, column: 11, scope: !4707)
!4709 = !DILocation(line: 475, column: 6, scope: !4583)
!4710 = !DILocation(line: 475, column: 32, scope: !4707)
!4711 = !DILocation(line: 477, column: 50, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4583, file: !3451, line: 477, column: 6)
!4713 = !DILocation(line: 477, column: 6, scope: !4583)
!4714 = !DILocation(line: 478, column: 3, scope: !4712)
!4715 = !DILocation(line: 478, column: 3, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !3451, line: 478, column: 3)
!4717 = distinct !DILexicalBlock(scope: !4712, file: !3451, line: 478, column: 3)
!4718 = !{i32 -2141695250}
!4719 = !DILocation(line: 478, column: 3, scope: !4717)
!4720 = !DILocation(line: 480, column: 3, scope: !4712)
!4721 = !DILocation(line: 480, column: 3, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4712, file: !3451, line: 480, column: 3)
!4723 = !DILocation(line: 480, column: 3, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4722, file: !3451, line: 480, column: 3)
!4725 = !DILocation(line: 480, column: 3, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4722, file: !3451, line: 480, column: 3)
!4727 = !{i64 2153272249, i64 2153272278, i64 2153272324, i64 2153272382, i64 2153272436, i64 2153272490, i64 2153272545, i64 2153272576}
!4728 = !DILocation(line: 483, column: 2, scope: !4583)
!4729 = !DILocation(line: 484, column: 1, scope: !4583)
!4730 = !DISubprogram(name: "kmalloc_trace", scope: !3451, file: !3451, line: 525, type: !4731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!151, !4733, !723, !659}
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4735, line: 325, flags: DIFlagFwdDecl)
!4735 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4736 = distinct !DISubprogram(name: "kmalloc_type", scope: !3451, file: !3451, line: 401, type: !4737, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4739)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!3450, !723, !29}
!4739 = !{!4740, !4741}
!4740 = !DILocalVariable(name: "flags", arg: 1, scope: !4736, file: !3451, line: 401, type: !723)
!4741 = !DILocalVariable(name: "caller", arg: 2, scope: !4736, file: !3451, line: 401, type: !29)
!4742 = !DILocation(line: 401, column: 67, scope: !4736)
!4743 = !DILocation(line: 401, column: 88, scope: !4736)
!4744 = !DILocation(line: 407, column: 6, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4736, file: !3451, line: 407, column: 6)
!4746 = !DILocation(line: 407, column: 6, scope: !4736)
!4747 = !DILocation(line: 413, column: 3, scope: !4745)
!4748 = !DILocation(line: 423, column: 38, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4736, file: !3451, line: 423, column: 6)
!4750 = !DILocation(line: 423, column: 44, scope: !4749)
!4751 = !DILocation(line: 423, column: 6, scope: !4736)
!4752 = !DILocation(line: 424, column: 3, scope: !4749)
!4753 = !DILocation(line: 426, column: 3, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4736, file: !3451, line: 425, column: 6)
!4755 = !DILocation(line: 429, column: 1, scope: !4736)
!4756 = !DISubprogram(name: "__kmalloc", scope: !3451, file: !3451, line: 488, type: !3724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4757 = !DISubprogram(name: "__compiletime_assert_245", scope: !3451, file: !3451, line: 478, type: !2793, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4758 = distinct !DISubprogram(name: "autofs_evict_inode", scope: !3, file: !3, line: 101, type: !1670, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4759)
!4759 = !{!4760}
!4760 = !DILocalVariable(name: "inode", arg: 1, scope: !4758, file: !3, line: 101, type: !102)
!4761 = !DILocation(line: 101, column: 46, scope: !4758)
!4762 = !DILocation(line: 103, column: 14, scope: !4758)
!4763 = !DILocation(line: 103, column: 2, scope: !4758)
!4764 = !DILocation(line: 104, column: 8, scope: !4758)
!4765 = !DILocation(line: 104, column: 15, scope: !4758)
!4766 = !DILocation(line: 104, column: 2, scope: !4758)
!4767 = !DILocation(line: 105, column: 1, scope: !4758)
!4768 = distinct !DISubprogram(name: "autofs_show_options", scope: !3, file: !3, line: 62, type: !1860, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4769)
!4769 = !{!4770, !4771, !4772, !4773}
!4770 = !DILocalVariable(name: "m", arg: 1, scope: !4768, file: !3, line: 62, type: !1479)
!4771 = !DILocalVariable(name: "root", arg: 2, scope: !4768, file: !3, line: 62, type: !59)
!4772 = !DILocalVariable(name: "sbi", scope: !4768, file: !3, line: 64, type: !3477)
!4773 = !DILocalVariable(name: "root_inode", scope: !4768, file: !3, line: 65, type: !102)
!4774 = !DILocation(line: 62, column: 49, scope: !4768)
!4775 = !DILocation(line: 62, column: 67, scope: !4768)
!4776 = !DILocation(line: 64, column: 2, scope: !4768)
!4777 = !DILocation(line: 64, column: 25, scope: !4768)
!4778 = !DILocation(line: 64, column: 42, scope: !4768)
!4779 = !DILocation(line: 64, column: 48, scope: !4768)
!4780 = !DILocation(line: 64, column: 31, scope: !4768)
!4781 = !DILocation(line: 65, column: 2, scope: !4768)
!4782 = !DILocation(line: 65, column: 16, scope: !4768)
!4783 = !DILocation(line: 65, column: 37, scope: !4768)
!4784 = !DILocation(line: 65, column: 43, scope: !4768)
!4785 = !DILocation(line: 65, column: 49, scope: !4768)
!4786 = !DILocation(line: 65, column: 29, scope: !4768)
!4787 = !DILocation(line: 67, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 67, column: 6)
!4789 = !DILocation(line: 67, column: 6, scope: !4768)
!4790 = !DILocation(line: 68, column: 3, scope: !4788)
!4791 = !DILocation(line: 70, column: 13, scope: !4768)
!4792 = !DILocation(line: 70, column: 26, scope: !4768)
!4793 = !DILocation(line: 70, column: 31, scope: !4768)
!4794 = !DILocation(line: 70, column: 2, scope: !4768)
!4795 = !DILocation(line: 71, column: 14, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 71, column: 6)
!4797 = !DILocation(line: 71, column: 26, scope: !4796)
!4798 = !DILocation(line: 71, column: 33, scope: !4796)
!4799 = !DILocation(line: 71, column: 7, scope: !4796)
!4800 = !DILocation(line: 71, column: 6, scope: !4768)
!4801 = !DILocation(line: 72, column: 14, scope: !4796)
!4802 = !DILocation(line: 73, column: 36, scope: !4796)
!4803 = !DILocation(line: 73, column: 48, scope: !4796)
!4804 = !DILocation(line: 73, column: 4, scope: !4796)
!4805 = !DILocation(line: 72, column: 3, scope: !4796)
!4806 = !DILocation(line: 74, column: 14, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 74, column: 6)
!4808 = !DILocation(line: 74, column: 26, scope: !4807)
!4809 = !DILocation(line: 74, column: 33, scope: !4807)
!4810 = !DILocation(line: 74, column: 7, scope: !4807)
!4811 = !DILocation(line: 74, column: 6, scope: !4768)
!4812 = !DILocation(line: 75, column: 14, scope: !4807)
!4813 = !DILocation(line: 76, column: 36, scope: !4807)
!4814 = !DILocation(line: 76, column: 48, scope: !4807)
!4815 = !DILocation(line: 76, column: 4, scope: !4807)
!4816 = !DILocation(line: 75, column: 3, scope: !4807)
!4817 = !DILocation(line: 77, column: 13, scope: !4768)
!4818 = !DILocation(line: 77, column: 36, scope: !4768)
!4819 = !DILocation(line: 77, column: 41, scope: !4768)
!4820 = !DILocation(line: 77, column: 28, scope: !4768)
!4821 = !DILocation(line: 77, column: 2, scope: !4768)
!4822 = !DILocation(line: 78, column: 13, scope: !4768)
!4823 = !DILocation(line: 78, column: 32, scope: !4768)
!4824 = !DILocation(line: 78, column: 37, scope: !4768)
!4825 = !DILocation(line: 78, column: 48, scope: !4768)
!4826 = !DILocation(line: 78, column: 2, scope: !4768)
!4827 = !DILocation(line: 79, column: 13, scope: !4768)
!4828 = !DILocation(line: 79, column: 32, scope: !4768)
!4829 = !DILocation(line: 79, column: 37, scope: !4768)
!4830 = !DILocation(line: 79, column: 2, scope: !4768)
!4831 = !DILocation(line: 80, column: 13, scope: !4768)
!4832 = !DILocation(line: 80, column: 32, scope: !4768)
!4833 = !DILocation(line: 80, column: 37, scope: !4768)
!4834 = !DILocation(line: 80, column: 2, scope: !4768)
!4835 = !DILocation(line: 82, column: 25, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 82, column: 6)
!4837 = !DILocation(line: 82, column: 30, scope: !4836)
!4838 = !DILocation(line: 82, column: 6, scope: !4836)
!4839 = !DILocation(line: 82, column: 6, scope: !4768)
!4840 = !DILocation(line: 83, column: 12, scope: !4836)
!4841 = !DILocation(line: 83, column: 3, scope: !4836)
!4842 = !DILocation(line: 84, column: 30, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 84, column: 11)
!4844 = !DILocation(line: 84, column: 35, scope: !4843)
!4845 = !DILocation(line: 84, column: 11, scope: !4843)
!4846 = !DILocation(line: 84, column: 11, scope: !4836)
!4847 = !DILocation(line: 85, column: 12, scope: !4843)
!4848 = !DILocation(line: 85, column: 3, scope: !4843)
!4849 = !DILocation(line: 87, column: 12, scope: !4843)
!4850 = !DILocation(line: 87, column: 3, scope: !4843)
!4851 = !DILocation(line: 88, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 88, column: 6)
!4853 = !DILocation(line: 88, column: 11, scope: !4852)
!4854 = !DILocation(line: 88, column: 17, scope: !4852)
!4855 = !DILocation(line: 88, column: 6, scope: !4768)
!4856 = !DILocation(line: 89, column: 12, scope: !4852)
!4857 = !DILocation(line: 89, column: 3, scope: !4852)
!4858 = !DILocation(line: 90, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 90, column: 6)
!4860 = !DILocation(line: 90, column: 11, scope: !4859)
!4861 = !DILocation(line: 90, column: 17, scope: !4859)
!4862 = !DILocation(line: 90, column: 6, scope: !4768)
!4863 = !DILocation(line: 91, column: 12, scope: !4859)
!4864 = !DILocation(line: 91, column: 3, scope: !4859)
!4865 = !DILocation(line: 98, column: 2, scope: !4768)
!4866 = !DILocation(line: 99, column: 1, scope: !4768)
!4867 = !DISubprogram(name: "clear_inode", scope: !9, file: !9, line: 2929, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4868 = !DISubprogram(name: "seq_printf", scope: !1481, file: !1481, line: 119, type: !4869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !1479, !40, null}
!4871 = distinct !DISubprogram(name: "uid_eq", scope: !111, file: !111, line: 61, type: !4872, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4874)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!164, !110, !110}
!4874 = !{!4875, !4876}
!4875 = !DILocalVariable(name: "left", arg: 1, scope: !4871, file: !111, line: 61, type: !110)
!4876 = !DILocalVariable(name: "right", arg: 2, scope: !4871, file: !111, line: 61, type: !110)
!4877 = !DILocation(line: 61, column: 34, scope: !4871)
!4878 = !DILocation(line: 61, column: 47, scope: !4871)
!4879 = !DILocation(line: 63, column: 9, scope: !4871)
!4880 = !DILocation(line: 63, column: 29, scope: !4871)
!4881 = !DILocation(line: 63, column: 26, scope: !4871)
!4882 = !DILocation(line: 63, column: 2, scope: !4871)
!4883 = distinct !DISubprogram(name: "from_kuid_munged", scope: !111, file: !111, line: 163, type: !4884, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4886)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!115, !597, !110}
!4886 = !{!4887, !4888, !4889}
!4887 = !DILocalVariable(name: "to", arg: 1, scope: !4883, file: !111, line: 163, type: !597)
!4888 = !DILocalVariable(name: "kuid", arg: 2, scope: !4883, file: !111, line: 163, type: !110)
!4889 = !DILocalVariable(name: "uid", scope: !4883, file: !111, line: 165, type: !115)
!4890 = !DILocation(line: 163, column: 61, scope: !4883)
!4891 = !DILocation(line: 163, column: 72, scope: !4883)
!4892 = !DILocation(line: 165, column: 2, scope: !4883)
!4893 = !DILocation(line: 165, column: 8, scope: !4883)
!4894 = !DILocation(line: 165, column: 24, scope: !4883)
!4895 = !DILocation(line: 165, column: 14, scope: !4883)
!4896 = !DILocation(line: 166, column: 6, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4883, file: !111, line: 166, column: 6)
!4898 = !DILocation(line: 166, column: 10, scope: !4897)
!4899 = !DILocation(line: 166, column: 6, scope: !4883)
!4900 = !DILocation(line: 167, column: 9, scope: !4897)
!4901 = !DILocation(line: 167, column: 7, scope: !4897)
!4902 = !DILocation(line: 167, column: 3, scope: !4897)
!4903 = !DILocation(line: 168, column: 9, scope: !4883)
!4904 = !DILocation(line: 169, column: 1, scope: !4883)
!4905 = !DILocation(line: 168, column: 2, scope: !4883)
!4906 = distinct !DISubprogram(name: "gid_eq", scope: !111, file: !111, line: 66, type: !4907, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4909)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!164, !119, !119}
!4909 = !{!4910, !4911}
!4910 = !DILocalVariable(name: "left", arg: 1, scope: !4906, file: !111, line: 66, type: !119)
!4911 = !DILocalVariable(name: "right", arg: 2, scope: !4906, file: !111, line: 66, type: !119)
!4912 = !DILocation(line: 66, column: 34, scope: !4906)
!4913 = !DILocation(line: 66, column: 47, scope: !4906)
!4914 = !DILocation(line: 68, column: 9, scope: !4906)
!4915 = !DILocation(line: 68, column: 29, scope: !4906)
!4916 = !DILocation(line: 68, column: 26, scope: !4906)
!4917 = !DILocation(line: 68, column: 2, scope: !4906)
!4918 = distinct !DISubprogram(name: "from_kgid_munged", scope: !111, file: !111, line: 171, type: !4919, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4921)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!123, !597, !119}
!4921 = !{!4922, !4923, !4924}
!4922 = !DILocalVariable(name: "to", arg: 1, scope: !4918, file: !111, line: 171, type: !597)
!4923 = !DILocalVariable(name: "kgid", arg: 2, scope: !4918, file: !111, line: 171, type: !119)
!4924 = !DILocalVariable(name: "gid", scope: !4918, file: !111, line: 173, type: !123)
!4925 = !DILocation(line: 171, column: 61, scope: !4918)
!4926 = !DILocation(line: 171, column: 72, scope: !4918)
!4927 = !DILocation(line: 173, column: 2, scope: !4918)
!4928 = !DILocation(line: 173, column: 8, scope: !4918)
!4929 = !DILocation(line: 173, column: 24, scope: !4918)
!4930 = !DILocation(line: 173, column: 14, scope: !4918)
!4931 = !DILocation(line: 174, column: 6, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4918, file: !111, line: 174, column: 6)
!4933 = !DILocation(line: 174, column: 10, scope: !4932)
!4934 = !DILocation(line: 174, column: 6, scope: !4918)
!4935 = !DILocation(line: 175, column: 9, scope: !4932)
!4936 = !DILocation(line: 175, column: 7, scope: !4932)
!4937 = !DILocation(line: 175, column: 3, scope: !4932)
!4938 = !DILocation(line: 176, column: 9, scope: !4918)
!4939 = !DILocation(line: 177, column: 1, scope: !4918)
!4940 = !DILocation(line: 176, column: 2, scope: !4918)
!4941 = !DISubprogram(name: "pid_vnr", scope: !356, file: !356, line: 191, type: !4942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!2538, !354}
!4944 = distinct !DISubprogram(name: "autofs_type_offset", scope: !3504, file: !3504, line: 128, type: !4470, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4945)
!4945 = !{!4946}
!4946 = !DILocalVariable(name: "type", arg: 1, scope: !4944, file: !3504, line: 128, type: !25)
!4947 = !DILocation(line: 128, column: 60, scope: !4944)
!4948 = !DILocation(line: 130, column: 10, scope: !4944)
!4949 = !DILocation(line: 130, column: 15, scope: !4944)
!4950 = !DILocation(line: 130, column: 2, scope: !4944)
!4951 = !DISubprogram(name: "seq_puts", scope: !1481, file: !1481, line: 121, type: !4952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{null, !1479, !40}
!4954 = distinct !DISubprogram(name: "autofs_type_direct", scope: !3504, file: !3504, line: 118, type: !4470, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4955)
!4955 = !{!4956}
!4956 = !DILocalVariable(name: "type", arg: 1, scope: !4954, file: !3504, line: 118, type: !25)
!4957 = !DILocation(line: 118, column: 60, scope: !4954)
!4958 = !DILocation(line: 120, column: 10, scope: !4954)
!4959 = !DILocation(line: 120, column: 15, scope: !4954)
!4960 = !DILocation(line: 120, column: 2, scope: !4954)
!4961 = distinct !DISubprogram(name: "__kuid_val", scope: !111, file: !111, line: 34, type: !4962, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4964)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!115, !110}
!4964 = !{!4965}
!4965 = !DILocalVariable(name: "uid", arg: 1, scope: !4961, file: !111, line: 34, type: !110)
!4966 = !DILocation(line: 34, column: 39, scope: !4961)
!4967 = !DILocation(line: 36, column: 13, scope: !4961)
!4968 = !DILocation(line: 36, column: 2, scope: !4961)
!4969 = distinct !DISubprogram(name: "from_kuid", scope: !111, file: !111, line: 153, type: !4884, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4970)
!4970 = !{!4971, !4972}
!4971 = !DILocalVariable(name: "to", arg: 1, scope: !4969, file: !111, line: 153, type: !597)
!4972 = !DILocalVariable(name: "kuid", arg: 2, scope: !4969, file: !111, line: 153, type: !110)
!4973 = !DILocation(line: 153, column: 54, scope: !4969)
!4974 = !DILocation(line: 153, column: 65, scope: !4969)
!4975 = !DILocation(line: 155, column: 9, scope: !4969)
!4976 = !DILocation(line: 155, column: 2, scope: !4969)
!4977 = distinct !DISubprogram(name: "__kgid_val", scope: !111, file: !111, line: 39, type: !4978, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4980)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!123, !119}
!4980 = !{!4981}
!4981 = !DILocalVariable(name: "gid", arg: 1, scope: !4977, file: !111, line: 39, type: !119)
!4982 = !DILocation(line: 39, column: 39, scope: !4977)
!4983 = !DILocation(line: 41, column: 13, scope: !4977)
!4984 = !DILocation(line: 41, column: 2, scope: !4977)
!4985 = distinct !DISubprogram(name: "from_kgid", scope: !111, file: !111, line: 158, type: !4919, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !4986)
!4986 = !{!4987, !4988}
!4987 = !DILocalVariable(name: "to", arg: 1, scope: !4985, file: !111, line: 158, type: !597)
!4988 = !DILocalVariable(name: "kgid", arg: 2, scope: !4985, file: !111, line: 158, type: !119)
!4989 = !DILocation(line: 158, column: 54, scope: !4985)
!4990 = !DILocation(line: 158, column: 65, scope: !4985)
!4991 = !DILocation(line: 160, column: 9, scope: !4985)
!4992 = !DILocation(line: 160, column: 2, scope: !4985)
!4993 = !DISubprogram(name: "strsep", scope: !4994, file: !4994, line: 137, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4994 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!170, !4997, !40}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!4998 = !DISubprogram(name: "match_token", scope: !3643, file: !3643, line: 30, type: !4999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!6, !170, !5001, !5002}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!5003 = !DISubprogram(name: "match_int", scope: !3643, file: !3643, line: 31, type: !5004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!6, !5002, !1856}
!5006 = distinct !DISubprogram(name: "make_kuid", scope: !111, file: !111, line: 143, type: !5007, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!110, !597, !115}
!5009 = !{!5010, !5011}
!5010 = !DILocalVariable(name: "from", arg: 1, scope: !5006, file: !111, line: 143, type: !597)
!5011 = !DILocalVariable(name: "uid", arg: 2, scope: !5006, file: !111, line: 143, type: !115)
!5012 = !DILocation(line: 143, column: 55, scope: !5006)
!5013 = !DILocation(line: 143, column: 67, scope: !5006)
!5014 = !DILocation(line: 145, column: 9, scope: !5006)
!5015 = !DILocation(line: 145, column: 2, scope: !5006)
!5016 = distinct !DISubprogram(name: "current_user_ns", scope: !413, file: !413, line: 346, type: !5017, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!597}
!5019 = !DILocation(line: 348, column: 2, scope: !5016)
!5020 = distinct !DISubprogram(name: "uid_valid", scope: !111, file: !111, line: 111, type: !5021, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5023)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!164, !110}
!5023 = !{!5024}
!5024 = !DILocalVariable(name: "uid", arg: 1, scope: !5020, file: !111, line: 111, type: !110)
!5025 = !DILocation(line: 111, column: 37, scope: !5020)
!5026 = !DILocation(line: 113, column: 9, scope: !5020)
!5027 = !DILocation(line: 113, column: 25, scope: !5020)
!5028 = !DILocation(line: 113, column: 2, scope: !5020)
!5029 = distinct !DISubprogram(name: "make_kgid", scope: !111, file: !111, line: 148, type: !5030, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5032)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!119, !597, !123}
!5032 = !{!5033, !5034}
!5033 = !DILocalVariable(name: "from", arg: 1, scope: !5029, file: !111, line: 148, type: !597)
!5034 = !DILocalVariable(name: "gid", arg: 2, scope: !5029, file: !111, line: 148, type: !123)
!5035 = !DILocation(line: 148, column: 55, scope: !5029)
!5036 = !DILocation(line: 148, column: 67, scope: !5029)
!5037 = !DILocation(line: 150, column: 9, scope: !5029)
!5038 = !DILocation(line: 150, column: 2, scope: !5029)
!5039 = distinct !DISubprogram(name: "gid_valid", scope: !111, file: !111, line: 116, type: !5040, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!164, !119}
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "gid", arg: 1, scope: !5039, file: !111, line: 116, type: !119)
!5044 = !DILocation(line: 116, column: 37, scope: !5039)
!5045 = !DILocation(line: 118, column: 9, scope: !5039)
!5046 = !DILocation(line: 118, column: 25, scope: !5039)
!5047 = !DILocation(line: 118, column: 2, scope: !5039)
!5048 = distinct !DISubprogram(name: "set_autofs_type_direct", scope: !3504, file: !3504, line: 113, type: !4132, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5049)
!5049 = !{!5050}
!5050 = !DILocalVariable(name: "type", arg: 1, scope: !5048, file: !3504, line: 113, type: !2161)
!5051 = !DILocation(line: 113, column: 57, scope: !5048)
!5052 = !DILocation(line: 115, column: 3, scope: !5048)
!5053 = !DILocation(line: 115, column: 8, scope: !5048)
!5054 = !DILocation(line: 116, column: 1, scope: !5048)
!5055 = distinct !DISubprogram(name: "set_autofs_type_offset", scope: !3504, file: !3504, line: 123, type: !4132, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5056)
!5056 = !{!5057}
!5057 = !DILocalVariable(name: "type", arg: 1, scope: !5055, file: !3504, line: 123, type: !2161)
!5058 = !DILocation(line: 123, column: 57, scope: !5055)
!5059 = !DILocation(line: 125, column: 3, scope: !5055)
!5060 = !DILocation(line: 125, column: 8, scope: !5055)
!5061 = !DILocation(line: 126, column: 1, scope: !5055)
!5062 = distinct !DISubprogram(name: "file_inode", scope: !9, file: !9, line: 1073, type: !5063, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3443, retainedNodes: !5065)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!102, !1514}
!5065 = !{!5066}
!5066 = !DILocalVariable(name: "f", arg: 1, scope: !5062, file: !9, line: 1073, type: !1514)
!5067 = !DILocation(line: 1073, column: 59, scope: !5062)
!5068 = !DILocation(line: 1075, column: 9, scope: !5062)
!5069 = !DILocation(line: 1075, column: 12, scope: !5062)
!5070 = !DILocation(line: 1075, column: 2, scope: !5062)
