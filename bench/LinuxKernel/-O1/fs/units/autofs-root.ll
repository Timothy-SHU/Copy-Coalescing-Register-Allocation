; ModuleID = 'fs/autofs/root.c'
source_filename = "fs/autofs/root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.file = type { %union.anon.19, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
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
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.anon.14 = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.24, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.25, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.26, ptr, %struct.address_space, %struct.list_head, %union.anon.27, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.24 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.25 = type { %struct.callback_head }
%union.anon.26 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.27 = type { ptr }
%struct.anon.16 = type { %struct.spinlock, i32 }
%struct.autofs_info = type { ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
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
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }

@autofs_root_operations = hidden constant %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr @autofs_root_ioctl, ptr @autofs_root_compat_ioctl, ptr null, i64 0, ptr @dcache_dir_open, ptr null, ptr @dcache_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@autofs_dir_operations = hidden constant %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @autofs_dir_open, ptr null, ptr @dcache_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3343
@autofs_dir_inode_operations = hidden constant %struct.inode_operations { ptr @autofs_lookup, ptr null, ptr @autofs_dir_permission, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dir_unlink, ptr @autofs_dir_symlink, ptr @autofs_dir_mkdir, ptr @autofs_dir_rmdir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !3345
@autofs_dentry_operations = hidden constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dentry_release, ptr null, ptr null, ptr null, ptr @autofs_d_automount, ptr @autofs_d_manage, ptr null, [24 x i8] undef }, align 64, !dbg !3347
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [17 x i8] c"fs/autofs/root.c\00", align 1, !dbg !3349
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3354

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @dcache_dir_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_read_dir(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dcache_readdir(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autofs_root_ioctl(ptr noundef %filp, i32 noundef %cmd, i64 noundef %arg) #1 align 16 !dbg !3369 {
entry:
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %inode = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !3371, metadata !DIExpression()), !dbg !3375
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !3372, metadata !DIExpression()), !dbg !3376
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !3378
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3374, metadata !DIExpression()), !dbg !3379
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !3380
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !3381
  store ptr %call, ptr %inode, align 8, !dbg !3379
  %1 = load ptr, ptr %inode, align 8, !dbg !3382
  %2 = load ptr, ptr %filp.addr, align 8, !dbg !3383
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !3384
  %4 = load i64, ptr %arg.addr, align 8, !dbg !3385
  %call1 = call i32 @autofs_root_ioctl_unlocked(ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #16, !dbg !3386
  %conv = sext i32 %call1 to i64, !dbg !3386
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !3387
  ret i64 %conv, !dbg !3388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autofs_root_compat_ioctl(ptr noundef %filp, i32 noundef %cmd, i64 noundef %arg) #1 align 16 !dbg !3389 {
entry:
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %inode = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !3391, metadata !DIExpression()), !dbg !3396
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !3392, metadata !DIExpression()), !dbg !3397
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3393, metadata !DIExpression()), !dbg !3398
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !3399
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3394, metadata !DIExpression()), !dbg !3400
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !3401
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !3402
  store ptr %call, ptr %inode, align 8, !dbg !3400
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3403
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3395, metadata !DIExpression()), !dbg !3404
  %1 = load i32, ptr %cmd.addr, align 4, !dbg !3405
  %cmp = icmp eq i32 %1, 37728, !dbg !3407
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3408

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !3409
  %cmp1 = icmp eq i32 %2, 37729, !dbg !3410
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3411

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %inode, align 8, !dbg !3412
  %4 = load ptr, ptr %filp.addr, align 8, !dbg !3413
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !3414
  %6 = load i64, ptr %arg.addr, align 8, !dbg !3415
  %call2 = call i32 @autofs_root_ioctl_unlocked(ptr noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6) #16, !dbg !3416
  store i32 %call2, ptr %ret, align 4, !dbg !3417
  br label %if.end, !dbg !3418

if.else:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %inode, align 8, !dbg !3419
  %8 = load ptr, ptr %filp.addr, align 8, !dbg !3420
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !3421
  %10 = load i64, ptr %arg.addr, align 8, !dbg !3422
  %conv = trunc i64 %10 to i32, !dbg !3422
  %call3 = call ptr @compat_ptr(i32 noundef %conv) #16, !dbg !3423
  %11 = ptrtoint ptr %call3 to i64, !dbg !3424
  %call4 = call i32 @autofs_root_ioctl_unlocked(ptr noundef %7, ptr noundef %8, i32 noundef %9, i64 noundef %11) #16, !dbg !3425
  store i32 %call4, ptr %ret, align 4, !dbg !3426
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr %ret, align 4, !dbg !3427
  %conv5 = sext i32 %12 to i64, !dbg !3427
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3428
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !3428
  ret i64 %conv5, !dbg !3429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3430 dso_local i32 @dcache_dir_open(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dcache_dir_close(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dir_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !3431 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3433, metadata !DIExpression()), !dbg !3439
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3434, metadata !DIExpression()), !dbg !3440
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3435, metadata !DIExpression()), !dbg !3442
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3443
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !3444
  %dentry1 = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !3445
  %1 = load ptr, ptr %dentry1, align 8, !dbg !3445
  store ptr %1, ptr %dentry, align 8, !dbg !3442
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3436, metadata !DIExpression()), !dbg !3447
  %2 = load ptr, ptr %dentry, align 8, !dbg !3448
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9, !dbg !3449
  %3 = load ptr, ptr %d_sb, align 8, !dbg !3449
  %call = call ptr @autofs_sbi(ptr noundef %3) #16, !dbg !3450
  store ptr %call, ptr %sbi, align 8, !dbg !3447
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3451
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3437, metadata !DIExpression()), !dbg !3452
  %4 = load ptr, ptr %dentry, align 8, !dbg !3453
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %4) #16, !dbg !3454
  store ptr %call2, ptr %ino, align 8, !dbg !3452
  store i32 0, ptr %tmp, align 4, !dbg !3455
  %5 = load i32, ptr %tmp, align 4, !dbg !3458
  %6 = load ptr, ptr %sbi, align 8, !dbg !3459
  %call3 = call i32 @autofs_oz_mode(ptr noundef %6) #16, !dbg !3461
  %tobool = icmp ne i32 %call3, 0, !dbg !3461
  br i1 %tobool, label %if.then, label %if.end, !dbg !3462

if.then:                                          ; preds = %entry
  br label %out, !dbg !3463

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %sbi, align 8, !dbg !3464
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 16, !dbg !3465
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !3466
  %8 = load ptr, ptr %file.addr, align 8, !dbg !3467
  %f_path4 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 10, !dbg !3469
  %call5 = call zeroext i1 @path_is_mountpoint(ptr noundef %f_path4) #16, !dbg !3470
  br i1 %call5, label %if.end9, label %land.lhs.true, !dbg !3471

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %ino, align 8, !dbg !3472
  %call6 = call zeroext i1 @autofs_empty(ptr noundef %9) #16, !dbg !3473
  br i1 %call6, label %if.then7, label %if.end9, !dbg !3474

if.then7:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %sbi, align 8, !dbg !3475
  %lookup_lock8 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 16, !dbg !3477
  call void @spin_unlock(ptr noundef %lookup_lock8) #16, !dbg !3478
  store i32 -2, ptr %retval, align 4, !dbg !3479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3479

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %sbi, align 8, !dbg !3480
  %lookup_lock10 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 16, !dbg !3481
  call void @spin_unlock(ptr noundef %lookup_lock10) #16, !dbg !3482
  br label %out, !dbg !3482

out:                                              ; preds = %if.end9, %if.then
  call void @llvm.dbg.label(metadata !3438), !dbg !3483
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !3484
  %13 = load ptr, ptr %file.addr, align 8, !dbg !3485
  %call11 = call i32 @dcache_dir_open(ptr noundef %12, ptr noundef %13) #16, !dbg !3486
  store i32 %call11, ptr %retval, align 4, !dbg !3487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3487

cleanup:                                          ; preds = %out, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3488
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3488
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !3488
  %14 = load i32, ptr %retval, align 4, !dbg !3488
  ret i32 %14, !dbg !3488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 16 !dbg !3489 {
entry:
  %retval = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %active = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3491, metadata !DIExpression()), !dbg !3497
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3492, metadata !DIExpression()), !dbg !3498
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3493, metadata !DIExpression()), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3500
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3494, metadata !DIExpression()), !dbg !3501
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3502
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3495, metadata !DIExpression()), !dbg !3503
  call void @llvm.lifetime.start.p0(i64 8, ptr %active) #15, !dbg !3504
  call void @llvm.dbg.declare(metadata ptr %active, metadata !3496, metadata !DIExpression()), !dbg !3505
  store i32 0, ptr %tmp, align 4, !dbg !3506
  %0 = load i32, ptr %tmp, align 4, !dbg !3509
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !3510
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, !dbg !3512
  %2 = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 0, !dbg !3513
  %len = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 1, !dbg !3513
  %3 = load i32, ptr %len, align 4, !dbg !3513
  %cmp = icmp ugt i32 %3, 255, !dbg !3514
  br i1 %cmp, label %if.then, label %if.end, !dbg !3515

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -36) #16, !dbg !3516
  store ptr %call, ptr %retval, align 8, !dbg !3517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3517

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dir.addr, align 8, !dbg !3518
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9, !dbg !3519
  %5 = load ptr, ptr %i_sb, align 8, !dbg !3519
  %call1 = call ptr @autofs_sbi(ptr noundef %5) #16, !dbg !3520
  store ptr %call1, ptr %sbi, align 8, !dbg !3521
  store i32 0, ptr %tmp2, align 4, !dbg !3522
  %6 = load i32, ptr %tmp2, align 4, !dbg !3525
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !3526
  %call3 = call ptr @autofs_lookup_active(ptr noundef %7) #16, !dbg !3527
  store ptr %call3, ptr %active, align 8, !dbg !3528
  %8 = load ptr, ptr %active, align 8, !dbg !3529
  %tobool = icmp ne ptr %8, null, !dbg !3529
  br i1 %tobool, label %if.then4, label %if.else, !dbg !3531

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %active, align 8, !dbg !3532
  store ptr %9, ptr %retval, align 8, !dbg !3533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3533

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %sbi, align 8, !dbg !3534
  %call5 = call i32 @autofs_oz_mode(ptr noundef %10) #16, !dbg !3537
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3537
  br i1 %tobool6, label %if.end12, label %land.lhs.true, !dbg !3538

land.lhs.true:                                    ; preds = %if.else
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !3539
  %d_parent = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3, !dbg !3539
  %12 = load ptr, ptr %d_parent, align 8, !dbg !3539
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !3539
  %d_parent7 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3, !dbg !3539
  %14 = load ptr, ptr %d_parent7, align 8, !dbg !3539
  %d_parent8 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 3, !dbg !3539
  %15 = load ptr, ptr %d_parent8, align 8, !dbg !3539
  %cmp9 = icmp eq ptr %12, %15, !dbg !3539
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !3540

if.then10:                                        ; preds = %land.lhs.true
  %call11 = call ptr @ERR_PTR(i64 noundef -2) #16, !dbg !3541
  store ptr %call11, ptr %retval, align 8, !dbg !3542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3542

if.end12:                                         ; preds = %land.lhs.true, %if.else
  %16 = load ptr, ptr %sbi, align 8, !dbg !3543
  %call13 = call ptr @autofs_new_ino(ptr noundef %16) #16, !dbg !3544
  store ptr %call13, ptr %ino, align 8, !dbg !3545
  %17 = load ptr, ptr %ino, align 8, !dbg !3546
  %tobool14 = icmp ne ptr %17, null, !dbg !3546
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !3548

if.then15:                                        ; preds = %if.end12
  %call16 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !3549
  store ptr %call16, ptr %retval, align 8, !dbg !3550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3550

if.end17:                                         ; preds = %if.end12
  %18 = load ptr, ptr %sbi, align 8, !dbg !3551
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %18, i32 0, i32 16, !dbg !3552
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !3553
  %19 = load ptr, ptr %dentry.addr, align 8, !dbg !3554
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7, !dbg !3555
  %20 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !3555
  %lock = getelementptr inbounds %struct.anon.16, ptr %20, i32 0, i32 0, !dbg !3555
  call void @spin_lock(ptr noundef %lock) #16, !dbg !3556
  %21 = load ptr, ptr %dentry.addr, align 8, !dbg !3557
  %d_parent18 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 3, !dbg !3557
  %22 = load ptr, ptr %d_parent18, align 8, !dbg !3557
  %23 = load ptr, ptr %dentry.addr, align 8, !dbg !3557
  %d_parent19 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 3, !dbg !3557
  %24 = load ptr, ptr %d_parent19, align 8, !dbg !3557
  %d_parent20 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 3, !dbg !3557
  %25 = load ptr, ptr %d_parent20, align 8, !dbg !3557
  %cmp21 = icmp eq ptr %22, %25, !dbg !3557
  br i1 %cmp21, label %land.lhs.true22, label %if.end26, !dbg !3559

land.lhs.true22:                                  ; preds = %if.end17
  %26 = load ptr, ptr %sbi, align 8, !dbg !3560
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %26, i32 0, i32 10, !dbg !3561
  %27 = load i32, ptr %type, align 8, !dbg !3561
  %call23 = call i32 @autofs_type_indirect(i32 noundef %27) #16, !dbg !3562
  %tobool24 = icmp ne i32 %call23, 0, !dbg !3562
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !3563

if.then25:                                        ; preds = %land.lhs.true22
  %28 = load ptr, ptr %dentry.addr, align 8, !dbg !3564
  call void @__managed_dentry_set_managed(ptr noundef %28) #16, !dbg !3565
  br label %if.end26, !dbg !3565

if.end26:                                         ; preds = %if.then25, %land.lhs.true22, %if.end17
  %29 = load ptr, ptr %ino, align 8, !dbg !3566
  %30 = load ptr, ptr %dentry.addr, align 8, !dbg !3567
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 11, !dbg !3568
  store ptr %29, ptr %d_fsdata, align 8, !dbg !3569
  %31 = load ptr, ptr %dentry.addr, align 8, !dbg !3570
  %32 = load ptr, ptr %ino, align 8, !dbg !3571
  %dentry27 = getelementptr inbounds %struct.autofs_info, ptr %32, i32 0, i32 0, !dbg !3572
  store ptr %31, ptr %dentry27, align 8, !dbg !3573
  %33 = load ptr, ptr %ino, align 8, !dbg !3574
  %active28 = getelementptr inbounds %struct.autofs_info, ptr %33, i32 0, i32 3, !dbg !3575
  %34 = load ptr, ptr %sbi, align 8, !dbg !3576
  %active_list = getelementptr inbounds %struct.autofs_sb_info, ptr %34, i32 0, i32 17, !dbg !3577
  call void @list_add(ptr noundef %active28, ptr noundef %active_list) #16, !dbg !3578
  %35 = load ptr, ptr %sbi, align 8, !dbg !3579
  %lookup_lock29 = getelementptr inbounds %struct.autofs_sb_info, ptr %35, i32 0, i32 16, !dbg !3580
  call void @spin_unlock(ptr noundef %lookup_lock29) #16, !dbg !3581
  %36 = load ptr, ptr %dentry.addr, align 8, !dbg !3582
  %d_lockref30 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 7, !dbg !3583
  %37 = getelementptr inbounds %struct.lockref, ptr %d_lockref30, i32 0, i32 0, !dbg !3583
  %lock31 = getelementptr inbounds %struct.anon.16, ptr %37, i32 0, i32 0, !dbg !3583
  call void @spin_unlock(ptr noundef %lock31) #16, !dbg !3584
  br label %if.end32

if.end32:                                         ; preds = %if.end26
  store ptr null, ptr %retval, align 8, !dbg !3585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3585

cleanup:                                          ; preds = %if.end32, %if.then15, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %active) #15, !dbg !3586
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3586
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3586
  %38 = load ptr, ptr %retval, align 8, !dbg !3586
  ret ptr %38, !dbg !3586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dir_permission(ptr noundef %idmap, ptr noundef %inode, i32 noundef %mask) #1 align 16 !dbg !3587 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3589, metadata !DIExpression()), !dbg !3595
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3590, metadata !DIExpression()), !dbg !3596
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3591, metadata !DIExpression()), !dbg !3597
  %0 = load i32, ptr %mask.addr, align 4, !dbg !3598
  %and = and i32 %0, 2, !dbg !3599
  %tobool = icmp ne i32 %and, 0, !dbg !3599
  br i1 %tobool, label %if.then, label %if.end8, !dbg !3600

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3592, metadata !DIExpression()), !dbg !3602
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !3603
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !3604
  %2 = load ptr, ptr %i_sb, align 8, !dbg !3604
  %call = call ptr @autofs_sbi(ptr noundef %2) #16, !dbg !3605
  store ptr %call, ptr %sbi, align 8, !dbg !3602
  %3 = load ptr, ptr %sbi, align 8, !dbg !3606
  %call1 = call i32 @autofs_oz_mode(ptr noundef %3) #16, !dbg !3608
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3608
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3609

if.then3:                                         ; preds = %if.then
  store i32 -13, ptr %retval, align 4, !dbg !3610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3610

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %sbi, align 8, !dbg !3611
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %4, i32 0, i32 8, !dbg !3613
  %5 = load i32, ptr %flags, align 8, !dbg !3613
  %and4 = and i32 %5, 1, !dbg !3614
  %tobool5 = icmp ne i32 %and4, 0, !dbg !3614
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3615

if.then6:                                         ; preds = %if.end
  store i32 -13, ptr %retval, align 4, !dbg !3616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3616

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3617
  br label %cleanup, !dbg !3617

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3617
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !3618

if.end8:                                          ; preds = %cleanup.cont, %entry
  %6 = load ptr, ptr %idmap.addr, align 8, !dbg !3619
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !3620
  %8 = load i32, ptr %mask.addr, align 4, !dbg !3621
  %call9 = call i32 @generic_permission(ptr noundef %6, ptr noundef %7, i32 noundef %8) #16, !dbg !3622
  store i32 %call9, ptr %retval, align 4, !dbg !3623
  br label %return, !dbg !3623

return:                                           ; preds = %if.end8, %cleanup
  %9 = load i32, ptr %retval, align 4, !dbg !3624
  ret i32 %9, !dbg !3624

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dir_unlink(ptr noundef %dir, ptr noundef %dentry) #1 align 16 !dbg !3625 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %p_ino = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3627, metadata !DIExpression()), !dbg !3632
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3628, metadata !DIExpression()), !dbg !3633
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3629, metadata !DIExpression()), !dbg !3635
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !3636
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !3637
  %1 = load ptr, ptr %i_sb, align 8, !dbg !3637
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !3638
  store ptr %call, ptr %sbi, align 8, !dbg !3635
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3639
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3630, metadata !DIExpression()), !dbg !3640
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !3641
  %call1 = call ptr @autofs_dentry_ino(ptr noundef %2) #16, !dbg !3642
  store ptr %call1, ptr %ino, align 8, !dbg !3640
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_ino) #15, !dbg !3643
  call void @llvm.dbg.declare(metadata ptr %p_ino, metadata !3631, metadata !DIExpression()), !dbg !3644
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !3645
  %d_parent = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3, !dbg !3646
  %4 = load ptr, ptr %d_parent, align 8, !dbg !3646
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %4) #16, !dbg !3647
  store ptr %call2, ptr %p_ino, align 8, !dbg !3648
  %5 = load ptr, ptr %p_ino, align 8, !dbg !3649
  %count = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 7, !dbg !3650
  %6 = load i32, ptr %count, align 8, !dbg !3651
  %dec = add i32 %6, -1, !dbg !3651
  store i32 %dec, ptr %count, align 8, !dbg !3651
  %7 = load ptr, ptr %ino, align 8, !dbg !3652
  %dentry3 = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 0, !dbg !3653
  %8 = load ptr, ptr %dentry3, align 8, !dbg !3653
  call void @dput(ptr noundef %8) #16, !dbg !3654
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !3655
  %call4 = call ptr @d_inode(ptr noundef %9) #16, !dbg !3656
  %i_size = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 15, !dbg !3657
  store i64 0, ptr %i_size, align 8, !dbg !3658
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !3659
  %call5 = call ptr @d_inode(ptr noundef %10) #16, !dbg !3660
  call void @clear_nlink(ptr noundef %call5) #16, !dbg !3661
  %11 = load ptr, ptr %dir.addr, align 8, !dbg !3662
  %i_mtime = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 17, !dbg !3663
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !3664
  %12 = load ptr, ptr %dir.addr, align 8, !dbg !3665
  %call6 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %12) #16, !dbg !3664
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !3664
  %14 = extractvalue { i64, i64 } %call6, 0, !dbg !3664
  store i64 %14, ptr %13, align 8, !dbg !3664
  %15 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !3664
  %16 = extractvalue { i64, i64 } %call6, 1, !dbg !3664
  store i64 %16, ptr %15, align 8, !dbg !3664
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !3664
  %17 = load ptr, ptr %sbi, align 8, !dbg !3666
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %17, i32 0, i32 16, !dbg !3667
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !3668
  %18 = load ptr, ptr %dentry.addr, align 8, !dbg !3669
  call void @__autofs_add_expiring(ptr noundef %18) #16, !dbg !3670
  %19 = load ptr, ptr %dentry.addr, align 8, !dbg !3671
  call void @d_drop(ptr noundef %19) #16, !dbg !3672
  %20 = load ptr, ptr %sbi, align 8, !dbg !3673
  %lookup_lock7 = getelementptr inbounds %struct.autofs_sb_info, ptr %20, i32 0, i32 16, !dbg !3674
  call void @spin_unlock(ptr noundef %lookup_lock7) #16, !dbg !3675
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_ino) #15, !dbg !3676
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3676
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3676
  ret i32 0, !dbg !3677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dir_symlink(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #1 align 16 !dbg !3678 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %p_ino = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %size = alloca i64, align 8
  %cp = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp25 = alloca %struct.timespec64, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3680, metadata !DIExpression()), !dbg !3689
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3681, metadata !DIExpression()), !dbg !3690
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3682, metadata !DIExpression()), !dbg !3691
  store ptr %symname, ptr %symname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !3683, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3684, metadata !DIExpression()), !dbg !3694
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3695
  %call = call ptr @autofs_dentry_ino(ptr noundef %0) #16, !dbg !3696
  store ptr %call, ptr %ino, align 8, !dbg !3694
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_ino) #15, !dbg !3697
  call void @llvm.dbg.declare(metadata ptr %p_ino, metadata !3685, metadata !DIExpression()), !dbg !3698
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !3699
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3686, metadata !DIExpression()), !dbg !3700
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3687, metadata !DIExpression()), !dbg !3702
  %1 = load ptr, ptr %symname.addr, align 8, !dbg !3703
  %call1 = call i64 @strlen(ptr noundef %1) #16, !dbg !3704
  store i64 %call1, ptr %size, align 8, !dbg !3702
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #15, !dbg !3705
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !3688, metadata !DIExpression()), !dbg !3706
  store i32 0, ptr %tmp, align 4, !dbg !3707
  %2 = load i32, ptr %tmp, align 4, !dbg !3710
  br label %do.body, !dbg !3711

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %ino, align 8, !dbg !3712
  %tobool = icmp ne ptr %3, null, !dbg !3712
  %lnot = xor i1 %tobool, true, !dbg !3712
  %lnot2 = xor i1 %lnot, true, !dbg !3712
  %lnot3 = xor i1 %lnot2, true, !dbg !3712
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3712
  %conv = sext i32 %lnot.ext to i64, !dbg !3712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3712
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3712
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3715

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !3712

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !3716

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !3718

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3718

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !3716

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 578, i32 0, i64 12) #15, !dbg !3720, !srcloc !3722
  br label %do.cond8, !dbg !3720

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3720

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !3716

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !3716

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !3716

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !3715

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !3715

do.end13:                                         ; preds = %do.cond12
  %4 = load ptr, ptr %ino, align 8, !dbg !3723
  call void @autofs_clean_ino(ptr noundef %4) #16, !dbg !3724
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !3725
  call void @autofs_del_active(ptr noundef %5) #16, !dbg !3726
  %6 = load i64, ptr %size, align 8, !dbg !3727
  %add = add i64 %6, 1, !dbg !3728
  %call14 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #17, !dbg !3729
  store ptr %call14, ptr %cp, align 8, !dbg !3730
  %7 = load ptr, ptr %cp, align 8, !dbg !3731
  %tobool15 = icmp ne ptr %7, null, !dbg !3731
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !3733

if.then16:                                        ; preds = %do.end13
  store i32 -12, ptr %retval, align 4, !dbg !3734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3734

if.end17:                                         ; preds = %do.end13
  %8 = load ptr, ptr %cp, align 8, !dbg !3735
  %9 = load ptr, ptr %symname.addr, align 8, !dbg !3736
  %call18 = call ptr @strcpy(ptr noundef %8, ptr noundef %9) #16, !dbg !3737
  %10 = load ptr, ptr %dir.addr, align 8, !dbg !3738
  %i_sb = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9, !dbg !3739
  %11 = load ptr, ptr %i_sb, align 8, !dbg !3739
  %call19 = call ptr @autofs_get_inode(ptr noundef %11, i16 noundef zeroext -24211) #16, !dbg !3740
  store ptr %call19, ptr %inode, align 8, !dbg !3741
  %12 = load ptr, ptr %inode, align 8, !dbg !3742
  %tobool20 = icmp ne ptr %12, null, !dbg !3742
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3744

if.then21:                                        ; preds = %if.end17
  %13 = load ptr, ptr %cp, align 8, !dbg !3745
  call void @kfree(ptr noundef %13) #16, !dbg !3747
  store i32 -12, ptr %retval, align 4, !dbg !3748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3748

if.end22:                                         ; preds = %if.end17
  %14 = load ptr, ptr %cp, align 8, !dbg !3749
  %15 = load ptr, ptr %inode, align 8, !dbg !3750
  %i_private = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 47, !dbg !3751
  store ptr %14, ptr %i_private, align 8, !dbg !3752
  %16 = load i64, ptr %size, align 8, !dbg !3753
  %17 = load ptr, ptr %inode, align 8, !dbg !3754
  %i_size = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 15, !dbg !3755
  store i64 %16, ptr %i_size, align 8, !dbg !3756
  %18 = load ptr, ptr %dentry.addr, align 8, !dbg !3757
  %19 = load ptr, ptr %inode, align 8, !dbg !3758
  call void @d_add(ptr noundef %18, ptr noundef %19) #16, !dbg !3759
  %20 = load ptr, ptr %dentry.addr, align 8, !dbg !3760
  %call23 = call ptr @dget(ptr noundef %20) #16, !dbg !3761
  %21 = load ptr, ptr %dentry.addr, align 8, !dbg !3762
  %d_parent = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 3, !dbg !3763
  %22 = load ptr, ptr %d_parent, align 8, !dbg !3763
  %call24 = call ptr @autofs_dentry_ino(ptr noundef %22) #16, !dbg !3764
  store ptr %call24, ptr %p_ino, align 8, !dbg !3765
  %23 = load ptr, ptr %p_ino, align 8, !dbg !3766
  %count = getelementptr inbounds %struct.autofs_info, ptr %23, i32 0, i32 7, !dbg !3767
  %24 = load i32, ptr %count, align 8, !dbg !3768
  %inc = add i32 %24, 1, !dbg !3768
  store i32 %inc, ptr %count, align 8, !dbg !3768
  %25 = load ptr, ptr %dir.addr, align 8, !dbg !3769
  %i_mtime = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 17, !dbg !3770
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp25) #15, !dbg !3771
  %26 = load ptr, ptr %dir.addr, align 8, !dbg !3772
  %call26 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %26) #16, !dbg !3771
  %27 = getelementptr inbounds { i64, i64 }, ptr %tmp25, i32 0, i32 0, !dbg !3771
  %28 = extractvalue { i64, i64 } %call26, 0, !dbg !3771
  store i64 %28, ptr %27, align 8, !dbg !3771
  %29 = getelementptr inbounds { i64, i64 }, ptr %tmp25, i32 0, i32 1, !dbg !3771
  %30 = extractvalue { i64, i64 } %call26, 1, !dbg !3771
  store i64 %30, ptr %29, align 8, !dbg !3771
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp25, i64 16, i1 false), !dbg !3771
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp25) #15, !dbg !3771
  store i32 0, ptr %retval, align 4, !dbg !3773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3773

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #15, !dbg !3774
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !3774
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !3774
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_ino) #15, !dbg !3774
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3774
  %31 = load i32, ptr %retval, align 4, !dbg !3774
  ret i32 %31, !dbg !3774
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dir_mkdir(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #1 align 16 !dbg !3775 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %p_ino = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp26 = alloca %struct.timespec64, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3777, metadata !DIExpression()), !dbg !3785
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3778, metadata !DIExpression()), !dbg !3786
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3779, metadata !DIExpression()), !dbg !3787
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3780, metadata !DIExpression()), !dbg !3788
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3789
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3781, metadata !DIExpression()), !dbg !3790
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !3791
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !3792
  %1 = load ptr, ptr %i_sb, align 8, !dbg !3792
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !3793
  store ptr %call, ptr %sbi, align 8, !dbg !3790
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3794
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3782, metadata !DIExpression()), !dbg !3795
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !3796
  %call1 = call ptr @autofs_dentry_ino(ptr noundef %2) #16, !dbg !3797
  store ptr %call1, ptr %ino, align 8, !dbg !3795
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_ino) #15, !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %p_ino, metadata !3783, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !3800
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3784, metadata !DIExpression()), !dbg !3801
  store i32 0, ptr %tmp, align 4, !dbg !3802
  %3 = load i32, ptr %tmp, align 4, !dbg !3805
  br label %do.body, !dbg !3806

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %ino, align 8, !dbg !3807
  %tobool = icmp ne ptr %4, null, !dbg !3807
  %lnot = xor i1 %tobool, true, !dbg !3807
  %lnot2 = xor i1 %lnot, true, !dbg !3807
  %lnot3 = xor i1 %lnot2, true, !dbg !3807
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3807
  %conv = sext i32 %lnot.ext to i64, !dbg !3807
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3807
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3807
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3810

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !3807

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !3811

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !3813

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3813

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !3811

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 734, i32 0, i64 12) #15, !dbg !3815, !srcloc !3817
  br label %do.cond8, !dbg !3815

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3815

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !3811

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !3811

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !3811

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !3810

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !3810

do.end13:                                         ; preds = %do.cond12
  %5 = load ptr, ptr %ino, align 8, !dbg !3818
  call void @autofs_clean_ino(ptr noundef %5) #16, !dbg !3819
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !3820
  call void @autofs_del_active(ptr noundef %6) #16, !dbg !3821
  %7 = load ptr, ptr %dir.addr, align 8, !dbg !3822
  %i_sb14 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9, !dbg !3823
  %8 = load ptr, ptr %i_sb14, align 8, !dbg !3823
  %9 = load i16, ptr %mode.addr, align 2, !dbg !3824
  %conv15 = zext i16 %9 to i32, !dbg !3824
  %or = or i32 16384, %conv15, !dbg !3825
  %conv16 = trunc i32 %or to i16, !dbg !3826
  %call17 = call ptr @autofs_get_inode(ptr noundef %8, i16 noundef zeroext %conv16) #16, !dbg !3827
  store ptr %call17, ptr %inode, align 8, !dbg !3828
  %10 = load ptr, ptr %inode, align 8, !dbg !3829
  %tobool18 = icmp ne ptr %10, null, !dbg !3829
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !3831

if.then19:                                        ; preds = %do.end13
  store i32 -12, ptr %retval, align 4, !dbg !3832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3832

if.end20:                                         ; preds = %do.end13
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !3833
  %12 = load ptr, ptr %inode, align 8, !dbg !3834
  call void @d_add(ptr noundef %11, ptr noundef %12) #16, !dbg !3835
  %13 = load ptr, ptr %sbi, align 8, !dbg !3836
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 4, !dbg !3838
  %14 = load i32, ptr %version, align 8, !dbg !3838
  %cmp = icmp slt i32 %14, 5, !dbg !3839
  br i1 %cmp, label %if.then22, label %if.end23, !dbg !3840

if.then22:                                        ; preds = %if.end20
  %15 = load ptr, ptr %dentry.addr, align 8, !dbg !3841
  call void @autofs_set_leaf_automount_flags(ptr noundef %15) #16, !dbg !3842
  br label %if.end23, !dbg !3842

if.end23:                                         ; preds = %if.then22, %if.end20
  %16 = load ptr, ptr %dentry.addr, align 8, !dbg !3843
  %call24 = call ptr @dget(ptr noundef %16) #16, !dbg !3844
  %17 = load ptr, ptr %dentry.addr, align 8, !dbg !3845
  %d_parent = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3, !dbg !3846
  %18 = load ptr, ptr %d_parent, align 8, !dbg !3846
  %call25 = call ptr @autofs_dentry_ino(ptr noundef %18) #16, !dbg !3847
  store ptr %call25, ptr %p_ino, align 8, !dbg !3848
  %19 = load ptr, ptr %p_ino, align 8, !dbg !3849
  %count = getelementptr inbounds %struct.autofs_info, ptr %19, i32 0, i32 7, !dbg !3850
  %20 = load i32, ptr %count, align 8, !dbg !3851
  %inc = add i32 %20, 1, !dbg !3851
  store i32 %inc, ptr %count, align 8, !dbg !3851
  %21 = load ptr, ptr %dir.addr, align 8, !dbg !3852
  call void @inc_nlink(ptr noundef %21) #16, !dbg !3853
  %22 = load ptr, ptr %dir.addr, align 8, !dbg !3854
  %i_mtime = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 17, !dbg !3855
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp26) #15, !dbg !3856
  %23 = load ptr, ptr %dir.addr, align 8, !dbg !3857
  %call27 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %23) #16, !dbg !3856
  %24 = getelementptr inbounds { i64, i64 }, ptr %tmp26, i32 0, i32 0, !dbg !3856
  %25 = extractvalue { i64, i64 } %call27, 0, !dbg !3856
  store i64 %25, ptr %24, align 8, !dbg !3856
  %26 = getelementptr inbounds { i64, i64 }, ptr %tmp26, i32 0, i32 1, !dbg !3856
  %27 = extractvalue { i64, i64 } %call27, 1, !dbg !3856
  store i64 %27, ptr %26, align 8, !dbg !3856
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp26, i64 16, i1 false), !dbg !3856
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp26) #15, !dbg !3856
  store i32 0, ptr %retval, align 4, !dbg !3858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3858

cleanup:                                          ; preds = %if.end23, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !3859
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_ino) #15, !dbg !3859
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3859
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3859
  %28 = load i32, ptr %retval, align 4, !dbg !3859
  ret i32 %28, !dbg !3859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dir_rmdir(ptr noundef %dir, ptr noundef %dentry) #1 align 16 !dbg !3860 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %p_ino = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3862, metadata !DIExpression()), !dbg !3867
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3869
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3864, metadata !DIExpression()), !dbg !3870
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !3871
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !3872
  %1 = load ptr, ptr %i_sb, align 8, !dbg !3872
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !3873
  store ptr %call, ptr %sbi, align 8, !dbg !3870
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3865, metadata !DIExpression()), !dbg !3875
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !3876
  %call1 = call ptr @autofs_dentry_ino(ptr noundef %2) #16, !dbg !3877
  store ptr %call1, ptr %ino, align 8, !dbg !3875
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_ino) #15, !dbg !3878
  call void @llvm.dbg.declare(metadata ptr %p_ino, metadata !3866, metadata !DIExpression()), !dbg !3879
  store i32 0, ptr %tmp, align 4, !dbg !3880
  %3 = load i32, ptr %tmp, align 4, !dbg !3883
  %4 = load ptr, ptr %ino, align 8, !dbg !3884
  %count = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 7, !dbg !3886
  %5 = load i32, ptr %count, align 8, !dbg !3886
  %cmp = icmp ne i32 %5, 1, !dbg !3887
  br i1 %cmp, label %if.then, label %if.end, !dbg !3888

if.then:                                          ; preds = %entry
  store i32 -39, ptr %retval, align 4, !dbg !3889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3889

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sbi, align 8, !dbg !3890
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 16, !dbg !3891
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !3892
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !3893
  call void @__autofs_add_expiring(ptr noundef %7) #16, !dbg !3894
  %8 = load ptr, ptr %dentry.addr, align 8, !dbg !3895
  call void @d_drop(ptr noundef %8) #16, !dbg !3896
  %9 = load ptr, ptr %sbi, align 8, !dbg !3897
  %lookup_lock2 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 16, !dbg !3898
  call void @spin_unlock(ptr noundef %lookup_lock2) #16, !dbg !3899
  %10 = load ptr, ptr %sbi, align 8, !dbg !3900
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 4, !dbg !3902
  %11 = load i32, ptr %version, align 8, !dbg !3902
  %cmp3 = icmp slt i32 %11, 5, !dbg !3903
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3904

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %dentry.addr, align 8, !dbg !3905
  call void @autofs_clear_leaf_automount_flags(ptr noundef %12) #16, !dbg !3906
  br label %if.end5, !dbg !3906

if.end5:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !3907
  %d_parent = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3, !dbg !3908
  %14 = load ptr, ptr %d_parent, align 8, !dbg !3908
  %call6 = call ptr @autofs_dentry_ino(ptr noundef %14) #16, !dbg !3909
  store ptr %call6, ptr %p_ino, align 8, !dbg !3910
  %15 = load ptr, ptr %p_ino, align 8, !dbg !3911
  %count7 = getelementptr inbounds %struct.autofs_info, ptr %15, i32 0, i32 7, !dbg !3912
  %16 = load i32, ptr %count7, align 8, !dbg !3913
  %dec = add i32 %16, -1, !dbg !3913
  store i32 %dec, ptr %count7, align 8, !dbg !3913
  %17 = load ptr, ptr %ino, align 8, !dbg !3914
  %dentry8 = getelementptr inbounds %struct.autofs_info, ptr %17, i32 0, i32 0, !dbg !3915
  %18 = load ptr, ptr %dentry8, align 8, !dbg !3915
  call void @dput(ptr noundef %18) #16, !dbg !3916
  %19 = load ptr, ptr %dentry.addr, align 8, !dbg !3917
  %call9 = call ptr @d_inode(ptr noundef %19) #16, !dbg !3918
  %i_size = getelementptr inbounds %struct.inode, ptr %call9, i32 0, i32 15, !dbg !3919
  store i64 0, ptr %i_size, align 8, !dbg !3920
  %20 = load ptr, ptr %dentry.addr, align 8, !dbg !3921
  %call10 = call ptr @d_inode(ptr noundef %20) #16, !dbg !3922
  call void @clear_nlink(ptr noundef %call10) #16, !dbg !3923
  %21 = load ptr, ptr %dir.addr, align 8, !dbg !3924
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 13, !dbg !3926
  %23 = load i32, ptr %22, align 8, !dbg !3926
  %tobool = icmp ne i32 %23, 0, !dbg !3924
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !3927

if.then11:                                        ; preds = %if.end5
  %24 = load ptr, ptr %dir.addr, align 8, !dbg !3928
  call void @drop_nlink(ptr noundef %24) #16, !dbg !3929
  br label %if.end12, !dbg !3929

if.end12:                                         ; preds = %if.then11, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !3930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3930

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_ino) #15, !dbg !3931
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3931
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3931
  %25 = load i32, ptr %retval, align 4, !dbg !3931
  ret i32 %25, !dbg !3931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_dentry_release(ptr noundef %de) #1 align 16 !dbg !3932 {
entry:
  %de.addr = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !3934, metadata !DIExpression()), !dbg !3937
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !3938
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3935, metadata !DIExpression()), !dbg !3939
  %0 = load ptr, ptr %de.addr, align 8, !dbg !3940
  %call = call ptr @autofs_dentry_ino(ptr noundef %0) #16, !dbg !3941
  store ptr %call, ptr %ino, align 8, !dbg !3939
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3942
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3936, metadata !DIExpression()), !dbg !3943
  %1 = load ptr, ptr %de.addr, align 8, !dbg !3944
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !3945
  %2 = load ptr, ptr %d_sb, align 8, !dbg !3945
  %call1 = call ptr @autofs_sbi(ptr noundef %2) #16, !dbg !3946
  store ptr %call1, ptr %sbi, align 8, !dbg !3943
  store i32 0, ptr %tmp, align 4, !dbg !3947
  %3 = load i32, ptr %tmp, align 4, !dbg !3950
  %4 = load ptr, ptr %ino, align 8, !dbg !3951
  %tobool = icmp ne ptr %4, null, !dbg !3951
  br i1 %tobool, label %if.end, label %if.then, !dbg !3953

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3954

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %sbi, align 8, !dbg !3955
  %tobool2 = icmp ne ptr %5, null, !dbg !3955
  br i1 %tobool2, label %if.then3, label %if.end15, !dbg !3957

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %sbi, align 8, !dbg !3958
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 16, !dbg !3960
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !3961
  %7 = load ptr, ptr %ino, align 8, !dbg !3962
  %active = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 3, !dbg !3964
  %call4 = call i32 @list_empty(ptr noundef %active) #16, !dbg !3965
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3965
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !3966

if.then6:                                         ; preds = %if.then3
  %8 = load ptr, ptr %ino, align 8, !dbg !3967
  %active7 = getelementptr inbounds %struct.autofs_info, ptr %8, i32 0, i32 3, !dbg !3968
  call void @list_del(ptr noundef %active7) #16, !dbg !3969
  br label %if.end8, !dbg !3969

if.end8:                                          ; preds = %if.then6, %if.then3
  %9 = load ptr, ptr %ino, align 8, !dbg !3970
  %expiring = getelementptr inbounds %struct.autofs_info, ptr %9, i32 0, i32 4, !dbg !3972
  %call9 = call i32 @list_empty(ptr noundef %expiring) #16, !dbg !3973
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3973
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !3974

if.then11:                                        ; preds = %if.end8
  %10 = load ptr, ptr %ino, align 8, !dbg !3975
  %expiring12 = getelementptr inbounds %struct.autofs_info, ptr %10, i32 0, i32 4, !dbg !3976
  call void @list_del(ptr noundef %expiring12) #16, !dbg !3977
  br label %if.end13, !dbg !3977

if.end13:                                         ; preds = %if.then11, %if.end8
  %11 = load ptr, ptr %sbi, align 8, !dbg !3978
  %lookup_lock14 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 16, !dbg !3979
  call void @spin_unlock(ptr noundef %lookup_lock14) #16, !dbg !3980
  br label %if.end15, !dbg !3981

if.end15:                                         ; preds = %if.end13, %if.end
  %12 = load ptr, ptr %ino, align 8, !dbg !3982
  call void @autofs_free_ino(ptr noundef %12) #16, !dbg !3983
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3984
  br label %cleanup, !dbg !3984

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !3984
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3984

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_d_automount(ptr noundef %path) #1 align 16 !dbg !3985 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3987, metadata !DIExpression()), !dbg !3993
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !3994
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3988, metadata !DIExpression()), !dbg !3995
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3996
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !3997
  %1 = load ptr, ptr %dentry1, align 8, !dbg !3997
  store ptr %1, ptr %dentry, align 8, !dbg !3995
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !3998
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3989, metadata !DIExpression()), !dbg !3999
  %2 = load ptr, ptr %dentry, align 8, !dbg !4000
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9, !dbg !4001
  %3 = load ptr, ptr %d_sb, align 8, !dbg !4001
  %call = call ptr @autofs_sbi(ptr noundef %3) #16, !dbg !4002
  store ptr %call, ptr %sbi, align 8, !dbg !3999
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3990, metadata !DIExpression()), !dbg !4004
  %4 = load ptr, ptr %dentry, align 8, !dbg !4005
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %4) #16, !dbg !4006
  store ptr %call2, ptr %ino, align 8, !dbg !4004
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !4007
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3991, metadata !DIExpression()), !dbg !4008
  store i32 0, ptr %tmp, align 4, !dbg !4009
  %5 = load i32, ptr %tmp, align 4, !dbg !4012
  %6 = load ptr, ptr %sbi, align 8, !dbg !4013
  %call3 = call i32 @autofs_oz_mode(ptr noundef %6) #16, !dbg !4015
  %tobool = icmp ne i32 %call3, 0, !dbg !4015
  br i1 %tobool, label %if.then, label %if.end, !dbg !4016

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4017

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %path.addr, align 8, !dbg !4018
  %call4 = call i32 @do_expire_wait(ptr noundef %7, i1 noundef zeroext false) #16, !dbg !4019
  store i32 %call4, ptr %status, align 4, !dbg !4020
  %8 = load i32, ptr %status, align 4, !dbg !4021
  %tobool5 = icmp ne i32 %8, 0, !dbg !4021
  br i1 %tobool5, label %land.lhs.true, label %if.end7, !dbg !4023

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, ptr %status, align 4, !dbg !4024
  %cmp = icmp ne i32 %9, -11, !dbg !4025
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4026

if.then6:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !4027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4027

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %sbi, align 8, !dbg !4028
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 14, !dbg !4029
  call void @spin_lock(ptr noundef %fs_lock) #16, !dbg !4030
  %11 = load ptr, ptr %ino, align 8, !dbg !4031
  %flags = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 1, !dbg !4033
  %12 = load i32, ptr %flags, align 8, !dbg !4033
  %and = and i32 %12, 4, !dbg !4034
  %tobool8 = icmp ne i32 %and, 0, !dbg !4034
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !4035

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %sbi, align 8, !dbg !4036
  %fs_lock10 = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 14, !dbg !4038
  call void @spin_unlock(ptr noundef %fs_lock10) #16, !dbg !4039
  %14 = load ptr, ptr %path.addr, align 8, !dbg !4040
  %call11 = call i32 @autofs_mount_wait(ptr noundef %14, i1 noundef zeroext false) #16, !dbg !4041
  store i32 %call11, ptr %status, align 4, !dbg !4042
  %15 = load i32, ptr %status, align 4, !dbg !4043
  %tobool12 = icmp ne i32 %15, 0, !dbg !4043
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !4045

if.then13:                                        ; preds = %if.then9
  %16 = load i32, ptr %status, align 4, !dbg !4046
  %conv = sext i32 %16 to i64, !dbg !4046
  %call14 = call ptr @ERR_PTR(i64 noundef %conv) #16, !dbg !4047
  store ptr %call14, ptr %retval, align 8, !dbg !4048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4048

if.end15:                                         ; preds = %if.then9
  br label %done, !dbg !4049

if.end16:                                         ; preds = %if.end7
  %17 = load ptr, ptr %dentry, align 8, !dbg !4050
  %call17 = call zeroext i1 @d_really_is_positive(ptr noundef %17) #16, !dbg !4052
  br i1 %call17, label %land.lhs.true19, label %if.end24, !dbg !4053

land.lhs.true19:                                  ; preds = %if.end16
  %18 = load ptr, ptr %dentry, align 8, !dbg !4054
  %call20 = call zeroext i1 @d_is_symlink(ptr noundef %18) #16, !dbg !4055
  br i1 %call20, label %if.then22, label %if.end24, !dbg !4056

if.then22:                                        ; preds = %land.lhs.true19
  %19 = load ptr, ptr %sbi, align 8, !dbg !4057
  %fs_lock23 = getelementptr inbounds %struct.autofs_sb_info, ptr %19, i32 0, i32 14, !dbg !4059
  call void @spin_unlock(ptr noundef %fs_lock23) #16, !dbg !4060
  br label %done, !dbg !4061

if.end24:                                         ; preds = %land.lhs.true19, %if.end16
  %20 = load ptr, ptr %path.addr, align 8, !dbg !4062
  %call25 = call zeroext i1 @path_is_mountpoint(ptr noundef %20) #16, !dbg !4064
  br i1 %call25, label %if.end52, label %if.then26, !dbg !4065

if.then26:                                        ; preds = %if.end24
  %21 = load ptr, ptr %sbi, align 8, !dbg !4066
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %21, i32 0, i32 4, !dbg !4069
  %22 = load i32, ptr %version, align 8, !dbg !4069
  %cmp27 = icmp sgt i32 %22, 4, !dbg !4070
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !4071

if.then29:                                        ; preds = %if.then26
  %23 = load ptr, ptr %path.addr, align 8, !dbg !4072
  %call30 = call i32 @path_has_submounts(ptr noundef %23) #16, !dbg !4075
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4075
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !4076

if.then32:                                        ; preds = %if.then29
  %24 = load ptr, ptr %sbi, align 8, !dbg !4077
  %fs_lock33 = getelementptr inbounds %struct.autofs_sb_info, ptr %24, i32 0, i32 14, !dbg !4079
  call void @spin_unlock(ptr noundef %fs_lock33) #16, !dbg !4080
  br label %done, !dbg !4081

if.end34:                                         ; preds = %if.then29
  br label %if.end39, !dbg !4082

if.else:                                          ; preds = %if.then26
  %25 = load ptr, ptr %ino, align 8, !dbg !4083
  %call35 = call zeroext i1 @autofs_empty(ptr noundef %25) #16, !dbg !4086
  br i1 %call35, label %if.end38, label %if.then36, !dbg !4087

if.then36:                                        ; preds = %if.else
  %26 = load ptr, ptr %sbi, align 8, !dbg !4088
  %fs_lock37 = getelementptr inbounds %struct.autofs_sb_info, ptr %26, i32 0, i32 14, !dbg !4090
  call void @spin_unlock(ptr noundef %fs_lock37) #16, !dbg !4091
  br label %done, !dbg !4092

if.end38:                                         ; preds = %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end34
  %27 = load ptr, ptr %ino, align 8, !dbg !4093
  %flags40 = getelementptr inbounds %struct.autofs_info, ptr %27, i32 0, i32 1, !dbg !4094
  %28 = load i32, ptr %flags40, align 8, !dbg !4095
  %or = or i32 %28, 4, !dbg !4095
  store i32 %or, ptr %flags40, align 8, !dbg !4095
  %29 = load ptr, ptr %sbi, align 8, !dbg !4096
  %fs_lock41 = getelementptr inbounds %struct.autofs_sb_info, ptr %29, i32 0, i32 14, !dbg !4097
  call void @spin_unlock(ptr noundef %fs_lock41) #16, !dbg !4098
  %30 = load ptr, ptr %path.addr, align 8, !dbg !4099
  %call42 = call i32 @autofs_mount_wait(ptr noundef %30, i1 noundef zeroext false) #16, !dbg !4100
  store i32 %call42, ptr %status, align 4, !dbg !4101
  %31 = load ptr, ptr %sbi, align 8, !dbg !4102
  %fs_lock43 = getelementptr inbounds %struct.autofs_sb_info, ptr %31, i32 0, i32 14, !dbg !4103
  call void @spin_lock(ptr noundef %fs_lock43) #16, !dbg !4104
  %32 = load ptr, ptr %ino, align 8, !dbg !4105
  %flags44 = getelementptr inbounds %struct.autofs_info, ptr %32, i32 0, i32 1, !dbg !4106
  %33 = load i32, ptr %flags44, align 8, !dbg !4107
  %and45 = and i32 %33, -5, !dbg !4107
  store i32 %and45, ptr %flags44, align 8, !dbg !4107
  %34 = load i32, ptr %status, align 4, !dbg !4108
  %tobool46 = icmp ne i32 %34, 0, !dbg !4108
  br i1 %tobool46, label %if.then47, label %if.end51, !dbg !4110

if.then47:                                        ; preds = %if.end39
  %35 = load ptr, ptr %sbi, align 8, !dbg !4111
  %fs_lock48 = getelementptr inbounds %struct.autofs_sb_info, ptr %35, i32 0, i32 14, !dbg !4113
  call void @spin_unlock(ptr noundef %fs_lock48) #16, !dbg !4114
  %36 = load i32, ptr %status, align 4, !dbg !4115
  %conv49 = sext i32 %36 to i64, !dbg !4115
  %call50 = call ptr @ERR_PTR(i64 noundef %conv49) #16, !dbg !4116
  store ptr %call50, ptr %retval, align 8, !dbg !4117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4117

if.end51:                                         ; preds = %if.end39
  br label %if.end52, !dbg !4118

if.end52:                                         ; preds = %if.end51, %if.end24
  %37 = load ptr, ptr %sbi, align 8, !dbg !4119
  %fs_lock53 = getelementptr inbounds %struct.autofs_sb_info, ptr %37, i32 0, i32 14, !dbg !4120
  call void @spin_unlock(ptr noundef %fs_lock53) #16, !dbg !4121
  br label %done, !dbg !4121

done:                                             ; preds = %if.end52, %if.then36, %if.then32, %if.then22, %if.end15
  call void @llvm.dbg.label(metadata !3992), !dbg !4122
  %38 = load ptr, ptr %path.addr, align 8, !dbg !4123
  %call54 = call ptr @autofs_mountpoint_changed(ptr noundef %38) #16, !dbg !4124
  store ptr %call54, ptr %dentry, align 8, !dbg !4125
  %39 = load ptr, ptr %dentry, align 8, !dbg !4126
  %tobool55 = icmp ne ptr %39, null, !dbg !4126
  br i1 %tobool55, label %if.end58, label %if.then56, !dbg !4128

if.then56:                                        ; preds = %done
  %call57 = call ptr @ERR_PTR(i64 noundef -2) #16, !dbg !4129
  store ptr %call57, ptr %retval, align 8, !dbg !4130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4130

if.end58:                                         ; preds = %done
  store ptr null, ptr %retval, align 8, !dbg !4131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4131

cleanup:                                          ; preds = %if.end58, %if.then56, %if.then47, %if.then13, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !4132
  %40 = load ptr, ptr %retval, align 8, !dbg !4132
  ret ptr %40, !dbg !4132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_d_manage(ptr noundef %path, i1 noundef zeroext %rcu_walk) #1 align 16 !dbg !4133 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %rcu_walk.addr = alloca i8, align 1
  %dentry = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %inode = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4135, metadata !DIExpression()), !dbg !4144
  %frombool = zext i1 %rcu_walk to i8
  store i8 %frombool, ptr %rcu_walk.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu_walk.addr, metadata !4136, metadata !DIExpression()), !dbg !4145
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !4146
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4137, metadata !DIExpression()), !dbg !4147
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4148
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !4149
  %1 = load ptr, ptr %dentry1, align 8, !dbg !4149
  store ptr %1, ptr %dentry, align 8, !dbg !4147
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !4150
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4138, metadata !DIExpression()), !dbg !4151
  %2 = load ptr, ptr %dentry, align 8, !dbg !4152
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9, !dbg !4153
  %3 = load ptr, ptr %d_sb, align 8, !dbg !4153
  %call = call ptr @autofs_sbi(ptr noundef %3) #16, !dbg !4154
  store ptr %call, ptr %sbi, align 8, !dbg !4151
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !4155
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4139, metadata !DIExpression()), !dbg !4156
  %4 = load ptr, ptr %dentry, align 8, !dbg !4157
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %4) #16, !dbg !4158
  store ptr %call2, ptr %ino, align 8, !dbg !4156
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !4159
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4140, metadata !DIExpression()), !dbg !4160
  store i32 0, ptr %tmp, align 4, !dbg !4161
  %5 = load i32, ptr %tmp, align 4, !dbg !4164
  %6 = load ptr, ptr %sbi, align 8, !dbg !4165
  %call3 = call i32 @autofs_oz_mode(ptr noundef %6) #16, !dbg !4167
  %tobool = icmp ne i32 %call3, 0, !dbg !4167
  br i1 %tobool, label %if.then, label %if.end6, !dbg !4168

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %path.addr, align 8, !dbg !4169
  %call4 = call zeroext i1 @path_is_mountpoint(ptr noundef %7) #16, !dbg !4172
  br i1 %call4, label %if.end, label %if.then5, !dbg !4173

if.then5:                                         ; preds = %if.then
  store i32 -21, ptr %retval, align 4, !dbg !4174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !4174

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !4175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !4175

if.end6:                                          ; preds = %entry
  %8 = load ptr, ptr %path.addr, align 8, !dbg !4176
  %9 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4178, !range !4179, !noundef !812
  %tobool7 = trunc i8 %9 to i1, !dbg !4178
  %call8 = call i32 @do_expire_wait(ptr noundef %8, i1 noundef zeroext %tobool7) #16, !dbg !4180
  %cmp = icmp eq i32 %call8, -10, !dbg !4181
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4182

if.then9:                                         ; preds = %if.end6
  store i32 -10, ptr %retval, align 4, !dbg !4183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !4183

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %path.addr, align 8, !dbg !4184
  %11 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4185, !range !4179, !noundef !812
  %tobool11 = trunc i8 %11 to i1, !dbg !4185
  %call12 = call i32 @autofs_mount_wait(ptr noundef %10, i1 noundef zeroext %tobool11) #16, !dbg !4186
  store i32 %call12, ptr %status, align 4, !dbg !4187
  %12 = load i32, ptr %status, align 4, !dbg !4188
  %tobool13 = icmp ne i32 %12, 0, !dbg !4188
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4190

if.then14:                                        ; preds = %if.end10
  %13 = load i32, ptr %status, align 4, !dbg !4191
  store i32 %13, ptr %retval, align 4, !dbg !4192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !4192

if.end15:                                         ; preds = %if.end10
  %14 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4193, !range !4179, !noundef !812
  %tobool16 = trunc i8 %14 to i1, !dbg !4193
  br i1 %tobool16, label %if.then17, label %if.end34, !dbg !4194

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4141, metadata !DIExpression()), !dbg !4196
  %15 = load ptr, ptr %ino, align 8, !dbg !4197
  %flags = getelementptr inbounds %struct.autofs_info, ptr %15, i32 0, i32 1, !dbg !4199
  %16 = load i32, ptr %flags, align 8, !dbg !4199
  %and = and i32 %16, 2, !dbg !4200
  %tobool18 = icmp ne i32 %and, 0, !dbg !4200
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4201

if.then19:                                        ; preds = %if.then17
  store i32 0, ptr %retval, align 4, !dbg !4202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4202

if.end20:                                         ; preds = %if.then17
  %17 = load ptr, ptr %path.addr, align 8, !dbg !4203
  %call21 = call zeroext i1 @path_is_mountpoint(ptr noundef %17) #16, !dbg !4205
  br i1 %call21, label %if.then22, label %if.end23, !dbg !4206

if.then22:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4, !dbg !4207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4207

if.end23:                                         ; preds = %if.end20
  %18 = load ptr, ptr %dentry, align 8, !dbg !4208
  %call24 = call ptr @d_inode_rcu(ptr noundef %18) #16, !dbg !4209
  store ptr %call24, ptr %inode, align 8, !dbg !4210
  %19 = load ptr, ptr %inode, align 8, !dbg !4211
  %tobool25 = icmp ne ptr %19, null, !dbg !4211
  br i1 %tobool25, label %land.lhs.true, label %if.end30, !dbg !4213

land.lhs.true:                                    ; preds = %if.end23
  %20 = load ptr, ptr %inode, align 8, !dbg !4214
  %i_mode = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 0, !dbg !4214
  %21 = load i16, ptr %i_mode, align 8, !dbg !4214
  %conv = zext i16 %21 to i32, !dbg !4214
  %and26 = and i32 %conv, 61440, !dbg !4214
  %cmp27 = icmp eq i32 %and26, 40960, !dbg !4214
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4215

if.then29:                                        ; preds = %land.lhs.true
  store i32 -21, ptr %retval, align 4, !dbg !4216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4216

if.end30:                                         ; preds = %land.lhs.true, %if.end23
  %22 = load ptr, ptr %ino, align 8, !dbg !4217
  %call31 = call zeroext i1 @autofs_empty(ptr noundef %22) #16, !dbg !4219
  br i1 %call31, label %if.end33, label %if.then32, !dbg !4220

if.then32:                                        ; preds = %if.end30
  store i32 -21, ptr %retval, align 4, !dbg !4221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4221

if.end33:                                         ; preds = %if.end30
  store i32 0, ptr %retval, align 4, !dbg !4222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4222

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then29, %if.then22, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !4223
  br label %cleanup51

if.end34:                                         ; preds = %if.end15
  %23 = load ptr, ptr %sbi, align 8, !dbg !4224
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %23, i32 0, i32 14, !dbg !4225
  call void @spin_lock(ptr noundef %fs_lock) #16, !dbg !4226
  %24 = load ptr, ptr %ino, align 8, !dbg !4227
  %flags35 = getelementptr inbounds %struct.autofs_info, ptr %24, i32 0, i32 1, !dbg !4229
  %25 = load i32, ptr %flags35, align 8, !dbg !4229
  %and36 = and i32 %25, 1, !dbg !4230
  %tobool37 = icmp ne i32 %and36, 0, !dbg !4230
  br i1 %tobool37, label %if.end49, label %if.then38, !dbg !4231

if.then38:                                        ; preds = %if.end34
  %26 = load ptr, ptr %path.addr, align 8, !dbg !4232
  %call39 = call zeroext i1 @path_is_mountpoint(ptr noundef %26) #16, !dbg !4235
  br i1 %call39, label %lor.lhs.false, label %land.lhs.true40, !dbg !4236

land.lhs.true40:                                  ; preds = %if.then38
  %27 = load ptr, ptr %ino, align 8, !dbg !4237
  %call41 = call zeroext i1 @autofs_empty(ptr noundef %27) #16, !dbg !4238
  br i1 %call41, label %lor.lhs.false, label %if.then47, !dbg !4239

lor.lhs.false:                                    ; preds = %land.lhs.true40, %if.then38
  %28 = load ptr, ptr %dentry, align 8, !dbg !4240
  %call42 = call zeroext i1 @d_really_is_positive(ptr noundef %28) #16, !dbg !4241
  br i1 %call42, label %land.lhs.true44, label %if.end48, !dbg !4242

land.lhs.true44:                                  ; preds = %lor.lhs.false
  %29 = load ptr, ptr %dentry, align 8, !dbg !4243
  %call45 = call zeroext i1 @d_is_symlink(ptr noundef %29) #16, !dbg !4244
  br i1 %call45, label %if.then47, label %if.end48, !dbg !4245

if.then47:                                        ; preds = %land.lhs.true44, %land.lhs.true40
  store i32 -21, ptr %status, align 4, !dbg !4246
  br label %if.end48, !dbg !4247

if.end48:                                         ; preds = %if.then47, %land.lhs.true44, %lor.lhs.false
  br label %if.end49, !dbg !4248

if.end49:                                         ; preds = %if.end48, %if.end34
  %30 = load ptr, ptr %sbi, align 8, !dbg !4249
  %fs_lock50 = getelementptr inbounds %struct.autofs_sb_info, ptr %30, i32 0, i32 14, !dbg !4250
  call void @spin_unlock(ptr noundef %fs_lock50) #16, !dbg !4251
  %31 = load i32, ptr %status, align 4, !dbg !4252
  store i32 %31, ptr %retval, align 4, !dbg !4253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !4253

cleanup51:                                        ; preds = %if.end49, %cleanup, %if.then14, %if.then9, %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !4254
  %32 = load i32, ptr %retval, align 4, !dbg !4254
  ret i32 %32, !dbg !4254
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @is_autofs_dentry(ptr noundef %dentry) #1 align 16 !dbg !4255 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4259
  %tobool = icmp ne ptr %0, null, !dbg !4259
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !4260

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4261
  %call = call zeroext i1 @d_really_is_positive(ptr noundef %1) #16, !dbg !4262
  br i1 %call, label %land.lhs.true1, label %land.end, !dbg !4263

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4264
  %d_op = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 8, !dbg !4265
  %3 = load ptr, ptr %d_op, align 8, !dbg !4265
  %cmp = icmp eq ptr %3, @autofs_dentry_operations, !dbg !4266
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4267

land.rhs:                                         ; preds = %land.lhs.true1
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4268
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11, !dbg !4269
  %5 = load ptr, ptr %d_fsdata, align 8, !dbg !4269
  %cmp2 = icmp ne ptr %5, null, !dbg !4270
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true1, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !4271
  %land.ext = zext i1 %6 to i32, !dbg !4267
  ret i32 %land.ext, !dbg !4272
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_positive(ptr noundef %dentry) #3 align 16 !dbg !4273 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4279
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4280
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4280
  %cmp = icmp ne ptr %1, null, !dbg !4281
  ret i1 %cmp, !dbg !4282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_sbi(ptr noundef %sb) #3 align 16 !dbg !4283 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4289
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4290
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4290
  ret ptr %1, !dbg !4291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_dentry_ino(ptr noundef %dentry) #3 align 16 !dbg !4292 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4298
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !4299
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !4299
  ret ptr %1, !dbg !4300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_oz_mode(ptr noundef %sbi) #3 align 16 !dbg !4301 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !4307
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 8, !dbg !4308
  %1 = load i32, ptr %flags, align 8, !dbg !4308
  %and = and i32 %1, 1, !dbg !4309
  %tobool = icmp ne i32 %and, 0, !dbg !4309
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4310

lor.rhs:                                          ; preds = %entry
  %call = call ptr @get_current() #16, !dbg !4311
  %call1 = call ptr @task_pgrp(ptr noundef %call) #16, !dbg !4312
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !4313
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 3, !dbg !4314
  %3 = load ptr, ptr %oz_pgrp, align 8, !dbg !4314
  %cmp = icmp eq ptr %call1, %3, !dbg !4315
  br label %lor.end, !dbg !4310

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !4310
  ret i32 %lor.ext, !dbg !4316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !4317 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4325
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4325
  call void @_raw_spin_lock(ptr noundef %1) #16, !dbg !4325
  ret void, !dbg !4326
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4327 dso_local zeroext i1 @path_is_mountpoint(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @autofs_empty(ptr noundef %ino) #3 align 16 !dbg !4330 {
entry:
  %ino.addr = alloca ptr, align 8
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  %0 = load ptr, ptr %ino.addr, align 8, !dbg !4336
  %count = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 7, !dbg !4337
  %1 = load i32, ptr %count, align 8, !dbg !4337
  %cmp = icmp slt i32 %1, 2, !dbg !4338
  ret i1 %cmp, !dbg !4339
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !4340 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4344
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4344
  call void @_raw_spin_unlock(ptr noundef %1) #16, !dbg !4344
  ret void, !dbg !4345
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_pgrp(ptr noundef %task) #3 align 16 !dbg !4346 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4352
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !4353
  %1 = load ptr, ptr %signal, align 64, !dbg !4353
  %pids = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 23, !dbg !4354
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 2, !dbg !4352
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4352
  ret ptr %2, !dbg !4355
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4356 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4369
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4361, metadata !DIExpression()), !dbg !4369
  br label %do.body, !dbg !4369

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4370
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4363, metadata !DIExpression()), !dbg !4370
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4370
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4369
  br label %do.cond, !dbg !4370

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4370

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4371
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4367, metadata !DIExpression()), !dbg !4371
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !4371, !srcloc !4372
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4371
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4371
  %3 = inttoptr i64 %2 to ptr, !dbg !4371
  store ptr %3, ptr %tmp, align 8, !dbg !4371
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4369
  %4 = load ptr, ptr %tmp, align 8, !dbg !4371
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4369
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4369
  store ptr %5, ptr %tmp1, align 8, !dbg !4369
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4373
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4369
  ret ptr %6, !dbg !4374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4375 dso_local void @_raw_spin_lock(ptr noundef) #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4380 dso_local void @_raw_spin_unlock(ptr noundef) #0 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !4381 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  br label %do.body, !dbg !4390

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4392

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4390
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4390
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4390
  store ptr %1, ptr %tmp, align 8, !dbg !4392
  %2 = load ptr, ptr %tmp, align 8, !dbg !4390
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4394
  %cmp = icmp eq ptr %2, %3, !dbg !4395
  %conv = zext i1 %cmp to i32, !dbg !4395
  ret i32 %conv, !dbg !4396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !4397 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4401, metadata !DIExpression()), !dbg !4402
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4403
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !4404
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4405
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4406
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4407
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4408
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4409
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4410
  ret void, !dbg !4411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4412 dso_local void @autofs_free_ino(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !4415 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4417, metadata !DIExpression()), !dbg !4418
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4419
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !4421
  br i1 %call, label %if.end, label %if.then, !dbg !4422

if.then:                                          ; preds = %entry
  br label %return, !dbg !4423

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4424
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4425
  %2 = load ptr, ptr %prev, align 8, !dbg !4425
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4426
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4427
  %4 = load ptr, ptr %next, align 8, !dbg !4427
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !4428
  br label %return, !dbg !4429

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !4430 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  ret i1 true, !dbg !4436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4437 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4441, metadata !DIExpression()), !dbg !4443
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4442, metadata !DIExpression()), !dbg !4444
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4445
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4446
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4447
  store ptr %0, ptr %prev1, align 8, !dbg !4448
  br label %do.body, !dbg !4449

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4450

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4452

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4450

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4454
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4454
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4454
  store volatile ptr %2, ptr %next4, align 8, !dbg !4454
  br label %do.end5, !dbg !4454

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4450

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4456
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_expire_wait(ptr noundef %path, i1 noundef zeroext %rcu_walk) #1 align 16 !dbg !4457 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %rcu_walk.addr = alloca i8, align 1
  %dentry = alloca ptr, align 8
  %expiring = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %this = alloca %struct.path, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4459, metadata !DIExpression()), !dbg !4466
  %frombool = zext i1 %rcu_walk to i8
  store i8 %frombool, ptr %rcu_walk.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu_walk.addr, metadata !4460, metadata !DIExpression()), !dbg !4467
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !4468
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4461, metadata !DIExpression()), !dbg !4469
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4470
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !4471
  %1 = load ptr, ptr %dentry1, align 8, !dbg !4471
  store ptr %1, ptr %dentry, align 8, !dbg !4469
  call void @llvm.lifetime.start.p0(i64 8, ptr %expiring) #15, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %expiring, metadata !4462, metadata !DIExpression()), !dbg !4473
  %2 = load ptr, ptr %dentry, align 8, !dbg !4474
  %3 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4475, !range !4179, !noundef !812
  %tobool = trunc i8 %3 to i1, !dbg !4475
  %call = call ptr @autofs_lookup_expiring(ptr noundef %2, i1 noundef zeroext %tobool) #16, !dbg !4476
  store ptr %call, ptr %expiring, align 8, !dbg !4477
  %4 = load ptr, ptr %expiring, align 8, !dbg !4478
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !4480
  br i1 %call2, label %if.then, label %if.end, !dbg !4481

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %expiring, align 8, !dbg !4482
  %call3 = call i64 @PTR_ERR(ptr noundef %5) #16, !dbg !4483
  %conv = trunc i64 %call3 to i32, !dbg !4483
  store i32 %conv, ptr %retval, align 4, !dbg !4484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4484

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %expiring, align 8, !dbg !4485
  %tobool4 = icmp ne ptr %6, null, !dbg !4485
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !4486

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %path.addr, align 8, !dbg !4487
  %8 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4488, !range !4179, !noundef !812
  %tobool6 = trunc i8 %8 to i1, !dbg !4488
  %conv7 = zext i1 %tobool6 to i32, !dbg !4488
  %call8 = call i32 @autofs_expire_wait(ptr noundef %7, i32 noundef %conv7) #16, !dbg !4489
  store i32 %call8, ptr %retval, align 4, !dbg !4490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4490

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %this) #15, !dbg !4491
  call void @llvm.dbg.declare(metadata ptr %this, metadata !4463, metadata !DIExpression()), !dbg !4492
  %mnt = getelementptr inbounds %struct.path, ptr %this, i32 0, i32 0, !dbg !4493
  %9 = load ptr, ptr %path.addr, align 8, !dbg !4494
  %mnt9 = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 0, !dbg !4495
  %10 = load ptr, ptr %mnt9, align 8, !dbg !4495
  store ptr %10, ptr %mnt, align 8, !dbg !4493
  %dentry10 = getelementptr inbounds %struct.path, ptr %this, i32 0, i32 1, !dbg !4493
  %11 = load ptr, ptr %expiring, align 8, !dbg !4496
  store ptr %11, ptr %dentry10, align 8, !dbg !4493
  %call11 = call i32 @autofs_expire_wait(ptr noundef %this, i32 noundef 0) #16, !dbg !4497
  %12 = load ptr, ptr %expiring, align 8, !dbg !4498
  call void @autofs_del_expiring(ptr noundef %12) #16, !dbg !4499
  %13 = load ptr, ptr %expiring, align 8, !dbg !4500
  call void @dput(ptr noundef %13) #16, !dbg !4501
  call void @llvm.lifetime.end.p0(i64 16, ptr %this) #15, !dbg !4502
  br label %if.end12

if.end12:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !4503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4503

cleanup:                                          ; preds = %if.end12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %expiring) #15, !dbg !4504
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !4504
  %14 = load i32, ptr %retval, align 4, !dbg !4504
  ret i32 %14, !dbg !4504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_mount_wait(ptr noundef %path, i1 noundef zeroext %rcu_walk) #1 align 16 !dbg !4505 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %rcu_walk.addr = alloca i8, align 1
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4507, metadata !DIExpression()), !dbg !4512
  %frombool = zext i1 %rcu_walk to i8
  store i8 %frombool, ptr %rcu_walk.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu_walk.addr, metadata !4508, metadata !DIExpression()), !dbg !4513
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !4514
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4509, metadata !DIExpression()), !dbg !4515
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4516
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !4517
  %1 = load ptr, ptr %dentry, align 8, !dbg !4517
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !4518
  %2 = load ptr, ptr %d_sb, align 8, !dbg !4518
  %call = call ptr @autofs_sbi(ptr noundef %2) #16, !dbg !4519
  store ptr %call, ptr %sbi, align 8, !dbg !4515
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !4520
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4510, metadata !DIExpression()), !dbg !4521
  %3 = load ptr, ptr %path.addr, align 8, !dbg !4522
  %dentry1 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1, !dbg !4523
  %4 = load ptr, ptr %dentry1, align 8, !dbg !4523
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %4) #16, !dbg !4524
  store ptr %call2, ptr %ino, align 8, !dbg !4521
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4511, metadata !DIExpression()), !dbg !4526
  store i32 0, ptr %status, align 4, !dbg !4526
  %5 = load ptr, ptr %ino, align 8, !dbg !4527
  %flags = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 1, !dbg !4529
  %6 = load i32, ptr %flags, align 8, !dbg !4529
  %and = and i32 %6, 4, !dbg !4530
  %tobool = icmp ne i32 %and, 0, !dbg !4530
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4531

if.then:                                          ; preds = %entry
  %7 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4532, !range !4179, !noundef !812
  %tobool3 = trunc i8 %7 to i1, !dbg !4532
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4535

if.then4:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4, !dbg !4536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4536

if.end:                                           ; preds = %if.then
  store i32 0, ptr %tmp, align 4, !dbg !4537
  %8 = load i32, ptr %tmp, align 4, !dbg !4540
  %9 = load ptr, ptr %sbi, align 8, !dbg !4541
  %10 = load ptr, ptr %path.addr, align 8, !dbg !4542
  %call5 = call i32 @autofs_wait(ptr noundef %9, ptr noundef %10, i32 noundef 1) #16, !dbg !4543
  store i32 %call5, ptr %status, align 4, !dbg !4544
  store i32 0, ptr %tmp6, align 4, !dbg !4545
  %11 = load i32, ptr %tmp6, align 4, !dbg !4548
  %12 = load volatile i64, ptr @jiffies, align 64, !dbg !4549
  %13 = load ptr, ptr %ino, align 8, !dbg !4550
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %13, i32 0, i32 6, !dbg !4551
  store i64 %12, ptr %last_used, align 8, !dbg !4552
  %14 = load i32, ptr %status, align 4, !dbg !4553
  store i32 %14, ptr %retval, align 4, !dbg !4554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4554

if.end7:                                          ; preds = %entry
  %15 = load ptr, ptr %sbi, align 8, !dbg !4555
  %flags8 = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 8, !dbg !4557
  %16 = load i32, ptr %flags8, align 8, !dbg !4557
  %and9 = and i32 %16, 2, !dbg !4558
  %tobool10 = icmp ne i32 %and9, 0, !dbg !4558
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !4559

if.then11:                                        ; preds = %if.end7
  %17 = load volatile i64, ptr @jiffies, align 64, !dbg !4560
  %18 = load ptr, ptr %ino, align 8, !dbg !4561
  %last_used12 = getelementptr inbounds %struct.autofs_info, ptr %18, i32 0, i32 6, !dbg !4562
  store i64 %17, ptr %last_used12, align 8, !dbg !4563
  br label %if.end13, !dbg !4561

if.end13:                                         ; preds = %if.then11, %if.end7
  %19 = load i32, ptr %status, align 4, !dbg !4564
  store i32 %19, ptr %retval, align 4, !dbg !4565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4565

cleanup:                                          ; preds = %if.end13, %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !4566
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4566
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4566
  %20 = load i32, ptr %retval, align 4, !dbg !4566
  ret i32 %20, !dbg !4566
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4567 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  %0 = load i64, ptr %error.addr, align 8, !dbg !4574
  %1 = inttoptr i64 %0 to ptr, !dbg !4575
  ret ptr %1, !dbg !4576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_symlink(ptr noundef %dentry) #3 align 16 !dbg !4577 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4581
  %call = call i32 @__d_entry_type(ptr noundef %0) #16, !dbg !4582
  %cmp = icmp eq i32 %call, 6291456, !dbg !4583
  ret i1 %cmp, !dbg !4584
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4585 dso_local i32 @path_has_submounts(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_mountpoint_changed(ptr noundef %path) #1 align 16 !dbg !4588 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4592, metadata !DIExpression()), !dbg !4600
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #15, !dbg !4601
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4593, metadata !DIExpression()), !dbg !4602
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4603
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !4604
  %1 = load ptr, ptr %dentry1, align 8, !dbg !4604
  store ptr %1, ptr %dentry, align 8, !dbg !4602
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !4605
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4594, metadata !DIExpression()), !dbg !4606
  %2 = load ptr, ptr %dentry, align 8, !dbg !4607
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9, !dbg !4608
  %3 = load ptr, ptr %d_sb, align 8, !dbg !4608
  %call = call ptr @autofs_sbi(ptr noundef %3) #16, !dbg !4609
  store ptr %call, ptr %sbi, align 8, !dbg !4606
  %4 = load ptr, ptr %sbi, align 8, !dbg !4610
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %4, i32 0, i32 10, !dbg !4611
  %5 = load i32, ptr %type, align 8, !dbg !4611
  %call2 = call i32 @autofs_type_indirect(i32 noundef %5) #16, !dbg !4612
  %tobool = icmp ne i32 %call2, 0, !dbg !4612
  br i1 %tobool, label %land.lhs.true, label %if.end13, !dbg !4613

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %dentry, align 8, !dbg !4614
  %call3 = call i32 @d_unhashed(ptr noundef %6) #16, !dbg !4615
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4615
  br i1 %tobool4, label %if.then, label %if.end13, !dbg !4616

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !4617
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4595, metadata !DIExpression()), !dbg !4618
  %7 = load ptr, ptr %dentry, align 8, !dbg !4619
  %d_parent = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 3, !dbg !4620
  %8 = load ptr, ptr %d_parent, align 8, !dbg !4620
  store ptr %8, ptr %parent, align 8, !dbg !4618
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !4621
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4598, metadata !DIExpression()), !dbg !4622
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #15, !dbg !4623
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4599, metadata !DIExpression()), !dbg !4624
  %9 = load ptr, ptr %parent, align 8, !dbg !4625
  %10 = load ptr, ptr %dentry, align 8, !dbg !4626
  %d_name = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 4, !dbg !4627
  %call5 = call ptr @d_lookup(ptr noundef %9, ptr noundef %d_name) #16, !dbg !4628
  store ptr %call5, ptr %new, align 8, !dbg !4629
  %11 = load ptr, ptr %new, align 8, !dbg !4630
  %tobool6 = icmp ne ptr %11, null, !dbg !4630
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !4632

if.then7:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !4633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4633

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %new, align 8, !dbg !4634
  %call8 = call ptr @autofs_dentry_ino(ptr noundef %12) #16, !dbg !4635
  store ptr %call8, ptr %ino, align 8, !dbg !4636
  %13 = load volatile i64, ptr @jiffies, align 64, !dbg !4637
  %14 = load ptr, ptr %ino, align 8, !dbg !4638
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %14, i32 0, i32 6, !dbg !4639
  store i64 %13, ptr %last_used, align 8, !dbg !4640
  %15 = load ptr, ptr %path.addr, align 8, !dbg !4641
  %dentry9 = getelementptr inbounds %struct.path, ptr %15, i32 0, i32 1, !dbg !4642
  %16 = load ptr, ptr %dentry9, align 8, !dbg !4642
  call void @dput(ptr noundef %16) #16, !dbg !4643
  %17 = load ptr, ptr %new, align 8, !dbg !4644
  %18 = load ptr, ptr %path.addr, align 8, !dbg !4645
  %dentry10 = getelementptr inbounds %struct.path, ptr %18, i32 0, i32 1, !dbg !4646
  store ptr %17, ptr %dentry10, align 8, !dbg !4647
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4648
  br label %cleanup, !dbg !4648

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #15, !dbg !4648
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4648
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !4648
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !4649

if.end13:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  %19 = load ptr, ptr %path.addr, align 8, !dbg !4650
  %dentry14 = getelementptr inbounds %struct.path, ptr %19, i32 0, i32 1, !dbg !4651
  %20 = load ptr, ptr %dentry14, align 8, !dbg !4651
  store ptr %20, ptr %retval, align 8, !dbg !4652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !4652

cleanup15:                                        ; preds = %if.end13, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4653
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #15, !dbg !4653
  %21 = load ptr, ptr %retval, align 8, !dbg !4653
  ret ptr %21, !dbg !4653
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_lookup_expiring(ptr noundef %dentry, i1 noundef zeroext %rcu_walk) #1 align 16 !dbg !4654 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %rcu_walk.addr = alloca i8, align 1
  %sbi = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %name = alloca ptr, align 8
  %len = alloca i32, align 4
  %hash = alloca i32, align 4
  %str = alloca ptr, align 8
  %p = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ino = alloca ptr, align 8
  %expiring = alloca ptr, align 8
  %qstr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4658, metadata !DIExpression()), !dbg !4677
  %frombool = zext i1 %rcu_walk to i8
  store i8 %frombool, ptr %rcu_walk.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu_walk.addr, metadata !4659, metadata !DIExpression()), !dbg !4678
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4660, metadata !DIExpression()), !dbg !4680
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4681
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4682
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4682
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !4683
  store ptr %call, ptr %sbi, align 8, !dbg !4680
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !4684
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4661, metadata !DIExpression()), !dbg !4685
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4686
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !4687
  %3 = load ptr, ptr %d_parent, align 8, !dbg !4687
  store ptr %3, ptr %parent, align 8, !dbg !4685
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4662, metadata !DIExpression()), !dbg !4689
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4690
  %d_name = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, !dbg !4691
  store ptr %d_name, ptr %name, align 8, !dbg !4689
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !4692
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4663, metadata !DIExpression()), !dbg !4693
  %5 = load ptr, ptr %name, align 8, !dbg !4694
  %6 = getelementptr inbounds %struct.qstr, ptr %5, i32 0, i32 0, !dbg !4695
  %len1 = getelementptr inbounds %struct.anon.14, ptr %6, i32 0, i32 1, !dbg !4695
  %7 = load i32, ptr %len1, align 4, !dbg !4695
  store i32 %7, ptr %len, align 4, !dbg !4693
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #15, !dbg !4696
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !4664, metadata !DIExpression()), !dbg !4697
  %8 = load ptr, ptr %name, align 8, !dbg !4698
  %9 = getelementptr inbounds %struct.qstr, ptr %8, i32 0, i32 0, !dbg !4699
  %hash2 = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 0, !dbg !4699
  %10 = load i32, ptr %hash2, align 8, !dbg !4699
  store i32 %10, ptr %hash, align 4, !dbg !4697
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #15, !dbg !4700
  call void @llvm.dbg.declare(metadata ptr %str, metadata !4665, metadata !DIExpression()), !dbg !4701
  %11 = load ptr, ptr %name, align 8, !dbg !4702
  %name3 = getelementptr inbounds %struct.qstr, ptr %11, i32 0, i32 1, !dbg !4703
  %12 = load ptr, ptr %name3, align 8, !dbg !4703
  store ptr %12, ptr %str, align 8, !dbg !4701
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4666, metadata !DIExpression()), !dbg !4705
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #15, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %head, metadata !4667, metadata !DIExpression()), !dbg !4706
  %13 = load ptr, ptr %sbi, align 8, !dbg !4707
  %expiring_list = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 18, !dbg !4708
  store ptr %expiring_list, ptr %head, align 8, !dbg !4709
  %14 = load ptr, ptr %head, align 8, !dbg !4710
  %call4 = call i32 @list_empty(ptr noundef %14) #16, !dbg !4712
  %tobool = icmp ne i32 %call4, 0, !dbg !4712
  br i1 %tobool, label %if.then, label %if.end, !dbg !4713

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !4714

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %sbi, align 8, !dbg !4715
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 16, !dbg !4716
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !4717
  %16 = load ptr, ptr %head, align 8, !dbg !4718
  %next = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !4718
  %17 = load ptr, ptr %next, align 8, !dbg !4718
  store ptr %17, ptr %p, align 8, !dbg !4718
  br label %for.cond, !dbg !4718

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load ptr, ptr %p, align 8, !dbg !4719
  %19 = load ptr, ptr %head, align 8, !dbg !4719
  %call5 = call i32 @list_is_head(ptr noundef %18, ptr noundef %19) #16, !dbg !4719
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4719
  %lnot = xor i1 %tobool6, true, !dbg !4719
  br i1 %lnot, label %for.body, label %for.end, !dbg !4718

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !4720
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4668, metadata !DIExpression()), !dbg !4721
  call void @llvm.lifetime.start.p0(i64 8, ptr %expiring) #15, !dbg !4722
  call void @llvm.dbg.declare(metadata ptr %expiring, metadata !4672, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %qstr) #15, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %qstr, metadata !4673, metadata !DIExpression()), !dbg !4725
  %20 = load i8, ptr %rcu_walk.addr, align 1, !dbg !4726, !range !4179, !noundef !812
  %tobool7 = trunc i8 %20 to i1, !dbg !4726
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !4728

if.then8:                                         ; preds = %for.body
  %21 = load ptr, ptr %sbi, align 8, !dbg !4729
  %lookup_lock9 = getelementptr inbounds %struct.autofs_sb_info, ptr %21, i32 0, i32 16, !dbg !4731
  call void @spin_unlock(ptr noundef %lookup_lock9) #16, !dbg !4732
  %call10 = call ptr @ERR_PTR(i64 noundef -10) #16, !dbg !4733
  store ptr %call10, ptr %retval, align 8, !dbg !4734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4734

if.end11:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4735
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4674, metadata !DIExpression()), !dbg !4735
  %22 = load ptr, ptr %p, align 8, !dbg !4735
  store ptr %22, ptr %__mptr, align 8, !dbg !4735
  %23 = load ptr, ptr %__mptr, align 8, !dbg !4735
  %add.ptr = getelementptr i8, ptr %23, i64 -64, !dbg !4735
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4736
  %24 = load ptr, ptr %tmp, align 8, !dbg !4735
  store ptr %24, ptr %ino, align 8, !dbg !4737
  %25 = load ptr, ptr %ino, align 8, !dbg !4738
  %dentry12 = getelementptr inbounds %struct.autofs_info, ptr %25, i32 0, i32 0, !dbg !4739
  %26 = load ptr, ptr %dentry12, align 8, !dbg !4739
  store ptr %26, ptr %expiring, align 8, !dbg !4740
  %27 = load ptr, ptr %expiring, align 8, !dbg !4741
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 7, !dbg !4742
  %28 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4742
  %lock = getelementptr inbounds %struct.anon.16, ptr %28, i32 0, i32 0, !dbg !4742
  call void @spin_lock(ptr noundef %lock) #16, !dbg !4743
  %29 = load ptr, ptr %expiring, align 8, !dbg !4744
  %call13 = call zeroext i1 @d_really_is_negative(ptr noundef %29) #16, !dbg !4746
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4747

if.then14:                                        ; preds = %if.end11
  br label %next42, !dbg !4748

if.end15:                                         ; preds = %if.end11
  %30 = load ptr, ptr %expiring, align 8, !dbg !4749
  %d_name16 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 4, !dbg !4750
  store ptr %d_name16, ptr %qstr, align 8, !dbg !4751
  %31 = load ptr, ptr %expiring, align 8, !dbg !4752
  %d_name17 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 4, !dbg !4754
  %32 = getelementptr inbounds %struct.qstr, ptr %d_name17, i32 0, i32 0, !dbg !4755
  %hash18 = getelementptr inbounds %struct.anon.14, ptr %32, i32 0, i32 0, !dbg !4755
  %33 = load i32, ptr %hash18, align 8, !dbg !4755
  %34 = load i32, ptr %hash, align 4, !dbg !4756
  %cmp = icmp ne i32 %33, %34, !dbg !4757
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !4758

if.then19:                                        ; preds = %if.end15
  br label %next42, !dbg !4759

if.end20:                                         ; preds = %if.end15
  %35 = load ptr, ptr %expiring, align 8, !dbg !4760
  %d_parent21 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 3, !dbg !4762
  %36 = load ptr, ptr %d_parent21, align 8, !dbg !4762
  %37 = load ptr, ptr %parent, align 8, !dbg !4763
  %cmp22 = icmp ne ptr %36, %37, !dbg !4764
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !4765

if.then23:                                        ; preds = %if.end20
  br label %next42, !dbg !4766

if.end24:                                         ; preds = %if.end20
  %38 = load ptr, ptr %qstr, align 8, !dbg !4767
  %39 = getelementptr inbounds %struct.qstr, ptr %38, i32 0, i32 0, !dbg !4769
  %len25 = getelementptr inbounds %struct.anon.14, ptr %39, i32 0, i32 1, !dbg !4769
  %40 = load i32, ptr %len25, align 4, !dbg !4769
  %41 = load i32, ptr %len, align 4, !dbg !4770
  %cmp26 = icmp ne i32 %40, %41, !dbg !4771
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !4772

if.then27:                                        ; preds = %if.end24
  br label %next42, !dbg !4773

if.end28:                                         ; preds = %if.end24
  %42 = load ptr, ptr %qstr, align 8, !dbg !4774
  %name29 = getelementptr inbounds %struct.qstr, ptr %42, i32 0, i32 1, !dbg !4776
  %43 = load ptr, ptr %name29, align 8, !dbg !4776
  %44 = load ptr, ptr %str, align 8, !dbg !4777
  %45 = load i32, ptr %len, align 4, !dbg !4778
  %conv = zext i32 %45 to i64, !dbg !4778
  %call30 = call i32 @memcmp(ptr noundef %43, ptr noundef %44, i64 noundef %conv) #16, !dbg !4779
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4779
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4780

if.then32:                                        ; preds = %if.end28
  br label %next42, !dbg !4781

if.end33:                                         ; preds = %if.end28
  %46 = load ptr, ptr %expiring, align 8, !dbg !4782
  %call34 = call i32 @d_unhashed(ptr noundef %46) #16, !dbg !4784
  %tobool35 = icmp ne i32 %call34, 0, !dbg !4784
  br i1 %tobool35, label %if.then36, label %if.end41, !dbg !4785

if.then36:                                        ; preds = %if.end33
  %47 = load ptr, ptr %expiring, align 8, !dbg !4786
  %call37 = call ptr @dget_dlock(ptr noundef %47) #16, !dbg !4788
  %48 = load ptr, ptr %expiring, align 8, !dbg !4789
  %d_lockref38 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 7, !dbg !4790
  %49 = getelementptr inbounds %struct.lockref, ptr %d_lockref38, i32 0, i32 0, !dbg !4790
  %lock39 = getelementptr inbounds %struct.anon.16, ptr %49, i32 0, i32 0, !dbg !4790
  call void @spin_unlock(ptr noundef %lock39) #16, !dbg !4791
  %50 = load ptr, ptr %sbi, align 8, !dbg !4792
  %lookup_lock40 = getelementptr inbounds %struct.autofs_sb_info, ptr %50, i32 0, i32 16, !dbg !4793
  call void @spin_unlock(ptr noundef %lookup_lock40) #16, !dbg !4794
  %51 = load ptr, ptr %expiring, align 8, !dbg !4795
  store ptr %51, ptr %retval, align 8, !dbg !4796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4796

if.end41:                                         ; preds = %if.end33
  br label %next42, !dbg !4797

next42:                                           ; preds = %if.end41, %if.then32, %if.then27, %if.then23, %if.then19, %if.then14
  call void @llvm.dbg.label(metadata !4676), !dbg !4798
  %52 = load ptr, ptr %expiring, align 8, !dbg !4799
  %d_lockref43 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 7, !dbg !4800
  %53 = getelementptr inbounds %struct.lockref, ptr %d_lockref43, i32 0, i32 0, !dbg !4800
  %lock44 = getelementptr inbounds %struct.anon.16, ptr %53, i32 0, i32 0, !dbg !4800
  call void @spin_unlock(ptr noundef %lock44) #16, !dbg !4801
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4802
  br label %cleanup, !dbg !4802

cleanup:                                          ; preds = %next42, %if.then36, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %qstr) #15, !dbg !4802
  call void @llvm.lifetime.end.p0(i64 8, ptr %expiring) #15, !dbg !4802
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4802
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4803

for.inc:                                          ; preds = %cleanup.cont
  %54 = load ptr, ptr %p, align 8, !dbg !4719
  %next47 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 0, !dbg !4719
  %55 = load ptr, ptr %next47, align 8, !dbg !4719
  store ptr %55, ptr %p, align 8, !dbg !4719
  br label %for.cond, !dbg !4719, !llvm.loop !4804

for.end:                                          ; preds = %for.cond
  %56 = load ptr, ptr %sbi, align 8, !dbg !4808
  %lookup_lock48 = getelementptr inbounds %struct.autofs_sb_info, ptr %56, i32 0, i32 16, !dbg !4809
  call void @spin_unlock(ptr noundef %lookup_lock48) #16, !dbg !4810
  store ptr null, ptr %retval, align 8, !dbg !4811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !4811

cleanup49:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4812
  %57 = load ptr, ptr %retval, align 8, !dbg !4812
  ret ptr %57, !dbg !4812
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4813 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4817, metadata !DIExpression()), !dbg !4818
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4819
  %1 = ptrtoint ptr %0 to i64, !dbg !4819
  %2 = inttoptr i64 %1 to ptr, !dbg !4819
  %3 = ptrtoint ptr %2 to i64, !dbg !4819
  %cmp = icmp uge i64 %3, -4095, !dbg !4819
  %lnot = xor i1 %cmp, true, !dbg !4819
  %lnot1 = xor i1 %lnot, true, !dbg !4819
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4819
  %conv = sext i32 %lnot.ext to i64, !dbg !4819
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4819
  %tobool = icmp ne i64 %expval, 0, !dbg !4819
  ret i1 %tobool, !dbg !4820
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4821 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4827
  %1 = ptrtoint ptr %0 to i64, !dbg !4828
  ret i64 %1, !dbg !4829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4830 dso_local i32 @autofs_expire_wait(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_del_expiring(ptr noundef %dentry) #3 align 16 !dbg !4833 {
entry:
  %dentry.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4835, metadata !DIExpression()), !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4836, metadata !DIExpression()), !dbg !4840
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4841
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4842
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4842
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !4843
  store ptr %call, ptr %sbi, align 8, !dbg !4840
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4837, metadata !DIExpression()), !dbg !4845
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4846
  %call1 = call ptr @autofs_dentry_ino(ptr noundef %2) #16, !dbg !4847
  store ptr %call1, ptr %ino, align 8, !dbg !4845
  %3 = load ptr, ptr %ino, align 8, !dbg !4848
  %tobool = icmp ne ptr %3, null, !dbg !4848
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4850

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %sbi, align 8, !dbg !4851
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %4, i32 0, i32 16, !dbg !4853
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !4854
  %5 = load ptr, ptr %ino, align 8, !dbg !4855
  %expiring = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 4, !dbg !4857
  %call2 = call i32 @list_empty(ptr noundef %expiring) #16, !dbg !4858
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4858
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4859

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %ino, align 8, !dbg !4860
  %expiring5 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 4, !dbg !4861
  call void @list_del_init(ptr noundef %expiring5) #16, !dbg !4862
  br label %if.end, !dbg !4862

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load ptr, ptr %sbi, align 8, !dbg !4863
  %lookup_lock6 = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 16, !dbg !4864
  call void @spin_unlock(ptr noundef %lookup_lock6) #16, !dbg !4865
  br label %if.end7, !dbg !4866

if.end7:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !4867
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !4867
  ret void, !dbg !4867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4868 dso_local void @dput(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !4869 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4873, metadata !DIExpression()), !dbg !4875
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4874, metadata !DIExpression()), !dbg !4876
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4877
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4878
  %cmp = icmp eq ptr %0, %1, !dbg !4879
  %conv = zext i1 %cmp to i32, !dbg !4879
  ret i32 %conv, !dbg !4880
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_negative(ptr noundef %dentry) #3 align 16 !dbg !4881 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4885
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4886
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4886
  %cmp = icmp eq ptr %1, null, !dbg !4887
  ret i1 %cmp, !dbg !4888
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4889 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unhashed(ptr noundef %dentry) #3 align 16 !dbg !4893 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4897
  %d_hash = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, !dbg !4898
  %call = call zeroext i1 @hlist_bl_unhashed(ptr noundef %d_hash) #16, !dbg !4899
  %conv = zext i1 %call to i32, !dbg !4899
  ret i32 %conv, !dbg !4900
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget_dlock(ptr noundef %dentry) #3 align 16 !dbg !4901 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4907
  %tobool = icmp ne ptr %0, null, !dbg !4907
  br i1 %tobool, label %if.then, label %if.end, !dbg !4909

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4910
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !4911
  %2 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4912
  %count = getelementptr inbounds %struct.anon.16, ptr %2, i32 0, i32 1, !dbg !4912
  %3 = load i32, ptr %count, align 4, !dbg !4913
  %inc = add i32 %3, 1, !dbg !4913
  store i32 %inc, ptr %count, align 4, !dbg !4913
  br label %if.end, !dbg !4910

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4914
  ret ptr %4, !dbg !4915
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #3 align 16 !dbg !4916 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  %0 = load ptr, ptr %h.addr, align 8, !dbg !4924
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !4925
  %1 = load ptr, ptr %pprev, align 8, !dbg !4925
  %tobool = icmp ne ptr %1, null, !dbg !4926
  %lnot = xor i1 %tobool, true, !dbg !4926
  ret i1 %lnot, !dbg !4927
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !4928 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4932
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !4933
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4934
  call void @INIT_LIST_HEAD(ptr noundef %1) #16, !dbg !4935
  ret void, !dbg !4936
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !4937 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  br label %do.body, !dbg !4941

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4942

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4944

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4942

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4946
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4946
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4946
  store volatile ptr %0, ptr %next, align 8, !dbg !4946
  br label %do.end3, !dbg !4946

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4942

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4948

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4949

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4951

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4949

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4953
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4953
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4953
  store volatile ptr %2, ptr %prev, align 8, !dbg !4953
  br label %do.end9, !dbg !4953

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4949

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4955
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4956 dso_local i32 @autofs_wait(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__d_entry_type(ptr noundef %dentry) #3 align 16 !dbg !4959 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4965
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !4966
  %1 = load i32, ptr %d_flags, align 8, !dbg !4966
  %and = and i32 %1, 7340032, !dbg !4967
  ret i32 %and, !dbg !4968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_indirect(i32 noundef %type) #3 align 16 !dbg !4969 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load i32, ptr %type.addr, align 4, !dbg !4975
  %cmp = icmp eq i32 %0, 1, !dbg !4976
  %conv = zext i1 %cmp to i32, !dbg !4976
  ret i32 %conv, !dbg !4977
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4978 dso_local ptr @d_lookup(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode_rcu(ptr noundef %dentry) #3 align 16 !dbg !4981 {
entry:
  %dentry.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  br label %do.body, !dbg !4987

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4989

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4987
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4987
  %1 = load volatile ptr, ptr %d_inode, align 8, !dbg !4987
  store ptr %1, ptr %tmp, align 8, !dbg !4989
  %2 = load ptr, ptr %tmp, align 8, !dbg !4987
  ret ptr %2, !dbg !4991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_lookup_active(ptr noundef %dentry) #1 align 16 !dbg !4992 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %name = alloca ptr, align 8
  %len = alloca i32, align 4
  %hash = alloca i32, align 4
  %str = alloca ptr, align 8
  %p = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ino = alloca ptr, align 8
  %active = alloca ptr, align 8
  %qstr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4994, metadata !DIExpression()), !dbg !5012
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !5013
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4995, metadata !DIExpression()), !dbg !5014
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5015
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5016
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5016
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !5017
  store ptr %call, ptr %sbi, align 8, !dbg !5014
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !5018
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4996, metadata !DIExpression()), !dbg !5019
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5020
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !5021
  %3 = load ptr, ptr %d_parent, align 8, !dbg !5021
  store ptr %3, ptr %parent, align 8, !dbg !5019
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !5022
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4997, metadata !DIExpression()), !dbg !5023
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !5024
  %d_name = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, !dbg !5025
  store ptr %d_name, ptr %name, align 8, !dbg !5023
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4998, metadata !DIExpression()), !dbg !5027
  %5 = load ptr, ptr %name, align 8, !dbg !5028
  %6 = getelementptr inbounds %struct.qstr, ptr %5, i32 0, i32 0, !dbg !5029
  %len1 = getelementptr inbounds %struct.anon.14, ptr %6, i32 0, i32 1, !dbg !5029
  %7 = load i32, ptr %len1, align 4, !dbg !5029
  store i32 %7, ptr %len, align 4, !dbg !5027
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #15, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !4999, metadata !DIExpression()), !dbg !5031
  %8 = load ptr, ptr %name, align 8, !dbg !5032
  %9 = getelementptr inbounds %struct.qstr, ptr %8, i32 0, i32 0, !dbg !5033
  %hash2 = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 0, !dbg !5033
  %10 = load i32, ptr %hash2, align 8, !dbg !5033
  store i32 %10, ptr %hash, align 4, !dbg !5031
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #15, !dbg !5034
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5000, metadata !DIExpression()), !dbg !5035
  %11 = load ptr, ptr %name, align 8, !dbg !5036
  %name3 = getelementptr inbounds %struct.qstr, ptr %11, i32 0, i32 1, !dbg !5037
  %12 = load ptr, ptr %name3, align 8, !dbg !5037
  store ptr %12, ptr %str, align 8, !dbg !5035
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5038
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5001, metadata !DIExpression()), !dbg !5039
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #15, !dbg !5038
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5002, metadata !DIExpression()), !dbg !5040
  %13 = load ptr, ptr %sbi, align 8, !dbg !5041
  %active_list = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 17, !dbg !5042
  store ptr %active_list, ptr %head, align 8, !dbg !5043
  %14 = load ptr, ptr %head, align 8, !dbg !5044
  %call4 = call i32 @list_empty(ptr noundef %14) #16, !dbg !5046
  %tobool = icmp ne i32 %call4, 0, !dbg !5046
  br i1 %tobool, label %if.then, label %if.end, !dbg !5047

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5048

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %sbi, align 8, !dbg !5049
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 16, !dbg !5050
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !5051
  %16 = load ptr, ptr %head, align 8, !dbg !5052
  %next = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !5052
  %17 = load ptr, ptr %next, align 8, !dbg !5052
  store ptr %17, ptr %p, align 8, !dbg !5052
  br label %for.cond, !dbg !5052

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load ptr, ptr %p, align 8, !dbg !5053
  %19 = load ptr, ptr %head, align 8, !dbg !5053
  %call5 = call i32 @list_is_head(ptr noundef %18, ptr noundef %19) #16, !dbg !5053
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5053
  %lnot = xor i1 %tobool6, true, !dbg !5053
  br i1 %lnot, label %for.body, label %for.end, !dbg !5052

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !5054
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !5003, metadata !DIExpression()), !dbg !5055
  call void @llvm.lifetime.start.p0(i64 8, ptr %active) #15, !dbg !5056
  call void @llvm.dbg.declare(metadata ptr %active, metadata !5007, metadata !DIExpression()), !dbg !5057
  call void @llvm.lifetime.start.p0(i64 8, ptr %qstr) #15, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %qstr, metadata !5008, metadata !DIExpression()), !dbg !5059
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5060
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5009, metadata !DIExpression()), !dbg !5060
  %20 = load ptr, ptr %p, align 8, !dbg !5060
  store ptr %20, ptr %__mptr, align 8, !dbg !5060
  %21 = load ptr, ptr %__mptr, align 8, !dbg !5060
  %add.ptr = getelementptr i8, ptr %21, i64 -48, !dbg !5060
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5060
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5061
  %22 = load ptr, ptr %tmp, align 8, !dbg !5060
  store ptr %22, ptr %ino, align 8, !dbg !5062
  %23 = load ptr, ptr %ino, align 8, !dbg !5063
  %dentry7 = getelementptr inbounds %struct.autofs_info, ptr %23, i32 0, i32 0, !dbg !5064
  %24 = load ptr, ptr %dentry7, align 8, !dbg !5064
  store ptr %24, ptr %active, align 8, !dbg !5065
  %25 = load ptr, ptr %active, align 8, !dbg !5066
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7, !dbg !5067
  %26 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5067
  %lock = getelementptr inbounds %struct.anon.16, ptr %26, i32 0, i32 0, !dbg !5067
  call void @spin_lock(ptr noundef %lock) #16, !dbg !5068
  %27 = load ptr, ptr %active, align 8, !dbg !5069
  %call8 = call i32 @d_count(ptr noundef %27) #16, !dbg !5071
  %cmp = icmp sle i32 %call8, 0, !dbg !5072
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !5073

if.then9:                                         ; preds = %for.body
  br label %next38, !dbg !5074

if.end10:                                         ; preds = %for.body
  %28 = load ptr, ptr %active, align 8, !dbg !5075
  %d_name11 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 4, !dbg !5076
  store ptr %d_name11, ptr %qstr, align 8, !dbg !5077
  %29 = load ptr, ptr %active, align 8, !dbg !5078
  %d_name12 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 4, !dbg !5080
  %30 = getelementptr inbounds %struct.qstr, ptr %d_name12, i32 0, i32 0, !dbg !5081
  %hash13 = getelementptr inbounds %struct.anon.14, ptr %30, i32 0, i32 0, !dbg !5081
  %31 = load i32, ptr %hash13, align 8, !dbg !5081
  %32 = load i32, ptr %hash, align 4, !dbg !5082
  %cmp14 = icmp ne i32 %31, %32, !dbg !5083
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5084

if.then15:                                        ; preds = %if.end10
  br label %next38, !dbg !5085

if.end16:                                         ; preds = %if.end10
  %33 = load ptr, ptr %active, align 8, !dbg !5086
  %d_parent17 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 3, !dbg !5088
  %34 = load ptr, ptr %d_parent17, align 8, !dbg !5088
  %35 = load ptr, ptr %parent, align 8, !dbg !5089
  %cmp18 = icmp ne ptr %34, %35, !dbg !5090
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5091

if.then19:                                        ; preds = %if.end16
  br label %next38, !dbg !5092

if.end20:                                         ; preds = %if.end16
  %36 = load ptr, ptr %qstr, align 8, !dbg !5093
  %37 = getelementptr inbounds %struct.qstr, ptr %36, i32 0, i32 0, !dbg !5095
  %len21 = getelementptr inbounds %struct.anon.14, ptr %37, i32 0, i32 1, !dbg !5095
  %38 = load i32, ptr %len21, align 4, !dbg !5095
  %39 = load i32, ptr %len, align 4, !dbg !5096
  %cmp22 = icmp ne i32 %38, %39, !dbg !5097
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5098

if.then23:                                        ; preds = %if.end20
  br label %next38, !dbg !5099

if.end24:                                         ; preds = %if.end20
  %40 = load ptr, ptr %qstr, align 8, !dbg !5100
  %name25 = getelementptr inbounds %struct.qstr, ptr %40, i32 0, i32 1, !dbg !5102
  %41 = load ptr, ptr %name25, align 8, !dbg !5102
  %42 = load ptr, ptr %str, align 8, !dbg !5103
  %43 = load i32, ptr %len, align 4, !dbg !5104
  %conv = zext i32 %43 to i64, !dbg !5104
  %call26 = call i32 @memcmp(ptr noundef %41, ptr noundef %42, i64 noundef %conv) #16, !dbg !5105
  %tobool27 = icmp ne i32 %call26, 0, !dbg !5105
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5106

if.then28:                                        ; preds = %if.end24
  br label %next38, !dbg !5107

if.end29:                                         ; preds = %if.end24
  %44 = load ptr, ptr %active, align 8, !dbg !5108
  %call30 = call i32 @d_unhashed(ptr noundef %44) #16, !dbg !5110
  %tobool31 = icmp ne i32 %call30, 0, !dbg !5110
  br i1 %tobool31, label %if.then32, label %if.end37, !dbg !5111

if.then32:                                        ; preds = %if.end29
  %45 = load ptr, ptr %active, align 8, !dbg !5112
  %call33 = call ptr @dget_dlock(ptr noundef %45) #16, !dbg !5114
  %46 = load ptr, ptr %active, align 8, !dbg !5115
  %d_lockref34 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 7, !dbg !5116
  %47 = getelementptr inbounds %struct.lockref, ptr %d_lockref34, i32 0, i32 0, !dbg !5116
  %lock35 = getelementptr inbounds %struct.anon.16, ptr %47, i32 0, i32 0, !dbg !5116
  call void @spin_unlock(ptr noundef %lock35) #16, !dbg !5117
  %48 = load ptr, ptr %sbi, align 8, !dbg !5118
  %lookup_lock36 = getelementptr inbounds %struct.autofs_sb_info, ptr %48, i32 0, i32 16, !dbg !5119
  call void @spin_unlock(ptr noundef %lookup_lock36) #16, !dbg !5120
  %49 = load ptr, ptr %active, align 8, !dbg !5121
  store ptr %49, ptr %retval, align 8, !dbg !5122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5122

if.end37:                                         ; preds = %if.end29
  br label %next38, !dbg !5123

next38:                                           ; preds = %if.end37, %if.then28, %if.then23, %if.then19, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !5011), !dbg !5124
  %50 = load ptr, ptr %active, align 8, !dbg !5125
  %d_lockref39 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 7, !dbg !5126
  %51 = getelementptr inbounds %struct.lockref, ptr %d_lockref39, i32 0, i32 0, !dbg !5126
  %lock40 = getelementptr inbounds %struct.anon.16, ptr %51, i32 0, i32 0, !dbg !5126
  call void @spin_unlock(ptr noundef %lock40) #16, !dbg !5127
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5128
  br label %cleanup, !dbg !5128

cleanup:                                          ; preds = %next38, %if.then32
  call void @llvm.lifetime.end.p0(i64 8, ptr %qstr) #15, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %active) #15, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !5128
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5129

for.inc:                                          ; preds = %cleanup.cont
  %52 = load ptr, ptr %p, align 8, !dbg !5053
  %next43 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 0, !dbg !5053
  %53 = load ptr, ptr %next43, align 8, !dbg !5053
  store ptr %53, ptr %p, align 8, !dbg !5053
  br label %for.cond, !dbg !5053, !llvm.loop !5130

for.end:                                          ; preds = %for.cond
  %54 = load ptr, ptr %sbi, align 8, !dbg !5132
  %lookup_lock44 = getelementptr inbounds %struct.autofs_sb_info, ptr %54, i32 0, i32 16, !dbg !5133
  call void @spin_unlock(ptr noundef %lookup_lock44) #16, !dbg !5134
  store ptr null, ptr %retval, align 8, !dbg !5135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5135

cleanup45:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !5136
  %55 = load ptr, ptr %retval, align 8, !dbg !5136
  ret ptr %55, !dbg !5136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5137 dso_local ptr @autofs_new_ino(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__managed_dentry_set_managed(ptr noundef %dentry) #3 align 16 !dbg !5140 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5144
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !5145
  %1 = load i32, ptr %d_flags, align 8, !dbg !5146
  %or = or i32 %1, 393216, !dbg !5146
  store i32 %or, ptr %d_flags, align 8, !dbg !5146
  ret void, !dbg !5147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5148 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5150, metadata !DIExpression()), !dbg !5152
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5151, metadata !DIExpression()), !dbg !5153
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5154
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5155
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5156
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5157
  %3 = load ptr, ptr %next, align 8, !dbg !5157
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !5158
  ret void, !dbg !5159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_count(ptr noundef %dentry) #3 align 16 !dbg !5160 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5164
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !5165
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5166
  %count = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 1, !dbg !5166
  %2 = load i32, ptr %count, align 4, !dbg !5166
  ret i32 %2, !dbg !5167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5168 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5172, metadata !DIExpression()), !dbg !5175
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5173, metadata !DIExpression()), !dbg !5176
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5174, metadata !DIExpression()), !dbg !5177
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5178
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5180
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5181
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5182
  br i1 %call, label %if.end, label %if.then, !dbg !5183

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5184

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5185
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5186
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5187
  store ptr %3, ptr %prev1, align 8, !dbg !5188
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5189
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5190
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5191
  store ptr %5, ptr %next2, align 8, !dbg !5192
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5193
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5194
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5195
  store ptr %7, ptr %prev3, align 8, !dbg !5196
  br label %do.body, !dbg !5197

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5198

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5200

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5198

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5202
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5202
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5202
  store volatile ptr %9, ptr %next6, align 8, !dbg !5202
  br label %do.end7, !dbg !5202

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5198

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5204
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5205 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5209, metadata !DIExpression()), !dbg !5212
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5210, metadata !DIExpression()), !dbg !5213
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5211, metadata !DIExpression()), !dbg !5214
  ret i1 true, !dbg !5215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5216 dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5217 dso_local i64 @strlen(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5220 dso_local void @autofs_clean_ino(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_del_active(ptr noundef %dentry) #1 align 16 !dbg !5221 {
entry:
  %dentry.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5223, metadata !DIExpression()), !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !5227
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5224, metadata !DIExpression()), !dbg !5228
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5229
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5230
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5230
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !5231
  store ptr %call, ptr %sbi, align 8, !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !5232
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !5225, metadata !DIExpression()), !dbg !5233
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5234
  %call1 = call ptr @autofs_dentry_ino(ptr noundef %2) #16, !dbg !5235
  store ptr %call1, ptr %ino, align 8, !dbg !5236
  %3 = load ptr, ptr %sbi, align 8, !dbg !5237
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 16, !dbg !5238
  call void @spin_lock(ptr noundef %lookup_lock) #16, !dbg !5239
  %4 = load ptr, ptr %ino, align 8, !dbg !5240
  %active = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 3, !dbg !5241
  call void @list_del_init(ptr noundef %active) #16, !dbg !5242
  %5 = load ptr, ptr %sbi, align 8, !dbg !5243
  %lookup_lock2 = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 16, !dbg !5244
  call void @spin_unlock(ptr noundef %lookup_lock2) #16, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !5246
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !5246
  ret void, !dbg !5246
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5247 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5251, metadata !DIExpression()), !dbg !5256
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5252, metadata !DIExpression()), !dbg !5257
  %0 = load i64, ptr %size.addr, align 8, !dbg !5258
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5259
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5260

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5261
  %tobool = icmp ne i64 %2, 0, !dbg !5261
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5262

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5253, metadata !DIExpression()), !dbg !5264
  %3 = load i64, ptr %size.addr, align 8, !dbg !5265
  %cmp = icmp ugt i64 %3, 8192, !dbg !5267
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5268

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5269
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5270
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5271
  store ptr %call, ptr %retval, align 8, !dbg !5272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5272

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5273
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5273
  store i32 %call2, ptr %index, align 4, !dbg !5274
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5275
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5276
  %9 = ptrtoint ptr %8 to i64, !dbg !5276
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5277
  %idxprom = zext i32 %call3 to i64, !dbg !5278
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5278
  %10 = load i32, ptr %index, align 4, !dbg !5279
  %idxprom4 = zext i32 %10 to i64, !dbg !5278
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5278
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5278
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5280
  %13 = load i64, ptr %size.addr, align 8, !dbg !5281
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5282
  store ptr %call6, ptr %retval, align 8, !dbg !5283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5283

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5284
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5285
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5286
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5287
  store ptr %call8, ptr %retval, align 8, !dbg !5288
  br label %return, !dbg !5288

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5289
  ret ptr %16, !dbg !5289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5290 dso_local ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5293 dso_local ptr @autofs_get_inode(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5296 dso_local void @kfree(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5299 dso_local void @d_add(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #3 align 16 !dbg !5300 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5304
  %tobool = icmp ne ptr %0, null, !dbg !5304
  br i1 %tobool, label %if.then, label %if.end, !dbg !5306

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5307
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !5308
  call void @lockref_get(ptr noundef %d_lockref) #16, !dbg !5309
  br label %if.end, !dbg !5309

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5310
  ret ptr %2, !dbg !5311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5312 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5315 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5316 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5320, metadata !DIExpression()), !dbg !5322
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5321, metadata !DIExpression()), !dbg !5323
  %0 = load i64, ptr %size.addr, align 8, !dbg !5324
  %tobool = icmp ne i64 %0, 0, !dbg !5324
  br i1 %tobool, label %if.end, label %if.then, !dbg !5326

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5327
  br label %return, !dbg !5327

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5328
  %cmp = icmp ule i64 %1, 8, !dbg !5330
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5331

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5332
  br label %return, !dbg !5332

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5333
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5335
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5336

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5337
  %cmp4 = icmp ule i64 %3, 96, !dbg !5338
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5339

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5341
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5343
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5344

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5345
  %cmp9 = icmp ule i64 %5, 192, !dbg !5346
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5347

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5348
  br label %return, !dbg !5348

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5349
  %cmp12 = icmp ule i64 %6, 8, !dbg !5351
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5352

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5353
  br label %return, !dbg !5353

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5354
  %cmp15 = icmp ule i64 %7, 16, !dbg !5356
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5357

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5358
  br label %return, !dbg !5358

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5359
  %cmp18 = icmp ule i64 %8, 32, !dbg !5361
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5362

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5363
  br label %return, !dbg !5363

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5364
  %cmp21 = icmp ule i64 %9, 64, !dbg !5366
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5367

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5368
  br label %return, !dbg !5368

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5369
  %cmp24 = icmp ule i64 %10, 128, !dbg !5371
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5372

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5374
  %cmp27 = icmp ule i64 %11, 256, !dbg !5376
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5377

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5378
  br label %return, !dbg !5378

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5379
  %cmp30 = icmp ule i64 %12, 512, !dbg !5381
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5382

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5383
  br label %return, !dbg !5383

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5384
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5386
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5387

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5388
  br label %return, !dbg !5388

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5389
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5391
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5392

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5393
  br label %return, !dbg !5393

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5394
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5396
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5397

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5399
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5401
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5402

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5403
  br label %return, !dbg !5403

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5404
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5406
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5407

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5408
  br label %return, !dbg !5408

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5409
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5411
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5412

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5413
  br label %return, !dbg !5413

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5414
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5416
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5417

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5418
  br label %return, !dbg !5418

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5419
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5421
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5422

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5423
  br label %return, !dbg !5423

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5424
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5426
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5427

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5428
  br label %return, !dbg !5428

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5429
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5431
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5432

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5433
  br label %return, !dbg !5433

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5434
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5436
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5437

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5438
  br label %return, !dbg !5438

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5439
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5441
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5442

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5443
  br label %return, !dbg !5443

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5444, !range !4179, !noundef !812
  %tobool69 = trunc i8 %25 to i1, !dbg !5444
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5446

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5447

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !5448, !srcloc !5451
  unreachable, !dbg !5448

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5452

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5453

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5454

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5456

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5454

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !5458, !srcloc !5460
  br label %do.end75, !dbg !5458

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5454

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5461
  br label %return, !dbg !5461

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5462
  ret i32 %26, !dbg !5462
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5463 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5469 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5473, metadata !DIExpression()), !dbg !5475
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5474, metadata !DIExpression()), !dbg !5476
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5477
  %and = and i32 %0, 17, !dbg !5477
  %cmp = icmp eq i32 %and, 0, !dbg !5477
  %lnot = xor i1 %cmp, true, !dbg !5477
  %lnot1 = xor i1 %lnot, true, !dbg !5477
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5477
  %conv = sext i32 %lnot.ext to i64, !dbg !5477
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5477
  %tobool = icmp ne i64 %expval, 0, !dbg !5477
  br i1 %tobool, label %if.then, label %if.end, !dbg !5479

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5480
  br label %return, !dbg !5480

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5481
  %and2 = and i32 %1, 1, !dbg !5483
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5483
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5484

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5485
  br label %return, !dbg !5485

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5488
  ret i32 %2, !dbg !5488
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5489 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5490 dso_local void @__compiletime_assert_245() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5491 dso_local void @lockref_get(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #3 align 16 !dbg !5495 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5499
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5500
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5500
  ret ptr %1, !dbg !5501
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5502 dso_local void @clear_nlink(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__autofs_add_expiring(ptr noundef %dentry) #3 align 16 !dbg !5503 {
entry:
  %dentry.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5505, metadata !DIExpression()), !dbg !5508
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !5509
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5506, metadata !DIExpression()), !dbg !5510
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5511
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5512
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5512
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !5513
  store ptr %call, ptr %sbi, align 8, !dbg !5510
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !5514
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !5507, metadata !DIExpression()), !dbg !5515
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5516
  %call1 = call ptr @autofs_dentry_ino(ptr noundef %2) #16, !dbg !5517
  store ptr %call1, ptr %ino, align 8, !dbg !5515
  %3 = load ptr, ptr %ino, align 8, !dbg !5518
  %tobool = icmp ne ptr %3, null, !dbg !5518
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5520

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ino, align 8, !dbg !5521
  %expiring = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 4, !dbg !5524
  %call2 = call i32 @list_empty(ptr noundef %expiring) #16, !dbg !5525
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5525
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5526

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %ino, align 8, !dbg !5527
  %expiring5 = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 4, !dbg !5528
  %6 = load ptr, ptr %sbi, align 8, !dbg !5529
  %expiring_list = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 18, !dbg !5530
  call void @list_add(ptr noundef %expiring5, ptr noundef %expiring_list) #16, !dbg !5531
  br label %if.end, !dbg !5531

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6, !dbg !5532

if.end6:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !5533
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !5533
  ret void, !dbg !5533
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5534 dso_local void @d_drop(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_clear_leaf_automount_flags(ptr noundef %dentry) #1 align 16 !dbg !5535 {
entry:
  %dentry.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5537, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5538, metadata !DIExpression()), !dbg !5541
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5542
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !5542
  %1 = load ptr, ptr %d_parent, align 8, !dbg !5542
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5542
  %d_parent1 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !5542
  %3 = load ptr, ptr %d_parent1, align 8, !dbg !5542
  %d_parent2 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3, !dbg !5542
  %4 = load ptr, ptr %d_parent2, align 8, !dbg !5542
  %cmp = icmp eq ptr %1, %4, !dbg !5542
  br i1 %cmp, label %if.then, label %if.end, !dbg !5544

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5545

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !5546
  call void @managed_dentry_clear_managed(ptr noundef %5) #16, !dbg !5547
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5548
  %d_parent3 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 3, !dbg !5549
  %7 = load ptr, ptr %d_parent3, align 8, !dbg !5549
  store ptr %7, ptr %parent, align 8, !dbg !5550
  %8 = load ptr, ptr %parent, align 8, !dbg !5551
  %d_parent4 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 3, !dbg !5551
  %9 = load ptr, ptr %d_parent4, align 8, !dbg !5551
  %10 = load ptr, ptr %parent, align 8, !dbg !5551
  %d_parent5 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3, !dbg !5551
  %11 = load ptr, ptr %d_parent5, align 8, !dbg !5551
  %d_parent6 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3, !dbg !5551
  %12 = load ptr, ptr %d_parent6, align 8, !dbg !5551
  %cmp7 = icmp eq ptr %9, %12, !dbg !5551
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5553

if.then8:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5554

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %parent, align 8, !dbg !5555
  %call = call ptr @autofs_dentry_ino(ptr noundef %13) #16, !dbg !5557
  %count = getelementptr inbounds %struct.autofs_info, ptr %call, i32 0, i32 7, !dbg !5558
  %14 = load i32, ptr %count, align 8, !dbg !5558
  %cmp10 = icmp eq i32 %14, 2, !dbg !5559
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5560

if.then11:                                        ; preds = %if.end9
  %15 = load ptr, ptr %parent, align 8, !dbg !5561
  call void @managed_dentry_set_managed(ptr noundef %15) #16, !dbg !5562
  br label %if.end12, !dbg !5562

if.end12:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5563
  br label %cleanup, !dbg !5563

cleanup:                                          ; preds = %if.end12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !5563
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5563

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5564 dso_local void @drop_nlink(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @managed_dentry_clear_managed(ptr noundef %dentry) #3 align 16 !dbg !5565 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5567, metadata !DIExpression()), !dbg !5568
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5569
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !5570
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5570
  %lock = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 0, !dbg !5570
  call void @spin_lock(ptr noundef %lock) #16, !dbg !5571
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5572
  call void @__managed_dentry_clear_managed(ptr noundef %2) #16, !dbg !5573
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5574
  %d_lockref1 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7, !dbg !5575
  %4 = getelementptr inbounds %struct.lockref, ptr %d_lockref1, i32 0, i32 0, !dbg !5575
  %lock2 = getelementptr inbounds %struct.anon.16, ptr %4, i32 0, i32 0, !dbg !5575
  call void @spin_unlock(ptr noundef %lock2) #16, !dbg !5576
  ret void, !dbg !5577
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @managed_dentry_set_managed(ptr noundef %dentry) #3 align 16 !dbg !5578 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5582
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !5583
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5583
  %lock = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 0, !dbg !5583
  call void @spin_lock(ptr noundef %lock) #16, !dbg !5584
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5585
  call void @__managed_dentry_set_managed(ptr noundef %2) #16, !dbg !5586
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5587
  %d_lockref1 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7, !dbg !5588
  %4 = getelementptr inbounds %struct.lockref, ptr %d_lockref1, i32 0, i32 0, !dbg !5588
  %lock2 = getelementptr inbounds %struct.anon.16, ptr %4, i32 0, i32 0, !dbg !5588
  call void @spin_unlock(ptr noundef %lock2) #16, !dbg !5589
  ret void, !dbg !5590
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__managed_dentry_clear_managed(ptr noundef %dentry) #3 align 16 !dbg !5591 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5595
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !5596
  %1 = load i32, ptr %d_flags, align 8, !dbg !5597
  %and = and i32 %1, -393217, !dbg !5597
  store i32 %and, ptr %d_flags, align 8, !dbg !5597
  ret void, !dbg !5598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_set_leaf_automount_flags(ptr noundef %dentry) #1 align 16 !dbg !5599 {
entry:
  %dentry.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5601, metadata !DIExpression()), !dbg !5603
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !5604
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5602, metadata !DIExpression()), !dbg !5605
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5606
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !5606
  %1 = load ptr, ptr %d_parent, align 8, !dbg !5606
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5606
  %d_parent1 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !5606
  %3 = load ptr, ptr %d_parent1, align 8, !dbg !5606
  %d_parent2 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3, !dbg !5606
  %4 = load ptr, ptr %d_parent2, align 8, !dbg !5606
  %cmp = icmp eq ptr %1, %4, !dbg !5606
  br i1 %cmp, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5609

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !5610
  call void @managed_dentry_set_managed(ptr noundef %5) #16, !dbg !5611
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5612
  %d_parent3 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 3, !dbg !5613
  %7 = load ptr, ptr %d_parent3, align 8, !dbg !5613
  store ptr %7, ptr %parent, align 8, !dbg !5614
  %8 = load ptr, ptr %parent, align 8, !dbg !5615
  %d_parent4 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 3, !dbg !5615
  %9 = load ptr, ptr %d_parent4, align 8, !dbg !5615
  %10 = load ptr, ptr %parent, align 8, !dbg !5615
  %d_parent5 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3, !dbg !5615
  %11 = load ptr, ptr %d_parent5, align 8, !dbg !5615
  %d_parent6 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3, !dbg !5615
  %12 = load ptr, ptr %d_parent6, align 8, !dbg !5615
  %cmp7 = icmp eq ptr %9, %12, !dbg !5615
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5617

if.then8:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %parent, align 8, !dbg !5619
  call void @managed_dentry_clear_managed(ptr noundef %13) #16, !dbg !5620
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5621
  br label %cleanup, !dbg !5621

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !5621
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5621

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5622 dso_local void @inc_nlink(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !5623 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5631
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5632
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5632
  ret ptr %1, !dbg !5633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_root_ioctl_unlocked(ptr noundef %inode, ptr noundef %filp, i32 noundef %cmd, i64 noundef %arg) #1 align 16 !dbg !5634 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %sbi = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5638, metadata !DIExpression()), !dbg !5644
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5639, metadata !DIExpression()), !dbg !5645
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5640, metadata !DIExpression()), !dbg !5646
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5641, metadata !DIExpression()), !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #15, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5642, metadata !DIExpression()), !dbg !5649
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5650
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5651
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5651
  %call = call ptr @autofs_sbi(ptr noundef %1) #16, !dbg !5652
  store ptr %call, ptr %sbi, align 8, !dbg !5649
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5643, metadata !DIExpression()), !dbg !5654
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5655
  %3 = inttoptr i64 %2 to ptr, !dbg !5656
  store ptr %3, ptr %p, align 8, !dbg !5654
  store i32 0, ptr %tmp, align 4, !dbg !5657
  %4 = load i32, ptr %tmp, align 4, !dbg !5660
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5661
  %shr = lshr i32 %5, 8, !dbg !5661
  %and = and i32 %shr, 255, !dbg !5661
  %cmp = icmp ne i32 %and, 147, !dbg !5663
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5664

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr %cmd.addr, align 4, !dbg !5665
  %shr1 = lshr i32 %6, 0, !dbg !5665
  %and2 = and i32 %shr1, 255, !dbg !5665
  %sub = sub i32 %and2, 96, !dbg !5666
  %cmp3 = icmp uge i32 %sub, 32, !dbg !5667
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5668

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, ptr %retval, align 4, !dbg !5669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5669

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %sbi, align 8, !dbg !5670
  %call4 = call i32 @autofs_oz_mode(ptr noundef %7) #16, !dbg !5672
  %tobool = icmp ne i32 %call4, 0, !dbg !5672
  br i1 %tobool, label %if.end7, label %land.lhs.true, !dbg !5673

land.lhs.true:                                    ; preds = %if.end
  %call5 = call zeroext i1 @capable(i32 noundef 21) #16, !dbg !5674
  br i1 %call5, label %if.end7, label %if.then6, !dbg !5675

if.then6:                                         ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !5676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5676

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, ptr %cmd.addr, align 4, !dbg !5677
  switch i32 %8, label %sw.default [
    i32 37728, label %sw.bb
    i32 37729, label %sw.bb9
    i32 37730, label %sw.bb12
    i32 -2147183773, label %sw.bb13
    i32 -2147183769, label %sw.bb15
    i32 -1073179804, label %sw.bb17
    i32 -1073441948, label %sw.bb19
    i32 -2147183760, label %sw.bb21
    i32 -2129882267, label %sw.bb23
    i32 1074041702, label %sw.bb28
  ], !dbg !5678

sw.bb:                                            ; preds = %if.end7
  %9 = load ptr, ptr %sbi, align 8, !dbg !5679
  %10 = load i64, ptr %arg.addr, align 8, !dbg !5681
  %conv = trunc i64 %10 to i32, !dbg !5682
  %call8 = call i32 @autofs_wait_release(ptr noundef %9, i32 noundef %conv, i32 noundef 0) #16, !dbg !5683
  store i32 %call8, ptr %retval, align 4, !dbg !5684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5684

sw.bb9:                                           ; preds = %if.end7
  %11 = load ptr, ptr %sbi, align 8, !dbg !5685
  %12 = load i64, ptr %arg.addr, align 8, !dbg !5686
  %conv10 = trunc i64 %12 to i32, !dbg !5687
  %call11 = call i32 @autofs_wait_release(ptr noundef %11, i32 noundef %conv10, i32 noundef -2) #16, !dbg !5688
  store i32 %call11, ptr %retval, align 4, !dbg !5689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5689

sw.bb12:                                          ; preds = %if.end7
  %13 = load ptr, ptr %sbi, align 8, !dbg !5690
  call void @autofs_catatonic_mode(ptr noundef %13) #16, !dbg !5691
  store i32 0, ptr %retval, align 4, !dbg !5692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5692

sw.bb13:                                          ; preds = %if.end7
  %14 = load ptr, ptr %sbi, align 8, !dbg !5693
  %15 = load ptr, ptr %p, align 8, !dbg !5694
  %call14 = call i32 @autofs_get_protover(ptr noundef %14, ptr noundef %15) #16, !dbg !5695
  store i32 %call14, ptr %retval, align 4, !dbg !5696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5696

sw.bb15:                                          ; preds = %if.end7
  %16 = load ptr, ptr %sbi, align 8, !dbg !5697
  %17 = load ptr, ptr %p, align 8, !dbg !5698
  %call16 = call i32 @autofs_get_protosubver(ptr noundef %16, ptr noundef %17) #16, !dbg !5699
  store i32 %call16, ptr %retval, align 4, !dbg !5700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5700

sw.bb17:                                          ; preds = %if.end7
  %18 = load ptr, ptr %sbi, align 8, !dbg !5701
  %19 = load ptr, ptr %p, align 8, !dbg !5702
  %call18 = call i32 @autofs_get_set_timeout(ptr noundef %18, ptr noundef %19) #16, !dbg !5703
  store i32 %call18, ptr %retval, align 4, !dbg !5704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5704

sw.bb19:                                          ; preds = %if.end7
  %20 = load ptr, ptr %sbi, align 8, !dbg !5705
  %21 = load ptr, ptr %p, align 8, !dbg !5706
  %call20 = call i32 @autofs_compat_get_set_timeout(ptr noundef %20, ptr noundef %21) #16, !dbg !5707
  store i32 %call20, ptr %retval, align 4, !dbg !5708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5708

sw.bb21:                                          ; preds = %if.end7
  %22 = load ptr, ptr %filp.addr, align 8, !dbg !5709
  %f_path = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 10, !dbg !5710
  %mnt = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !5711
  %23 = load ptr, ptr %mnt, align 8, !dbg !5711
  %24 = load ptr, ptr %p, align 8, !dbg !5712
  %call22 = call i32 @autofs_ask_umount(ptr noundef %23, ptr noundef %24) #16, !dbg !5713
  store i32 %call22, ptr %retval, align 4, !dbg !5714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5714

sw.bb23:                                          ; preds = %if.end7
  %25 = load ptr, ptr %inode.addr, align 8, !dbg !5715
  %i_sb24 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 9, !dbg !5716
  %26 = load ptr, ptr %i_sb24, align 8, !dbg !5716
  %27 = load ptr, ptr %filp.addr, align 8, !dbg !5717
  %f_path25 = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 10, !dbg !5718
  %mnt26 = getelementptr inbounds %struct.path, ptr %f_path25, i32 0, i32 0, !dbg !5719
  %28 = load ptr, ptr %mnt26, align 8, !dbg !5719
  %29 = load ptr, ptr %sbi, align 8, !dbg !5720
  %30 = load ptr, ptr %p, align 8, !dbg !5721
  %call27 = call i32 @autofs_expire_run(ptr noundef %26, ptr noundef %28, ptr noundef %29, ptr noundef %30) #16, !dbg !5722
  store i32 %call27, ptr %retval, align 4, !dbg !5723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5723

sw.bb28:                                          ; preds = %if.end7
  %31 = load ptr, ptr %inode.addr, align 8, !dbg !5724
  %i_sb29 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 9, !dbg !5725
  %32 = load ptr, ptr %i_sb29, align 8, !dbg !5725
  %33 = load ptr, ptr %filp.addr, align 8, !dbg !5726
  %f_path30 = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 10, !dbg !5727
  %mnt31 = getelementptr inbounds %struct.path, ptr %f_path30, i32 0, i32 0, !dbg !5728
  %34 = load ptr, ptr %mnt31, align 8, !dbg !5728
  %35 = load ptr, ptr %sbi, align 8, !dbg !5729
  %36 = load ptr, ptr %p, align 8, !dbg !5730
  %call32 = call i32 @autofs_expire_multi(ptr noundef %32, ptr noundef %34, ptr noundef %35, ptr noundef %36) #16, !dbg !5731
  store i32 %call32, ptr %retval, align 4, !dbg !5732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5732

sw.default:                                       ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !5733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5733

cleanup:                                          ; preds = %sw.default, %sw.bb28, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb9, %sw.bb, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #15, !dbg !5734
  %37 = load i32, ptr %retval, align 4, !dbg !5734
  ret i32 %37, !dbg !5734
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5735 dso_local zeroext i1 @capable(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5738 dso_local i32 @autofs_wait_release(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5741 dso_local void @autofs_catatonic_mode(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_get_protover(ptr noundef %sbi, ptr noundef %p) #3 align 16 !dbg !5744 {
entry:
  %sbi.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5748, metadata !DIExpression()), !dbg !5757
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5749, metadata !DIExpression()), !dbg !5758
  call void @might_fault() #16, !dbg !5759
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5750, metadata !DIExpression()), !dbg !5760
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5753, metadata !DIExpression()), !dbg !5760
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5754, metadata !DIExpression()), !dbg !5760
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5755, metadata !DIExpression()), !dbg !5760
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5760
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 4, !dbg !5760
  %1 = load i32, ptr %version, align 8, !dbg !5760
  store i32 %1, ptr %__x, align 4, !dbg !5760
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5756, metadata !DIExpression()), !dbg !5760
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5760
  store ptr %2, ptr %__ptr, align 8, !dbg !5760
  %3 = load ptr, ptr %__ptr, align 8, !dbg !5760
  store ptr %3, ptr %__ptr_pu, align 8, !dbg !5760
  %4 = load i32, ptr %__x, align 4, !dbg !5760
  store i32 %4, ptr %__val_pu, align 4, !dbg !5760
  %5 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5760
  %6 = load ptr, ptr %__ptr_pu, align 8, !dbg !5760
  %7 = load i32, ptr %__val_pu, align 4, !dbg !5760
  %8 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %6, i32 %7, i64 4, i64 %5) #15, !dbg !5760, !srcloc !5761
  %asmresult = extractvalue { ptr, i64 } %8, 0, !dbg !5760
  %asmresult1 = extractvalue { ptr, i64 } %8, 1, !dbg !5760
  %9 = ptrtoint ptr %asmresult to i64, !dbg !5760
  %10 = trunc i64 %9 to i32, !dbg !5760
  store i32 %10, ptr %__ret_pu, align 4, !dbg !5760
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult1), !dbg !5760
  %11 = load ptr, ptr %__ptr, align 8, !dbg !5762
  call void @kmsan_copy_to_user(ptr noundef %11, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !5762
  %12 = load i32, ptr %__ret_pu, align 4, !dbg !5760
  %conv = sext i32 %12 to i64, !dbg !5760
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5760
  store i64 %expval, ptr %tmp2, align 8, !dbg !5760
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5759
  %13 = load i64, ptr %tmp2, align 8, !dbg !5760
  store i64 %13, ptr %tmp, align 8, !dbg !5759
  %14 = load i64, ptr %tmp, align 8, !dbg !5759
  %conv3 = trunc i64 %14 to i32, !dbg !5764
  ret i32 %conv3, !dbg !5765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_get_protosubver(ptr noundef %sbi, ptr noundef %p) #3 align 16 !dbg !5766 {
entry:
  %sbi.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5768, metadata !DIExpression()), !dbg !5777
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5769, metadata !DIExpression()), !dbg !5778
  call void @might_fault() #16, !dbg !5779
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5770, metadata !DIExpression()), !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5773, metadata !DIExpression()), !dbg !5780
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5774, metadata !DIExpression()), !dbg !5780
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5775, metadata !DIExpression()), !dbg !5780
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5780
  %sub_version = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 5, !dbg !5780
  %1 = load i32, ptr %sub_version, align 4, !dbg !5780
  store i32 %1, ptr %__x, align 4, !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5776, metadata !DIExpression()), !dbg !5780
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5780
  store ptr %2, ptr %__ptr, align 8, !dbg !5780
  %3 = load ptr, ptr %__ptr, align 8, !dbg !5780
  store ptr %3, ptr %__ptr_pu, align 8, !dbg !5780
  %4 = load i32, ptr %__x, align 4, !dbg !5780
  store i32 %4, ptr %__val_pu, align 4, !dbg !5780
  %5 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5780
  %6 = load ptr, ptr %__ptr_pu, align 8, !dbg !5780
  %7 = load i32, ptr %__val_pu, align 4, !dbg !5780
  %8 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %6, i32 %7, i64 4, i64 %5) #15, !dbg !5780, !srcloc !5781
  %asmresult = extractvalue { ptr, i64 } %8, 0, !dbg !5780
  %asmresult1 = extractvalue { ptr, i64 } %8, 1, !dbg !5780
  %9 = ptrtoint ptr %asmresult to i64, !dbg !5780
  %10 = trunc i64 %9 to i32, !dbg !5780
  store i32 %10, ptr %__ret_pu, align 4, !dbg !5780
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult1), !dbg !5780
  %11 = load ptr, ptr %__ptr, align 8, !dbg !5782
  call void @kmsan_copy_to_user(ptr noundef %11, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !5782
  %12 = load i32, ptr %__ret_pu, align 4, !dbg !5780
  %conv = sext i32 %12 to i64, !dbg !5780
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5780
  store i64 %expval, ptr %tmp2, align 8, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5779
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !5779
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !5779
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5779
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5779
  %13 = load i64, ptr %tmp2, align 8, !dbg !5780
  store i64 %13, ptr %tmp, align 8, !dbg !5779
  %14 = load i64, ptr %tmp, align 8, !dbg !5779
  %conv3 = trunc i64 %14 to i32, !dbg !5784
  ret i32 %conv3, !dbg !5785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_get_set_timeout(ptr noundef %sbi, ptr noundef %p) #3 align 16 !dbg !5786 {
entry:
  %retval = alloca i32, align 4
  %sbi.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %ntimeout = alloca i64, align 8
  %rv = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5791, metadata !DIExpression()), !dbg !5809
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5792, metadata !DIExpression()), !dbg !5810
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntimeout) #15, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %ntimeout, metadata !5793, metadata !DIExpression()), !dbg !5812
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #15, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !5794, metadata !DIExpression()), !dbg !5814
  call void @might_fault() #16, !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #15, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5795, metadata !DIExpression()), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_gu) #15, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5798, metadata !DIExpression()), !dbg !5816
  %0 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5816
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5816
  %2 = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 8, i64 %0) #15, !dbg !5816, !srcloc !5817
  %asmresult = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5816
  %asmresult1 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5816
  %asmresult2 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !5816
  %3 = ptrtoint ptr %asmresult to i64, !dbg !5816
  %4 = trunc i64 %3 to i32, !dbg !5816
  store i32 %4, ptr %__ret_gu, align 4, !dbg !5816
  store i64 %asmresult1, ptr %__val_gu, align 8, !dbg !5816
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult2), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !5818
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5799, metadata !DIExpression()), !dbg !5818
  %5 = load i64, ptr %__val_gu, align 8, !dbg !5818
  store i64 %5, ptr %__tmp, align 8, !dbg !5818
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !5818
  %6 = load i64, ptr %__tmp, align 8, !dbg !5818
  store i64 %6, ptr %__val_gu, align 8, !dbg !5818
  store i64 %6, ptr %tmp3, align 8, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !5816
  %7 = load i64, ptr %tmp3, align 8, !dbg !5818
  %8 = load i64, ptr %__val_gu, align 8, !dbg !5816
  store i64 %8, ptr %ntimeout, align 8, !dbg !5816
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !5816
  %conv = sext i32 %9 to i64, !dbg !5816
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5816
  store i64 %expval, ptr %tmp4, align 8, !dbg !5816
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_gu) #15, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #15, !dbg !5815
  %10 = load i64, ptr %tmp4, align 8, !dbg !5816
  store i64 %10, ptr %tmp, align 8, !dbg !5815
  %11 = load i64, ptr %tmp, align 8, !dbg !5815
  %conv5 = trunc i64 %11 to i32, !dbg !5819
  store i32 %conv5, ptr %rv, align 4, !dbg !5820
  %12 = load i32, ptr %rv, align 4, !dbg !5821
  %tobool = icmp ne i32 %12, 0, !dbg !5821
  br i1 %tobool, label %if.then, label %if.end, !dbg !5823

if.then:                                          ; preds = %entry
  br label %error, !dbg !5824

if.end:                                           ; preds = %entry
  call void @might_fault() #16, !dbg !5825
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5801, metadata !DIExpression()), !dbg !5826
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5804, metadata !DIExpression()), !dbg !5826
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu) #15, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5805, metadata !DIExpression()), !dbg !5826
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #15, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5806, metadata !DIExpression()), !dbg !5826
  %13 = load ptr, ptr %sbi.addr, align 8, !dbg !5826
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 9, !dbg !5826
  %14 = load i64, ptr %exp_timeout, align 8, !dbg !5826
  %div = udiv i64 %14, 1000, !dbg !5826
  store i64 %div, ptr %__x, align 8, !dbg !5826
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5807, metadata !DIExpression()), !dbg !5826
  %15 = load ptr, ptr %p.addr, align 8, !dbg !5826
  store ptr %15, ptr %__ptr, align 8, !dbg !5826
  %16 = load ptr, ptr %__ptr, align 8, !dbg !5826
  store ptr %16, ptr %__ptr_pu, align 8, !dbg !5826
  %17 = load i64, ptr %__x, align 8, !dbg !5826
  store i64 %17, ptr %__val_pu, align 8, !dbg !5826
  %18 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5826
  %19 = load ptr, ptr %__ptr_pu, align 8, !dbg !5826
  %20 = load i64, ptr %__val_pu, align 8, !dbg !5826
  %21 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %19, i64 %20, i64 8, i64 %18) #15, !dbg !5826, !srcloc !5827
  %asmresult7 = extractvalue { ptr, i64 } %21, 0, !dbg !5826
  %asmresult8 = extractvalue { ptr, i64 } %21, 1, !dbg !5826
  %22 = ptrtoint ptr %asmresult7 to i64, !dbg !5826
  %23 = trunc i64 %22 to i32, !dbg !5826
  store i32 %23, ptr %__ret_pu, align 4, !dbg !5826
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult8), !dbg !5826
  %24 = load ptr, ptr %__ptr, align 8, !dbg !5828
  call void @kmsan_copy_to_user(ptr noundef %24, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #16, !dbg !5828
  %25 = load i32, ptr %__ret_pu, align 4, !dbg !5826
  %conv10 = sext i32 %25 to i64, !dbg !5826
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !5826
  store i64 %expval11, ptr %tmp9, align 8, !dbg !5826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #15, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu) #15, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5825
  %26 = load i64, ptr %tmp9, align 8, !dbg !5826
  store i64 %26, ptr %tmp6, align 8, !dbg !5825
  %27 = load i64, ptr %tmp6, align 8, !dbg !5825
  %conv12 = trunc i64 %27 to i32, !dbg !5830
  store i32 %conv12, ptr %rv, align 4, !dbg !5831
  %28 = load i32, ptr %rv, align 4, !dbg !5832
  %tobool13 = icmp ne i32 %28, 0, !dbg !5832
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5834

if.then14:                                        ; preds = %if.end
  br label %error, !dbg !5835

if.end15:                                         ; preds = %if.end
  %29 = load i64, ptr %ntimeout, align 8, !dbg !5836
  %cmp = icmp ugt i64 %29, 18446744073709551, !dbg !5838
  br i1 %cmp, label %if.then17, label %if.else, !dbg !5839

if.then17:                                        ; preds = %if.end15
  %30 = load ptr, ptr %sbi.addr, align 8, !dbg !5840
  %exp_timeout18 = getelementptr inbounds %struct.autofs_sb_info, ptr %30, i32 0, i32 9, !dbg !5841
  store i64 0, ptr %exp_timeout18, align 8, !dbg !5842
  br label %if.end20, !dbg !5840

if.else:                                          ; preds = %if.end15
  %31 = load i64, ptr %ntimeout, align 8, !dbg !5843
  %mul = mul i64 %31, 1000, !dbg !5844
  %32 = load ptr, ptr %sbi.addr, align 8, !dbg !5845
  %exp_timeout19 = getelementptr inbounds %struct.autofs_sb_info, ptr %32, i32 0, i32 9, !dbg !5846
  store i64 %mul, ptr %exp_timeout19, align 8, !dbg !5847
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  store i32 0, ptr %retval, align 4, !dbg !5848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5848

error:                                            ; preds = %if.then14, %if.then
  call void @llvm.dbg.label(metadata !5808), !dbg !5849
  %33 = load i32, ptr %rv, align 4, !dbg !5850
  store i32 %33, ptr %retval, align 4, !dbg !5851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5851

cleanup:                                          ; preds = %error, %if.end20
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #15, !dbg !5852
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntimeout) #15, !dbg !5852
  %34 = load i32, ptr %retval, align 4, !dbg !5852
  ret i32 %34, !dbg !5852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_compat_get_set_timeout(ptr noundef %sbi, ptr noundef %p) #3 align 16 !dbg !5853 {
entry:
  %retval = alloca i32, align 4
  %sbi.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %ntimeout = alloca i64, align 8
  %rv = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp6 = alloca i64, align 8
  %tmp9 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp13 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5858, metadata !DIExpression()), !dbg !5876
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5859, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntimeout) #15, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %ntimeout, metadata !5860, metadata !DIExpression()), !dbg !5879
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #15, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !5861, metadata !DIExpression()), !dbg !5881
  call void @might_fault() #16, !dbg !5882
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #15, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5862, metadata !DIExpression()), !dbg !5883
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #15, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5865, metadata !DIExpression()), !dbg !5883
  %0 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5883
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5883
  %2 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %0) #15, !dbg !5883, !srcloc !5884
  %asmresult = extractvalue { ptr, i32, i64 } %2, 0, !dbg !5883
  %asmresult1 = extractvalue { ptr, i32, i64 } %2, 1, !dbg !5883
  %asmresult2 = extractvalue { ptr, i32, i64 } %2, 2, !dbg !5883
  %3 = ptrtoint ptr %asmresult to i64, !dbg !5883
  %4 = trunc i64 %3 to i32, !dbg !5883
  store i32 %4, ptr %__ret_gu, align 4, !dbg !5883
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !5883
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult2), !dbg !5883
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5866, metadata !DIExpression()), !dbg !5885
  %5 = load i32, ptr %__val_gu, align 4, !dbg !5885
  %conv = zext i32 %5 to i64, !dbg !5885
  store i64 %conv, ptr %__tmp, align 8, !dbg !5885
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !5885
  %6 = load i64, ptr %__tmp, align 8, !dbg !5885
  %conv4 = trunc i64 %6 to i32, !dbg !5885
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !5885
  store i32 %conv4, ptr %tmp3, align 4, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !5883
  %7 = load i32, ptr %tmp3, align 4, !dbg !5885
  %8 = load i32, ptr %__val_gu, align 4, !dbg !5883
  %conv5 = zext i32 %8 to i64, !dbg !5883
  store i64 %conv5, ptr %ntimeout, align 8, !dbg !5883
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !5883
  %conv7 = sext i32 %9 to i64, !dbg !5883
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5883
  store i64 %expval, ptr %tmp6, align 8, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #15, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #15, !dbg !5882
  %10 = load i64, ptr %tmp6, align 8, !dbg !5883
  store i64 %10, ptr %tmp, align 8, !dbg !5882
  %11 = load i64, ptr %tmp, align 8, !dbg !5882
  %conv8 = trunc i64 %11 to i32, !dbg !5886
  store i32 %conv8, ptr %rv, align 4, !dbg !5887
  %12 = load i32, ptr %rv, align 4, !dbg !5888
  %tobool = icmp ne i32 %12, 0, !dbg !5888
  br i1 %tobool, label %if.then, label %if.end, !dbg !5890

if.then:                                          ; preds = %entry
  br label %error, !dbg !5891

if.end:                                           ; preds = %entry
  call void @might_fault() #16, !dbg !5892
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5868, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5871, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5872, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5873, metadata !DIExpression()), !dbg !5893
  %13 = load ptr, ptr %sbi.addr, align 8, !dbg !5893
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 9, !dbg !5893
  %14 = load i64, ptr %exp_timeout, align 8, !dbg !5893
  %div = udiv i64 %14, 1000, !dbg !5893
  %conv10 = trunc i64 %div to i32, !dbg !5893
  store i32 %conv10, ptr %__x, align 4, !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5874, metadata !DIExpression()), !dbg !5893
  %15 = load ptr, ptr %p.addr, align 8, !dbg !5893
  store ptr %15, ptr %__ptr, align 8, !dbg !5893
  %16 = load ptr, ptr %__ptr, align 8, !dbg !5893
  store ptr %16, ptr %__ptr_pu, align 8, !dbg !5893
  %17 = load i32, ptr %__x, align 4, !dbg !5893
  store i32 %17, ptr %__val_pu, align 4, !dbg !5893
  %18 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5893
  %19 = load ptr, ptr %__ptr_pu, align 8, !dbg !5893
  %20 = load i32, ptr %__val_pu, align 4, !dbg !5893
  %21 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %19, i32 %20, i64 4, i64 %18) #15, !dbg !5893, !srcloc !5894
  %asmresult11 = extractvalue { ptr, i64 } %21, 0, !dbg !5893
  %asmresult12 = extractvalue { ptr, i64 } %21, 1, !dbg !5893
  %22 = ptrtoint ptr %asmresult11 to i64, !dbg !5893
  %23 = trunc i64 %22 to i32, !dbg !5893
  store i32 %23, ptr %__ret_pu, align 4, !dbg !5893
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult12), !dbg !5893
  %24 = load ptr, ptr %__ptr, align 8, !dbg !5895
  call void @kmsan_copy_to_user(ptr noundef %24, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !5895
  %25 = load i32, ptr %__ret_pu, align 4, !dbg !5893
  %conv14 = sext i32 %25 to i64, !dbg !5893
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !5893
  store i64 %expval15, ptr %tmp13, align 8, !dbg !5893
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5892
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !5892
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !5892
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5892
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5892
  %26 = load i64, ptr %tmp13, align 8, !dbg !5893
  store i64 %26, ptr %tmp9, align 8, !dbg !5892
  %27 = load i64, ptr %tmp9, align 8, !dbg !5892
  %conv16 = trunc i64 %27 to i32, !dbg !5897
  store i32 %conv16, ptr %rv, align 4, !dbg !5898
  %28 = load i32, ptr %rv, align 4, !dbg !5899
  %tobool17 = icmp ne i32 %28, 0, !dbg !5899
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5901

if.then18:                                        ; preds = %if.end
  br label %error, !dbg !5902

if.end19:                                         ; preds = %if.end
  %29 = load i64, ptr %ntimeout, align 8, !dbg !5903
  %cmp = icmp ugt i64 %29, 4294967, !dbg !5905
  br i1 %cmp, label %if.then21, label %if.else, !dbg !5906

if.then21:                                        ; preds = %if.end19
  %30 = load ptr, ptr %sbi.addr, align 8, !dbg !5907
  %exp_timeout22 = getelementptr inbounds %struct.autofs_sb_info, ptr %30, i32 0, i32 9, !dbg !5908
  store i64 0, ptr %exp_timeout22, align 8, !dbg !5909
  br label %if.end24, !dbg !5907

if.else:                                          ; preds = %if.end19
  %31 = load i64, ptr %ntimeout, align 8, !dbg !5910
  %mul = mul i64 %31, 1000, !dbg !5911
  %32 = load ptr, ptr %sbi.addr, align 8, !dbg !5912
  %exp_timeout23 = getelementptr inbounds %struct.autofs_sb_info, ptr %32, i32 0, i32 9, !dbg !5913
  store i64 %mul, ptr %exp_timeout23, align 8, !dbg !5914
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  store i32 0, ptr %retval, align 4, !dbg !5915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5915

error:                                            ; preds = %if.then18, %if.then
  call void @llvm.dbg.label(metadata !5875), !dbg !5916
  %33 = load i32, ptr %rv, align 4, !dbg !5917
  store i32 %33, ptr %retval, align 4, !dbg !5918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5918

cleanup:                                          ; preds = %error, %if.end24
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #15, !dbg !5919
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntimeout) #15, !dbg !5919
  %34 = load i32, ptr %retval, align 4, !dbg !5919
  ret i32 %34, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_ask_umount(ptr noundef %mnt, ptr noundef %p) #3 align 16 !dbg !5920 {
entry:
  %mnt.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp3 = alloca i64, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5924, metadata !DIExpression()), !dbg !5934
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5925, metadata !DIExpression()), !dbg !5935
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5926, metadata !DIExpression()), !dbg !5937
  store i32 0, ptr %status, align 4, !dbg !5937
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !5938
  %call = call i32 @may_umount(ptr noundef %0) #16, !dbg !5940
  %tobool = icmp ne i32 %call, 0, !dbg !5940
  br i1 %tobool, label %if.then, label %if.end, !dbg !5941

if.then:                                          ; preds = %entry
  store i32 1, ptr %status, align 4, !dbg !5942
  br label %if.end, !dbg !5943

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %tmp, align 4, !dbg !5944
  %1 = load i32, ptr %tmp, align 4, !dbg !5947
  call void @might_fault() #16, !dbg !5948
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5927, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5930, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5931, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5932, metadata !DIExpression()), !dbg !5949
  %2 = load i32, ptr %status, align 4, !dbg !5949
  store i32 %2, ptr %__x, align 4, !dbg !5949
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5933, metadata !DIExpression()), !dbg !5949
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5949
  store ptr %3, ptr %__ptr, align 8, !dbg !5949
  %4 = load ptr, ptr %__ptr, align 8, !dbg !5949
  store ptr %4, ptr %__ptr_pu, align 8, !dbg !5949
  %5 = load i32, ptr %__x, align 4, !dbg !5949
  store i32 %5, ptr %__val_pu, align 4, !dbg !5949
  %6 = call i64 @llvm.read_register.i64(metadata !3359), !dbg !5949
  %7 = load ptr, ptr %__ptr_pu, align 8, !dbg !5949
  %8 = load i32, ptr %__val_pu, align 4, !dbg !5949
  %9 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %7, i32 %8, i64 4, i64 %6) #15, !dbg !5949, !srcloc !5950
  %asmresult = extractvalue { ptr, i64 } %9, 0, !dbg !5949
  %asmresult2 = extractvalue { ptr, i64 } %9, 1, !dbg !5949
  %10 = ptrtoint ptr %asmresult to i64, !dbg !5949
  %11 = trunc i64 %10 to i32, !dbg !5949
  store i32 %11, ptr %__ret_pu, align 4, !dbg !5949
  call void @llvm.write_register.i64(metadata !3359, i64 %asmresult2), !dbg !5949
  %12 = load ptr, ptr %__ptr, align 8, !dbg !5951
  call void @kmsan_copy_to_user(ptr noundef %12, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !5951
  %13 = load i32, ptr %__ret_pu, align 4, !dbg !5949
  %conv = sext i32 %13 to i64, !dbg !5949
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5949
  store i64 %expval, ptr %tmp3, align 8, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5948
  %14 = load i64, ptr %tmp3, align 8, !dbg !5949
  store i64 %14, ptr %tmp1, align 8, !dbg !5948
  %15 = load i64, ptr %tmp1, align 8, !dbg !5948
  %conv4 = trunc i64 %15 to i32, !dbg !5953
  store i32 %conv4, ptr %status, align 4, !dbg !5954
  %16 = load i32, ptr %status, align 4, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5956
  ret i32 %16, !dbg !5957
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5958 dso_local i32 @autofs_expire_run(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5974 dso_local i32 @autofs_expire_multi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !5977 {
entry:
  ret void, !dbg !5979
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !5980 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5985, metadata !DIExpression()), !dbg !5989
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5986, metadata !DIExpression()), !dbg !5990
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !5987, metadata !DIExpression()), !dbg !5991
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !5988, metadata !DIExpression()), !dbg !5992
  ret void, !dbg !5993
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !5994 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5998, metadata !DIExpression()), !dbg !6000
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5999, metadata !DIExpression()), !dbg !6001
  ret void, !dbg !6002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6003 dso_local i32 @may_umount(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #3 align 16 !dbg !6006 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !6012
  %conv = zext i32 %0 to i64, !dbg !6013
  %1 = inttoptr i64 %conv to ptr, !dbg !6014
  ret ptr %1, !dbg !6015
}

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3359}
!llvm.module.flags = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!llvm.ident = !{!3368}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "autofs_root_operations", scope: !2, file: !3, line: 32, type: !3039, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/autofs/.root.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/autofs/autofs4\22 -D KBUILD_BASENAME=\22root\22 -D KBUILD_MODNAME=\22autofs4\22 -D __KBUILD_MODNAME=kmod_autofs4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/autofs/root.ll fs/autofs/root.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !3342, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/autofs/root.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7173cf34e28eade7d2e1ba71b45179")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !50, !55, !61, !71}
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0)
!54 = !DIEnumerator(name: "true", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "autofs_notify", file: !56, line: 154, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/uapi/linux/auto_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "967b492b126909646225f054deef702b")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "NFY_NONE", value: 0)
!59 = !DIEnumerator(name: "NFY_MOUNT", value: 1)
!60 = !DIEnumerator(name: "NFY_EXPIRE", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !62, line: 364, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!63 = !{!64, !65, !66, !67, !68, !69, !70}
!64 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!65 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!66 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!67 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!68 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!69 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!70 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 66, baseType: !7, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DIEnumerator(name: "AUTOFS_IOC_READY_CMD", value: 96)
!74 = !DIEnumerator(name: "AUTOFS_IOC_FAIL_CMD", value: 97)
!75 = !DIEnumerator(name: "AUTOFS_IOC_CATATONIC_CMD", value: 98)
!76 = !DIEnumerator(name: "AUTOFS_IOC_PROTOVER_CMD", value: 99)
!77 = !DIEnumerator(name: "AUTOFS_IOC_SETTIMEOUT_CMD", value: 100)
!78 = !DIEnumerator(name: "AUTOFS_IOC_EXPIRE_CMD", value: 101)
!79 = !{!80, !81, !3319, !3333, !1185, !329, !3334, !3337, !673, !3338, !91, !767, !3304, !301, !3341}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_sb_info", file: !83, line: 106, size: 1664, elements: !84)
!83 = !DIFile(filename: "fs/autofs/autofs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "474496a990f5ae9b197285e0b4803e95")
!84 = !{!85, !90, !92, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3315, !3316, !3317, !3318}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !82, file: !83, line: 107, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pipefd", scope: !82, file: !83, line: 108, baseType: !91, size: 32, offset: 32)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !82, file: !83, line: 109, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !95)
!95 = !{!96, !116, !157, !159, !169, !187, !191, !192, !273, !499, !508, !3275, !3276, !3277, !3278, !3279, !3280, !3282, !3283, !3284}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !15, line: 995, baseType: !97, size: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !15, line: 995, size: 128, elements: !98)
!98 = !{!99, !105, !115}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !97, file: !15, line: 996, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !101, line: 60, size: 64, elements: !102)
!101 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !101, line: 61, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !97, file: !15, line: 997, baseType: !106, size: 128, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 232, size: 128, align: 64, elements: !108)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !107, line: 233, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !106, file: !107, line: 234, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !110}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !97, file: !15, line: 998, baseType: !7, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !94, file: !15, line: 1005, baseType: !117, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !118, line: 29, baseType: !119)
!118 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !118, line: 17, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !118, line: 18, baseType: !122, size: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !118, line: 18, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !122, file: !118, line: 19, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !126, line: 14, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !125, file: !126, line: 15, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !130, line: 44, baseType: !131)
!130 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !130, line: 14, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !130, line: 15, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !130, line: 15, size: 32, elements: !135)
!135 = !{!136, !141, !149}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !134, file: !130, line: 16, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 174, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 172, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !138, file: !107, line: 173, baseType: !91, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 24, baseType: !142, size: 16)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 24, size: 16, elements: !143)
!143 = !{!144, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !142, file: !130, line: 25, baseType: !145, size: 8)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !147)
!147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !142, file: !130, line: 26, baseType: !145, size: 8, offset: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 28, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 28, size: 32, elements: !151)
!151 = !{!152, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !150, file: !130, line: 29, baseType: !153, size: 16)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !150, file: !130, line: 30, baseType: !153, size: 16, offset: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !94, file: !15, line: 1006, baseType: !158, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !107, line: 156, baseType: !7)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !94, file: !15, line: 1007, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !161, line: 13, baseType: !162)
!161 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 181, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 179, size: 64, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !163, file: !107, line: 180, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !168)
!168 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !94, file: !15, line: 1008, baseType: !170, size: 256, offset: 256)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !171, line: 66, size: 256, elements: !172)
!171 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!172 = !{!173, !174, !176, !181}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !170, file: !171, line: 67, baseType: !160, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !170, file: !171, line: 68, baseType: !175, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !126, line: 23, baseType: !125)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !170, file: !171, line: 70, baseType: !177, size: 32, offset: 96)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !178, line: 15, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !177, file: !178, line: 20, baseType: !137, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !170, file: !171, line: 72, baseType: !182, size: 128, offset: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 190, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !107, line: 191, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !107, line: 191, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !94, file: !15, line: 1009, baseType: !188, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 52, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !190, line: 88, baseType: !168)
!190 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !94, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !94, file: !15, line: 1011, baseType: !193, size: 256, offset: 640)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !194)
!194 = !{!195, !218, !262, !263, !271, !272}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !193, file: !15, line: 949, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !197, line: 34, baseType: !198)
!197 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 25, size: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !198, file: !197, line: 26, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !202, line: 27, baseType: !203)
!202 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !202, line: 13, size: 64, elements: !204)
!204 = !{!205, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !202, line: 14, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 14, size: 32, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !206, file: !202, line: 15, baseType: !137, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !202, line: 16, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !202, line: 16, size: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !210, file: !202, line: 18, baseType: !145, size: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !210, file: !202, line: 19, baseType: !214, size: 24, offset: 8)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 24, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 3)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !203, file: !202, line: 26, baseType: !129, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !193, file: !15, line: 950, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !221)
!221 = !{!222, !228, !229, !230, !243, !244, !251, !252}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !220, file: !6, line: 61, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !224, line: 113, baseType: !225)
!224 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !224, line: 111, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !225, file: !224, line: 112, baseType: !137, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !220, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !220, file: !6, line: 63, baseType: !117, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !220, file: !6, line: 65, baseType: !231, size: 256, offset: 128)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !241)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !107, line: 194, size: 64, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !232, file: !107, line: 195, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 198, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !107, line: 199, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !236, file: !107, line: 199, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!241 = !{!242}
!242 = !DISubrange(count: 4)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !220, file: !6, line: 66, baseType: !232, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !220, file: !6, line: 68, baseType: !245, size: 192, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !246, line: 41, baseType: !247)
!246 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !246, line: 37, size: 192, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !247, file: !246, line: 38, baseType: !117, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !247, file: !246, line: 39, baseType: !182, size: 128, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !220, file: !6, line: 69, baseType: !106, size: 128, align: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !220, file: !6, line: 70, baseType: !253, offset: 768)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !260)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !254, file: !6, line: 55, baseType: !91, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !254, file: !6, line: 56, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!260 = !{!261}
!261 = !DISubrange(count: -1)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !193, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !193, file: !15, line: 952, baseType: !264, size: 32, offset: 160)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !265, line: 23, baseType: !266)
!265 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 21, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !266, file: !265, line: 22, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 37, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !190, line: 49, baseType: !7)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !193, file: !15, line: 952, baseType: !264, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !193, file: !15, line: 953, baseType: !91, size: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !94, file: !15, line: 1012, baseType: !274, size: 64, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !277, line: 110, size: 1472, elements: !278)
!277 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!278 = !{!279, !280, !281, !288, !289, !290, !291, !292, !293, !294, !295, !304, !305, !306, !307, !308, !309, !444, !445, !446, !447, !448, !479, !482, !486, !494}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !276, file: !277, line: 111, baseType: !160, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !276, file: !277, line: 112, baseType: !264, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !276, file: !277, line: 113, baseType: !282, size: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !265, line: 28, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 26, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !283, file: !265, line: 27, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 38, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !190, line: 50, baseType: !7)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !276, file: !277, line: 114, baseType: !264, size: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !276, file: !277, line: 115, baseType: !282, size: 32, offset: 160)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !276, file: !277, line: 116, baseType: !264, size: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !276, file: !277, line: 117, baseType: !282, size: 32, offset: 224)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !276, file: !277, line: 118, baseType: !264, size: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !276, file: !277, line: 119, baseType: !282, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !276, file: !277, line: 120, baseType: !7, size: 32, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !276, file: !277, line: 121, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !297, line: 24, baseType: !298)
!297 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 24, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !297, line: 24, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !303)
!303 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !276, file: !277, line: 122, baseType: !296, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !276, file: !277, line: 123, baseType: !296, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !276, file: !277, line: 124, baseType: !296, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !276, file: !277, line: 125, baseType: !296, size: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !276, file: !277, line: 127, baseType: !147, size: 8, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !276, file: !277, line: 129, baseType: !310, size: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !312, line: 195, size: 1728, elements: !313)
!312 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!313 = !{!314, !315, !320, !333, !342, !345, !346, !353, !354, !355, !356, !359, !360, !361, !363, !364, !408, !429}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !311, file: !312, line: 196, baseType: !223, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !311, file: !312, line: 197, baseType: !316, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !312, line: 28, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !107, line: 104, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !91)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 198, baseType: !321, size: 192, offset: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 198, size: 192, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !321, file: !312, line: 199, baseType: !182, size: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !321, file: !312, line: 200, baseType: !325, size: 192, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !326, line: 5, size: 192, align: 64, elements: !327)
!326 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!327 = !{!328, !330, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !325, file: !326, line: 6, baseType: !329, size: 64)
!329 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !325, file: !326, line: 7, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !325, file: !326, line: 8, baseType: !331, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !311, file: !312, line: 205, baseType: !334, size: 320, offset: 256)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !335, line: 48, size: 320, elements: !336)
!335 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!336 = !{!337, !338, !339, !340, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !334, file: !335, line: 49, baseType: !160, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !334, file: !335, line: 55, baseType: !160, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !334, file: !335, line: 57, baseType: !177, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !334, file: !335, line: 59, baseType: !175, size: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !334, file: !335, line: 60, baseType: !182, size: 128, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !311, file: !312, line: 206, baseType: !343, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !312, line: 206, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !311, file: !312, line: 207, baseType: !80, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 208, baseType: !347, size: 64, offset: 704)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 208, size: 64, elements: !348)
!348 = !{!349, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !347, file: !312, line: 209, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !351, line: 8, baseType: !167)
!351 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !347, file: !312, line: 210, baseType: !350, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !311, file: !312, line: 212, baseType: !350, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !311, file: !312, line: 213, baseType: !264, size: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !311, file: !312, line: 214, baseType: !282, size: 32, offset: 864)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !311, file: !312, line: 215, baseType: !357, size: 32, offset: 896)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !312, line: 31, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 110, baseType: !86)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !311, file: !312, line: 216, baseType: !155, size: 16, offset: 928)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !311, file: !312, line: 217, baseType: !155, size: 16, offset: 944)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !312, line: 221, baseType: !362, size: 16, offset: 960)
!362 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 228, baseType: !329, size: 64, offset: 1024)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 245, baseType: !365, size: 320, offset: 1088)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 245, size: 320, elements: !366)
!366 = !{!367, !399}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !365, file: !312, line: 246, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !312, line: 114, size: 320, elements: !369)
!369 = !{!370, !371, !384, !387, !396}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !368, file: !312, line: 116, baseType: !329, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !312, line: 117, baseType: !372, size: 64, offset: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !312, line: 117, size: 64, elements: !373)
!373 = !{!374, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !312, line: 118, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !312, line: 118, size: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !375, file: !312, line: 120, baseType: !153, size: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !375, file: !312, line: 121, baseType: !379, size: 48, offset: 16)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 48, elements: !381)
!380 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!381 = !{!382}
!382 = !DISubrange(count: 6)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !372, file: !312, line: 127, baseType: !329, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !312, line: 129, baseType: !385, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !312, line: 102, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !368, file: !312, line: 130, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !312, line: 108, size: 192, elements: !390)
!390 = !{!391, !392, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !389, file: !312, line: 109, baseType: !106, size: 128, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !389, file: !312, line: 110, baseType: !223, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !389, file: !312, line: 111, baseType: !394, size: 8, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 35, baseType: !395)
!395 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !368, file: !312, line: 131, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !312, line: 247, baseType: !400, size: 320)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !312, line: 247, size: 320, elements: !401)
!401 = !{!402, !403, !404, !405, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !400, file: !312, line: 248, baseType: !329, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !400, file: !312, line: 249, baseType: !329, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !312, line: 250, baseType: !385, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !400, file: !312, line: 251, baseType: !388, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !400, file: !312, line: 252, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 260, baseType: !409, size: 256, offset: 1408)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 260, size: 256, elements: !410)
!410 = !{!411, !417}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !409, file: !312, line: 261, baseType: !412, size: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !312, line: 134, size: 256, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !412, file: !312, line: 135, baseType: !80, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !412, file: !312, line: 136, baseType: !416, size: 256)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !241)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !312, line: 262, baseType: !418, size: 256)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !312, line: 262, size: 256, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !418, file: !312, line: 264, baseType: !182, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !418, file: !312, line: 265, baseType: !422, size: 128, offset: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !423, line: 22, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!424 = !{!425, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !422, file: !423, line: 23, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !423, line: 23, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !422, file: !423, line: 24, baseType: !329, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !311, file: !312, line: 280, baseType: !430, size: 64, offset: 1664)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !312, line: 176, size: 192, elements: !432)
!432 = !{!433, !442, !443}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !431, file: !312, line: 177, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !312, line: 171, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!91, !310, !438, !440, !310}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !431, file: !312, line: 178, baseType: !310, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !431, file: !312, line: 179, baseType: !385, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !276, file: !277, line: 130, baseType: !310, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !276, file: !277, line: 131, baseType: !310, size: 64, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !276, file: !277, line: 132, baseType: !310, size: 64, offset: 960)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !276, file: !277, line: 135, baseType: !80, size: 64, offset: 1024)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !276, file: !277, line: 137, baseType: !449, size: 64, offset: 1088)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !451, line: 14, size: 1088, elements: !452)
!451 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!452 = !{!453, !454, !463, !464, !465, !466, !467, !468}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !450, file: !451, line: 15, baseType: !223, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !450, file: !451, line: 17, baseType: !455, size: 320, offset: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !456, line: 22, size: 320, elements: !457)
!456 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !456, line: 23, baseType: !175, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !456, line: 24, baseType: !166, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !455, file: !456, line: 26, baseType: !182, size: 128, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !455, file: !456, line: 28, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !450, file: !451, line: 19, baseType: !329, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !450, file: !451, line: 20, baseType: !160, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !450, file: !451, line: 23, baseType: !236, size: 128, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !450, file: !451, line: 24, baseType: !264, size: 32, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !450, file: !451, line: 29, baseType: !160, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !450, file: !451, line: 36, baseType: !469, size: 320, offset: 768)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !470, line: 15, size: 320, elements: !471)
!470 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !470, line: 16, baseType: !175, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !469, file: !470, line: 18, baseType: !91, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !469, file: !470, line: 19, baseType: !91, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !469, file: !470, line: 20, baseType: !91, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !469, file: !470, line: 21, baseType: !91, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !469, file: !470, line: 22, baseType: !329, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !470, line: 23, baseType: !329, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !276, file: !277, line: 138, baseType: !480, size: 64, offset: 1152)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !265, line: 18, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !276, file: !277, line: 139, baseType: !483, size: 64, offset: 1216)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !485, line: 16, flags: DIFlagFwdDecl)
!485 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !276, file: !277, line: 140, baseType: !487, size: 64, offset: 1280)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !277, line: 25, size: 64, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !488, file: !277, line: 26, baseType: !137, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !488, file: !277, line: 27, baseType: !91, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !488, file: !277, line: 28, baseType: !493, offset: 64)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, elements: !260)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !277, line: 142, baseType: !495, size: 128, offset: 1344)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !277, line: 142, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !495, file: !277, line: 143, baseType: !91, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !495, file: !277, line: 144, baseType: !106, size: 128, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !94, file: !15, line: 1013, baseType: !500, size: 256, offset: 960)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !500, file: !15, line: 971, baseType: !329, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !500, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !500, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !500, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !500, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !500, file: !15, line: 976, baseType: !188, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !94, file: !15, line: 1014, baseType: !509, size: 128, offset: 1216)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !510, line: 8, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!511 = !{!512, !3274}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !509, file: !510, line: 9, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !515, line: 70, size: 256, elements: !516)
!515 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!516 = !{!517, !3271, !3272, !3273}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !514, file: !515, line: 71, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !520, line: 82, size: 1536, elements: !521)
!520 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!521 = !{!522, !523, !533, !541, !542, !557, !3238, !3240, !3253, !3254, !3255, !3256, !3257, !3263, !3264, !3265}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !519, file: !520, line: 84, baseType: !7, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !519, file: !520, line: 85, baseType: !524, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !525, line: 275, baseType: !526)
!525 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !525, line: 275, size: 32, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !526, file: !525, line: 275, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !525, line: 69, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !525, line: 64, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !530, file: !525, line: 65, baseType: !7, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !519, file: !520, line: 86, baseType: !534, size: 128, offset: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !535, line: 38, size: 128, elements: !536)
!535 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!536 = !{!537, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !535, line: 39, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !534, file: !535, line: 39, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !519, file: !520, line: 87, baseType: !518, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !519, file: !520, line: 88, baseType: !543, size: 128, offset: 256)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !520, line: 49, size: 128, elements: !544)
!544 = !{!545, !554}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !520, line: 50, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !520, line: 50, size: 64, elements: !547)
!547 = !{!548, !553}
!548 = !DIDerivedType(tag: DW_TAG_member, scope: !546, file: !520, line: 51, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !546, file: !520, line: 51, size: 64, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !549, file: !520, line: 52, baseType: !86, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !549, file: !520, line: 52, baseType: !86, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !546, file: !520, line: 54, baseType: !301, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !543, file: !520, line: 56, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !519, file: !520, line: 89, baseType: !558, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !560)
!560 = !{!561, !563, !564, !565, !566, !567, !568, !571, !572, !770, !2996, !2997, !2998, !2999, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3220, !3223, !3224, !3225, !3234, !3235, !3236, !3237}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !559, file: !15, line: 642, baseType: !562, size: 16)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 24, baseType: !155)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !559, file: !15, line: 643, baseType: !155, size: 16, offset: 16)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !559, file: !15, line: 644, baseType: !264, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !559, file: !15, line: 645, baseType: !182, size: 128, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !559, file: !15, line: 646, baseType: !282, size: 32, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !559, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !559, file: !15, line: 650, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !559, file: !15, line: 651, baseType: !569, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !559, file: !15, line: 654, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !576)
!576 = !{!577, !581, !594, !600, !604, !608, !612, !616, !620, !624, !628, !629, !635, !639, !677, !708, !718, !724, !728, !732, !736, !740, !744, !750, !754}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !575, file: !15, line: 1967, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!518, !558, !518, !7}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !575, file: !15, line: 1968, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!397, !518, !558, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !587, line: 10, size: 128, elements: !588)
!587 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!588 = !{!589, !593}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !586, file: !587, line: 11, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !80}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !586, file: !587, line: 12, baseType: !80, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !575, file: !15, line: 1969, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!91, !598, !558, !91}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !297, line: 42, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !575, file: !15, line: 1970, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!569, !558, !91, !394}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !575, file: !15, line: 1972, baseType: !605, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!91, !518, !407, !91}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !575, file: !15, line: 1974, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!91, !598, !558, !518, !562, !394}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !575, file: !15, line: 1976, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!91, !518, !558, !518}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !575, file: !15, line: 1977, baseType: !617, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!91, !558, !518}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !575, file: !15, line: 1978, baseType: !621, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!91, !598, !558, !518, !397}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !575, file: !15, line: 1980, baseType: !625, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!91, !598, !558, !518, !562}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !575, file: !15, line: 1982, baseType: !617, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !575, file: !15, line: 1983, baseType: !630, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!91, !598, !558, !518, !562, !633}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 21, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 18, baseType: !86)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !575, file: !15, line: 1985, baseType: !636, size: 64, offset: 768)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!91, !598, !558, !518, !558, !518, !7}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !575, file: !15, line: 1987, baseType: !640, size: 64, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!91, !598, !518, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !645)
!645 = !{!646, !647, !648, !658, !667, !668, !674, !675, !676}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !644, file: !15, line: 227, baseType: !7, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !644, file: !15, line: 228, baseType: !562, size: 16, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !15, line: 241, baseType: !649, size: 32, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !15, line: 241, size: 32, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !649, file: !15, line: 242, baseType: !264, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !649, file: !15, line: 243, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !654, line: 16, baseType: !655)
!654 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 14, size: 32, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !655, file: !654, line: 15, baseType: !269, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !15, line: 245, baseType: !659, size: 32, offset: 96)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !15, line: 245, size: 32, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !659, file: !15, line: 246, baseType: !282, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !659, file: !15, line: 247, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !654, line: 20, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 18, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !654, line: 19, baseType: !286, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !644, file: !15, line: 249, baseType: !188, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !644, file: !15, line: 250, baseType: !669, size: 128, offset: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !351, line: 13, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !351, line: 14, baseType: !350, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !351, line: 15, baseType: !673, size: 64, offset: 64)
!673 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !644, file: !15, line: 251, baseType: !669, size: 128, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !644, file: !15, line: 252, baseType: !669, size: 128, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !644, file: !15, line: 259, baseType: !93, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !575, file: !15, line: 1988, baseType: !678, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!91, !598, !681, !683, !86, !7}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !685, line: 22, size: 1280, elements: !686)
!685 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !684, file: !685, line: 23, baseType: !86, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !684, file: !685, line: 24, baseType: !562, size: 16, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !684, file: !685, line: 25, baseType: !7, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !684, file: !685, line: 26, baseType: !358, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !684, file: !685, line: 27, baseType: !301, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !684, file: !685, line: 28, baseType: !301, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !684, file: !685, line: 41, baseType: !301, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !684, file: !685, line: 42, baseType: !633, size: 32, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !684, file: !685, line: 43, baseType: !633, size: 32, offset: 352)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !684, file: !685, line: 44, baseType: !264, size: 32, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !684, file: !685, line: 45, baseType: !282, size: 32, offset: 416)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !684, file: !685, line: 46, baseType: !188, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !684, file: !685, line: 47, baseType: !669, size: 128, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !684, file: !685, line: 48, baseType: !669, size: 128, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !684, file: !685, line: 49, baseType: !669, size: 128, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !684, file: !685, line: 50, baseType: !669, size: 128, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !684, file: !685, line: 51, baseType: !301, size: 64, offset: 1024)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !684, file: !685, line: 52, baseType: !301, size: 64, offset: 1088)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !684, file: !685, line: 53, baseType: !86, size: 32, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !684, file: !685, line: 54, baseType: !86, size: 32, offset: 1184)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !684, file: !685, line: 55, baseType: !301, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !575, file: !15, line: 1990, baseType: !709, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!712, !518, !407, !715}
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 66, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !190, line: 73, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !190, line: 15, baseType: !673)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 61, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !190, line: 72, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !190, line: 16, baseType: !329)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !575, file: !15, line: 1991, baseType: !719, size: 64, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!91, !558, !722, !301, !301}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !575, file: !15, line: 1993, baseType: !725, size: 64, offset: 1088)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!91, !558, !91}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !575, file: !15, line: 1994, baseType: !729, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!91, !558, !518, !93, !7, !562}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !575, file: !15, line: 1997, baseType: !733, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!91, !598, !558, !93, !562}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !575, file: !15, line: 1999, baseType: !737, size: 64, offset: 1280)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!569, !598, !518, !91}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !575, file: !15, line: 2001, baseType: !741, size: 64, offset: 1344)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!91, !598, !518, !569, !91}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !575, file: !15, line: 2003, baseType: !745, size: 64, offset: 1408)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!91, !598, !518, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !575, file: !15, line: 2005, baseType: !751, size: 64, offset: 1472)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!91, !518, !748}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !575, file: !15, line: 2006, baseType: !755, size: 64, offset: 1536)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !558}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !760)
!760 = !{!761, !769}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !759, file: !15, line: 3193, baseType: !762, size: 128)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !763, line: 296, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!764 = !{!765, !766, !768}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !762, file: !763, line: 297, baseType: !117, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !762, file: !763, line: 299, baseType: !767, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 154, baseType: !7)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !762, file: !763, line: 300, baseType: !80, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !759, file: !15, line: 3194, baseType: !86, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !559, file: !15, line: 655, baseType: !771, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !821, !960, !1000, !1083, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1100, !1104, !1105, !1108, !1111, !1114, !1117, !1118, !1119, !1160, !2869, !2870, !2871, !2872, !2873, !2874, !2877, !2879, !2886, !2887, !2888, !2889, !2948, !2963, !2964, !2965, !2966, !2967, !2970, !2971, !2972, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !772, file: !15, line: 1191, baseType: !182, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !772, file: !15, line: 1192, baseType: !633, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !772, file: !15, line: 1193, baseType: !147, size: 8, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !772, file: !15, line: 1194, baseType: !329, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !772, file: !15, line: 1195, baseType: !188, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !772, file: !15, line: 1196, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !782)
!782 = !{!783, !784, !785, !791, !795, !799, !803, !807, !808, !809, !813, !814, !815, !817, !818, !819, !820}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !781, file: !15, line: 2367, baseType: !397, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !781, file: !15, line: 2368, baseType: !91, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !781, file: !15, line: 2376, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!91, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !515, line: 21, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !781, file: !15, line: 2377, baseType: !792, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !781, file: !15, line: 2378, baseType: !796, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!518, !780, !91, !397, !80}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !781, file: !15, line: 2380, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !771}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !781, file: !15, line: 2381, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !806, line: 103, flags: DIFlagFwdDecl)
!806 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !15, line: 2382, baseType: !780, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !781, file: !15, line: 2383, baseType: !232, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !781, file: !15, line: 2385, baseType: !810, offset: 576)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !811, line: 206, elements: !812)
!811 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!812 = !{}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !781, file: !15, line: 2386, baseType: !810, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !781, file: !15, line: 2387, baseType: !810, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !781, file: !15, line: 2388, baseType: !816, offset: 576)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, elements: !215)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !781, file: !15, line: 2390, baseType: !810, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !781, file: !15, line: 2391, baseType: !810, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !781, file: !15, line: 2392, baseType: !810, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !781, file: !15, line: 2393, baseType: !810, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !772, file: !15, line: 1197, baseType: !822, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !825)
!825 = !{!826, !830, !834, !835, !839, !845, !849, !850, !851, !855, !859, !863, !864, !865, !871, !876, !877, !884, !885, !886, !887, !891, !895, !942, !958, !959}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !824, file: !15, line: 2058, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!558, !771}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !824, file: !15, line: 2059, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !558}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !824, file: !15, line: 2060, baseType: !831, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !824, file: !15, line: 2062, baseType: !836, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !558, !91}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !824, file: !15, line: 2063, baseType: !840, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!91, !558, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !824, file: !15, line: 2064, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!91, !558}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !824, file: !15, line: 2065, baseType: !831, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !824, file: !15, line: 2066, baseType: !800, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !824, file: !15, line: 2067, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!91, !771, !91}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !824, file: !15, line: 2068, baseType: !856, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!91, !771, !14}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !824, file: !15, line: 2069, baseType: !860, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!91, !771}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !824, file: !15, line: 2070, baseType: !856, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !824, file: !15, line: 2071, baseType: !860, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !824, file: !15, line: 2072, baseType: !866, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!91, !518, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !824, file: !15, line: 2073, baseType: !872, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!91, !771, !875, !407}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !824, file: !15, line: 2074, baseType: !800, size: 64, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !824, file: !15, line: 2076, baseType: !878, size: 64, offset: 1024)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!91, !881, !518}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !883, line: 24, flags: DIFlagFwdDecl)
!883 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !824, file: !15, line: 2077, baseType: !878, size: 64, offset: 1088)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !824, file: !15, line: 2078, baseType: !878, size: 64, offset: 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !824, file: !15, line: 2079, baseType: !878, size: 64, offset: 1216)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !824, file: !15, line: 2081, baseType: !888, size: 64, offset: 1280)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!712, !771, !91, !407, !715, !188}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !824, file: !15, line: 2082, baseType: !892, size: 64, offset: 1344)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!712, !771, !91, !397, !715, !188}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !824, file: !15, line: 2083, baseType: !896, size: 64, offset: 1408)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!899, !558}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911, !927, !928, !929}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !901, file: !20, line: 297, baseType: !236, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !901, file: !20, line: 298, baseType: !182, size: 128, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !901, file: !20, line: 299, baseType: !182, size: 128, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !901, file: !20, line: 300, baseType: !182, size: 128, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !901, file: !20, line: 301, baseType: !170, size: 256, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !901, file: !20, line: 302, baseType: !117, size: 32, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !901, file: !20, line: 303, baseType: !137, size: 32, offset: 800)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !901, file: !20, line: 304, baseType: !771, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !901, file: !20, line: 305, baseType: !912, size: 64, offset: 896)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !913)
!913 = !{!914, !926}
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !20, line: 69, baseType: !915, size: 32)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !20, line: 69, size: 32, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !915, file: !20, line: 70, baseType: !264, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !915, file: !20, line: 71, baseType: !282, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !915, file: !20, line: 72, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !921, line: 24, baseType: !922)
!921 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 22, size: 32, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !922, file: !921, line: 23, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !921, line: 20, baseType: !270)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !912, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !901, file: !20, line: 306, baseType: !188, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !901, file: !20, line: 307, baseType: !329, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !901, file: !20, line: 308, baseType: !930, size: 576, offset: 1088)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !931)
!931 = !{!932, !934, !935, !936, !937, !938, !939, !940, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !930, file: !20, line: 206, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !168)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !930, file: !20, line: 207, baseType: !933, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !930, file: !20, line: 208, baseType: !933, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !930, file: !20, line: 209, baseType: !933, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !930, file: !20, line: 210, baseType: !933, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !930, file: !20, line: 211, baseType: !933, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !930, file: !20, line: 212, baseType: !933, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !930, file: !20, line: 213, baseType: !350, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !930, file: !20, line: 214, baseType: !350, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !824, file: !15, line: 2085, baseType: !943, size: 64, offset: 1472)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!673, !771, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !948, line: 15, size: 256, elements: !949)
!948 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!949 = !{!950, !951, !952, !953, !954}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !947, file: !948, line: 16, baseType: !767, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !947, file: !948, line: 19, baseType: !91, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !947, file: !948, line: 26, baseType: !329, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !947, file: !948, line: 33, baseType: !329, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !947, file: !948, line: 36, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !957, line: 33, flags: DIFlagFwdDecl)
!957 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !824, file: !15, line: 2087, baseType: !943, size: 64, offset: 1536)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !824, file: !15, line: 2089, baseType: !800, size: 64, offset: 1600)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !772, file: !15, line: 1198, baseType: !961, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !964)
!964 = !{!965, !969, !973, !977, !978, !979, !980, !981, !986, !991, !995}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !963, file: !20, line: 325, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!91, !900}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !963, file: !20, line: 326, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!900, !771, !91}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !963, file: !20, line: 327, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !900}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !963, file: !20, line: 328, baseType: !966, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !963, file: !20, line: 329, baseType: !966, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !963, file: !20, line: 330, baseType: !966, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !963, file: !20, line: 331, baseType: !852, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !963, file: !20, line: 334, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!985, !558}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !963, file: !20, line: 335, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!91, !558, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !963, file: !20, line: 337, baseType: !992, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!91, !558, !985}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !963, file: !20, line: 339, baseType: !996, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!91, !771, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !772, file: !15, line: 1199, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1004)
!1004 = !{!1005, !1009, !1010, !1014, !1015, !1016, !1031, !1054, !1058, !1059, !1082}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1003, file: !20, line: 431, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!91, !771, !91, !91, !681}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1003, file: !20, line: 432, baseType: !852, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1003, file: !20, line: 433, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!91, !771, !7}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1003, file: !20, line: 434, baseType: !1011, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1003, file: !20, line: 435, baseType: !852, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1003, file: !20, line: 436, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!91, !771, !91, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1021, file: !20, line: 418, baseType: !91, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1021, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1021, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1021, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1021, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1021, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1021, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1021, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1003, file: !20, line: 437, baseType: !1032, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!91, !771, !912, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1036, file: !20, line: 346, baseType: !91, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1036, file: !20, line: 347, baseType: !301, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1036, file: !20, line: 348, baseType: !301, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1036, file: !20, line: 349, baseType: !301, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1036, file: !20, line: 350, baseType: !301, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1036, file: !20, line: 351, baseType: !301, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1036, file: !20, line: 352, baseType: !301, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1036, file: !20, line: 353, baseType: !166, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1036, file: !20, line: 355, baseType: !166, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1036, file: !20, line: 356, baseType: !91, size: 32, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1036, file: !20, line: 357, baseType: !91, size: 32, offset: 608)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1036, file: !20, line: 358, baseType: !301, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1036, file: !20, line: 359, baseType: !301, size: 64, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1036, file: !20, line: 360, baseType: !301, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1036, file: !20, line: 361, baseType: !166, size: 64, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1036, file: !20, line: 362, baseType: !91, size: 32, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1003, file: !20, line: 438, baseType: !1055, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!91, !771, !999, !1035}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1003, file: !20, line: 440, baseType: !1032, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1003, file: !20, line: 441, baseType: !1060, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!91, !771, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1064, file: !20, line: 412, baseType: !7, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1064, file: !20, line: 413, baseType: !1068, size: 1344, offset: 64)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 1344, elements: !215)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1081}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1069, file: !20, line: 398, baseType: !7, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1069, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1069, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1069, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1069, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1069, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1069, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1069, file: !20, line: 406, baseType: !303, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1069, file: !20, line: 407, baseType: !1080, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !107, line: 132, baseType: !301)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1069, file: !20, line: 408, baseType: !1080, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1003, file: !20, line: 442, baseType: !1011, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !772, file: !15, line: 1200, baseType: !1084, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !772, file: !15, line: 1201, baseType: !329, size: 64, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !772, file: !15, line: 1202, baseType: !329, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !772, file: !15, line: 1203, baseType: !329, size: 64, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !772, file: !15, line: 1204, baseType: !518, size: 64, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !772, file: !15, line: 1205, baseType: !334, size: 320, offset: 896)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !772, file: !15, line: 1206, baseType: !91, size: 32, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !772, file: !15, line: 1207, baseType: !137, size: 32, offset: 1248)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !772, file: !15, line: 1209, baseType: !80, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !772, file: !15, line: 1211, baseType: !1096, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !772, file: !15, line: 1223, baseType: !1101, size: 64, offset: 1408)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !535, line: 34, size: 64, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1101, file: !535, line: 35, baseType: !538, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !772, file: !15, line: 1224, baseType: !182, size: 128, offset: 1472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !772, file: !15, line: 1225, baseType: !1106, size: 64, offset: 1600)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !772, file: !15, line: 1226, baseType: !1109, size: 64, offset: 1664)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !772, file: !15, line: 1227, baseType: !1112, size: 64, offset: 1728)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !772, file: !15, line: 1228, baseType: !1115, size: 64, offset: 1792)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !772, file: !15, line: 1229, baseType: !236, size: 128, offset: 1856)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !772, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !772, file: !15, line: 1231, baseType: !1120, size: 2496, offset: 2048)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1126, !1158}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !20, line: 522, baseType: !7, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1120, file: !20, line: 523, baseType: !334, size: 320, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1120, file: !20, line: 524, baseType: !1125, size: 192, offset: 384)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 192, elements: !215)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1120, file: !20, line: 525, baseType: !1127, size: 1728, offset: 576)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 1728, elements: !215)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1129)
!1129 = !{!1130, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1128, file: !20, line: 223, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1133)
!1133 = !{!1134, !1135, !1148, !1149}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1132, file: !20, line: 446, baseType: !91, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1132, file: !20, line: 447, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1138, file: !20, line: 313, baseType: !852, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1138, file: !20, line: 314, baseType: !852, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1138, file: !20, line: 315, baseType: !852, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1138, file: !20, line: 316, baseType: !852, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1138, file: !20, line: 317, baseType: !966, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1138, file: !20, line: 318, baseType: !966, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1138, file: !20, line: 319, baseType: !966, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1138, file: !20, line: 320, baseType: !996, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1132, file: !20, line: 448, baseType: !804, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1132, file: !20, line: 449, baseType: !1131, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1128, file: !20, line: 224, baseType: !91, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1128, file: !20, line: 226, baseType: !182, size: 128, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1128, file: !20, line: 227, baseType: !329, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1128, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1128, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1128, file: !20, line: 230, baseType: !933, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1128, file: !20, line: 231, baseType: !933, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1128, file: !20, line: 232, baseType: !80, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1120, file: !20, line: 526, baseType: !1159, size: 192, offset: 2304)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 192, elements: !215)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !772, file: !15, line: 1233, baseType: !1161, size: 2368, offset: 4544)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1161, file: !15, line: 1185, baseType: !155, size: 16)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1161, file: !15, line: 1186, baseType: !155, size: 16, offset: 16)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1161, file: !15, line: 1187, baseType: !1166, size: 2304, offset: 64)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 2304, elements: !215)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1168, line: 12, size: 768, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1169 = !{!1170, !1178, !1180, !2867, !2868}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1167, file: !1168, line: 13, baseType: !1171, size: 384)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1172, line: 17, size: 384, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1173 = !{!1174, !1175, !1176, !1177}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1171, file: !1172, line: 18, baseType: !91, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1171, file: !1172, line: 19, baseType: !91, size: 32, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1171, file: !1172, line: 20, baseType: !245, size: 192, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1171, file: !1172, line: 22, baseType: !106, size: 128, align: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1167, file: !1168, line: 14, baseType: !1179, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1167, file: !1168, line: 15, baseType: !1181, size: 64, offset: 448)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1182, line: 16, size: 64, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1181, file: !1182, line: 17, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1187, line: 746, size: 58368, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1188 = !{!1189, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1269, !1280, !1375, !1379, !1382, !1413, !1414, !1415, !1416, !1427, !1429, !1430, !1431, !1432, !1433, !1434, !1445, !1446, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1463, !1464, !1471, !1472, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1696, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1711, !1712, !1713, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1755, !1761, !1762, !1763, !1764, !1765, !1769, !1772, !1779, !1784, !1787, !1790, !1793, !1796, !1936, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1978, !1979, !1980, !1989, !1997, !1998, !1999, !2000, !2001, !2006, !2007, !2008, !2011, !2012, !2015, !2018, !2021, !2029, !2032, !2033, !2119, !2120, !2121, !2122, !2123, !2129, !2130, !2131, !2132, !2135, !2136, !2139, !2153, !2154, !2157, !2158, !2159, !2162, !2163, !2164, !2167, !2168, !2169, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2201, !2204, !2523, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2535, !2607, !2609, !2610, !2611, !2612, !2613, !2625, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2642, !2643, !2644}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1186, file: !1187, line: 752, baseType: !1190, size: 192)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1191, line: 56, size: 192, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1192 = !{!1193, !1194, !1195, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 57, baseType: !329, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1190, file: !1191, line: 58, baseType: !329, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1190, file: !1191, line: 59, baseType: !86, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1190, file: !1191, line: 61, baseType: !86, size: 32, offset: 160)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1186, file: !1187, line: 754, baseType: !7, size: 32, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1186, file: !1187, line: 767, baseType: !80, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1186, file: !1187, line: 768, baseType: !223, size: 32, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 770, baseType: !7, size: 32, offset: 352)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1186, file: !1187, line: 771, baseType: !7, size: 32, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1186, file: !1187, line: 774, baseType: !91, size: 32, offset: 416)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1186, file: !1187, line: 775, baseType: !1204, size: 128, offset: 448)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1205, line: 58, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1206 = !{!1207, !1208, !1213, !1214}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1204, file: !1205, line: 59, baseType: !100, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !1205, line: 60, baseType: !1209, size: 32, offset: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !1205, line: 60, size: 32, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1209, file: !1205, line: 61, baseType: !7, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1209, file: !1205, line: 62, baseType: !137, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1204, file: !1205, line: 65, baseType: !153, size: 16, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1204, file: !1205, line: 65, baseType: !153, size: 16, offset: 112)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1186, file: !1187, line: 776, baseType: !7, size: 32, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1186, file: !1187, line: 777, baseType: !329, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1186, file: !1187, line: 778, baseType: !1185, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1186, file: !1187, line: 787, baseType: !91, size: 32, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1186, file: !1187, line: 788, baseType: !91, size: 32, offset: 800)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1186, file: !1187, line: 790, baseType: !91, size: 32, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1186, file: !1187, line: 792, baseType: !91, size: 32, offset: 864)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1186, file: !1187, line: 793, baseType: !91, size: 32, offset: 896)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1186, file: !1187, line: 794, baseType: !91, size: 32, offset: 928)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1186, file: !1187, line: 795, baseType: !7, size: 32, offset: 960)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1186, file: !1187, line: 797, baseType: !1226, size: 2048, offset: 1024)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1187, line: 551, size: 2048, elements: !1227)
!1227 = !{!1228, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1248, !1251, !1252, !1253}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1226, file: !1187, line: 553, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1187, line: 411, size: 128, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1229, file: !1187, line: 412, baseType: !329, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1229, file: !1187, line: 413, baseType: !86, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1226, file: !1187, line: 554, baseType: !325, size: 192, align: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1226, file: !1187, line: 555, baseType: !301, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1226, file: !1187, line: 556, baseType: !301, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1226, file: !1187, line: 558, baseType: !182, size: 128, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1226, file: !1187, line: 559, baseType: !7, size: 32, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1226, file: !1187, line: 561, baseType: !301, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1226, file: !1187, line: 562, baseType: !301, size: 64, offset: 704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1226, file: !1187, line: 563, baseType: !301, size: 64, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1226, file: !1187, line: 564, baseType: !301, size: 64, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1226, file: !1187, line: 565, baseType: !166, size: 64, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1226, file: !1187, line: 566, baseType: !301, size: 64, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1226, file: !1187, line: 568, baseType: !301, size: 64, offset: 1024)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1226, file: !1187, line: 571, baseType: !91, size: 32, offset: 1088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1226, file: !1187, line: 572, baseType: !1247, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1226, file: !1187, line: 574, baseType: !1249, size: 64, offset: 1216)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1187, line: 49, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1226, file: !1187, line: 576, baseType: !1249, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1226, file: !1187, line: 578, baseType: !329, size: 64, offset: 1344)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1226, file: !1187, line: 588, baseType: !1254, size: 512, align: 512, offset: 1536)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1187, line: 497, size: 512, align: 512, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1254, file: !1187, line: 498, baseType: !301, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1254, file: !1187, line: 499, baseType: !301, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1254, file: !1187, line: 500, baseType: !301, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1254, file: !1187, line: 501, baseType: !86, size: 32, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1254, file: !1187, line: 502, baseType: !86, size: 32, offset: 224)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1254, file: !1187, line: 503, baseType: !329, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1254, file: !1187, line: 504, baseType: !329, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1254, file: !1187, line: 505, baseType: !329, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1254, file: !1187, line: 506, baseType: !1265, size: 64, align: 64, offset: 448)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1187, line: 445, size: 64, align: 64, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1265, file: !1187, line: 446, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1265, file: !1187, line: 447, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1186, file: !1187, line: 798, baseType: !1270, size: 384, offset: 3072)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1187, line: 592, size: 384, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1270, file: !1187, line: 593, baseType: !182, size: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1270, file: !1187, line: 594, baseType: !329, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1270, file: !1187, line: 595, baseType: !329, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1270, file: !1187, line: 596, baseType: !7, size: 32, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1270, file: !1187, line: 597, baseType: !155, size: 16, offset: 288)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1270, file: !1187, line: 598, baseType: !155, size: 16, offset: 304)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1270, file: !1187, line: 600, baseType: !1279, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1186, file: !1187, line: 799, baseType: !1281, size: 1792, offset: 3456)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1187, line: 610, size: 1792, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1372, !1373}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1281, file: !1187, line: 611, baseType: !325, size: 192, align: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1281, file: !1187, line: 618, baseType: !301, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1281, file: !1187, line: 619, baseType: !301, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1281, file: !1187, line: 620, baseType: !301, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1281, file: !1187, line: 621, baseType: !301, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1281, file: !1187, line: 622, baseType: !301, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1281, file: !1187, line: 629, baseType: !166, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1281, file: !1187, line: 630, baseType: !301, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !1187, line: 631, baseType: !7, size: 32, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1281, file: !1187, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1281, file: !1187, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1281, file: !1187, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1281, file: !1187, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1281, file: !1187, line: 662, baseType: !1297, size: 512, offset: 704)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1298)
!1298 = !{!1299, !1307, !1308, !1313, !1368, !1369, !1370, !1371}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1297, file: !26, line: 119, baseType: !1300, size: 256)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1301, line: 9, size: 256, elements: !1302)
!1301 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1300, file: !1301, line: 10, baseType: !325, size: 192, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1300, file: !1301, line: 11, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1306, line: 29, baseType: !166)
!1306 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1297, file: !26, line: 120, baseType: !1305, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1297, file: !26, line: 121, baseType: !1309, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!25, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1297, file: !26, line: 122, baseType: !1314, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1316)
!1316 = !{!1317, !1342, !1343, !1346, !1351, !1352, !1363, !1367}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1315, file: !26, line: 160, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1319, file: !26, line: 216, baseType: !175, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1319, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1319, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1319, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1319, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1319, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1319, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1319, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1319, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1319, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1319, file: !26, line: 227, baseType: !155, size: 16, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1319, file: !26, line: 228, baseType: !155, size: 16, offset: 208)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1319, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1319, file: !26, line: 235, baseType: !1305, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1319, file: !26, line: 236, baseType: !1312, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1319, file: !26, line: 237, baseType: !1305, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1319, file: !26, line: 238, baseType: !1312, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1319, file: !26, line: 239, baseType: !1339, size: 4096, align: 512, offset: 512)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 4096, align: 512, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 8)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1315, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1315, file: !26, line: 162, baseType: !1344, size: 32, offset: 96)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 32, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !190, line: 96, baseType: !91)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1315, file: !26, line: 163, baseType: !1347, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !525, line: 274, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !525, line: 274, size: 32, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1348, file: !525, line: 274, baseType: !529, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1315, file: !26, line: 164, baseType: !1312, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1315, file: !26, line: 165, baseType: !1353, size: 128, offset: 256)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1301, line: 14, size: 128, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1353, file: !1301, line: 15, baseType: !1356, size: 128)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !326, line: 26, size: 128, elements: !1357)
!1357 = !{!1358, !1362}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1356, file: !326, line: 27, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !326, line: 12, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1359, file: !326, line: 13, baseType: !331, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1356, file: !326, line: 28, baseType: !331, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1315, file: !26, line: 166, baseType: !1364, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1305}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1315, file: !26, line: 167, baseType: !1305, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1297, file: !26, line: 123, baseType: !145, size: 8, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1297, file: !26, line: 124, baseType: !145, size: 8, offset: 456)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1297, file: !26, line: 125, baseType: !145, size: 8, offset: 464)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1297, file: !26, line: 126, baseType: !145, size: 8, offset: 472)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1281, file: !1187, line: 671, baseType: !1297, size: 512, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1281, file: !1187, line: 679, baseType: !1374, size: 64, offset: 1728)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1186, file: !1187, line: 800, baseType: !1376, size: 64, offset: 5248)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1187, line: 800, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1186, file: !1187, line: 809, baseType: !1380, size: 64, offset: 5312)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1187, line: 70, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1186, file: !1187, line: 825, baseType: !1383, size: 2048, align: 512, offset: 5632)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1187, line: 509, size: 2048, align: 512, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1383, file: !1187, line: 511, baseType: !301, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1383, file: !1187, line: 512, baseType: !301, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1383, file: !1187, line: 513, baseType: !301, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1383, file: !1187, line: 514, baseType: !301, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1383, file: !1187, line: 515, baseType: !301, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1383, file: !1187, line: 516, baseType: !301, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1383, file: !1187, line: 518, baseType: !301, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1383, file: !1187, line: 519, baseType: !301, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1383, file: !1187, line: 520, baseType: !166, size: 64, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1383, file: !1187, line: 522, baseType: !301, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1383, file: !1187, line: 523, baseType: !301, size: 64, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1383, file: !1187, line: 524, baseType: !166, size: 64, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1383, file: !1187, line: 526, baseType: !166, size: 64, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1383, file: !1187, line: 527, baseType: !301, size: 64, offset: 832)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1383, file: !1187, line: 529, baseType: !301, size: 64, offset: 896)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1383, file: !1187, line: 530, baseType: !301, size: 64, offset: 960)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1383, file: !1187, line: 531, baseType: !301, size: 64, offset: 1024)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1383, file: !1187, line: 532, baseType: !301, size: 64, offset: 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1383, file: !1187, line: 533, baseType: !301, size: 64, offset: 1152)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1383, file: !1187, line: 535, baseType: !301, size: 64, offset: 1216)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1383, file: !1187, line: 536, baseType: !301, size: 64, offset: 1280)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1383, file: !1187, line: 537, baseType: !301, size: 64, offset: 1344)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1383, file: !1187, line: 538, baseType: !301, size: 64, offset: 1408)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1383, file: !1187, line: 539, baseType: !301, size: 64, offset: 1472)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1383, file: !1187, line: 540, baseType: !301, size: 64, offset: 1536)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1383, file: !1187, line: 541, baseType: !301, size: 64, offset: 1600)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1383, file: !1187, line: 542, baseType: !301, size: 64, offset: 1664)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1383, file: !1187, line: 543, baseType: !301, size: 64, offset: 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1186, file: !1187, line: 833, baseType: !7, size: 32, offset: 7680)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1186, file: !1187, line: 836, baseType: !7, size: 32, offset: 7712)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1186, file: !1187, line: 837, baseType: !91, size: 32, offset: 7744)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1186, file: !1187, line: 838, baseType: !1417, size: 64, offset: 7808)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1420, line: 19, baseType: !1421)
!1420 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1420, line: 19, size: 64, elements: !1422)
!1422 = !{!1423}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1421, file: !1420, line: 19, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 1)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1186, file: !1187, line: 839, baseType: !1428, size: 64, offset: 7872)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1186, file: !1187, line: 840, baseType: !1419, size: 64, offset: 7936)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1186, file: !1187, line: 841, baseType: !80, size: 64, offset: 8000)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1186, file: !1187, line: 843, baseType: !155, size: 16, offset: 8064)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1186, file: !1187, line: 845, baseType: !155, size: 16, offset: 8080)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1186, file: !1187, line: 848, baseType: !91, size: 32, offset: 8096)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1186, file: !1187, line: 849, baseType: !1435, size: 32, offset: 8128)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1187, line: 718, size: 32, elements: !1436)
!1436 = !{!1437, !1444}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1435, file: !1187, line: 724, baseType: !1438, size: 32)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !1187, line: 719, size: 32, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1438, file: !1187, line: 720, baseType: !145, size: 8)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1438, file: !1187, line: 721, baseType: !145, size: 8, offset: 8)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1438, file: !1187, line: 722, baseType: !145, size: 8, offset: 16)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1438, file: !1187, line: 723, baseType: !145, size: 8, offset: 24)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1435, file: !1187, line: 725, baseType: !86, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1186, file: !1187, line: 850, baseType: !182, size: 128, offset: 8192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1186, file: !1187, line: 851, baseType: !1447, size: 64, offset: 8320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1187, line: 60, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1186, file: !1187, line: 855, baseType: !329, size: 64, offset: 8384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1186, file: !1187, line: 856, baseType: !145, size: 8, offset: 8448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1186, file: !1187, line: 857, baseType: !145, size: 8, offset: 8456)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1186, file: !1187, line: 858, baseType: !91, size: 32, offset: 8480)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1186, file: !1187, line: 859, baseType: !182, size: 128, offset: 8512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1186, file: !1187, line: 860, baseType: !91, size: 32, offset: 8640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1186, file: !1187, line: 861, baseType: !182, size: 128, offset: 8704)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1186, file: !1187, line: 873, baseType: !1457, size: 256, offset: 8832)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1187, line: 376, size: 256, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1457, file: !1187, line: 381, baseType: !329, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1457, file: !1187, line: 384, baseType: !303, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1457, file: !1187, line: 389, baseType: !303, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1457, file: !1187, line: 392, baseType: !303, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1186, file: !1187, line: 875, baseType: !182, size: 128, offset: 9088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1186, file: !1187, line: 877, baseType: !1465, size: 320, offset: 9216)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1466, line: 86, size: 320, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1465, file: !1466, line: 87, baseType: !91, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1465, file: !1466, line: 88, baseType: !182, size: 128, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1465, file: !1466, line: 89, baseType: !182, size: 128, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1186, file: !1187, line: 878, baseType: !325, size: 192, align: 64, offset: 9536)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1186, file: !1187, line: 881, baseType: !1473, size: 64, offset: 9728)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !957, line: 733, size: 10240, elements: !1475)
!1475 = !{!1476, !1615}
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !957, line: 734, baseType: !1477, size: 10240)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !957, line: 734, size: 10240, elements: !1478)
!1478 = !{!1479, !1483, !1496, !1500, !1501, !1502, !1503, !1504, !1505, !1514, !1515, !1516, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1555, !1557, !1560, !1584, !1585, !1586, !1589, !1590, !1591, !1594, !1595, !1596, !1602, !1603}
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !957, line: 739, baseType: !1480, size: 512, align: 512)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !957, line: 739, size: 512, align: 512, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1480, file: !957, line: 747, baseType: !137, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1477, file: !957, line: 750, baseType: !1484, size: 128, offset: 512)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1485, line: 218, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1486 = !{!1487, !1494, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1485, line: 219, baseType: !1488, size: 32)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !1485, line: 219, size: 32, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1488, file: !1485, line: 220, baseType: !117, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1488, file: !1485, line: 221, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1485, line: 197, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1485, line: 197, elements: !812)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1484, file: !1485, line: 223, baseType: !7, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1484, file: !1485, line: 224, baseType: !80, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1477, file: !957, line: 752, baseType: !1497, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!329, !93, !329, !329, !329, !329}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1477, file: !957, line: 756, baseType: !329, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1477, file: !957, line: 757, baseType: !329, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1477, file: !957, line: 760, baseType: !329, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1477, file: !957, line: 761, baseType: !329, size: 64, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1477, file: !957, line: 763, baseType: !329, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1477, file: !957, line: 764, baseType: !1506, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1508, line: 299, baseType: !1509)
!1508 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1508, line: 299, size: 64, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1509, file: !1508, line: 299, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1513, line: 18, baseType: !329)
!1513 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1477, file: !957, line: 773, baseType: !137, size: 32, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1477, file: !957, line: 785, baseType: !137, size: 32, offset: 1120)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1477, file: !957, line: 795, baseType: !1517, size: 64, offset: 1152)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !957, line: 726, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1518, file: !957, line: 727, baseType: !301, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1518, file: !957, line: 728, baseType: !91, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1477, file: !957, line: 801, baseType: !329, size: 64, offset: 1216)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1477, file: !957, line: 804, baseType: !160, size: 64, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1477, file: !957, line: 806, baseType: !91, size: 32, offset: 1344)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1477, file: !957, line: 808, baseType: !117, size: 32, offset: 1376)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1477, file: !957, line: 823, baseType: !334, size: 320, offset: 1408)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1477, file: !957, line: 825, baseType: !182, size: 128, offset: 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1477, file: !957, line: 845, baseType: !91, size: 32, offset: 1856)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1477, file: !957, line: 849, baseType: !329, size: 64, offset: 1920)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1477, file: !957, line: 850, baseType: !329, size: 64, offset: 1984)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1477, file: !957, line: 852, baseType: !329, size: 64, offset: 2048)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1477, file: !957, line: 853, baseType: !329, size: 64, offset: 2112)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1477, file: !957, line: 854, baseType: !162, size: 64, offset: 2176)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1477, file: !957, line: 855, baseType: !329, size: 64, offset: 2240)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1477, file: !957, line: 856, baseType: !329, size: 64, offset: 2304)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1477, file: !957, line: 857, baseType: !329, size: 64, offset: 2368)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1477, file: !957, line: 858, baseType: !329, size: 64, offset: 2432)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1477, file: !957, line: 865, baseType: !529, size: 32, offset: 2496)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1477, file: !957, line: 867, baseType: !117, size: 32, offset: 2528)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1477, file: !957, line: 869, baseType: !329, size: 64, offset: 2560)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1477, file: !957, line: 869, baseType: !329, size: 64, offset: 2624)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1477, file: !957, line: 869, baseType: !329, size: 64, offset: 2688)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1477, file: !957, line: 869, baseType: !329, size: 64, offset: 2752)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1477, file: !957, line: 870, baseType: !329, size: 64, offset: 2816)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1477, file: !957, line: 870, baseType: !329, size: 64, offset: 2880)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1477, file: !957, line: 870, baseType: !329, size: 64, offset: 2944)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1477, file: !957, line: 871, baseType: !329, size: 64, offset: 3008)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1477, file: !957, line: 871, baseType: !329, size: 64, offset: 3072)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1477, file: !957, line: 871, baseType: !329, size: 64, offset: 3136)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1477, file: !957, line: 871, baseType: !329, size: 64, offset: 3200)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1477, file: !957, line: 873, baseType: !1552, size: 3328, offset: 3264)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 3328, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 52)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1477, file: !957, line: 875, baseType: !1556, size: 1280, offset: 6592)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 1280, elements: !241)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1477, file: !957, line: 877, baseType: !1558, size: 64, offset: 7872)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !957, line: 877, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1477, file: !957, line: 880, baseType: !1561, size: 1088, offset: 7936)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1562, line: 72, baseType: !1563)
!1562 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 23, size: 1088, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1572, !1573, !1574, !1575, !1579, !1580, !1581}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1563, file: !1562, line: 28, baseType: !301, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1563, file: !1562, line: 38, baseType: !162, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1563, file: !1562, line: 40, baseType: !329, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1563, file: !1562, line: 43, baseType: !334, size: 320, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1563, file: !1562, line: 44, baseType: !1570, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1562, line: 44, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1563, file: !1562, line: 48, baseType: !329, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !1562, line: 59, baseType: !170, size: 256, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1563, file: !1562, line: 60, baseType: !80, size: 64, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1563, file: !1562, line: 61, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1562, line: 61, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1563, file: !1562, line: 63, baseType: !137, size: 32, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1563, file: !1562, line: 69, baseType: !153, size: 16, offset: 1056)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1563, file: !1562, line: 70, baseType: !1582, size: 16, offset: 1072)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !362)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !957, line: 882, baseType: !329, size: 64, offset: 9024)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1477, file: !957, line: 885, baseType: !117, size: 32, offset: 9088)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1477, file: !957, line: 886, baseType: !1587, size: 64, offset: 9152)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !957, line: 732, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1477, file: !957, line: 901, baseType: !480, size: 64, offset: 9216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1477, file: !957, line: 904, baseType: !93, size: 64, offset: 9280)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1477, file: !957, line: 906, baseType: !1592, size: 64, offset: 9344)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !957, line: 906, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1477, file: !957, line: 930, baseType: !137, size: 32, offset: 9408)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1477, file: !957, line: 933, baseType: !137, size: 32, offset: 9440)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1477, file: !957, line: 935, baseType: !1597, size: 64, offset: 9472)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1597, file: !44, line: 104, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1477, file: !957, line: 940, baseType: !160, size: 64, offset: 9536)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1477, file: !957, line: 942, baseType: !1604, size: 256, offset: 9600)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1605, line: 98, size: 256, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1604, file: !1605, line: 99, baseType: !160, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1604, file: !1605, line: 100, baseType: !182, size: 128, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1604, file: !1605, line: 101, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1605, line: 21, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1474, file: !957, line: 986, baseType: !1616, offset: 10240)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !260)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1186, file: !1187, line: 882, baseType: !1473, size: 64, offset: 9792)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1186, file: !1187, line: 884, baseType: !91, size: 32, offset: 9856)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1186, file: !1187, line: 885, baseType: !91, size: 32, offset: 9888)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1186, file: !1187, line: 886, baseType: !91, size: 32, offset: 9920)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1186, file: !1187, line: 888, baseType: !91, size: 32, offset: 9952)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1186, file: !1187, line: 890, baseType: !329, size: 64, offset: 9984)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1186, file: !1187, line: 893, baseType: !7, size: 32, offset: 10048)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1186, file: !1187, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1186, file: !1187, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1186, file: !1187, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1186, file: !1187, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1186, file: !1187, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1186, file: !1187, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1186, file: !1187, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1186, file: !1187, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1186, file: !1187, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1186, file: !1187, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1186, file: !1187, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1186, file: !1187, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1186, file: !1187, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1186, file: !1187, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1186, file: !1187, line: 969, baseType: !329, size: 64, offset: 10176)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1186, file: !1187, line: 971, baseType: !1640, size: 448, offset: 10240)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1641)
!1641 = !{!1642, !1643, !1648}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1640, file: !31, line: 26, baseType: !329, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1640, file: !31, line: 27, baseType: !1644, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!673, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !31, line: 28, baseType: !1649, size: 320, offset: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !31, line: 28, size: 320, elements: !1650)
!1650 = !{!1651, !1661, !1686}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1649, file: !31, line: 37, baseType: !1652, size: 320)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1649, file: !31, line: 30, size: 320, elements: !1653)
!1653 = !{!1654, !1656, !1657, !1658, !1659, !1660}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1652, file: !31, line: 31, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1652, file: !31, line: 32, baseType: !86, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1652, file: !31, line: 33, baseType: !86, size: 32, offset: 96)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1652, file: !31, line: 34, baseType: !86, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1652, file: !31, line: 35, baseType: !301, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1652, file: !31, line: 36, baseType: !1655, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1649, file: !31, line: 47, baseType: !1662, size: 192)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1649, file: !31, line: 39, size: 192, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1685}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1662, file: !31, line: 40, baseType: !1344, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1662, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !31, line: 42, baseType: !1667, size: 64, offset: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !31, line: 42, size: 64, elements: !1668)
!1668 = !{!1669, !1677}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1667, file: !31, line: 43, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1672, line: 7, size: 128, elements: !1673)
!1672 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1673 = !{!1674, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1671, file: !1672, line: 8, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !190, line: 93, baseType: !168)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1671, file: !1672, line: 9, baseType: !168, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1667, file: !31, line: 44, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1680, line: 7, size: 64, elements: !1681)
!1680 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1681 = !{!1682, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1679, file: !1680, line: 8, baseType: !1683, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1680, line: 5, baseType: !318)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1679, file: !1680, line: 9, baseType: !318, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1662, file: !31, line: 46, baseType: !301, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1649, file: !31, line: 55, baseType: !1687, size: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1649, file: !31, line: 49, size: 256, elements: !1688)
!1688 = !{!1689, !1692, !1693, !1694, !1695}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1687, file: !31, line: 50, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1687, file: !31, line: 51, baseType: !91, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1687, file: !31, line: 52, baseType: !91, size: 32, offset: 96)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1687, file: !31, line: 53, baseType: !329, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1687, file: !31, line: 54, baseType: !329, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1186, file: !1187, line: 973, baseType: !1697, size: 32, offset: 10688)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !107, line: 27, baseType: !1698)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !190, line: 28, baseType: !91)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1186, file: !1187, line: 974, baseType: !1697, size: 32, offset: 10720)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1186, file: !1187, line: 978, baseType: !329, size: 64, offset: 10752)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1186, file: !1187, line: 987, baseType: !1185, size: 64, offset: 10816)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1186, file: !1187, line: 990, baseType: !1185, size: 64, offset: 10880)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1186, file: !1187, line: 995, baseType: !182, size: 128, offset: 10944)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1186, file: !1187, line: 996, baseType: !182, size: 128, offset: 11072)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1186, file: !1187, line: 997, baseType: !1185, size: 64, offset: 11200)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1186, file: !1187, line: 1005, baseType: !182, size: 128, offset: 11264)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1186, file: !1187, line: 1006, baseType: !182, size: 128, offset: 11392)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1186, file: !1187, line: 1009, baseType: !219, size: 64, offset: 11520)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1186, file: !1187, line: 1010, baseType: !1710, size: 512, offset: 11584)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 512, elements: !241)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1186, file: !1187, line: 1011, baseType: !182, size: 128, offset: 12096)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1186, file: !1187, line: 1012, baseType: !182, size: 128, offset: 12224)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1186, file: !1187, line: 1014, baseType: !1714, size: 64, offset: 12352)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1716, line: 26, size: 256, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1715, file: !1716, line: 27, baseType: !7, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1715, file: !1716, line: 28, baseType: !1720, size: 192, offset: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1721, line: 43, size: 192, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !1721, line: 44, baseType: !175, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1720, file: !1721, line: 45, baseType: !182, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1186, file: !1187, line: 1017, baseType: !875, size: 64, offset: 12416)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1186, file: !1187, line: 1020, baseType: !875, size: 64, offset: 12480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1186, file: !1187, line: 1023, baseType: !80, size: 64, offset: 12544)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1186, file: !1187, line: 1025, baseType: !301, size: 64, offset: 12608)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1186, file: !1187, line: 1026, baseType: !301, size: 64, offset: 12672)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1186, file: !1187, line: 1031, baseType: !301, size: 64, offset: 12736)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1186, file: !1187, line: 1032, baseType: !1732, size: 192, offset: 12800)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1187, line: 324, size: 192, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1732, file: !1187, line: 326, baseType: !301, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1732, file: !1187, line: 327, baseType: !301, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !1187, line: 328, baseType: !175, size: 32, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1186, file: !1187, line: 1041, baseType: !329, size: 64, offset: 12992)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1186, file: !1187, line: 1042, baseType: !329, size: 64, offset: 13056)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1186, file: !1187, line: 1045, baseType: !301, size: 64, offset: 13120)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1186, file: !1187, line: 1048, baseType: !301, size: 64, offset: 13184)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1186, file: !1187, line: 1051, baseType: !329, size: 64, offset: 13248)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1186, file: !1187, line: 1052, baseType: !329, size: 64, offset: 13312)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1186, file: !1187, line: 1055, baseType: !1744, size: 640, offset: 13376)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1745, line: 132, size: 640, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1746 = !{!1747, !1753, !1754}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1744, file: !1745, line: 133, baseType: !1748, size: 576)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1749, size: 576, elements: !215)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1745, line: 117, size: 192, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1749, file: !1745, line: 118, baseType: !301, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1749, file: !1745, line: 119, baseType: !1353, size: 128, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1744, file: !1745, line: 134, baseType: !7, size: 32, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1744, file: !1745, line: 135, baseType: !7, size: 32, offset: 608)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1186, file: !1187, line: 1058, baseType: !1756, size: 448, offset: 14016)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1745, line: 144, size: 448, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1756, file: !1745, line: 145, baseType: !106, size: 128, align: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1756, file: !1745, line: 146, baseType: !170, size: 256, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1756, file: !1745, line: 147, baseType: !7, size: 32, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1186, file: !1187, line: 1064, baseType: !274, size: 64, offset: 14464)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1186, file: !1187, line: 1067, baseType: !274, size: 64, offset: 14528)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1186, file: !1187, line: 1070, baseType: !274, size: 64, offset: 14592)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1186, file: !1187, line: 1074, baseType: !310, size: 64, offset: 14656)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1186, file: !1187, line: 1084, baseType: !1766, size: 128, offset: 14720)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 16)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1186, file: !1187, line: 1086, baseType: !1770, size: 64, offset: 14848)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1187, line: 55, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1186, file: !1187, line: 1089, baseType: !1773, size: 64, offset: 14912)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1774, line: 12, size: 64, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1775 = !{!1776}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1773, file: !1774, line: 13, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1774, line: 8, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1186, file: !1187, line: 1090, baseType: !1780, size: 128, offset: 14976)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1781, line: 13, size: 128, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1780, file: !1781, line: 14, baseType: !182, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1186, file: !1187, line: 1097, baseType: !1785, size: 64, offset: 15104)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1187, line: 50, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1186, file: !1187, line: 1100, baseType: !1788, size: 64, offset: 15168)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1187, line: 1100, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1186, file: !1187, line: 1103, baseType: !1791, size: 64, offset: 15232)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1187, line: 53, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1186, file: !1187, line: 1107, baseType: !1794, size: 64, offset: 15296)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1187, line: 56, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1186, file: !1187, line: 1110, baseType: !1797, size: 64, offset: 15360)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1799, line: 93, size: 8768, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1850, !1859, !1860, !1862, !1863, !1864, !1867, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1905, !1906, !1913, !1923, !1926, !1927, !1930, !1931, !1932, !1933, !1934, !1935}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1798, file: !1799, line: 94, baseType: !223, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1798, file: !1799, line: 95, baseType: !137, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1798, file: !1799, line: 96, baseType: !91, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1798, file: !1799, line: 97, baseType: !91, size: 32, offset: 96)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1798, file: !1799, line: 98, baseType: !182, size: 128, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1798, file: !1799, line: 100, baseType: !245, size: 192, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1798, file: !1799, line: 103, baseType: !1185, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1798, file: !1799, line: 106, baseType: !1809, size: 192, offset: 512)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !485, line: 32, size: 192, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1809, file: !485, line: 33, baseType: !182, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1809, file: !485, line: 34, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1814, line: 25, baseType: !1815)
!1814 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1814, line: 23, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1815, file: !1814, line: 24, baseType: !1424, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1798, file: !1799, line: 109, baseType: !232, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1798, file: !1799, line: 112, baseType: !91, size: 32, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1798, file: !1799, line: 114, baseType: !91, size: 32, offset: 800)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1798, file: !1799, line: 115, baseType: !1185, size: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1798, file: !1799, line: 118, baseType: !91, size: 32, offset: 896)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1799, line: 119, baseType: !7, size: 32, offset: 928)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1798, file: !1799, line: 121, baseType: !1825, size: 64, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1799, line: 80, size: 448, elements: !1827)
!1827 = !{!1828, !1829, !1835}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1826, file: !1799, line: 81, baseType: !137, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1826, file: !1799, line: 82, baseType: !1830, size: 128, offset: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1799, line: 75, size: 128, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1830, file: !1799, line: 76, baseType: !1185, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1830, file: !1799, line: 77, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1826, file: !1799, line: 83, baseType: !1715, size: 256, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1798, file: !1799, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1798, file: !1799, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1798, file: !1799, line: 138, baseType: !7, size: 32, offset: 1056)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1798, file: !1799, line: 139, baseType: !182, size: 128, offset: 1088)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1798, file: !1799, line: 142, baseType: !1297, size: 512, offset: 1216)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1798, file: !1799, line: 143, baseType: !1305, size: 64, offset: 1728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1798, file: !1799, line: 150, baseType: !1843, size: 256, offset: 1792)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1844, size: 256, elements: !1848)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1799, line: 38, size: 128, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1844, file: !1799, line: 39, baseType: !301, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1844, file: !1799, line: 40, baseType: !301, size: 64, offset: 64)
!1848 = !{!1849}
!1849 = !DISubrange(count: 2)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1798, file: !1799, line: 156, baseType: !1851, size: 192, offset: 2048)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1799, line: 66, size: 192, elements: !1852)
!1852 = !{!1853}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1851, file: !1799, line: 67, baseType: !1854, size: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1799, line: 47, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1854, file: !1799, line: 48, baseType: !162, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1854, file: !1799, line: 49, baseType: !162, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1854, file: !1799, line: 50, baseType: !162, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1798, file: !1799, line: 160, baseType: !1744, size: 640, offset: 2240)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1798, file: !1799, line: 163, baseType: !1861, size: 256, offset: 2880)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !241)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1798, file: !1799, line: 169, baseType: !219, size: 64, offset: 3136)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1798, file: !1799, line: 172, baseType: !91, size: 32, offset: 3200)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1798, file: !1799, line: 174, baseType: !1865, size: 64, offset: 3264)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1799, line: 174, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1798, file: !1799, line: 185, baseType: !1868, size: 64, offset: 3328)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !525, line: 860, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 853, size: 64, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1869, file: !525, line: 858, baseType: !524, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !525, line: 859, baseType: !117, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1798, file: !1799, line: 186, baseType: !301, size: 64, offset: 3392)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1798, file: !1799, line: 186, baseType: !301, size: 64, offset: 3456)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1798, file: !1799, line: 186, baseType: !301, size: 64, offset: 3520)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1798, file: !1799, line: 186, baseType: !301, size: 64, offset: 3584)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1798, file: !1799, line: 187, baseType: !301, size: 64, offset: 3648)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1798, file: !1799, line: 188, baseType: !301, size: 64, offset: 3712)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1798, file: !1799, line: 189, baseType: !1732, size: 192, offset: 3776)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1798, file: !1799, line: 190, baseType: !329, size: 64, offset: 3968)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1798, file: !1799, line: 190, baseType: !329, size: 64, offset: 4032)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1798, file: !1799, line: 190, baseType: !329, size: 64, offset: 4096)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1798, file: !1799, line: 190, baseType: !329, size: 64, offset: 4160)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1798, file: !1799, line: 191, baseType: !329, size: 64, offset: 4224)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1798, file: !1799, line: 191, baseType: !329, size: 64, offset: 4288)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1798, file: !1799, line: 191, baseType: !329, size: 64, offset: 4352)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1798, file: !1799, line: 191, baseType: !329, size: 64, offset: 4416)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1798, file: !1799, line: 192, baseType: !329, size: 64, offset: 4480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1798, file: !1799, line: 192, baseType: !329, size: 64, offset: 4544)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1798, file: !1799, line: 192, baseType: !329, size: 64, offset: 4608)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1798, file: !1799, line: 192, baseType: !329, size: 64, offset: 4672)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1798, file: !1799, line: 193, baseType: !329, size: 64, offset: 4736)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1798, file: !1799, line: 193, baseType: !329, size: 64, offset: 4800)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1798, file: !1799, line: 194, baseType: !1895, size: 448, offset: 4864)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1896, line: 12, size: 448, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1895, file: !1896, line: 15, baseType: !301, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1895, file: !1896, line: 17, baseType: !301, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1895, file: !1896, line: 19, baseType: !301, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1895, file: !1896, line: 21, baseType: !301, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1895, file: !1896, line: 29, baseType: !301, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1895, file: !1896, line: 35, baseType: !301, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1895, file: !1896, line: 44, baseType: !301, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1798, file: !1799, line: 202, baseType: !303, size: 64, offset: 5312)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1798, file: !1799, line: 213, baseType: !1907, size: 2048, offset: 5376)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1908, size: 2048, elements: !1767)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1909, line: 43, size: 128, elements: !1910)
!1909 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1908, file: !1909, line: 44, baseType: !717, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1908, file: !1909, line: 45, baseType: !717, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1798, file: !1799, line: 216, baseType: !1914, size: 448, offset: 7424)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1799, line: 30, size: 448, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1914, file: !1799, line: 31, baseType: !91, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1914, file: !1799, line: 32, baseType: !673, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1914, file: !1799, line: 33, baseType: !329, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1914, file: !1799, line: 34, baseType: !301, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1914, file: !1799, line: 34, baseType: !301, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1914, file: !1799, line: 35, baseType: !329, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1914, file: !1799, line: 35, baseType: !329, size: 64, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1798, file: !1799, line: 219, baseType: !1924, size: 64, offset: 7872)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1799, line: 219, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1798, file: !1799, line: 222, baseType: !7, size: 32, offset: 7936)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1798, file: !1799, line: 223, baseType: !1928, size: 64, offset: 8000)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1799, line: 223, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1798, file: !1799, line: 230, baseType: !394, size: 8, offset: 8064)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1798, file: !1799, line: 231, baseType: !362, size: 16, offset: 8080)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1798, file: !1799, line: 232, baseType: !362, size: 16, offset: 8096)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1798, file: !1799, line: 234, baseType: !1473, size: 64, offset: 8128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1798, file: !1799, line: 237, baseType: !170, size: 256, offset: 8192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1798, file: !1799, line: 243, baseType: !334, size: 320, offset: 8448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1186, file: !1187, line: 1111, baseType: !1937, size: 64, offset: 15424)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1799, line: 20, size: 16640, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1938, file: !1799, line: 21, baseType: !117, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1938, file: !1799, line: 22, baseType: !223, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1938, file: !1799, line: 23, baseType: !245, size: 192, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1938, file: !1799, line: 24, baseType: !1944, size: 16384, offset: 256)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 16384, elements: !1965)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !485, line: 51, size: 256, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1945, file: !485, line: 52, baseType: !1948, size: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !485, line: 37, size: 256, elements: !1949)
!1949 = !{!1950, !1957, !1958, !1964}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1948, file: !485, line: 39, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1952, line: 83, baseType: !1953)
!1952 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1952, line: 82, baseType: !1955)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !91}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1948, file: !485, line: 40, baseType: !329, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1948, file: !485, line: 46, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1952, line: 86, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1952, line: 85, baseType: !1962)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1948, file: !485, line: 48, baseType: !1813, size: 64, offset: 192)
!1965 = !{!1966}
!1966 = !DISubrange(count: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1186, file: !1187, line: 1112, baseType: !1813, size: 64, offset: 15488)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1186, file: !1187, line: 1113, baseType: !1813, size: 64, offset: 15552)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1186, file: !1187, line: 1115, baseType: !1813, size: 64, offset: 15616)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1186, file: !1187, line: 1116, baseType: !1809, size: 192, offset: 15680)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1186, file: !1187, line: 1117, baseType: !329, size: 64, offset: 15872)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1186, file: !1187, line: 1118, baseType: !715, size: 64, offset: 15936)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1186, file: !1187, line: 1119, baseType: !7, size: 32, offset: 16000)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1186, file: !1187, line: 1121, baseType: !110, size: 64, offset: 16064)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1186, file: !1187, line: 1125, baseType: !1976, size: 64, offset: 16128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1187, line: 43, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1186, file: !1187, line: 1127, baseType: !264, size: 32, offset: 16192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1186, file: !1187, line: 1128, baseType: !7, size: 32, offset: 16224)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1186, file: !1187, line: 1130, baseType: !1981, size: 128, offset: 16256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1982, line: 37, size: 128, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1981, file: !1982, line: 38, baseType: !91, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1981, file: !1982, line: 39, baseType: !137, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1981, file: !1982, line: 40, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1982, line: 24, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1186, file: !1187, line: 1131, baseType: !1990, size: 256, offset: 16384)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1991, line: 12, size: 256, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1992 = !{!1993, !1994, !1995, !1996}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1990, file: !1991, line: 13, baseType: !407, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1990, file: !1991, line: 14, baseType: !329, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1990, file: !1991, line: 15, baseType: !329, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1990, file: !1991, line: 16, baseType: !394, size: 8, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1186, file: !1187, line: 1134, baseType: !301, size: 64, offset: 16640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1186, file: !1187, line: 1135, baseType: !301, size: 64, offset: 16704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1186, file: !1187, line: 1138, baseType: !117, size: 32, offset: 16768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1186, file: !1187, line: 1141, baseType: !175, size: 32, offset: 16800)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1186, file: !1187, line: 1143, baseType: !2002, size: 64, offset: 16832)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1187, line: 735, size: 64, elements: !2003)
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2002, file: !1187, line: 736, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1186, file: !1187, line: 1147, baseType: !1356, size: 128, offset: 16896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1186, file: !1187, line: 1149, baseType: !1185, size: 64, offset: 17024)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1186, file: !1187, line: 1151, baseType: !2009, size: 64, offset: 17088)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1187, line: 1151, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1186, file: !1187, line: 1188, baseType: !80, size: 64, offset: 17152)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1186, file: !1187, line: 1191, baseType: !2013, size: 64, offset: 17216)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1187, line: 44, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1186, file: !1187, line: 1194, baseType: !2016, size: 64, offset: 17280)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1187, line: 45, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1186, file: !1187, line: 1197, baseType: !2019, size: 64, offset: 17344)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1187, line: 61, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1186, file: !1187, line: 1199, baseType: !2022, size: 64, offset: 17408)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2024, line: 99, size: 128, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2023, file: !2024, line: 100, baseType: !160, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2023, file: !2024, line: 101, baseType: !137, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2023, file: !2024, line: 103, baseType: !155, size: 16, offset: 96)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1186, file: !1187, line: 1202, baseType: !2030, size: 64, offset: 17472)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1187, line: 48, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1186, file: !1187, line: 1205, baseType: !329, size: 64, offset: 17536)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1186, file: !1187, line: 1206, baseType: !2034, size: 64, offset: 17600)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !485, line: 14, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !485, line: 12, size: 384, elements: !2037)
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !485, line: 13, baseType: !2039, size: 384)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !485, line: 13, size: 384, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2039, file: !485, line: 13, baseType: !91, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2039, file: !485, line: 13, baseType: !91, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2039, file: !485, line: 13, baseType: !91, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2039, file: !485, line: 13, baseType: !2045, size: 256, offset: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2046, line: 37, size: 256, elements: !2047)
!2046 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2047 = !{!2048, !2053, !2066, !2072, !2081, !2108, !2113}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2045, file: !2046, line: 42, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 39, size: 64, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2049, file: !2046, line: 40, baseType: !1698, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2049, file: !2046, line: 41, baseType: !270, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2045, file: !2046, line: 50, baseType: !2054, size: 192)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 45, size: 192, elements: !2055)
!2055 = !{!2056, !2058, !2059, !2065}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2054, file: !2046, line: 46, baseType: !2057, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !190, line: 95, baseType: !91)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2054, file: !2046, line: 47, baseType: !91, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2054, file: !2046, line: 48, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2046, line: 11, baseType: !2061)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2046, line: 8, size: 64, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2061, file: !2046, line: 9, baseType: !91, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2061, file: !2046, line: 10, baseType: !80, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2054, file: !2046, line: 49, baseType: !91, size: 32, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2045, file: !2046, line: 57, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 53, size: 128, elements: !2068)
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2067, file: !2046, line: 54, baseType: !1698, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2067, file: !2046, line: 55, baseType: !270, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2067, file: !2046, line: 56, baseType: !2060, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2045, file: !2046, line: 66, baseType: !2073, size: 256)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 60, size: 256, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2080}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2073, file: !2046, line: 61, baseType: !1698, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2073, file: !2046, line: 62, baseType: !270, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2073, file: !2046, line: 63, baseType: !91, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2073, file: !2046, line: 64, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !190, line: 94, baseType: !714)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2073, file: !2046, line: 65, baseType: !2079, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2045, file: !2046, line: 105, baseType: !2082, size: 256)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 69, size: 256, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2082, file: !2046, line: 70, baseType: !80, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !2046, line: 79, baseType: !2086, size: 192, offset: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2082, file: !2046, line: 79, size: 192, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2097, !2102}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2086, file: !2046, line: 81, baseType: !91, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2086, file: !2046, line: 86, baseType: !362, size: 16)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2086, file: !2046, line: 92, baseType: !2091, size: 192)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2046, line: 88, size: 192, elements: !2092)
!2092 = !{!2093, !2095, !2096}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2091, file: !2046, line: 89, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 64, elements: !1340)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2091, file: !2046, line: 90, baseType: !80, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2091, file: !2046, line: 91, baseType: !80, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2086, file: !2046, line: 97, baseType: !2098, size: 96)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2046, line: 94, size: 96, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2098, file: !2046, line: 95, baseType: !2094, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2098, file: !2046, line: 96, baseType: !88, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2086, file: !2046, line: 103, baseType: !2103, size: 128)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2046, line: 99, size: 128, elements: !2104)
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2103, file: !2046, line: 100, baseType: !329, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2103, file: !2046, line: 101, baseType: !88, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2103, file: !2046, line: 102, baseType: !88, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2045, file: !2046, line: 111, baseType: !2109, size: 128)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 108, size: 128, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2109, file: !2046, line: 109, baseType: !673, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2109, file: !2046, line: 110, baseType: !91, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2045, file: !2046, line: 118, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2046, line: 114, size: 128, elements: !2115)
!2115 = !{!2116, !2117, !2118}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2114, file: !2046, line: 115, baseType: !80, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2114, file: !2046, line: 116, baseType: !91, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2114, file: !2046, line: 117, baseType: !7, size: 32, offset: 96)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1186, file: !1187, line: 1208, baseType: !1895, size: 448, offset: 17664)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1186, file: !1187, line: 1215, baseType: !301, size: 64, offset: 18112)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1186, file: !1187, line: 1217, baseType: !301, size: 64, offset: 18176)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1186, file: !1187, line: 1219, baseType: !301, size: 64, offset: 18240)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1186, file: !1187, line: 1223, baseType: !2124, size: 64, offset: 18304)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2125, line: 99, baseType: !2126)
!2125 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2125, line: 99, size: 64, elements: !2127)
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2126, file: !2125, line: 99, baseType: !1424, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1186, file: !1187, line: 1225, baseType: !524, size: 32, offset: 18368)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1186, file: !1187, line: 1226, baseType: !91, size: 32, offset: 18400)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1186, file: !1187, line: 1227, baseType: !91, size: 32, offset: 18432)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1186, file: !1187, line: 1231, baseType: !2133, size: 64, offset: 18496)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1187, line: 1231, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1186, file: !1187, line: 1233, baseType: !182, size: 128, offset: 18560)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1186, file: !1187, line: 1240, baseType: !2137, size: 64, offset: 18688)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1187, line: 62, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1186, file: !1187, line: 1242, baseType: !2140, size: 64, offset: 18752)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2142, line: 392, size: 96, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2143 = !{!2144, !2150, !2152}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2141, file: !2142, line: 393, baseType: !2145, size: 32)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2142, line: 388, size: 32, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2145, file: !2142, line: 389, baseType: !2148, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2149, line: 46, baseType: !86)
!2149 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2141, file: !2142, line: 394, baseType: !2151, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2149, line: 42, baseType: !318)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2141, file: !2142, line: 395, baseType: !2148, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1186, file: !1187, line: 1244, baseType: !182, size: 128, offset: 18816)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1186, file: !1187, line: 1245, baseType: !2155, size: 64, offset: 18944)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1187, line: 51, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1186, file: !1187, line: 1246, baseType: !170, size: 256, offset: 19008)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1186, file: !1187, line: 1247, baseType: !7, size: 32, offset: 19264)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1186, file: !1187, line: 1250, baseType: !2160, size: 64, offset: 19328)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1187, line: 57, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1186, file: !1187, line: 1251, baseType: !170, size: 256, offset: 19392)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1186, file: !1187, line: 1252, baseType: !182, size: 128, offset: 19648)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1186, file: !1187, line: 1259, baseType: !2165, size: 64, offset: 19776)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !957, line: 717, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1186, file: !1187, line: 1260, baseType: !362, size: 16, offset: 19840)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1186, file: !1187, line: 1261, baseType: !362, size: 16, offset: 19856)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1186, file: !1187, line: 1314, baseType: !2170, size: 64, offset: 19904)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2172, line: 62, size: 256, align: 256, elements: !2173)
!2172 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2171, file: !2172, line: 75, baseType: !88, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2171, file: !2172, line: 90, baseType: !88, size: 32, offset: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2171, file: !2172, line: 112, baseType: !302, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2171, file: !2172, line: 132, baseType: !88, size: 32, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2171, file: !2172, line: 140, baseType: !88, size: 32, offset: 160)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2171, file: !2172, line: 149, baseType: !88, size: 32, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2171, file: !2172, line: 154, baseType: !2181, offset: 224)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, elements: !260)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1186, file: !1187, line: 1315, baseType: !86, size: 32, offset: 19968)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1186, file: !1187, line: 1316, baseType: !86, size: 32, offset: 20000)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1186, file: !1187, line: 1321, baseType: !329, size: 64, offset: 20032)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1186, file: !1187, line: 1325, baseType: !91, size: 32, offset: 20096)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1186, file: !1187, line: 1326, baseType: !91, size: 32, offset: 20128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1186, file: !1187, line: 1327, baseType: !91, size: 32, offset: 20160)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1186, file: !1187, line: 1328, baseType: !91, size: 32, offset: 20192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1186, file: !1187, line: 1329, baseType: !106, size: 128, align: 64, offset: 20224)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1186, file: !1187, line: 1332, baseType: !2191, size: 128, offset: 20352)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2192, line: 51, size: 128, elements: !2193)
!2192 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2193 = !{!2194, !2199, !2200}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2191, file: !2192, line: 60, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2196, line: 7, size: 64, elements: !2197)
!2196 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2197 = !{!2198}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2195, file: !2196, line: 12, baseType: !1421, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2191, file: !2192, line: 63, baseType: !394, size: 8, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2191, file: !2192, line: 70, baseType: !394, size: 8, offset: 72)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1186, file: !1187, line: 1335, baseType: !2202, size: 64, offset: 20480)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1187, line: 59, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1186, file: !1187, line: 1337, baseType: !2205, size: 128, offset: 20544)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2192, line: 39, size: 128, elements: !2206)
!2206 = !{!2207, !2521, !2522}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2205, file: !2192, line: 40, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !957, line: 74, size: 512, align: 128, elements: !2210)
!2210 = !{!2211, !2212, !2515, !2520}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2209, file: !957, line: 75, baseType: !329, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !957, line: 83, baseType: !2213, size: 320, offset: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2209, file: !957, line: 83, size: 320, elements: !2214)
!2214 = !{!2215, !2489, !2503, !2507, !2514}
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !957, line: 84, baseType: !2216, size: 320)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !957, line: 84, size: 320, elements: !2217)
!2217 = !{!2218, !2229, !2483, !2488}
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !957, line: 90, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !957, line: 90, size: 128, elements: !2220)
!2220 = !{!2221, !2222, !2227, !2228}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2219, file: !957, line: 91, baseType: !182, size: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !957, line: 94, baseType: !2223, size: 128)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !957, line: 94, size: 128, elements: !2224)
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2223, file: !957, line: 96, baseType: !80, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2223, file: !957, line: 98, baseType: !7, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2219, file: !957, line: 102, baseType: !182, size: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2219, file: !957, line: 103, baseType: !182, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2216, file: !957, line: 106, baseType: !2230, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2475, !2476, !2477, !2480, !2481, !2482}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2231, file: !15, line: 473, baseType: !558, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2231, file: !15, line: 474, baseType: !762, size: 128, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2231, file: !15, line: 475, baseType: !334, size: 320, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2231, file: !15, line: 476, baseType: !767, size: 32, offset: 512)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2231, file: !15, line: 477, baseType: !137, size: 32, offset: 544)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2231, file: !15, line: 482, baseType: !1356, size: 128, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2231, file: !15, line: 483, baseType: !329, size: 64, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2231, file: !15, line: 484, baseType: !329, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2231, file: !15, line: 485, baseType: !2242, size: 64, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2244)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2245)
!2245 = !{!2246, !2250, !2320, !2324, !2328, !2334, !2340, !2344, !2349, !2353, !2357, !2361, !2439, !2443, !2447, !2451, !2456, !2460, !2467, !2471}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2244, file: !15, line: 405, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!91, !2208, !843}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2244, file: !15, line: 406, baseType: !2251, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!91, !93, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !957, line: 293, size: 1536, elements: !2256)
!2256 = !{!2257, !2287, !2301}
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !957, line: 295, baseType: !2258, size: 512)
!2258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !957, line: 295, size: 512, elements: !2259)
!2259 = !{!2260, !2286}
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !957, line: 296, baseType: !2261, size: 448)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !957, line: 296, size: 448, elements: !2262)
!2262 = !{!2263, !2264, !2273, !2274, !2275, !2284, !2285}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2261, file: !957, line: 298, baseType: !329, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !957, line: 299, baseType: !2265, size: 128, offset: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !957, line: 299, size: 128, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2265, file: !957, line: 300, baseType: !182, size: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !957, line: 302, baseType: !2269, size: 128)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !957, line: 302, size: 128, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2269, file: !957, line: 303, baseType: !80, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2269, file: !957, line: 305, baseType: !7, size: 32, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2261, file: !957, line: 310, baseType: !2230, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2261, file: !957, line: 311, baseType: !329, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !957, line: 312, baseType: !2276, size: 64, offset: 320)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !957, line: 312, size: 64, elements: !2277)
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2276, file: !957, line: 313, baseType: !80, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2276, file: !957, line: 314, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !957, line: 257, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !957, line: 255, size: 64, elements: !2282)
!2282 = !{!2283}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2281, file: !957, line: 256, baseType: !329, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2261, file: !957, line: 316, baseType: !137, size: 32, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2261, file: !957, line: 317, baseType: !137, size: 32, offset: 416)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2258, file: !957, line: 323, baseType: !2209, size: 512, align: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !957, line: 325, baseType: !2288, size: 512, offset: 512)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !957, line: 325, size: 512, elements: !2289)
!2289 = !{!2290, !2300}
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !957, line: 326, baseType: !2291, size: 320)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2288, file: !957, line: 326, size: 320, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2291, file: !957, line: 327, baseType: !329, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2291, file: !957, line: 328, baseType: !329, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2291, file: !957, line: 329, baseType: !329, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2291, file: !957, line: 331, baseType: !137, size: 32, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2291, file: !957, line: 332, baseType: !137, size: 32, offset: 224)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2291, file: !957, line: 333, baseType: !137, size: 32, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2291, file: !957, line: 335, baseType: !7, size: 32, offset: 288)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2288, file: !957, line: 339, baseType: !2209, size: 512, align: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !957, line: 341, baseType: !2302, size: 512, offset: 1024)
!2302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !957, line: 341, size: 512, elements: !2303)
!2303 = !{!2304, !2313, !2319}
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2302, file: !957, line: 342, baseType: !2305, size: 384)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2302, file: !957, line: 342, size: 384, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2305, file: !957, line: 343, baseType: !329, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2305, file: !957, line: 344, baseType: !329, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2305, file: !957, line: 346, baseType: !80, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2305, file: !957, line: 347, baseType: !80, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2305, file: !957, line: 348, baseType: !80, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2305, file: !957, line: 349, baseType: !80, size: 64, offset: 320)
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2302, file: !957, line: 352, baseType: !2314, size: 256)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2302, file: !957, line: 352, size: 256, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2314, file: !957, line: 353, baseType: !329, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2314, file: !957, line: 354, baseType: !329, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2314, file: !957, line: 356, baseType: !182, size: 128, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2302, file: !957, line: 359, baseType: !2209, size: 512, align: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2244, file: !15, line: 409, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!91, !2230, !843}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2244, file: !15, line: 412, baseType: !2325, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!394, !2230, !2254}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2244, file: !15, line: 414, baseType: !2329, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2244, file: !15, line: 416, baseType: !2335, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!91, !93, !2230, !188, !7, !2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2244, file: !15, line: 419, baseType: !2341, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!91, !93, !2230, !188, !7, !7, !2208, !80}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2244, file: !15, line: 424, baseType: !2345, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!2348, !2230, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !107, line: 131, baseType: !301)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2244, file: !15, line: 425, baseType: !2350, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2254, !715, !715}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2244, file: !15, line: 426, baseType: !2354, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!394, !2254, !767}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2244, file: !15, line: 427, baseType: !2358, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2254}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2244, file: !15, line: 428, baseType: !2362, size: 64, offset: 704)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!712, !2365, !2387}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2374, !2375, !2376, !2377}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2366, file: !15, line: 374, baseType: !93, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2366, file: !15, line: 375, baseType: !188, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2366, file: !15, line: 376, baseType: !2371, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !2365, !673}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2366, file: !15, line: 377, baseType: !80, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2366, file: !15, line: 378, baseType: !91, size: 32, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2366, file: !15, line: 379, baseType: !153, size: 16, offset: 288)
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !15, line: 380, baseType: !2378, size: 64, offset: 320)
!2378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2366, file: !15, line: 380, size: 64, elements: !2379)
!2379 = !{!2380, !2383}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2378, file: !15, line: 386, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2378, file: !15, line: 395, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!712, !80}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2389, line: 41, size: 320, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2396, !2401, !2434}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2388, file: !2389, line: 42, baseType: !145, size: 8)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2388, file: !2389, line: 43, baseType: !394, size: 8, offset: 8)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2388, file: !2389, line: 44, baseType: !394, size: 8, offset: 16)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2388, file: !2389, line: 45, baseType: !394, size: 8, offset: 24)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2388, file: !2389, line: 46, baseType: !394, size: 8, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !2389, line: 47, baseType: !2397, size: 64, offset: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !2389, line: 47, size: 64, elements: !2398)
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2397, file: !2389, line: 48, baseType: !715, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2397, file: !2389, line: 49, baseType: !91, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !2389, line: 61, baseType: !2402, size: 128, offset: 128)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !2389, line: 61, size: 128, elements: !2403)
!2403 = !{!2404, !2410}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2402, file: !2389, line: 67, baseType: !2405, size: 128)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2406, line: 17, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2405, file: !2406, line: 19, baseType: !80, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2405, file: !2406, line: 20, baseType: !716, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !2389, line: 68, baseType: !2411, size: 128)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !2389, line: 68, size: 128, elements: !2412)
!2412 = !{!2413, !2433}
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !2389, line: 69, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2411, file: !2389, line: 69, size: 64, elements: !2415)
!2415 = !{!2416, !2419, !2426, !2430, !2432}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2414, file: !2389, line: 71, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2414, file: !2389, line: 72, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2389, line: 17, size: 128, elements: !2423)
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2422, file: !2389, line: 18, baseType: !80, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2422, file: !2389, line: 19, baseType: !715, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2414, file: !2389, line: 73, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2429)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2389, line: 73, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2414, file: !2389, line: 74, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2414, file: !2389, line: 75, baseType: !80, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2411, file: !2389, line: 77, baseType: !715, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !2389, line: 80, baseType: !2435, size: 64, offset: 256)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !2389, line: 80, size: 64, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2435, file: !2389, line: 81, baseType: !329, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2435, file: !2389, line: 82, baseType: !188, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2244, file: !15, line: 433, baseType: !2440, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!91, !2230, !2254, !2254, !36}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2244, file: !15, line: 435, baseType: !2444, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!91, !2254}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2244, file: !15, line: 436, baseType: !2448, size: 64, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!394, !2254, !715, !715}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2244, file: !15, line: 438, baseType: !2452, size: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2254, !2455, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2244, file: !15, line: 439, baseType: !2457, size: 64, offset: 1024)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!91, !2230, !2208}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2244, file: !15, line: 442, baseType: !2461, size: 64, offset: 1088)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!91, !2464, !93, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2244, file: !15, line: 444, baseType: !2468, size: 64, offset: 1152)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !93}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2244, file: !15, line: 445, baseType: !2472, size: 64, offset: 1216)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!91, !2365, !2387}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !15, line: 486, baseType: !329, size: 64, offset: 896)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2231, file: !15, line: 487, baseType: !334, size: 320, offset: 960)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2231, file: !15, line: 488, baseType: !2478, size: 32, offset: 1280)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2479, line: 8, baseType: !86)
!2479 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2231, file: !15, line: 489, baseType: !117, size: 32, offset: 1312)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2231, file: !15, line: 490, baseType: !182, size: 128, offset: 1344)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2231, file: !15, line: 491, baseType: !80, size: 64, offset: 1472)
!2483 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !957, line: 107, baseType: !2484, size: 64, offset: 192)
!2484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !957, line: 107, size: 64, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2484, file: !957, line: 108, baseType: !329, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2484, file: !957, line: 109, baseType: !329, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2216, file: !957, line: 117, baseType: !329, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !957, line: 119, baseType: !2490, size: 320)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !957, line: 119, size: 320, elements: !2491)
!2491 = !{!2492, !2493, !2496, !2497, !2498}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2490, file: !957, line: 124, baseType: !329, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2490, file: !957, line: 125, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !957, line: 125, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2490, file: !957, line: 126, baseType: !329, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2490, file: !957, line: 127, baseType: !329, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2490, file: !957, line: 128, baseType: !2499, size: 64, offset: 256)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2490, file: !957, line: 128, size: 64, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2499, file: !957, line: 133, baseType: !329, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2499, file: !957, line: 138, baseType: !160, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !957, line: 141, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !957, line: 141, size: 64, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2504, file: !957, line: 142, baseType: !329, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !957, line: 144, baseType: !2508, size: 128)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !957, line: 144, size: 128, elements: !2509)
!2509 = !{!2510, !2513}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2508, file: !957, line: 146, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !957, line: 146, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2508, file: !957, line: 147, baseType: !80, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2213, file: !957, line: 161, baseType: !106, size: 128, align: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !957, line: 164, baseType: !2516, size: 32, offset: 384)
!2516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2209, file: !957, line: 164, size: 32, elements: !2517)
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2516, file: !957, line: 169, baseType: !137, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2516, file: !957, line: 177, baseType: !7, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2209, file: !957, line: 181, baseType: !137, size: 32, offset: 416)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2205, file: !2192, line: 42, baseType: !88, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2205, file: !2192, line: 43, baseType: !88, size: 32, offset: 96)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1186, file: !1187, line: 1340, baseType: !2524, size: 64, offset: 20672)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1187, line: 69, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1186, file: !1187, line: 1351, baseType: !91, size: 32, offset: 20736)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1186, file: !1187, line: 1352, baseType: !91, size: 32, offset: 20768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1186, file: !1187, line: 1354, baseType: !329, size: 64, offset: 20800)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1186, file: !1187, line: 1364, baseType: !301, size: 64, offset: 20864)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1186, file: !1187, line: 1365, baseType: !301, size: 64, offset: 20928)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1186, file: !1187, line: 1412, baseType: !329, size: 64, offset: 20992)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1186, file: !1187, line: 1453, baseType: !2533, size: 64, offset: 21056)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1187, line: 1453, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1186, file: !1187, line: 1457, baseType: !2536, size: 64, offset: 21120)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2538)
!2538 = !{!2539, !2540, !2559, !2562, !2563, !2596, !2606}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2537, file: !44, line: 62, baseType: !43, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !44, line: 64, baseType: !2541, size: 192, offset: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2537, file: !44, line: 64, size: 192, elements: !2542)
!2542 = !{!2543, !2554}
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !44, line: 65, baseType: !2544, size: 192)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2541, file: !44, line: 65, size: 192, elements: !2545)
!2545 = !{!2546, !2553}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2544, file: !44, line: 66, baseType: !2547, size: 128)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2548, line: 50, size: 128, elements: !2549)
!2548 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2547, file: !2548, line: 52, baseType: !329, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2547, file: !2548, line: 54, baseType: !7, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2547, file: !2548, line: 55, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2544, file: !44, line: 67, baseType: !329, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !44, line: 70, baseType: !2555, size: 192)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2541, file: !44, line: 70, size: 192, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2555, file: !44, line: 71, baseType: !106, size: 128, align: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2555, file: !44, line: 72, baseType: !329, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2537, file: !44, line: 76, baseType: !2560, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2537, file: !44, line: 77, baseType: !329, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2537, file: !44, line: 79, baseType: !2564, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2548, line: 25, size: 256, elements: !2566)
!2566 = !{!2567, !2573, !2577}
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2565, file: !2548, line: 26, baseType: !2568, size: 128)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2565, file: !2548, line: 26, size: 128, elements: !2569)
!2569 = !{!2570, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2568, file: !2548, line: 27, baseType: !2571, size: 128)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !1767)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2568, file: !2548, line: 28, baseType: !2571, size: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2565, file: !2548, line: 31, baseType: !2574, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2576)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2548, line: 23, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2565, file: !2548, line: 33, baseType: !2578, size: 64, offset: 192)
!2578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2565, file: !2548, line: 33, size: 64, elements: !2579)
!2579 = !{!2580, !2586, !2591}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2578, file: !2548, line: 38, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2578, file: !2548, line: 34, size: 64, elements: !2582)
!2582 = !{!2583, !2584, !2585}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2581, file: !2548, line: 35, baseType: !318, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2581, file: !2548, line: 36, baseType: !145, size: 8, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2581, file: !2548, line: 37, baseType: !145, size: 8, offset: 40)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2578, file: !2548, line: 42, baseType: !2587, size: 16)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2578, file: !2548, line: 39, size: 16, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2587, file: !2548, line: 40, baseType: !145, size: 8)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2587, file: !2548, line: 41, baseType: !145, size: 8, offset: 8)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2578, file: !2548, line: 46, baseType: !2592, size: 16)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2578, file: !2548, line: 43, size: 16, elements: !2593)
!2593 = !{!2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2592, file: !2548, line: 44, baseType: !145, size: 8)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2592, file: !2548, line: 45, baseType: !145, size: 8, offset: 8)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2537, file: !44, line: 81, baseType: !2597, size: 64, offset: 448)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2605}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2598, file: !44, line: 86, baseType: !2560, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2598, file: !44, line: 87, baseType: !329, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2598, file: !44, line: 88, baseType: !329, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2598, file: !44, line: 89, baseType: !329, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2598, file: !44, line: 90, baseType: !394, size: 8, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2598, file: !44, line: 92, baseType: !2597, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2537, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1186, file: !1187, line: 1463, baseType: !2608, offset: 21184)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1187, line: 739, elements: !812)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1186, file: !1187, line: 1470, baseType: !106, size: 128, align: 64, offset: 21184)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1186, file: !1187, line: 1471, baseType: !223, size: 32, offset: 21312)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1186, file: !1187, line: 1472, baseType: !91, size: 32, offset: 21344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1186, file: !1187, line: 1474, baseType: !1185, size: 64, offset: 21376)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1186, file: !1187, line: 1475, baseType: !2614, size: 320, offset: 21440)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2615, line: 11, size: 320, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2616 = !{!2617, !2618, !2619, !2624}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2614, file: !2615, line: 16, baseType: !236, size: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2614, file: !2615, line: 17, baseType: !329, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2614, file: !2615, line: 18, baseType: !2620, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2614, file: !2615, line: 19, baseType: !86, size: 32, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1186, file: !1187, line: 1478, baseType: !2626, size: 64, offset: 21760)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1187, line: 1478, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1186, file: !1187, line: 1482, baseType: !223, size: 32, offset: 21824)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1186, file: !1187, line: 1489, baseType: !80, size: 64, offset: 21888)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1186, file: !1187, line: 1504, baseType: !80, size: 64, offset: 21952)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1186, file: !1187, line: 1505, baseType: !302, size: 64, offset: 22016)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1186, file: !1187, line: 1506, baseType: !301, size: 64, offset: 22080)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1186, file: !1187, line: 1507, baseType: !302, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1186, file: !1187, line: 1508, baseType: !302, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1186, file: !1187, line: 1509, baseType: !302, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1186, file: !1187, line: 1510, baseType: !106, size: 128, align: 64, offset: 22208)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1186, file: !1187, line: 1511, baseType: !91, size: 32, offset: 22336)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1186, file: !1187, line: 1515, baseType: !2639, size: 64, offset: 22400)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !101, line: 56, size: 64, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2639, file: !101, line: 57, baseType: !104, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1186, file: !1187, line: 1518, baseType: !2639, size: 64, offset: 22464)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1186, file: !1187, line: 1528, baseType: !106, size: 128, align: 64, offset: 22528)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1186, file: !1187, line: 1552, baseType: !2645, size: 35328, offset: 23040)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2646, line: 430, size: 35328, elements: !2647)
!2646 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2647 = !{!2648, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2677, !2678, !2679, !2680, !2681, !2682, !2685, !2686, !2687, !2688}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2645, file: !2646, line: 432, baseType: !2649, size: 192)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 192, elements: !215)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2651, line: 16, size: 64, elements: !2652)
!2651 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2650, file: !2651, line: 17, baseType: !153, size: 16)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2650, file: !2651, line: 18, baseType: !153, size: 16, offset: 16)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2650, file: !2651, line: 19, baseType: !153, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2650, file: !2651, line: 19, baseType: !153, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2650, file: !2651, line: 19, baseType: !153, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2650, file: !2651, line: 19, baseType: !153, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2650, file: !2651, line: 19, baseType: !153, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2650, file: !2651, line: 20, baseType: !153, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2650, file: !2651, line: 20, baseType: !153, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2650, file: !2651, line: 20, baseType: !153, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2650, file: !2651, line: 20, baseType: !153, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2650, file: !2651, line: 20, baseType: !153, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2650, file: !2651, line: 20, baseType: !153, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2645, file: !2646, line: 436, baseType: !329, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2645, file: !2646, line: 440, baseType: !155, size: 16, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2645, file: !2646, line: 441, baseType: !155, size: 16, offset: 272)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2645, file: !2646, line: 442, baseType: !155, size: 16, offset: 288)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2645, file: !2646, line: 443, baseType: !155, size: 16, offset: 304)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2645, file: !2646, line: 447, baseType: !329, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2645, file: !2646, line: 448, baseType: !329, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2645, file: !2646, line: 459, baseType: !2674, size: 256, offset: 448)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2675, size: 256, elements: !241)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2646, line: 428, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2645, file: !2646, line: 461, baseType: !329, size: 64, offset: 704)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2645, file: !2646, line: 463, baseType: !329, size: 64, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2645, file: !2646, line: 465, baseType: !329, size: 64, offset: 832)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2645, file: !2646, line: 466, baseType: !329, size: 64, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2645, file: !2646, line: 467, baseType: !329, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2645, file: !2646, line: 473, baseType: !2683, size: 64, offset: 1024)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2646, line: 10, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2645, file: !2646, line: 480, baseType: !329, size: 64, offset: 1088)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2645, file: !2646, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2645, file: !2646, line: 491, baseType: !86, size: 32, offset: 1184)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2645, file: !2646, line: 501, baseType: !2689, size: 33792, offset: 1536)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2690, line: 448, size: 33792, elements: !2691)
!2690 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2691 = !{!2692, !2693, !2694, !2858, !2859, !2865, !2866}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2689, file: !2690, line: 461, baseType: !7, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2689, file: !2690, line: 468, baseType: !329, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2689, file: !2690, line: 476, baseType: !2695, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2690, line: 356, size: 33280, align: 512, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2696, file: !2690, line: 358, baseType: !7, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2696, file: !2690, line: 361, baseType: !7, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2696, file: !2690, line: 364, baseType: !301, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2696, file: !2690, line: 367, baseType: !301, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2696, file: !2690, line: 370, baseType: !301, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2696, file: !2690, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2696, file: !2690, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2696, file: !2690, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2696, file: !2690, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2696, file: !2690, line: 397, baseType: !2708, size: 32768, offset: 512)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2690, line: 348, size: 32768, elements: !2709)
!2709 = !{!2710, !2725, !2764, !2841, !2854}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2708, file: !2690, line: 349, baseType: !2711, size: 896)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2690, line: 12, size: 896, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2724}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2711, file: !2690, line: 13, baseType: !86, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2711, file: !2690, line: 14, baseType: !86, size: 32, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2711, file: !2690, line: 15, baseType: !86, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2711, file: !2690, line: 16, baseType: !86, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2711, file: !2690, line: 17, baseType: !86, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2711, file: !2690, line: 18, baseType: !86, size: 32, offset: 160)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2711, file: !2690, line: 19, baseType: !86, size: 32, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2711, file: !2690, line: 22, baseType: !2721, size: 640, offset: 224)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 640, elements: !2722)
!2722 = !{!2723}
!2723 = !DISubrange(count: 20)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2711, file: !2690, line: 25, baseType: !86, size: 32, offset: 864)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2708, file: !2690, line: 350, baseType: !2726, size: 4096, align: 128)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2690, line: 34, size: 4096, align: 128, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2747, !2748, !2749, !2753, !2755, !2759}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2726, file: !2690, line: 35, baseType: !153, size: 16)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2726, file: !2690, line: 36, baseType: !153, size: 16, offset: 16)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2726, file: !2690, line: 37, baseType: !153, size: 16, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2726, file: !2690, line: 38, baseType: !153, size: 16, offset: 48)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2726, file: !2690, line: 39, baseType: !2733, size: 128, offset: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2726, file: !2690, line: 39, size: 128, elements: !2734)
!2734 = !{!2735, !2740}
!2735 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !2690, line: 40, baseType: !2736, size: 128)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2733, file: !2690, line: 40, size: 128, elements: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2736, file: !2690, line: 41, baseType: !301, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2736, file: !2690, line: 42, baseType: !301, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !2690, line: 44, baseType: !2741, size: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2733, file: !2690, line: 44, size: 128, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2741, file: !2690, line: 45, baseType: !86, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2741, file: !2690, line: 46, baseType: !86, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2741, file: !2690, line: 47, baseType: !86, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2741, file: !2690, line: 48, baseType: !86, size: 32, offset: 96)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2726, file: !2690, line: 51, baseType: !86, size: 32, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2726, file: !2690, line: 52, baseType: !86, size: 32, offset: 224)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2726, file: !2690, line: 55, baseType: !2750, size: 1024, offset: 256)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 1024, elements: !2751)
!2751 = !{!2752}
!2752 = !DISubrange(count: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2726, file: !2690, line: 58, baseType: !2754, size: 2048, offset: 1280)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 2048, elements: !1965)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2726, file: !2690, line: 60, baseType: !2756, size: 384, offset: 3328)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 384, elements: !2757)
!2757 = !{!2758}
!2758 = !DISubrange(count: 12)
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2726, file: !2690, line: 62, baseType: !2760, size: 384, offset: 3712)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2726, file: !2690, line: 62, size: 384, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2760, file: !2690, line: 63, baseType: !2756, size: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2760, file: !2690, line: 64, baseType: !2756, size: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2708, file: !2690, line: 351, baseType: !2765, size: 1088)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2690, line: 79, size: 1088, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2840}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2765, file: !2690, line: 80, baseType: !86, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2765, file: !2690, line: 81, baseType: !86, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2765, file: !2690, line: 82, baseType: !86, size: 32, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2765, file: !2690, line: 83, baseType: !86, size: 32, offset: 96)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2765, file: !2690, line: 84, baseType: !86, size: 32, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2765, file: !2690, line: 85, baseType: !86, size: 32, offset: 160)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2765, file: !2690, line: 86, baseType: !86, size: 32, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2765, file: !2690, line: 88, baseType: !2721, size: 640, offset: 224)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2765, file: !2690, line: 89, baseType: !145, size: 8, offset: 864)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2765, file: !2690, line: 90, baseType: !145, size: 8, offset: 872)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2765, file: !2690, line: 91, baseType: !145, size: 8, offset: 880)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2765, file: !2690, line: 92, baseType: !145, size: 8, offset: 888)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2765, file: !2690, line: 93, baseType: !145, size: 8, offset: 896)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2765, file: !2690, line: 94, baseType: !145, size: 8, offset: 904)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2765, file: !2690, line: 95, baseType: !2782, size: 64, offset: 960)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2784, line: 11, size: 128, elements: !2785)
!2784 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2783, file: !2784, line: 12, baseType: !673, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2783, file: !2784, line: 13, baseType: !2788, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2790, line: 103, size: 1344, elements: !2791)
!2790 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2820, !2821, !2822}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2789, file: !2790, line: 109, baseType: !329, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2789, file: !2790, line: 110, baseType: !329, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2789, file: !2790, line: 111, baseType: !329, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2789, file: !2790, line: 112, baseType: !329, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2789, file: !2790, line: 113, baseType: !329, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2789, file: !2790, line: 114, baseType: !329, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2789, file: !2790, line: 117, baseType: !329, size: 64, offset: 384)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2789, file: !2790, line: 118, baseType: !329, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2789, file: !2790, line: 119, baseType: !329, size: 64, offset: 512)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2789, file: !2790, line: 120, baseType: !329, size: 64, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2789, file: !2790, line: 121, baseType: !329, size: 64, offset: 640)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2789, file: !2790, line: 122, baseType: !329, size: 64, offset: 704)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2789, file: !2790, line: 123, baseType: !329, size: 64, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2789, file: !2790, line: 124, baseType: !329, size: 64, offset: 832)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2789, file: !2790, line: 125, baseType: !329, size: 64, offset: 896)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2789, file: !2790, line: 139, baseType: !329, size: 64, offset: 960)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2789, file: !2790, line: 142, baseType: !329, size: 64, offset: 1024)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2789, file: !2790, line: 144, baseType: !2810, size: 64, offset: 1088)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2789, file: !2790, line: 144, size: 64, elements: !2811)
!2811 = !{!2812, !2813, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2810, file: !2790, line: 146, baseType: !153, size: 16)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2810, file: !2790, line: 148, baseType: !301, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2810, file: !2790, line: 150, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2790, line: 59, size: 64, elements: !2816)
!2816 = !{!2817, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2815, file: !2790, line: 61, baseType: !301, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2815, file: !2790, line: 63, baseType: !301, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2815, file: !2790, line: 65, baseType: !301, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !2790, line: 153, baseType: !329, size: 64, offset: 1152)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2789, file: !2790, line: 154, baseType: !329, size: 64, offset: 1216)
!2822 = !DIDerivedType(tag: DW_TAG_member, scope: !2789, file: !2790, line: 156, baseType: !2823, size: 64, offset: 1280)
!2823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2789, file: !2790, line: 156, size: 64, elements: !2824)
!2824 = !{!2825, !2826, !2827}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2823, file: !2790, line: 158, baseType: !153, size: 16)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2823, file: !2790, line: 160, baseType: !301, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2823, file: !2790, line: 162, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2790, line: 69, size: 64, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2828, file: !2790, line: 71, baseType: !301, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2828, file: !2790, line: 73, baseType: !301, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2828, file: !2790, line: 75, baseType: !301, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2828, file: !2790, line: 77, baseType: !301, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2828, file: !2790, line: 80, baseType: !301, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2828, file: !2790, line: 83, baseType: !301, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2828, file: !2790, line: 86, baseType: !301, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2828, file: !2790, line: 88, baseType: !301, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2828, file: !2790, line: 93, baseType: !301, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2828, file: !2790, line: 100, baseType: !301, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2765, file: !2690, line: 96, baseType: !86, size: 32, offset: 1024)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2708, file: !2690, line: 352, baseType: !2842, size: 4608, align: 512)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2690, line: 333, size: 4608, align: 512, elements: !2843)
!2843 = !{!2844, !2845, !2852}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2842, file: !2690, line: 334, baseType: !2726, size: 4096, align: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2842, file: !2690, line: 335, baseType: !2846, size: 512, offset: 4096)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2690, line: 312, size: 512, elements: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2846, file: !2690, line: 313, baseType: !301, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2846, file: !2690, line: 314, baseType: !301, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2846, file: !2690, line: 315, baseType: !2851, size: 384, offset: 128)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 384, elements: !381)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2842, file: !2690, line: 336, baseType: !2853, offset: 4608)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, elements: !260)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2708, file: !2690, line: 353, baseType: !2855, size: 32768)
!2855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32768, elements: !2856)
!2856 = !{!2857}
!2857 = !DISubrange(count: 4096)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2689, file: !2690, line: 484, baseType: !2695, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2689, file: !2690, line: 491, baseType: !2860, size: 128, offset: 256)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2690, line: 404, size: 128, elements: !2861)
!2861 = !{!2862, !2863, !2864}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2860, file: !2690, line: 424, baseType: !301, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2860, file: !2690, line: 432, baseType: !7, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2860, file: !2690, line: 440, baseType: !7, size: 32, offset: 96)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2689, file: !2690, line: 498, baseType: !2860, size: 128, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2689, file: !2690, line: 508, baseType: !2696, size: 33280, align: 512, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1167, file: !1168, line: 16, baseType: !245, size: 192, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1167, file: !1168, line: 17, baseType: !137, size: 32, offset: 704)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !772, file: !15, line: 1240, baseType: !80, size: 64, offset: 6912)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !772, file: !15, line: 1243, baseType: !86, size: 32, offset: 6976)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !772, file: !15, line: 1245, baseType: !350, size: 64, offset: 7040)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !772, file: !15, line: 1246, baseType: !350, size: 64, offset: 7104)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !772, file: !15, line: 1248, baseType: !88, size: 32, offset: 7168)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !772, file: !15, line: 1249, baseType: !2875, size: 64, offset: 7232)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !772, file: !15, line: 1252, baseType: !2878, size: 256, offset: 7296)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !2751)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !772, file: !15, line: 1253, baseType: !2880, size: 128, offset: 7552)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2881, line: 21, baseType: !2882)
!2881 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2881, line: 19, size: 128, elements: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2882, file: !2881, line: 20, baseType: !2885, size: 128)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !1767)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !772, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !772, file: !15, line: 1261, baseType: !170, size: 256, offset: 7744)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !772, file: !15, line: 1267, baseType: !397, size: 64, offset: 8000)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !772, file: !15, line: 1269, baseType: !2890, size: 64, offset: 8064)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !520, line: 128, size: 1024, align: 512, elements: !2893)
!2893 = !{!2894, !2898, !2899, !2906, !2912, !2916, !2920, !2924, !2925, !2929, !2933, !2938, !2942}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2892, file: !520, line: 129, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!91, !518, !7}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2892, file: !520, line: 130, baseType: !2895, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2892, file: !520, line: 131, baseType: !2900, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!91, !2903, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2892, file: !520, line: 132, baseType: !2907, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!91, !2903, !7, !397, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2892, file: !520, line: 134, baseType: !2913, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!91, !2903}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2892, file: !520, line: 135, baseType: !2917, size: 64, offset: 320)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!91, !518}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2892, file: !520, line: 136, baseType: !2921, size: 64, offset: 384)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !518}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2892, file: !520, line: 137, baseType: !2921, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2892, file: !520, line: 138, baseType: !2926, size: 64, offset: 512)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !518, !558}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2892, file: !520, line: 139, baseType: !2930, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!407, !518, !407, !91}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2892, file: !520, line: 140, baseType: !2934, size: 64, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!513, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2892, file: !520, line: 141, baseType: !2939, size: 64, offset: 704)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!91, !681, !394}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2892, file: !520, line: 142, baseType: !2943, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!518, !518, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !772, file: !15, line: 1271, baseType: !2949, size: 448, offset: 8128)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !948, line: 63, size: 448, elements: !2950)
!2950 = !{!2951, !2956, !2957, !2958, !2959, !2960, !2961}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2949, file: !948, line: 64, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!329, !2955, !946}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2949, file: !948, line: 66, baseType: !2952, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2949, file: !948, line: 69, baseType: !673, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2949, file: !948, line: 70, baseType: !91, size: 32, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2949, file: !948, line: 71, baseType: !7, size: 32, offset: 224)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2949, file: !948, line: 74, baseType: !182, size: 128, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2949, file: !948, line: 85, baseType: !2962, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !772, file: !15, line: 1274, baseType: !160, size: 64, offset: 8576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !772, file: !15, line: 1280, baseType: !160, size: 64, offset: 8640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !772, file: !15, line: 1283, baseType: !91, size: 32, offset: 8704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !772, file: !15, line: 1286, baseType: !2478, size: 32, offset: 8736)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !772, file: !15, line: 1289, baseType: !2968, size: 64, offset: 8768)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1605, line: 18, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !772, file: !15, line: 1290, baseType: !232, size: 64, offset: 8832)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !772, file: !15, line: 1297, baseType: !480, size: 64, offset: 8896)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !772, file: !15, line: 1304, baseType: !2973, size: 64, offset: 8960)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2974, line: 49, size: 64, elements: !2975)
!2974 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2973, file: !2974, line: 50, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2974, line: 41, size: 512, align: 512, elements: !2979)
!2979 = !{!2980, !2981, !2986}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2978, file: !2974, line: 43, baseType: !117, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2978, file: !2974, line: 45, baseType: !2982, size: 192, offset: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2974, line: 29, size: 192, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2982, file: !2974, line: 30, baseType: !182, size: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2982, file: !2974, line: 32, baseType: !673, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2978, file: !2974, line: 46, baseType: !673, size: 64, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !772, file: !15, line: 1305, baseType: !2973, size: 64, offset: 9024)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !772, file: !15, line: 1306, baseType: !106, size: 128, align: 64, offset: 9088)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !772, file: !15, line: 1307, baseType: !1604, size: 256, offset: 9216)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !772, file: !15, line: 1309, baseType: !170, size: 256, offset: 9472)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !772, file: !15, line: 1314, baseType: !91, size: 32, offset: 9728)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !772, file: !15, line: 1317, baseType: !117, size: 32, align: 512, offset: 10240)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !772, file: !15, line: 1318, baseType: !182, size: 128, offset: 10304)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !772, file: !15, line: 1320, baseType: !117, size: 32, offset: 10432)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !772, file: !15, line: 1321, baseType: !182, size: 128, offset: 10496)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !559, file: !15, line: 656, baseType: !2230, size: 64, offset: 512)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !559, file: !15, line: 659, baseType: !80, size: 64, offset: 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !559, file: !15, line: 663, baseType: !329, size: 64, offset: 640)
!2999 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !15, line: 671, baseType: !3000, size: 32, offset: 704)
!3000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !15, line: 671, size: 32, elements: !3001)
!3001 = !{!3002, !3004}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3000, file: !15, line: 672, baseType: !3003, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3000, file: !15, line: 673, baseType: !7, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !559, file: !15, line: 675, baseType: !633, size: 32, offset: 736)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !559, file: !15, line: 676, baseType: !188, size: 64, offset: 768)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !559, file: !15, line: 677, baseType: !669, size: 128, offset: 832)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !559, file: !15, line: 678, baseType: !669, size: 128, offset: 960)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !559, file: !15, line: 679, baseType: !669, size: 128, offset: 1088)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !559, file: !15, line: 680, baseType: !117, size: 32, offset: 1216)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !559, file: !15, line: 681, baseType: !155, size: 16, offset: 1248)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !559, file: !15, line: 682, baseType: !145, size: 8, offset: 1264)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !559, file: !15, line: 683, baseType: !145, size: 8, offset: 1272)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !559, file: !15, line: 684, baseType: !1080, size: 64, offset: 1280)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !559, file: !15, line: 691, baseType: !329, size: 64, offset: 1344)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !559, file: !15, line: 692, baseType: !334, size: 320, offset: 1408)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !559, file: !15, line: 694, baseType: !329, size: 64, offset: 1728)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !559, file: !15, line: 695, baseType: !329, size: 64, offset: 1792)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !559, file: !15, line: 697, baseType: !236, size: 128, offset: 1856)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !559, file: !15, line: 698, baseType: !182, size: 128, offset: 1984)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !559, file: !15, line: 707, baseType: !182, size: 128, offset: 2112)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !559, file: !15, line: 708, baseType: !182, size: 128, offset: 2240)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !15, line: 709, baseType: !3024, size: 128, offset: 2368)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !15, line: 709, size: 128, elements: !3025)
!3025 = !{!3026, !3027}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3024, file: !15, line: 710, baseType: !232, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3024, file: !15, line: 711, baseType: !106, size: 128, align: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !559, file: !15, line: 713, baseType: !162, size: 64, offset: 2496)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !559, file: !15, line: 714, baseType: !162, size: 64, offset: 2560)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !559, file: !15, line: 715, baseType: !137, size: 32, offset: 2624)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !559, file: !15, line: 716, baseType: !137, size: 32, offset: 2656)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !559, file: !15, line: 717, baseType: !137, size: 32, offset: 2688)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !559, file: !15, line: 719, baseType: !137, size: 32, offset: 2720)
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !15, line: 721, baseType: !3035, size: 64, offset: 2752)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !15, line: 721, size: 64, elements: !3036)
!3036 = !{!3037, !3219}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3035, file: !15, line: 722, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3040)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3041)
!3041 = !{!3042, !3043, !3047, !3052, !3056, !3057, !3058, !3064, !3077, !3085, !3089, !3090, !3147, !3148, !3152, !3157, !3158, !3162, !3166, !3172, !3173, !3177, !3178, !3182, !3186, !3187, !3192, !3196, !3200, !3204, !3208, !3209, !3215}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3040, file: !15, line: 1915, baseType: !804, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3040, file: !15, line: 1916, baseType: !3044, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!188, !93, !188, !91}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3040, file: !15, line: 1917, baseType: !3048, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!712, !93, !407, !715, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3040, file: !15, line: 1918, baseType: !3053, size: 64, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!712, !93, !397, !715, !3051}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3040, file: !15, line: 1919, baseType: !2362, size: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3040, file: !15, line: 1920, baseType: !2362, size: 64, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3040, file: !15, line: 1921, baseType: !3059, size: 64, offset: 384)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!91, !2365, !3062, !7}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3040, file: !15, line: 1923, baseType: !3065, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!91, !93, !3068}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3070)
!3070 = !{!3071, !3076}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3069, file: !15, line: 1859, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3073)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!394, !3068, !397, !91, !188, !301, !7}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3069, file: !15, line: 1860, baseType: !188, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3040, file: !15, line: 1924, baseType: !3078, size: 64, offset: 512)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!3081, !93, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3082, line: 59, baseType: !7)
!3082 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3040, file: !15, line: 1925, baseType: !3086, size: 64, offset: 576)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!673, !93, !7, !329}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3040, file: !15, line: 1926, baseType: !3086, size: 64, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3040, file: !15, line: 1927, baseType: !3091, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!91, !93, !3094}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !957, line: 625, size: 1344, elements: !3096)
!3096 = !{!3097, !3106, !3107, !3113, !3120, !3121, !3126, !3127, !3132, !3133, !3136, !3140, !3141, !3142, !3143, !3144, !3145}
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !3095, file: !957, line: 628, baseType: !3098, size: 128)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3095, file: !957, line: 628, size: 128, elements: !3099)
!3099 = !{!3100, !3105}
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !3098, file: !957, line: 629, baseType: !3101, size: 128)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3098, file: !957, line: 629, size: 128, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3101, file: !957, line: 631, baseType: !329, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3101, file: !957, line: 632, baseType: !329, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3098, file: !957, line: 635, baseType: !106, size: 128, align: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3095, file: !957, line: 639, baseType: !1473, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3095, file: !957, line: 640, baseType: !3108, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1508, line: 297, baseType: !3109)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1508, line: 297, size: 64, elements: !3110)
!3110 = !{!3111}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3109, file: !1508, line: 297, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1513, line: 19, baseType: !329)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3095, file: !957, line: 646, baseType: !3114, size: 64, offset: 256)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3095, file: !957, line: 646, size: 64, elements: !3115)
!3115 = !{!3116, !3119}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3114, file: !957, line: 647, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3118)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !957, line: 542, baseType: !329)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3114, file: !957, line: 648, baseType: !3118, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3095, file: !957, line: 666, baseType: !91, size: 32, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3095, file: !957, line: 667, baseType: !3122, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !957, line: 579, size: 320, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3123, file: !957, line: 580, baseType: !334, size: 320)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3095, file: !957, line: 670, baseType: !394, size: 8, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3095, file: !957, line: 681, baseType: !3128, size: 256, offset: 512)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !957, line: 678, size: 256, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3128, file: !957, line: 679, baseType: !325, size: 192, align: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3128, file: !957, line: 680, baseType: !329, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3095, file: !957, line: 689, baseType: !182, size: 128, offset: 768)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3095, file: !957, line: 691, baseType: !3134, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !957, line: 691, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3095, file: !957, line: 694, baseType: !3137, size: 64, offset: 960)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3139)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !957, line: 694, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3095, file: !957, line: 697, baseType: !329, size: 64, offset: 1024)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3095, file: !957, line: 699, baseType: !93, size: 64, offset: 1088)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3095, file: !957, line: 700, baseType: !80, size: 64, offset: 1152)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3095, file: !957, line: 711, baseType: !160, size: 64, offset: 1216)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3095, file: !957, line: 717, baseType: !2165, size: 64, offset: 1280)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3095, file: !957, line: 722, baseType: !3146, offset: 1344)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !957, line: 570, elements: !812)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3040, file: !15, line: 1928, baseType: !329, size: 64, offset: 768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3040, file: !15, line: 1929, baseType: !3149, size: 64, offset: 832)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!91, !558, !93}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3040, file: !15, line: 1930, baseType: !3153, size: 64, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!91, !93, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !80)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3040, file: !15, line: 1931, baseType: !3149, size: 64, offset: 960)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3040, file: !15, line: 1932, baseType: !3159, size: 64, offset: 1024)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!91, !93, !188, !188, !91}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3040, file: !15, line: 1933, baseType: !3163, size: 64, offset: 1088)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!91, !91, !93, !91}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3040, file: !15, line: 1934, baseType: !3167, size: 64, offset: 1152)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!91, !93, !91, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3040, file: !15, line: 1935, baseType: !1497, size: 64, offset: 1216)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3040, file: !15, line: 1936, baseType: !3174, size: 64, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!91, !91}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3040, file: !15, line: 1937, baseType: !3167, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3040, file: !15, line: 1938, baseType: !3179, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!712, !2202, !93, !3051, !715, !7}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3040, file: !15, line: 1939, baseType: !3183, size: 64, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!712, !93, !3051, !2202, !715, !7}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3040, file: !15, line: 1940, baseType: !2468, size: 64, offset: 1536)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3040, file: !15, line: 1941, baseType: !3188, size: 64, offset: 1600)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!91, !93, !91, !3191, !2339}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3040, file: !15, line: 1942, baseType: !3193, size: 64, offset: 1664)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!673, !93, !91, !188, !188}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3040, file: !15, line: 1944, baseType: !3197, size: 64, offset: 1728)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !881, !93}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3040, file: !15, line: 1948, baseType: !3201, size: 64, offset: 1792)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!712, !93, !188, !93, !188, !715, !7}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3040, file: !15, line: 1950, baseType: !3205, size: 64, offset: 1856)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!188, !93, !188, !93, !188, !188, !7}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3040, file: !15, line: 1953, baseType: !3159, size: 64, offset: 1920)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3040, file: !15, line: 1954, baseType: !3210, size: 64, offset: 1984)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!91, !3213, !7}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3040, file: !15, line: 1955, baseType: !3216, size: 64, offset: 2048)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!91, !3213, !3062, !7}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3035, file: !15, line: 723, baseType: !831, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !559, file: !15, line: 725, baseType: !3221, size: 64, offset: 2816)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !559, file: !15, line: 726, baseType: !2231, size: 1536, align: 64, offset: 2880)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !559, file: !15, line: 727, baseType: !182, size: 128, offset: 4416)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !15, line: 728, baseType: !3226, size: 64, offset: 4544)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !15, line: 728, size: 64, elements: !3227)
!3227 = !{!3228, !3229, !3232, !3233}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3226, file: !15, line: 729, baseType: !2202, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3226, file: !15, line: 730, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3226, file: !15, line: 731, baseType: !407, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3226, file: !15, line: 732, baseType: !7, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !559, file: !15, line: 735, baseType: !88, size: 32, offset: 4608)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !559, file: !15, line: 738, baseType: !88, size: 32, offset: 4640)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !559, file: !15, line: 739, baseType: !2875, size: 64, offset: 4672)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !559, file: !15, line: 750, baseType: !80, size: 64, offset: 4736)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !519, file: !520, line: 91, baseType: !3239, size: 256, offset: 448)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !2751)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !519, file: !520, line: 94, baseType: !3241, size: 64, offset: 704)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3242, line: 25, size: 64, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !3242, line: 26, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !3242, line: 26, size: 64, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3245, file: !3242, line: 28, baseType: !302, size: 64, align: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, scope: !3245, file: !3242, line: 30, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3242, line: 30, size: 64, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3249, file: !3242, line: 31, baseType: !117, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3249, file: !3242, line: 32, baseType: !91, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !519, file: !520, line: 95, baseType: !2890, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !519, file: !520, line: 96, baseType: !771, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !519, file: !520, line: 97, baseType: !329, size: 64, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !519, file: !520, line: 98, baseType: !80, size: 64, offset: 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 100, baseType: !3258, size: 128, offset: 1024)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 100, size: 128, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3258, file: !520, line: 101, baseType: !182, size: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3258, file: !520, line: 102, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !519, file: !520, line: 104, baseType: !182, size: 128, offset: 1152)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !519, file: !520, line: 105, baseType: !182, size: 128, offset: 1280)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !519, file: !520, line: 113, baseType: !3266, size: 128, offset: 1408)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 109, size: 128, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3266, file: !520, line: 110, baseType: !236, size: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3266, file: !520, line: 111, baseType: !534, size: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3266, file: !520, line: 112, baseType: !106, size: 128, align: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !514, file: !515, line: 72, baseType: !771, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !514, file: !515, line: 73, baseType: !91, size: 32, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !514, file: !515, line: 74, baseType: !598, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !509, file: !510, line: 10, baseType: !518, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !94, file: !15, line: 1015, baseType: !558, size: 64, offset: 1344)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !94, file: !15, line: 1016, baseType: !3038, size: 64, offset: 1408)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !94, file: !15, line: 1018, baseType: !301, size: 64, offset: 1472)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !94, file: !15, line: 1020, baseType: !80, size: 64, offset: 1536)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !94, file: !15, line: 1023, baseType: !80, size: 64, offset: 1600)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !94, file: !15, line: 1027, baseType: !3281, size: 64, offset: 1664)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !94, file: !15, line: 1029, baseType: !2230, size: 64, offset: 1728)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !94, file: !15, line: 1030, baseType: !2478, size: 32, offset: 1792)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !94, file: !15, line: 1031, baseType: !2478, size: 32, offset: 1824)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "oz_pgrp", scope: !82, file: !83, line: 110, baseType: !219, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !83, line: 111, baseType: !91, size: 32, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sub_version", scope: !82, file: !83, line: 112, baseType: !91, size: 32, offset: 224)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "min_proto", scope: !82, file: !83, line: 113, baseType: !91, size: 32, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "max_proto", scope: !82, file: !83, line: 114, baseType: !91, size: 32, offset: 288)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !83, line: 115, baseType: !7, size: 32, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "exp_timeout", scope: !82, file: !83, line: 116, baseType: !329, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !83, line: 117, baseType: !7, size: 32, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !82, file: !83, line: 118, baseType: !771, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "wq_mutex", scope: !82, file: !83, line: 119, baseType: !170, size: 256, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mutex", scope: !82, file: !83, line: 120, baseType: !170, size: 256, offset: 832)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fs_lock", scope: !82, file: !83, line: 121, baseType: !117, size: 32, offset: 1088)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !82, file: !83, line: 122, baseType: !3298, size: 64, offset: 1152)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_wait_queue", file: !83, line: 82, size: 768, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3299, file: !83, line: 83, baseType: !245, size: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3299, file: !83, line: 84, baseType: !3298, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !3299, file: !83, line: 85, baseType: !3304, size: 32, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_wqt_t", file: !56, line: 38, baseType: !7)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3299, file: !83, line: 87, baseType: !543, size: 128, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3299, file: !83, line: 88, baseType: !86, size: 32, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3299, file: !83, line: 89, baseType: !86, size: 32, offset: 480)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3299, file: !83, line: 90, baseType: !301, size: 64, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3299, file: !83, line: 91, baseType: !264, size: 32, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3299, file: !83, line: 92, baseType: !282, size: 32, offset: 608)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3299, file: !83, line: 93, baseType: !1697, size: 32, offset: 640)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3299, file: !83, line: 94, baseType: !1697, size: 32, offset: 672)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3299, file: !83, line: 96, baseType: !91, size: 32, offset: 704)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_ctr", scope: !3299, file: !83, line: 97, baseType: !7, size: 32, offset: 736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_lock", scope: !82, file: !83, line: 123, baseType: !117, size: 32, offset: 1216)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !82, file: !83, line: 124, baseType: !182, size: 128, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "expiring_list", scope: !82, file: !83, line: 125, baseType: !182, size: 128, offset: 1408)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !82, file: !83, line: 126, baseType: !106, size: 128, align: 64, offset: 1536)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_info", file: !83, line: 52, size: 1024, elements: !3321)
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3320, file: !83, line: 53, baseType: !518, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3320, file: !83, line: 54, baseType: !91, size: 32, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "expire_complete", scope: !3320, file: !83, line: 56, baseType: !1715, size: 256, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3320, file: !83, line: 58, baseType: !182, size: 128, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "expiring", scope: !3320, file: !83, line: 60, baseType: !182, size: 128, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sbi", scope: !3320, file: !83, line: 62, baseType: !81, size: 64, offset: 640)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !3320, file: !83, line: 63, baseType: !329, size: 64, offset: 704)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3320, file: !83, line: 64, baseType: !91, size: 32, offset: 768)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3320, file: !83, line: 66, baseType: !264, size: 32, offset: 800)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3320, file: !83, line: 67, baseType: !282, size: 32, offset: 832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3320, file: !83, line: 68, baseType: !106, size: 128, align: 64, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3336)
!3336 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !185)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !558)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !2149, line: 45, baseType: !86)
!3342 = !{!0, !3343, !3345, !3347, !3349, !3354}
!3343 = !DIGlobalVariableExpression(var: !3344, expr: !DIExpression())
!3344 = distinct !DIGlobalVariable(name: "autofs_dir_operations", scope: !2, file: !3, line: 44, type: !3039, isLocal: false, isDefinition: true)
!3345 = !DIGlobalVariableExpression(var: !3346, expr: !DIExpression())
!3346 = distinct !DIGlobalVariable(name: "autofs_dir_inode_operations", scope: !2, file: !3, line: 52, type: !574, isLocal: false, isDefinition: true)
!3347 = !DIGlobalVariableExpression(var: !3348, expr: !DIExpression())
!3348 = distinct !DIGlobalVariable(name: "autofs_dentry_operations", scope: !2, file: !3, line: 61, type: !2891, isLocal: false, isDefinition: true)
!3349 = !DIGlobalVariableExpression(var: !3350, expr: !DIExpression())
!3350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 578, type: !3351, isLocal: true, isDefinition: true)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 136, elements: !3352)
!3352 = !{!3353}
!3353 = !DISubrange(count: 17)
!3354 = !DIGlobalVariableExpression(var: !3355, expr: !DIExpression())
!3355 = distinct !DIGlobalVariable(scope: null, file: !62, line: 480, type: !3356, isLocal: true, isDefinition: true)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 168, elements: !3357)
!3357 = !{!3358}
!3358 = !DISubrange(count: 21)
!3359 = !{!"rsp"}
!3360 = !{i32 7, !"Dwarf Version", i32 5}
!3361 = !{i32 2, !"Debug Info Version", i32 3}
!3362 = !{i32 1, !"wchar_size", i32 2}
!3363 = !{i32 8, !"cf-protection-branch", i32 1}
!3364 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3365 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3366 = !{i32 1, !"Code Model", i32 2}
!3367 = !{i32 1, !"override-stack-alignment", i32 8}
!3368 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3369 = distinct !DISubprogram(name: "autofs_root_ioctl", scope: !3, file: !3, line: 905, type: !3087, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3370)
!3370 = !{!3371, !3372, !3373, !3374}
!3371 = !DILocalVariable(name: "filp", arg: 1, scope: !3369, file: !3, line: 905, type: !93)
!3372 = !DILocalVariable(name: "cmd", arg: 2, scope: !3369, file: !3, line: 906, type: !7)
!3373 = !DILocalVariable(name: "arg", arg: 3, scope: !3369, file: !3, line: 906, type: !329)
!3374 = !DILocalVariable(name: "inode", scope: !3369, file: !3, line: 908, type: !558)
!3375 = !DILocation(line: 905, column: 44, scope: !3369)
!3376 = !DILocation(line: 906, column: 24, scope: !3369)
!3377 = !DILocation(line: 906, column: 43, scope: !3369)
!3378 = !DILocation(line: 908, column: 2, scope: !3369)
!3379 = !DILocation(line: 908, column: 16, scope: !3369)
!3380 = !DILocation(line: 908, column: 35, scope: !3369)
!3381 = !DILocation(line: 908, column: 24, scope: !3369)
!3382 = !DILocation(line: 910, column: 36, scope: !3369)
!3383 = !DILocation(line: 910, column: 43, scope: !3369)
!3384 = !DILocation(line: 910, column: 49, scope: !3369)
!3385 = !DILocation(line: 910, column: 54, scope: !3369)
!3386 = !DILocation(line: 910, column: 9, scope: !3369)
!3387 = !DILocation(line: 911, column: 1, scope: !3369)
!3388 = !DILocation(line: 910, column: 2, scope: !3369)
!3389 = distinct !DISubprogram(name: "autofs_root_compat_ioctl", scope: !3, file: !3, line: 914, type: !3087, scopeLine: 916, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395}
!3391 = !DILocalVariable(name: "filp", arg: 1, scope: !3389, file: !3, line: 914, type: !93)
!3392 = !DILocalVariable(name: "cmd", arg: 2, scope: !3389, file: !3, line: 915, type: !7)
!3393 = !DILocalVariable(name: "arg", arg: 3, scope: !3389, file: !3, line: 915, type: !329)
!3394 = !DILocalVariable(name: "inode", scope: !3389, file: !3, line: 917, type: !558)
!3395 = !DILocalVariable(name: "ret", scope: !3389, file: !3, line: 918, type: !91)
!3396 = !DILocation(line: 914, column: 51, scope: !3389)
!3397 = !DILocation(line: 915, column: 24, scope: !3389)
!3398 = !DILocation(line: 915, column: 43, scope: !3389)
!3399 = !DILocation(line: 917, column: 2, scope: !3389)
!3400 = !DILocation(line: 917, column: 16, scope: !3389)
!3401 = !DILocation(line: 917, column: 35, scope: !3389)
!3402 = !DILocation(line: 917, column: 24, scope: !3389)
!3403 = !DILocation(line: 918, column: 2, scope: !3389)
!3404 = !DILocation(line: 918, column: 6, scope: !3389)
!3405 = !DILocation(line: 920, column: 6, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 920, column: 6)
!3407 = !DILocation(line: 920, column: 10, scope: !3406)
!3408 = !DILocation(line: 920, column: 30, scope: !3406)
!3409 = !DILocation(line: 920, column: 33, scope: !3406)
!3410 = !DILocation(line: 920, column: 37, scope: !3406)
!3411 = !DILocation(line: 920, column: 6, scope: !3389)
!3412 = !DILocation(line: 921, column: 36, scope: !3406)
!3413 = !DILocation(line: 921, column: 43, scope: !3406)
!3414 = !DILocation(line: 921, column: 49, scope: !3406)
!3415 = !DILocation(line: 921, column: 54, scope: !3406)
!3416 = !DILocation(line: 921, column: 9, scope: !3406)
!3417 = !DILocation(line: 921, column: 7, scope: !3406)
!3418 = !DILocation(line: 921, column: 3, scope: !3406)
!3419 = !DILocation(line: 923, column: 36, scope: !3406)
!3420 = !DILocation(line: 923, column: 43, scope: !3406)
!3421 = !DILocation(line: 923, column: 49, scope: !3406)
!3422 = !DILocation(line: 924, column: 39, scope: !3406)
!3423 = !DILocation(line: 924, column: 28, scope: !3406)
!3424 = !DILocation(line: 924, column: 12, scope: !3406)
!3425 = !DILocation(line: 923, column: 9, scope: !3406)
!3426 = !DILocation(line: 923, column: 7, scope: !3406)
!3427 = !DILocation(line: 926, column: 9, scope: !3389)
!3428 = !DILocation(line: 927, column: 1, scope: !3389)
!3429 = !DILocation(line: 926, column: 2, scope: !3389)
!3430 = !DISubprogram(name: "dcache_dir_open", scope: !15, file: !15, line: 3140, type: !3150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3431 = distinct !DISubprogram(name: "autofs_dir_open", scope: !3, file: !3, line: 78, type: !3150, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438}
!3433 = !DILocalVariable(name: "inode", arg: 1, scope: !3431, file: !3, line: 78, type: !558)
!3434 = !DILocalVariable(name: "file", arg: 2, scope: !3431, file: !3, line: 78, type: !93)
!3435 = !DILocalVariable(name: "dentry", scope: !3431, file: !3, line: 80, type: !518)
!3436 = !DILocalVariable(name: "sbi", scope: !3431, file: !3, line: 81, type: !81)
!3437 = !DILocalVariable(name: "ino", scope: !3431, file: !3, line: 82, type: !3319)
!3438 = !DILabel(scope: !3431, name: "out", file: !3, line: 105)
!3439 = !DILocation(line: 78, column: 42, scope: !3431)
!3440 = !DILocation(line: 78, column: 62, scope: !3431)
!3441 = !DILocation(line: 80, column: 2, scope: !3431)
!3442 = !DILocation(line: 80, column: 17, scope: !3431)
!3443 = !DILocation(line: 80, column: 26, scope: !3431)
!3444 = !DILocation(line: 80, column: 32, scope: !3431)
!3445 = !DILocation(line: 80, column: 39, scope: !3431)
!3446 = !DILocation(line: 81, column: 2, scope: !3431)
!3447 = !DILocation(line: 81, column: 25, scope: !3431)
!3448 = !DILocation(line: 81, column: 42, scope: !3431)
!3449 = !DILocation(line: 81, column: 50, scope: !3431)
!3450 = !DILocation(line: 81, column: 31, scope: !3431)
!3451 = !DILocation(line: 82, column: 2, scope: !3431)
!3452 = !DILocation(line: 82, column: 22, scope: !3431)
!3453 = !DILocation(line: 82, column: 46, scope: !3431)
!3454 = !DILocation(line: 82, column: 28, scope: !3431)
!3455 = !DILocation(line: 84, column: 2, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 84, column: 2)
!3457 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 84, column: 2)
!3458 = !DILocation(line: 84, column: 2, scope: !3457)
!3459 = !DILocation(line: 86, column: 21, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 86, column: 6)
!3461 = !DILocation(line: 86, column: 6, scope: !3460)
!3462 = !DILocation(line: 86, column: 6, scope: !3431)
!3463 = !DILocation(line: 87, column: 3, scope: !3460)
!3464 = !DILocation(line: 98, column: 13, scope: !3431)
!3465 = !DILocation(line: 98, column: 18, scope: !3431)
!3466 = !DILocation(line: 98, column: 2, scope: !3431)
!3467 = !DILocation(line: 99, column: 27, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 99, column: 6)
!3469 = !DILocation(line: 99, column: 33, scope: !3468)
!3470 = !DILocation(line: 99, column: 7, scope: !3468)
!3471 = !DILocation(line: 99, column: 41, scope: !3468)
!3472 = !DILocation(line: 99, column: 57, scope: !3468)
!3473 = !DILocation(line: 99, column: 44, scope: !3468)
!3474 = !DILocation(line: 99, column: 6, scope: !3431)
!3475 = !DILocation(line: 100, column: 16, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 99, column: 63)
!3477 = !DILocation(line: 100, column: 21, scope: !3476)
!3478 = !DILocation(line: 100, column: 3, scope: !3476)
!3479 = !DILocation(line: 101, column: 3, scope: !3476)
!3480 = !DILocation(line: 103, column: 15, scope: !3431)
!3481 = !DILocation(line: 103, column: 20, scope: !3431)
!3482 = !DILocation(line: 103, column: 2, scope: !3431)
!3483 = !DILocation(line: 105, column: 1, scope: !3431)
!3484 = !DILocation(line: 106, column: 25, scope: !3431)
!3485 = !DILocation(line: 106, column: 32, scope: !3431)
!3486 = !DILocation(line: 106, column: 9, scope: !3431)
!3487 = !DILocation(line: 106, column: 2, scope: !3431)
!3488 = !DILocation(line: 107, column: 1, scope: !3431)
!3489 = distinct !DISubprogram(name: "autofs_lookup", scope: !3, file: !3, line: 493, type: !579, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496}
!3491 = !DILocalVariable(name: "dir", arg: 1, scope: !3489, file: !3, line: 493, type: !558)
!3492 = !DILocalVariable(name: "dentry", arg: 2, scope: !3489, file: !3, line: 494, type: !518)
!3493 = !DILocalVariable(name: "flags", arg: 3, scope: !3489, file: !3, line: 494, type: !7)
!3494 = !DILocalVariable(name: "sbi", scope: !3489, file: !3, line: 496, type: !81)
!3495 = !DILocalVariable(name: "ino", scope: !3489, file: !3, line: 497, type: !3319)
!3496 = !DILocalVariable(name: "active", scope: !3489, file: !3, line: 498, type: !518)
!3497 = !DILocation(line: 493, column: 51, scope: !3489)
!3498 = !DILocation(line: 494, column: 24, scope: !3489)
!3499 = !DILocation(line: 494, column: 45, scope: !3489)
!3500 = !DILocation(line: 496, column: 2, scope: !3489)
!3501 = !DILocation(line: 496, column: 25, scope: !3489)
!3502 = !DILocation(line: 497, column: 2, scope: !3489)
!3503 = !DILocation(line: 497, column: 22, scope: !3489)
!3504 = !DILocation(line: 498, column: 2, scope: !3489)
!3505 = !DILocation(line: 498, column: 17, scope: !3489)
!3506 = !DILocation(line: 500, column: 2, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 500, column: 2)
!3508 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 500, column: 2)
!3509 = !DILocation(line: 500, column: 2, scope: !3508)
!3510 = !DILocation(line: 503, column: 6, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 503, column: 6)
!3512 = !DILocation(line: 503, column: 14, scope: !3511)
!3513 = !DILocation(line: 503, column: 21, scope: !3511)
!3514 = !DILocation(line: 503, column: 25, scope: !3511)
!3515 = !DILocation(line: 503, column: 6, scope: !3489)
!3516 = !DILocation(line: 504, column: 10, scope: !3511)
!3517 = !DILocation(line: 504, column: 3, scope: !3511)
!3518 = !DILocation(line: 506, column: 19, scope: !3489)
!3519 = !DILocation(line: 506, column: 24, scope: !3489)
!3520 = !DILocation(line: 506, column: 8, scope: !3489)
!3521 = !DILocation(line: 506, column: 6, scope: !3489)
!3522 = !DILocation(line: 508, column: 2, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 508, column: 2)
!3524 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 508, column: 2)
!3525 = !DILocation(line: 508, column: 2, scope: !3524)
!3526 = !DILocation(line: 513, column: 32, scope: !3489)
!3527 = !DILocation(line: 513, column: 11, scope: !3489)
!3528 = !DILocation(line: 513, column: 9, scope: !3489)
!3529 = !DILocation(line: 514, column: 6, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 514, column: 6)
!3531 = !DILocation(line: 514, column: 6, scope: !3489)
!3532 = !DILocation(line: 515, column: 10, scope: !3530)
!3533 = !DILocation(line: 515, column: 3, scope: !3530)
!3534 = !DILocation(line: 523, column: 23, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 523, column: 7)
!3536 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 516, column: 7)
!3537 = !DILocation(line: 523, column: 8, scope: !3535)
!3538 = !DILocation(line: 523, column: 28, scope: !3535)
!3539 = !DILocation(line: 523, column: 32, scope: !3535)
!3540 = !DILocation(line: 523, column: 7, scope: !3536)
!3541 = !DILocation(line: 524, column: 11, scope: !3535)
!3542 = !DILocation(line: 524, column: 4, scope: !3535)
!3543 = !DILocation(line: 526, column: 24, scope: !3536)
!3544 = !DILocation(line: 526, column: 9, scope: !3536)
!3545 = !DILocation(line: 526, column: 7, scope: !3536)
!3546 = !DILocation(line: 527, column: 8, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 527, column: 7)
!3548 = !DILocation(line: 527, column: 7, scope: !3536)
!3549 = !DILocation(line: 528, column: 11, scope: !3547)
!3550 = !DILocation(line: 528, column: 4, scope: !3547)
!3551 = !DILocation(line: 530, column: 14, scope: !3536)
!3552 = !DILocation(line: 530, column: 19, scope: !3536)
!3553 = !DILocation(line: 530, column: 3, scope: !3536)
!3554 = !DILocation(line: 531, column: 14, scope: !3536)
!3555 = !DILocation(line: 531, column: 22, scope: !3536)
!3556 = !DILocation(line: 531, column: 3, scope: !3536)
!3557 = !DILocation(line: 533, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 533, column: 7)
!3559 = !DILocation(line: 533, column: 33, scope: !3558)
!3560 = !DILocation(line: 534, column: 28, scope: !3558)
!3561 = !DILocation(line: 534, column: 33, scope: !3558)
!3562 = !DILocation(line: 534, column: 7, scope: !3558)
!3563 = !DILocation(line: 533, column: 7, scope: !3536)
!3564 = !DILocation(line: 535, column: 33, scope: !3558)
!3565 = !DILocation(line: 535, column: 4, scope: !3558)
!3566 = !DILocation(line: 536, column: 22, scope: !3536)
!3567 = !DILocation(line: 536, column: 3, scope: !3536)
!3568 = !DILocation(line: 536, column: 11, scope: !3536)
!3569 = !DILocation(line: 536, column: 20, scope: !3536)
!3570 = !DILocation(line: 537, column: 17, scope: !3536)
!3571 = !DILocation(line: 537, column: 3, scope: !3536)
!3572 = !DILocation(line: 537, column: 8, scope: !3536)
!3573 = !DILocation(line: 537, column: 15, scope: !3536)
!3574 = !DILocation(line: 539, column: 13, scope: !3536)
!3575 = !DILocation(line: 539, column: 18, scope: !3536)
!3576 = !DILocation(line: 539, column: 27, scope: !3536)
!3577 = !DILocation(line: 539, column: 32, scope: !3536)
!3578 = !DILocation(line: 539, column: 3, scope: !3536)
!3579 = !DILocation(line: 540, column: 16, scope: !3536)
!3580 = !DILocation(line: 540, column: 21, scope: !3536)
!3581 = !DILocation(line: 540, column: 3, scope: !3536)
!3582 = !DILocation(line: 541, column: 16, scope: !3536)
!3583 = !DILocation(line: 541, column: 24, scope: !3536)
!3584 = !DILocation(line: 541, column: 3, scope: !3536)
!3585 = !DILocation(line: 543, column: 2, scope: !3489)
!3586 = !DILocation(line: 544, column: 1, scope: !3489)
!3587 = distinct !DISubprogram(name: "autofs_dir_permission", scope: !3, file: !3, line: 546, type: !596, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3588)
!3588 = !{!3589, !3590, !3591, !3592}
!3589 = !DILocalVariable(name: "idmap", arg: 1, scope: !3587, file: !3, line: 546, type: !598)
!3590 = !DILocalVariable(name: "inode", arg: 2, scope: !3587, file: !3, line: 547, type: !558)
!3591 = !DILocalVariable(name: "mask", arg: 3, scope: !3587, file: !3, line: 547, type: !91)
!3592 = !DILocalVariable(name: "sbi", scope: !3593, file: !3, line: 550, type: !81)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 549, column: 24)
!3594 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 549, column: 6)
!3595 = !DILocation(line: 546, column: 52, scope: !3587)
!3596 = !DILocation(line: 547, column: 20, scope: !3587)
!3597 = !DILocation(line: 547, column: 31, scope: !3587)
!3598 = !DILocation(line: 549, column: 6, scope: !3594)
!3599 = !DILocation(line: 549, column: 11, scope: !3594)
!3600 = !DILocation(line: 549, column: 6, scope: !3587)
!3601 = !DILocation(line: 550, column: 3, scope: !3593)
!3602 = !DILocation(line: 550, column: 26, scope: !3593)
!3603 = !DILocation(line: 550, column: 43, scope: !3593)
!3604 = !DILocation(line: 550, column: 50, scope: !3593)
!3605 = !DILocation(line: 550, column: 32, scope: !3593)
!3606 = !DILocation(line: 552, column: 23, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 552, column: 7)
!3608 = !DILocation(line: 552, column: 8, scope: !3607)
!3609 = !DILocation(line: 552, column: 7, scope: !3593)
!3610 = !DILocation(line: 553, column: 4, scope: !3607)
!3611 = !DILocation(line: 559, column: 7, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 559, column: 7)
!3613 = !DILocation(line: 559, column: 12, scope: !3612)
!3614 = !DILocation(line: 559, column: 18, scope: !3612)
!3615 = !DILocation(line: 559, column: 7, scope: !3593)
!3616 = !DILocation(line: 560, column: 4, scope: !3612)
!3617 = !DILocation(line: 561, column: 2, scope: !3594)
!3618 = !DILocation(line: 561, column: 2, scope: !3593)
!3619 = !DILocation(line: 563, column: 28, scope: !3587)
!3620 = !DILocation(line: 563, column: 35, scope: !3587)
!3621 = !DILocation(line: 563, column: 42, scope: !3587)
!3622 = !DILocation(line: 563, column: 9, scope: !3587)
!3623 = !DILocation(line: 563, column: 2, scope: !3587)
!3624 = !DILocation(line: 564, column: 1, scope: !3587)
!3625 = distinct !DISubprogram(name: "autofs_dir_unlink", scope: !3, file: !3, line: 623, type: !618, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631}
!3627 = !DILocalVariable(name: "dir", arg: 1, scope: !3625, file: !3, line: 623, type: !558)
!3628 = !DILocalVariable(name: "dentry", arg: 2, scope: !3625, file: !3, line: 623, type: !518)
!3629 = !DILocalVariable(name: "sbi", scope: !3625, file: !3, line: 625, type: !81)
!3630 = !DILocalVariable(name: "ino", scope: !3625, file: !3, line: 626, type: !3319)
!3631 = !DILocalVariable(name: "p_ino", scope: !3625, file: !3, line: 627, type: !3319)
!3632 = !DILocation(line: 623, column: 44, scope: !3625)
!3633 = !DILocation(line: 623, column: 64, scope: !3625)
!3634 = !DILocation(line: 625, column: 2, scope: !3625)
!3635 = !DILocation(line: 625, column: 25, scope: !3625)
!3636 = !DILocation(line: 625, column: 42, scope: !3625)
!3637 = !DILocation(line: 625, column: 47, scope: !3625)
!3638 = !DILocation(line: 625, column: 31, scope: !3625)
!3639 = !DILocation(line: 626, column: 2, scope: !3625)
!3640 = !DILocation(line: 626, column: 22, scope: !3625)
!3641 = !DILocation(line: 626, column: 46, scope: !3625)
!3642 = !DILocation(line: 626, column: 28, scope: !3625)
!3643 = !DILocation(line: 627, column: 2, scope: !3625)
!3644 = !DILocation(line: 627, column: 22, scope: !3625)
!3645 = !DILocation(line: 629, column: 28, scope: !3625)
!3646 = !DILocation(line: 629, column: 36, scope: !3625)
!3647 = !DILocation(line: 629, column: 10, scope: !3625)
!3648 = !DILocation(line: 629, column: 8, scope: !3625)
!3649 = !DILocation(line: 630, column: 2, scope: !3625)
!3650 = !DILocation(line: 630, column: 9, scope: !3625)
!3651 = !DILocation(line: 630, column: 14, scope: !3625)
!3652 = !DILocation(line: 631, column: 7, scope: !3625)
!3653 = !DILocation(line: 631, column: 12, scope: !3625)
!3654 = !DILocation(line: 631, column: 2, scope: !3625)
!3655 = !DILocation(line: 633, column: 10, scope: !3625)
!3656 = !DILocation(line: 633, column: 2, scope: !3625)
!3657 = !DILocation(line: 633, column: 19, scope: !3625)
!3658 = !DILocation(line: 633, column: 26, scope: !3625)
!3659 = !DILocation(line: 634, column: 22, scope: !3625)
!3660 = !DILocation(line: 634, column: 14, scope: !3625)
!3661 = !DILocation(line: 634, column: 2, scope: !3625)
!3662 = !DILocation(line: 636, column: 2, scope: !3625)
!3663 = !DILocation(line: 636, column: 7, scope: !3625)
!3664 = !DILocation(line: 636, column: 17, scope: !3625)
!3665 = !DILocation(line: 636, column: 41, scope: !3625)
!3666 = !DILocation(line: 638, column: 13, scope: !3625)
!3667 = !DILocation(line: 638, column: 18, scope: !3625)
!3668 = !DILocation(line: 638, column: 2, scope: !3625)
!3669 = !DILocation(line: 639, column: 24, scope: !3625)
!3670 = !DILocation(line: 639, column: 2, scope: !3625)
!3671 = !DILocation(line: 640, column: 9, scope: !3625)
!3672 = !DILocation(line: 640, column: 2, scope: !3625)
!3673 = !DILocation(line: 641, column: 15, scope: !3625)
!3674 = !DILocation(line: 641, column: 20, scope: !3625)
!3675 = !DILocation(line: 641, column: 2, scope: !3625)
!3676 = !DILocation(line: 644, column: 1, scope: !3625)
!3677 = !DILocation(line: 643, column: 2, scope: !3625)
!3678 = distinct !DISubprogram(name: "autofs_dir_symlink", scope: !3, file: !3, line: 566, type: !622, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3680 = !DILocalVariable(name: "idmap", arg: 1, scope: !3678, file: !3, line: 566, type: !598)
!3681 = !DILocalVariable(name: "dir", arg: 2, scope: !3678, file: !3, line: 567, type: !558)
!3682 = !DILocalVariable(name: "dentry", arg: 3, scope: !3678, file: !3, line: 567, type: !518)
!3683 = !DILocalVariable(name: "symname", arg: 4, scope: !3678, file: !3, line: 568, type: !397)
!3684 = !DILocalVariable(name: "ino", scope: !3678, file: !3, line: 570, type: !3319)
!3685 = !DILocalVariable(name: "p_ino", scope: !3678, file: !3, line: 571, type: !3319)
!3686 = !DILocalVariable(name: "inode", scope: !3678, file: !3, line: 572, type: !558)
!3687 = !DILocalVariable(name: "size", scope: !3678, file: !3, line: 573, type: !715)
!3688 = !DILocalVariable(name: "cp", scope: !3678, file: !3, line: 574, type: !407)
!3689 = !DILocation(line: 566, column: 49, scope: !3678)
!3690 = !DILocation(line: 567, column: 24, scope: !3678)
!3691 = !DILocation(line: 567, column: 44, scope: !3678)
!3692 = !DILocation(line: 568, column: 22, scope: !3678)
!3693 = !DILocation(line: 570, column: 2, scope: !3678)
!3694 = !DILocation(line: 570, column: 22, scope: !3678)
!3695 = !DILocation(line: 570, column: 46, scope: !3678)
!3696 = !DILocation(line: 570, column: 28, scope: !3678)
!3697 = !DILocation(line: 571, column: 2, scope: !3678)
!3698 = !DILocation(line: 571, column: 22, scope: !3678)
!3699 = !DILocation(line: 572, column: 2, scope: !3678)
!3700 = !DILocation(line: 572, column: 16, scope: !3678)
!3701 = !DILocation(line: 573, column: 2, scope: !3678)
!3702 = !DILocation(line: 573, column: 9, scope: !3678)
!3703 = !DILocation(line: 573, column: 23, scope: !3678)
!3704 = !DILocation(line: 573, column: 16, scope: !3678)
!3705 = !DILocation(line: 574, column: 2, scope: !3678)
!3706 = !DILocation(line: 574, column: 8, scope: !3678)
!3707 = !DILocation(line: 576, column: 2, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 576, column: 2)
!3709 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 576, column: 2)
!3710 = !DILocation(line: 576, column: 2, scope: !3709)
!3711 = !DILocation(line: 578, column: 2, scope: !3678)
!3712 = !DILocation(line: 578, column: 2, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 578, column: 2)
!3714 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 578, column: 2)
!3715 = !DILocation(line: 578, column: 2, scope: !3714)
!3716 = !DILocation(line: 578, column: 2, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 578, column: 2)
!3718 = !DILocation(line: 578, column: 2, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 578, column: 2)
!3720 = !DILocation(line: 578, column: 2, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 578, column: 2)
!3722 = !{i64 2153570134, i64 2153570163, i64 2153570209, i64 2153570267, i64 2153570321, i64 2153570375, i64 2153570430, i64 2153570461}
!3723 = !DILocation(line: 580, column: 19, scope: !3678)
!3724 = !DILocation(line: 580, column: 2, scope: !3678)
!3725 = !DILocation(line: 582, column: 20, scope: !3678)
!3726 = !DILocation(line: 582, column: 2, scope: !3678)
!3727 = !DILocation(line: 584, column: 15, scope: !3678)
!3728 = !DILocation(line: 584, column: 20, scope: !3678)
!3729 = !DILocation(line: 584, column: 7, scope: !3678)
!3730 = !DILocation(line: 584, column: 5, scope: !3678)
!3731 = !DILocation(line: 585, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 585, column: 6)
!3733 = !DILocation(line: 585, column: 6, scope: !3678)
!3734 = !DILocation(line: 586, column: 3, scope: !3732)
!3735 = !DILocation(line: 588, column: 9, scope: !3678)
!3736 = !DILocation(line: 588, column: 13, scope: !3678)
!3737 = !DILocation(line: 588, column: 2, scope: !3678)
!3738 = !DILocation(line: 590, column: 27, scope: !3678)
!3739 = !DILocation(line: 590, column: 32, scope: !3678)
!3740 = !DILocation(line: 590, column: 10, scope: !3678)
!3741 = !DILocation(line: 590, column: 8, scope: !3678)
!3742 = !DILocation(line: 591, column: 7, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 591, column: 6)
!3744 = !DILocation(line: 591, column: 6, scope: !3678)
!3745 = !DILocation(line: 592, column: 9, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 591, column: 14)
!3747 = !DILocation(line: 592, column: 3, scope: !3746)
!3748 = !DILocation(line: 593, column: 3, scope: !3746)
!3749 = !DILocation(line: 595, column: 21, scope: !3678)
!3750 = !DILocation(line: 595, column: 2, scope: !3678)
!3751 = !DILocation(line: 595, column: 9, scope: !3678)
!3752 = !DILocation(line: 595, column: 19, scope: !3678)
!3753 = !DILocation(line: 596, column: 18, scope: !3678)
!3754 = !DILocation(line: 596, column: 2, scope: !3678)
!3755 = !DILocation(line: 596, column: 9, scope: !3678)
!3756 = !DILocation(line: 596, column: 16, scope: !3678)
!3757 = !DILocation(line: 597, column: 8, scope: !3678)
!3758 = !DILocation(line: 597, column: 16, scope: !3678)
!3759 = !DILocation(line: 597, column: 2, scope: !3678)
!3760 = !DILocation(line: 599, column: 7, scope: !3678)
!3761 = !DILocation(line: 599, column: 2, scope: !3678)
!3762 = !DILocation(line: 600, column: 28, scope: !3678)
!3763 = !DILocation(line: 600, column: 36, scope: !3678)
!3764 = !DILocation(line: 600, column: 10, scope: !3678)
!3765 = !DILocation(line: 600, column: 8, scope: !3678)
!3766 = !DILocation(line: 601, column: 2, scope: !3678)
!3767 = !DILocation(line: 601, column: 9, scope: !3678)
!3768 = !DILocation(line: 601, column: 14, scope: !3678)
!3769 = !DILocation(line: 603, column: 2, scope: !3678)
!3770 = !DILocation(line: 603, column: 7, scope: !3678)
!3771 = !DILocation(line: 603, column: 17, scope: !3678)
!3772 = !DILocation(line: 603, column: 41, scope: !3678)
!3773 = !DILocation(line: 605, column: 2, scope: !3678)
!3774 = !DILocation(line: 606, column: 1, scope: !3678)
!3775 = distinct !DISubprogram(name: "autofs_dir_mkdir", scope: !3, file: !3, line: 723, type: !626, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784}
!3777 = !DILocalVariable(name: "idmap", arg: 1, scope: !3775, file: !3, line: 723, type: !598)
!3778 = !DILocalVariable(name: "dir", arg: 2, scope: !3775, file: !3, line: 724, type: !558)
!3779 = !DILocalVariable(name: "dentry", arg: 3, scope: !3775, file: !3, line: 724, type: !518)
!3780 = !DILocalVariable(name: "mode", arg: 4, scope: !3775, file: !3, line: 725, type: !562)
!3781 = !DILocalVariable(name: "sbi", scope: !3775, file: !3, line: 727, type: !81)
!3782 = !DILocalVariable(name: "ino", scope: !3775, file: !3, line: 728, type: !3319)
!3783 = !DILocalVariable(name: "p_ino", scope: !3775, file: !3, line: 729, type: !3319)
!3784 = !DILocalVariable(name: "inode", scope: !3775, file: !3, line: 730, type: !558)
!3785 = !DILocation(line: 723, column: 47, scope: !3775)
!3786 = !DILocation(line: 724, column: 22, scope: !3775)
!3787 = !DILocation(line: 724, column: 42, scope: !3775)
!3788 = !DILocation(line: 725, column: 16, scope: !3775)
!3789 = !DILocation(line: 727, column: 2, scope: !3775)
!3790 = !DILocation(line: 727, column: 25, scope: !3775)
!3791 = !DILocation(line: 727, column: 42, scope: !3775)
!3792 = !DILocation(line: 727, column: 47, scope: !3775)
!3793 = !DILocation(line: 727, column: 31, scope: !3775)
!3794 = !DILocation(line: 728, column: 2, scope: !3775)
!3795 = !DILocation(line: 728, column: 22, scope: !3775)
!3796 = !DILocation(line: 728, column: 46, scope: !3775)
!3797 = !DILocation(line: 728, column: 28, scope: !3775)
!3798 = !DILocation(line: 729, column: 2, scope: !3775)
!3799 = !DILocation(line: 729, column: 22, scope: !3775)
!3800 = !DILocation(line: 730, column: 2, scope: !3775)
!3801 = !DILocation(line: 730, column: 16, scope: !3775)
!3802 = !DILocation(line: 732, column: 2, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 732, column: 2)
!3804 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 732, column: 2)
!3805 = !DILocation(line: 732, column: 2, scope: !3804)
!3806 = !DILocation(line: 734, column: 2, scope: !3775)
!3807 = !DILocation(line: 734, column: 2, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 734, column: 2)
!3809 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 734, column: 2)
!3810 = !DILocation(line: 734, column: 2, scope: !3809)
!3811 = !DILocation(line: 734, column: 2, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 734, column: 2)
!3813 = !DILocation(line: 734, column: 2, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 734, column: 2)
!3815 = !DILocation(line: 734, column: 2, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 734, column: 2)
!3817 = !{i64 2153572341, i64 2153572370, i64 2153572416, i64 2153572474, i64 2153572528, i64 2153572582, i64 2153572637, i64 2153572668}
!3818 = !DILocation(line: 736, column: 19, scope: !3775)
!3819 = !DILocation(line: 736, column: 2, scope: !3775)
!3820 = !DILocation(line: 738, column: 20, scope: !3775)
!3821 = !DILocation(line: 738, column: 2, scope: !3775)
!3822 = !DILocation(line: 740, column: 27, scope: !3775)
!3823 = !DILocation(line: 740, column: 32, scope: !3775)
!3824 = !DILocation(line: 740, column: 48, scope: !3775)
!3825 = !DILocation(line: 740, column: 46, scope: !3775)
!3826 = !DILocation(line: 740, column: 38, scope: !3775)
!3827 = !DILocation(line: 740, column: 10, scope: !3775)
!3828 = !DILocation(line: 740, column: 8, scope: !3775)
!3829 = !DILocation(line: 741, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 741, column: 6)
!3831 = !DILocation(line: 741, column: 6, scope: !3775)
!3832 = !DILocation(line: 742, column: 3, scope: !3830)
!3833 = !DILocation(line: 743, column: 8, scope: !3775)
!3834 = !DILocation(line: 743, column: 16, scope: !3775)
!3835 = !DILocation(line: 743, column: 2, scope: !3775)
!3836 = !DILocation(line: 745, column: 6, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 745, column: 6)
!3838 = !DILocation(line: 745, column: 11, scope: !3837)
!3839 = !DILocation(line: 745, column: 19, scope: !3837)
!3840 = !DILocation(line: 745, column: 6, scope: !3775)
!3841 = !DILocation(line: 746, column: 35, scope: !3837)
!3842 = !DILocation(line: 746, column: 3, scope: !3837)
!3843 = !DILocation(line: 748, column: 7, scope: !3775)
!3844 = !DILocation(line: 748, column: 2, scope: !3775)
!3845 = !DILocation(line: 749, column: 28, scope: !3775)
!3846 = !DILocation(line: 749, column: 36, scope: !3775)
!3847 = !DILocation(line: 749, column: 10, scope: !3775)
!3848 = !DILocation(line: 749, column: 8, scope: !3775)
!3849 = !DILocation(line: 750, column: 2, scope: !3775)
!3850 = !DILocation(line: 750, column: 9, scope: !3775)
!3851 = !DILocation(line: 750, column: 14, scope: !3775)
!3852 = !DILocation(line: 751, column: 12, scope: !3775)
!3853 = !DILocation(line: 751, column: 2, scope: !3775)
!3854 = !DILocation(line: 752, column: 2, scope: !3775)
!3855 = !DILocation(line: 752, column: 7, scope: !3775)
!3856 = !DILocation(line: 752, column: 17, scope: !3775)
!3857 = !DILocation(line: 752, column: 41, scope: !3775)
!3858 = !DILocation(line: 754, column: 2, scope: !3775)
!3859 = !DILocation(line: 755, column: 1, scope: !3775)
!3860 = distinct !DISubprogram(name: "autofs_dir_rmdir", scope: !3, file: !3, line: 692, type: !618, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866}
!3862 = !DILocalVariable(name: "dir", arg: 1, scope: !3860, file: !3, line: 692, type: !558)
!3863 = !DILocalVariable(name: "dentry", arg: 2, scope: !3860, file: !3, line: 692, type: !518)
!3864 = !DILocalVariable(name: "sbi", scope: !3860, file: !3, line: 694, type: !81)
!3865 = !DILocalVariable(name: "ino", scope: !3860, file: !3, line: 695, type: !3319)
!3866 = !DILocalVariable(name: "p_ino", scope: !3860, file: !3, line: 696, type: !3319)
!3867 = !DILocation(line: 692, column: 43, scope: !3860)
!3868 = !DILocation(line: 692, column: 63, scope: !3860)
!3869 = !DILocation(line: 694, column: 2, scope: !3860)
!3870 = !DILocation(line: 694, column: 25, scope: !3860)
!3871 = !DILocation(line: 694, column: 42, scope: !3860)
!3872 = !DILocation(line: 694, column: 47, scope: !3860)
!3873 = !DILocation(line: 694, column: 31, scope: !3860)
!3874 = !DILocation(line: 695, column: 2, scope: !3860)
!3875 = !DILocation(line: 695, column: 22, scope: !3860)
!3876 = !DILocation(line: 695, column: 46, scope: !3860)
!3877 = !DILocation(line: 695, column: 28, scope: !3860)
!3878 = !DILocation(line: 696, column: 2, scope: !3860)
!3879 = !DILocation(line: 696, column: 22, scope: !3860)
!3880 = !DILocation(line: 698, column: 2, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 698, column: 2)
!3882 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 698, column: 2)
!3883 = !DILocation(line: 698, column: 2, scope: !3882)
!3884 = !DILocation(line: 700, column: 6, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 700, column: 6)
!3886 = !DILocation(line: 700, column: 11, scope: !3885)
!3887 = !DILocation(line: 700, column: 17, scope: !3885)
!3888 = !DILocation(line: 700, column: 6, scope: !3860)
!3889 = !DILocation(line: 701, column: 3, scope: !3885)
!3890 = !DILocation(line: 703, column: 13, scope: !3860)
!3891 = !DILocation(line: 703, column: 18, scope: !3860)
!3892 = !DILocation(line: 703, column: 2, scope: !3860)
!3893 = !DILocation(line: 704, column: 24, scope: !3860)
!3894 = !DILocation(line: 704, column: 2, scope: !3860)
!3895 = !DILocation(line: 705, column: 9, scope: !3860)
!3896 = !DILocation(line: 705, column: 2, scope: !3860)
!3897 = !DILocation(line: 706, column: 15, scope: !3860)
!3898 = !DILocation(line: 706, column: 20, scope: !3860)
!3899 = !DILocation(line: 706, column: 2, scope: !3860)
!3900 = !DILocation(line: 708, column: 6, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 708, column: 6)
!3902 = !DILocation(line: 708, column: 11, scope: !3901)
!3903 = !DILocation(line: 708, column: 19, scope: !3901)
!3904 = !DILocation(line: 708, column: 6, scope: !3860)
!3905 = !DILocation(line: 709, column: 37, scope: !3901)
!3906 = !DILocation(line: 709, column: 3, scope: !3901)
!3907 = !DILocation(line: 711, column: 28, scope: !3860)
!3908 = !DILocation(line: 711, column: 36, scope: !3860)
!3909 = !DILocation(line: 711, column: 10, scope: !3860)
!3910 = !DILocation(line: 711, column: 8, scope: !3860)
!3911 = !DILocation(line: 712, column: 2, scope: !3860)
!3912 = !DILocation(line: 712, column: 9, scope: !3860)
!3913 = !DILocation(line: 712, column: 14, scope: !3860)
!3914 = !DILocation(line: 713, column: 7, scope: !3860)
!3915 = !DILocation(line: 713, column: 12, scope: !3860)
!3916 = !DILocation(line: 713, column: 2, scope: !3860)
!3917 = !DILocation(line: 714, column: 10, scope: !3860)
!3918 = !DILocation(line: 714, column: 2, scope: !3860)
!3919 = !DILocation(line: 714, column: 19, scope: !3860)
!3920 = !DILocation(line: 714, column: 26, scope: !3860)
!3921 = !DILocation(line: 715, column: 22, scope: !3860)
!3922 = !DILocation(line: 715, column: 14, scope: !3860)
!3923 = !DILocation(line: 715, column: 2, scope: !3860)
!3924 = !DILocation(line: 717, column: 6, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 717, column: 6)
!3926 = !DILocation(line: 717, column: 11, scope: !3925)
!3927 = !DILocation(line: 717, column: 6, scope: !3860)
!3928 = !DILocation(line: 718, column: 14, scope: !3925)
!3929 = !DILocation(line: 718, column: 3, scope: !3925)
!3930 = !DILocation(line: 720, column: 2, scope: !3860)
!3931 = !DILocation(line: 721, column: 1, scope: !3860)
!3932 = distinct !DISubprogram(name: "autofs_dentry_release", scope: !3, file: !3, line: 109, type: !2922, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3933 = !{!3934, !3935, !3936}
!3934 = !DILocalVariable(name: "de", arg: 1, scope: !3932, file: !3, line: 109, type: !518)
!3935 = !DILocalVariable(name: "ino", scope: !3932, file: !3, line: 111, type: !3319)
!3936 = !DILocalVariable(name: "sbi", scope: !3932, file: !3, line: 112, type: !81)
!3937 = !DILocation(line: 109, column: 50, scope: !3932)
!3938 = !DILocation(line: 111, column: 2, scope: !3932)
!3939 = !DILocation(line: 111, column: 22, scope: !3932)
!3940 = !DILocation(line: 111, column: 46, scope: !3932)
!3941 = !DILocation(line: 111, column: 28, scope: !3932)
!3942 = !DILocation(line: 112, column: 2, scope: !3932)
!3943 = !DILocation(line: 112, column: 25, scope: !3932)
!3944 = !DILocation(line: 112, column: 42, scope: !3932)
!3945 = !DILocation(line: 112, column: 46, scope: !3932)
!3946 = !DILocation(line: 112, column: 31, scope: !3932)
!3947 = !DILocation(line: 114, column: 2, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 114, column: 2)
!3949 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 114, column: 2)
!3950 = !DILocation(line: 114, column: 2, scope: !3949)
!3951 = !DILocation(line: 116, column: 7, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 116, column: 6)
!3953 = !DILocation(line: 116, column: 6, scope: !3932)
!3954 = !DILocation(line: 117, column: 3, scope: !3952)
!3955 = !DILocation(line: 119, column: 6, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 119, column: 6)
!3957 = !DILocation(line: 119, column: 6, scope: !3932)
!3958 = !DILocation(line: 120, column: 14, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 119, column: 11)
!3960 = !DILocation(line: 120, column: 19, scope: !3959)
!3961 = !DILocation(line: 120, column: 3, scope: !3959)
!3962 = !DILocation(line: 121, column: 20, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 121, column: 7)
!3964 = !DILocation(line: 121, column: 25, scope: !3963)
!3965 = !DILocation(line: 121, column: 8, scope: !3963)
!3966 = !DILocation(line: 121, column: 7, scope: !3959)
!3967 = !DILocation(line: 122, column: 14, scope: !3963)
!3968 = !DILocation(line: 122, column: 19, scope: !3963)
!3969 = !DILocation(line: 122, column: 4, scope: !3963)
!3970 = !DILocation(line: 123, column: 20, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 123, column: 7)
!3972 = !DILocation(line: 123, column: 25, scope: !3971)
!3973 = !DILocation(line: 123, column: 8, scope: !3971)
!3974 = !DILocation(line: 123, column: 7, scope: !3959)
!3975 = !DILocation(line: 124, column: 14, scope: !3971)
!3976 = !DILocation(line: 124, column: 19, scope: !3971)
!3977 = !DILocation(line: 124, column: 4, scope: !3971)
!3978 = !DILocation(line: 125, column: 16, scope: !3959)
!3979 = !DILocation(line: 125, column: 21, scope: !3959)
!3980 = !DILocation(line: 125, column: 3, scope: !3959)
!3981 = !DILocation(line: 126, column: 2, scope: !3959)
!3982 = !DILocation(line: 128, column: 18, scope: !3932)
!3983 = !DILocation(line: 128, column: 2, scope: !3932)
!3984 = !DILocation(line: 129, column: 1, scope: !3932)
!3985 = distinct !DISubprogram(name: "autofs_d_automount", scope: !3, file: !3, line: 331, type: !2935, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992}
!3987 = !DILocalVariable(name: "path", arg: 1, scope: !3985, file: !3, line: 331, type: !2937)
!3988 = !DILocalVariable(name: "dentry", scope: !3985, file: !3, line: 333, type: !518)
!3989 = !DILocalVariable(name: "sbi", scope: !3985, file: !3, line: 334, type: !81)
!3990 = !DILocalVariable(name: "ino", scope: !3985, file: !3, line: 335, type: !3319)
!3991 = !DILocalVariable(name: "status", scope: !3985, file: !3, line: 336, type: !91)
!3992 = !DILabel(scope: !3985, name: "done", file: !3, line: 410)
!3993 = !DILocation(line: 331, column: 57, scope: !3985)
!3994 = !DILocation(line: 333, column: 2, scope: !3985)
!3995 = !DILocation(line: 333, column: 17, scope: !3985)
!3996 = !DILocation(line: 333, column: 26, scope: !3985)
!3997 = !DILocation(line: 333, column: 32, scope: !3985)
!3998 = !DILocation(line: 334, column: 2, scope: !3985)
!3999 = !DILocation(line: 334, column: 25, scope: !3985)
!4000 = !DILocation(line: 334, column: 42, scope: !3985)
!4001 = !DILocation(line: 334, column: 50, scope: !3985)
!4002 = !DILocation(line: 334, column: 31, scope: !3985)
!4003 = !DILocation(line: 335, column: 2, scope: !3985)
!4004 = !DILocation(line: 335, column: 22, scope: !3985)
!4005 = !DILocation(line: 335, column: 46, scope: !3985)
!4006 = !DILocation(line: 335, column: 28, scope: !3985)
!4007 = !DILocation(line: 336, column: 2, scope: !3985)
!4008 = !DILocation(line: 336, column: 6, scope: !3985)
!4009 = !DILocation(line: 338, column: 2, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 338, column: 2)
!4011 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 338, column: 2)
!4012 = !DILocation(line: 338, column: 2, scope: !4011)
!4013 = !DILocation(line: 341, column: 21, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 341, column: 6)
!4015 = !DILocation(line: 341, column: 6, scope: !4014)
!4016 = !DILocation(line: 341, column: 6, scope: !3985)
!4017 = !DILocation(line: 342, column: 3, scope: !4014)
!4018 = !DILocation(line: 352, column: 26, scope: !3985)
!4019 = !DILocation(line: 352, column: 11, scope: !3985)
!4020 = !DILocation(line: 352, column: 9, scope: !3985)
!4021 = !DILocation(line: 353, column: 6, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 353, column: 6)
!4023 = !DILocation(line: 353, column: 13, scope: !4022)
!4024 = !DILocation(line: 353, column: 16, scope: !4022)
!4025 = !DILocation(line: 353, column: 23, scope: !4022)
!4026 = !DILocation(line: 353, column: 6, scope: !3985)
!4027 = !DILocation(line: 354, column: 3, scope: !4022)
!4028 = !DILocation(line: 357, column: 13, scope: !3985)
!4029 = !DILocation(line: 357, column: 18, scope: !3985)
!4030 = !DILocation(line: 357, column: 2, scope: !3985)
!4031 = !DILocation(line: 358, column: 6, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 358, column: 6)
!4033 = !DILocation(line: 358, column: 11, scope: !4032)
!4034 = !DILocation(line: 358, column: 17, scope: !4032)
!4035 = !DILocation(line: 358, column: 6, scope: !3985)
!4036 = !DILocation(line: 359, column: 16, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 358, column: 39)
!4038 = !DILocation(line: 359, column: 21, scope: !4037)
!4039 = !DILocation(line: 359, column: 3, scope: !4037)
!4040 = !DILocation(line: 360, column: 30, scope: !4037)
!4041 = !DILocation(line: 360, column: 12, scope: !4037)
!4042 = !DILocation(line: 360, column: 10, scope: !4037)
!4043 = !DILocation(line: 361, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 361, column: 7)
!4045 = !DILocation(line: 361, column: 7, scope: !4037)
!4046 = !DILocation(line: 362, column: 19, scope: !4044)
!4047 = !DILocation(line: 362, column: 11, scope: !4044)
!4048 = !DILocation(line: 362, column: 4, scope: !4044)
!4049 = !DILocation(line: 363, column: 3, scope: !4037)
!4050 = !DILocation(line: 371, column: 27, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 371, column: 6)
!4052 = !DILocation(line: 371, column: 6, scope: !4051)
!4053 = !DILocation(line: 371, column: 35, scope: !4051)
!4054 = !DILocation(line: 371, column: 51, scope: !4051)
!4055 = !DILocation(line: 371, column: 38, scope: !4051)
!4056 = !DILocation(line: 371, column: 6, scope: !3985)
!4057 = !DILocation(line: 372, column: 16, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 371, column: 60)
!4059 = !DILocation(line: 372, column: 21, scope: !4058)
!4060 = !DILocation(line: 372, column: 3, scope: !4058)
!4061 = !DILocation(line: 373, column: 3, scope: !4058)
!4062 = !DILocation(line: 376, column: 26, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 376, column: 6)
!4064 = !DILocation(line: 376, column: 7, scope: !4063)
!4065 = !DILocation(line: 376, column: 6, scope: !3985)
!4066 = !DILocation(line: 388, column: 7, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 388, column: 7)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 376, column: 33)
!4069 = !DILocation(line: 388, column: 12, scope: !4067)
!4070 = !DILocation(line: 388, column: 20, scope: !4067)
!4071 = !DILocation(line: 388, column: 7, scope: !4068)
!4072 = !DILocation(line: 389, column: 27, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 389, column: 8)
!4074 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 388, column: 25)
!4075 = !DILocation(line: 389, column: 8, scope: !4073)
!4076 = !DILocation(line: 389, column: 8, scope: !4074)
!4077 = !DILocation(line: 390, column: 18, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 389, column: 34)
!4079 = !DILocation(line: 390, column: 23, scope: !4078)
!4080 = !DILocation(line: 390, column: 5, scope: !4078)
!4081 = !DILocation(line: 391, column: 5, scope: !4078)
!4082 = !DILocation(line: 393, column: 3, scope: !4074)
!4083 = !DILocation(line: 394, column: 22, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 394, column: 8)
!4085 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 393, column: 10)
!4086 = !DILocation(line: 394, column: 9, scope: !4084)
!4087 = !DILocation(line: 394, column: 8, scope: !4085)
!4088 = !DILocation(line: 395, column: 18, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 394, column: 28)
!4090 = !DILocation(line: 395, column: 23, scope: !4089)
!4091 = !DILocation(line: 395, column: 5, scope: !4089)
!4092 = !DILocation(line: 396, column: 5, scope: !4089)
!4093 = !DILocation(line: 399, column: 3, scope: !4068)
!4094 = !DILocation(line: 399, column: 8, scope: !4068)
!4095 = !DILocation(line: 399, column: 14, scope: !4068)
!4096 = !DILocation(line: 400, column: 16, scope: !4068)
!4097 = !DILocation(line: 400, column: 21, scope: !4068)
!4098 = !DILocation(line: 400, column: 3, scope: !4068)
!4099 = !DILocation(line: 401, column: 30, scope: !4068)
!4100 = !DILocation(line: 401, column: 12, scope: !4068)
!4101 = !DILocation(line: 401, column: 10, scope: !4068)
!4102 = !DILocation(line: 402, column: 14, scope: !4068)
!4103 = !DILocation(line: 402, column: 19, scope: !4068)
!4104 = !DILocation(line: 402, column: 3, scope: !4068)
!4105 = !DILocation(line: 403, column: 3, scope: !4068)
!4106 = !DILocation(line: 403, column: 8, scope: !4068)
!4107 = !DILocation(line: 403, column: 14, scope: !4068)
!4108 = !DILocation(line: 404, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 404, column: 7)
!4110 = !DILocation(line: 404, column: 7, scope: !4068)
!4111 = !DILocation(line: 405, column: 17, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 404, column: 15)
!4113 = !DILocation(line: 405, column: 22, scope: !4112)
!4114 = !DILocation(line: 405, column: 4, scope: !4112)
!4115 = !DILocation(line: 406, column: 19, scope: !4112)
!4116 = !DILocation(line: 406, column: 11, scope: !4112)
!4117 = !DILocation(line: 406, column: 4, scope: !4112)
!4118 = !DILocation(line: 408, column: 2, scope: !4068)
!4119 = !DILocation(line: 409, column: 15, scope: !3985)
!4120 = !DILocation(line: 409, column: 20, scope: !3985)
!4121 = !DILocation(line: 409, column: 2, scope: !3985)
!4122 = !DILocation(line: 410, column: 1, scope: !3985)
!4123 = !DILocation(line: 412, column: 37, scope: !3985)
!4124 = !DILocation(line: 412, column: 11, scope: !3985)
!4125 = !DILocation(line: 412, column: 9, scope: !3985)
!4126 = !DILocation(line: 413, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 413, column: 6)
!4128 = !DILocation(line: 413, column: 6, scope: !3985)
!4129 = !DILocation(line: 414, column: 10, scope: !4127)
!4130 = !DILocation(line: 414, column: 3, scope: !4127)
!4131 = !DILocation(line: 416, column: 2, scope: !3985)
!4132 = !DILocation(line: 417, column: 1, scope: !3985)
!4133 = distinct !DISubprogram(name: "autofs_d_manage", scope: !3, file: !3, line: 419, type: !2940, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4135 = !DILocalVariable(name: "path", arg: 1, scope: !4133, file: !3, line: 419, type: !681)
!4136 = !DILocalVariable(name: "rcu_walk", arg: 2, scope: !4133, file: !3, line: 419, type: !394)
!4137 = !DILocalVariable(name: "dentry", scope: !4133, file: !3, line: 421, type: !518)
!4138 = !DILocalVariable(name: "sbi", scope: !4133, file: !3, line: 422, type: !81)
!4139 = !DILocalVariable(name: "ino", scope: !4133, file: !3, line: 423, type: !3319)
!4140 = !DILocalVariable(name: "status", scope: !4133, file: !3, line: 424, type: !91)
!4141 = !DILocalVariable(name: "inode", scope: !4142, file: !3, line: 454, type: !558)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 447, column: 16)
!4143 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 447, column: 6)
!4144 = !DILocation(line: 419, column: 47, scope: !4133)
!4145 = !DILocation(line: 419, column: 58, scope: !4133)
!4146 = !DILocation(line: 421, column: 2, scope: !4133)
!4147 = !DILocation(line: 421, column: 17, scope: !4133)
!4148 = !DILocation(line: 421, column: 26, scope: !4133)
!4149 = !DILocation(line: 421, column: 32, scope: !4133)
!4150 = !DILocation(line: 422, column: 2, scope: !4133)
!4151 = !DILocation(line: 422, column: 25, scope: !4133)
!4152 = !DILocation(line: 422, column: 42, scope: !4133)
!4153 = !DILocation(line: 422, column: 50, scope: !4133)
!4154 = !DILocation(line: 422, column: 31, scope: !4133)
!4155 = !DILocation(line: 423, column: 2, scope: !4133)
!4156 = !DILocation(line: 423, column: 22, scope: !4133)
!4157 = !DILocation(line: 423, column: 46, scope: !4133)
!4158 = !DILocation(line: 423, column: 28, scope: !4133)
!4159 = !DILocation(line: 424, column: 2, scope: !4133)
!4160 = !DILocation(line: 424, column: 6, scope: !4133)
!4161 = !DILocation(line: 426, column: 2, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 426, column: 2)
!4163 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 426, column: 2)
!4164 = !DILocation(line: 426, column: 2, scope: !4163)
!4165 = !DILocation(line: 429, column: 21, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 429, column: 6)
!4167 = !DILocation(line: 429, column: 6, scope: !4166)
!4168 = !DILocation(line: 429, column: 6, scope: !4133)
!4169 = !DILocation(line: 430, column: 27, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 430, column: 7)
!4171 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 429, column: 27)
!4172 = !DILocation(line: 430, column: 8, scope: !4170)
!4173 = !DILocation(line: 430, column: 7, scope: !4171)
!4174 = !DILocation(line: 431, column: 4, scope: !4170)
!4175 = !DILocation(line: 432, column: 3, scope: !4171)
!4176 = !DILocation(line: 436, column: 21, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 436, column: 6)
!4178 = !DILocation(line: 436, column: 27, scope: !4177)
!4179 = !{i8 0, i8 2}
!4180 = !DILocation(line: 436, column: 6, scope: !4177)
!4181 = !DILocation(line: 436, column: 37, scope: !4177)
!4182 = !DILocation(line: 436, column: 6, scope: !4133)
!4183 = !DILocation(line: 437, column: 3, scope: !4177)
!4184 = !DILocation(line: 443, column: 29, scope: !4133)
!4185 = !DILocation(line: 443, column: 35, scope: !4133)
!4186 = !DILocation(line: 443, column: 11, scope: !4133)
!4187 = !DILocation(line: 443, column: 9, scope: !4133)
!4188 = !DILocation(line: 444, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 444, column: 6)
!4190 = !DILocation(line: 444, column: 6, scope: !4133)
!4191 = !DILocation(line: 445, column: 10, scope: !4189)
!4192 = !DILocation(line: 445, column: 3, scope: !4189)
!4193 = !DILocation(line: 447, column: 6, scope: !4143)
!4194 = !DILocation(line: 447, column: 6, scope: !4133)
!4195 = !DILocation(line: 454, column: 3, scope: !4142)
!4196 = !DILocation(line: 454, column: 17, scope: !4142)
!4197 = !DILocation(line: 456, column: 7, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 456, column: 7)
!4199 = !DILocation(line: 456, column: 12, scope: !4198)
!4200 = !DILocation(line: 456, column: 18, scope: !4198)
!4201 = !DILocation(line: 456, column: 7, scope: !4142)
!4202 = !DILocation(line: 457, column: 4, scope: !4198)
!4203 = !DILocation(line: 458, column: 26, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 458, column: 7)
!4205 = !DILocation(line: 458, column: 7, scope: !4204)
!4206 = !DILocation(line: 458, column: 7, scope: !4142)
!4207 = !DILocation(line: 459, column: 4, scope: !4204)
!4208 = !DILocation(line: 460, column: 23, scope: !4142)
!4209 = !DILocation(line: 460, column: 11, scope: !4142)
!4210 = !DILocation(line: 460, column: 9, scope: !4142)
!4211 = !DILocation(line: 461, column: 7, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 461, column: 7)
!4213 = !DILocation(line: 461, column: 13, scope: !4212)
!4214 = !DILocation(line: 461, column: 16, scope: !4212)
!4215 = !DILocation(line: 461, column: 7, scope: !4142)
!4216 = !DILocation(line: 462, column: 4, scope: !4212)
!4217 = !DILocation(line: 463, column: 21, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 463, column: 7)
!4219 = !DILocation(line: 463, column: 8, scope: !4218)
!4220 = !DILocation(line: 463, column: 7, scope: !4142)
!4221 = !DILocation(line: 464, column: 4, scope: !4218)
!4222 = !DILocation(line: 465, column: 3, scope: !4142)
!4223 = !DILocation(line: 466, column: 2, scope: !4143)
!4224 = !DILocation(line: 468, column: 13, scope: !4133)
!4225 = !DILocation(line: 468, column: 18, scope: !4133)
!4226 = !DILocation(line: 468, column: 2, scope: !4133)
!4227 = !DILocation(line: 476, column: 8, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 476, column: 6)
!4229 = !DILocation(line: 476, column: 13, scope: !4228)
!4230 = !DILocation(line: 476, column: 19, scope: !4228)
!4231 = !DILocation(line: 476, column: 6, scope: !4133)
!4232 = !DILocation(line: 483, column: 28, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 483, column: 7)
!4234 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 476, column: 43)
!4235 = !DILocation(line: 483, column: 9, scope: !4233)
!4236 = !DILocation(line: 483, column: 34, scope: !4233)
!4237 = !DILocation(line: 483, column: 51, scope: !4233)
!4238 = !DILocation(line: 483, column: 38, scope: !4233)
!4239 = !DILocation(line: 483, column: 57, scope: !4233)
!4240 = !DILocation(line: 484, column: 29, scope: !4233)
!4241 = !DILocation(line: 484, column: 8, scope: !4233)
!4242 = !DILocation(line: 484, column: 37, scope: !4233)
!4243 = !DILocation(line: 484, column: 53, scope: !4233)
!4244 = !DILocation(line: 484, column: 40, scope: !4233)
!4245 = !DILocation(line: 483, column: 7, scope: !4234)
!4246 = !DILocation(line: 485, column: 11, scope: !4233)
!4247 = !DILocation(line: 485, column: 4, scope: !4233)
!4248 = !DILocation(line: 486, column: 2, scope: !4234)
!4249 = !DILocation(line: 487, column: 15, scope: !4133)
!4250 = !DILocation(line: 487, column: 20, scope: !4133)
!4251 = !DILocation(line: 487, column: 2, scope: !4133)
!4252 = !DILocation(line: 489, column: 9, scope: !4133)
!4253 = !DILocation(line: 489, column: 2, scope: !4133)
!4254 = !DILocation(line: 490, column: 1, scope: !4133)
!4255 = distinct !DISubprogram(name: "is_autofs_dentry", scope: !3, file: !3, line: 843, type: !2918, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4256)
!4256 = !{!4257}
!4257 = !DILocalVariable(name: "dentry", arg: 1, scope: !4255, file: !3, line: 843, type: !518)
!4258 = !DILocation(line: 843, column: 37, scope: !4255)
!4259 = !DILocation(line: 845, column: 9, scope: !4255)
!4260 = !DILocation(line: 845, column: 16, scope: !4255)
!4261 = !DILocation(line: 845, column: 40, scope: !4255)
!4262 = !DILocation(line: 845, column: 19, scope: !4255)
!4263 = !DILocation(line: 845, column: 48, scope: !4255)
!4264 = !DILocation(line: 846, column: 3, scope: !4255)
!4265 = !DILocation(line: 846, column: 11, scope: !4255)
!4266 = !DILocation(line: 846, column: 16, scope: !4255)
!4267 = !DILocation(line: 846, column: 45, scope: !4255)
!4268 = !DILocation(line: 847, column: 3, scope: !4255)
!4269 = !DILocation(line: 847, column: 11, scope: !4255)
!4270 = !DILocation(line: 847, column: 20, scope: !4255)
!4271 = !DILocation(line: 0, scope: !4255)
!4272 = !DILocation(line: 845, column: 2, scope: !4255)
!4273 = distinct !DISubprogram(name: "d_really_is_positive", scope: !520, file: !520, line: 482, type: !4274, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!394, !2903}
!4276 = !{!4277}
!4277 = !DILocalVariable(name: "dentry", arg: 1, scope: !4273, file: !520, line: 482, type: !2903)
!4278 = !DILocation(line: 482, column: 62, scope: !4273)
!4279 = !DILocation(line: 484, column: 9, scope: !4273)
!4280 = !DILocation(line: 484, column: 17, scope: !4273)
!4281 = !DILocation(line: 484, column: 25, scope: !4273)
!4282 = !DILocation(line: 484, column: 2, scope: !4273)
!4283 = distinct !DISubprogram(name: "autofs_sbi", scope: !83, file: !83, line: 129, type: !4284, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!81, !771}
!4286 = !{!4287}
!4287 = !DILocalVariable(name: "sb", arg: 1, scope: !4283, file: !83, line: 129, type: !771)
!4288 = !DILocation(line: 129, column: 69, scope: !4283)
!4289 = !DILocation(line: 131, column: 35, scope: !4283)
!4290 = !DILocation(line: 131, column: 39, scope: !4283)
!4291 = !DILocation(line: 131, column: 2, scope: !4283)
!4292 = distinct !DISubprogram(name: "autofs_dentry_ino", scope: !83, file: !83, line: 134, type: !4293, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!3319, !518}
!4295 = !{!4296}
!4296 = !DILocalVariable(name: "dentry", arg: 1, scope: !4292, file: !83, line: 134, type: !518)
!4297 = !DILocation(line: 134, column: 68, scope: !4292)
!4298 = !DILocation(line: 136, column: 32, scope: !4292)
!4299 = !DILocation(line: 136, column: 40, scope: !4292)
!4300 = !DILocation(line: 136, column: 2, scope: !4292)
!4301 = distinct !DISubprogram(name: "autofs_oz_mode", scope: !83, file: !83, line: 143, type: !4302, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!91, !81}
!4304 = !{!4305}
!4305 = !DILocalVariable(name: "sbi", arg: 1, scope: !4301, file: !83, line: 143, type: !81)
!4306 = !DILocation(line: 143, column: 57, scope: !4301)
!4307 = !DILocation(line: 145, column: 11, scope: !4301)
!4308 = !DILocation(line: 145, column: 16, scope: !4301)
!4309 = !DILocation(line: 145, column: 22, scope: !4301)
!4310 = !DILocation(line: 145, column: 46, scope: !4301)
!4311 = !DILocation(line: 146, column: 14, scope: !4301)
!4312 = !DILocation(line: 146, column: 4, scope: !4301)
!4313 = !DILocation(line: 146, column: 26, scope: !4301)
!4314 = !DILocation(line: 146, column: 31, scope: !4301)
!4315 = !DILocation(line: 146, column: 23, scope: !4301)
!4316 = !DILocation(line: 145, column: 2, scope: !4301)
!4317 = distinct !DISubprogram(name: "spin_lock", scope: !4318, file: !4318, line: 349, type: !4319, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4322)
!4318 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!4322 = !{!4323}
!4323 = !DILocalVariable(name: "lock", arg: 1, scope: !4317, file: !4318, line: 349, type: !4321)
!4324 = !DILocation(line: 349, column: 51, scope: !4317)
!4325 = !DILocation(line: 351, column: 2, scope: !4317)
!4326 = !DILocation(line: 352, column: 1, scope: !4317)
!4327 = !DISubprogram(name: "path_is_mountpoint", scope: !515, file: !515, line: 110, type: !4328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!394, !681}
!4330 = distinct !DISubprogram(name: "autofs_empty", scope: !83, file: !83, line: 149, type: !4331, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!394, !3319}
!4333 = !{!4334}
!4334 = !DILocalVariable(name: "ino", arg: 1, scope: !4330, file: !83, line: 149, type: !3319)
!4335 = !DILocation(line: 149, column: 53, scope: !4330)
!4336 = !DILocation(line: 151, column: 9, scope: !4330)
!4337 = !DILocation(line: 151, column: 14, scope: !4330)
!4338 = !DILocation(line: 151, column: 20, scope: !4330)
!4339 = !DILocation(line: 151, column: 2, scope: !4330)
!4340 = distinct !DISubprogram(name: "spin_unlock", scope: !4318, file: !4318, line: 389, type: !4319, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4341)
!4341 = !{!4342}
!4342 = !DILocalVariable(name: "lock", arg: 1, scope: !4340, file: !4318, line: 389, type: !4321)
!4343 = !DILocation(line: 389, column: 53, scope: !4340)
!4344 = !DILocation(line: 391, column: 2, scope: !4340)
!4345 = !DILocation(line: 392, column: 1, scope: !4340)
!4346 = distinct !DISubprogram(name: "task_pgrp", scope: !1799, file: !1799, line: 692, type: !4347, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!219, !1185}
!4349 = !{!4350}
!4350 = !DILocalVariable(name: "task", arg: 1, scope: !4346, file: !1799, line: 692, type: !1185)
!4351 = !DILocation(line: 692, column: 57, scope: !4346)
!4352 = !DILocation(line: 694, column: 9, scope: !4346)
!4353 = !DILocation(line: 694, column: 15, scope: !4346)
!4354 = !DILocation(line: 694, column: 23, scope: !4346)
!4355 = !DILocation(line: 694, column: 2, scope: !4346)
!4356 = distinct !DISubprogram(name: "get_current", scope: !4357, file: !4357, line: 39, type: !4358, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4360)
!4357 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!1185}
!4360 = !{!4361, !4363, !4367}
!4361 = !DILocalVariable(name: "pscr_ret__", scope: !4362, file: !4357, line: 41, type: !1185)
!4362 = distinct !DILexicalBlock(scope: !4356, file: !4357, line: 41, column: 9)
!4363 = !DILocalVariable(name: "__vpp_verify", scope: !4364, file: !4357, line: 41, type: !4365)
!4364 = distinct !DILexicalBlock(scope: !4362, file: !4357, line: 41, column: 9)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4367 = !DILocalVariable(name: "pfo_val__", scope: !4368, file: !4357, line: 41, type: !301)
!4368 = distinct !DILexicalBlock(scope: !4362, file: !4357, line: 41, column: 9)
!4369 = !DILocation(line: 41, column: 9, scope: !4362)
!4370 = !DILocation(line: 41, column: 9, scope: !4364)
!4371 = !DILocation(line: 41, column: 9, scope: !4368)
!4372 = !{i64 2148481001}
!4373 = !DILocation(line: 41, column: 9, scope: !4356)
!4374 = !DILocation(line: 41, column: 2, scope: !4356)
!4375 = !DISubprogram(name: "_raw_spin_lock", scope: !4376, file: !4376, line: 22, type: !4377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4376 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!4380 = !DISubprogram(name: "_raw_spin_unlock", scope: !4376, file: !4376, line: 39, type: !4377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4381 = distinct !DISubprogram(name: "list_empty", scope: !4382, file: !4382, line: 371, type: !4383, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4387)
!4382 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!91, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4387 = !{!4388}
!4388 = !DILocalVariable(name: "head", arg: 1, scope: !4381, file: !4382, line: 371, type: !4385)
!4389 = !DILocation(line: 371, column: 54, scope: !4381)
!4390 = !DILocation(line: 373, column: 9, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4381, file: !4382, line: 373, column: 9)
!4392 = !DILocation(line: 373, column: 9, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4391, file: !4382, line: 373, column: 9)
!4394 = !DILocation(line: 373, column: 34, scope: !4381)
!4395 = !DILocation(line: 373, column: 31, scope: !4381)
!4396 = !DILocation(line: 373, column: 2, scope: !4381)
!4397 = distinct !DISubprogram(name: "list_del", scope: !4382, file: !4382, line: 227, type: !4398, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4400)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{null, !185}
!4400 = !{!4401}
!4401 = !DILocalVariable(name: "entry", arg: 1, scope: !4397, file: !4382, line: 227, type: !185)
!4402 = !DILocation(line: 227, column: 47, scope: !4397)
!4403 = !DILocation(line: 229, column: 19, scope: !4397)
!4404 = !DILocation(line: 229, column: 2, scope: !4397)
!4405 = !DILocation(line: 230, column: 2, scope: !4397)
!4406 = !DILocation(line: 230, column: 9, scope: !4397)
!4407 = !DILocation(line: 230, column: 14, scope: !4397)
!4408 = !DILocation(line: 231, column: 2, scope: !4397)
!4409 = !DILocation(line: 231, column: 9, scope: !4397)
!4410 = !DILocation(line: 231, column: 14, scope: !4397)
!4411 = !DILocation(line: 232, column: 1, scope: !4397)
!4412 = !DISubprogram(name: "autofs_free_ino", scope: !83, file: !83, line: 155, type: !4413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !3319}
!4415 = distinct !DISubprogram(name: "__list_del_entry", scope: !4382, file: !4382, line: 213, type: !4398, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4416)
!4416 = !{!4417}
!4417 = !DILocalVariable(name: "entry", arg: 1, scope: !4415, file: !4382, line: 213, type: !185)
!4418 = !DILocation(line: 213, column: 55, scope: !4415)
!4419 = !DILocation(line: 215, column: 30, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4415, file: !4382, line: 215, column: 6)
!4421 = !DILocation(line: 215, column: 7, scope: !4420)
!4422 = !DILocation(line: 215, column: 6, scope: !4415)
!4423 = !DILocation(line: 216, column: 3, scope: !4420)
!4424 = !DILocation(line: 218, column: 13, scope: !4415)
!4425 = !DILocation(line: 218, column: 20, scope: !4415)
!4426 = !DILocation(line: 218, column: 26, scope: !4415)
!4427 = !DILocation(line: 218, column: 33, scope: !4415)
!4428 = !DILocation(line: 218, column: 2, scope: !4415)
!4429 = !DILocation(line: 219, column: 1, scope: !4415)
!4430 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4382, file: !4382, line: 134, type: !4431, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!394, !185}
!4433 = !{!4434}
!4434 = !DILocalVariable(name: "entry", arg: 1, scope: !4430, file: !4382, line: 134, type: !185)
!4435 = !DILocation(line: 134, column: 61, scope: !4430)
!4436 = !DILocation(line: 136, column: 2, scope: !4430)
!4437 = distinct !DISubprogram(name: "__list_del", scope: !4382, file: !4382, line: 193, type: !4438, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4440)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !185, !185}
!4440 = !{!4441, !4442}
!4441 = !DILocalVariable(name: "prev", arg: 1, scope: !4437, file: !4382, line: 193, type: !185)
!4442 = !DILocalVariable(name: "next", arg: 2, scope: !4437, file: !4382, line: 193, type: !185)
!4443 = !DILocation(line: 193, column: 50, scope: !4437)
!4444 = !DILocation(line: 193, column: 75, scope: !4437)
!4445 = !DILocation(line: 195, column: 15, scope: !4437)
!4446 = !DILocation(line: 195, column: 2, scope: !4437)
!4447 = !DILocation(line: 195, column: 8, scope: !4437)
!4448 = !DILocation(line: 195, column: 13, scope: !4437)
!4449 = !DILocation(line: 196, column: 2, scope: !4437)
!4450 = !DILocation(line: 196, column: 2, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4437, file: !4382, line: 196, column: 2)
!4452 = !DILocation(line: 196, column: 2, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4451, file: !4382, line: 196, column: 2)
!4454 = !DILocation(line: 196, column: 2, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !4382, line: 196, column: 2)
!4456 = !DILocation(line: 197, column: 1, scope: !4437)
!4457 = distinct !DISubprogram(name: "do_expire_wait", scope: !3, file: !3, line: 265, type: !2940, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4458)
!4458 = !{!4459, !4460, !4461, !4462, !4463}
!4459 = !DILocalVariable(name: "path", arg: 1, scope: !4457, file: !3, line: 265, type: !681)
!4460 = !DILocalVariable(name: "rcu_walk", arg: 2, scope: !4457, file: !3, line: 265, type: !394)
!4461 = !DILocalVariable(name: "dentry", scope: !4457, file: !3, line: 267, type: !518)
!4462 = !DILocalVariable(name: "expiring", scope: !4457, file: !3, line: 268, type: !518)
!4463 = !DILocalVariable(name: "this", scope: !4464, file: !3, line: 276, type: !682)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 275, column: 7)
!4465 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 273, column: 6)
!4466 = !DILocation(line: 265, column: 46, scope: !4457)
!4467 = !DILocation(line: 265, column: 57, scope: !4457)
!4468 = !DILocation(line: 267, column: 2, scope: !4457)
!4469 = !DILocation(line: 267, column: 17, scope: !4457)
!4470 = !DILocation(line: 267, column: 26, scope: !4457)
!4471 = !DILocation(line: 267, column: 32, scope: !4457)
!4472 = !DILocation(line: 268, column: 2, scope: !4457)
!4473 = !DILocation(line: 268, column: 17, scope: !4457)
!4474 = !DILocation(line: 270, column: 36, scope: !4457)
!4475 = !DILocation(line: 270, column: 44, scope: !4457)
!4476 = !DILocation(line: 270, column: 13, scope: !4457)
!4477 = !DILocation(line: 270, column: 11, scope: !4457)
!4478 = !DILocation(line: 271, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 271, column: 6)
!4480 = !DILocation(line: 271, column: 6, scope: !4479)
!4481 = !DILocation(line: 271, column: 6, scope: !4457)
!4482 = !DILocation(line: 272, column: 18, scope: !4479)
!4483 = !DILocation(line: 272, column: 10, scope: !4479)
!4484 = !DILocation(line: 272, column: 3, scope: !4479)
!4485 = !DILocation(line: 273, column: 7, scope: !4465)
!4486 = !DILocation(line: 273, column: 6, scope: !4457)
!4487 = !DILocation(line: 274, column: 29, scope: !4465)
!4488 = !DILocation(line: 274, column: 35, scope: !4465)
!4489 = !DILocation(line: 274, column: 10, scope: !4465)
!4490 = !DILocation(line: 274, column: 3, scope: !4465)
!4491 = !DILocation(line: 276, column: 3, scope: !4464)
!4492 = !DILocation(line: 276, column: 21, scope: !4464)
!4493 = !DILocation(line: 276, column: 28, scope: !4464)
!4494 = !DILocation(line: 276, column: 37, scope: !4464)
!4495 = !DILocation(line: 276, column: 43, scope: !4464)
!4496 = !DILocation(line: 276, column: 58, scope: !4464)
!4497 = !DILocation(line: 282, column: 3, scope: !4464)
!4498 = !DILocation(line: 283, column: 23, scope: !4464)
!4499 = !DILocation(line: 283, column: 3, scope: !4464)
!4500 = !DILocation(line: 284, column: 8, scope: !4464)
!4501 = !DILocation(line: 284, column: 3, scope: !4464)
!4502 = !DILocation(line: 285, column: 2, scope: !4465)
!4503 = !DILocation(line: 286, column: 2, scope: !4457)
!4504 = !DILocation(line: 287, column: 1, scope: !4457)
!4505 = distinct !DISubprogram(name: "autofs_mount_wait", scope: !3, file: !3, line: 245, type: !2940, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4506)
!4506 = !{!4507, !4508, !4509, !4510, !4511}
!4507 = !DILocalVariable(name: "path", arg: 1, scope: !4505, file: !3, line: 245, type: !681)
!4508 = !DILocalVariable(name: "rcu_walk", arg: 2, scope: !4505, file: !3, line: 245, type: !394)
!4509 = !DILocalVariable(name: "sbi", scope: !4505, file: !3, line: 247, type: !81)
!4510 = !DILocalVariable(name: "ino", scope: !4505, file: !3, line: 248, type: !3319)
!4511 = !DILocalVariable(name: "status", scope: !4505, file: !3, line: 249, type: !91)
!4512 = !DILocation(line: 245, column: 49, scope: !4505)
!4513 = !DILocation(line: 245, column: 60, scope: !4505)
!4514 = !DILocation(line: 247, column: 2, scope: !4505)
!4515 = !DILocation(line: 247, column: 25, scope: !4505)
!4516 = !DILocation(line: 247, column: 42, scope: !4505)
!4517 = !DILocation(line: 247, column: 48, scope: !4505)
!4518 = !DILocation(line: 247, column: 56, scope: !4505)
!4519 = !DILocation(line: 247, column: 31, scope: !4505)
!4520 = !DILocation(line: 248, column: 2, scope: !4505)
!4521 = !DILocation(line: 248, column: 22, scope: !4505)
!4522 = !DILocation(line: 248, column: 46, scope: !4505)
!4523 = !DILocation(line: 248, column: 52, scope: !4505)
!4524 = !DILocation(line: 248, column: 28, scope: !4505)
!4525 = !DILocation(line: 249, column: 2, scope: !4505)
!4526 = !DILocation(line: 249, column: 6, scope: !4505)
!4527 = !DILocation(line: 251, column: 6, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 251, column: 6)
!4529 = !DILocation(line: 251, column: 11, scope: !4528)
!4530 = !DILocation(line: 251, column: 17, scope: !4528)
!4531 = !DILocation(line: 251, column: 6, scope: !4505)
!4532 = !DILocation(line: 252, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 252, column: 7)
!4534 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 251, column: 39)
!4535 = !DILocation(line: 252, column: 7, scope: !4534)
!4536 = !DILocation(line: 253, column: 4, scope: !4533)
!4537 = !DILocation(line: 254, column: 3, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 254, column: 3)
!4539 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 254, column: 3)
!4540 = !DILocation(line: 254, column: 3, scope: !4539)
!4541 = !DILocation(line: 255, column: 24, scope: !4534)
!4542 = !DILocation(line: 255, column: 29, scope: !4534)
!4543 = !DILocation(line: 255, column: 12, scope: !4534)
!4544 = !DILocation(line: 255, column: 10, scope: !4534)
!4545 = !DILocation(line: 256, column: 3, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 256, column: 3)
!4547 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 256, column: 3)
!4548 = !DILocation(line: 256, column: 3, scope: !4547)
!4549 = !DILocation(line: 257, column: 20, scope: !4534)
!4550 = !DILocation(line: 257, column: 3, scope: !4534)
!4551 = !DILocation(line: 257, column: 8, scope: !4534)
!4552 = !DILocation(line: 257, column: 18, scope: !4534)
!4553 = !DILocation(line: 258, column: 10, scope: !4534)
!4554 = !DILocation(line: 258, column: 3, scope: !4534)
!4555 = !DILocation(line: 260, column: 8, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 260, column: 6)
!4557 = !DILocation(line: 260, column: 13, scope: !4556)
!4558 = !DILocation(line: 260, column: 19, scope: !4556)
!4559 = !DILocation(line: 260, column: 6, scope: !4505)
!4560 = !DILocation(line: 261, column: 20, scope: !4556)
!4561 = !DILocation(line: 261, column: 3, scope: !4556)
!4562 = !DILocation(line: 261, column: 8, scope: !4556)
!4563 = !DILocation(line: 261, column: 18, scope: !4556)
!4564 = !DILocation(line: 262, column: 9, scope: !4505)
!4565 = !DILocation(line: 262, column: 2, scope: !4505)
!4566 = !DILocation(line: 263, column: 1, scope: !4505)
!4567 = distinct !DISubprogram(name: "ERR_PTR", scope: !4568, file: !4568, line: 39, type: !4569, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4571)
!4568 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!80, !673}
!4571 = !{!4572}
!4572 = !DILocalVariable(name: "error", arg: 1, scope: !4567, file: !4568, line: 39, type: !673)
!4573 = !DILocation(line: 39, column: 48, scope: !4567)
!4574 = !DILocation(line: 41, column: 18, scope: !4567)
!4575 = !DILocation(line: 41, column: 9, scope: !4567)
!4576 = !DILocation(line: 41, column: 2, scope: !4567)
!4577 = distinct !DISubprogram(name: "d_is_symlink", scope: !520, file: !520, line: 413, type: !4274, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4578)
!4578 = !{!4579}
!4579 = !DILocalVariable(name: "dentry", arg: 1, scope: !4577, file: !520, line: 413, type: !2903)
!4580 = !DILocation(line: 413, column: 54, scope: !4577)
!4581 = !DILocation(line: 415, column: 24, scope: !4577)
!4582 = !DILocation(line: 415, column: 9, scope: !4577)
!4583 = !DILocation(line: 415, column: 32, scope: !4577)
!4584 = !DILocation(line: 415, column: 2, scope: !4577)
!4585 = !DISubprogram(name: "path_has_submounts", scope: !520, file: !520, line: 262, type: !4586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!91, !681}
!4588 = distinct !DISubprogram(name: "autofs_mountpoint_changed", scope: !3, file: !3, line: 289, type: !4589, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4591)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!518, !2937}
!4591 = !{!4592, !4593, !4594, !4595, !4598, !4599}
!4592 = !DILocalVariable(name: "path", arg: 1, scope: !4588, file: !3, line: 289, type: !2937)
!4593 = !DILocalVariable(name: "dentry", scope: !4588, file: !3, line: 291, type: !518)
!4594 = !DILocalVariable(name: "sbi", scope: !4588, file: !3, line: 292, type: !81)
!4595 = !DILocalVariable(name: "parent", scope: !4596, file: !3, line: 316, type: !518)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 315, column: 61)
!4597 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 315, column: 6)
!4598 = !DILocalVariable(name: "ino", scope: !4596, file: !3, line: 317, type: !3319)
!4599 = !DILocalVariable(name: "new", scope: !4596, file: !3, line: 318, type: !518)
!4600 = !DILocation(line: 289, column: 62, scope: !4588)
!4601 = !DILocation(line: 291, column: 2, scope: !4588)
!4602 = !DILocation(line: 291, column: 17, scope: !4588)
!4603 = !DILocation(line: 291, column: 26, scope: !4588)
!4604 = !DILocation(line: 291, column: 32, scope: !4588)
!4605 = !DILocation(line: 292, column: 2, scope: !4588)
!4606 = !DILocation(line: 292, column: 25, scope: !4588)
!4607 = !DILocation(line: 292, column: 42, scope: !4588)
!4608 = !DILocation(line: 292, column: 50, scope: !4588)
!4609 = !DILocation(line: 292, column: 31, scope: !4588)
!4610 = !DILocation(line: 315, column: 27, scope: !4597)
!4611 = !DILocation(line: 315, column: 32, scope: !4597)
!4612 = !DILocation(line: 315, column: 6, scope: !4597)
!4613 = !DILocation(line: 315, column: 38, scope: !4597)
!4614 = !DILocation(line: 315, column: 52, scope: !4597)
!4615 = !DILocation(line: 315, column: 41, scope: !4597)
!4616 = !DILocation(line: 315, column: 6, scope: !4588)
!4617 = !DILocation(line: 316, column: 3, scope: !4596)
!4618 = !DILocation(line: 316, column: 18, scope: !4596)
!4619 = !DILocation(line: 316, column: 27, scope: !4596)
!4620 = !DILocation(line: 316, column: 35, scope: !4596)
!4621 = !DILocation(line: 317, column: 3, scope: !4596)
!4622 = !DILocation(line: 317, column: 23, scope: !4596)
!4623 = !DILocation(line: 318, column: 3, scope: !4596)
!4624 = !DILocation(line: 318, column: 18, scope: !4596)
!4625 = !DILocation(line: 320, column: 18, scope: !4596)
!4626 = !DILocation(line: 320, column: 27, scope: !4596)
!4627 = !DILocation(line: 320, column: 35, scope: !4596)
!4628 = !DILocation(line: 320, column: 9, scope: !4596)
!4629 = !DILocation(line: 320, column: 7, scope: !4596)
!4630 = !DILocation(line: 321, column: 8, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 321, column: 7)
!4632 = !DILocation(line: 321, column: 7, scope: !4596)
!4633 = !DILocation(line: 322, column: 4, scope: !4631)
!4634 = !DILocation(line: 323, column: 27, scope: !4596)
!4635 = !DILocation(line: 323, column: 9, scope: !4596)
!4636 = !DILocation(line: 323, column: 7, scope: !4596)
!4637 = !DILocation(line: 324, column: 20, scope: !4596)
!4638 = !DILocation(line: 324, column: 3, scope: !4596)
!4639 = !DILocation(line: 324, column: 8, scope: !4596)
!4640 = !DILocation(line: 324, column: 18, scope: !4596)
!4641 = !DILocation(line: 325, column: 8, scope: !4596)
!4642 = !DILocation(line: 325, column: 14, scope: !4596)
!4643 = !DILocation(line: 325, column: 3, scope: !4596)
!4644 = !DILocation(line: 326, column: 18, scope: !4596)
!4645 = !DILocation(line: 326, column: 3, scope: !4596)
!4646 = !DILocation(line: 326, column: 9, scope: !4596)
!4647 = !DILocation(line: 326, column: 16, scope: !4596)
!4648 = !DILocation(line: 327, column: 2, scope: !4597)
!4649 = !DILocation(line: 327, column: 2, scope: !4596)
!4650 = !DILocation(line: 328, column: 9, scope: !4588)
!4651 = !DILocation(line: 328, column: 15, scope: !4588)
!4652 = !DILocation(line: 328, column: 2, scope: !4588)
!4653 = !DILocation(line: 329, column: 1, scope: !4588)
!4654 = distinct !DISubprogram(name: "autofs_lookup_expiring", scope: !3, file: !3, line: 185, type: !4655, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!518, !518, !394}
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4672, !4673, !4674, !4676}
!4658 = !DILocalVariable(name: "dentry", arg: 1, scope: !4654, file: !3, line: 185, type: !518)
!4659 = !DILocalVariable(name: "rcu_walk", arg: 2, scope: !4654, file: !3, line: 186, type: !394)
!4660 = !DILocalVariable(name: "sbi", scope: !4654, file: !3, line: 188, type: !81)
!4661 = !DILocalVariable(name: "parent", scope: !4654, file: !3, line: 189, type: !518)
!4662 = !DILocalVariable(name: "name", scope: !4654, file: !3, line: 190, type: !2910)
!4663 = !DILocalVariable(name: "len", scope: !4654, file: !3, line: 191, type: !7)
!4664 = !DILocalVariable(name: "hash", scope: !4654, file: !3, line: 192, type: !7)
!4665 = !DILocalVariable(name: "str", scope: !4654, file: !3, line: 193, type: !555)
!4666 = !DILocalVariable(name: "p", scope: !4654, file: !3, line: 194, type: !185)
!4667 = !DILocalVariable(name: "head", scope: !4654, file: !3, line: 194, type: !185)
!4668 = !DILocalVariable(name: "ino", scope: !4669, file: !3, line: 201, type: !3319)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 200, column: 25)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 200, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 200, column: 2)
!4672 = !DILocalVariable(name: "expiring", scope: !4669, file: !3, line: 202, type: !518)
!4673 = !DILocalVariable(name: "qstr", scope: !4669, file: !3, line: 203, type: !2910)
!4674 = !DILocalVariable(name: "__mptr", scope: !4675, file: !3, line: 210, type: !80)
!4675 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 210, column: 9)
!4676 = !DILabel(scope: !4669, name: "next", file: !3, line: 237)
!4677 = !DILocation(line: 185, column: 61, scope: !4654)
!4678 = !DILocation(line: 186, column: 16, scope: !4654)
!4679 = !DILocation(line: 188, column: 2, scope: !4654)
!4680 = !DILocation(line: 188, column: 25, scope: !4654)
!4681 = !DILocation(line: 188, column: 42, scope: !4654)
!4682 = !DILocation(line: 188, column: 50, scope: !4654)
!4683 = !DILocation(line: 188, column: 31, scope: !4654)
!4684 = !DILocation(line: 189, column: 2, scope: !4654)
!4685 = !DILocation(line: 189, column: 17, scope: !4654)
!4686 = !DILocation(line: 189, column: 26, scope: !4654)
!4687 = !DILocation(line: 189, column: 34, scope: !4654)
!4688 = !DILocation(line: 190, column: 2, scope: !4654)
!4689 = !DILocation(line: 190, column: 21, scope: !4654)
!4690 = !DILocation(line: 190, column: 29, scope: !4654)
!4691 = !DILocation(line: 190, column: 37, scope: !4654)
!4692 = !DILocation(line: 191, column: 2, scope: !4654)
!4693 = !DILocation(line: 191, column: 15, scope: !4654)
!4694 = !DILocation(line: 191, column: 21, scope: !4654)
!4695 = !DILocation(line: 191, column: 27, scope: !4654)
!4696 = !DILocation(line: 192, column: 2, scope: !4654)
!4697 = !DILocation(line: 192, column: 15, scope: !4654)
!4698 = !DILocation(line: 192, column: 22, scope: !4654)
!4699 = !DILocation(line: 192, column: 28, scope: !4654)
!4700 = !DILocation(line: 193, column: 2, scope: !4654)
!4701 = !DILocation(line: 193, column: 23, scope: !4654)
!4702 = !DILocation(line: 193, column: 29, scope: !4654)
!4703 = !DILocation(line: 193, column: 35, scope: !4654)
!4704 = !DILocation(line: 194, column: 2, scope: !4654)
!4705 = !DILocation(line: 194, column: 20, scope: !4654)
!4706 = !DILocation(line: 194, column: 24, scope: !4654)
!4707 = !DILocation(line: 196, column: 10, scope: !4654)
!4708 = !DILocation(line: 196, column: 15, scope: !4654)
!4709 = !DILocation(line: 196, column: 7, scope: !4654)
!4710 = !DILocation(line: 197, column: 17, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 197, column: 6)
!4712 = !DILocation(line: 197, column: 6, scope: !4711)
!4713 = !DILocation(line: 197, column: 6, scope: !4654)
!4714 = !DILocation(line: 198, column: 3, scope: !4711)
!4715 = !DILocation(line: 199, column: 13, scope: !4654)
!4716 = !DILocation(line: 199, column: 18, scope: !4654)
!4717 = !DILocation(line: 199, column: 2, scope: !4654)
!4718 = !DILocation(line: 200, column: 2, scope: !4671)
!4719 = !DILocation(line: 200, column: 2, scope: !4670)
!4720 = !DILocation(line: 201, column: 3, scope: !4669)
!4721 = !DILocation(line: 201, column: 23, scope: !4669)
!4722 = !DILocation(line: 202, column: 3, scope: !4669)
!4723 = !DILocation(line: 202, column: 18, scope: !4669)
!4724 = !DILocation(line: 203, column: 3, scope: !4669)
!4725 = !DILocation(line: 203, column: 22, scope: !4669)
!4726 = !DILocation(line: 205, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 205, column: 7)
!4728 = !DILocation(line: 205, column: 7, scope: !4669)
!4729 = !DILocation(line: 206, column: 17, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 205, column: 17)
!4731 = !DILocation(line: 206, column: 22, scope: !4730)
!4732 = !DILocation(line: 206, column: 4, scope: !4730)
!4733 = !DILocation(line: 207, column: 11, scope: !4730)
!4734 = !DILocation(line: 207, column: 4, scope: !4730)
!4735 = !DILocation(line: 210, column: 9, scope: !4675)
!4736 = !DILocation(line: 210, column: 9, scope: !4669)
!4737 = !DILocation(line: 210, column: 7, scope: !4669)
!4738 = !DILocation(line: 211, column: 14, scope: !4669)
!4739 = !DILocation(line: 211, column: 19, scope: !4669)
!4740 = !DILocation(line: 211, column: 12, scope: !4669)
!4741 = !DILocation(line: 213, column: 14, scope: !4669)
!4742 = !DILocation(line: 213, column: 24, scope: !4669)
!4743 = !DILocation(line: 213, column: 3, scope: !4669)
!4744 = !DILocation(line: 216, column: 28, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 216, column: 7)
!4746 = !DILocation(line: 216, column: 7, scope: !4745)
!4747 = !DILocation(line: 216, column: 7, scope: !4669)
!4748 = !DILocation(line: 217, column: 4, scope: !4745)
!4749 = !DILocation(line: 219, column: 11, scope: !4669)
!4750 = !DILocation(line: 219, column: 21, scope: !4669)
!4751 = !DILocation(line: 219, column: 8, scope: !4669)
!4752 = !DILocation(line: 221, column: 7, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 221, column: 7)
!4754 = !DILocation(line: 221, column: 17, scope: !4753)
!4755 = !DILocation(line: 221, column: 24, scope: !4753)
!4756 = !DILocation(line: 221, column: 32, scope: !4753)
!4757 = !DILocation(line: 221, column: 29, scope: !4753)
!4758 = !DILocation(line: 221, column: 7, scope: !4669)
!4759 = !DILocation(line: 222, column: 4, scope: !4753)
!4760 = !DILocation(line: 223, column: 7, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 223, column: 7)
!4762 = !DILocation(line: 223, column: 17, scope: !4761)
!4763 = !DILocation(line: 223, column: 29, scope: !4761)
!4764 = !DILocation(line: 223, column: 26, scope: !4761)
!4765 = !DILocation(line: 223, column: 7, scope: !4669)
!4766 = !DILocation(line: 224, column: 4, scope: !4761)
!4767 = !DILocation(line: 226, column: 7, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 226, column: 7)
!4769 = !DILocation(line: 226, column: 13, scope: !4768)
!4770 = !DILocation(line: 226, column: 20, scope: !4768)
!4771 = !DILocation(line: 226, column: 17, scope: !4768)
!4772 = !DILocation(line: 226, column: 7, scope: !4669)
!4773 = !DILocation(line: 227, column: 4, scope: !4768)
!4774 = !DILocation(line: 228, column: 14, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 228, column: 7)
!4776 = !DILocation(line: 228, column: 20, scope: !4775)
!4777 = !DILocation(line: 228, column: 26, scope: !4775)
!4778 = !DILocation(line: 228, column: 31, scope: !4775)
!4779 = !DILocation(line: 228, column: 7, scope: !4775)
!4780 = !DILocation(line: 228, column: 7, scope: !4669)
!4781 = !DILocation(line: 229, column: 4, scope: !4775)
!4782 = !DILocation(line: 231, column: 18, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 231, column: 7)
!4784 = !DILocation(line: 231, column: 7, scope: !4783)
!4785 = !DILocation(line: 231, column: 7, scope: !4669)
!4786 = !DILocation(line: 232, column: 15, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 231, column: 29)
!4788 = !DILocation(line: 232, column: 4, scope: !4787)
!4789 = !DILocation(line: 233, column: 17, scope: !4787)
!4790 = !DILocation(line: 233, column: 27, scope: !4787)
!4791 = !DILocation(line: 233, column: 4, scope: !4787)
!4792 = !DILocation(line: 234, column: 17, scope: !4787)
!4793 = !DILocation(line: 234, column: 22, scope: !4787)
!4794 = !DILocation(line: 234, column: 4, scope: !4787)
!4795 = !DILocation(line: 235, column: 11, scope: !4787)
!4796 = !DILocation(line: 235, column: 4, scope: !4787)
!4797 = !DILocation(line: 231, column: 26, scope: !4783)
!4798 = !DILocation(line: 237, column: 1, scope: !4669)
!4799 = !DILocation(line: 238, column: 16, scope: !4669)
!4800 = !DILocation(line: 238, column: 26, scope: !4669)
!4801 = !DILocation(line: 238, column: 3, scope: !4669)
!4802 = !DILocation(line: 239, column: 2, scope: !4670)
!4803 = !DILocation(line: 239, column: 2, scope: !4669)
!4804 = distinct !{!4804, !4718, !4805, !4806, !4807}
!4805 = !DILocation(line: 239, column: 2, scope: !4671)
!4806 = !{!"llvm.loop.mustprogress"}
!4807 = !{!"llvm.loop.unroll.disable"}
!4808 = !DILocation(line: 240, column: 15, scope: !4654)
!4809 = !DILocation(line: 240, column: 20, scope: !4654)
!4810 = !DILocation(line: 240, column: 2, scope: !4654)
!4811 = !DILocation(line: 242, column: 2, scope: !4654)
!4812 = !DILocation(line: 243, column: 1, scope: !4654)
!4813 = distinct !DISubprogram(name: "IS_ERR", scope: !4568, file: !4568, line: 59, type: !4814, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4816)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!394, !4365}
!4816 = !{!4817}
!4817 = !DILocalVariable(name: "ptr", arg: 1, scope: !4813, file: !4568, line: 59, type: !4365)
!4818 = !DILocation(line: 59, column: 60, scope: !4813)
!4819 = !DILocation(line: 61, column: 9, scope: !4813)
!4820 = !DILocation(line: 61, column: 2, scope: !4813)
!4821 = distinct !DISubprogram(name: "PTR_ERR", scope: !4568, file: !4568, line: 49, type: !4822, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!673, !4365}
!4824 = !{!4825}
!4825 = !DILocalVariable(name: "ptr", arg: 1, scope: !4821, file: !4568, line: 49, type: !4365)
!4826 = !DILocation(line: 49, column: 61, scope: !4821)
!4827 = !DILocation(line: 51, column: 16, scope: !4821)
!4828 = !DILocation(line: 51, column: 9, scope: !4821)
!4829 = !DILocation(line: 51, column: 2, scope: !4821)
!4830 = !DISubprogram(name: "autofs_expire_wait", scope: !83, file: !83, line: 159, type: !4831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!91, !681, !91}
!4833 = distinct !DISubprogram(name: "autofs_del_expiring", scope: !83, file: !83, line: 266, type: !2922, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4834)
!4834 = !{!4835, !4836, !4837}
!4835 = !DILocalVariable(name: "dentry", arg: 1, scope: !4833, file: !83, line: 266, type: !518)
!4836 = !DILocalVariable(name: "sbi", scope: !4833, file: !83, line: 268, type: !81)
!4837 = !DILocalVariable(name: "ino", scope: !4833, file: !83, line: 269, type: !3319)
!4838 = !DILocation(line: 266, column: 55, scope: !4833)
!4839 = !DILocation(line: 268, column: 2, scope: !4833)
!4840 = !DILocation(line: 268, column: 25, scope: !4833)
!4841 = !DILocation(line: 268, column: 42, scope: !4833)
!4842 = !DILocation(line: 268, column: 50, scope: !4833)
!4843 = !DILocation(line: 268, column: 31, scope: !4833)
!4844 = !DILocation(line: 269, column: 2, scope: !4833)
!4845 = !DILocation(line: 269, column: 22, scope: !4833)
!4846 = !DILocation(line: 269, column: 46, scope: !4833)
!4847 = !DILocation(line: 269, column: 28, scope: !4833)
!4848 = !DILocation(line: 271, column: 6, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4833, file: !83, line: 271, column: 6)
!4850 = !DILocation(line: 271, column: 6, scope: !4833)
!4851 = !DILocation(line: 272, column: 14, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !83, line: 271, column: 11)
!4853 = !DILocation(line: 272, column: 19, scope: !4852)
!4854 = !DILocation(line: 272, column: 3, scope: !4852)
!4855 = !DILocation(line: 273, column: 20, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !83, line: 273, column: 7)
!4857 = !DILocation(line: 273, column: 25, scope: !4856)
!4858 = !DILocation(line: 273, column: 8, scope: !4856)
!4859 = !DILocation(line: 273, column: 7, scope: !4852)
!4860 = !DILocation(line: 274, column: 19, scope: !4856)
!4861 = !DILocation(line: 274, column: 24, scope: !4856)
!4862 = !DILocation(line: 274, column: 4, scope: !4856)
!4863 = !DILocation(line: 275, column: 16, scope: !4852)
!4864 = !DILocation(line: 275, column: 21, scope: !4852)
!4865 = !DILocation(line: 275, column: 3, scope: !4852)
!4866 = !DILocation(line: 276, column: 2, scope: !4852)
!4867 = !DILocation(line: 277, column: 1, scope: !4833)
!4868 = !DISubprogram(name: "dput", scope: !520, file: !520, line: 368, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4869 = distinct !DISubprogram(name: "list_is_head", scope: !4382, file: !4382, line: 362, type: !4870, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4872)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!91, !4385, !4385}
!4872 = !{!4873, !4874}
!4873 = !DILocalVariable(name: "list", arg: 1, scope: !4869, file: !4382, line: 362, type: !4385)
!4874 = !DILocalVariable(name: "head", arg: 2, scope: !4869, file: !4382, line: 362, type: !4385)
!4875 = !DILocation(line: 362, column: 56, scope: !4869)
!4876 = !DILocation(line: 362, column: 86, scope: !4869)
!4877 = !DILocation(line: 364, column: 9, scope: !4869)
!4878 = !DILocation(line: 364, column: 17, scope: !4869)
!4879 = !DILocation(line: 364, column: 14, scope: !4869)
!4880 = !DILocation(line: 364, column: 2, scope: !4869)
!4881 = distinct !DISubprogram(name: "d_really_is_negative", scope: !520, file: !520, line: 464, type: !4274, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4882)
!4882 = !{!4883}
!4883 = !DILocalVariable(name: "dentry", arg: 1, scope: !4881, file: !520, line: 464, type: !2903)
!4884 = !DILocation(line: 464, column: 62, scope: !4881)
!4885 = !DILocation(line: 466, column: 9, scope: !4881)
!4886 = !DILocation(line: 466, column: 17, scope: !4881)
!4887 = !DILocation(line: 466, column: 25, scope: !4881)
!4888 = !DILocation(line: 466, column: 2, scope: !4881)
!4889 = !DISubprogram(name: "memcmp", scope: !4890, file: !4890, line: 196, type: !4891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4890 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!91, !4365, !4365, !716}
!4893 = distinct !DISubprogram(name: "d_unhashed", scope: !520, file: !520, line: 333, type: !2914, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4894 = !{!4895}
!4895 = !DILocalVariable(name: "dentry", arg: 1, scope: !4893, file: !520, line: 333, type: !2903)
!4896 = !DILocation(line: 333, column: 51, scope: !4893)
!4897 = !DILocation(line: 335, column: 28, scope: !4893)
!4898 = !DILocation(line: 335, column: 36, scope: !4893)
!4899 = !DILocation(line: 335, column: 9, scope: !4893)
!4900 = !DILocation(line: 335, column: 2, scope: !4893)
!4901 = distinct !DISubprogram(name: "dget_dlock", scope: !520, file: !520, line: 310, type: !4902, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4904)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!518, !518}
!4904 = !{!4905}
!4905 = !DILocalVariable(name: "dentry", arg: 1, scope: !4901, file: !520, line: 310, type: !518)
!4906 = !DILocation(line: 310, column: 56, scope: !4901)
!4907 = !DILocation(line: 312, column: 6, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4901, file: !520, line: 312, column: 6)
!4909 = !DILocation(line: 312, column: 6, scope: !4901)
!4910 = !DILocation(line: 313, column: 3, scope: !4908)
!4911 = !DILocation(line: 313, column: 11, scope: !4908)
!4912 = !DILocation(line: 313, column: 21, scope: !4908)
!4913 = !DILocation(line: 313, column: 26, scope: !4908)
!4914 = !DILocation(line: 314, column: 9, scope: !4901)
!4915 = !DILocation(line: 314, column: 2, scope: !4901)
!4916 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !535, file: !535, line: 52, type: !4917, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4921)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!394, !4919}
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!4921 = !{!4922}
!4922 = !DILocalVariable(name: "h", arg: 1, scope: !4916, file: !535, line: 52, type: !4919)
!4923 = !DILocation(line: 52, column: 67, scope: !4916)
!4924 = !DILocation(line: 54, column: 10, scope: !4916)
!4925 = !DILocation(line: 54, column: 13, scope: !4916)
!4926 = !DILocation(line: 54, column: 9, scope: !4916)
!4927 = !DILocation(line: 54, column: 2, scope: !4916)
!4928 = distinct !DISubprogram(name: "list_del_init", scope: !4382, file: !4382, line: 285, type: !4398, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4929)
!4929 = !{!4930}
!4930 = !DILocalVariable(name: "entry", arg: 1, scope: !4928, file: !4382, line: 285, type: !185)
!4931 = !DILocation(line: 285, column: 52, scope: !4928)
!4932 = !DILocation(line: 287, column: 19, scope: !4928)
!4933 = !DILocation(line: 287, column: 2, scope: !4928)
!4934 = !DILocation(line: 288, column: 17, scope: !4928)
!4935 = !DILocation(line: 288, column: 2, scope: !4928)
!4936 = !DILocation(line: 289, column: 1, scope: !4928)
!4937 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4382, file: !4382, line: 35, type: !4398, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4938)
!4938 = !{!4939}
!4939 = !DILocalVariable(name: "list", arg: 1, scope: !4937, file: !4382, line: 35, type: !185)
!4940 = !DILocation(line: 35, column: 53, scope: !4937)
!4941 = !DILocation(line: 37, column: 2, scope: !4937)
!4942 = !DILocation(line: 37, column: 2, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4937, file: !4382, line: 37, column: 2)
!4944 = !DILocation(line: 37, column: 2, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4943, file: !4382, line: 37, column: 2)
!4946 = !DILocation(line: 37, column: 2, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4943, file: !4382, line: 37, column: 2)
!4948 = !DILocation(line: 38, column: 2, scope: !4937)
!4949 = !DILocation(line: 38, column: 2, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4937, file: !4382, line: 38, column: 2)
!4951 = !DILocation(line: 38, column: 2, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4950, file: !4382, line: 38, column: 2)
!4953 = !DILocation(line: 38, column: 2, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4950, file: !4382, line: 38, column: 2)
!4955 = !DILocation(line: 39, column: 1, scope: !4937)
!4956 = !DISubprogram(name: "autofs_wait", scope: !83, file: !83, line: 227, type: !4957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!91, !81, !681, !55}
!4959 = distinct !DISubprogram(name: "__d_entry_type", scope: !520, file: !520, line: 383, type: !4960, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4962)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!7, !2903}
!4962 = !{!4963}
!4963 = !DILocalVariable(name: "dentry", arg: 1, scope: !4959, file: !520, line: 383, type: !2903)
!4964 = !DILocation(line: 383, column: 60, scope: !4959)
!4965 = !DILocation(line: 385, column: 9, scope: !4959)
!4966 = !DILocation(line: 385, column: 17, scope: !4959)
!4967 = !DILocation(line: 385, column: 25, scope: !4959)
!4968 = !DILocation(line: 385, column: 2, scope: !4959)
!4969 = distinct !DISubprogram(name: "autofs_type_indirect", scope: !56, file: !56, line: 108, type: !4970, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4972)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!7, !7}
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "type", arg: 1, scope: !4969, file: !56, line: 108, type: !7)
!4974 = !DILocation(line: 108, column: 62, scope: !4969)
!4975 = !DILocation(line: 110, column: 10, scope: !4969)
!4976 = !DILocation(line: 110, column: 15, scope: !4969)
!4977 = !DILocation(line: 110, column: 2, scope: !4969)
!4978 = !DISubprogram(name: "d_lookup", scope: !520, file: !520, line: 277, type: !4979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!518, !2903, !2910}
!4981 = distinct !DISubprogram(name: "d_inode_rcu", scope: !520, file: !520, line: 526, type: !4982, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4984)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!558, !2903}
!4984 = !{!4985}
!4985 = !DILocalVariable(name: "dentry", arg: 1, scope: !4981, file: !520, line: 526, type: !2903)
!4986 = !DILocation(line: 526, column: 62, scope: !4981)
!4987 = !DILocation(line: 528, column: 9, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !520, line: 528, column: 9)
!4989 = !DILocation(line: 528, column: 9, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4988, file: !520, line: 528, column: 9)
!4991 = !DILocation(line: 528, column: 2, scope: !4981)
!4992 = distinct !DISubprogram(name: "autofs_lookup_active", scope: !3, file: !3, line: 131, type: !4902, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4993 = !{!4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5007, !5008, !5009, !5011}
!4994 = !DILocalVariable(name: "dentry", arg: 1, scope: !4992, file: !3, line: 131, type: !518)
!4995 = !DILocalVariable(name: "sbi", scope: !4992, file: !3, line: 133, type: !81)
!4996 = !DILocalVariable(name: "parent", scope: !4992, file: !3, line: 134, type: !518)
!4997 = !DILocalVariable(name: "name", scope: !4992, file: !3, line: 135, type: !2910)
!4998 = !DILocalVariable(name: "len", scope: !4992, file: !3, line: 136, type: !7)
!4999 = !DILocalVariable(name: "hash", scope: !4992, file: !3, line: 137, type: !7)
!5000 = !DILocalVariable(name: "str", scope: !4992, file: !3, line: 138, type: !555)
!5001 = !DILocalVariable(name: "p", scope: !4992, file: !3, line: 139, type: !185)
!5002 = !DILocalVariable(name: "head", scope: !4992, file: !3, line: 139, type: !185)
!5003 = !DILocalVariable(name: "ino", scope: !5004, file: !3, line: 146, type: !3319)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 145, column: 25)
!5005 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 145, column: 2)
!5006 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 145, column: 2)
!5007 = !DILocalVariable(name: "active", scope: !5004, file: !3, line: 147, type: !518)
!5008 = !DILocalVariable(name: "qstr", scope: !5004, file: !3, line: 148, type: !2910)
!5009 = !DILocalVariable(name: "__mptr", scope: !5010, file: !3, line: 150, type: !80)
!5010 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 150, column: 9)
!5011 = !DILabel(scope: !5004, name: "next", file: !3, line: 177)
!5012 = !DILocation(line: 131, column: 59, scope: !4992)
!5013 = !DILocation(line: 133, column: 2, scope: !4992)
!5014 = !DILocation(line: 133, column: 25, scope: !4992)
!5015 = !DILocation(line: 133, column: 42, scope: !4992)
!5016 = !DILocation(line: 133, column: 50, scope: !4992)
!5017 = !DILocation(line: 133, column: 31, scope: !4992)
!5018 = !DILocation(line: 134, column: 2, scope: !4992)
!5019 = !DILocation(line: 134, column: 17, scope: !4992)
!5020 = !DILocation(line: 134, column: 26, scope: !4992)
!5021 = !DILocation(line: 134, column: 34, scope: !4992)
!5022 = !DILocation(line: 135, column: 2, scope: !4992)
!5023 = !DILocation(line: 135, column: 21, scope: !4992)
!5024 = !DILocation(line: 135, column: 29, scope: !4992)
!5025 = !DILocation(line: 135, column: 37, scope: !4992)
!5026 = !DILocation(line: 136, column: 2, scope: !4992)
!5027 = !DILocation(line: 136, column: 15, scope: !4992)
!5028 = !DILocation(line: 136, column: 21, scope: !4992)
!5029 = !DILocation(line: 136, column: 27, scope: !4992)
!5030 = !DILocation(line: 137, column: 2, scope: !4992)
!5031 = !DILocation(line: 137, column: 15, scope: !4992)
!5032 = !DILocation(line: 137, column: 22, scope: !4992)
!5033 = !DILocation(line: 137, column: 28, scope: !4992)
!5034 = !DILocation(line: 138, column: 2, scope: !4992)
!5035 = !DILocation(line: 138, column: 23, scope: !4992)
!5036 = !DILocation(line: 138, column: 29, scope: !4992)
!5037 = !DILocation(line: 138, column: 35, scope: !4992)
!5038 = !DILocation(line: 139, column: 2, scope: !4992)
!5039 = !DILocation(line: 139, column: 20, scope: !4992)
!5040 = !DILocation(line: 139, column: 24, scope: !4992)
!5041 = !DILocation(line: 141, column: 10, scope: !4992)
!5042 = !DILocation(line: 141, column: 15, scope: !4992)
!5043 = !DILocation(line: 141, column: 7, scope: !4992)
!5044 = !DILocation(line: 142, column: 17, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 142, column: 6)
!5046 = !DILocation(line: 142, column: 6, scope: !5045)
!5047 = !DILocation(line: 142, column: 6, scope: !4992)
!5048 = !DILocation(line: 143, column: 3, scope: !5045)
!5049 = !DILocation(line: 144, column: 13, scope: !4992)
!5050 = !DILocation(line: 144, column: 18, scope: !4992)
!5051 = !DILocation(line: 144, column: 2, scope: !4992)
!5052 = !DILocation(line: 145, column: 2, scope: !5006)
!5053 = !DILocation(line: 145, column: 2, scope: !5005)
!5054 = !DILocation(line: 146, column: 3, scope: !5004)
!5055 = !DILocation(line: 146, column: 23, scope: !5004)
!5056 = !DILocation(line: 147, column: 3, scope: !5004)
!5057 = !DILocation(line: 147, column: 18, scope: !5004)
!5058 = !DILocation(line: 148, column: 3, scope: !5004)
!5059 = !DILocation(line: 148, column: 22, scope: !5004)
!5060 = !DILocation(line: 150, column: 9, scope: !5010)
!5061 = !DILocation(line: 150, column: 9, scope: !5004)
!5062 = !DILocation(line: 150, column: 7, scope: !5004)
!5063 = !DILocation(line: 151, column: 12, scope: !5004)
!5064 = !DILocation(line: 151, column: 17, scope: !5004)
!5065 = !DILocation(line: 151, column: 10, scope: !5004)
!5066 = !DILocation(line: 153, column: 14, scope: !5004)
!5067 = !DILocation(line: 153, column: 22, scope: !5004)
!5068 = !DILocation(line: 153, column: 3, scope: !5004)
!5069 = !DILocation(line: 156, column: 21, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 156, column: 7)
!5071 = !DILocation(line: 156, column: 13, scope: !5070)
!5072 = !DILocation(line: 156, column: 29, scope: !5070)
!5073 = !DILocation(line: 156, column: 7, scope: !5004)
!5074 = !DILocation(line: 157, column: 4, scope: !5070)
!5075 = !DILocation(line: 159, column: 11, scope: !5004)
!5076 = !DILocation(line: 159, column: 19, scope: !5004)
!5077 = !DILocation(line: 159, column: 8, scope: !5004)
!5078 = !DILocation(line: 161, column: 7, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 161, column: 7)
!5080 = !DILocation(line: 161, column: 15, scope: !5079)
!5081 = !DILocation(line: 161, column: 22, scope: !5079)
!5082 = !DILocation(line: 161, column: 30, scope: !5079)
!5083 = !DILocation(line: 161, column: 27, scope: !5079)
!5084 = !DILocation(line: 161, column: 7, scope: !5004)
!5085 = !DILocation(line: 162, column: 4, scope: !5079)
!5086 = !DILocation(line: 163, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 163, column: 7)
!5088 = !DILocation(line: 163, column: 15, scope: !5087)
!5089 = !DILocation(line: 163, column: 27, scope: !5087)
!5090 = !DILocation(line: 163, column: 24, scope: !5087)
!5091 = !DILocation(line: 163, column: 7, scope: !5004)
!5092 = !DILocation(line: 164, column: 4, scope: !5087)
!5093 = !DILocation(line: 166, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 166, column: 7)
!5095 = !DILocation(line: 166, column: 13, scope: !5094)
!5096 = !DILocation(line: 166, column: 20, scope: !5094)
!5097 = !DILocation(line: 166, column: 17, scope: !5094)
!5098 = !DILocation(line: 166, column: 7, scope: !5004)
!5099 = !DILocation(line: 167, column: 4, scope: !5094)
!5100 = !DILocation(line: 168, column: 14, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 168, column: 7)
!5102 = !DILocation(line: 168, column: 20, scope: !5101)
!5103 = !DILocation(line: 168, column: 26, scope: !5101)
!5104 = !DILocation(line: 168, column: 31, scope: !5101)
!5105 = !DILocation(line: 168, column: 7, scope: !5101)
!5106 = !DILocation(line: 168, column: 7, scope: !5004)
!5107 = !DILocation(line: 169, column: 4, scope: !5101)
!5108 = !DILocation(line: 171, column: 18, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 171, column: 7)
!5110 = !DILocation(line: 171, column: 7, scope: !5109)
!5111 = !DILocation(line: 171, column: 7, scope: !5004)
!5112 = !DILocation(line: 172, column: 15, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 171, column: 27)
!5114 = !DILocation(line: 172, column: 4, scope: !5113)
!5115 = !DILocation(line: 173, column: 17, scope: !5113)
!5116 = !DILocation(line: 173, column: 25, scope: !5113)
!5117 = !DILocation(line: 173, column: 4, scope: !5113)
!5118 = !DILocation(line: 174, column: 17, scope: !5113)
!5119 = !DILocation(line: 174, column: 22, scope: !5113)
!5120 = !DILocation(line: 174, column: 4, scope: !5113)
!5121 = !DILocation(line: 175, column: 11, scope: !5113)
!5122 = !DILocation(line: 175, column: 4, scope: !5113)
!5123 = !DILocation(line: 171, column: 24, scope: !5109)
!5124 = !DILocation(line: 177, column: 1, scope: !5004)
!5125 = !DILocation(line: 178, column: 16, scope: !5004)
!5126 = !DILocation(line: 178, column: 24, scope: !5004)
!5127 = !DILocation(line: 178, column: 3, scope: !5004)
!5128 = !DILocation(line: 179, column: 2, scope: !5005)
!5129 = !DILocation(line: 179, column: 2, scope: !5004)
!5130 = distinct !{!5130, !5052, !5131, !4806, !4807}
!5131 = !DILocation(line: 179, column: 2, scope: !5006)
!5132 = !DILocation(line: 180, column: 15, scope: !4992)
!5133 = !DILocation(line: 180, column: 20, scope: !4992)
!5134 = !DILocation(line: 180, column: 2, scope: !4992)
!5135 = !DILocation(line: 182, column: 2, scope: !4992)
!5136 = !DILocation(line: 183, column: 1, scope: !4992)
!5137 = !DISubprogram(name: "autofs_new_ino", scope: !83, file: !83, line: 209, type: !5138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!3319, !81}
!5140 = distinct !DISubprogram(name: "__managed_dentry_set_managed", scope: !83, file: !83, line: 182, type: !2922, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5141)
!5141 = !{!5142}
!5142 = !DILocalVariable(name: "dentry", arg: 1, scope: !5140, file: !83, line: 182, type: !518)
!5143 = !DILocation(line: 182, column: 64, scope: !5140)
!5144 = !DILocation(line: 184, column: 2, scope: !5140)
!5145 = !DILocation(line: 184, column: 10, scope: !5140)
!5146 = !DILocation(line: 184, column: 18, scope: !5140)
!5147 = !DILocation(line: 185, column: 1, scope: !5140)
!5148 = distinct !DISubprogram(name: "list_add", scope: !4382, file: !4382, line: 167, type: !4438, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5149)
!5149 = !{!5150, !5151}
!5150 = !DILocalVariable(name: "new", arg: 1, scope: !5148, file: !4382, line: 167, type: !185)
!5151 = !DILocalVariable(name: "head", arg: 2, scope: !5148, file: !4382, line: 167, type: !185)
!5152 = !DILocation(line: 167, column: 47, scope: !5148)
!5153 = !DILocation(line: 167, column: 70, scope: !5148)
!5154 = !DILocation(line: 169, column: 13, scope: !5148)
!5155 = !DILocation(line: 169, column: 18, scope: !5148)
!5156 = !DILocation(line: 169, column: 24, scope: !5148)
!5157 = !DILocation(line: 169, column: 30, scope: !5148)
!5158 = !DILocation(line: 169, column: 2, scope: !5148)
!5159 = !DILocation(line: 170, column: 1, scope: !5148)
!5160 = distinct !DISubprogram(name: "d_count", scope: !520, file: !520, line: 283, type: !4960, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5161 = !{!5162}
!5162 = !DILocalVariable(name: "dentry", arg: 1, scope: !5160, file: !520, line: 283, type: !2903)
!5163 = !DILocation(line: 283, column: 53, scope: !5160)
!5164 = !DILocation(line: 285, column: 9, scope: !5160)
!5165 = !DILocation(line: 285, column: 17, scope: !5160)
!5166 = !DILocation(line: 285, column: 27, scope: !5160)
!5167 = !DILocation(line: 285, column: 2, scope: !5160)
!5168 = distinct !DISubprogram(name: "__list_add", scope: !4382, file: !4382, line: 146, type: !5169, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{null, !185, !185, !185}
!5171 = !{!5172, !5173, !5174}
!5172 = !DILocalVariable(name: "new", arg: 1, scope: !5168, file: !4382, line: 146, type: !185)
!5173 = !DILocalVariable(name: "prev", arg: 2, scope: !5168, file: !4382, line: 147, type: !185)
!5174 = !DILocalVariable(name: "next", arg: 3, scope: !5168, file: !4382, line: 148, type: !185)
!5175 = !DILocation(line: 146, column: 49, scope: !5168)
!5176 = !DILocation(line: 147, column: 28, scope: !5168)
!5177 = !DILocation(line: 148, column: 28, scope: !5168)
!5178 = !DILocation(line: 150, column: 24, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5168, file: !4382, line: 150, column: 6)
!5180 = !DILocation(line: 150, column: 29, scope: !5179)
!5181 = !DILocation(line: 150, column: 35, scope: !5179)
!5182 = !DILocation(line: 150, column: 7, scope: !5179)
!5183 = !DILocation(line: 150, column: 6, scope: !5168)
!5184 = !DILocation(line: 151, column: 3, scope: !5179)
!5185 = !DILocation(line: 153, column: 15, scope: !5168)
!5186 = !DILocation(line: 153, column: 2, scope: !5168)
!5187 = !DILocation(line: 153, column: 8, scope: !5168)
!5188 = !DILocation(line: 153, column: 13, scope: !5168)
!5189 = !DILocation(line: 154, column: 14, scope: !5168)
!5190 = !DILocation(line: 154, column: 2, scope: !5168)
!5191 = !DILocation(line: 154, column: 7, scope: !5168)
!5192 = !DILocation(line: 154, column: 12, scope: !5168)
!5193 = !DILocation(line: 155, column: 14, scope: !5168)
!5194 = !DILocation(line: 155, column: 2, scope: !5168)
!5195 = !DILocation(line: 155, column: 7, scope: !5168)
!5196 = !DILocation(line: 155, column: 12, scope: !5168)
!5197 = !DILocation(line: 156, column: 2, scope: !5168)
!5198 = !DILocation(line: 156, column: 2, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5168, file: !4382, line: 156, column: 2)
!5200 = !DILocation(line: 156, column: 2, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5199, file: !4382, line: 156, column: 2)
!5202 = !DILocation(line: 156, column: 2, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5199, file: !4382, line: 156, column: 2)
!5204 = !DILocation(line: 157, column: 1, scope: !5168)
!5205 = distinct !DISubprogram(name: "__list_add_valid", scope: !4382, file: !4382, line: 128, type: !5206, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!394, !185, !185, !185}
!5208 = !{!5209, !5210, !5211}
!5209 = !DILocalVariable(name: "new", arg: 1, scope: !5205, file: !4382, line: 128, type: !185)
!5210 = !DILocalVariable(name: "prev", arg: 2, scope: !5205, file: !4382, line: 129, type: !185)
!5211 = !DILocalVariable(name: "next", arg: 3, scope: !5205, file: !4382, line: 130, type: !185)
!5212 = !DILocation(line: 128, column: 55, scope: !5205)
!5213 = !DILocation(line: 129, column: 23, scope: !5205)
!5214 = !DILocation(line: 130, column: 23, scope: !5205)
!5215 = !DILocation(line: 132, column: 2, scope: !5205)
!5216 = !DISubprogram(name: "generic_permission", scope: !15, file: !15, line: 2676, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5217 = !DISubprogram(name: "strlen", scope: !4890, file: !4890, line: 128, type: !5218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!329, !397}
!5220 = !DISubprogram(name: "autofs_clean_ino", scope: !83, file: !83, line: 210, type: !4413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5221 = distinct !DISubprogram(name: "autofs_del_active", scope: !3, file: !3, line: 67, type: !2922, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5222)
!5222 = !{!5223, !5224, !5225}
!5223 = !DILocalVariable(name: "dentry", arg: 1, scope: !5221, file: !3, line: 67, type: !518)
!5224 = !DILocalVariable(name: "sbi", scope: !5221, file: !3, line: 69, type: !81)
!5225 = !DILocalVariable(name: "ino", scope: !5221, file: !3, line: 70, type: !3319)
!5226 = !DILocation(line: 67, column: 46, scope: !5221)
!5227 = !DILocation(line: 69, column: 2, scope: !5221)
!5228 = !DILocation(line: 69, column: 25, scope: !5221)
!5229 = !DILocation(line: 69, column: 42, scope: !5221)
!5230 = !DILocation(line: 69, column: 50, scope: !5221)
!5231 = !DILocation(line: 69, column: 31, scope: !5221)
!5232 = !DILocation(line: 70, column: 2, scope: !5221)
!5233 = !DILocation(line: 70, column: 22, scope: !5221)
!5234 = !DILocation(line: 72, column: 26, scope: !5221)
!5235 = !DILocation(line: 72, column: 8, scope: !5221)
!5236 = !DILocation(line: 72, column: 6, scope: !5221)
!5237 = !DILocation(line: 73, column: 13, scope: !5221)
!5238 = !DILocation(line: 73, column: 18, scope: !5221)
!5239 = !DILocation(line: 73, column: 2, scope: !5221)
!5240 = !DILocation(line: 74, column: 17, scope: !5221)
!5241 = !DILocation(line: 74, column: 22, scope: !5221)
!5242 = !DILocation(line: 74, column: 2, scope: !5221)
!5243 = !DILocation(line: 75, column: 15, scope: !5221)
!5244 = !DILocation(line: 75, column: 20, scope: !5221)
!5245 = !DILocation(line: 75, column: 2, scope: !5221)
!5246 = !DILocation(line: 76, column: 1, scope: !5221)
!5247 = distinct !DISubprogram(name: "kmalloc", scope: !62, file: !62, line: 591, type: !5248, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!80, !715, !767}
!5250 = !{!5251, !5252, !5253}
!5251 = !DILocalVariable(name: "size", arg: 1, scope: !5247, file: !62, line: 591, type: !715)
!5252 = !DILocalVariable(name: "flags", arg: 2, scope: !5247, file: !62, line: 591, type: !767)
!5253 = !DILocalVariable(name: "index", scope: !5254, file: !62, line: 594, type: !7)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !62, line: 593, column: 42)
!5255 = distinct !DILexicalBlock(scope: !5247, file: !62, line: 593, column: 6)
!5256 = !DILocation(line: 591, column: 61, scope: !5247)
!5257 = !DILocation(line: 591, column: 73, scope: !5247)
!5258 = !DILocation(line: 593, column: 27, scope: !5255)
!5259 = !DILocation(line: 593, column: 6, scope: !5255)
!5260 = !DILocation(line: 593, column: 33, scope: !5255)
!5261 = !DILocation(line: 593, column: 36, scope: !5255)
!5262 = !DILocation(line: 593, column: 6, scope: !5247)
!5263 = !DILocation(line: 594, column: 3, scope: !5254)
!5264 = !DILocation(line: 594, column: 16, scope: !5254)
!5265 = !DILocation(line: 596, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5254, file: !62, line: 596, column: 7)
!5267 = !DILocation(line: 596, column: 12, scope: !5266)
!5268 = !DILocation(line: 596, column: 7, scope: !5254)
!5269 = !DILocation(line: 597, column: 25, scope: !5266)
!5270 = !DILocation(line: 597, column: 31, scope: !5266)
!5271 = !DILocation(line: 597, column: 11, scope: !5266)
!5272 = !DILocation(line: 597, column: 4, scope: !5266)
!5273 = !DILocation(line: 599, column: 11, scope: !5254)
!5274 = !DILocation(line: 599, column: 9, scope: !5254)
!5275 = !DILocation(line: 601, column: 33, scope: !5254)
!5276 = !DILocation(line: 601, column: 40, scope: !5254)
!5277 = !DILocation(line: 601, column: 20, scope: !5254)
!5278 = !DILocation(line: 601, column: 5, scope: !5254)
!5279 = !DILocation(line: 601, column: 51, scope: !5254)
!5280 = !DILocation(line: 602, column: 5, scope: !5254)
!5281 = !DILocation(line: 602, column: 12, scope: !5254)
!5282 = !DILocation(line: 600, column: 10, scope: !5254)
!5283 = !DILocation(line: 600, column: 3, scope: !5254)
!5284 = !DILocation(line: 603, column: 2, scope: !5255)
!5285 = !DILocation(line: 604, column: 19, scope: !5247)
!5286 = !DILocation(line: 604, column: 25, scope: !5247)
!5287 = !DILocation(line: 604, column: 9, scope: !5247)
!5288 = !DILocation(line: 604, column: 2, scope: !5247)
!5289 = !DILocation(line: 605, column: 1, scope: !5247)
!5290 = !DISubprogram(name: "strcpy", scope: !4890, file: !4890, line: 63, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!407, !407, !397}
!5293 = !DISubprogram(name: "autofs_get_inode", scope: !83, file: !83, line: 154, type: !5294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!558, !771, !562}
!5296 = !DISubprogram(name: "kfree", scope: !62, file: !62, line: 227, type: !5297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !4365}
!5299 = !DISubprogram(name: "d_add", scope: !520, file: !520, line: 269, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5300 = distinct !DISubprogram(name: "dget", scope: !520, file: !520, line: 317, type: !4902, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5301)
!5301 = !{!5302}
!5302 = !DILocalVariable(name: "dentry", arg: 1, scope: !5300, file: !520, line: 317, type: !518)
!5303 = !DILocation(line: 317, column: 50, scope: !5300)
!5304 = !DILocation(line: 319, column: 6, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5300, file: !520, line: 319, column: 6)
!5306 = !DILocation(line: 319, column: 6, scope: !5300)
!5307 = !DILocation(line: 320, column: 16, scope: !5305)
!5308 = !DILocation(line: 320, column: 24, scope: !5305)
!5309 = !DILocation(line: 320, column: 3, scope: !5305)
!5310 = !DILocation(line: 321, column: 9, scope: !5300)
!5311 = !DILocation(line: 321, column: 2, scope: !5300)
!5312 = !DISubprogram(name: "inode_set_ctime_current", scope: !15, file: !15, line: 1515, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!669, !558}
!5315 = !DISubprogram(name: "kmalloc_large", scope: !62, file: !62, line: 531, type: !5248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5316 = distinct !DISubprogram(name: "__kmalloc_index", scope: !62, file: !62, line: 444, type: !5317, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!7, !715, !394}
!5319 = !{!5320, !5321}
!5320 = !DILocalVariable(name: "size", arg: 1, scope: !5316, file: !62, line: 444, type: !715)
!5321 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5316, file: !62, line: 445, type: !394)
!5322 = !DILocation(line: 444, column: 60, scope: !5316)
!5323 = !DILocation(line: 445, column: 16, scope: !5316)
!5324 = !DILocation(line: 447, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 447, column: 6)
!5326 = !DILocation(line: 447, column: 6, scope: !5316)
!5327 = !DILocation(line: 448, column: 3, scope: !5325)
!5328 = !DILocation(line: 450, column: 6, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 450, column: 6)
!5330 = !DILocation(line: 450, column: 11, scope: !5329)
!5331 = !DILocation(line: 450, column: 6, scope: !5316)
!5332 = !DILocation(line: 451, column: 3, scope: !5329)
!5333 = !DILocation(line: 453, column: 32, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 453, column: 6)
!5335 = !DILocation(line: 453, column: 37, scope: !5334)
!5336 = !DILocation(line: 453, column: 42, scope: !5334)
!5337 = !DILocation(line: 453, column: 45, scope: !5334)
!5338 = !DILocation(line: 453, column: 50, scope: !5334)
!5339 = !DILocation(line: 453, column: 6, scope: !5316)
!5340 = !DILocation(line: 454, column: 3, scope: !5334)
!5341 = !DILocation(line: 455, column: 32, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 455, column: 6)
!5343 = !DILocation(line: 455, column: 37, scope: !5342)
!5344 = !DILocation(line: 455, column: 43, scope: !5342)
!5345 = !DILocation(line: 455, column: 46, scope: !5342)
!5346 = !DILocation(line: 455, column: 51, scope: !5342)
!5347 = !DILocation(line: 455, column: 6, scope: !5316)
!5348 = !DILocation(line: 456, column: 3, scope: !5342)
!5349 = !DILocation(line: 457, column: 6, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 457, column: 6)
!5351 = !DILocation(line: 457, column: 11, scope: !5350)
!5352 = !DILocation(line: 457, column: 6, scope: !5316)
!5353 = !DILocation(line: 457, column: 26, scope: !5350)
!5354 = !DILocation(line: 458, column: 6, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 458, column: 6)
!5356 = !DILocation(line: 458, column: 11, scope: !5355)
!5357 = !DILocation(line: 458, column: 6, scope: !5316)
!5358 = !DILocation(line: 458, column: 26, scope: !5355)
!5359 = !DILocation(line: 459, column: 6, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 459, column: 6)
!5361 = !DILocation(line: 459, column: 11, scope: !5360)
!5362 = !DILocation(line: 459, column: 6, scope: !5316)
!5363 = !DILocation(line: 459, column: 26, scope: !5360)
!5364 = !DILocation(line: 460, column: 6, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 460, column: 6)
!5366 = !DILocation(line: 460, column: 11, scope: !5365)
!5367 = !DILocation(line: 460, column: 6, scope: !5316)
!5368 = !DILocation(line: 460, column: 26, scope: !5365)
!5369 = !DILocation(line: 461, column: 6, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 461, column: 6)
!5371 = !DILocation(line: 461, column: 11, scope: !5370)
!5372 = !DILocation(line: 461, column: 6, scope: !5316)
!5373 = !DILocation(line: 461, column: 26, scope: !5370)
!5374 = !DILocation(line: 462, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 462, column: 6)
!5376 = !DILocation(line: 462, column: 11, scope: !5375)
!5377 = !DILocation(line: 462, column: 6, scope: !5316)
!5378 = !DILocation(line: 462, column: 26, scope: !5375)
!5379 = !DILocation(line: 463, column: 6, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 463, column: 6)
!5381 = !DILocation(line: 463, column: 11, scope: !5380)
!5382 = !DILocation(line: 463, column: 6, scope: !5316)
!5383 = !DILocation(line: 463, column: 26, scope: !5380)
!5384 = !DILocation(line: 464, column: 6, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 464, column: 6)
!5386 = !DILocation(line: 464, column: 11, scope: !5385)
!5387 = !DILocation(line: 464, column: 6, scope: !5316)
!5388 = !DILocation(line: 464, column: 26, scope: !5385)
!5389 = !DILocation(line: 465, column: 6, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 465, column: 6)
!5391 = !DILocation(line: 465, column: 11, scope: !5390)
!5392 = !DILocation(line: 465, column: 6, scope: !5316)
!5393 = !DILocation(line: 465, column: 26, scope: !5390)
!5394 = !DILocation(line: 466, column: 6, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 466, column: 6)
!5396 = !DILocation(line: 466, column: 11, scope: !5395)
!5397 = !DILocation(line: 466, column: 6, scope: !5316)
!5398 = !DILocation(line: 466, column: 26, scope: !5395)
!5399 = !DILocation(line: 467, column: 6, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 467, column: 6)
!5401 = !DILocation(line: 467, column: 11, scope: !5400)
!5402 = !DILocation(line: 467, column: 6, scope: !5316)
!5403 = !DILocation(line: 467, column: 26, scope: !5400)
!5404 = !DILocation(line: 468, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 468, column: 6)
!5406 = !DILocation(line: 468, column: 11, scope: !5405)
!5407 = !DILocation(line: 468, column: 6, scope: !5316)
!5408 = !DILocation(line: 468, column: 26, scope: !5405)
!5409 = !DILocation(line: 469, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 469, column: 6)
!5411 = !DILocation(line: 469, column: 11, scope: !5410)
!5412 = !DILocation(line: 469, column: 6, scope: !5316)
!5413 = !DILocation(line: 469, column: 26, scope: !5410)
!5414 = !DILocation(line: 470, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 470, column: 6)
!5416 = !DILocation(line: 470, column: 11, scope: !5415)
!5417 = !DILocation(line: 470, column: 6, scope: !5316)
!5418 = !DILocation(line: 470, column: 26, scope: !5415)
!5419 = !DILocation(line: 471, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 471, column: 6)
!5421 = !DILocation(line: 471, column: 11, scope: !5420)
!5422 = !DILocation(line: 471, column: 6, scope: !5316)
!5423 = !DILocation(line: 471, column: 26, scope: !5420)
!5424 = !DILocation(line: 472, column: 6, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 472, column: 6)
!5426 = !DILocation(line: 472, column: 11, scope: !5425)
!5427 = !DILocation(line: 472, column: 6, scope: !5316)
!5428 = !DILocation(line: 472, column: 26, scope: !5425)
!5429 = !DILocation(line: 473, column: 6, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 473, column: 6)
!5431 = !DILocation(line: 473, column: 11, scope: !5430)
!5432 = !DILocation(line: 473, column: 6, scope: !5316)
!5433 = !DILocation(line: 473, column: 26, scope: !5430)
!5434 = !DILocation(line: 474, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 474, column: 6)
!5436 = !DILocation(line: 474, column: 11, scope: !5435)
!5437 = !DILocation(line: 474, column: 6, scope: !5316)
!5438 = !DILocation(line: 474, column: 27, scope: !5435)
!5439 = !DILocation(line: 475, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 475, column: 6)
!5441 = !DILocation(line: 475, column: 11, scope: !5440)
!5442 = !DILocation(line: 475, column: 6, scope: !5316)
!5443 = !DILocation(line: 475, column: 32, scope: !5440)
!5444 = !DILocation(line: 477, column: 50, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5316, file: !62, line: 477, column: 6)
!5446 = !DILocation(line: 477, column: 6, scope: !5316)
!5447 = !DILocation(line: 478, column: 3, scope: !5445)
!5448 = !DILocation(line: 478, column: 3, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !62, line: 478, column: 3)
!5450 = distinct !DILexicalBlock(scope: !5445, file: !62, line: 478, column: 3)
!5451 = !{i32 -2141594844}
!5452 = !DILocation(line: 478, column: 3, scope: !5450)
!5453 = !DILocation(line: 480, column: 3, scope: !5445)
!5454 = !DILocation(line: 480, column: 3, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5445, file: !62, line: 480, column: 3)
!5456 = !DILocation(line: 480, column: 3, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5455, file: !62, line: 480, column: 3)
!5458 = !DILocation(line: 480, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5455, file: !62, line: 480, column: 3)
!5460 = !{i64 2153372655, i64 2153372684, i64 2153372730, i64 2153372788, i64 2153372842, i64 2153372896, i64 2153372951, i64 2153372982}
!5461 = !DILocation(line: 483, column: 2, scope: !5316)
!5462 = !DILocation(line: 484, column: 1, scope: !5316)
!5463 = !DISubprogram(name: "kmalloc_trace", scope: !62, file: !62, line: 525, type: !5464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!80, !5466, !767, !715}
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5468, line: 325, flags: DIFlagFwdDecl)
!5468 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5469 = distinct !DISubprogram(name: "kmalloc_type", scope: !62, file: !62, line: 401, type: !5470, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5472)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!61, !767, !329}
!5472 = !{!5473, !5474}
!5473 = !DILocalVariable(name: "flags", arg: 1, scope: !5469, file: !62, line: 401, type: !767)
!5474 = !DILocalVariable(name: "caller", arg: 2, scope: !5469, file: !62, line: 401, type: !329)
!5475 = !DILocation(line: 401, column: 67, scope: !5469)
!5476 = !DILocation(line: 401, column: 88, scope: !5469)
!5477 = !DILocation(line: 407, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5469, file: !62, line: 407, column: 6)
!5479 = !DILocation(line: 407, column: 6, scope: !5469)
!5480 = !DILocation(line: 413, column: 3, scope: !5478)
!5481 = !DILocation(line: 423, column: 38, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5469, file: !62, line: 423, column: 6)
!5483 = !DILocation(line: 423, column: 44, scope: !5482)
!5484 = !DILocation(line: 423, column: 6, scope: !5469)
!5485 = !DILocation(line: 424, column: 3, scope: !5482)
!5486 = !DILocation(line: 426, column: 3, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5469, file: !62, line: 425, column: 6)
!5488 = !DILocation(line: 429, column: 1, scope: !5469)
!5489 = !DISubprogram(name: "__kmalloc", scope: !62, file: !62, line: 488, type: !5248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5490 = !DISubprogram(name: "__compiletime_assert_245", scope: !62, file: !62, line: 478, type: !1962, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5491 = !DISubprogram(name: "lockref_get", scope: !3242, file: !3242, line: 37, type: !5492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !5494}
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!5495 = distinct !DISubprogram(name: "d_inode", scope: !520, file: !520, line: 514, type: !4982, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5496 = !{!5497}
!5497 = !DILocalVariable(name: "dentry", arg: 1, scope: !5495, file: !520, line: 514, type: !2903)
!5498 = !DILocation(line: 514, column: 58, scope: !5495)
!5499 = !DILocation(line: 516, column: 9, scope: !5495)
!5500 = !DILocation(line: 516, column: 17, scope: !5495)
!5501 = !DILocation(line: 516, column: 2, scope: !5495)
!5502 = !DISubprogram(name: "clear_nlink", scope: !15, file: !15, line: 2329, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5503 = distinct !DISubprogram(name: "__autofs_add_expiring", scope: !83, file: !83, line: 242, type: !2922, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5504)
!5504 = !{!5505, !5506, !5507}
!5505 = !DILocalVariable(name: "dentry", arg: 1, scope: !5503, file: !83, line: 242, type: !518)
!5506 = !DILocalVariable(name: "sbi", scope: !5503, file: !83, line: 244, type: !81)
!5507 = !DILocalVariable(name: "ino", scope: !5503, file: !83, line: 245, type: !3319)
!5508 = !DILocation(line: 242, column: 57, scope: !5503)
!5509 = !DILocation(line: 244, column: 2, scope: !5503)
!5510 = !DILocation(line: 244, column: 25, scope: !5503)
!5511 = !DILocation(line: 244, column: 42, scope: !5503)
!5512 = !DILocation(line: 244, column: 50, scope: !5503)
!5513 = !DILocation(line: 244, column: 31, scope: !5503)
!5514 = !DILocation(line: 245, column: 2, scope: !5503)
!5515 = !DILocation(line: 245, column: 22, scope: !5503)
!5516 = !DILocation(line: 245, column: 46, scope: !5503)
!5517 = !DILocation(line: 245, column: 28, scope: !5503)
!5518 = !DILocation(line: 247, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5503, file: !83, line: 247, column: 6)
!5520 = !DILocation(line: 247, column: 6, scope: !5503)
!5521 = !DILocation(line: 248, column: 19, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !83, line: 248, column: 7)
!5523 = distinct !DILexicalBlock(scope: !5519, file: !83, line: 247, column: 11)
!5524 = !DILocation(line: 248, column: 24, scope: !5522)
!5525 = !DILocation(line: 248, column: 7, scope: !5522)
!5526 = !DILocation(line: 248, column: 7, scope: !5523)
!5527 = !DILocation(line: 249, column: 14, scope: !5522)
!5528 = !DILocation(line: 249, column: 19, scope: !5522)
!5529 = !DILocation(line: 249, column: 30, scope: !5522)
!5530 = !DILocation(line: 249, column: 35, scope: !5522)
!5531 = !DILocation(line: 249, column: 4, scope: !5522)
!5532 = !DILocation(line: 250, column: 2, scope: !5523)
!5533 = !DILocation(line: 251, column: 1, scope: !5503)
!5534 = !DISubprogram(name: "d_drop", scope: !520, file: !520, line: 226, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5535 = distinct !DISubprogram(name: "autofs_clear_leaf_automount_flags", scope: !3, file: !3, line: 674, type: !2922, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5536)
!5536 = !{!5537, !5538}
!5537 = !DILocalVariable(name: "dentry", arg: 1, scope: !5535, file: !3, line: 674, type: !518)
!5538 = !DILocalVariable(name: "parent", scope: !5535, file: !3, line: 676, type: !518)
!5539 = !DILocation(line: 674, column: 62, scope: !5535)
!5540 = !DILocation(line: 676, column: 2, scope: !5535)
!5541 = !DILocation(line: 676, column: 17, scope: !5535)
!5542 = !DILocation(line: 679, column: 6, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 679, column: 6)
!5544 = !DILocation(line: 679, column: 6, scope: !5535)
!5545 = !DILocation(line: 680, column: 3, scope: !5543)
!5546 = !DILocation(line: 682, column: 31, scope: !5535)
!5547 = !DILocation(line: 682, column: 2, scope: !5535)
!5548 = !DILocation(line: 684, column: 11, scope: !5535)
!5549 = !DILocation(line: 684, column: 19, scope: !5535)
!5550 = !DILocation(line: 684, column: 9, scope: !5535)
!5551 = !DILocation(line: 686, column: 6, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 686, column: 6)
!5553 = !DILocation(line: 686, column: 6, scope: !5535)
!5554 = !DILocation(line: 687, column: 3, scope: !5552)
!5555 = !DILocation(line: 688, column: 24, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 688, column: 6)
!5557 = !DILocation(line: 688, column: 6, scope: !5556)
!5558 = !DILocation(line: 688, column: 33, scope: !5556)
!5559 = !DILocation(line: 688, column: 39, scope: !5556)
!5560 = !DILocation(line: 688, column: 6, scope: !5535)
!5561 = !DILocation(line: 689, column: 30, scope: !5556)
!5562 = !DILocation(line: 689, column: 3, scope: !5556)
!5563 = !DILocation(line: 690, column: 1, scope: !5535)
!5564 = !DISubprogram(name: "drop_nlink", scope: !15, file: !15, line: 2328, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5565 = distinct !DISubprogram(name: "managed_dentry_clear_managed", scope: !83, file: !83, line: 199, type: !2922, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5566 = !{!5567}
!5567 = !DILocalVariable(name: "dentry", arg: 1, scope: !5565, file: !83, line: 199, type: !518)
!5568 = !DILocation(line: 199, column: 64, scope: !5565)
!5569 = !DILocation(line: 201, column: 13, scope: !5565)
!5570 = !DILocation(line: 201, column: 21, scope: !5565)
!5571 = !DILocation(line: 201, column: 2, scope: !5565)
!5572 = !DILocation(line: 202, column: 33, scope: !5565)
!5573 = !DILocation(line: 202, column: 2, scope: !5565)
!5574 = !DILocation(line: 203, column: 15, scope: !5565)
!5575 = !DILocation(line: 203, column: 23, scope: !5565)
!5576 = !DILocation(line: 203, column: 2, scope: !5565)
!5577 = !DILocation(line: 204, column: 1, scope: !5565)
!5578 = distinct !DISubprogram(name: "managed_dentry_set_managed", scope: !83, file: !83, line: 187, type: !2922, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5579)
!5579 = !{!5580}
!5580 = !DILocalVariable(name: "dentry", arg: 1, scope: !5578, file: !83, line: 187, type: !518)
!5581 = !DILocation(line: 187, column: 62, scope: !5578)
!5582 = !DILocation(line: 189, column: 13, scope: !5578)
!5583 = !DILocation(line: 189, column: 21, scope: !5578)
!5584 = !DILocation(line: 189, column: 2, scope: !5578)
!5585 = !DILocation(line: 190, column: 31, scope: !5578)
!5586 = !DILocation(line: 190, column: 2, scope: !5578)
!5587 = !DILocation(line: 191, column: 15, scope: !5578)
!5588 = !DILocation(line: 191, column: 23, scope: !5578)
!5589 = !DILocation(line: 191, column: 2, scope: !5578)
!5590 = !DILocation(line: 192, column: 1, scope: !5578)
!5591 = distinct !DISubprogram(name: "__managed_dentry_clear_managed", scope: !83, file: !83, line: 194, type: !2922, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5592 = !{!5593}
!5593 = !DILocalVariable(name: "dentry", arg: 1, scope: !5591, file: !83, line: 194, type: !518)
!5594 = !DILocation(line: 194, column: 66, scope: !5591)
!5595 = !DILocation(line: 196, column: 2, scope: !5591)
!5596 = !DILocation(line: 196, column: 10, scope: !5591)
!5597 = !DILocation(line: 196, column: 18, scope: !5591)
!5598 = !DILocation(line: 197, column: 1, scope: !5591)
!5599 = distinct !DISubprogram(name: "autofs_set_leaf_automount_flags", scope: !3, file: !3, line: 657, type: !2922, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5600 = !{!5601, !5602}
!5601 = !DILocalVariable(name: "dentry", arg: 1, scope: !5599, file: !3, line: 657, type: !518)
!5602 = !DILocalVariable(name: "parent", scope: !5599, file: !3, line: 659, type: !518)
!5603 = !DILocation(line: 657, column: 60, scope: !5599)
!5604 = !DILocation(line: 659, column: 2, scope: !5599)
!5605 = !DILocation(line: 659, column: 17, scope: !5599)
!5606 = !DILocation(line: 662, column: 6, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 662, column: 6)
!5608 = !DILocation(line: 662, column: 6, scope: !5599)
!5609 = !DILocation(line: 663, column: 3, scope: !5607)
!5610 = !DILocation(line: 665, column: 29, scope: !5599)
!5611 = !DILocation(line: 665, column: 2, scope: !5599)
!5612 = !DILocation(line: 667, column: 11, scope: !5599)
!5613 = !DILocation(line: 667, column: 19, scope: !5599)
!5614 = !DILocation(line: 667, column: 9, scope: !5599)
!5615 = !DILocation(line: 669, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 669, column: 6)
!5617 = !DILocation(line: 669, column: 6, scope: !5599)
!5618 = !DILocation(line: 670, column: 3, scope: !5616)
!5619 = !DILocation(line: 671, column: 31, scope: !5599)
!5620 = !DILocation(line: 671, column: 2, scope: !5599)
!5621 = !DILocation(line: 672, column: 1, scope: !5599)
!5622 = !DISubprogram(name: "inc_nlink", scope: !15, file: !15, line: 2327, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5623 = distinct !DISubprogram(name: "file_inode", scope: !15, file: !15, line: 1073, type: !5624, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5628)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!558, !5626}
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 64)
!5627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!5628 = !{!5629}
!5629 = !DILocalVariable(name: "f", arg: 1, scope: !5623, file: !15, line: 1073, type: !5626)
!5630 = !DILocation(line: 1073, column: 59, scope: !5623)
!5631 = !DILocation(line: 1075, column: 9, scope: !5623)
!5632 = !DILocation(line: 1075, column: 12, scope: !5623)
!5633 = !DILocation(line: 1075, column: 2, scope: !5623)
!5634 = distinct !DISubprogram(name: "autofs_root_ioctl_unlocked", scope: !3, file: !3, line: 854, type: !5635, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5637)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!91, !558, !93, !7, !329}
!5637 = !{!5638, !5639, !5640, !5641, !5642, !5643}
!5638 = !DILocalVariable(name: "inode", arg: 1, scope: !5634, file: !3, line: 854, type: !558)
!5639 = !DILocalVariable(name: "filp", arg: 2, scope: !5634, file: !3, line: 854, type: !93)
!5640 = !DILocalVariable(name: "cmd", arg: 3, scope: !5634, file: !3, line: 855, type: !7)
!5641 = !DILocalVariable(name: "arg", arg: 4, scope: !5634, file: !3, line: 855, type: !329)
!5642 = !DILocalVariable(name: "sbi", scope: !5634, file: !3, line: 857, type: !81)
!5643 = !DILocalVariable(name: "p", scope: !5634, file: !3, line: 858, type: !80)
!5644 = !DILocation(line: 854, column: 53, scope: !5634)
!5645 = !DILocation(line: 854, column: 73, scope: !5634)
!5646 = !DILocation(line: 855, column: 25, scope: !5634)
!5647 = !DILocation(line: 855, column: 44, scope: !5634)
!5648 = !DILocation(line: 857, column: 2, scope: !5634)
!5649 = !DILocation(line: 857, column: 25, scope: !5634)
!5650 = !DILocation(line: 857, column: 42, scope: !5634)
!5651 = !DILocation(line: 857, column: 49, scope: !5634)
!5652 = !DILocation(line: 857, column: 31, scope: !5634)
!5653 = !DILocation(line: 858, column: 2, scope: !5634)
!5654 = !DILocation(line: 858, column: 15, scope: !5634)
!5655 = !DILocation(line: 858, column: 34, scope: !5634)
!5656 = !DILocation(line: 858, column: 19, scope: !5634)
!5657 = !DILocation(line: 860, column: 2, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 860, column: 2)
!5659 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 860, column: 2)
!5660 = !DILocation(line: 860, column: 2, scope: !5659)
!5661 = !DILocation(line: 863, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 863, column: 6)
!5663 = !DILocation(line: 863, column: 21, scope: !5662)
!5664 = !DILocation(line: 863, column: 52, scope: !5662)
!5665 = !DILocation(line: 864, column: 7, scope: !5662)
!5666 = !DILocation(line: 864, column: 20, scope: !5662)
!5667 = !DILocation(line: 864, column: 48, scope: !5662)
!5668 = !DILocation(line: 863, column: 6, scope: !5634)
!5669 = !DILocation(line: 865, column: 3, scope: !5662)
!5670 = !DILocation(line: 867, column: 22, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 867, column: 6)
!5672 = !DILocation(line: 867, column: 7, scope: !5671)
!5673 = !DILocation(line: 867, column: 27, scope: !5671)
!5674 = !DILocation(line: 867, column: 31, scope: !5671)
!5675 = !DILocation(line: 867, column: 6, scope: !5634)
!5676 = !DILocation(line: 868, column: 3, scope: !5671)
!5677 = !DILocation(line: 870, column: 10, scope: !5634)
!5678 = !DILocation(line: 870, column: 2, scope: !5634)
!5679 = !DILocation(line: 872, column: 30, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 870, column: 15)
!5681 = !DILocation(line: 872, column: 50, scope: !5680)
!5682 = !DILocation(line: 872, column: 35, scope: !5680)
!5683 = !DILocation(line: 872, column: 10, scope: !5680)
!5684 = !DILocation(line: 872, column: 3, scope: !5680)
!5685 = !DILocation(line: 874, column: 30, scope: !5680)
!5686 = !DILocation(line: 874, column: 50, scope: !5680)
!5687 = !DILocation(line: 874, column: 35, scope: !5680)
!5688 = !DILocation(line: 874, column: 10, scope: !5680)
!5689 = !DILocation(line: 874, column: 3, scope: !5680)
!5690 = !DILocation(line: 876, column: 25, scope: !5680)
!5691 = !DILocation(line: 876, column: 3, scope: !5680)
!5692 = !DILocation(line: 877, column: 3, scope: !5680)
!5693 = !DILocation(line: 879, column: 30, scope: !5680)
!5694 = !DILocation(line: 879, column: 35, scope: !5680)
!5695 = !DILocation(line: 879, column: 10, scope: !5680)
!5696 = !DILocation(line: 879, column: 3, scope: !5680)
!5697 = !DILocation(line: 881, column: 33, scope: !5680)
!5698 = !DILocation(line: 881, column: 38, scope: !5680)
!5699 = !DILocation(line: 881, column: 10, scope: !5680)
!5700 = !DILocation(line: 881, column: 3, scope: !5680)
!5701 = !DILocation(line: 883, column: 33, scope: !5680)
!5702 = !DILocation(line: 883, column: 38, scope: !5680)
!5703 = !DILocation(line: 883, column: 10, scope: !5680)
!5704 = !DILocation(line: 883, column: 3, scope: !5680)
!5705 = !DILocation(line: 886, column: 40, scope: !5680)
!5706 = !DILocation(line: 886, column: 45, scope: !5680)
!5707 = !DILocation(line: 886, column: 10, scope: !5680)
!5708 = !DILocation(line: 886, column: 3, scope: !5680)
!5709 = !DILocation(line: 890, column: 28, scope: !5680)
!5710 = !DILocation(line: 890, column: 34, scope: !5680)
!5711 = !DILocation(line: 890, column: 41, scope: !5680)
!5712 = !DILocation(line: 890, column: 46, scope: !5680)
!5713 = !DILocation(line: 890, column: 10, scope: !5680)
!5714 = !DILocation(line: 890, column: 3, scope: !5680)
!5715 = !DILocation(line: 894, column: 28, scope: !5680)
!5716 = !DILocation(line: 894, column: 35, scope: !5680)
!5717 = !DILocation(line: 894, column: 41, scope: !5680)
!5718 = !DILocation(line: 894, column: 47, scope: !5680)
!5719 = !DILocation(line: 894, column: 54, scope: !5680)
!5720 = !DILocation(line: 894, column: 59, scope: !5680)
!5721 = !DILocation(line: 894, column: 64, scope: !5680)
!5722 = !DILocation(line: 894, column: 10, scope: !5680)
!5723 = !DILocation(line: 894, column: 3, scope: !5680)
!5724 = !DILocation(line: 897, column: 30, scope: !5680)
!5725 = !DILocation(line: 897, column: 37, scope: !5680)
!5726 = !DILocation(line: 898, column: 9, scope: !5680)
!5727 = !DILocation(line: 898, column: 15, scope: !5680)
!5728 = !DILocation(line: 898, column: 22, scope: !5680)
!5729 = !DILocation(line: 898, column: 27, scope: !5680)
!5730 = !DILocation(line: 898, column: 32, scope: !5680)
!5731 = !DILocation(line: 897, column: 10, scope: !5680)
!5732 = !DILocation(line: 897, column: 3, scope: !5680)
!5733 = !DILocation(line: 901, column: 3, scope: !5680)
!5734 = !DILocation(line: 903, column: 1, scope: !5634)
!5735 = !DISubprogram(name: "capable", scope: !297, file: !297, line: 148, type: !5736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{!394, !91}
!5738 = !DISubprogram(name: "autofs_wait_release", scope: !83, file: !83, line: 229, type: !5739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!91, !81, !3304, !91}
!5741 = !DISubprogram(name: "autofs_catatonic_mode", scope: !83, file: !83, line: 230, type: !5742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{null, !81}
!5744 = distinct !DISubprogram(name: "autofs_get_protover", scope: !3, file: !3, line: 809, type: !5745, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5747)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!91, !81, !875}
!5747 = !{!5748, !5749, !5750, !5753, !5754, !5755, !5756}
!5748 = !DILocalVariable(name: "sbi", arg: 1, scope: !5744, file: !3, line: 809, type: !81)
!5749 = !DILocalVariable(name: "p", arg: 2, scope: !5744, file: !3, line: 810, type: !875)
!5750 = !DILocalVariable(name: "__ret_pu", scope: !5751, file: !3, line: 812, type: !91)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 812, column: 9)
!5752 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 812, column: 9)
!5753 = !DILocalVariable(name: "__ptr_pu", scope: !5751, file: !3, line: 812, type: !80)
!5754 = !DILocalVariable(name: "__val_pu", scope: !5751, file: !3, line: 812, type: !91)
!5755 = !DILocalVariable(name: "__x", scope: !5751, file: !3, line: 812, type: !91)
!5756 = !DILocalVariable(name: "__ptr", scope: !5751, file: !3, line: 812, type: !875)
!5757 = !DILocation(line: 809, column: 62, scope: !5744)
!5758 = !DILocation(line: 810, column: 24, scope: !5744)
!5759 = !DILocation(line: 812, column: 9, scope: !5752)
!5760 = !DILocation(line: 812, column: 9, scope: !5751)
!5761 = !{i64 2153579811}
!5762 = !DILocation(line: 812, column: 9, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 812, column: 9)
!5764 = !DILocation(line: 812, column: 9, scope: !5744)
!5765 = !DILocation(line: 812, column: 2, scope: !5744)
!5766 = distinct !DISubprogram(name: "autofs_get_protosubver", scope: !3, file: !3, line: 816, type: !5745, scopeLine: 818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5767)
!5767 = !{!5768, !5769, !5770, !5773, !5774, !5775, !5776}
!5768 = !DILocalVariable(name: "sbi", arg: 1, scope: !5766, file: !3, line: 816, type: !81)
!5769 = !DILocalVariable(name: "p", arg: 2, scope: !5766, file: !3, line: 817, type: !875)
!5770 = !DILocalVariable(name: "__ret_pu", scope: !5771, file: !3, line: 819, type: !91)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 819, column: 9)
!5772 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 819, column: 9)
!5773 = !DILocalVariable(name: "__ptr_pu", scope: !5771, file: !3, line: 819, type: !80)
!5774 = !DILocalVariable(name: "__val_pu", scope: !5771, file: !3, line: 819, type: !91)
!5775 = !DILocalVariable(name: "__x", scope: !5771, file: !3, line: 819, type: !91)
!5776 = !DILocalVariable(name: "__ptr", scope: !5771, file: !3, line: 819, type: !875)
!5777 = !DILocation(line: 816, column: 65, scope: !5766)
!5778 = !DILocation(line: 817, column: 20, scope: !5766)
!5779 = !DILocation(line: 819, column: 9, scope: !5772)
!5780 = !DILocation(line: 819, column: 9, scope: !5771)
!5781 = !{i64 2153581029}
!5782 = !DILocation(line: 819, column: 9, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 819, column: 9)
!5784 = !DILocation(line: 819, column: 9, scope: !5766)
!5785 = !DILocation(line: 819, column: 2, scope: !5766)
!5786 = distinct !DISubprogram(name: "autofs_get_set_timeout", scope: !3, file: !3, line: 784, type: !5787, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!91, !81, !5789}
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!5790 = !{!5791, !5792, !5793, !5794, !5795, !5798, !5799, !5801, !5804, !5805, !5806, !5807, !5808}
!5791 = !DILocalVariable(name: "sbi", arg: 1, scope: !5786, file: !3, line: 784, type: !81)
!5792 = !DILocalVariable(name: "p", arg: 2, scope: !5786, file: !3, line: 785, type: !5789)
!5793 = !DILocalVariable(name: "ntimeout", scope: !5786, file: !3, line: 787, type: !329)
!5794 = !DILocalVariable(name: "rv", scope: !5786, file: !3, line: 788, type: !91)
!5795 = !DILocalVariable(name: "__ret_gu", scope: !5796, file: !3, line: 790, type: !91)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 790, column: 7)
!5797 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 790, column: 7)
!5798 = !DILocalVariable(name: "__val_gu", scope: !5796, file: !3, line: 790, type: !329)
!5799 = !DILocalVariable(name: "__tmp", scope: !5800, file: !3, line: 790, type: !301)
!5800 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 790, column: 7)
!5801 = !DILocalVariable(name: "__ret_pu", scope: !5802, file: !3, line: 794, type: !91)
!5802 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 794, column: 7)
!5803 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 794, column: 7)
!5804 = !DILocalVariable(name: "__ptr_pu", scope: !5802, file: !3, line: 794, type: !80)
!5805 = !DILocalVariable(name: "__val_pu", scope: !5802, file: !3, line: 794, type: !329)
!5806 = !DILocalVariable(name: "__x", scope: !5802, file: !3, line: 794, type: !329)
!5807 = !DILocalVariable(name: "__ptr", scope: !5802, file: !3, line: 794, type: !5789)
!5808 = !DILabel(scope: !5786, name: "error", file: !3, line: 804)
!5809 = !DILocation(line: 784, column: 65, scope: !5786)
!5810 = !DILocation(line: 785, column: 30, scope: !5786)
!5811 = !DILocation(line: 787, column: 2, scope: !5786)
!5812 = !DILocation(line: 787, column: 16, scope: !5786)
!5813 = !DILocation(line: 788, column: 2, scope: !5786)
!5814 = !DILocation(line: 788, column: 6, scope: !5786)
!5815 = !DILocation(line: 790, column: 7, scope: !5797)
!5816 = !DILocation(line: 790, column: 7, scope: !5796)
!5817 = !{i64 2153576526}
!5818 = !DILocation(line: 790, column: 7, scope: !5800)
!5819 = !DILocation(line: 790, column: 7, scope: !5786)
!5820 = !DILocation(line: 790, column: 5, scope: !5786)
!5821 = !DILocation(line: 791, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 791, column: 6)
!5823 = !DILocation(line: 791, column: 6, scope: !5786)
!5824 = !DILocation(line: 792, column: 3, scope: !5822)
!5825 = !DILocation(line: 794, column: 7, scope: !5803)
!5826 = !DILocation(line: 794, column: 7, scope: !5802)
!5827 = !{i64 2153578550}
!5828 = !DILocation(line: 794, column: 7, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 794, column: 7)
!5830 = !DILocation(line: 794, column: 7, scope: !5786)
!5831 = !DILocation(line: 794, column: 5, scope: !5786)
!5832 = !DILocation(line: 795, column: 6, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 795, column: 6)
!5834 = !DILocation(line: 795, column: 6, scope: !5786)
!5835 = !DILocation(line: 796, column: 3, scope: !5833)
!5836 = !DILocation(line: 798, column: 6, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 798, column: 6)
!5838 = !DILocation(line: 798, column: 15, scope: !5837)
!5839 = !DILocation(line: 798, column: 6, scope: !5786)
!5840 = !DILocation(line: 799, column: 3, scope: !5837)
!5841 = !DILocation(line: 799, column: 8, scope: !5837)
!5842 = !DILocation(line: 799, column: 20, scope: !5837)
!5843 = !DILocation(line: 801, column: 22, scope: !5837)
!5844 = !DILocation(line: 801, column: 31, scope: !5837)
!5845 = !DILocation(line: 801, column: 3, scope: !5837)
!5846 = !DILocation(line: 801, column: 8, scope: !5837)
!5847 = !DILocation(line: 801, column: 20, scope: !5837)
!5848 = !DILocation(line: 803, column: 2, scope: !5786)
!5849 = !DILocation(line: 804, column: 1, scope: !5786)
!5850 = !DILocation(line: 805, column: 9, scope: !5786)
!5851 = !DILocation(line: 805, column: 2, scope: !5786)
!5852 = !DILocation(line: 806, column: 1, scope: !5786)
!5853 = distinct !DISubprogram(name: "autofs_compat_get_set_timeout", scope: !3, file: !3, line: 759, type: !5854, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!91, !81, !5856}
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!5857 = !{!5858, !5859, !5860, !5861, !5862, !5865, !5866, !5868, !5871, !5872, !5873, !5874, !5875}
!5858 = !DILocalVariable(name: "sbi", arg: 1, scope: !5853, file: !3, line: 759, type: !81)
!5859 = !DILocalVariable(name: "p", arg: 2, scope: !5853, file: !3, line: 760, type: !5856)
!5860 = !DILocalVariable(name: "ntimeout", scope: !5853, file: !3, line: 762, type: !329)
!5861 = !DILocalVariable(name: "rv", scope: !5853, file: !3, line: 763, type: !91)
!5862 = !DILocalVariable(name: "__ret_gu", scope: !5863, file: !3, line: 765, type: !91)
!5863 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 765, column: 7)
!5864 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 765, column: 7)
!5865 = !DILocalVariable(name: "__val_gu", scope: !5863, file: !3, line: 765, type: !7)
!5866 = !DILocalVariable(name: "__tmp", scope: !5867, file: !3, line: 765, type: !301)
!5867 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 765, column: 7)
!5868 = !DILocalVariable(name: "__ret_pu", scope: !5869, file: !3, line: 769, type: !91)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 769, column: 7)
!5870 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 769, column: 7)
!5871 = !DILocalVariable(name: "__ptr_pu", scope: !5869, file: !3, line: 769, type: !80)
!5872 = !DILocalVariable(name: "__val_pu", scope: !5869, file: !3, line: 769, type: !3341)
!5873 = !DILocalVariable(name: "__x", scope: !5869, file: !3, line: 769, type: !3341)
!5874 = !DILocalVariable(name: "__ptr", scope: !5869, file: !3, line: 769, type: !5856)
!5875 = !DILabel(scope: !5853, name: "error", file: !3, line: 779)
!5876 = !DILocation(line: 759, column: 72, scope: !5853)
!5877 = !DILocation(line: 760, column: 31, scope: !5853)
!5878 = !DILocation(line: 762, column: 2, scope: !5853)
!5879 = !DILocation(line: 762, column: 16, scope: !5853)
!5880 = !DILocation(line: 763, column: 2, scope: !5853)
!5881 = !DILocation(line: 763, column: 6, scope: !5853)
!5882 = !DILocation(line: 765, column: 7, scope: !5864)
!5883 = !DILocation(line: 765, column: 7, scope: !5863)
!5884 = !{i64 2153573439}
!5885 = !DILocation(line: 765, column: 7, scope: !5867)
!5886 = !DILocation(line: 765, column: 7, scope: !5853)
!5887 = !DILocation(line: 765, column: 5, scope: !5853)
!5888 = !DILocation(line: 766, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 766, column: 6)
!5890 = !DILocation(line: 766, column: 6, scope: !5853)
!5891 = !DILocation(line: 767, column: 3, scope: !5889)
!5892 = !DILocation(line: 769, column: 7, scope: !5870)
!5893 = !DILocation(line: 769, column: 7, scope: !5869)
!5894 = !{i64 2153575463}
!5895 = !DILocation(line: 769, column: 7, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 769, column: 7)
!5897 = !DILocation(line: 769, column: 7, scope: !5853)
!5898 = !DILocation(line: 769, column: 5, scope: !5853)
!5899 = !DILocation(line: 770, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 770, column: 6)
!5901 = !DILocation(line: 770, column: 6, scope: !5853)
!5902 = !DILocation(line: 771, column: 3, scope: !5900)
!5903 = !DILocation(line: 773, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 773, column: 6)
!5905 = !DILocation(line: 773, column: 15, scope: !5904)
!5906 = !DILocation(line: 773, column: 6, scope: !5853)
!5907 = !DILocation(line: 774, column: 3, scope: !5904)
!5908 = !DILocation(line: 774, column: 8, scope: !5904)
!5909 = !DILocation(line: 774, column: 20, scope: !5904)
!5910 = !DILocation(line: 776, column: 22, scope: !5904)
!5911 = !DILocation(line: 776, column: 31, scope: !5904)
!5912 = !DILocation(line: 776, column: 3, scope: !5904)
!5913 = !DILocation(line: 776, column: 8, scope: !5904)
!5914 = !DILocation(line: 776, column: 20, scope: !5904)
!5915 = !DILocation(line: 778, column: 2, scope: !5853)
!5916 = !DILocation(line: 779, column: 1, scope: !5853)
!5917 = !DILocation(line: 780, column: 9, scope: !5853)
!5918 = !DILocation(line: 780, column: 2, scope: !5853)
!5919 = !DILocation(line: 781, column: 1, scope: !5853)
!5920 = distinct !DISubprogram(name: "autofs_ask_umount", scope: !3, file: !3, line: 825, type: !5921, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5923)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!91, !513, !875}
!5923 = !{!5924, !5925, !5926, !5927, !5930, !5931, !5932, !5933}
!5924 = !DILocalVariable(name: "mnt", arg: 1, scope: !5920, file: !3, line: 825, type: !513)
!5925 = !DILocalVariable(name: "p", arg: 2, scope: !5920, file: !3, line: 825, type: !875)
!5926 = !DILocalVariable(name: "status", scope: !5920, file: !3, line: 827, type: !91)
!5927 = !DILocalVariable(name: "__ret_pu", scope: !5928, file: !3, line: 834, type: !91)
!5928 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 834, column: 11)
!5929 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 834, column: 11)
!5930 = !DILocalVariable(name: "__ptr_pu", scope: !5928, file: !3, line: 834, type: !80)
!5931 = !DILocalVariable(name: "__val_pu", scope: !5928, file: !3, line: 834, type: !91)
!5932 = !DILocalVariable(name: "__x", scope: !5928, file: !3, line: 834, type: !91)
!5933 = !DILocalVariable(name: "__ptr", scope: !5928, file: !3, line: 834, type: !875)
!5934 = !DILocation(line: 825, column: 54, scope: !5920)
!5935 = !DILocation(line: 825, column: 71, scope: !5920)
!5936 = !DILocation(line: 827, column: 2, scope: !5920)
!5937 = !DILocation(line: 827, column: 6, scope: !5920)
!5938 = !DILocation(line: 829, column: 17, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 829, column: 6)
!5940 = !DILocation(line: 829, column: 6, scope: !5939)
!5941 = !DILocation(line: 829, column: 6, scope: !5920)
!5942 = !DILocation(line: 830, column: 10, scope: !5939)
!5943 = !DILocation(line: 830, column: 3, scope: !5939)
!5944 = !DILocation(line: 832, column: 2, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 832, column: 2)
!5946 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 832, column: 2)
!5947 = !DILocation(line: 832, column: 2, scope: !5946)
!5948 = !DILocation(line: 834, column: 11, scope: !5929)
!5949 = !DILocation(line: 834, column: 11, scope: !5928)
!5950 = !{i64 2153582604}
!5951 = !DILocation(line: 834, column: 11, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 834, column: 11)
!5953 = !DILocation(line: 834, column: 11, scope: !5920)
!5954 = !DILocation(line: 834, column: 9, scope: !5920)
!5955 = !DILocation(line: 836, column: 9, scope: !5920)
!5956 = !DILocation(line: 837, column: 1, scope: !5920)
!5957 = !DILocation(line: 836, column: 2, scope: !5920)
!5958 = !DISubprogram(name: "autofs_expire_run", scope: !83, file: !83, line: 160, type: !5959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!91, !771, !513, !81, !5961}
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_expire", file: !56, line: 58, size: 2144, elements: !5963)
!5963 = !{!5964, !5969, !5970}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !5962, file: !56, line: 59, baseType: !5965, size: 64)
!5965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_hdr", file: !56, line: 45, size: 64, elements: !5966)
!5966 = !{!5967, !5968}
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !5965, file: !56, line: 46, baseType: !91, size: 32)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5965, file: !56, line: 47, baseType: !91, size: 32, offset: 32)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5962, file: !56, line: 60, baseType: !91, size: 32, offset: 64)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5962, file: !56, line: 61, baseType: !5971, size: 2048, offset: 96)
!5971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 2048, elements: !5972)
!5972 = !{!5973}
!5973 = !DISubrange(count: 256)
!5974 = !DISubprogram(name: "autofs_expire_multi", scope: !83, file: !83, line: 165, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!91, !771, !513, !81, !875}
!5977 = distinct !DISubprogram(name: "might_fault", scope: !5978, file: !5978, line: 202, type: !1962, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5978 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5979 = !DILocation(line: 202, column: 40, scope: !5977)
!5980 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !5981, file: !5981, line: 76, type: !5982, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5981 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !80, !4365, !715, !715}
!5984 = !{!5985, !5986, !5987, !5988}
!5985 = !DILocalVariable(name: "to", arg: 1, scope: !5980, file: !5981, line: 76, type: !80)
!5986 = !DILocalVariable(name: "from", arg: 2, scope: !5980, file: !5981, line: 76, type: !4365)
!5987 = !DILocalVariable(name: "to_copy", arg: 3, scope: !5980, file: !5981, line: 77, type: !715)
!5988 = !DILocalVariable(name: "left", arg: 4, scope: !5980, file: !5981, line: 77, type: !715)
!5989 = !DILocation(line: 76, column: 52, scope: !5980)
!5990 = !DILocation(line: 76, column: 68, scope: !5980)
!5991 = !DILocation(line: 77, column: 18, scope: !5980)
!5992 = !DILocation(line: 77, column: 34, scope: !5980)
!5993 = !DILocation(line: 79, column: 1, scope: !5980)
!5994 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !5981, file: !5981, line: 70, type: !5995, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5997)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{null, !4365, !715}
!5997 = !{!5998, !5999}
!5998 = !DILocalVariable(name: "address", arg: 1, scope: !5994, file: !5981, line: 70, type: !4365)
!5999 = !DILocalVariable(name: "size", arg: 2, scope: !5994, file: !5981, line: 70, type: !715)
!6000 = !DILocation(line: 70, column: 54, scope: !5994)
!6001 = !DILocation(line: 70, column: 70, scope: !5994)
!6002 = !DILocation(line: 72, column: 1, scope: !5994)
!6003 = !DISubprogram(name: "may_umount", scope: !515, file: !515, line: 117, type: !6004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!91, !513}
!6006 = distinct !DISubprogram(name: "compat_ptr", scope: !2142, file: !2142, line: 977, type: !6007, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6009)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{!80, !2148}
!6009 = !{!6010}
!6010 = !DILocalVariable(name: "uptr", arg: 1, scope: !6006, file: !2142, line: 977, type: !2148)
!6011 = !DILocation(line: 977, column: 53, scope: !6006)
!6012 = !DILocation(line: 979, column: 39, scope: !6006)
!6013 = !DILocation(line: 979, column: 24, scope: !6006)
!6014 = !DILocation(line: 979, column: 9, scope: !6006)
!6015 = !DILocation(line: 979, column: 2, scope: !6006)
