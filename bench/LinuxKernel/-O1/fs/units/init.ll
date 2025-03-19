; ModuleID = 'fs/init.c'
source_filename = "fs/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [16 x i8] }
%struct.anon.24 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type opaque
%struct.path = type { ptr, ptr }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.17, ptr }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.16 = type { ptr }
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
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file = type { %union.anon.25, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.25 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.26, %struct.qspinlock }
%union.anon.26 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }

@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_mount(ptr noundef %dev_name, ptr noundef %dir_name, ptr noundef %type_page, i64 noundef %flags, ptr noundef %data_page) #0 section ".init.text" align 16 !dbg !3405 {
entry:
  %retval = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %dir_name.addr = alloca ptr, align 8
  %type_page.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %data_page.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !3409, metadata !DIExpression()), !dbg !3416
  store ptr %dir_name, ptr %dir_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir_name.addr, metadata !3410, metadata !DIExpression()), !dbg !3417
  store ptr %type_page, ptr %type_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type_page.addr, metadata !3411, metadata !DIExpression()), !dbg !3418
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3412, metadata !DIExpression()), !dbg !3419
  store ptr %data_page, ptr %data_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_page.addr, metadata !3413, metadata !DIExpression()), !dbg !3420
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3421
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3414, metadata !DIExpression()), !dbg !3422
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3423
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3415, metadata !DIExpression()), !dbg !3424
  %0 = load ptr, ptr %dir_name.addr, align 8, !dbg !3425
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef %path) #8, !dbg !3426
  store i32 %call, ptr %ret, align 4, !dbg !3427
  %1 = load i32, ptr %ret, align 4, !dbg !3428
  %tobool = icmp ne i32 %1, 0, !dbg !3428
  br i1 %tobool, label %if.then, label %if.end, !dbg !3430

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !3431
  store i32 %2, ptr %retval, align 4, !dbg !3432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3432

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev_name.addr, align 8, !dbg !3433
  %4 = load ptr, ptr %type_page.addr, align 8, !dbg !3434
  %5 = load i64, ptr %flags.addr, align 8, !dbg !3435
  %6 = load ptr, ptr %data_page.addr, align 8, !dbg !3436
  %call1 = call i32 @path_mount(ptr noundef %3, ptr noundef %path, ptr noundef %4, i64 noundef %5, ptr noundef %6) #8, !dbg !3437
  store i32 %call1, ptr %ret, align 4, !dbg !3438
  call void @path_put(ptr noundef %path) #8, !dbg !3439
  %7 = load i32, ptr %ret, align 4, !dbg !3440
  store i32 %7, ptr %retval, align 4, !dbg !3441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3441

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3442
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3442
  %8 = load i32, ptr %retval, align 4, !dbg !3442
  ret i32 %8, !dbg !3442
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3443 dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3447 dso_local i32 @path_mount(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3451 dso_local void @path_put(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_umount(ptr noundef %name, i32 noundef %flags) #0 section ".init.text" align 16 !dbg !3454 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %lookup_flags = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3458, metadata !DIExpression()), !dbg !3463
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3459, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #7, !dbg !3465
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !3460, metadata !DIExpression()), !dbg !3466
  store i32 128, ptr %lookup_flags, align 4, !dbg !3466
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3467
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3461, metadata !DIExpression()), !dbg !3468
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3462, metadata !DIExpression()), !dbg !3470
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3471
  %and = and i32 %0, 8, !dbg !3473
  %tobool = icmp ne i32 %and, 0, !dbg !3473
  br i1 %tobool, label %if.end, label %if.then, !dbg !3474

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %lookup_flags, align 4, !dbg !3475
  %or = or i32 %1, 1, !dbg !3475
  store i32 %or, ptr %lookup_flags, align 4, !dbg !3475
  br label %if.end, !dbg !3476

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !3477
  %3 = load i32, ptr %lookup_flags, align 4, !dbg !3478
  %call = call i32 @kern_path(ptr noundef %2, i32 noundef %3, ptr noundef %path) #8, !dbg !3479
  store i32 %call, ptr %ret, align 4, !dbg !3480
  %4 = load i32, ptr %ret, align 4, !dbg !3481
  %tobool1 = icmp ne i32 %4, 0, !dbg !3481
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3483

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !3484
  store i32 %5, ptr %retval, align 4, !dbg !3485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3485

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %flags.addr, align 4, !dbg !3486
  %call4 = call i32 @path_umount(ptr noundef %path, i32 noundef %6) #8, !dbg !3487
  store i32 %call4, ptr %retval, align 4, !dbg !3488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3488

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3489
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3489
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #7, !dbg !3489
  %7 = load i32, ptr %retval, align 4, !dbg !3489
  ret i32 %7, !dbg !3489
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3490 dso_local i32 @path_umount(ptr noundef, i32 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_chdir(ptr noundef %filename) #0 section ".init.text" align 16 !dbg !3493 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3501
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3498, metadata !DIExpression()), !dbg !3502
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3503
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3499, metadata !DIExpression()), !dbg !3504
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !3505
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 3, ptr noundef %path) #8, !dbg !3506
  store i32 %call, ptr %error, align 4, !dbg !3507
  %1 = load i32, ptr %error, align 4, !dbg !3508
  %tobool = icmp ne i32 %1, 0, !dbg !3508
  br i1 %tobool, label %if.then, label %if.end, !dbg !3510

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !3511
  store i32 %2, ptr %retval, align 4, !dbg !3512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3512

if.end:                                           ; preds = %entry
  %call1 = call i32 @path_permission(ptr noundef %path, i32 noundef 65) #8, !dbg !3513
  store i32 %call1, ptr %error, align 4, !dbg !3514
  %3 = load i32, ptr %error, align 4, !dbg !3515
  %tobool2 = icmp ne i32 %3, 0, !dbg !3515
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3517

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @get_current() #8, !dbg !3518
  %fs = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 100, !dbg !3519
  %4 = load ptr, ptr %fs, align 32, !dbg !3519
  call void @set_fs_pwd(ptr noundef %4, ptr noundef %path) #8, !dbg !3520
  br label %if.end5, !dbg !3520

if.end5:                                          ; preds = %if.then3, %if.end
  call void @path_put(ptr noundef %path) #8, !dbg !3521
  %5 = load i32, ptr %error, align 4, !dbg !3522
  store i32 %5, ptr %retval, align 4, !dbg !3523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3523

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3524
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3524
  %6 = load i32, ptr %retval, align 4, !dbg !3524
  ret i32 %6, !dbg !3524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @path_permission(ptr noundef %path, i32 noundef %mask) #4 align 16 !dbg !3525 {
entry:
  %path.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3529, metadata !DIExpression()), !dbg !3531
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3530, metadata !DIExpression()), !dbg !3532
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3533
  %mnt = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 0, !dbg !3534
  %1 = load ptr, ptr %mnt, align 8, !dbg !3534
  %call = call ptr @mnt_idmap(ptr noundef %1) #8, !dbg !3535
  %2 = load ptr, ptr %path.addr, align 8, !dbg !3536
  %dentry = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1, !dbg !3537
  %3 = load ptr, ptr %dentry, align 8, !dbg !3537
  %call1 = call ptr @d_inode(ptr noundef %3) #8, !dbg !3538
  %4 = load i32, ptr %mask.addr, align 4, !dbg !3539
  %call2 = call i32 @inode_permission(ptr noundef %call, ptr noundef %call1, i32 noundef %4) #8, !dbg !3540
  ret i32 %call2, !dbg !3541
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3542 dso_local void @set_fs_pwd(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !3545 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #7, !dbg !3558
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3550, metadata !DIExpression()), !dbg !3558
  br label %do.body, !dbg !3558

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #7, !dbg !3559
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3552, metadata !DIExpression()), !dbg !3559
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3559
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3559
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #7, !dbg !3558
  br label %do.cond, !dbg !3559

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3559

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #7, !dbg !3560
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3556, metadata !DIExpression()), !dbg !3560
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #9, !dbg !3560, !srcloc !3561
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3560
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3560
  %3 = inttoptr i64 %2 to ptr, !dbg !3560
  store ptr %3, ptr %tmp, align 8, !dbg !3560
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #7, !dbg !3558
  %4 = load ptr, ptr %tmp, align 8, !dbg !3560
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3558
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3558
  store ptr %5, ptr %tmp1, align 8, !dbg !3558
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #7, !dbg !3562
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3558
  ret ptr %6, !dbg !3563
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_chroot(ptr noundef %filename) #0 section ".init.text" align 16 !dbg !3564 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3567, metadata !DIExpression()), !dbg !3572
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3573
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3568, metadata !DIExpression()), !dbg !3574
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !3575
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 3, ptr noundef %path) #8, !dbg !3576
  store i32 %call, ptr %error, align 4, !dbg !3577
  %1 = load i32, ptr %error, align 4, !dbg !3578
  %tobool = icmp ne i32 %1, 0, !dbg !3578
  br i1 %tobool, label %if.then, label %if.end, !dbg !3580

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !3581
  store i32 %2, ptr %retval, align 4, !dbg !3582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3582

if.end:                                           ; preds = %entry
  %call1 = call i32 @path_permission(ptr noundef %path, i32 noundef 65) #8, !dbg !3583
  store i32 %call1, ptr %error, align 4, !dbg !3584
  %3 = load i32, ptr %error, align 4, !dbg !3585
  %tobool2 = icmp ne i32 %3, 0, !dbg !3585
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3587

if.then3:                                         ; preds = %if.end
  br label %dput_and_out, !dbg !3588

if.end4:                                          ; preds = %if.end
  store i32 -1, ptr %error, align 4, !dbg !3589
  %call5 = call ptr @current_user_ns() #8, !dbg !3590
  %call6 = call zeroext i1 @ns_capable(ptr noundef %call5, i32 noundef 18) #8, !dbg !3592
  br i1 %call6, label %if.end8, label %if.then7, !dbg !3593

if.then7:                                         ; preds = %if.end4
  br label %dput_and_out, !dbg !3594

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @security_path_chroot(ptr noundef %path) #8, !dbg !3595
  store i32 %call9, ptr %error, align 4, !dbg !3596
  %4 = load i32, ptr %error, align 4, !dbg !3597
  %tobool10 = icmp ne i32 %4, 0, !dbg !3597
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3599

if.then11:                                        ; preds = %if.end8
  br label %dput_and_out, !dbg !3600

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @get_current() #8, !dbg !3601
  %fs = getelementptr inbounds %struct.task_struct, ptr %call13, i32 0, i32 100, !dbg !3602
  %5 = load ptr, ptr %fs, align 32, !dbg !3602
  call void @set_fs_root(ptr noundef %5, ptr noundef %path) #8, !dbg !3603
  br label %dput_and_out, !dbg !3603

dput_and_out:                                     ; preds = %if.end12, %if.then11, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !3569), !dbg !3604
  call void @path_put(ptr noundef %path) #8, !dbg !3605
  %6 = load i32, ptr %error, align 4, !dbg !3606
  store i32 %6, ptr %retval, align 4, !dbg !3607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3607

cleanup:                                          ; preds = %dput_and_out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3608
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3608
  %7 = load i32, ptr %retval, align 4, !dbg !3608
  ret i32 %7, !dbg !3608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3609 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #4 align 16 !dbg !3612 {
entry:
  ret ptr @init_user_ns, !dbg !3615
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @security_path_chroot(ptr noundef %path) #4 align 16 !dbg !3616 {
entry:
  %path.addr = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3621, metadata !DIExpression()), !dbg !3622
  ret i32 0, !dbg !3623
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3624 dso_local void @set_fs_root(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_chown(ptr noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flags) #0 section ".init.text" align 16 !dbg !3625 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %user.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %lookup_flags = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3629, metadata !DIExpression()), !dbg !3636
  store i32 %user, ptr %user.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !3630, metadata !DIExpression()), !dbg !3637
  store i32 %group, ptr %group.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3631, metadata !DIExpression()), !dbg !3638
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3632, metadata !DIExpression()), !dbg !3639
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #7, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !3633, metadata !DIExpression()), !dbg !3641
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3642
  %and = and i32 %0, 256, !dbg !3643
  %tobool = icmp ne i32 %and, 0, !dbg !3644
  %1 = zext i1 %tobool to i64, !dbg !3644
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !3644
  store i32 %cond, ptr %lookup_flags, align 4, !dbg !3641
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3645
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3634, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3647
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3635, metadata !DIExpression()), !dbg !3648
  %2 = load ptr, ptr %filename.addr, align 8, !dbg !3649
  %3 = load i32, ptr %lookup_flags, align 4, !dbg !3650
  %call = call i32 @kern_path(ptr noundef %2, i32 noundef %3, ptr noundef %path) #8, !dbg !3651
  store i32 %call, ptr %error, align 4, !dbg !3652
  %4 = load i32, ptr %error, align 4, !dbg !3653
  %tobool1 = icmp ne i32 %4, 0, !dbg !3653
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3655

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %error, align 4, !dbg !3656
  store i32 %5, ptr %retval, align 4, !dbg !3657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3657

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !3658
  %6 = load ptr, ptr %mnt, align 8, !dbg !3658
  %call2 = call i32 @mnt_want_write(ptr noundef %6) #8, !dbg !3659
  store i32 %call2, ptr %error, align 4, !dbg !3660
  %7 = load i32, ptr %error, align 4, !dbg !3661
  %tobool3 = icmp ne i32 %7, 0, !dbg !3661
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !3663

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %user.addr, align 4, !dbg !3664
  %9 = load i32, ptr %group.addr, align 4, !dbg !3666
  %call5 = call i32 @chown_common(ptr noundef %path, i32 noundef %8, i32 noundef %9) #8, !dbg !3667
  store i32 %call5, ptr %error, align 4, !dbg !3668
  %mnt6 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !3669
  %10 = load ptr, ptr %mnt6, align 8, !dbg !3669
  call void @mnt_drop_write(ptr noundef %10) #8, !dbg !3670
  br label %if.end7, !dbg !3671

if.end7:                                          ; preds = %if.then4, %if.end
  call void @path_put(ptr noundef %path) #8, !dbg !3672
  %11 = load i32, ptr %error, align 4, !dbg !3673
  store i32 %11, ptr %retval, align 4, !dbg !3674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3674

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3675
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3675
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #7, !dbg !3675
  %12 = load i32, ptr %retval, align 4, !dbg !3675
  ret i32 %12, !dbg !3675
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3676 dso_local i32 @mnt_want_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3679 dso_local i32 @chown_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3682 dso_local void @mnt_drop_write(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_chmod(ptr noundef %filename, i16 noundef zeroext %mode) #0 section ".init.text" align 16 !dbg !3685 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3689, metadata !DIExpression()), !dbg !3693
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3690, metadata !DIExpression()), !dbg !3694
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3695
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3691, metadata !DIExpression()), !dbg !3696
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3697
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3692, metadata !DIExpression()), !dbg !3698
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !3699
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef %path) #8, !dbg !3700
  store i32 %call, ptr %error, align 4, !dbg !3701
  %1 = load i32, ptr %error, align 4, !dbg !3702
  %tobool = icmp ne i32 %1, 0, !dbg !3702
  br i1 %tobool, label %if.then, label %if.end, !dbg !3704

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !3705
  store i32 %2, ptr %retval, align 4, !dbg !3706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3706

if.end:                                           ; preds = %entry
  %3 = load i16, ptr %mode.addr, align 2, !dbg !3707
  %call1 = call i32 @chmod_common(ptr noundef %path, i16 noundef zeroext %3) #8, !dbg !3708
  store i32 %call1, ptr %error, align 4, !dbg !3709
  call void @path_put(ptr noundef %path) #8, !dbg !3710
  %4 = load i32, ptr %error, align 4, !dbg !3711
  store i32 %4, ptr %retval, align 4, !dbg !3712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3712

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3713
  %5 = load i32, ptr %retval, align 4, !dbg !3713
  ret i32 %5, !dbg !3713
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3714 dso_local i32 @chmod_common(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_eaccess(ptr noundef %filename) #0 section ".init.text" align 16 !dbg !3717 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3719, metadata !DIExpression()), !dbg !3722
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3723
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3720, metadata !DIExpression()), !dbg !3724
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3725
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3721, metadata !DIExpression()), !dbg !3726
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !3727
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef %path) #8, !dbg !3728
  store i32 %call, ptr %error, align 4, !dbg !3729
  %1 = load i32, ptr %error, align 4, !dbg !3730
  %tobool = icmp ne i32 %1, 0, !dbg !3730
  br i1 %tobool, label %if.then, label %if.end, !dbg !3732

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !3733
  store i32 %2, ptr %retval, align 4, !dbg !3734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3734

if.end:                                           ; preds = %entry
  %call1 = call i32 @path_permission(ptr noundef %path, i32 noundef 16) #8, !dbg !3735
  store i32 %call1, ptr %error, align 4, !dbg !3736
  call void @path_put(ptr noundef %path) #8, !dbg !3737
  %3 = load i32, ptr %error, align 4, !dbg !3738
  store i32 %3, ptr %retval, align 4, !dbg !3739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3739

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3740
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3740
  %4 = load i32, ptr %retval, align 4, !dbg !3740
  ret i32 %4, !dbg !3740
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_stat(ptr noundef %filename, ptr noundef %stat, i32 noundef %flags) #0 section ".init.text" align 16 !dbg !3741 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %lookup_flags = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3745, metadata !DIExpression()), !dbg !3751
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !3746, metadata !DIExpression()), !dbg !3752
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3747, metadata !DIExpression()), !dbg !3753
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #7, !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !3748, metadata !DIExpression()), !dbg !3755
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3756
  %and = and i32 %0, 256, !dbg !3757
  %tobool = icmp ne i32 %and, 0, !dbg !3758
  %1 = zext i1 %tobool to i64, !dbg !3758
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !3758
  store i32 %cond, ptr %lookup_flags, align 4, !dbg !3755
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3749, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3750, metadata !DIExpression()), !dbg !3762
  %2 = load ptr, ptr %filename.addr, align 8, !dbg !3763
  %3 = load i32, ptr %lookup_flags, align 4, !dbg !3764
  %call = call i32 @kern_path(ptr noundef %2, i32 noundef %3, ptr noundef %path) #8, !dbg !3765
  store i32 %call, ptr %error, align 4, !dbg !3766
  %4 = load i32, ptr %error, align 4, !dbg !3767
  %tobool1 = icmp ne i32 %4, 0, !dbg !3767
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3769

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %error, align 4, !dbg !3770
  store i32 %5, ptr %retval, align 4, !dbg !3771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3771

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %stat.addr, align 8, !dbg !3772
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3773
  %or = or i32 %7, 2048, !dbg !3774
  %call2 = call i32 @vfs_getattr(ptr noundef %path, ptr noundef %6, i32 noundef 2047, i32 noundef %or) #8, !dbg !3775
  store i32 %call2, ptr %error, align 4, !dbg !3776
  call void @path_put(ptr noundef %path) #8, !dbg !3777
  %8 = load i32, ptr %error, align 4, !dbg !3778
  store i32 %8, ptr %retval, align 4, !dbg !3779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3779

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3780
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3780
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #7, !dbg !3780
  %9 = load i32, ptr %retval, align 4, !dbg !3780
  ret i32 %9, !dbg !3780
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3781 dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_mknod(ptr noundef %filename, i16 noundef zeroext %mode, i32 noundef %dev) #0 section ".init.text" align 16 !dbg !3784 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dev.addr = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3788, metadata !DIExpression()), !dbg !3794
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3789, metadata !DIExpression()), !dbg !3795
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3790, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #7, !dbg !3797
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3791, metadata !DIExpression()), !dbg !3798
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !3799
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3792, metadata !DIExpression()), !dbg !3800
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3801
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3793, metadata !DIExpression()), !dbg !3802
  %0 = load i16, ptr %mode.addr, align 2, !dbg !3803
  %conv = zext i16 %0 to i32, !dbg !3803
  %and = and i32 %conv, 61440, !dbg !3803
  %cmp = icmp eq i32 %and, 4096, !dbg !3803
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3805

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, ptr %mode.addr, align 2, !dbg !3806
  %conv2 = zext i16 %1 to i32, !dbg !3806
  %and3 = and i32 %conv2, 61440, !dbg !3806
  %cmp4 = icmp eq i32 %and3, 49152, !dbg !3806
  br i1 %cmp4, label %if.then, label %if.else, !dbg !3807

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %dev.addr, align 4, !dbg !3808
  br label %if.end16, !dbg !3809

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i16, ptr %mode.addr, align 2, !dbg !3810
  %conv6 = zext i16 %2 to i32, !dbg !3810
  %and7 = and i32 %conv6, 61440, !dbg !3810
  %cmp8 = icmp eq i32 %and7, 24576, !dbg !3810
  br i1 %cmp8, label %if.end, label %lor.lhs.false10, !dbg !3812

lor.lhs.false10:                                  ; preds = %if.else
  %3 = load i16, ptr %mode.addr, align 2, !dbg !3813
  %conv11 = zext i16 %3 to i32, !dbg !3813
  %and12 = and i32 %conv11, 61440, !dbg !3813
  %cmp13 = icmp eq i32 %and12, 8192, !dbg !3813
  br i1 %cmp13, label %if.end, label %if.then15, !dbg !3814

if.then15:                                        ; preds = %lor.lhs.false10
  store i32 -22, ptr %retval, align 4, !dbg !3815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3815

if.end:                                           ; preds = %lor.lhs.false10, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %4 = load ptr, ptr %filename.addr, align 8, !dbg !3816
  %call = call ptr @kern_path_create(i32 noundef -100, ptr noundef %4, ptr noundef %path, i32 noundef 0) #8, !dbg !3817
  store ptr %call, ptr %dentry, align 8, !dbg !3818
  %5 = load ptr, ptr %dentry, align 8, !dbg !3819
  %call17 = call zeroext i1 @IS_ERR(ptr noundef %5) #8, !dbg !3821
  br i1 %call17, label %if.then18, label %if.end21, !dbg !3822

if.then18:                                        ; preds = %if.end16
  %6 = load ptr, ptr %dentry, align 8, !dbg !3823
  %call19 = call i64 @PTR_ERR(ptr noundef %6) #8, !dbg !3824
  %conv20 = trunc i64 %call19 to i32, !dbg !3824
  store i32 %conv20, ptr %retval, align 4, !dbg !3825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3825

if.end21:                                         ; preds = %if.end16
  %dentry22 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !3826
  %7 = load ptr, ptr %dentry22, align 8, !dbg !3826
  %d_inode = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5, !dbg !3826
  %8 = load ptr, ptr %d_inode, align 8, !dbg !3826
  %i_sb = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9, !dbg !3826
  %9 = load ptr, ptr %i_sb, align 8, !dbg !3826
  %s_flags = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10, !dbg !3826
  %10 = load i64, ptr %s_flags, align 16, !dbg !3826
  %and23 = and i64 %10, 65536, !dbg !3826
  %tobool = icmp ne i64 %and23, 0, !dbg !3826
  br i1 %tobool, label %if.end29, label %if.then24, !dbg !3828

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @current_umask() #8, !dbg !3829
  %not = xor i32 %call25, -1, !dbg !3830
  %11 = load i16, ptr %mode.addr, align 2, !dbg !3831
  %conv26 = zext i16 %11 to i32, !dbg !3831
  %and27 = and i32 %conv26, %not, !dbg !3831
  %conv28 = trunc i32 %and27 to i16, !dbg !3831
  store i16 %conv28, ptr %mode.addr, align 2, !dbg !3831
  br label %if.end29, !dbg !3832

if.end29:                                         ; preds = %if.then24, %if.end21
  %12 = load ptr, ptr %dentry, align 8, !dbg !3833
  %13 = load i16, ptr %mode.addr, align 2, !dbg !3834
  %14 = load i32, ptr %dev.addr, align 4, !dbg !3835
  %call30 = call i32 @security_path_mknod(ptr noundef %path, ptr noundef %12, i16 noundef zeroext %13, i32 noundef %14) #8, !dbg !3836
  store i32 %call30, ptr %error, align 4, !dbg !3837
  %15 = load i32, ptr %error, align 4, !dbg !3838
  %tobool31 = icmp ne i32 %15, 0, !dbg !3838
  br i1 %tobool31, label %if.end38, label %if.then32, !dbg !3840

if.then32:                                        ; preds = %if.end29
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !3841
  %16 = load ptr, ptr %mnt, align 8, !dbg !3841
  %call33 = call ptr @mnt_idmap(ptr noundef %16) #8, !dbg !3842
  %dentry34 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !3843
  %17 = load ptr, ptr %dentry34, align 8, !dbg !3843
  %d_inode35 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5, !dbg !3844
  %18 = load ptr, ptr %d_inode35, align 8, !dbg !3844
  %19 = load ptr, ptr %dentry, align 8, !dbg !3845
  %20 = load i16, ptr %mode.addr, align 2, !dbg !3846
  %21 = load i32, ptr %dev.addr, align 4, !dbg !3847
  %call36 = call i32 @new_decode_dev(i32 noundef %21) #8, !dbg !3848
  %call37 = call i32 @vfs_mknod(ptr noundef %call33, ptr noundef %18, ptr noundef %19, i16 noundef zeroext %20, i32 noundef %call36) #8, !dbg !3849
  store i32 %call37, ptr %error, align 4, !dbg !3850
  br label %if.end38, !dbg !3851

if.end38:                                         ; preds = %if.then32, %if.end29
  %22 = load ptr, ptr %dentry, align 8, !dbg !3852
  call void @done_path_create(ptr noundef %path, ptr noundef %22) #8, !dbg !3853
  %23 = load i32, ptr %error, align 4, !dbg !3854
  store i32 %23, ptr %retval, align 4, !dbg !3855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3855

cleanup:                                          ; preds = %if.end38, %if.then18, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !3856
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !3856
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #7, !dbg !3856
  %24 = load i32, ptr %retval, align 4, !dbg !3856
  ret i32 %24, !dbg !3856
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3857 dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !3860 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3865, metadata !DIExpression()), !dbg !3866
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3867
  %1 = ptrtoint ptr %0 to i64, !dbg !3867
  %2 = inttoptr i64 %1 to ptr, !dbg !3867
  %3 = ptrtoint ptr %2 to i64, !dbg !3867
  %cmp = icmp uge i64 %3, -4095, !dbg !3867
  %lnot = xor i1 %cmp, true, !dbg !3867
  %lnot1 = xor i1 %lnot, true, !dbg !3867
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3867
  %conv = sext i32 %lnot.ext to i64, !dbg !3867
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3867
  %tobool = icmp ne i64 %expval, 0, !dbg !3867
  ret i1 %tobool, !dbg !3868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !3869 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3873, metadata !DIExpression()), !dbg !3874
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3875
  %1 = ptrtoint ptr %0 to i64, !dbg !3876
  ret i64 %1, !dbg !3877
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3878 dso_local i32 @current_umask() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @security_path_mknod(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #4 align 16 !dbg !3881 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dev.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3885, metadata !DIExpression()), !dbg !3889
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3886, metadata !DIExpression()), !dbg !3890
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3887, metadata !DIExpression()), !dbg !3891
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3888, metadata !DIExpression()), !dbg !3892
  ret i32 0, !dbg !3893
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3894 dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mnt_idmap(ptr noundef %mnt) #4 align 16 !dbg !3895 {
entry:
  %mnt.addr = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3901, metadata !DIExpression()), !dbg !3905
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #7, !dbg !3906
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !3902, metadata !DIExpression()), !dbg !3906
  br label %do.body, !dbg !3907

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3909

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3909

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !3907
  %mnt_idmap = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 3, !dbg !3907
  %1 = load volatile ptr, ptr %mnt_idmap, align 8, !dbg !3907
  store ptr %1, ptr %tmp, align 8, !dbg !3909
  %2 = load ptr, ptr %tmp, align 8, !dbg !3907
  store ptr %2, ptr %___p1, align 8, !dbg !3906
  br label %do.body1, !dbg !3906

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !3911

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !3911

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3906, !srcloc !3913
  %3 = load ptr, ptr %___p1, align 8, !dbg !3906
  store ptr %3, ptr %tmp4, align 8, !dbg !3906
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #7, !dbg !3914
  %4 = load ptr, ptr %tmp4, align 8, !dbg !3906
  ret ptr %4, !dbg !3915
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_decode_dev(i32 noundef %dev) #5 align 16 !dbg !3916 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3921, metadata !DIExpression()), !dbg !3924
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #7, !dbg !3925
  call void @llvm.dbg.declare(metadata ptr %major, metadata !3922, metadata !DIExpression()), !dbg !3926
  %0 = load i32, ptr %dev.addr, align 4, !dbg !3927
  %and = and i32 %0, 1048320, !dbg !3928
  %shr = lshr i32 %and, 8, !dbg !3929
  store i32 %shr, ptr %major, align 4, !dbg !3926
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #7, !dbg !3930
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !3923, metadata !DIExpression()), !dbg !3931
  %1 = load i32, ptr %dev.addr, align 4, !dbg !3932
  %and1 = and i32 %1, 255, !dbg !3933
  %2 = load i32, ptr %dev.addr, align 4, !dbg !3934
  %shr2 = lshr i32 %2, 12, !dbg !3935
  %and3 = and i32 %shr2, 1048320, !dbg !3936
  %or = or i32 %and1, %and3, !dbg !3937
  store i32 %or, ptr %minor, align 4, !dbg !3931
  %3 = load i32, ptr %major, align 4, !dbg !3938
  %shl = shl i32 %3, 20, !dbg !3938
  %4 = load i32, ptr %minor, align 4, !dbg !3938
  %or4 = or i32 %shl, %4, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #7, !dbg !3939
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #7, !dbg !3939
  ret i32 %or4, !dbg !3940
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3941 dso_local void @done_path_create(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_link(ptr noundef %oldname, ptr noundef %newname) #0 section ".init.text" align 16 !dbg !3944 {
entry:
  %retval = alloca i32, align 4
  %oldname.addr = alloca ptr, align 8
  %newname.addr = alloca ptr, align 8
  %new_dentry = alloca ptr, align 8
  %old_path = alloca %struct.path, align 8
  %new_path = alloca %struct.path, align 8
  %idmap = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %oldname, ptr %oldname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldname.addr, metadata !3948, metadata !DIExpression()), !dbg !3957
  store ptr %newname, ptr %newname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newname.addr, metadata !3949, metadata !DIExpression()), !dbg !3958
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_dentry) #7, !dbg !3959
  call void @llvm.dbg.declare(metadata ptr %new_dentry, metadata !3950, metadata !DIExpression()), !dbg !3960
  call void @llvm.lifetime.start.p0(i64 16, ptr %old_path) #7, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %old_path, metadata !3951, metadata !DIExpression()), !dbg !3962
  call void @llvm.lifetime.start.p0(i64 16, ptr %new_path) #7, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %new_path, metadata !3952, metadata !DIExpression()), !dbg !3963
  call void @llvm.lifetime.start.p0(i64 8, ptr %idmap) #7, !dbg !3964
  call void @llvm.dbg.declare(metadata ptr %idmap, metadata !3953, metadata !DIExpression()), !dbg !3965
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3954, metadata !DIExpression()), !dbg !3967
  %0 = load ptr, ptr %oldname.addr, align 8, !dbg !3968
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 0, ptr noundef %old_path) #8, !dbg !3969
  store i32 %call, ptr %error, align 4, !dbg !3970
  %1 = load i32, ptr %error, align 4, !dbg !3971
  %tobool = icmp ne i32 %1, 0, !dbg !3971
  br i1 %tobool, label %if.then, label %if.end, !dbg !3973

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !3974
  store i32 %2, ptr %retval, align 4, !dbg !3975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3975

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %newname.addr, align 8, !dbg !3976
  %call1 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %3, ptr noundef %new_path, i32 noundef 0) #8, !dbg !3977
  store ptr %call1, ptr %new_dentry, align 8, !dbg !3978
  %4 = load ptr, ptr %new_dentry, align 8, !dbg !3979
  %call2 = call i64 @PTR_ERR(ptr noundef %4) #8, !dbg !3980
  %conv = trunc i64 %call2 to i32, !dbg !3980
  store i32 %conv, ptr %error, align 4, !dbg !3981
  %5 = load ptr, ptr %new_dentry, align 8, !dbg !3982
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %5) #8, !dbg !3984
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3985

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !3986

if.end5:                                          ; preds = %if.end
  store i32 -18, ptr %error, align 4, !dbg !3987
  %mnt = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 0, !dbg !3988
  %6 = load ptr, ptr %mnt, align 8, !dbg !3988
  %mnt6 = getelementptr inbounds %struct.path, ptr %new_path, i32 0, i32 0, !dbg !3990
  %7 = load ptr, ptr %mnt6, align 8, !dbg !3990
  %cmp = icmp ne ptr %6, %7, !dbg !3991
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3992

if.then8:                                         ; preds = %if.end5
  br label %out_dput, !dbg !3993

if.end9:                                          ; preds = %if.end5
  %mnt10 = getelementptr inbounds %struct.path, ptr %new_path, i32 0, i32 0, !dbg !3994
  %8 = load ptr, ptr %mnt10, align 8, !dbg !3994
  %call11 = call ptr @mnt_idmap(ptr noundef %8) #8, !dbg !3995
  store ptr %call11, ptr %idmap, align 8, !dbg !3996
  %9 = load ptr, ptr %idmap, align 8, !dbg !3997
  %call12 = call i32 @may_linkat(ptr noundef %9, ptr noundef %old_path) #8, !dbg !3998
  store i32 %call12, ptr %error, align 4, !dbg !3999
  %10 = load i32, ptr %error, align 4, !dbg !4000
  %tobool13 = icmp ne i32 %10, 0, !dbg !4000
  %lnot = xor i1 %tobool13, true, !dbg !4000
  %lnot14 = xor i1 %lnot, true, !dbg !4000
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4000
  %conv15 = sext i32 %lnot.ext to i64, !dbg !4000
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !4000
  %tobool16 = icmp ne i64 %expval, 0, !dbg !4000
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4002

if.then17:                                        ; preds = %if.end9
  br label %out_dput, !dbg !4003

if.end18:                                         ; preds = %if.end9
  %dentry = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 1, !dbg !4004
  %11 = load ptr, ptr %dentry, align 8, !dbg !4004
  %12 = load ptr, ptr %new_dentry, align 8, !dbg !4005
  %call19 = call i32 @security_path_link(ptr noundef %11, ptr noundef %new_path, ptr noundef %12) #8, !dbg !4006
  store i32 %call19, ptr %error, align 4, !dbg !4007
  %13 = load i32, ptr %error, align 4, !dbg !4008
  %tobool20 = icmp ne i32 %13, 0, !dbg !4008
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4010

if.then21:                                        ; preds = %if.end18
  br label %out_dput, !dbg !4011

if.end22:                                         ; preds = %if.end18
  %dentry23 = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 1, !dbg !4012
  %14 = load ptr, ptr %dentry23, align 8, !dbg !4012
  %15 = load ptr, ptr %idmap, align 8, !dbg !4013
  %dentry24 = getelementptr inbounds %struct.path, ptr %new_path, i32 0, i32 1, !dbg !4014
  %16 = load ptr, ptr %dentry24, align 8, !dbg !4014
  %d_inode = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5, !dbg !4015
  %17 = load ptr, ptr %d_inode, align 8, !dbg !4015
  %18 = load ptr, ptr %new_dentry, align 8, !dbg !4016
  %call25 = call i32 @vfs_link(ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef %18, ptr noundef null) #8, !dbg !4017
  store i32 %call25, ptr %error, align 4, !dbg !4018
  br label %out_dput, !dbg !4019

out_dput:                                         ; preds = %if.end22, %if.then21, %if.then17, %if.then8
  call void @llvm.dbg.label(metadata !3955), !dbg !4020
  %19 = load ptr, ptr %new_dentry, align 8, !dbg !4021
  call void @done_path_create(ptr noundef %new_path, ptr noundef %19) #8, !dbg !4022
  br label %out, !dbg !4022

out:                                              ; preds = %out_dput, %if.then4
  call void @llvm.dbg.label(metadata !3956), !dbg !4023
  call void @path_put(ptr noundef %old_path) #8, !dbg !4024
  %20 = load i32, ptr %error, align 4, !dbg !4025
  store i32 %20, ptr %retval, align 4, !dbg !4026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4026

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 8, ptr %idmap) #7, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 16, ptr %new_path) #7, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 16, ptr %old_path) #7, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_dentry) #7, !dbg !4027
  %21 = load i32, ptr %retval, align 4, !dbg !4027
  ret i32 %21, !dbg !4027
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4028 dso_local i32 @may_linkat(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @security_path_link(ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #4 align 16 !dbg !4031 {
entry:
  %old_dentry.addr = alloca ptr, align 8
  %new_dir.addr = alloca ptr, align 8
  %new_dentry.addr = alloca ptr, align 8
  store ptr %old_dentry, ptr %old_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dentry.addr, metadata !4035, metadata !DIExpression()), !dbg !4038
  store ptr %new_dir, ptr %new_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dir.addr, metadata !4036, metadata !DIExpression()), !dbg !4039
  store ptr %new_dentry, ptr %new_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dentry.addr, metadata !4037, metadata !DIExpression()), !dbg !4040
  ret i32 0, !dbg !4041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4042 dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_symlink(ptr noundef %oldname, ptr noundef %newname) #0 section ".init.text" align 16 !dbg !4046 {
entry:
  %retval = alloca i32, align 4
  %oldname.addr = alloca ptr, align 8
  %newname.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %oldname, ptr %oldname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldname.addr, metadata !4048, metadata !DIExpression()), !dbg !4053
  store ptr %newname, ptr %newname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newname.addr, metadata !4049, metadata !DIExpression()), !dbg !4054
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #7, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4050, metadata !DIExpression()), !dbg !4056
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !4057
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4051, metadata !DIExpression()), !dbg !4058
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !4059
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4052, metadata !DIExpression()), !dbg !4060
  %0 = load ptr, ptr %newname.addr, align 8, !dbg !4061
  %call = call ptr @kern_path_create(i32 noundef -100, ptr noundef %0, ptr noundef %path, i32 noundef 0) #8, !dbg !4062
  store ptr %call, ptr %dentry, align 8, !dbg !4063
  %1 = load ptr, ptr %dentry, align 8, !dbg !4064
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #8, !dbg !4066
  br i1 %call1, label %if.then, label %if.end, !dbg !4067

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry, align 8, !dbg !4068
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #8, !dbg !4069
  %conv = trunc i64 %call2 to i32, !dbg !4069
  store i32 %conv, ptr %retval, align 4, !dbg !4070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4070

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !4071
  %4 = load ptr, ptr %oldname.addr, align 8, !dbg !4072
  %call3 = call i32 @security_path_symlink(ptr noundef %path, ptr noundef %3, ptr noundef %4) #8, !dbg !4073
  store i32 %call3, ptr %error, align 4, !dbg !4074
  %5 = load i32, ptr %error, align 4, !dbg !4075
  %tobool = icmp ne i32 %5, 0, !dbg !4075
  br i1 %tobool, label %if.end8, label %if.then4, !dbg !4077

if.then4:                                         ; preds = %if.end
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !4078
  %6 = load ptr, ptr %mnt, align 8, !dbg !4078
  %call5 = call ptr @mnt_idmap(ptr noundef %6) #8, !dbg !4079
  %dentry6 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4080
  %7 = load ptr, ptr %dentry6, align 8, !dbg !4080
  %d_inode = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5, !dbg !4081
  %8 = load ptr, ptr %d_inode, align 8, !dbg !4081
  %9 = load ptr, ptr %dentry, align 8, !dbg !4082
  %10 = load ptr, ptr %oldname.addr, align 8, !dbg !4083
  %call7 = call i32 @vfs_symlink(ptr noundef %call5, ptr noundef %8, ptr noundef %9, ptr noundef %10) #8, !dbg !4084
  store i32 %call7, ptr %error, align 4, !dbg !4085
  br label %if.end8, !dbg !4086

if.end8:                                          ; preds = %if.then4, %if.end
  %11 = load ptr, ptr %dentry, align 8, !dbg !4087
  call void @done_path_create(ptr noundef %path, ptr noundef %11) #8, !dbg !4088
  %12 = load i32, ptr %error, align 4, !dbg !4089
  store i32 %12, ptr %retval, align 4, !dbg !4090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4090

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !4091
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !4091
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #7, !dbg !4091
  %13 = load i32, ptr %retval, align 4, !dbg !4091
  ret i32 %13, !dbg !4091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @security_path_symlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %old_name) #4 align 16 !dbg !4092 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %old_name.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4096, metadata !DIExpression()), !dbg !4099
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4097, metadata !DIExpression()), !dbg !4100
  store ptr %old_name, ptr %old_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_name.addr, metadata !4098, metadata !DIExpression()), !dbg !4101
  ret i32 0, !dbg !4102
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4103 dso_local i32 @vfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_unlink(ptr noundef %pathname) #0 section ".init.text" align 16 !dbg !4104 {
entry:
  %pathname.addr = alloca ptr, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !4108
  %call = call ptr @getname_kernel(ptr noundef %0) #8, !dbg !4109
  %call1 = call i32 @do_unlinkat(i32 noundef -100, ptr noundef %call) #8, !dbg !4110
  ret i32 %call1, !dbg !4111
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4112 dso_local i32 @do_unlinkat(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4126 dso_local ptr @getname_kernel(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_mkdir(ptr noundef %pathname, i16 noundef zeroext %mode) #0 section ".init.text" align 16 !dbg !4129 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dentry = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !4131, metadata !DIExpression()), !dbg !4136
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4132, metadata !DIExpression()), !dbg !4137
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #7, !dbg !4138
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4133, metadata !DIExpression()), !dbg !4139
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !4140
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4134, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4135, metadata !DIExpression()), !dbg !4143
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !4144
  %call = call ptr @kern_path_create(i32 noundef -100, ptr noundef %0, ptr noundef %path, i32 noundef 2) #8, !dbg !4145
  store ptr %call, ptr %dentry, align 8, !dbg !4146
  %1 = load ptr, ptr %dentry, align 8, !dbg !4147
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #8, !dbg !4149
  br i1 %call1, label %if.then, label %if.end, !dbg !4150

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry, align 8, !dbg !4151
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #8, !dbg !4152
  %conv = trunc i64 %call2 to i32, !dbg !4152
  store i32 %conv, ptr %retval, align 4, !dbg !4153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4153

if.end:                                           ; preds = %entry
  %dentry3 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4154
  %3 = load ptr, ptr %dentry3, align 8, !dbg !4154
  %d_inode = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5, !dbg !4154
  %4 = load ptr, ptr %d_inode, align 8, !dbg !4154
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9, !dbg !4154
  %5 = load ptr, ptr %i_sb, align 8, !dbg !4154
  %s_flags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10, !dbg !4154
  %6 = load i64, ptr %s_flags, align 16, !dbg !4154
  %and = and i64 %6, 65536, !dbg !4154
  %tobool = icmp ne i64 %and, 0, !dbg !4154
  br i1 %tobool, label %if.end9, label %if.then4, !dbg !4156

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @current_umask() #8, !dbg !4157
  %not = xor i32 %call5, -1, !dbg !4158
  %7 = load i16, ptr %mode.addr, align 2, !dbg !4159
  %conv6 = zext i16 %7 to i32, !dbg !4159
  %and7 = and i32 %conv6, %not, !dbg !4159
  %conv8 = trunc i32 %and7 to i16, !dbg !4159
  store i16 %conv8, ptr %mode.addr, align 2, !dbg !4159
  br label %if.end9, !dbg !4160

if.end9:                                          ; preds = %if.then4, %if.end
  %8 = load ptr, ptr %dentry, align 8, !dbg !4161
  %9 = load i16, ptr %mode.addr, align 2, !dbg !4162
  %call10 = call i32 @security_path_mkdir(ptr noundef %path, ptr noundef %8, i16 noundef zeroext %9) #8, !dbg !4163
  store i32 %call10, ptr %error, align 4, !dbg !4164
  %10 = load i32, ptr %error, align 4, !dbg !4165
  %tobool11 = icmp ne i32 %10, 0, !dbg !4165
  br i1 %tobool11, label %if.end17, label %if.then12, !dbg !4167

if.then12:                                        ; preds = %if.end9
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !4168
  %11 = load ptr, ptr %mnt, align 8, !dbg !4168
  %call13 = call ptr @mnt_idmap(ptr noundef %11) #8, !dbg !4169
  %dentry14 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4170
  %12 = load ptr, ptr %dentry14, align 8, !dbg !4170
  %d_inode15 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5, !dbg !4171
  %13 = load ptr, ptr %d_inode15, align 8, !dbg !4171
  %14 = load ptr, ptr %dentry, align 8, !dbg !4172
  %15 = load i16, ptr %mode.addr, align 2, !dbg !4173
  %call16 = call i32 @vfs_mkdir(ptr noundef %call13, ptr noundef %13, ptr noundef %14, i16 noundef zeroext %15) #8, !dbg !4174
  store i32 %call16, ptr %error, align 4, !dbg !4175
  br label %if.end17, !dbg !4176

if.end17:                                         ; preds = %if.then12, %if.end9
  %16 = load ptr, ptr %dentry, align 8, !dbg !4177
  call void @done_path_create(ptr noundef %path, ptr noundef %16) #8, !dbg !4178
  %17 = load i32, ptr %error, align 4, !dbg !4179
  store i32 %17, ptr %retval, align 4, !dbg !4180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4180

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #7, !dbg !4181
  %18 = load i32, ptr %retval, align 4, !dbg !4181
  ret i32 %18, !dbg !4181
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @security_path_mkdir(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #4 align 16 !dbg !4182 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4186, metadata !DIExpression()), !dbg !4189
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4187, metadata !DIExpression()), !dbg !4190
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4188, metadata !DIExpression()), !dbg !4191
  ret i32 0, !dbg !4192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4193 dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_rmdir(ptr noundef %pathname) #0 section ".init.text" align 16 !dbg !4194 {
entry:
  %pathname.addr = alloca ptr, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !4196, metadata !DIExpression()), !dbg !4197
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !4198
  %call = call ptr @getname_kernel(ptr noundef %0) #8, !dbg !4199
  %call1 = call i32 @do_rmdir(i32 noundef -100, ptr noundef %call) #8, !dbg !4200
  ret i32 %call1, !dbg !4201
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4202 dso_local i32 @do_rmdir(i32 noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_utimes(ptr noundef %filename, ptr noundef %ts) #0 section ".init.text" align 16 !dbg !4203 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !4208, metadata !DIExpression()), !dbg !4212
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !4209, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #7, !dbg !4214
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4210, metadata !DIExpression()), !dbg !4215
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !4216
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4211, metadata !DIExpression()), !dbg !4217
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !4218
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 0, ptr noundef %path) #8, !dbg !4219
  store i32 %call, ptr %error, align 4, !dbg !4220
  %1 = load i32, ptr %error, align 4, !dbg !4221
  %tobool = icmp ne i32 %1, 0, !dbg !4221
  br i1 %tobool, label %if.then, label %if.end, !dbg !4223

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !4224
  store i32 %2, ptr %retval, align 4, !dbg !4225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4225

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ts.addr, align 8, !dbg !4226
  %call1 = call i32 @vfs_utimes(ptr noundef %path, ptr noundef %3) #8, !dbg !4227
  store i32 %call1, ptr %error, align 4, !dbg !4228
  call void @path_put(ptr noundef %path) #8, !dbg !4229
  %4 = load i32, ptr %error, align 4, !dbg !4230
  store i32 %4, ptr %retval, align 4, !dbg !4231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4231

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !4232
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #7, !dbg !4232
  %5 = load i32, ptr %retval, align 4, !dbg !4232
  ret i32 %5, !dbg !4232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4233 dso_local i32 @vfs_utimes(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_dup(ptr noundef %file) #0 section ".init.text" align 16 !dbg !4236 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4240, metadata !DIExpression()), !dbg !4242
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #7, !dbg !4243
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !4241, metadata !DIExpression()), !dbg !4244
  %call = call i32 @get_unused_fd_flags(i32 noundef 0) #8, !dbg !4245
  store i32 %call, ptr %fd, align 4, !dbg !4246
  %0 = load i32, ptr %fd, align 4, !dbg !4247
  %cmp = icmp slt i32 %0, 0, !dbg !4249
  br i1 %cmp, label %if.then, label %if.end, !dbg !4250

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %fd, align 4, !dbg !4251
  store i32 %1, ptr %retval, align 4, !dbg !4252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4252

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fd, align 4, !dbg !4253
  %3 = load ptr, ptr %file.addr, align 8, !dbg !4254
  %call1 = call ptr @get_file(ptr noundef %3) #8, !dbg !4255
  call void @fd_install(i32 noundef %2, ptr noundef %call1) #8, !dbg !4256
  store i32 0, ptr %retval, align 4, !dbg !4257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4257

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #7, !dbg !4258
  %4 = load i32, ptr %retval, align 4, !dbg !4258
  ret i32 %4, !dbg !4258
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4259 dso_local i32 @get_unused_fd_flags(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4263 dso_local void @fd_install(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_file(ptr noundef %f) #4 align 16 !dbg !4266 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4272
  %f_count = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3, !dbg !4273
  call void @atomic_long_inc(ptr noundef %f_count) #8, !dbg !4274
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4275
  ret ptr %1, !dbg !4276
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4277 dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !4278 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4282, metadata !DIExpression()), !dbg !4283
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4284
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4285
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4285
  ret ptr %1, !dbg !4286
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #5 align 16 !dbg !4287 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4294
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !4295
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4296
  call void @raw_atomic_long_inc(ptr noundef %1) #8, !dbg !4297
  ret void, !dbg !4298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4299 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4307, metadata !DIExpression()), !dbg !4309
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4308, metadata !DIExpression()), !dbg !4310
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4311
  %1 = load i64, ptr %size.addr, align 8, !dbg !4312
  %conv = trunc i64 %1 to i32, !dbg !4312
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !4313
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4314
  %3 = load i64, ptr %size.addr, align 8, !dbg !4314
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !4314
  ret void, !dbg !4315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #5 align 16 !dbg !4316 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4320
  call void @raw_atomic64_inc(ptr noundef %0) #8, !dbg !4321
  ret void, !dbg !4322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4323 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4328, metadata !DIExpression()), !dbg !4330
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4329, metadata !DIExpression()), !dbg !4331
  ret i1 true, !dbg !4332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !4333 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4338, metadata !DIExpression()), !dbg !4341
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4339, metadata !DIExpression()), !dbg !4342
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4340, metadata !DIExpression()), !dbg !4343
  ret void, !dbg !4344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #5 align 16 !dbg !4345 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4351, metadata !DIExpression()), !dbg !4352
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4353
  call void @arch_atomic64_inc(ptr noundef %0) #8, !dbg !4354
  ret void, !dbg !4355
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #5 align 16 !dbg !4356 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4361
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4362
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4363
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4364
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #7, !dbg !4365, !srcloc !4366
  ret void, !dbg !4367
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!llvm.ident = !{!3404}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.init.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/init\22 -D KBUILD_BASENAME=\22init\22 -D KBUILD_MODNAME=\22init\22 -D __KBUILD_MODNAME=kmod_init -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/init.ll fs/init.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !77, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fs/init.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e937a003f8a316a94a36b887d9dfbd1")
!2 = !{!3, !12, !28, !35, !43, !48, !54, !59, !65, !72}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !4, line: 9, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!8 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!9 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!10 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!11 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !13, line: 1325, baseType: !5, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!15 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!16 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!17 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!18 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!19 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!20 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!21 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!22 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!23 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!24 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!25 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!26 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!27 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !29, line: 15, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!32 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!33 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!34 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !44, line: 2052, baseType: !5, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!47 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !49, line: 54, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "USRQUOTA", value: 0)
!52 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!53 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !5, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !60, line: 16, baseType: !5, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "TT_NONE", value: 0)
!63 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!64 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !66, line: 51, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!69 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!70 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!71 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 10, baseType: !5, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "false", value: 0)
!76 = !DIEnumerator(name: "true", value: 1)
!77 = !{!78, !98, !79, !88, !981, !3393}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !81, line: 746, size: 58368, elements: !82)
!81 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!82 = !{!83, !96, !97, !99, !111, !112, !113, !114, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !206, !217, !344, !348, !351, !382, !383, !384, !385, !396, !398, !399, !400, !401, !402, !403, !414, !415, !418, !419, !420, !421, !422, !423, !424, !425, !432, !433, !440, !441, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2555, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2570, !2571, !2572, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2604, !2610, !2611, !2612, !2613, !2614, !2616, !2619, !2626, !2631, !2643, !2646, !2649, !2652, !2792, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2834, !2835, !2836, !2845, !2853, !2854, !2855, !2856, !2857, !2862, !2863, !2864, !2867, !2868, !2871, !2874, !2877, !2885, !2888, !2889, !2975, !2976, !2977, !2978, !2979, !2985, !2986, !2987, !2988, !2991, !2992, !2995, !2998, !2999, !3002, !3003, !3004, !3007, !3008, !3009, !3010, !3011, !3012, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3044, !3045, !3051, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3063, !3135, !3137, !3138, !3139, !3140, !3141, !3153, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3170, !3171, !3172}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !80, file: !81, line: 752, baseType: !84, size: 192)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !85, line: 56, size: 192, elements: !86)
!85 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!86 = !{!87, !89, !90, !95}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !85, line: 57, baseType: !88, size: 64)
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !84, file: !85, line: 58, baseType: !88, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !84, file: !85, line: 59, baseType: !91, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !5)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !84, file: !85, line: 61, baseType: !91, size: 32, offset: 160)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !80, file: !81, line: 754, baseType: !5, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !80, file: !81, line: 767, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !80, file: !81, line: 768, baseType: !100, size: 32, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !101, line: 113, baseType: !102)
!101 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !101, line: 111, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !102, file: !101, line: 112, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !106, line: 174, baseType: !107)
!106 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 172, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !107, file: !106, line: 173, baseType: !110, size: 32)
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !81, line: 770, baseType: !5, size: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !80, file: !81, line: 771, baseType: !5, size: 32, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !80, file: !81, line: 774, baseType: !110, size: 32, offset: 416)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !80, file: !81, line: 775, baseType: !115, size: 128, offset: 448)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !116, line: 58, size: 128, elements: !117)
!116 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!117 = !{!118, !124, !129, !133}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !115, file: !116, line: 59, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !120, line: 60, size: 64, elements: !121)
!120 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !120, line: 61, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !116, line: 60, baseType: !125, size: 32, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 60, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !125, file: !116, line: 61, baseType: !5, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !125, file: !116, line: 62, baseType: !105, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !115, file: !116, line: 65, baseType: !130, size: 16, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !132)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !115, file: !116, line: 65, baseType: !130, size: 16, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !80, file: !81, line: 776, baseType: !5, size: 32, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !80, file: !81, line: 777, baseType: !88, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !80, file: !81, line: 778, baseType: !79, size: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !80, file: !81, line: 787, baseType: !110, size: 32, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !80, file: !81, line: 788, baseType: !110, size: 32, offset: 800)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !80, file: !81, line: 790, baseType: !110, size: 32, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !80, file: !81, line: 792, baseType: !110, size: 32, offset: 864)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !80, file: !81, line: 793, baseType: !110, size: 32, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !80, file: !81, line: 794, baseType: !110, size: 32, offset: 928)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !80, file: !81, line: 795, baseType: !5, size: 32, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !80, file: !81, line: 797, baseType: !145, size: 2048, offset: 1024)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !81, line: 551, size: 2048, elements: !146)
!146 = !{!147, !152, !160, !164, !165, !171, !172, !173, !174, !175, !176, !180, !181, !182, !183, !185, !188, !189, !190}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !145, file: !81, line: 553, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !81, line: 411, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !148, file: !81, line: 412, baseType: !88, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !148, file: !81, line: 413, baseType: !91, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !145, file: !81, line: 554, baseType: !153, size: 192, align: 64, offset: 128)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !154, line: 5, size: 192, align: 64, elements: !155)
!154 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!155 = !{!156, !157, !159}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !153, file: !154, line: 6, baseType: !88, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !153, file: !154, line: 7, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !153, file: !154, line: 8, baseType: !158, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !145, file: !81, line: 555, baseType: !161, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !163)
!163 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !145, file: !81, line: 556, baseType: !161, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !145, file: !81, line: 558, baseType: !166, size: 128, offset: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !106, line: 190, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !106, line: 191, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !106, line: 191, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !145, file: !81, line: 559, baseType: !5, size: 32, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !145, file: !81, line: 561, baseType: !161, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !145, file: !81, line: 562, baseType: !161, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !145, file: !81, line: 563, baseType: !161, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !145, file: !81, line: 564, baseType: !161, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !145, file: !81, line: 565, baseType: !177, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !179)
!179 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !145, file: !81, line: 566, baseType: !161, size: 64, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !145, file: !81, line: 568, baseType: !161, size: 64, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !145, file: !81, line: 571, baseType: !110, size: 32, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !81, line: 572, baseType: !184, size: 64, offset: 1152)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !145, file: !81, line: 574, baseType: !186, size: 64, offset: 1216)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !81, line: 49, flags: DIFlagFwdDecl)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !145, file: !81, line: 576, baseType: !186, size: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !145, file: !81, line: 578, baseType: !88, size: 64, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !145, file: !81, line: 588, baseType: !191, size: 512, align: 512, offset: 1536)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !81, line: 497, size: 512, align: 512, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !191, file: !81, line: 498, baseType: !161, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !191, file: !81, line: 499, baseType: !161, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !191, file: !81, line: 500, baseType: !161, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !191, file: !81, line: 501, baseType: !91, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !191, file: !81, line: 502, baseType: !91, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !191, file: !81, line: 503, baseType: !88, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !191, file: !81, line: 504, baseType: !88, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !191, file: !81, line: 505, baseType: !88, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !191, file: !81, line: 506, baseType: !202, size: 64, align: 64, offset: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !81, line: 445, size: 64, align: 64, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !202, file: !81, line: 446, baseType: !5, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !202, file: !81, line: 447, baseType: !5, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !80, file: !81, line: 798, baseType: !207, size: 384, offset: 3072)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !81, line: 592, size: 384, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !207, file: !81, line: 593, baseType: !166, size: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !207, file: !81, line: 594, baseType: !88, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !207, file: !81, line: 595, baseType: !88, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !207, file: !81, line: 596, baseType: !5, size: 32, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !207, file: !81, line: 597, baseType: !132, size: 16, offset: 288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !207, file: !81, line: 598, baseType: !132, size: 16, offset: 304)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !207, file: !81, line: 600, baseType: !216, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !80, file: !81, line: 799, baseType: !218, size: 1792, offset: 3456)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !81, line: 610, size: 1792, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !341, !342}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !218, file: !81, line: 611, baseType: !153, size: 192, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !218, file: !81, line: 618, baseType: !161, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !218, file: !81, line: 619, baseType: !161, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !218, file: !81, line: 620, baseType: !161, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !218, file: !81, line: 621, baseType: !161, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !218, file: !81, line: 622, baseType: !161, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !218, file: !81, line: 629, baseType: !177, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !218, file: !81, line: 630, baseType: !161, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !81, line: 631, baseType: !5, size: 32, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !218, file: !81, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !218, file: !81, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !218, file: !81, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !218, file: !81, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !218, file: !81, line: 662, baseType: !234, size: 512, offset: 704)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !235)
!235 = !{!236, !244, !245, !250, !337, !338, !339, !340}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !55, line: 119, baseType: !237, size: 256)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !238, line: 9, size: 256, elements: !239)
!238 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !237, file: !238, line: 10, baseType: !153, size: 192, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !237, file: !238, line: 11, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !243, line: 29, baseType: !177)
!243 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !234, file: !55, line: 120, baseType: !242, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !234, file: !55, line: 121, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!54, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !234, file: !55, line: 122, baseType: !251, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !253)
!253 = !{!254, !305, !306, !310, !320, !321, !332, !336}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !252, file: !55, line: 160, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !257)
!257 = !{!258, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !256, file: !55, line: 216, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !260, line: 23, baseType: !261)
!260 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !260, line: 14, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !261, file: !260, line: 15, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !265, line: 44, baseType: !266)
!265 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !265, line: 14, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !265, line: 15, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !265, line: 15, size: 32, elements: !270)
!270 = !{!271, !272, !280}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !269, file: !265, line: 16, baseType: !105, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !265, line: 24, baseType: !273, size: 16)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !265, line: 24, size: 16, elements: !274)
!274 = !{!275, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !273, file: !265, line: 25, baseType: !276, size: 8)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !278)
!278 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !273, file: !265, line: 26, baseType: !276, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !265, line: 28, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !265, line: 28, size: 32, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !281, file: !265, line: 29, baseType: !130, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !281, file: !265, line: 30, baseType: !130, size: 16, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !256, file: !55, line: 217, baseType: !5, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !256, file: !55, line: 218, baseType: !5, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !256, file: !55, line: 219, baseType: !5, size: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !256, file: !55, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !256, file: !55, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !256, file: !55, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !256, file: !55, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !256, file: !55, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !256, file: !55, line: 226, baseType: !5, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !256, file: !55, line: 227, baseType: !132, size: 16, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !256, file: !55, line: 228, baseType: !132, size: 16, offset: 208)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !256, file: !55, line: 229, baseType: !5, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !256, file: !55, line: 235, baseType: !242, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !256, file: !55, line: 236, baseType: !249, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !256, file: !55, line: 237, baseType: !242, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !256, file: !55, line: 238, baseType: !249, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !256, file: !55, line: 239, baseType: !302, size: 4096, align: 512, offset: 512)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 4096, align: 512, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 8)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !252, file: !55, line: 161, baseType: !5, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !252, file: !55, line: 162, baseType: !307, size: 32, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !106, line: 32, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !309, line: 96, baseType: !110)
!309 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !252, file: !55, line: 163, baseType: !311, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !312, line: 274, baseType: !313)
!312 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !312, line: 274, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !313, file: !312, line: 274, baseType: !316, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !312, line: 69, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !312, line: 64, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !317, file: !312, line: 65, baseType: !5, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !252, file: !55, line: 164, baseType: !249, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !252, file: !55, line: 165, baseType: !322, size: 128, offset: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !238, line: 14, size: 128, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !322, file: !238, line: 15, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !154, line: 26, size: 128, elements: !326)
!326 = !{!327, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !325, file: !154, line: 27, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !154, line: 12, size: 64, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !328, file: !154, line: 13, baseType: !158, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !325, file: !154, line: 28, baseType: !158, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !252, file: !55, line: 166, baseType: !333, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!242}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !252, file: !55, line: 167, baseType: !242, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !234, file: !55, line: 123, baseType: !276, size: 8, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !234, file: !55, line: 124, baseType: !276, size: 8, offset: 456)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !234, file: !55, line: 125, baseType: !276, size: 8, offset: 464)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !234, file: !55, line: 126, baseType: !276, size: 8, offset: 472)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !218, file: !81, line: 671, baseType: !234, size: 512, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !218, file: !81, line: 679, baseType: !343, size: 64, offset: 1728)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !80, file: !81, line: 800, baseType: !345, size: 64, offset: 5248)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !81, line: 800, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !80, file: !81, line: 809, baseType: !349, size: 64, offset: 5312)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !81, line: 70, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !80, file: !81, line: 825, baseType: !352, size: 2048, align: 512, offset: 5632)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !81, line: 509, size: 2048, align: 512, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !352, file: !81, line: 511, baseType: !161, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !352, file: !81, line: 512, baseType: !161, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !352, file: !81, line: 513, baseType: !161, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !352, file: !81, line: 514, baseType: !161, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !352, file: !81, line: 515, baseType: !161, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !352, file: !81, line: 516, baseType: !161, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !352, file: !81, line: 518, baseType: !161, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !352, file: !81, line: 519, baseType: !161, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !352, file: !81, line: 520, baseType: !177, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !352, file: !81, line: 522, baseType: !161, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !352, file: !81, line: 523, baseType: !161, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !352, file: !81, line: 524, baseType: !177, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !352, file: !81, line: 526, baseType: !177, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !352, file: !81, line: 527, baseType: !161, size: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !352, file: !81, line: 529, baseType: !161, size: 64, offset: 896)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !352, file: !81, line: 530, baseType: !161, size: 64, offset: 960)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !352, file: !81, line: 531, baseType: !161, size: 64, offset: 1024)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !352, file: !81, line: 532, baseType: !161, size: 64, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !352, file: !81, line: 533, baseType: !161, size: 64, offset: 1152)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !352, file: !81, line: 535, baseType: !161, size: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !352, file: !81, line: 536, baseType: !161, size: 64, offset: 1280)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !352, file: !81, line: 537, baseType: !161, size: 64, offset: 1344)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !352, file: !81, line: 538, baseType: !161, size: 64, offset: 1408)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !352, file: !81, line: 539, baseType: !161, size: 64, offset: 1472)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !352, file: !81, line: 540, baseType: !161, size: 64, offset: 1536)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !352, file: !81, line: 541, baseType: !161, size: 64, offset: 1600)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !352, file: !81, line: 542, baseType: !161, size: 64, offset: 1664)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !352, file: !81, line: 543, baseType: !161, size: 64, offset: 1728)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !80, file: !81, line: 833, baseType: !5, size: 32, offset: 7680)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !80, file: !81, line: 836, baseType: !5, size: 32, offset: 7712)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !80, file: !81, line: 837, baseType: !110, size: 32, offset: 7744)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !80, file: !81, line: 838, baseType: !386, size: 64, offset: 7808)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !389, line: 19, baseType: !390)
!389 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !389, line: 19, size: 64, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !390, file: !389, line: 19, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 1)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !80, file: !81, line: 839, baseType: !397, size: 64, offset: 7872)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !80, file: !81, line: 840, baseType: !388, size: 64, offset: 7936)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !80, file: !81, line: 841, baseType: !98, size: 64, offset: 8000)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !80, file: !81, line: 843, baseType: !132, size: 16, offset: 8064)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !80, file: !81, line: 845, baseType: !132, size: 16, offset: 8080)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !80, file: !81, line: 848, baseType: !110, size: 32, offset: 8096)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !80, file: !81, line: 849, baseType: !404, size: 32, offset: 8128)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !81, line: 718, size: 32, elements: !405)
!405 = !{!406, !413}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !404, file: !81, line: 724, baseType: !407, size: 32)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !81, line: 719, size: 32, elements: !408)
!408 = !{!409, !410, !411, !412}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !407, file: !81, line: 720, baseType: !276, size: 8)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !407, file: !81, line: 721, baseType: !276, size: 8, offset: 8)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !407, file: !81, line: 722, baseType: !276, size: 8, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !407, file: !81, line: 723, baseType: !276, size: 8, offset: 24)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !404, file: !81, line: 725, baseType: !91, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !80, file: !81, line: 850, baseType: !166, size: 128, offset: 8192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !80, file: !81, line: 851, baseType: !416, size: 64, offset: 8320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !81, line: 60, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !80, file: !81, line: 855, baseType: !88, size: 64, offset: 8384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !80, file: !81, line: 856, baseType: !276, size: 8, offset: 8448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !80, file: !81, line: 857, baseType: !276, size: 8, offset: 8456)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !80, file: !81, line: 858, baseType: !110, size: 32, offset: 8480)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !80, file: !81, line: 859, baseType: !166, size: 128, offset: 8512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !80, file: !81, line: 860, baseType: !110, size: 32, offset: 8640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !80, file: !81, line: 861, baseType: !166, size: 128, offset: 8704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !80, file: !81, line: 873, baseType: !426, size: 256, offset: 8832)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !81, line: 376, size: 256, elements: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !426, file: !81, line: 381, baseType: !88, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !426, file: !81, line: 384, baseType: !163, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !426, file: !81, line: 389, baseType: !163, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !426, file: !81, line: 392, baseType: !163, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !80, file: !81, line: 875, baseType: !166, size: 128, offset: 9088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !80, file: !81, line: 877, baseType: !434, size: 320, offset: 9216)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !435, line: 86, size: 320, elements: !436)
!435 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!436 = !{!437, !438, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !434, file: !435, line: 87, baseType: !110, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !434, file: !435, line: 88, baseType: !166, size: 128, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !434, file: !435, line: 89, baseType: !166, size: 128, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !80, file: !81, line: 878, baseType: !153, size: 192, align: 64, offset: 9536)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !80, file: !81, line: 881, baseType: !442, size: 64, offset: 9728)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !13, line: 733, size: 10240, elements: !444)
!444 = !{!445, !2474}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !13, line: 734, baseType: !446, size: 10240)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !13, line: 734, size: 10240, elements: !447)
!447 = !{!448, !452, !474, !2372, !2373, !2374, !2375, !2376, !2377, !2384, !2385, !2386, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2425, !2427, !2430, !2454, !2455, !2456, !2459, !2460, !2461, !2464, !2465, !2466, !2472, !2473}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !13, line: 739, baseType: !449, size: 512, align: 512)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !13, line: 739, size: 512, align: 512, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !449, file: !13, line: 747, baseType: !105, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !446, file: !13, line: 750, baseType: !453, size: 128, offset: 512)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !454, line: 218, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!455 = !{!456, !472, !473}
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !454, line: 219, baseType: !457, size: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !454, line: 219, size: 32, elements: !458)
!458 = !{!459, !468}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !457, file: !454, line: 220, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !461, line: 29, baseType: !462)
!461 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !461, line: 17, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !461, line: 18, baseType: !465, size: 32)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !461, line: 18, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !465, file: !461, line: 19, baseType: !261, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !457, file: !454, line: 221, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !454, line: 197, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 197, elements: !471)
!471 = !{}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !453, file: !454, line: 223, baseType: !5, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !453, file: !454, line: 224, baseType: !98, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !446, file: !13, line: 752, baseType: !475, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!88, !478, !88, !88, !88, !88}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 994, size: 1856, align: 64, elements: !480)
!480 = !{!481, !495, !496, !498, !505, !517, !520, !521, !597, !813, !822, !2362, !2363, !2364, !2365, !2366, !2367, !2369, !2370, !2371}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !44, line: 995, baseType: !482, size: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !44, line: 995, size: 128, elements: !483)
!483 = !{!484, !485, !494}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !482, file: !44, line: 996, baseType: !119, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !482, file: !44, line: 997, baseType: !486, size: 128, align: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !106, line: 232, size: 128, align: 64, elements: !487)
!487 = !{!488, !490}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !106, line: 233, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !486, file: !106, line: 234, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !489}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !482, file: !44, line: 998, baseType: !5, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !479, file: !44, line: 1005, baseType: !460, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !479, file: !44, line: 1006, baseType: !497, size: 32, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !106, line: 156, baseType: !5)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !479, file: !44, line: 1007, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !500, line: 13, baseType: !501)
!500 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !106, line: 181, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 179, size: 64, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !502, file: !106, line: 180, baseType: !177, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !479, file: !44, line: 1008, baseType: !506, size: 256, offset: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !507, line: 66, size: 256, elements: !508)
!507 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!508 = !{!509, !510, !511, !516}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !506, file: !507, line: 67, baseType: !499, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !506, file: !507, line: 68, baseType: !259, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !506, file: !507, line: 70, baseType: !512, size: 32, offset: 96)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !513, line: 15, size: 32, elements: !514)
!513 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !512, file: !513, line: 20, baseType: !105, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !506, file: !507, line: 72, baseType: !166, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !479, file: !44, line: 1009, baseType: !518, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !106, line: 52, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !309, line: 88, baseType: !179)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !479, file: !44, line: 1010, baseType: !5, size: 32, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !479, file: !44, line: 1011, baseType: !522, size: 256, offset: 640)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 948, size: 256, elements: !523)
!523 = !{!524, !547, !586, !587, !595, !596}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !44, line: 949, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !526, line: 34, baseType: !527)
!526 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 25, size: 64, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !527, file: !526, line: 26, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !531, line: 27, baseType: !532)
!531 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !531, line: 13, size: 64, elements: !533)
!533 = !{!534, !546}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !531, line: 14, baseType: !535, size: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !531, line: 14, size: 32, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !535, file: !531, line: 15, baseType: !105, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !531, line: 16, baseType: !539, size: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !531, line: 16, size: 32, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !539, file: !531, line: 18, baseType: !276, size: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !539, file: !531, line: 19, baseType: !543, size: 24, offset: 8)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 24, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 3)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !532, file: !531, line: 26, baseType: !264, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !522, file: !44, line: 950, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !4, line: 59, size: 768, elements: !550)
!550 = !{!551, !552, !553, !554, !567, !568, !575, !576}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !549, file: !4, line: 61, baseType: !100, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !549, file: !4, line: 62, baseType: !5, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !549, file: !4, line: 63, baseType: !460, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !549, file: !4, line: 65, baseType: !555, size: 256, offset: 128)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 256, elements: !565)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !106, line: 194, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !556, file: !106, line: 195, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !106, line: 198, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !106, line: 199, baseType: !559, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !560, file: !106, line: 199, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!565 = !{!566}
!566 = !DISubrange(count: 4)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !549, file: !4, line: 66, baseType: !556, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !549, file: !4, line: 68, baseType: !569, size: 192, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !570, line: 41, baseType: !571)
!570 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !570, line: 37, size: 192, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !571, file: !570, line: 38, baseType: !460, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !571, file: !570, line: 39, baseType: !166, size: 128, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !549, file: !4, line: 69, baseType: !486, size: 128, align: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !549, file: !4, line: 70, baseType: !577, offset: 768)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, elements: !584)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !4, line: 54, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !578, file: !4, line: 55, baseType: !110, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !578, file: !4, line: 56, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !4, line: 56, flags: DIFlagFwdDecl)
!584 = !{!585}
!585 = !DISubrange(count: -1)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !522, file: !44, line: 951, baseType: !3, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !522, file: !44, line: 952, baseType: !588, size: 32, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !589, line: 23, baseType: !590)
!589 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 21, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !590, file: !589, line: 22, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !106, line: 37, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !309, line: 49, baseType: !5)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !522, file: !44, line: 952, baseType: !588, size: 32, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !522, file: !44, line: 953, baseType: !110, size: 32, offset: 224)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !479, file: !44, line: 1012, baseType: !598, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !601, line: 110, size: 1472, elements: !602)
!601 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!602 = !{!603, !604, !605, !612, !613, !614, !615, !616, !617, !618, !619, !625, !626, !627, !628, !629, !630, !757, !758, !759, !760, !761, !792, !796, !800, !808}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !600, file: !601, line: 111, baseType: !499, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !600, file: !601, line: 112, baseType: !588, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !600, file: !601, line: 113, baseType: !606, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !589, line: 28, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 26, size: 32, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !607, file: !589, line: 27, baseType: !610, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !106, line: 38, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !309, line: 50, baseType: !5)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !600, file: !601, line: 114, baseType: !588, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !600, file: !601, line: 115, baseType: !606, size: 32, offset: 160)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !600, file: !601, line: 116, baseType: !588, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !600, file: !601, line: 117, baseType: !606, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !600, file: !601, line: 118, baseType: !588, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !600, file: !601, line: 119, baseType: !606, size: 32, offset: 288)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !600, file: !601, line: 120, baseType: !5, size: 32, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !600, file: !601, line: 121, baseType: !620, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !621, line: 24, baseType: !622)
!621 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 24, size: 64, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !622, file: !621, line: 24, baseType: !161, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !600, file: !601, line: 122, baseType: !620, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !600, file: !601, line: 123, baseType: !620, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !600, file: !601, line: 124, baseType: !620, size: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !600, file: !601, line: 125, baseType: !620, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !600, file: !601, line: 127, baseType: !278, size: 8, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !600, file: !601, line: 129, baseType: !631, size: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !633, line: 195, size: 1728, elements: !634)
!633 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!634 = !{!635, !636, !641, !646, !655, !658, !659, !666, !667, !668, !669, !672, !673, !674, !676, !677, !721, !742}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !632, file: !633, line: 196, baseType: !100, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !632, file: !633, line: 197, baseType: !637, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !633, line: 28, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !106, line: 104, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !110)
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 198, baseType: !642, size: 192, offset: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 198, size: 192, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !642, file: !633, line: 199, baseType: !166, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !642, file: !633, line: 200, baseType: !153, size: 192, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !632, file: !633, line: 205, baseType: !647, size: 320, offset: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !648, line: 48, size: 320, elements: !649)
!648 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!649 = !{!650, !651, !652, !653, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !647, file: !648, line: 49, baseType: !499, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !647, file: !648, line: 55, baseType: !499, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !647, file: !648, line: 57, baseType: !512, size: 32, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !647, file: !648, line: 59, baseType: !259, size: 32, offset: 160)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !647, file: !648, line: 60, baseType: !166, size: 128, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !632, file: !633, line: 206, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !633, line: 206, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !632, file: !633, line: 207, baseType: !98, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 208, baseType: !660, size: 64, offset: 704)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 208, size: 64, elements: !661)
!661 = !{!662, !665}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !660, file: !633, line: 209, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !664, line: 8, baseType: !178)
!664 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !660, file: !633, line: 210, baseType: !663, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !632, file: !633, line: 212, baseType: !663, size: 64, offset: 768)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !632, file: !633, line: 213, baseType: !588, size: 32, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !632, file: !633, line: 214, baseType: !606, size: 32, offset: 864)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !632, file: !633, line: 215, baseType: !670, size: 32, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !633, line: 31, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 110, baseType: !91)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !632, file: !633, line: 216, baseType: !132, size: 16, offset: 928)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !632, file: !633, line: 217, baseType: !132, size: 16, offset: 944)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !632, file: !633, line: 221, baseType: !675, size: 16, offset: 960)
!675 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 228, baseType: !88, size: 64, offset: 1024)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 245, baseType: !678, size: 320, offset: 1088)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 245, size: 320, elements: !679)
!679 = !{!680, !712}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !678, file: !633, line: 246, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !633, line: 114, size: 320, elements: !682)
!682 = !{!683, !684, !697, !700, !709}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !681, file: !633, line: 116, baseType: !88, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !633, line: 117, baseType: !685, size: 64, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !633, line: 117, size: 64, elements: !686)
!686 = !{!687, !696}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !633, line: 118, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !633, line: 118, size: 64, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !688, file: !633, line: 120, baseType: !130, size: 16)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !688, file: !633, line: 121, baseType: !692, size: 48, offset: 16)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 48, elements: !694)
!693 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!694 = !{!695}
!695 = !DISubrange(count: 6)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !685, file: !633, line: 127, baseType: !88, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !633, line: 129, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !633, line: 102, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !681, file: !633, line: 130, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !633, line: 108, size: 192, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !702, file: !633, line: 109, baseType: !486, size: 128, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !702, file: !633, line: 110, baseType: !100, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !702, file: !633, line: 111, baseType: !707, size: 8, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !106, line: 35, baseType: !708)
!708 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !681, file: !633, line: 131, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !633, line: 247, baseType: !713, size: 320)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !633, line: 247, size: 320, elements: !714)
!714 = !{!715, !716, !717, !718, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !713, file: !633, line: 248, baseType: !88, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !713, file: !633, line: 249, baseType: !88, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !633, line: 250, baseType: !698, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !713, file: !633, line: 251, baseType: !701, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !713, file: !633, line: 252, baseType: !720, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 260, baseType: !722, size: 256, offset: 1408)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 260, size: 256, elements: !723)
!723 = !{!724, !730}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !722, file: !633, line: 261, baseType: !725, size: 256)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !633, line: 134, size: 256, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !725, file: !633, line: 135, baseType: !98, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !725, file: !633, line: 136, baseType: !729, size: 256)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !565)
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !633, line: 262, baseType: !731, size: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !633, line: 262, size: 256, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !731, file: !633, line: 264, baseType: !166, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !731, file: !633, line: 265, baseType: !735, size: 128, offset: 128)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !736, line: 22, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!737 = !{!738, !741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !735, file: !736, line: 23, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !736, line: 23, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !735, file: !736, line: 24, baseType: !88, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !632, file: !633, line: 280, baseType: !743, size: 64, offset: 1664)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !633, line: 176, size: 192, elements: !745)
!745 = !{!746, !755, !756}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !744, file: !633, line: 177, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !633, line: 171, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!110, !631, !751, !753, !631}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !744, file: !633, line: 178, baseType: !631, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !744, file: !633, line: 179, baseType: !698, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !600, file: !601, line: 130, baseType: !631, size: 64, offset: 832)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !600, file: !601, line: 131, baseType: !631, size: 64, offset: 896)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !600, file: !601, line: 132, baseType: !631, size: 64, offset: 960)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !600, file: !601, line: 135, baseType: !98, size: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !600, file: !601, line: 137, baseType: !762, size: 64, offset: 1088)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !764, line: 14, size: 1088, elements: !765)
!764 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!765 = !{!766, !767, !776, !777, !778, !779, !780, !781}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !763, file: !764, line: 15, baseType: !100, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !763, file: !764, line: 17, baseType: !768, size: 320, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !769, line: 22, size: 320, elements: !770)
!769 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!770 = !{!771, !772, !773, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !768, file: !769, line: 23, baseType: !259, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !768, file: !769, line: 24, baseType: !177, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !768, file: !769, line: 26, baseType: !166, size: 128, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !768, file: !769, line: 28, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !763, file: !764, line: 19, baseType: !88, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !763, file: !764, line: 20, baseType: !499, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !763, file: !764, line: 23, baseType: !560, size: 128, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !763, file: !764, line: 24, baseType: !588, size: 32, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !763, file: !764, line: 29, baseType: !499, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !763, file: !764, line: 36, baseType: !782, size: 320, offset: 768)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !783, line: 15, size: 320, elements: !784)
!783 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!784 = !{!785, !786, !787, !788, !789, !790, !791}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !782, file: !783, line: 16, baseType: !259, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !782, file: !783, line: 18, baseType: !110, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !782, file: !783, line: 19, baseType: !110, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !782, file: !783, line: 20, baseType: !110, size: 32, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !782, file: !783, line: 21, baseType: !110, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !782, file: !783, line: 22, baseType: !88, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !783, line: 23, baseType: !88, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !600, file: !601, line: 138, baseType: !793, size: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !795, line: 18, flags: DIFlagFwdDecl)
!795 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !600, file: !601, line: 139, baseType: !797, size: 64, offset: 1216)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !799, line: 16, flags: DIFlagFwdDecl)
!799 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!800 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !600, file: !601, line: 140, baseType: !801, size: 64, offset: 1280)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !601, line: 25, size: 64, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !802, file: !601, line: 26, baseType: !105, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !802, file: !601, line: 27, baseType: !110, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !802, file: !601, line: 28, baseType: !807, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, elements: !584)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 142, baseType: !809, size: 128, offset: 1344)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 142, size: 128, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !809, file: !601, line: 143, baseType: !110, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !809, file: !601, line: 144, baseType: !486, size: 128, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !479, file: !44, line: 1013, baseType: !814, size: 256, offset: 960)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 970, size: 256, elements: !815)
!815 = !{!816, !817, !818, !819, !820, !821}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !814, file: !44, line: 971, baseType: !88, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !814, file: !44, line: 972, baseType: !5, size: 32, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !814, file: !44, line: 973, baseType: !5, size: 32, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !814, file: !44, line: 974, baseType: !5, size: 32, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !814, file: !44, line: 975, baseType: !5, size: 32, offset: 160)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !814, file: !44, line: 976, baseType: !518, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !479, file: !44, line: 1014, baseType: !823, size: 128, offset: 1216)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !824, line: 8, size: 128, elements: !825)
!824 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!825 = !{!826, !2361}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !823, file: !824, line: 9, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !795, line: 70, size: 256, elements: !829)
!829 = !{!830, !2358, !2359, !2360}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !828, file: !795, line: 71, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !833, line: 82, size: 1536, elements: !834)
!833 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!834 = !{!835, !836, !841, !849, !850, !865, !2325, !2327, !2340, !2341, !2342, !2343, !2344, !2350, !2351, !2352}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !832, file: !833, line: 84, baseType: !5, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !832, file: !833, line: 85, baseType: !837, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !312, line: 275, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !312, line: 275, size: 32, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !838, file: !312, line: 275, baseType: !316, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !832, file: !833, line: 86, baseType: !842, size: 128, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !843, line: 38, size: 128, elements: !844)
!843 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!844 = !{!845, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !843, line: 39, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !842, file: !843, line: 39, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !832, file: !833, line: 87, baseType: !831, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !832, file: !833, line: 88, baseType: !851, size: 128, offset: 256)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !833, line: 49, size: 128, elements: !852)
!852 = !{!853, !862}
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !833, line: 50, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !833, line: 50, size: 64, elements: !855)
!855 = !{!856, !861}
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !833, line: 51, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !833, line: 51, size: 64, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !857, file: !833, line: 52, baseType: !91, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !857, file: !833, line: 52, baseType: !91, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !854, file: !833, line: 54, baseType: !161, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !851, file: !833, line: 56, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !832, file: !833, line: 89, baseType: !866, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 641, size: 4800, elements: !868)
!868 = !{!869, !871, !872, !873, !874, !875, !876, !879, !880, !1078, !1636, !2135, !2136, !2137, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2307, !2310, !2311, !2312, !2321, !2322, !2323, !2324}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !867, file: !44, line: 642, baseType: !870, size: 16)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !106, line: 24, baseType: !132)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !867, file: !44, line: 643, baseType: !132, size: 16, offset: 16)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !867, file: !44, line: 644, baseType: !588, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !867, file: !44, line: 645, baseType: !166, size: 128, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !867, file: !44, line: 646, baseType: !606, size: 32, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !867, file: !44, line: 647, baseType: !5, size: 32, offset: 224)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !867, file: !44, line: 650, baseType: !877, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 607, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !867, file: !44, line: 651, baseType: !877, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !867, file: !44, line: 654, baseType: !881, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1966, size: 2048, align: 512, elements: !884)
!884 = !{!885, !889, !902, !908, !912, !916, !920, !924, !928, !932, !936, !937, !943, !947, !985, !1016, !1026, !1032, !1036, !1040, !1044, !1048, !1052, !1058, !1062}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !883, file: !44, line: 1967, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!831, !866, !831, !5}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !883, file: !44, line: 1968, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!710, !831, !866, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !895, line: 10, size: 128, elements: !896)
!895 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!896 = !{!897, !901}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !894, file: !895, line: 11, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !98}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !894, file: !895, line: 12, baseType: !98, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !883, file: !44, line: 1969, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!110, !906, !866, !110}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !795, line: 19, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !883, file: !44, line: 1970, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!877, !866, !110, !707}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !883, file: !44, line: 1972, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!110, !831, !720, !110}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !883, file: !44, line: 1974, baseType: !917, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!110, !906, !866, !831, !870, !707}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !883, file: !44, line: 1976, baseType: !921, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!110, !831, !866, !831}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !883, file: !44, line: 1977, baseType: !925, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!110, !866, !831}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !883, file: !44, line: 1978, baseType: !929, size: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!110, !906, !866, !831, !710}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !883, file: !44, line: 1980, baseType: !933, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!110, !906, !866, !831, !870}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !883, file: !44, line: 1982, baseType: !925, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !883, file: !44, line: 1983, baseType: !938, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!110, !906, !866, !831, !870, !941}
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !106, line: 21, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !106, line: 18, baseType: !91)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !883, file: !44, line: 1985, baseType: !944, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!110, !906, !866, !831, !866, !831, !5}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !883, file: !44, line: 1987, baseType: !948, size: 64, offset: 832)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!110, !906, !831, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 226, size: 640, elements: !953)
!953 = !{!954, !955, !956, !966, !975, !976, !982, !983, !984}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !952, file: !44, line: 227, baseType: !5, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !952, file: !44, line: 228, baseType: !870, size: 16, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !44, line: 241, baseType: !957, size: 32, offset: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !44, line: 241, size: 32, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !957, file: !44, line: 242, baseType: !588, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !957, file: !44, line: 243, baseType: !961, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !962, line: 16, baseType: !963)
!962 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !962, line: 14, size: 32, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !963, file: !962, line: 15, baseType: !593, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !44, line: 245, baseType: !967, size: 32, offset: 96)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !44, line: 245, size: 32, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !967, file: !44, line: 246, baseType: !606, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !967, file: !44, line: 247, baseType: !971, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !962, line: 20, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !962, line: 18, size: 32, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !972, file: !962, line: 19, baseType: !610, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !952, file: !44, line: 249, baseType: !518, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !952, file: !44, line: 250, baseType: !977, size: 128, offset: 192)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !664, line: 13, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !977, file: !664, line: 14, baseType: !663, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !977, file: !664, line: 15, baseType: !981, size: 64, offset: 64)
!981 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !952, file: !44, line: 251, baseType: !977, size: 128, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !952, file: !44, line: 252, baseType: !977, size: 128, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !952, file: !44, line: 259, baseType: !478, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !883, file: !44, line: 1988, baseType: !986, size: 64, offset: 896)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!110, !906, !989, !991, !91, !5}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !993, line: 22, size: 1280, elements: !994)
!993 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !992, file: !993, line: 23, baseType: !91, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !992, file: !993, line: 24, baseType: !870, size: 16, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !992, file: !993, line: 25, baseType: !5, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !992, file: !993, line: 26, baseType: !671, size: 32, offset: 96)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !992, file: !993, line: 27, baseType: !161, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !992, file: !993, line: 28, baseType: !161, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !992, file: !993, line: 41, baseType: !161, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !992, file: !993, line: 42, baseType: !941, size: 32, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !992, file: !993, line: 43, baseType: !941, size: 32, offset: 352)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !992, file: !993, line: 44, baseType: !588, size: 32, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !992, file: !993, line: 45, baseType: !606, size: 32, offset: 416)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !993, line: 46, baseType: !518, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !992, file: !993, line: 47, baseType: !977, size: 128, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !992, file: !993, line: 48, baseType: !977, size: 128, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !992, file: !993, line: 49, baseType: !977, size: 128, offset: 768)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !992, file: !993, line: 50, baseType: !977, size: 128, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !992, file: !993, line: 51, baseType: !161, size: 64, offset: 1024)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !992, file: !993, line: 52, baseType: !161, size: 64, offset: 1088)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !992, file: !993, line: 53, baseType: !91, size: 32, offset: 1152)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !992, file: !993, line: 54, baseType: !91, size: 32, offset: 1184)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !992, file: !993, line: 55, baseType: !161, size: 64, offset: 1216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !883, file: !44, line: 1990, baseType: !1017, size: 64, offset: 960)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020, !831, !720, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !106, line: 66, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !309, line: 73, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !309, line: 15, baseType: !981)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 61, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !309, line: 72, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !309, line: 16, baseType: !88)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !883, file: !44, line: 1991, baseType: !1027, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!110, !866, !1030, !161, !161}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 55, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !883, file: !44, line: 1993, baseType: !1033, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!110, !866, !110}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !883, file: !44, line: 1994, baseType: !1037, size: 64, offset: 1152)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!110, !866, !831, !478, !5, !870}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !883, file: !44, line: 1997, baseType: !1041, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!110, !906, !866, !478, !870}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !883, file: !44, line: 1999, baseType: !1045, size: 64, offset: 1280)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!877, !906, !831, !110}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !883, file: !44, line: 2001, baseType: !1049, size: 64, offset: 1344)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!110, !906, !831, !877, !110}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !883, file: !44, line: 2003, baseType: !1053, size: 64, offset: 1408)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!110, !906, !831, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !44, line: 76, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !883, file: !44, line: 2005, baseType: !1059, size: 64, offset: 1472)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!110, !831, !1056}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !883, file: !44, line: 2006, baseType: !1063, size: 64, offset: 1536)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066, !866}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !44, line: 3192, size: 192, elements: !1068)
!1068 = !{!1069, !1077}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1067, file: !44, line: 3193, baseType: !1070, size: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1071, line: 296, size: 128, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1072 = !{!1073, !1074, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1070, file: !1071, line: 297, baseType: !460, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1070, file: !1071, line: 299, baseType: !1075, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !106, line: 154, baseType: !5)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1070, file: !1071, line: 300, baseType: !98, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1067, file: !44, line: 3194, baseType: !91, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !867, file: !44, line: 655, baseType: !1079, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1190, size: 10752, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1128, !1265, !1305, !1388, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1405, !1409, !1410, !1413, !1416, !1419, !1422, !1423, !1424, !1465, !1492, !1493, !1494, !1495, !1496, !1497, !1500, !1504, !1513, !1514, !1515, !1516, !1575, !1590, !1591, !1592, !1593, !1596, !1600, !1601, !1602, !1617, !1618, !1619, !1630, !1631, !1632, !1633, !1634, !1635}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1080, file: !44, line: 1191, baseType: !166, size: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1080, file: !44, line: 1192, baseType: !941, size: 32, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1080, file: !44, line: 1193, baseType: !278, size: 8, offset: 160)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1080, file: !44, line: 1194, baseType: !88, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1080, file: !44, line: 1195, baseType: !518, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1080, file: !44, line: 1196, baseType: !1088, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2366, size: 576, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1099, !1103, !1107, !1111, !1115, !1116, !1117, !1120, !1121, !1122, !1124, !1125, !1126, !1127}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1089, file: !44, line: 2367, baseType: !710, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1089, file: !44, line: 2368, baseType: !110, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1089, file: !44, line: 2376, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!110, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !795, line: 21, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1089, file: !44, line: 2377, baseType: !1100, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 75, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1089, file: !44, line: 2378, baseType: !1104, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!831, !1088, !110, !710, !98}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1089, file: !44, line: 2380, baseType: !1108, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !1079}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1089, file: !44, line: 2381, baseType: !1112, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1114, line: 103, flags: DIFlagFwdDecl)
!1114 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !44, line: 2382, baseType: !1088, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1089, file: !44, line: 2383, baseType: !556, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1089, file: !44, line: 2385, baseType: !1118, offset: 576)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1119, line: 206, elements: !471)
!1119 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1089, file: !44, line: 2386, baseType: !1118, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1089, file: !44, line: 2387, baseType: !1118, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1089, file: !44, line: 2388, baseType: !1123, offset: 576)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1118, elements: !544)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1089, file: !44, line: 2390, baseType: !1118, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1089, file: !44, line: 2391, baseType: !1118, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1089, file: !44, line: 2392, baseType: !1118, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1089, file: !44, line: 2393, baseType: !1118, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1080, file: !44, line: 1197, baseType: !1129, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 2057, size: 1664, elements: !1132)
!1132 = !{!1133, !1137, !1141, !1142, !1146, !1152, !1156, !1157, !1158, !1162, !1166, !1170, !1171, !1172, !1178, !1183, !1184, !1190, !1191, !1192, !1193, !1197, !1201, !1248, !1263, !1264}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1131, file: !44, line: 2058, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!866, !1079}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1131, file: !44, line: 2059, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !866}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1131, file: !44, line: 2060, baseType: !1138, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1131, file: !44, line: 2062, baseType: !1143, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !866, !110}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1131, file: !44, line: 2063, baseType: !1147, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!110, !866, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 309, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1131, file: !44, line: 2064, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!110, !866}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1131, file: !44, line: 2065, baseType: !1138, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1131, file: !44, line: 2066, baseType: !1108, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1131, file: !44, line: 2067, baseType: !1159, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!110, !1079, !110}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1131, file: !44, line: 2068, baseType: !1163, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!110, !1079, !43}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1131, file: !44, line: 2069, baseType: !1167, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!110, !1079}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1131, file: !44, line: 2070, baseType: !1163, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1131, file: !44, line: 2071, baseType: !1167, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1131, file: !44, line: 2072, baseType: !1173, size: 64, offset: 832)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!110, !831, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 62, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1131, file: !44, line: 2073, baseType: !1179, size: 64, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!110, !1079, !1182, !720}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1131, file: !44, line: 2074, baseType: !1108, size: 64, offset: 960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1131, file: !44, line: 2076, baseType: !1185, size: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!110, !1188, !831}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !81, line: 66, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1131, file: !44, line: 2077, baseType: !1185, size: 64, offset: 1088)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1131, file: !44, line: 2078, baseType: !1185, size: 64, offset: 1152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1131, file: !44, line: 2079, baseType: !1185, size: 64, offset: 1216)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1131, file: !44, line: 2081, baseType: !1194, size: 64, offset: 1280)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1020, !1079, !110, !720, !1023, !518}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1131, file: !44, line: 2082, baseType: !1198, size: 64, offset: 1344)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1020, !1079, !110, !710, !1023, !518}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1131, file: !44, line: 2083, baseType: !1202, size: 64, offset: 1408)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205, !866}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !49, line: 296, size: 1664, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1233, !1234, !1235}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1207, file: !49, line: 297, baseType: !560, size: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1207, file: !49, line: 298, baseType: !166, size: 128, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1207, file: !49, line: 299, baseType: !166, size: 128, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1207, file: !49, line: 300, baseType: !166, size: 128, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1207, file: !49, line: 301, baseType: !506, size: 256, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1207, file: !49, line: 302, baseType: !460, size: 32, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1207, file: !49, line: 303, baseType: !105, size: 32, offset: 800)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1207, file: !49, line: 304, baseType: !1079, size: 64, offset: 832)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1207, file: !49, line: 305, baseType: !1218, size: 64, offset: 896)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !49, line: 68, size: 64, elements: !1219)
!1219 = !{!1220, !1232}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !49, line: 69, baseType: !1221, size: 32)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !49, line: 69, size: 32, elements: !1222)
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1221, file: !49, line: 70, baseType: !588, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1221, file: !49, line: 71, baseType: !606, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1221, file: !49, line: 72, baseType: !1226, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1227, line: 24, baseType: !1228)
!1227 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 22, size: 32, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1228, file: !1227, line: 23, baseType: !1231, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1227, line: 20, baseType: !594)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1218, file: !49, line: 74, baseType: !48, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1207, file: !49, line: 306, baseType: !518, size: 64, offset: 960)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1207, file: !49, line: 307, baseType: !88, size: 64, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1207, file: !49, line: 308, baseType: !1236, size: 576, offset: 1088)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !49, line: 205, size: 576, elements: !1237)
!1237 = !{!1238, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1236, file: !49, line: 206, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !49, line: 66, baseType: !179)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1236, file: !49, line: 207, baseType: !1239, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1236, file: !49, line: 208, baseType: !1239, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1236, file: !49, line: 209, baseType: !1239, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1236, file: !49, line: 210, baseType: !1239, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1236, file: !49, line: 211, baseType: !1239, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1236, file: !49, line: 212, baseType: !1239, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1236, file: !49, line: 213, baseType: !663, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1236, file: !49, line: 214, baseType: !663, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1131, file: !44, line: 2085, baseType: !1249, size: 64, offset: 1472)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!981, !1079, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1254, line: 15, size: 256, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1255 = !{!1256, !1257, !1258, !1259, !1260}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1253, file: !1254, line: 16, baseType: !1075, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1253, file: !1254, line: 19, baseType: !110, size: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1253, file: !1254, line: 26, baseType: !88, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1253, file: !1254, line: 33, baseType: !88, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1253, file: !1254, line: 36, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1254, line: 36, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1131, file: !44, line: 2087, baseType: !1249, size: 64, offset: 1536)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1131, file: !44, line: 2089, baseType: !1108, size: 64, offset: 1600)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1080, file: !44, line: 1198, baseType: !1266, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !49, line: 324, size: 704, elements: !1269)
!1269 = !{!1270, !1274, !1278, !1282, !1283, !1284, !1285, !1286, !1291, !1296, !1300}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1268, file: !49, line: 325, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!110, !1206}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1268, file: !49, line: 326, baseType: !1275, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1206, !1079, !110}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1268, file: !49, line: 327, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !1206}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1268, file: !49, line: 328, baseType: !1271, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1268, file: !49, line: 329, baseType: !1271, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1268, file: !49, line: 330, baseType: !1271, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1268, file: !49, line: 331, baseType: !1159, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1268, file: !49, line: 334, baseType: !1287, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1290, !866}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1268, file: !49, line: 335, baseType: !1292, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!110, !866, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1268, file: !49, line: 337, baseType: !1297, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!110, !866, !1290}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1268, file: !49, line: 339, baseType: !1301, size: 64, offset: 640)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!110, !1079, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1080, file: !44, line: 1199, baseType: !1306, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !49, line: 430, size: 704, elements: !1309)
!1309 = !{!1310, !1314, !1315, !1319, !1320, !1321, !1336, !1359, !1363, !1364, !1387}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1308, file: !49, line: 431, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!110, !1079, !110, !110, !989}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1308, file: !49, line: 432, baseType: !1159, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1308, file: !49, line: 433, baseType: !1316, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!110, !1079, !5}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1308, file: !49, line: 434, baseType: !1316, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1308, file: !49, line: 435, baseType: !1159, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1308, file: !49, line: 436, baseType: !1322, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!110, !1079, !110, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !49, line: 417, size: 256, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1326, file: !49, line: 418, baseType: !110, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1326, file: !49, line: 419, baseType: !5, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1326, file: !49, line: 420, baseType: !5, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1326, file: !49, line: 422, baseType: !5, size: 32, offset: 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1326, file: !49, line: 423, baseType: !5, size: 32, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1326, file: !49, line: 424, baseType: !5, size: 32, offset: 160)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1326, file: !49, line: 425, baseType: !5, size: 32, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1326, file: !49, line: 426, baseType: !5, size: 32, offset: 224)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1308, file: !49, line: 437, baseType: !1337, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!110, !1079, !1218, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !49, line: 345, size: 960, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1341, file: !49, line: 346, baseType: !110, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1341, file: !49, line: 347, baseType: !161, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1341, file: !49, line: 348, baseType: !161, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1341, file: !49, line: 349, baseType: !161, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1341, file: !49, line: 350, baseType: !161, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1341, file: !49, line: 351, baseType: !161, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1341, file: !49, line: 352, baseType: !161, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1341, file: !49, line: 353, baseType: !177, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1341, file: !49, line: 355, baseType: !177, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1341, file: !49, line: 356, baseType: !110, size: 32, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1341, file: !49, line: 357, baseType: !110, size: 32, offset: 608)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1341, file: !49, line: 358, baseType: !161, size: 64, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1341, file: !49, line: 359, baseType: !161, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1341, file: !49, line: 360, baseType: !161, size: 64, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1341, file: !49, line: 361, baseType: !177, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1341, file: !49, line: 362, baseType: !110, size: 32, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1308, file: !49, line: 438, baseType: !1360, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!110, !1079, !1304, !1340}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1308, file: !49, line: 440, baseType: !1337, size: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1308, file: !49, line: 441, baseType: !1365, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!110, !1079, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !49, line: 411, size: 1408, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1369, file: !49, line: 412, baseType: !5, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1369, file: !49, line: 413, baseType: !1373, size: 1344, offset: 64)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 1344, elements: !544)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !49, line: 397, size: 448, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1386}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !49, line: 398, baseType: !5, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1374, file: !49, line: 399, baseType: !5, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1374, file: !49, line: 401, baseType: !5, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1374, file: !49, line: 402, baseType: !5, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1374, file: !49, line: 403, baseType: !5, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1374, file: !49, line: 404, baseType: !5, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1374, file: !49, line: 405, baseType: !5, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1374, file: !49, line: 406, baseType: !163, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1374, file: !49, line: 407, baseType: !1385, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !106, line: 132, baseType: !161)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1374, file: !49, line: 408, baseType: !1385, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1308, file: !49, line: 442, baseType: !1316, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1080, file: !44, line: 1200, baseType: !1389, size: 64, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 54, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1080, file: !44, line: 1201, baseType: !88, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1080, file: !44, line: 1202, baseType: !88, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1080, file: !44, line: 1203, baseType: !88, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1080, file: !44, line: 1204, baseType: !831, size: 64, offset: 832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1080, file: !44, line: 1205, baseType: !647, size: 320, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1080, file: !44, line: 1206, baseType: !110, size: 32, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1080, file: !44, line: 1207, baseType: !105, size: 32, offset: 1248)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1080, file: !44, line: 1209, baseType: !98, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1080, file: !44, line: 1211, baseType: !1401, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1211, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1080, file: !44, line: 1223, baseType: !1406, size: 64, offset: 1408)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !843, line: 34, size: 64, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1406, file: !843, line: 35, baseType: !846, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1080, file: !44, line: 1224, baseType: !166, size: 128, offset: 1472)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1080, file: !44, line: 1225, baseType: !1411, size: 64, offset: 1600)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 1225, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1080, file: !44, line: 1226, baseType: !1414, size: 64, offset: 1664)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !44, line: 1226, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1080, file: !44, line: 1227, baseType: !1417, size: 64, offset: 1728)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1080, file: !44, line: 1228, baseType: !1420, size: 64, offset: 1792)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1228, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1080, file: !44, line: 1229, baseType: !560, size: 128, offset: 1856)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1080, file: !44, line: 1230, baseType: !5, size: 32, offset: 1984)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1080, file: !44, line: 1231, baseType: !1425, size: 2496, offset: 2048)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !49, line: 521, size: 2496, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1431, !1463}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1425, file: !49, line: 522, baseType: !5, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1425, file: !49, line: 523, baseType: !647, size: 320, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1425, file: !49, line: 524, baseType: !1430, size: 192, offset: 384)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 192, elements: !544)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1425, file: !49, line: 525, baseType: !1432, size: 1728, offset: 576)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1433, size: 1728, elements: !544)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !49, line: 222, size: 576, elements: !1434)
!1434 = !{!1435, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1433, file: !49, line: 223, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !49, line: 445, size: 256, elements: !1438)
!1438 = !{!1439, !1440, !1453, !1454}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1437, file: !49, line: 446, baseType: !110, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1437, file: !49, line: 447, baseType: !1441, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !49, line: 312, size: 512, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1443, file: !49, line: 313, baseType: !1159, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1443, file: !49, line: 314, baseType: !1159, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1443, file: !49, line: 315, baseType: !1159, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1443, file: !49, line: 316, baseType: !1159, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1443, file: !49, line: 317, baseType: !1271, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1443, file: !49, line: 318, baseType: !1271, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1443, file: !49, line: 319, baseType: !1271, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1443, file: !49, line: 320, baseType: !1301, size: 64, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1437, file: !49, line: 448, baseType: !1112, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1437, file: !49, line: 449, baseType: !1436, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1433, file: !49, line: 224, baseType: !110, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1433, file: !49, line: 226, baseType: !166, size: 128, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1433, file: !49, line: 227, baseType: !88, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1433, file: !49, line: 228, baseType: !5, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1433, file: !49, line: 229, baseType: !5, size: 32, offset: 352)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1433, file: !49, line: 230, baseType: !1239, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1433, file: !49, line: 231, baseType: !1239, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1433, file: !49, line: 232, baseType: !98, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1425, file: !49, line: 526, baseType: !1464, size: 192, offset: 2304)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 192, elements: !544)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1080, file: !44, line: 1233, baseType: !1466, size: 2368, offset: 4544)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1184, size: 2368, elements: !1467)
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1466, file: !44, line: 1185, baseType: !132, size: 16)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1466, file: !44, line: 1186, baseType: !132, size: 16, offset: 16)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1466, file: !44, line: 1187, baseType: !1471, size: 2304, offset: 64)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 2304, elements: !544)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1473, line: 12, size: 768, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1474 = !{!1475, !1483, !1485, !1490, !1491}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1472, file: !1473, line: 13, baseType: !1476, size: 384)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1477, line: 17, size: 384, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1476, file: !1477, line: 18, baseType: !110, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1476, file: !1477, line: 19, baseType: !110, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1476, file: !1477, line: 20, baseType: !569, size: 192, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1476, file: !1477, line: 22, baseType: !486, size: 128, align: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1472, file: !1473, line: 14, baseType: !1484, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1472, file: !1473, line: 15, baseType: !1486, size: 64, offset: 448)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1487, line: 16, size: 64, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1486, file: !1487, line: 17, baseType: !79, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1472, file: !1473, line: 16, baseType: !569, size: 192, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1472, file: !1473, line: 17, baseType: !105, size: 32, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1080, file: !44, line: 1240, baseType: !98, size: 64, offset: 6912)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1080, file: !44, line: 1243, baseType: !91, size: 32, offset: 6976)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1080, file: !44, line: 1245, baseType: !663, size: 64, offset: 7040)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1080, file: !44, line: 1246, baseType: !663, size: 64, offset: 7104)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1080, file: !44, line: 1248, baseType: !93, size: 32, offset: 7168)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1080, file: !44, line: 1249, baseType: !1498, size: 64, offset: 7232)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 634, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1080, file: !44, line: 1252, baseType: !1501, size: 256, offset: 7296)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 256, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1080, file: !44, line: 1253, baseType: !1505, size: 128, offset: 7552)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1506, line: 21, baseType: !1507)
!1506 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1506, line: 19, size: 128, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1507, file: !1506, line: 20, baseType: !1510, size: 128)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 16)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1080, file: !44, line: 1255, baseType: !5, size: 32, offset: 7680)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1080, file: !44, line: 1261, baseType: !506, size: 256, offset: 7744)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1080, file: !44, line: 1267, baseType: !710, size: 64, offset: 8000)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1080, file: !44, line: 1269, baseType: !1517, size: 64, offset: 8064)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !833, line: 128, size: 1024, align: 512, elements: !1520)
!1520 = !{!1521, !1525, !1526, !1533, !1539, !1543, !1547, !1551, !1552, !1556, !1560, !1565, !1569}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1519, file: !833, line: 129, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!110, !831, !5}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1519, file: !833, line: 130, baseType: !1522, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1519, file: !833, line: 131, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!110, !1530, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1519, file: !833, line: 132, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!110, !1530, !5, !710, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1519, file: !833, line: 134, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!110, !1530}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1519, file: !833, line: 135, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!110, !831}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1519, file: !833, line: 136, baseType: !1548, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !831}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1519, file: !833, line: 137, baseType: !1548, size: 64, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1519, file: !833, line: 138, baseType: !1553, size: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !831, !866}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1519, file: !833, line: 139, baseType: !1557, size: 64, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!720, !831, !720, !110}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1519, file: !833, line: 140, baseType: !1561, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!827, !1564}
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1519, file: !833, line: 141, baseType: !1566, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!110, !989, !707}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1519, file: !833, line: 142, baseType: !1570, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!831, !831, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1080, file: !44, line: 1271, baseType: !1576, size: 448, offset: 8128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1254, line: 63, size: 448, elements: !1577)
!1577 = !{!1578, !1583, !1584, !1585, !1586, !1587, !1588}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1576, file: !1254, line: 64, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!88, !1582, !1252}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1576, file: !1254, line: 66, baseType: !1579, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1576, file: !1254, line: 69, baseType: !981, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1576, file: !1254, line: 70, baseType: !110, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1254, line: 71, baseType: !5, size: 32, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1576, file: !1254, line: 74, baseType: !166, size: 128, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1576, file: !1254, line: 85, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1080, file: !44, line: 1274, baseType: !499, size: 64, offset: 8576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1080, file: !44, line: 1280, baseType: !499, size: 64, offset: 8640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1080, file: !44, line: 1283, baseType: !110, size: 32, offset: 8704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1080, file: !44, line: 1286, baseType: !1594, size: 32, offset: 8736)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1595, line: 8, baseType: !91)
!1595 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1080, file: !44, line: 1289, baseType: !1597, size: 64, offset: 8768)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1599, line: 18, flags: DIFlagFwdDecl)
!1599 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1080, file: !44, line: 1290, baseType: !556, size: 64, offset: 8832)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1080, file: !44, line: 1297, baseType: !793, size: 64, offset: 8896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1080, file: !44, line: 1304, baseType: !1603, size: 64, offset: 8960)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1604, line: 49, size: 64, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1603, file: !1604, line: 50, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1604, line: 41, size: 512, align: 512, elements: !1609)
!1609 = !{!1610, !1611, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1608, file: !1604, line: 43, baseType: !460, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1608, file: !1604, line: 45, baseType: !1612, size: 192, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1604, line: 29, size: 192, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1612, file: !1604, line: 30, baseType: !166, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1612, file: !1604, line: 32, baseType: !981, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1608, file: !1604, line: 46, baseType: !981, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1080, file: !44, line: 1305, baseType: !1603, size: 64, offset: 9024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1080, file: !44, line: 1306, baseType: !486, size: 128, align: 64, offset: 9088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1080, file: !44, line: 1307, baseType: !1620, size: 256, offset: 9216)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1599, line: 98, size: 256, elements: !1621)
!1621 = !{!1622, !1623, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1620, file: !1599, line: 99, baseType: !499, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1620, file: !1599, line: 100, baseType: !166, size: 128, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1620, file: !1599, line: 101, baseType: !1625, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1599, line: 21, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1080, file: !44, line: 1309, baseType: !506, size: 256, offset: 9472)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1080, file: !44, line: 1314, baseType: !110, size: 32, offset: 9728)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1080, file: !44, line: 1317, baseType: !460, size: 32, align: 512, offset: 10240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1080, file: !44, line: 1318, baseType: !166, size: 128, offset: 10304)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1080, file: !44, line: 1320, baseType: !460, size: 32, offset: 10432)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1080, file: !44, line: 1321, baseType: !166, size: 128, offset: 10496)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !867, file: !44, line: 656, baseType: !1637, size: 64, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 472, size: 1536, align: 64, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !2129, !2130, !2131, !2132, !2133, !2134}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1638, file: !44, line: 473, baseType: !866, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1638, file: !44, line: 474, baseType: !1070, size: 128, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1638, file: !44, line: 475, baseType: !647, size: 320, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1638, file: !44, line: 476, baseType: !1075, size: 32, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1638, file: !44, line: 477, baseType: !105, size: 32, offset: 544)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1638, file: !44, line: 482, baseType: !325, size: 128, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1638, file: !44, line: 483, baseType: !88, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1638, file: !44, line: 484, baseType: !88, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1638, file: !44, line: 485, baseType: !1649, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 404, size: 1280, elements: !1652)
!1652 = !{!1653, !1954, !2024, !2028, !2032, !2038, !2044, !2048, !2053, !2057, !2061, !2065, !2093, !2097, !2101, !2105, !2110, !2114, !2121, !2125}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1651, file: !44, line: 405, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!110, !1657, !1150}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !13, line: 74, size: 512, align: 128, elements: !1659)
!1659 = !{!1660, !1661, !1948, !1953}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !13, line: 75, baseType: !88, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !13, line: 83, baseType: !1662, size: 320, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !13, line: 83, size: 320, elements: !1663)
!1663 = !{!1664, !1685, !1699, !1703, !1947}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !13, line: 84, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !13, line: 84, size: 320, elements: !1666)
!1666 = !{!1667, !1678, !1679, !1684}
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !13, line: 90, baseType: !1668, size: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !13, line: 90, size: 128, elements: !1669)
!1669 = !{!1670, !1671, !1676, !1677}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1668, file: !13, line: 91, baseType: !166, size: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !13, line: 94, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !13, line: 94, size: 128, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1672, file: !13, line: 96, baseType: !98, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1672, file: !13, line: 98, baseType: !5, size: 32, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1668, file: !13, line: 102, baseType: !166, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1668, file: !13, line: 103, baseType: !166, size: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1665, file: !13, line: 106, baseType: !1637, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !13, line: 107, baseType: !1680, size: 64, offset: 192)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !13, line: 107, size: 64, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1680, file: !13, line: 108, baseType: !88, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1680, file: !13, line: 109, baseType: !88, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1665, file: !13, line: 117, baseType: !88, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !13, line: 119, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !13, line: 119, size: 320, elements: !1687)
!1687 = !{!1688, !1689, !1692, !1693, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1686, file: !13, line: 124, baseType: !88, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1686, file: !13, line: 125, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !13, line: 125, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1686, file: !13, line: 126, baseType: !88, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1686, file: !13, line: 127, baseType: !88, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !13, line: 128, baseType: !1695, size: 64, offset: 256)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !13, line: 128, size: 64, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1695, file: !13, line: 133, baseType: !88, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1695, file: !13, line: 138, baseType: !499, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !13, line: 141, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !13, line: 141, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1700, file: !13, line: 142, baseType: !88, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !13, line: 144, baseType: !1704, size: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !13, line: 144, size: 128, elements: !1705)
!1705 = !{!1706, !1946}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1704, file: !13, line: 146, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !1709)
!1709 = !{!1710, !1720, !1741, !1752, !1753, !1754, !1755, !1928, !1929, !1930}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1708, file: !36, line: 127, baseType: !1711, size: 384)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !1712)
!1712 = !{!1713, !1714, !1716, !1717, !1718, !1719}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1711, file: !36, line: 22, baseType: !88, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1711, file: !36, line: 23, baseType: !1715, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1711, file: !36, line: 24, baseType: !1715, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1711, file: !36, line: 25, baseType: !88, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1711, file: !36, line: 26, baseType: !88, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1711, file: !36, line: 27, baseType: !88, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1708, file: !36, line: 128, baseType: !1721, size: 128, offset: 384)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1722, line: 105, size: 128, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1721, file: !1722, line: 110, baseType: !88, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1721, file: !1722, line: 118, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1722, line: 95, size: 448, elements: !1728)
!1728 = !{!1729, !1730, !1736, !1737, !1738, !1739, !1740}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1727, file: !1722, line: 96, baseType: !499, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1727, file: !1722, line: 97, baseType: !1731, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1722, line: 60, baseType: !1733)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1727, file: !1722, line: 98, baseType: !1731, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1727, file: !1722, line: 99, baseType: !707, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1727, file: !1722, line: 100, baseType: !707, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1727, file: !1722, line: 101, baseType: !486, size: 128, align: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1727, file: !1722, line: 102, baseType: !1735, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1708, file: !36, line: 129, baseType: !1742, size: 256, offset: 512)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1743, line: 26, size: 256, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1742, file: !1743, line: 27, baseType: !5, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1742, file: !1743, line: 28, baseType: !1747, size: 192, offset: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1748, line: 43, size: 192, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1747, file: !1748, line: 44, baseType: !259, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1747, file: !1748, line: 45, baseType: !166, size: 128, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1708, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !36, line: 131, baseType: !5, size: 32, offset: 800)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1708, file: !36, line: 132, baseType: !88, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1708, file: !36, line: 133, baseType: !1756, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !1759)
!1759 = !{!1760, !1764, !1924}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1758, file: !36, line: 83, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1657}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1758, file: !36, line: 89, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !13, line: 1184, baseType: !5)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1771, line: 512, size: 896, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1772 = !{!1773, !1891, !1892, !1899, !1906, !1916, !1917, !1918, !1920, !1922}
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1771, line: 513, baseType: !1774, size: 320)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !1771, line: 513, size: 320, elements: !1775)
!1775 = !{!1776, !1887, !1888, !1889, !1890}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1774, file: !1771, line: 514, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !13, line: 625, size: 1344, elements: !1779)
!1779 = !{!1780, !1789, !1790, !1798, !1805, !1806, !1811, !1812, !1817, !1818, !1821, !1880, !1881, !1882, !1883, !1884, !1885}
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !13, line: 628, baseType: !1781, size: 128)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !13, line: 628, size: 128, elements: !1782)
!1782 = !{!1783, !1788}
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !13, line: 629, baseType: !1784, size: 128)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !13, line: 629, size: 128, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1784, file: !13, line: 631, baseType: !88, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1784, file: !13, line: 632, baseType: !88, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1781, file: !13, line: 635, baseType: !486, size: 128, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1778, file: !13, line: 639, baseType: !442, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1778, file: !13, line: 640, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1792, line: 297, baseType: !1793)
!1792 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1792, line: 297, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1793, file: !1792, line: 297, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1797, line: 19, baseType: !88)
!1797 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !13, line: 646, baseType: !1799, size: 64, offset: 256)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !13, line: 646, size: 64, elements: !1800)
!1800 = !{!1801, !1804}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1799, file: !13, line: 647, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !13, line: 542, baseType: !88)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1799, file: !13, line: 648, baseType: !1803, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1778, file: !13, line: 666, baseType: !110, size: 32, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1778, file: !13, line: 667, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !13, line: 579, size: 320, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !13, line: 580, baseType: !647, size: 320)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1778, file: !13, line: 670, baseType: !707, size: 8, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1778, file: !13, line: 681, baseType: !1813, size: 256, offset: 512)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1778, file: !13, line: 678, size: 256, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1813, file: !13, line: 679, baseType: !153, size: 192, align: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1813, file: !13, line: 680, baseType: !88, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1778, file: !13, line: 689, baseType: !166, size: 128, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1778, file: !13, line: 691, baseType: !1819, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !13, line: 691, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1778, file: !13, line: 694, baseType: !1822, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1771, line: 563, size: 1024, elements: !1825)
!1825 = !{!1826, !1830, !1831, !1835, !1839, !1843, !1844, !1848, !1852, !1856, !1857, !1858, !1862, !1866, !1872, !1876}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1824, file: !1771, line: 564, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1777}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1824, file: !1771, line: 569, baseType: !1827, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1824, file: !1771, line: 571, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!110, !1777, !88}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1824, file: !1771, line: 572, baseType: !1836, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!110, !1777}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1824, file: !1771, line: 578, baseType: !1840, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!110, !1777, !88, !88, !88}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1824, file: !1771, line: 580, baseType: !1765, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1824, file: !1771, line: 581, baseType: !1845, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1768, !1769, !5}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1824, file: !1771, line: 582, baseType: !1849, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!1768, !1769, !88, !88}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1824, file: !1771, line: 584, baseType: !1853, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!88, !1777}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1824, file: !1771, line: 588, baseType: !1765, size: 64, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1824, file: !1771, line: 591, baseType: !1765, size: 64, offset: 640)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1824, file: !1771, line: 597, baseType: !1859, size: 64, offset: 704)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!110, !1777, !88, !98, !110, !110}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1824, file: !1771, line: 603, baseType: !1863, size: 64, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!710, !1777}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1824, file: !1771, line: 613, baseType: !1867, size: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!110, !1777, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !13, line: 717, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1824, file: !1771, line: 625, baseType: !1873, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1870, !1777, !88}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1824, file: !1771, line: 633, baseType: !1877, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1657, !1777, !88}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1778, file: !13, line: 697, baseType: !88, size: 64, offset: 1024)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1778, file: !13, line: 699, baseType: !478, size: 64, offset: 1088)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1778, file: !13, line: 700, baseType: !98, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1778, file: !13, line: 711, baseType: !499, size: 64, offset: 1216)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1778, file: !13, line: 717, baseType: !1870, size: 64, offset: 1280)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1778, file: !13, line: 722, baseType: !1886, offset: 1344)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !13, line: 570, elements: !471)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1774, file: !1771, line: 515, baseType: !1075, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1774, file: !1771, line: 516, baseType: !88, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1774, file: !1771, line: 517, baseType: !88, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1774, file: !1771, line: 518, baseType: !88, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1770, file: !1771, line: 520, baseType: !12, size: 32, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1770, file: !1771, line: 522, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1797, line: 22, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 22, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1895, file: !1797, line: 22, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1797, line: 15, baseType: !88)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1770, file: !1771, line: 524, baseType: !1900, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1792, line: 372, baseType: !1902)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1792, line: 372, size: 64, elements: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1902, file: !1792, line: 372, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1797, line: 16, baseType: !88)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1771, line: 527, baseType: !1907, size: 64, offset: 512)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !1771, line: 527, size: 64, elements: !1908)
!1908 = !{!1909, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1907, file: !1771, line: 528, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1797, line: 21, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 21, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1911, file: !1797, line: 21, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1797, line: 14, baseType: !88)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1907, file: !1771, line: 529, baseType: !1894, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1770, file: !1771, line: 534, baseType: !1657, size: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1770, file: !1771, line: 535, baseType: !1657, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1770, file: !1771, line: 541, baseType: !1919, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1770, file: !1771, line: 545, baseType: !1921, size: 64, offset: 768)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1770, file: !1771, line: 549, baseType: !1923, size: 64, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1792, line: 520, baseType: !1657)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1758, file: !36, line: 100, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!110, !1707, !88, !88, !110}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1708, file: !36, line: 134, baseType: !98, size: 64, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1708, file: !36, line: 135, baseType: !110, size: 32, offset: 1024)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !36, line: 136, baseType: !1931, size: 128, offset: 1088)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !36, line: 136, size: 128, elements: !1932)
!1932 = !{!1933, !1939}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1931, file: !36, line: 137, baseType: !1934, size: 128)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1935, line: 6, size: 128, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1934, file: !1935, line: 7, baseType: !161, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1934, file: !1935, line: 8, baseType: !161, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !36, line: 138, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1931, file: !36, line: 138, elements: !1941)
!1941 = !{!1942, !1944}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1940, file: !36, line: 138, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !36, line: 138, elements: !471)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1940, file: !36, line: 138, baseType: !1945)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1934, elements: !584)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1704, file: !13, line: 147, baseType: !98, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1662, file: !13, line: 161, baseType: !486, size: 128, align: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !13, line: 164, baseType: !1949, size: 32, offset: 384)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !13, line: 164, size: 32, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1949, file: !13, line: 169, baseType: !105, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1949, file: !13, line: 177, baseType: !5, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1658, file: !13, line: 181, baseType: !105, size: 32, offset: 416)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1651, file: !44, line: 406, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!110, !478, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !13, line: 293, size: 1536, elements: !1960)
!1960 = !{!1961, !1991, !2005}
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !13, line: 295, baseType: !1962, size: 512)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !13, line: 295, size: 512, elements: !1963)
!1963 = !{!1964, !1990}
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1962, file: !13, line: 296, baseType: !1965, size: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1962, file: !13, line: 296, size: 448, elements: !1966)
!1966 = !{!1967, !1968, !1977, !1978, !1979, !1988, !1989}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !13, line: 298, baseType: !88, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !13, line: 299, baseType: !1969, size: 128, offset: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !13, line: 299, size: 128, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1969, file: !13, line: 300, baseType: !166, size: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !13, line: 302, baseType: !1973, size: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !13, line: 302, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1973, file: !13, line: 303, baseType: !98, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1973, file: !13, line: 305, baseType: !5, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1965, file: !13, line: 310, baseType: !1637, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1965, file: !13, line: 311, baseType: !88, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !13, line: 312, baseType: !1980, size: 64, offset: 320)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !13, line: 312, size: 64, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1980, file: !13, line: 313, baseType: !98, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1980, file: !13, line: 314, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !13, line: 257, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 255, size: 64, elements: !1986)
!1986 = !{!1987}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1985, file: !13, line: 256, baseType: !88, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1965, file: !13, line: 316, baseType: !105, size: 32, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1965, file: !13, line: 317, baseType: !105, size: 32, offset: 416)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1962, file: !13, line: 323, baseType: !1658, size: 512, align: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !13, line: 325, baseType: !1992, size: 512, offset: 512)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !13, line: 325, size: 512, elements: !1993)
!1993 = !{!1994, !2004}
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !13, line: 326, baseType: !1995, size: 320)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !13, line: 326, size: 320, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002, !2003}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1995, file: !13, line: 327, baseType: !88, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1995, file: !13, line: 328, baseType: !88, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1995, file: !13, line: 329, baseType: !88, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1995, file: !13, line: 331, baseType: !105, size: 32, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1995, file: !13, line: 332, baseType: !105, size: 32, offset: 224)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1995, file: !13, line: 333, baseType: !105, size: 32, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1995, file: !13, line: 335, baseType: !5, size: 32, offset: 288)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1992, file: !13, line: 339, baseType: !1658, size: 512, align: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !13, line: 341, baseType: !2006, size: 512, offset: 1024)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !13, line: 341, size: 512, elements: !2007)
!2007 = !{!2008, !2017, !2023}
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !13, line: 342, baseType: !2009, size: 384)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !13, line: 342, size: 384, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2009, file: !13, line: 343, baseType: !88, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2009, file: !13, line: 344, baseType: !88, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2009, file: !13, line: 346, baseType: !98, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2009, file: !13, line: 347, baseType: !98, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2009, file: !13, line: 348, baseType: !98, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2009, file: !13, line: 349, baseType: !98, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !13, line: 352, baseType: !2018, size: 256)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !13, line: 352, size: 256, elements: !2019)
!2019 = !{!2020, !2021, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2018, file: !13, line: 353, baseType: !88, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2018, file: !13, line: 354, baseType: !88, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2018, file: !13, line: 356, baseType: !166, size: 128, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2006, file: !13, line: 359, baseType: !1658, size: 512, align: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1651, file: !44, line: 409, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!110, !1637, !1150}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1651, file: !44, line: 412, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!707, !1637, !1958}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1651, file: !44, line: 414, baseType: !2033, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 310, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1651, file: !44, line: 416, baseType: !2039, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!110, !478, !1637, !518, !5, !2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1651, file: !44, line: 419, baseType: !2045, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!110, !478, !1637, !518, !5, !5, !1657, !98}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1651, file: !44, line: 424, baseType: !2049, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052, !1637, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !106, line: 131, baseType: !161)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1651, file: !44, line: 425, baseType: !2054, size: 64, offset: 512)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1958, !1023, !1023}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1651, file: !44, line: 426, baseType: !2058, size: 64, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!707, !1958, !1075}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1651, file: !44, line: 427, baseType: !2062, size: 64, offset: 640)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !1958}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1651, file: !44, line: 428, baseType: !2066, size: 64, offset: 704)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!1020, !2069, !2091}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 373, size: 384, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2078, !2079, !2080, !2081}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2070, file: !44, line: 374, baseType: !478, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2070, file: !44, line: 375, baseType: !518, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2070, file: !44, line: 376, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !2069, !981}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2070, file: !44, line: 377, baseType: !98, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2070, file: !44, line: 378, baseType: !110, size: 32, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2070, file: !44, line: 379, baseType: !130, size: 16, offset: 288)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !44, line: 380, baseType: !2082, size: 64, offset: 320)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !44, line: 380, size: 64, elements: !2083)
!2083 = !{!2084, !2087}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2082, file: !44, line: 386, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 386, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2082, file: !44, line: 395, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!1020, !98}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 69, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1651, file: !44, line: 433, baseType: !2094, size: 64, offset: 768)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!110, !1637, !1958, !1958, !28}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1651, file: !44, line: 435, baseType: !2098, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!110, !1958}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1651, file: !44, line: 436, baseType: !2102, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!707, !1958, !1023, !1023}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1651, file: !44, line: 438, baseType: !2106, size: 64, offset: 960)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !1958, !2109, !2109}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1651, file: !44, line: 439, baseType: !2111, size: 64, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!110, !1637, !1657}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1651, file: !44, line: 442, baseType: !2115, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!110, !2118, !478, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 66, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1651, file: !44, line: 444, baseType: !2122, size: 64, offset: 1152)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !478}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1651, file: !44, line: 445, baseType: !2126, size: 64, offset: 1216)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!110, !2069, !2091}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !44, line: 486, baseType: !88, size: 64, offset: 896)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1638, file: !44, line: 487, baseType: !647, size: 320, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1638, file: !44, line: 488, baseType: !1594, size: 32, offset: 1280)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1638, file: !44, line: 489, baseType: !460, size: 32, offset: 1312)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1638, file: !44, line: 490, baseType: !166, size: 128, offset: 1344)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1638, file: !44, line: 491, baseType: !98, size: 64, offset: 1472)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !867, file: !44, line: 659, baseType: !98, size: 64, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !867, file: !44, line: 663, baseType: !88, size: 64, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !44, line: 671, baseType: !2138, size: 32, offset: 704)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !44, line: 671, size: 32, elements: !2139)
!2139 = !{!2140, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2138, file: !44, line: 672, baseType: !2141, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2138, file: !44, line: 673, baseType: !5, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !867, file: !44, line: 675, baseType: !941, size: 32, offset: 736)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !867, file: !44, line: 676, baseType: !518, size: 64, offset: 768)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !867, file: !44, line: 677, baseType: !977, size: 128, offset: 832)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !867, file: !44, line: 678, baseType: !977, size: 128, offset: 960)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !867, file: !44, line: 679, baseType: !977, size: 128, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !867, file: !44, line: 680, baseType: !460, size: 32, offset: 1216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !867, file: !44, line: 681, baseType: !132, size: 16, offset: 1248)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !867, file: !44, line: 682, baseType: !276, size: 8, offset: 1264)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !867, file: !44, line: 683, baseType: !276, size: 8, offset: 1272)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !867, file: !44, line: 684, baseType: !1385, size: 64, offset: 1280)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !867, file: !44, line: 691, baseType: !88, size: 64, offset: 1344)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !867, file: !44, line: 692, baseType: !647, size: 320, offset: 1408)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !867, file: !44, line: 694, baseType: !88, size: 64, offset: 1728)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !867, file: !44, line: 695, baseType: !88, size: 64, offset: 1792)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !867, file: !44, line: 697, baseType: !560, size: 128, offset: 1856)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !867, file: !44, line: 698, baseType: !166, size: 128, offset: 1984)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !867, file: !44, line: 707, baseType: !166, size: 128, offset: 2112)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !867, file: !44, line: 708, baseType: !166, size: 128, offset: 2240)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !44, line: 709, baseType: !2162, size: 128, offset: 2368)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !44, line: 709, size: 128, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2162, file: !44, line: 710, baseType: !556, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2162, file: !44, line: 711, baseType: !486, size: 128, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !867, file: !44, line: 713, baseType: !501, size: 64, offset: 2496)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !867, file: !44, line: 714, baseType: !501, size: 64, offset: 2560)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !867, file: !44, line: 715, baseType: !105, size: 32, offset: 2624)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !867, file: !44, line: 716, baseType: !105, size: 32, offset: 2656)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !867, file: !44, line: 717, baseType: !105, size: 32, offset: 2688)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !867, file: !44, line: 719, baseType: !105, size: 32, offset: 2720)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !44, line: 721, baseType: !2173, size: 64, offset: 2752)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !44, line: 721, size: 64, elements: !2174)
!2174 = !{!2175, !2306}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2173, file: !44, line: 722, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1914, size: 2112, elements: !2179)
!2179 = !{!2180, !2181, !2185, !2190, !2194, !2195, !2196, !2202, !2215, !2223, !2227, !2228, !2232, !2233, !2237, !2242, !2243, !2247, !2251, !2257, !2258, !2262, !2263, !2269, !2273, !2274, !2279, !2283, !2287, !2291, !2295, !2296, !2302}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2178, file: !44, line: 1915, baseType: !1112, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2178, file: !44, line: 1916, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!518, !478, !518, !110}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2178, file: !44, line: 1917, baseType: !2186, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!1020, !478, !720, !1023, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2178, file: !44, line: 1918, baseType: !2191, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!1020, !478, !710, !1023, !2189}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2178, file: !44, line: 1919, baseType: !2066, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2178, file: !44, line: 1920, baseType: !2066, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2178, file: !44, line: 1921, baseType: !2197, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!110, !2069, !2200, !5}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !44, line: 53, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2178, file: !44, line: 1923, baseType: !2203, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!110, !478, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1858, size: 128, elements: !2208)
!2208 = !{!2209, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2207, file: !44, line: 1859, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1855, baseType: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!707, !2206, !710, !110, !518, !161, !5}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2207, file: !44, line: 1860, baseType: !518, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2178, file: !44, line: 1924, baseType: !2216, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!2219, !478, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2220, line: 59, baseType: !5)
!2220 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2178, file: !44, line: 1925, baseType: !2224, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!981, !478, !5, !88}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2178, file: !44, line: 1926, baseType: !2224, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2178, file: !44, line: 1927, baseType: !2229, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!110, !478, !1777}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2178, file: !44, line: 1928, baseType: !88, size: 64, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2178, file: !44, line: 1929, baseType: !2234, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!110, !866, !478}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2178, file: !44, line: 1930, baseType: !2238, size: 64, offset: 896)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!110, !478, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1061, baseType: !98)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2178, file: !44, line: 1931, baseType: !2234, size: 64, offset: 960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2178, file: !44, line: 1932, baseType: !2244, size: 64, offset: 1024)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!110, !478, !518, !518, !110}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2178, file: !44, line: 1933, baseType: !2248, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!110, !110, !478, !110}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2178, file: !44, line: 1934, baseType: !2252, size: 64, offset: 1152)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!110, !478, !110, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1063, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2178, file: !44, line: 1935, baseType: !475, size: 64, offset: 1216)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2178, file: !44, line: 1936, baseType: !2259, size: 64, offset: 1280)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!110, !110}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2178, file: !44, line: 1937, baseType: !2252, size: 64, offset: 1344)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2178, file: !44, line: 1938, baseType: !2264, size: 64, offset: 1408)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!1020, !2267, !478, !2189, !1023, !5}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !81, line: 59, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2178, file: !44, line: 1939, baseType: !2270, size: 64, offset: 1472)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!1020, !478, !2189, !2267, !1023, !5}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2178, file: !44, line: 1940, baseType: !2122, size: 64, offset: 1536)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2178, file: !44, line: 1941, baseType: !2275, size: 64, offset: 1600)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!110, !478, !110, !2278, !2043}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2178, file: !44, line: 1942, baseType: !2280, size: 64, offset: 1664)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!981, !478, !110, !518, !518}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2178, file: !44, line: 1944, baseType: !2284, size: 64, offset: 1728)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !1188, !478}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2178, file: !44, line: 1948, baseType: !2288, size: 64, offset: 1792)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!1020, !478, !518, !478, !518, !1023, !5}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2178, file: !44, line: 1950, baseType: !2292, size: 64, offset: 1856)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!518, !478, !518, !478, !518, !518, !5}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2178, file: !44, line: 1953, baseType: !2244, size: 64, offset: 1920)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2178, file: !44, line: 1954, baseType: !2297, size: 64, offset: 1984)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!110, !2300, !5}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !44, line: 1911, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2178, file: !44, line: 1955, baseType: !2303, size: 64, offset: 2048)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!110, !2300, !2200, !5}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2173, file: !44, line: 723, baseType: !1138, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !867, file: !44, line: 725, baseType: !2308, size: 64, offset: 2816)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 725, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !867, file: !44, line: 726, baseType: !1638, size: 1536, align: 64, offset: 2880)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !867, file: !44, line: 727, baseType: !166, size: 128, offset: 4416)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !44, line: 728, baseType: !2313, size: 64, offset: 4544)
!2313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !44, line: 728, size: 64, elements: !2314)
!2314 = !{!2315, !2316, !2319, !2320}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2313, file: !44, line: 729, baseType: !2267, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2313, file: !44, line: 730, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 730, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2313, file: !44, line: 731, baseType: !720, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2313, file: !44, line: 732, baseType: !5, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !867, file: !44, line: 735, baseType: !93, size: 32, offset: 4608)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !867, file: !44, line: 738, baseType: !93, size: 32, offset: 4640)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !867, file: !44, line: 739, baseType: !1498, size: 64, offset: 4672)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !867, file: !44, line: 750, baseType: !98, size: 64, offset: 4736)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !832, file: !833, line: 91, baseType: !2326, size: 256, offset: 448)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !1502)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !832, file: !833, line: 94, baseType: !2328, size: 64, offset: 704)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2329, line: 25, size: 64, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !2329, line: 26, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !2329, line: 26, size: 64, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2332, file: !2329, line: 28, baseType: !162, size: 64, align: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2329, line: 30, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2329, line: 30, size: 64, elements: !2337)
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2336, file: !2329, line: 31, baseType: !460, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2336, file: !2329, line: 32, baseType: !110, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !832, file: !833, line: 95, baseType: !1517, size: 64, offset: 768)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !832, file: !833, line: 96, baseType: !1079, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !832, file: !833, line: 97, baseType: !88, size: 64, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !832, file: !833, line: 98, baseType: !98, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !832, file: !833, line: 100, baseType: !2345, size: 128, offset: 1024)
!2345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !832, file: !833, line: 100, size: 128, elements: !2346)
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2345, file: !833, line: 101, baseType: !166, size: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2345, file: !833, line: 102, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !832, file: !833, line: 104, baseType: !166, size: 128, offset: 1152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !832, file: !833, line: 105, baseType: !166, size: 128, offset: 1280)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !832, file: !833, line: 113, baseType: !2353, size: 128, offset: 1408)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !832, file: !833, line: 109, size: 128, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2353, file: !833, line: 110, baseType: !560, size: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2353, file: !833, line: 111, baseType: !842, size: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2353, file: !833, line: 112, baseType: !486, size: 128, align: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !828, file: !795, line: 72, baseType: !1079, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !828, file: !795, line: 73, baseType: !110, size: 32, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !828, file: !795, line: 74, baseType: !906, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !823, file: !824, line: 10, baseType: !831, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !479, file: !44, line: 1015, baseType: !866, size: 64, offset: 1344)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !479, file: !44, line: 1016, baseType: !2176, size: 64, offset: 1408)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !479, file: !44, line: 1018, baseType: !161, size: 64, offset: 1472)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !479, file: !44, line: 1020, baseType: !98, size: 64, offset: 1536)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !479, file: !44, line: 1023, baseType: !98, size: 64, offset: 1600)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !479, file: !44, line: 1027, baseType: !2368, size: 64, offset: 1664)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !479, file: !44, line: 1029, baseType: !1637, size: 64, offset: 1728)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !479, file: !44, line: 1030, baseType: !1594, size: 32, offset: 1792)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !479, file: !44, line: 1031, baseType: !1594, size: 32, offset: 1824)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !446, file: !13, line: 756, baseType: !88, size: 64, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !446, file: !13, line: 757, baseType: !88, size: 64, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !446, file: !13, line: 760, baseType: !88, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !446, file: !13, line: 761, baseType: !88, size: 64, offset: 896)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !446, file: !13, line: 763, baseType: !88, size: 64, offset: 960)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !446, file: !13, line: 764, baseType: !2378, size: 64, offset: 1024)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1792, line: 299, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1792, line: 299, size: 64, elements: !2381)
!2381 = !{!2382}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2380, file: !1792, line: 299, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1797, line: 18, baseType: !88)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !446, file: !13, line: 773, baseType: !105, size: 32, offset: 1088)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !446, file: !13, line: 785, baseType: !105, size: 32, offset: 1120)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !446, file: !13, line: 795, baseType: !2387, size: 64, offset: 1152)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !13, line: 726, size: 128, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2388, file: !13, line: 727, baseType: !161, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2388, file: !13, line: 728, baseType: !110, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !446, file: !13, line: 801, baseType: !88, size: 64, offset: 1216)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !446, file: !13, line: 804, baseType: !499, size: 64, offset: 1280)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !446, file: !13, line: 806, baseType: !110, size: 32, offset: 1344)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !446, file: !13, line: 808, baseType: !460, size: 32, offset: 1376)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !446, file: !13, line: 823, baseType: !647, size: 320, offset: 1408)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !446, file: !13, line: 825, baseType: !166, size: 128, offset: 1728)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !446, file: !13, line: 845, baseType: !110, size: 32, offset: 1856)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !446, file: !13, line: 849, baseType: !88, size: 64, offset: 1920)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !446, file: !13, line: 850, baseType: !88, size: 64, offset: 1984)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !446, file: !13, line: 852, baseType: !88, size: 64, offset: 2048)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !446, file: !13, line: 853, baseType: !88, size: 64, offset: 2112)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !446, file: !13, line: 854, baseType: !501, size: 64, offset: 2176)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !446, file: !13, line: 855, baseType: !88, size: 64, offset: 2240)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !446, file: !13, line: 856, baseType: !88, size: 64, offset: 2304)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !446, file: !13, line: 857, baseType: !88, size: 64, offset: 2368)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !446, file: !13, line: 858, baseType: !88, size: 64, offset: 2432)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !446, file: !13, line: 865, baseType: !316, size: 32, offset: 2496)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !446, file: !13, line: 867, baseType: !460, size: 32, offset: 2528)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !446, file: !13, line: 869, baseType: !88, size: 64, offset: 2560)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !446, file: !13, line: 869, baseType: !88, size: 64, offset: 2624)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !446, file: !13, line: 869, baseType: !88, size: 64, offset: 2688)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !446, file: !13, line: 869, baseType: !88, size: 64, offset: 2752)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !446, file: !13, line: 870, baseType: !88, size: 64, offset: 2816)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !446, file: !13, line: 870, baseType: !88, size: 64, offset: 2880)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !446, file: !13, line: 870, baseType: !88, size: 64, offset: 2944)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !446, file: !13, line: 871, baseType: !88, size: 64, offset: 3008)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !446, file: !13, line: 871, baseType: !88, size: 64, offset: 3072)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !446, file: !13, line: 871, baseType: !88, size: 64, offset: 3136)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !446, file: !13, line: 871, baseType: !88, size: 64, offset: 3200)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !446, file: !13, line: 873, baseType: !2422, size: 3328, offset: 3264)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 3328, elements: !2423)
!2423 = !{!2424}
!2424 = !DISubrange(count: 52)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !446, file: !13, line: 875, baseType: !2426, size: 1280, offset: 6592)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 1280, elements: !565)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !446, file: !13, line: 877, baseType: !2428, size: 64, offset: 7872)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !13, line: 877, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !446, file: !13, line: 880, baseType: !2431, size: 1088, offset: 7936)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2432, line: 72, baseType: !2433)
!2432 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2432, line: 23, size: 1088, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2442, !2443, !2444, !2445, !2449, !2450, !2451}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2433, file: !2432, line: 28, baseType: !161, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2433, file: !2432, line: 38, baseType: !501, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2433, file: !2432, line: 40, baseType: !88, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2433, file: !2432, line: 43, baseType: !647, size: 320, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2433, file: !2432, line: 44, baseType: !2440, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2432, line: 44, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !2432, line: 48, baseType: !88, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2433, file: !2432, line: 59, baseType: !506, size: 256, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2433, file: !2432, line: 60, baseType: !98, size: 64, offset: 896)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2433, file: !2432, line: 61, baseType: !2446, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2432, line: 61, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2433, file: !2432, line: 63, baseType: !105, size: 32, offset: 1024)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2433, file: !2432, line: 69, baseType: !130, size: 16, offset: 1056)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2433, file: !2432, line: 70, baseType: !2452, size: 16, offset: 1072)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !675)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !13, line: 882, baseType: !88, size: 64, offset: 9024)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !446, file: !13, line: 885, baseType: !460, size: 32, offset: 9088)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !446, file: !13, line: 886, baseType: !2457, size: 64, offset: 9152)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !13, line: 732, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !446, file: !13, line: 901, baseType: !793, size: 64, offset: 9216)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !446, file: !13, line: 904, baseType: !478, size: 64, offset: 9280)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !446, file: !13, line: 906, baseType: !2462, size: 64, offset: 9344)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !13, line: 906, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !446, file: !13, line: 930, baseType: !105, size: 32, offset: 9408)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !446, file: !13, line: 933, baseType: !105, size: 32, offset: 9440)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !446, file: !13, line: 935, baseType: !2467, size: 64, offset: 9472)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !66, line: 103, size: 64, elements: !2468)
!2468 = !{!2469}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2467, file: !66, line: 104, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !66, line: 101, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !446, file: !13, line: 940, baseType: !499, size: 64, offset: 9536)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !446, file: !13, line: 942, baseType: !1620, size: 256, offset: 9600)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !443, file: !13, line: 986, baseType: !2475, offset: 10240)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !584)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !80, file: !81, line: 882, baseType: !442, size: 64, offset: 9792)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !80, file: !81, line: 884, baseType: !110, size: 32, offset: 9856)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !80, file: !81, line: 885, baseType: !110, size: 32, offset: 9888)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !80, file: !81, line: 886, baseType: !110, size: 32, offset: 9920)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !80, file: !81, line: 888, baseType: !110, size: 32, offset: 9952)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !80, file: !81, line: 890, baseType: !88, size: 64, offset: 9984)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !80, file: !81, line: 893, baseType: !5, size: 32, offset: 10048)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !80, file: !81, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !80, file: !81, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !80, file: !81, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !80, file: !81, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !80, file: !81, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !80, file: !81, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !80, file: !81, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !80, file: !81, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !80, file: !81, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !80, file: !81, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !80, file: !81, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !80, file: !81, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !80, file: !81, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !80, file: !81, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !80, file: !81, line: 969, baseType: !88, size: 64, offset: 10176)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !80, file: !81, line: 971, baseType: !2499, size: 448, offset: 10240)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !60, line: 25, size: 448, elements: !2500)
!2500 = !{!2501, !2502, !2507}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2499, file: !60, line: 26, baseType: !88, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2499, file: !60, line: 27, baseType: !2503, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!981, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2499, file: !60, line: 28, baseType: !2508, size: 320, offset: 128)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2499, file: !60, line: 28, size: 320, elements: !2509)
!2509 = !{!2510, !2520, !2545}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2508, file: !60, line: 37, baseType: !2511, size: 320)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2508, file: !60, line: 30, size: 320, elements: !2512)
!2512 = !{!2513, !2515, !2516, !2517, !2518, !2519}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2511, file: !60, line: 31, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2511, file: !60, line: 32, baseType: !91, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !60, line: 33, baseType: !91, size: 32, offset: 96)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2511, file: !60, line: 34, baseType: !91, size: 32, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2511, file: !60, line: 35, baseType: !161, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2511, file: !60, line: 36, baseType: !2514, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2508, file: !60, line: 47, baseType: !2521, size: 192)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2508, file: !60, line: 39, size: 192, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2544}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2521, file: !60, line: 40, baseType: !307, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2521, file: !60, line: 41, baseType: !59, size: 32, offset: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, scope: !2521, file: !60, line: 42, baseType: !2526, size: 64, offset: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2521, file: !60, line: 42, size: 64, elements: !2527)
!2527 = !{!2528, !2536}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2526, file: !60, line: 43, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2531, line: 7, size: 128, elements: !2532)
!2531 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2532 = !{!2533, !2535}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2530, file: !2531, line: 8, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !309, line: 93, baseType: !179)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2530, file: !2531, line: 9, baseType: !179, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2526, file: !60, line: 44, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2539, line: 7, size: 64, elements: !2540)
!2539 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2540 = !{!2541, !2543}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2538, file: !2539, line: 8, baseType: !2542, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2539, line: 5, baseType: !639)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2538, file: !2539, line: 9, baseType: !639, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2521, file: !60, line: 46, baseType: !161, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2508, file: !60, line: 55, baseType: !2546, size: 256)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2508, file: !60, line: 49, size: 256, elements: !2547)
!2547 = !{!2548, !2551, !2552, !2553, !2554}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2546, file: !60, line: 50, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !60, line: 14, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2546, file: !60, line: 51, baseType: !110, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2546, file: !60, line: 52, baseType: !110, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2546, file: !60, line: 53, baseType: !88, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2546, file: !60, line: 54, baseType: !88, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !80, file: !81, line: 973, baseType: !2556, size: 32, offset: 10688)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !106, line: 27, baseType: !2557)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !309, line: 28, baseType: !110)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !80, file: !81, line: 974, baseType: !2556, size: 32, offset: 10720)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !80, file: !81, line: 978, baseType: !88, size: 64, offset: 10752)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !80, file: !81, line: 987, baseType: !79, size: 64, offset: 10816)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !81, line: 990, baseType: !79, size: 64, offset: 10880)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !80, file: !81, line: 995, baseType: !166, size: 128, offset: 10944)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !80, file: !81, line: 996, baseType: !166, size: 128, offset: 11072)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !80, file: !81, line: 997, baseType: !79, size: 64, offset: 11200)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !80, file: !81, line: 1005, baseType: !166, size: 128, offset: 11264)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !80, file: !81, line: 1006, baseType: !166, size: 128, offset: 11392)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !80, file: !81, line: 1009, baseType: !548, size: 64, offset: 11520)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !80, file: !81, line: 1010, baseType: !2569, size: 512, offset: 11584)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 512, elements: !565)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !80, file: !81, line: 1011, baseType: !166, size: 128, offset: 12096)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !80, file: !81, line: 1012, baseType: !166, size: 128, offset: 12224)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !80, file: !81, line: 1014, baseType: !2573, size: 64, offset: 12352)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !80, file: !81, line: 1017, baseType: !1182, size: 64, offset: 12416)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !80, file: !81, line: 1020, baseType: !1182, size: 64, offset: 12480)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !80, file: !81, line: 1023, baseType: !98, size: 64, offset: 12544)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !80, file: !81, line: 1025, baseType: !161, size: 64, offset: 12608)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !80, file: !81, line: 1026, baseType: !161, size: 64, offset: 12672)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !80, file: !81, line: 1031, baseType: !161, size: 64, offset: 12736)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !80, file: !81, line: 1032, baseType: !2581, size: 192, offset: 12800)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !81, line: 324, size: 192, elements: !2582)
!2582 = !{!2583, !2584, !2585}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2581, file: !81, line: 326, baseType: !161, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2581, file: !81, line: 327, baseType: !161, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2581, file: !81, line: 328, baseType: !259, size: 32, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !80, file: !81, line: 1041, baseType: !88, size: 64, offset: 12992)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !80, file: !81, line: 1042, baseType: !88, size: 64, offset: 13056)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !80, file: !81, line: 1045, baseType: !161, size: 64, offset: 13120)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !80, file: !81, line: 1048, baseType: !161, size: 64, offset: 13184)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !80, file: !81, line: 1051, baseType: !88, size: 64, offset: 13248)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !80, file: !81, line: 1052, baseType: !88, size: 64, offset: 13312)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !80, file: !81, line: 1055, baseType: !2593, size: 640, offset: 13376)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2594, line: 132, size: 640, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2595 = !{!2596, !2602, !2603}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2593, file: !2594, line: 133, baseType: !2597, size: 576)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2598, size: 576, elements: !544)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2594, line: 117, size: 192, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2598, file: !2594, line: 118, baseType: !161, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2598, file: !2594, line: 119, baseType: !322, size: 128, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2593, file: !2594, line: 134, baseType: !5, size: 32, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2593, file: !2594, line: 135, baseType: !5, size: 32, offset: 608)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !80, file: !81, line: 1058, baseType: !2605, size: 448, offset: 14016)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2594, line: 144, size: 448, elements: !2606)
!2606 = !{!2607, !2608, !2609}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2605, file: !2594, line: 145, baseType: !486, size: 128, align: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2605, file: !2594, line: 146, baseType: !506, size: 256, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2605, file: !2594, line: 147, baseType: !5, size: 32, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !80, file: !81, line: 1064, baseType: !598, size: 64, offset: 14464)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !80, file: !81, line: 1067, baseType: !598, size: 64, offset: 14528)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !80, file: !81, line: 1070, baseType: !598, size: 64, offset: 14592)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !80, file: !81, line: 1074, baseType: !631, size: 64, offset: 14656)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !80, file: !81, line: 1084, baseType: !2615, size: 128, offset: 14720)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 128, elements: !1511)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !80, file: !81, line: 1086, baseType: !2617, size: 64, offset: 14848)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !81, line: 55, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !80, file: !81, line: 1089, baseType: !2620, size: 64, offset: 14912)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2621, line: 12, size: 64, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2620, file: !2621, line: 13, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2621, line: 8, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !80, file: !81, line: 1090, baseType: !2627, size: 128, offset: 14976)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2628, line: 13, size: 128, elements: !2629)
!2628 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2627, file: !2628, line: 14, baseType: !166, size: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !80, file: !81, line: 1097, baseType: !2632, size: 64, offset: 15104)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2634, line: 9, size: 448, elements: !2635)
!2634 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2633, file: !2634, line: 10, baseType: !110, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2633, file: !2634, line: 11, baseType: !460, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2633, file: !2634, line: 12, baseType: !837, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !2633, file: !2634, line: 13, baseType: !110, size: 32, offset: 96)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !2633, file: !2634, line: 14, baseType: !110, size: 32, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2633, file: !2634, line: 15, baseType: !823, size: 128, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !2633, file: !2634, line: 15, baseType: !823, size: 128, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !80, file: !81, line: 1100, baseType: !2644, size: 64, offset: 15168)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !81, line: 1100, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !80, file: !81, line: 1103, baseType: !2647, size: 64, offset: 15232)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !81, line: 53, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !80, file: !81, line: 1107, baseType: !2650, size: 64, offset: 15296)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !81, line: 56, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !80, file: !81, line: 1110, baseType: !2653, size: 64, offset: 15360)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2655, line: 93, size: 8768, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2706, !2715, !2716, !2718, !2719, !2720, !2723, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2761, !2762, !2769, !2779, !2782, !2783, !2786, !2787, !2788, !2789, !2790, !2791}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2654, file: !2655, line: 94, baseType: !100, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2654, file: !2655, line: 95, baseType: !105, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2654, file: !2655, line: 96, baseType: !110, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2654, file: !2655, line: 97, baseType: !110, size: 32, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2654, file: !2655, line: 98, baseType: !166, size: 128, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2654, file: !2655, line: 100, baseType: !569, size: 192, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2654, file: !2655, line: 103, baseType: !79, size: 64, offset: 448)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2654, file: !2655, line: 106, baseType: !2665, size: 192, offset: 512)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !799, line: 32, size: 192, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2665, file: !799, line: 33, baseType: !166, size: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2665, file: !799, line: 34, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2670, line: 25, baseType: !2671)
!2670 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2670, line: 23, size: 64, elements: !2672)
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2671, file: !2670, line: 24, baseType: !393, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2654, file: !2655, line: 109, baseType: !556, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2654, file: !2655, line: 112, baseType: !110, size: 32, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2654, file: !2655, line: 114, baseType: !110, size: 32, offset: 800)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2654, file: !2655, line: 115, baseType: !79, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2654, file: !2655, line: 118, baseType: !110, size: 32, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2654, file: !2655, line: 119, baseType: !5, size: 32, offset: 928)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2654, file: !2655, line: 121, baseType: !2681, size: 64, offset: 960)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2655, line: 80, size: 448, elements: !2683)
!2683 = !{!2684, !2685, !2691}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2682, file: !2655, line: 81, baseType: !105, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2682, file: !2655, line: 82, baseType: !2686, size: 128, offset: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2655, line: 75, size: 128, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2686, file: !2655, line: 76, baseType: !79, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2686, file: !2655, line: 77, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2682, file: !2655, line: 83, baseType: !1742, size: 256, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2654, file: !2655, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2654, file: !2655, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2654, file: !2655, line: 138, baseType: !5, size: 32, offset: 1056)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2654, file: !2655, line: 139, baseType: !166, size: 128, offset: 1088)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2654, file: !2655, line: 142, baseType: !234, size: 512, offset: 1216)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2654, file: !2655, line: 143, baseType: !242, size: 64, offset: 1728)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2654, file: !2655, line: 150, baseType: !2699, size: 256, offset: 1792)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2700, size: 256, elements: !2704)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2655, line: 38, size: 128, elements: !2701)
!2701 = !{!2702, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2700, file: !2655, line: 39, baseType: !161, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2700, file: !2655, line: 40, baseType: !161, size: 64, offset: 64)
!2704 = !{!2705}
!2705 = !DISubrange(count: 2)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2654, file: !2655, line: 156, baseType: !2707, size: 192, offset: 2048)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2655, line: 66, size: 192, elements: !2708)
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2707, file: !2655, line: 67, baseType: !2710, size: 192)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2655, line: 47, size: 192, elements: !2711)
!2711 = !{!2712, !2713, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2710, file: !2655, line: 48, baseType: !501, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2710, file: !2655, line: 49, baseType: !501, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2710, file: !2655, line: 50, baseType: !501, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2654, file: !2655, line: 160, baseType: !2593, size: 640, offset: 2240)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2654, file: !2655, line: 163, baseType: !2717, size: 256, offset: 2880)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 256, elements: !565)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2654, file: !2655, line: 169, baseType: !548, size: 64, offset: 3136)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2654, file: !2655, line: 172, baseType: !110, size: 32, offset: 3200)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2654, file: !2655, line: 174, baseType: !2721, size: 64, offset: 3264)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2655, line: 174, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2654, file: !2655, line: 185, baseType: !2724, size: 64, offset: 3328)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !312, line: 860, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 853, size: 64, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2725, file: !312, line: 858, baseType: !837, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2725, file: !312, line: 859, baseType: !460, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2654, file: !2655, line: 186, baseType: !161, size: 64, offset: 3392)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2654, file: !2655, line: 186, baseType: !161, size: 64, offset: 3456)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2654, file: !2655, line: 186, baseType: !161, size: 64, offset: 3520)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2654, file: !2655, line: 186, baseType: !161, size: 64, offset: 3584)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2654, file: !2655, line: 187, baseType: !161, size: 64, offset: 3648)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2654, file: !2655, line: 188, baseType: !161, size: 64, offset: 3712)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2654, file: !2655, line: 189, baseType: !2581, size: 192, offset: 3776)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2654, file: !2655, line: 190, baseType: !88, size: 64, offset: 3968)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2654, file: !2655, line: 190, baseType: !88, size: 64, offset: 4032)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2654, file: !2655, line: 190, baseType: !88, size: 64, offset: 4096)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2654, file: !2655, line: 190, baseType: !88, size: 64, offset: 4160)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2654, file: !2655, line: 191, baseType: !88, size: 64, offset: 4224)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2654, file: !2655, line: 191, baseType: !88, size: 64, offset: 4288)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2654, file: !2655, line: 191, baseType: !88, size: 64, offset: 4352)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2654, file: !2655, line: 191, baseType: !88, size: 64, offset: 4416)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2654, file: !2655, line: 192, baseType: !88, size: 64, offset: 4480)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2654, file: !2655, line: 192, baseType: !88, size: 64, offset: 4544)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2654, file: !2655, line: 192, baseType: !88, size: 64, offset: 4608)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2654, file: !2655, line: 192, baseType: !88, size: 64, offset: 4672)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2654, file: !2655, line: 193, baseType: !88, size: 64, offset: 4736)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2654, file: !2655, line: 193, baseType: !88, size: 64, offset: 4800)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2654, file: !2655, line: 194, baseType: !2751, size: 448, offset: 4864)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2752, line: 12, size: 448, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2751, file: !2752, line: 15, baseType: !161, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2751, file: !2752, line: 17, baseType: !161, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2751, file: !2752, line: 19, baseType: !161, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2751, file: !2752, line: 21, baseType: !161, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2751, file: !2752, line: 29, baseType: !161, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2751, file: !2752, line: 35, baseType: !161, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2751, file: !2752, line: 44, baseType: !161, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2654, file: !2655, line: 202, baseType: !163, size: 64, offset: 5312)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2654, file: !2655, line: 213, baseType: !2763, size: 2048, offset: 5376)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2764, size: 2048, elements: !1511)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2765, line: 43, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2764, file: !2765, line: 44, baseType: !1025, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2764, file: !2765, line: 45, baseType: !1025, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2654, file: !2655, line: 216, baseType: !2770, size: 448, offset: 7424)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2655, line: 30, size: 448, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2770, file: !2655, line: 31, baseType: !110, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2770, file: !2655, line: 32, baseType: !981, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2770, file: !2655, line: 33, baseType: !88, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2770, file: !2655, line: 34, baseType: !161, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2770, file: !2655, line: 34, baseType: !161, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2770, file: !2655, line: 35, baseType: !88, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2770, file: !2655, line: 35, baseType: !88, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2654, file: !2655, line: 219, baseType: !2780, size: 64, offset: 7872)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2655, line: 219, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2654, file: !2655, line: 222, baseType: !5, size: 32, offset: 7936)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2654, file: !2655, line: 223, baseType: !2784, size: 64, offset: 8000)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2655, line: 223, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2654, file: !2655, line: 230, baseType: !707, size: 8, offset: 8064)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2654, file: !2655, line: 231, baseType: !675, size: 16, offset: 8080)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2654, file: !2655, line: 232, baseType: !675, size: 16, offset: 8096)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2654, file: !2655, line: 234, baseType: !442, size: 64, offset: 8128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2654, file: !2655, line: 237, baseType: !506, size: 256, offset: 8192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2654, file: !2655, line: 243, baseType: !647, size: 320, offset: 8448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !80, file: !81, line: 1111, baseType: !2793, size: 64, offset: 15424)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2655, line: 20, size: 16640, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2794, file: !2655, line: 21, baseType: !460, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2794, file: !2655, line: 22, baseType: !100, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2794, file: !2655, line: 23, baseType: !569, size: 192, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2794, file: !2655, line: 24, baseType: !2800, size: 16384, offset: 256)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2801, size: 16384, elements: !2821)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !799, line: 51, size: 256, elements: !2802)
!2802 = !{!2803}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2801, file: !799, line: 52, baseType: !2804, size: 256)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !799, line: 37, size: 256, elements: !2805)
!2805 = !{!2806, !2813, !2814, !2820}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2804, file: !799, line: 39, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2808, line: 83, baseType: !2809)
!2808 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2808, line: 82, baseType: !2811)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !110}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2804, file: !799, line: 40, baseType: !88, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2804, file: !799, line: 46, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2808, line: 86, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2808, line: 85, baseType: !2818)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2804, file: !799, line: 48, baseType: !2669, size: 64, offset: 192)
!2821 = !{!2822}
!2822 = !DISubrange(count: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !80, file: !81, line: 1112, baseType: !2669, size: 64, offset: 15488)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !80, file: !81, line: 1113, baseType: !2669, size: 64, offset: 15552)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !80, file: !81, line: 1115, baseType: !2669, size: 64, offset: 15616)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !81, line: 1116, baseType: !2665, size: 192, offset: 15680)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !80, file: !81, line: 1117, baseType: !88, size: 64, offset: 15872)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !80, file: !81, line: 1118, baseType: !1023, size: 64, offset: 15936)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !80, file: !81, line: 1119, baseType: !5, size: 32, offset: 16000)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !80, file: !81, line: 1121, baseType: !489, size: 64, offset: 16064)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !80, file: !81, line: 1125, baseType: !2832, size: 64, offset: 16128)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !81, line: 43, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !80, file: !81, line: 1127, baseType: !588, size: 32, offset: 16192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !80, file: !81, line: 1128, baseType: !5, size: 32, offset: 16224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !80, file: !81, line: 1130, baseType: !2837, size: 128, offset: 16256)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2838, line: 37, size: 128, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2837, file: !2838, line: 38, baseType: !110, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2837, file: !2838, line: 39, baseType: !105, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2837, file: !2838, line: 40, baseType: !2843, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2838, line: 24, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !80, file: !81, line: 1131, baseType: !2846, size: 256, offset: 16384)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2847, line: 12, size: 256, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2848 = !{!2849, !2850, !2851, !2852}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2846, file: !2847, line: 13, baseType: !720, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2846, file: !2847, line: 14, baseType: !88, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2846, file: !2847, line: 15, baseType: !88, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2846, file: !2847, line: 16, baseType: !707, size: 8, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !80, file: !81, line: 1134, baseType: !161, size: 64, offset: 16640)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !80, file: !81, line: 1135, baseType: !161, size: 64, offset: 16704)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !80, file: !81, line: 1138, baseType: !460, size: 32, offset: 16768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !80, file: !81, line: 1141, baseType: !259, size: 32, offset: 16800)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !80, file: !81, line: 1143, baseType: !2858, size: 64, offset: 16832)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !81, line: 735, size: 64, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2858, file: !81, line: 736, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !80, file: !81, line: 1147, baseType: !325, size: 128, offset: 16896)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !80, file: !81, line: 1149, baseType: !79, size: 64, offset: 17024)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !80, file: !81, line: 1151, baseType: !2865, size: 64, offset: 17088)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !81, line: 1151, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !80, file: !81, line: 1188, baseType: !98, size: 64, offset: 17152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !80, file: !81, line: 1191, baseType: !2869, size: 64, offset: 17216)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !81, line: 44, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !80, file: !81, line: 1194, baseType: !2872, size: 64, offset: 17280)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !81, line: 45, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !80, file: !81, line: 1197, baseType: !2875, size: 64, offset: 17344)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !81, line: 61, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !80, file: !81, line: 1199, baseType: !2878, size: 64, offset: 17408)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2880, line: 99, size: 128, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2881 = !{!2882, !2883, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2879, file: !2880, line: 100, baseType: !499, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2879, file: !2880, line: 101, baseType: !105, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2879, file: !2880, line: 103, baseType: !132, size: 16, offset: 96)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !80, file: !81, line: 1202, baseType: !2886, size: 64, offset: 17472)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !81, line: 48, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !80, file: !81, line: 1205, baseType: !88, size: 64, offset: 17536)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !80, file: !81, line: 1206, baseType: !2890, size: 64, offset: 17600)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !799, line: 14, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !799, line: 12, size: 384, elements: !2893)
!2893 = !{!2894}
!2894 = !DIDerivedType(tag: DW_TAG_member, scope: !2892, file: !799, line: 13, baseType: !2895, size: 384)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2892, file: !799, line: 13, size: 384, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2895, file: !799, line: 13, baseType: !110, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2895, file: !799, line: 13, baseType: !110, size: 32, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2895, file: !799, line: 13, baseType: !110, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2895, file: !799, line: 13, baseType: !2901, size: 256, offset: 128)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2902, line: 37, size: 256, elements: !2903)
!2902 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2903 = !{!2904, !2909, !2922, !2928, !2937, !2964, !2969}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2901, file: !2902, line: 42, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 39, size: 64, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2905, file: !2902, line: 40, baseType: !2557, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2905, file: !2902, line: 41, baseType: !594, size: 32, offset: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2901, file: !2902, line: 50, baseType: !2910, size: 192)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 45, size: 192, elements: !2911)
!2911 = !{!2912, !2914, !2915, !2921}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2910, file: !2902, line: 46, baseType: !2913, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !309, line: 95, baseType: !110)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2910, file: !2902, line: 47, baseType: !110, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2910, file: !2902, line: 48, baseType: !2916, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2902, line: 11, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2902, line: 8, size: 64, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2917, file: !2902, line: 9, baseType: !110, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2917, file: !2902, line: 10, baseType: !98, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2910, file: !2902, line: 49, baseType: !110, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2901, file: !2902, line: 57, baseType: !2923, size: 128)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 53, size: 128, elements: !2924)
!2924 = !{!2925, !2926, !2927}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2923, file: !2902, line: 54, baseType: !2557, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2923, file: !2902, line: 55, baseType: !594, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2923, file: !2902, line: 56, baseType: !2916, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2901, file: !2902, line: 66, baseType: !2929, size: 256)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 60, size: 256, elements: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2936}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2929, file: !2902, line: 61, baseType: !2557, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2929, file: !2902, line: 62, baseType: !594, size: 32, offset: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2929, file: !2902, line: 63, baseType: !110, size: 32, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2929, file: !2902, line: 64, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !309, line: 94, baseType: !1022)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2929, file: !2902, line: 65, baseType: !2935, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2901, file: !2902, line: 105, baseType: !2938, size: 256)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 69, size: 256, elements: !2939)
!2939 = !{!2940, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2938, file: !2902, line: 70, baseType: !98, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !2902, line: 79, baseType: !2942, size: 192, offset: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2938, file: !2902, line: 79, size: 192, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2953, !2958}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2942, file: !2902, line: 81, baseType: !110, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2942, file: !2902, line: 86, baseType: !675, size: 16)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2942, file: !2902, line: 92, baseType: !2947, size: 192)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !2902, line: 88, size: 192, elements: !2948)
!2948 = !{!2949, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2947, file: !2902, line: 89, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 64, elements: !303)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2947, file: !2902, line: 90, baseType: !98, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2947, file: !2902, line: 91, baseType: !98, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2942, file: !2902, line: 97, baseType: !2954, size: 96)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !2902, line: 94, size: 96, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2954, file: !2902, line: 95, baseType: !2950, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2954, file: !2902, line: 96, baseType: !93, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2942, file: !2902, line: 103, baseType: !2959, size: 128)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !2902, line: 99, size: 128, elements: !2960)
!2960 = !{!2961, !2962, !2963}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2959, file: !2902, line: 100, baseType: !88, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2959, file: !2902, line: 101, baseType: !93, size: 32, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2959, file: !2902, line: 102, baseType: !93, size: 32, offset: 96)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2901, file: !2902, line: 111, baseType: !2965, size: 128)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 108, size: 128, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2965, file: !2902, line: 109, baseType: !981, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2965, file: !2902, line: 110, baseType: !110, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2901, file: !2902, line: 118, baseType: !2970, size: 128)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2902, line: 114, size: 128, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2970, file: !2902, line: 115, baseType: !98, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2970, file: !2902, line: 116, baseType: !110, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2970, file: !2902, line: 117, baseType: !5, size: 32, offset: 96)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !80, file: !81, line: 1208, baseType: !2751, size: 448, offset: 17664)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !80, file: !81, line: 1215, baseType: !161, size: 64, offset: 18112)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !80, file: !81, line: 1217, baseType: !161, size: 64, offset: 18176)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !80, file: !81, line: 1219, baseType: !161, size: 64, offset: 18240)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !80, file: !81, line: 1223, baseType: !2980, size: 64, offset: 18304)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2981, line: 99, baseType: !2982)
!2981 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2981, line: 99, size: 64, elements: !2983)
!2983 = !{!2984}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2982, file: !2981, line: 99, baseType: !393, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !80, file: !81, line: 1225, baseType: !837, size: 32, offset: 18368)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !80, file: !81, line: 1226, baseType: !110, size: 32, offset: 18400)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !80, file: !81, line: 1227, baseType: !110, size: 32, offset: 18432)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !80, file: !81, line: 1231, baseType: !2989, size: 64, offset: 18496)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !81, line: 1231, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !80, file: !81, line: 1233, baseType: !166, size: 128, offset: 18560)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !80, file: !81, line: 1240, baseType: !2993, size: 64, offset: 18688)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !81, line: 62, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !80, file: !81, line: 1242, baseType: !2996, size: 64, offset: 18752)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !81, line: 1242, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !80, file: !81, line: 1244, baseType: !166, size: 128, offset: 18816)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !80, file: !81, line: 1245, baseType: !3000, size: 64, offset: 18944)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !81, line: 51, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !80, file: !81, line: 1246, baseType: !506, size: 256, offset: 19008)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !80, file: !81, line: 1247, baseType: !5, size: 32, offset: 19264)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !80, file: !81, line: 1250, baseType: !3005, size: 64, offset: 19328)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !81, line: 57, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !80, file: !81, line: 1251, baseType: !506, size: 256, offset: 19392)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !80, file: !81, line: 1252, baseType: !166, size: 128, offset: 19648)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !80, file: !81, line: 1259, baseType: !1870, size: 64, offset: 19776)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !80, file: !81, line: 1260, baseType: !675, size: 16, offset: 19840)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !80, file: !81, line: 1261, baseType: !675, size: 16, offset: 19856)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !80, file: !81, line: 1314, baseType: !3013, size: 64, offset: 19904)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3015, line: 62, size: 256, align: 256, elements: !3016)
!3015 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3014, file: !3015, line: 75, baseType: !93, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3014, file: !3015, line: 90, baseType: !93, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3014, file: !3015, line: 112, baseType: !162, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3014, file: !3015, line: 132, baseType: !93, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3014, file: !3015, line: 140, baseType: !93, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3014, file: !3015, line: 149, baseType: !93, size: 32, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3014, file: !3015, line: 154, baseType: !3024, offset: 224)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, elements: !584)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !80, file: !81, line: 1315, baseType: !91, size: 32, offset: 19968)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !80, file: !81, line: 1316, baseType: !91, size: 32, offset: 20000)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !80, file: !81, line: 1321, baseType: !88, size: 64, offset: 20032)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !80, file: !81, line: 1325, baseType: !110, size: 32, offset: 20096)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !80, file: !81, line: 1326, baseType: !110, size: 32, offset: 20128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !80, file: !81, line: 1327, baseType: !110, size: 32, offset: 20160)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !80, file: !81, line: 1328, baseType: !110, size: 32, offset: 20192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !80, file: !81, line: 1329, baseType: !486, size: 128, align: 64, offset: 20224)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !80, file: !81, line: 1332, baseType: !3034, size: 128, offset: 20352)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3035, line: 51, size: 128, elements: !3036)
!3035 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3036 = !{!3037, !3042, !3043}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3034, file: !3035, line: 60, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3039, line: 7, size: 64, elements: !3040)
!3039 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3038, file: !3039, line: 12, baseType: !390, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3034, file: !3035, line: 63, baseType: !707, size: 8, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3034, file: !3035, line: 70, baseType: !707, size: 8, offset: 72)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !80, file: !81, line: 1335, baseType: !2267, size: 64, offset: 20480)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !80, file: !81, line: 1337, baseType: !3046, size: 128, offset: 20544)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3035, line: 39, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3046, file: !3035, line: 40, baseType: !1657, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3046, file: !3035, line: 42, baseType: !93, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3046, file: !3035, line: 43, baseType: !93, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !80, file: !81, line: 1340, baseType: !3052, size: 64, offset: 20672)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !81, line: 69, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !80, file: !81, line: 1351, baseType: !110, size: 32, offset: 20736)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !80, file: !81, line: 1352, baseType: !110, size: 32, offset: 20768)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !80, file: !81, line: 1354, baseType: !88, size: 64, offset: 20800)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !80, file: !81, line: 1364, baseType: !161, size: 64, offset: 20864)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !80, file: !81, line: 1365, baseType: !161, size: 64, offset: 20928)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !80, file: !81, line: 1412, baseType: !88, size: 64, offset: 20992)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !80, file: !81, line: 1453, baseType: !3061, size: 64, offset: 21056)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !81, line: 1453, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !80, file: !81, line: 1457, baseType: !3064, size: 64, offset: 21120)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !66, line: 61, size: 576, elements: !3066)
!3066 = !{!3067, !3068, !3087, !3090, !3091, !3124, !3134}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3065, file: !66, line: 62, baseType: !65, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !66, line: 64, baseType: !3069, size: 192, offset: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !66, line: 64, size: 192, elements: !3070)
!3070 = !{!3071, !3082}
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !66, line: 65, baseType: !3072, size: 192)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !66, line: 65, size: 192, elements: !3073)
!3073 = !{!3074, !3081}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3072, file: !66, line: 66, baseType: !3075, size: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3076, line: 50, size: 128, elements: !3077)
!3076 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3075, file: !3076, line: 52, baseType: !88, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3075, file: !3076, line: 54, baseType: !5, size: 32, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3075, file: !3076, line: 55, baseType: !5, size: 32, offset: 96)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3072, file: !66, line: 67, baseType: !88, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !66, line: 70, baseType: !3083, size: 192)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !66, line: 70, size: 192, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3083, file: !66, line: 71, baseType: !486, size: 128, align: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3083, file: !66, line: 72, baseType: !88, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3065, file: !66, line: 76, baseType: !3088, size: 64, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !66, line: 76, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3065, file: !66, line: 77, baseType: !88, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3065, file: !66, line: 79, baseType: !3092, size: 64, offset: 384)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3076, line: 25, size: 256, elements: !3094)
!3094 = !{!3095, !3101, !3105}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3076, line: 26, baseType: !3096, size: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3076, line: 26, size: 128, elements: !3097)
!3097 = !{!3098, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3096, file: !3076, line: 27, baseType: !3099, size: 128)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !1511)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3096, file: !3076, line: 28, baseType: !3099, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3093, file: !3076, line: 31, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3076, line: 23, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3076, line: 33, baseType: !3106, size: 64, offset: 192)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3076, line: 33, size: 64, elements: !3107)
!3107 = !{!3108, !3114, !3119}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3106, file: !3076, line: 38, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3076, line: 34, size: 64, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3109, file: !3076, line: 35, baseType: !639, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3109, file: !3076, line: 36, baseType: !276, size: 8, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3109, file: !3076, line: 37, baseType: !276, size: 8, offset: 40)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3106, file: !3076, line: 42, baseType: !3115, size: 16)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3076, line: 39, size: 16, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3115, file: !3076, line: 40, baseType: !276, size: 8)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3115, file: !3076, line: 41, baseType: !276, size: 8, offset: 8)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3106, file: !3076, line: 46, baseType: !3120, size: 16)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3076, line: 43, size: 16, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3120, file: !3076, line: 44, baseType: !276, size: 8)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3120, file: !3076, line: 45, baseType: !276, size: 8, offset: 8)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3065, file: !66, line: 81, baseType: !3125, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !66, line: 85, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131, !3132, !3133}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3126, file: !66, line: 86, baseType: !3088, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3126, file: !66, line: 87, baseType: !88, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3126, file: !66, line: 88, baseType: !88, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3126, file: !66, line: 89, baseType: !88, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3126, file: !66, line: 90, baseType: !707, size: 8, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3126, file: !66, line: 92, baseType: !3125, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3065, file: !66, line: 82, baseType: !5, size: 32, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !80, file: !81, line: 1463, baseType: !3136, offset: 21184)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !81, line: 739, elements: !471)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !80, file: !81, line: 1470, baseType: !486, size: 128, align: 64, offset: 21184)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !80, file: !81, line: 1471, baseType: !100, size: 32, offset: 21312)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !80, file: !81, line: 1472, baseType: !110, size: 32, offset: 21344)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !80, file: !81, line: 1474, baseType: !79, size: 64, offset: 21376)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !80, file: !81, line: 1475, baseType: !3142, size: 320, offset: 21440)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3143, line: 11, size: 320, elements: !3144)
!3143 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3144 = !{!3145, !3146, !3147, !3152}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3142, file: !3143, line: 16, baseType: !560, size: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3142, file: !3143, line: 17, baseType: !88, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3142, file: !3143, line: 18, baseType: !3148, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3142, file: !3143, line: 19, baseType: !91, size: 32, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !80, file: !81, line: 1478, baseType: !3154, size: 64, offset: 21760)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !81, line: 1478, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !80, file: !81, line: 1482, baseType: !100, size: 32, offset: 21824)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !80, file: !81, line: 1489, baseType: !98, size: 64, offset: 21888)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !80, file: !81, line: 1504, baseType: !98, size: 64, offset: 21952)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !80, file: !81, line: 1505, baseType: !162, size: 64, offset: 22016)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !80, file: !81, line: 1506, baseType: !161, size: 64, offset: 22080)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !80, file: !81, line: 1507, baseType: !162, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !80, file: !81, line: 1508, baseType: !162, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !80, file: !81, line: 1509, baseType: !162, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !80, file: !81, line: 1510, baseType: !486, size: 128, align: 64, offset: 22208)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !80, file: !81, line: 1511, baseType: !110, size: 32, offset: 22336)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !80, file: !81, line: 1515, baseType: !3167, size: 64, offset: 22400)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !120, line: 56, size: 64, elements: !3168)
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3167, file: !120, line: 57, baseType: !123, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !80, file: !81, line: 1518, baseType: !3167, size: 64, offset: 22464)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !80, file: !81, line: 1528, baseType: !486, size: 128, align: 64, offset: 22528)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !80, file: !81, line: 1552, baseType: !3173, size: 35328, offset: 23040)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3174, line: 430, size: 35328, elements: !3175)
!3174 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3175 = !{!3176, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3205, !3206, !3207, !3208, !3209, !3210, !3213, !3214, !3215, !3216}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3173, file: !3174, line: 432, baseType: !3177, size: 192)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3178, size: 192, elements: !544)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3179, line: 16, size: 64, elements: !3180)
!3179 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3178, file: !3179, line: 17, baseType: !130, size: 16)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3178, file: !3179, line: 18, baseType: !130, size: 16, offset: 16)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3178, file: !3179, line: 19, baseType: !130, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3178, file: !3179, line: 19, baseType: !130, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3178, file: !3179, line: 19, baseType: !130, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3178, file: !3179, line: 19, baseType: !130, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3178, file: !3179, line: 19, baseType: !130, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3178, file: !3179, line: 20, baseType: !130, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3178, file: !3179, line: 20, baseType: !130, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3178, file: !3179, line: 20, baseType: !130, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3178, file: !3179, line: 20, baseType: !130, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3178, file: !3179, line: 20, baseType: !130, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3178, file: !3179, line: 20, baseType: !130, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3173, file: !3174, line: 436, baseType: !88, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3173, file: !3174, line: 440, baseType: !132, size: 16, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3173, file: !3174, line: 441, baseType: !132, size: 16, offset: 272)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3173, file: !3174, line: 442, baseType: !132, size: 16, offset: 288)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3173, file: !3174, line: 443, baseType: !132, size: 16, offset: 304)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3173, file: !3174, line: 447, baseType: !88, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3173, file: !3174, line: 448, baseType: !88, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3173, file: !3174, line: 459, baseType: !3202, size: 256, offset: 448)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3203, size: 256, elements: !565)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3174, line: 428, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3173, file: !3174, line: 461, baseType: !88, size: 64, offset: 704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3173, file: !3174, line: 463, baseType: !88, size: 64, offset: 768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3173, file: !3174, line: 465, baseType: !88, size: 64, offset: 832)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3173, file: !3174, line: 466, baseType: !88, size: 64, offset: 896)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3173, file: !3174, line: 467, baseType: !88, size: 64, offset: 960)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3173, file: !3174, line: 473, baseType: !3211, size: 64, offset: 1024)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3174, line: 10, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3173, file: !3174, line: 480, baseType: !88, size: 64, offset: 1088)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3173, file: !3174, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3173, file: !3174, line: 491, baseType: !91, size: 32, offset: 1184)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3173, file: !3174, line: 501, baseType: !3217, size: 33792, offset: 1536)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3218, line: 448, size: 33792, elements: !3219)
!3218 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3219 = !{!3220, !3221, !3222, !3384, !3385, !3391, !3392}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3217, file: !3218, line: 461, baseType: !5, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3217, file: !3218, line: 468, baseType: !88, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3217, file: !3218, line: 476, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3218, line: 356, size: 33280, align: 512, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3224, file: !3218, line: 358, baseType: !5, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3224, file: !3218, line: 361, baseType: !5, size: 32, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3224, file: !3218, line: 364, baseType: !161, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3224, file: !3218, line: 367, baseType: !161, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3224, file: !3218, line: 370, baseType: !161, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3224, file: !3218, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3224, file: !3218, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3224, file: !3218, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3224, file: !3218, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3224, file: !3218, line: 397, baseType: !3236, size: 32768, offset: 512)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3218, line: 348, size: 32768, elements: !3237)
!3237 = !{!3238, !3253, !3290, !3367, !3380}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3236, file: !3218, line: 349, baseType: !3239, size: 896)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3218, line: 12, size: 896, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3252}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3239, file: !3218, line: 13, baseType: !91, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3239, file: !3218, line: 14, baseType: !91, size: 32, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3239, file: !3218, line: 15, baseType: !91, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3239, file: !3218, line: 16, baseType: !91, size: 32, offset: 96)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3239, file: !3218, line: 17, baseType: !91, size: 32, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3239, file: !3218, line: 18, baseType: !91, size: 32, offset: 160)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3239, file: !3218, line: 19, baseType: !91, size: 32, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3239, file: !3218, line: 22, baseType: !3249, size: 640, offset: 224)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 640, elements: !3250)
!3250 = !{!3251}
!3251 = !DISubrange(count: 20)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3239, file: !3218, line: 25, baseType: !91, size: 32, offset: 864)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3236, file: !3218, line: 350, baseType: !3254, size: 4096, align: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3218, line: 34, size: 4096, align: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3275, !3276, !3277, !3279, !3281, !3285}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3254, file: !3218, line: 35, baseType: !130, size: 16)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3254, file: !3218, line: 36, baseType: !130, size: 16, offset: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3254, file: !3218, line: 37, baseType: !130, size: 16, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3254, file: !3218, line: 38, baseType: !130, size: 16, offset: 48)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !3218, line: 39, baseType: !3261, size: 128, offset: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !3218, line: 39, size: 128, elements: !3262)
!3262 = !{!3263, !3268}
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3218, line: 40, baseType: !3264, size: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3218, line: 40, size: 128, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3264, file: !3218, line: 41, baseType: !161, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3264, file: !3218, line: 42, baseType: !161, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3218, line: 44, baseType: !3269, size: 128)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3218, line: 44, size: 128, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3269, file: !3218, line: 45, baseType: !91, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3269, file: !3218, line: 46, baseType: !91, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3269, file: !3218, line: 47, baseType: !91, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3269, file: !3218, line: 48, baseType: !91, size: 32, offset: 96)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3254, file: !3218, line: 51, baseType: !91, size: 32, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3254, file: !3218, line: 52, baseType: !91, size: 32, offset: 224)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3254, file: !3218, line: 55, baseType: !3278, size: 1024, offset: 256)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1024, elements: !1502)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3254, file: !3218, line: 58, baseType: !3280, size: 2048, offset: 1280)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !2821)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3254, file: !3218, line: 60, baseType: !3282, size: 384, offset: 3328)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 384, elements: !3283)
!3283 = !{!3284}
!3284 = !DISubrange(count: 12)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !3218, line: 62, baseType: !3286, size: 384, offset: 3712)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !3218, line: 62, size: 384, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3286, file: !3218, line: 63, baseType: !3282, size: 384)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3286, file: !3218, line: 64, baseType: !3282, size: 384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3236, file: !3218, line: 351, baseType: !3291, size: 1088)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3218, line: 79, size: 1088, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3366}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3291, file: !3218, line: 80, baseType: !91, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3291, file: !3218, line: 81, baseType: !91, size: 32, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3291, file: !3218, line: 82, baseType: !91, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3291, file: !3218, line: 83, baseType: !91, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3291, file: !3218, line: 84, baseType: !91, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3291, file: !3218, line: 85, baseType: !91, size: 32, offset: 160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3291, file: !3218, line: 86, baseType: !91, size: 32, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3291, file: !3218, line: 88, baseType: !3249, size: 640, offset: 224)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3291, file: !3218, line: 89, baseType: !276, size: 8, offset: 864)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3291, file: !3218, line: 90, baseType: !276, size: 8, offset: 872)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3291, file: !3218, line: 91, baseType: !276, size: 8, offset: 880)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3291, file: !3218, line: 92, baseType: !276, size: 8, offset: 888)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3291, file: !3218, line: 93, baseType: !276, size: 8, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3291, file: !3218, line: 94, baseType: !276, size: 8, offset: 904)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3291, file: !3218, line: 95, baseType: !3308, size: 64, offset: 960)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3310, line: 11, size: 128, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3309, file: !3310, line: 12, baseType: !981, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3309, file: !3310, line: 13, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3316, line: 103, size: 1344, elements: !3317)
!3316 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3346, !3347, !3348}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3315, file: !3316, line: 109, baseType: !88, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3315, file: !3316, line: 110, baseType: !88, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3315, file: !3316, line: 111, baseType: !88, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3315, file: !3316, line: 112, baseType: !88, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3315, file: !3316, line: 113, baseType: !88, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3315, file: !3316, line: 114, baseType: !88, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3315, file: !3316, line: 117, baseType: !88, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3315, file: !3316, line: 118, baseType: !88, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3315, file: !3316, line: 119, baseType: !88, size: 64, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3315, file: !3316, line: 120, baseType: !88, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3315, file: !3316, line: 121, baseType: !88, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3315, file: !3316, line: 122, baseType: !88, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3315, file: !3316, line: 123, baseType: !88, size: 64, offset: 768)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3315, file: !3316, line: 124, baseType: !88, size: 64, offset: 832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3315, file: !3316, line: 125, baseType: !88, size: 64, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3315, file: !3316, line: 139, baseType: !88, size: 64, offset: 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3315, file: !3316, line: 142, baseType: !88, size: 64, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3316, line: 144, baseType: !3336, size: 64, offset: 1088)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3316, line: 144, size: 64, elements: !3337)
!3337 = !{!3338, !3339, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3336, file: !3316, line: 146, baseType: !130, size: 16)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3336, file: !3316, line: 148, baseType: !161, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3336, file: !3316, line: 150, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3316, line: 59, size: 64, elements: !3342)
!3342 = !{!3343, !3344, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3341, file: !3316, line: 61, baseType: !161, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3341, file: !3316, line: 63, baseType: !161, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3341, file: !3316, line: 65, baseType: !161, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !3316, line: 153, baseType: !88, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3315, file: !3316, line: 154, baseType: !88, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3316, line: 156, baseType: !3349, size: 64, offset: 1280)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3316, line: 156, size: 64, elements: !3350)
!3350 = !{!3351, !3352, !3353}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3349, file: !3316, line: 158, baseType: !130, size: 16)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3349, file: !3316, line: 160, baseType: !161, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3349, file: !3316, line: 162, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3316, line: 69, size: 64, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3354, file: !3316, line: 71, baseType: !161, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3354, file: !3316, line: 73, baseType: !161, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3354, file: !3316, line: 75, baseType: !161, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3354, file: !3316, line: 77, baseType: !161, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3354, file: !3316, line: 80, baseType: !161, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3354, file: !3316, line: 83, baseType: !161, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3354, file: !3316, line: 86, baseType: !161, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3354, file: !3316, line: 88, baseType: !161, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3354, file: !3316, line: 93, baseType: !161, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3354, file: !3316, line: 100, baseType: !161, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3291, file: !3218, line: 96, baseType: !91, size: 32, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3236, file: !3218, line: 352, baseType: !3368, size: 4608, align: 512)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3218, line: 333, size: 4608, align: 512, elements: !3369)
!3369 = !{!3370, !3371, !3378}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3368, file: !3218, line: 334, baseType: !3254, size: 4096, align: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3368, file: !3218, line: 335, baseType: !3372, size: 512, offset: 4096)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3218, line: 312, size: 512, elements: !3373)
!3373 = !{!3374, !3375, !3376}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3372, file: !3218, line: 313, baseType: !161, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3372, file: !3218, line: 314, baseType: !161, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3372, file: !3218, line: 315, baseType: !3377, size: 384, offset: 128)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !694)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3368, file: !3218, line: 336, baseType: !3379, offset: 4608)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, elements: !584)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3236, file: !3218, line: 353, baseType: !3381, size: 32768)
!3381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 32768, elements: !3382)
!3382 = !{!3383}
!3383 = !DISubrange(count: 4096)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3217, file: !3218, line: 484, baseType: !3223, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3217, file: !3218, line: 491, baseType: !3386, size: 128, offset: 256)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3218, line: 404, size: 128, elements: !3387)
!3387 = !{!3388, !3389, !3390}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3386, file: !3218, line: 424, baseType: !161, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3386, file: !3218, line: 432, baseType: !5, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3386, file: !3218, line: 440, baseType: !5, size: 32, offset: 96)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3217, file: !3218, line: 498, baseType: !3386, size: 128, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3217, file: !3218, line: 508, baseType: !3224, size: 33280, align: 512, offset: 512)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !906)
!3396 = !{i32 7, !"Dwarf Version", i32 5}
!3397 = !{i32 2, !"Debug Info Version", i32 3}
!3398 = !{i32 1, !"wchar_size", i32 2}
!3399 = !{i32 8, !"cf-protection-branch", i32 1}
!3400 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3401 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3402 = !{i32 1, !"Code Model", i32 2}
!3403 = !{i32 1, !"override-stack-alignment", i32 8}
!3404 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3405 = distinct !DISubprogram(name: "init_mount", scope: !1, file: !1, line: 16, type: !3406, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!110, !710, !710, !710, !88, !98}
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3409 = !DILocalVariable(name: "dev_name", arg: 1, scope: !3405, file: !1, line: 16, type: !710)
!3410 = !DILocalVariable(name: "dir_name", arg: 2, scope: !3405, file: !1, line: 16, type: !710)
!3411 = !DILocalVariable(name: "type_page", arg: 3, scope: !3405, file: !1, line: 17, type: !710)
!3412 = !DILocalVariable(name: "flags", arg: 4, scope: !3405, file: !1, line: 17, type: !88)
!3413 = !DILocalVariable(name: "data_page", arg: 5, scope: !3405, file: !1, line: 17, type: !98)
!3414 = !DILocalVariable(name: "path", scope: !3405, file: !1, line: 19, type: !823)
!3415 = !DILocalVariable(name: "ret", scope: !3405, file: !1, line: 20, type: !110)
!3416 = !DILocation(line: 16, column: 35, scope: !3405)
!3417 = !DILocation(line: 16, column: 57, scope: !3405)
!3418 = !DILocation(line: 17, column: 15, scope: !3405)
!3419 = !DILocation(line: 17, column: 40, scope: !3405)
!3420 = !DILocation(line: 17, column: 53, scope: !3405)
!3421 = !DILocation(line: 19, column: 2, scope: !3405)
!3422 = !DILocation(line: 19, column: 14, scope: !3405)
!3423 = !DILocation(line: 20, column: 2, scope: !3405)
!3424 = !DILocation(line: 20, column: 6, scope: !3405)
!3425 = !DILocation(line: 22, column: 18, scope: !3405)
!3426 = !DILocation(line: 22, column: 8, scope: !3405)
!3427 = !DILocation(line: 22, column: 6, scope: !3405)
!3428 = !DILocation(line: 23, column: 6, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3405, file: !1, line: 23, column: 6)
!3430 = !DILocation(line: 23, column: 6, scope: !3405)
!3431 = !DILocation(line: 24, column: 10, scope: !3429)
!3432 = !DILocation(line: 24, column: 3, scope: !3429)
!3433 = !DILocation(line: 25, column: 19, scope: !3405)
!3434 = !DILocation(line: 25, column: 36, scope: !3405)
!3435 = !DILocation(line: 25, column: 47, scope: !3405)
!3436 = !DILocation(line: 25, column: 54, scope: !3405)
!3437 = !DILocation(line: 25, column: 8, scope: !3405)
!3438 = !DILocation(line: 25, column: 6, scope: !3405)
!3439 = !DILocation(line: 26, column: 2, scope: !3405)
!3440 = !DILocation(line: 27, column: 9, scope: !3405)
!3441 = !DILocation(line: 27, column: 2, scope: !3405)
!3442 = !DILocation(line: 28, column: 1, scope: !3405)
!3443 = !DISubprogram(name: "kern_path", scope: !3444, file: !3444, line: 63, type: !3445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3444 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!110, !710, !5, !1564}
!3447 = !DISubprogram(name: "path_mount", scope: !3448, file: !3448, line: 82, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3448 = !DIFile(filename: "fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!110, !710, !1564, !710, !88, !98}
!3451 = !DISubprogram(name: "path_put", scope: !824, file: !824, line: 14, type: !3452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !989}
!3454 = distinct !DISubprogram(name: "init_umount", scope: !1, file: !1, line: 30, type: !3455, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!110, !710, !110}
!3457 = !{!3458, !3459, !3460, !3461, !3462}
!3458 = !DILocalVariable(name: "name", arg: 1, scope: !3454, file: !1, line: 30, type: !710)
!3459 = !DILocalVariable(name: "flags", arg: 2, scope: !3454, file: !1, line: 30, type: !110)
!3460 = !DILocalVariable(name: "lookup_flags", scope: !3454, file: !1, line: 32, type: !110)
!3461 = !DILocalVariable(name: "path", scope: !3454, file: !1, line: 33, type: !823)
!3462 = !DILocalVariable(name: "ret", scope: !3454, file: !1, line: 34, type: !110)
!3463 = !DILocation(line: 30, column: 36, scope: !3454)
!3464 = !DILocation(line: 30, column: 46, scope: !3454)
!3465 = !DILocation(line: 32, column: 2, scope: !3454)
!3466 = !DILocation(line: 32, column: 6, scope: !3454)
!3467 = !DILocation(line: 33, column: 2, scope: !3454)
!3468 = !DILocation(line: 33, column: 14, scope: !3454)
!3469 = !DILocation(line: 34, column: 2, scope: !3454)
!3470 = !DILocation(line: 34, column: 6, scope: !3454)
!3471 = !DILocation(line: 36, column: 8, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3454, file: !1, line: 36, column: 6)
!3473 = !DILocation(line: 36, column: 14, scope: !3472)
!3474 = !DILocation(line: 36, column: 6, scope: !3454)
!3475 = !DILocation(line: 37, column: 16, scope: !3472)
!3476 = !DILocation(line: 37, column: 3, scope: !3472)
!3477 = !DILocation(line: 38, column: 18, scope: !3454)
!3478 = !DILocation(line: 38, column: 24, scope: !3454)
!3479 = !DILocation(line: 38, column: 8, scope: !3454)
!3480 = !DILocation(line: 38, column: 6, scope: !3454)
!3481 = !DILocation(line: 39, column: 6, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3454, file: !1, line: 39, column: 6)
!3483 = !DILocation(line: 39, column: 6, scope: !3454)
!3484 = !DILocation(line: 40, column: 10, scope: !3482)
!3485 = !DILocation(line: 40, column: 3, scope: !3482)
!3486 = !DILocation(line: 41, column: 28, scope: !3454)
!3487 = !DILocation(line: 41, column: 9, scope: !3454)
!3488 = !DILocation(line: 41, column: 2, scope: !3454)
!3489 = !DILocation(line: 42, column: 1, scope: !3454)
!3490 = !DISubprogram(name: "path_umount", scope: !3448, file: !3448, line: 84, type: !3491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!110, !1564, !110}
!3493 = distinct !DISubprogram(name: "init_chdir", scope: !1, file: !1, line: 44, type: !3494, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!110, !710}
!3496 = !{!3497, !3498, !3499}
!3497 = !DILocalVariable(name: "filename", arg: 1, scope: !3493, file: !1, line: 44, type: !710)
!3498 = !DILocalVariable(name: "path", scope: !3493, file: !1, line: 46, type: !823)
!3499 = !DILocalVariable(name: "error", scope: !3493, file: !1, line: 47, type: !110)
!3500 = !DILocation(line: 44, column: 35, scope: !3493)
!3501 = !DILocation(line: 46, column: 2, scope: !3493)
!3502 = !DILocation(line: 46, column: 14, scope: !3493)
!3503 = !DILocation(line: 47, column: 2, scope: !3493)
!3504 = !DILocation(line: 47, column: 6, scope: !3493)
!3505 = !DILocation(line: 49, column: 20, scope: !3493)
!3506 = !DILocation(line: 49, column: 10, scope: !3493)
!3507 = !DILocation(line: 49, column: 8, scope: !3493)
!3508 = !DILocation(line: 50, column: 6, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3493, file: !1, line: 50, column: 6)
!3510 = !DILocation(line: 50, column: 6, scope: !3493)
!3511 = !DILocation(line: 51, column: 10, scope: !3509)
!3512 = !DILocation(line: 51, column: 3, scope: !3509)
!3513 = !DILocation(line: 52, column: 10, scope: !3493)
!3514 = !DILocation(line: 52, column: 8, scope: !3493)
!3515 = !DILocation(line: 53, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3493, file: !1, line: 53, column: 6)
!3517 = !DILocation(line: 53, column: 6, scope: !3493)
!3518 = !DILocation(line: 54, column: 14, scope: !3516)
!3519 = !DILocation(line: 54, column: 23, scope: !3516)
!3520 = !DILocation(line: 54, column: 3, scope: !3516)
!3521 = !DILocation(line: 55, column: 2, scope: !3493)
!3522 = !DILocation(line: 56, column: 9, scope: !3493)
!3523 = !DILocation(line: 56, column: 2, scope: !3493)
!3524 = !DILocation(line: 57, column: 1, scope: !3493)
!3525 = distinct !DISubprogram(name: "path_permission", scope: !44, file: !44, line: 2682, type: !3526, scopeLine: 2683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!110, !989, !110}
!3528 = !{!3529, !3530}
!3529 = !DILocalVariable(name: "path", arg: 1, scope: !3525, file: !44, line: 2682, type: !989)
!3530 = !DILocalVariable(name: "mask", arg: 2, scope: !3525, file: !44, line: 2682, type: !110)
!3531 = !DILocation(line: 2682, column: 54, scope: !3525)
!3532 = !DILocation(line: 2682, column: 64, scope: !3525)
!3533 = !DILocation(line: 2684, column: 36, scope: !3525)
!3534 = !DILocation(line: 2684, column: 42, scope: !3525)
!3535 = !DILocation(line: 2684, column: 26, scope: !3525)
!3536 = !DILocation(line: 2685, column: 13, scope: !3525)
!3537 = !DILocation(line: 2685, column: 19, scope: !3525)
!3538 = !DILocation(line: 2685, column: 5, scope: !3525)
!3539 = !DILocation(line: 2685, column: 28, scope: !3525)
!3540 = !DILocation(line: 2684, column: 9, scope: !3525)
!3541 = !DILocation(line: 2684, column: 2, scope: !3525)
!3542 = !DISubprogram(name: "set_fs_pwd", scope: !2634, file: !2634, line: 22, type: !3543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !2632, !989}
!3545 = distinct !DISubprogram(name: "get_current", scope: !3546, file: !3546, line: 39, type: !3547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3549)
!3546 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!79}
!3549 = !{!3550, !3552, !3556}
!3550 = !DILocalVariable(name: "pscr_ret__", scope: !3551, file: !3546, line: 41, type: !79)
!3551 = distinct !DILexicalBlock(scope: !3545, file: !3546, line: 41, column: 9)
!3552 = !DILocalVariable(name: "__vpp_verify", scope: !3553, file: !3546, line: 41, type: !3554)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !3546, line: 41, column: 9)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3556 = !DILocalVariable(name: "pfo_val__", scope: !3557, file: !3546, line: 41, type: !161)
!3557 = distinct !DILexicalBlock(scope: !3551, file: !3546, line: 41, column: 9)
!3558 = !DILocation(line: 41, column: 9, scope: !3551)
!3559 = !DILocation(line: 41, column: 9, scope: !3553)
!3560 = !DILocation(line: 41, column: 9, scope: !3557)
!3561 = !{i64 2148453778}
!3562 = !DILocation(line: 41, column: 9, scope: !3545)
!3563 = !DILocation(line: 41, column: 2, scope: !3545)
!3564 = distinct !DISubprogram(name: "init_chroot", scope: !1, file: !1, line: 59, type: !3494, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3565)
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DILocalVariable(name: "filename", arg: 1, scope: !3564, file: !1, line: 59, type: !710)
!3567 = !DILocalVariable(name: "path", scope: !3564, file: !1, line: 61, type: !823)
!3568 = !DILocalVariable(name: "error", scope: !3564, file: !1, line: 62, type: !110)
!3569 = !DILabel(scope: !3564, name: "dput_and_out", file: !1, line: 77)
!3570 = !DILocation(line: 59, column: 36, scope: !3564)
!3571 = !DILocation(line: 61, column: 2, scope: !3564)
!3572 = !DILocation(line: 61, column: 14, scope: !3564)
!3573 = !DILocation(line: 62, column: 2, scope: !3564)
!3574 = !DILocation(line: 62, column: 6, scope: !3564)
!3575 = !DILocation(line: 64, column: 20, scope: !3564)
!3576 = !DILocation(line: 64, column: 10, scope: !3564)
!3577 = !DILocation(line: 64, column: 8, scope: !3564)
!3578 = !DILocation(line: 65, column: 6, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 65, column: 6)
!3580 = !DILocation(line: 65, column: 6, scope: !3564)
!3581 = !DILocation(line: 66, column: 10, scope: !3579)
!3582 = !DILocation(line: 66, column: 3, scope: !3579)
!3583 = !DILocation(line: 67, column: 10, scope: !3564)
!3584 = !DILocation(line: 67, column: 8, scope: !3564)
!3585 = !DILocation(line: 68, column: 6, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 68, column: 6)
!3587 = !DILocation(line: 68, column: 6, scope: !3564)
!3588 = !DILocation(line: 69, column: 3, scope: !3586)
!3589 = !DILocation(line: 70, column: 8, scope: !3564)
!3590 = !DILocation(line: 71, column: 18, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 71, column: 6)
!3592 = !DILocation(line: 71, column: 7, scope: !3591)
!3593 = !DILocation(line: 71, column: 6, scope: !3564)
!3594 = !DILocation(line: 72, column: 3, scope: !3591)
!3595 = !DILocation(line: 73, column: 10, scope: !3564)
!3596 = !DILocation(line: 73, column: 8, scope: !3564)
!3597 = !DILocation(line: 74, column: 6, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 74, column: 6)
!3599 = !DILocation(line: 74, column: 6, scope: !3564)
!3600 = !DILocation(line: 75, column: 3, scope: !3598)
!3601 = !DILocation(line: 76, column: 14, scope: !3564)
!3602 = !DILocation(line: 76, column: 23, scope: !3564)
!3603 = !DILocation(line: 76, column: 2, scope: !3564)
!3604 = !DILocation(line: 77, column: 1, scope: !3564)
!3605 = !DILocation(line: 78, column: 2, scope: !3564)
!3606 = !DILocation(line: 79, column: 9, scope: !3564)
!3607 = !DILocation(line: 79, column: 2, scope: !3564)
!3608 = !DILocation(line: 80, column: 1, scope: !3564)
!3609 = !DISubprogram(name: "ns_capable", scope: !621, file: !621, line: 149, type: !3610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!707, !793, !110}
!3612 = distinct !DISubprogram(name: "current_user_ns", scope: !601, file: !601, line: 346, type: !3613, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!793}
!3615 = !DILocation(line: 348, column: 2, scope: !3612)
!3616 = distinct !DISubprogram(name: "security_path_chroot", scope: !3617, file: !3617, line: 1910, type: !3618, scopeLine: 1911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3620)
!3617 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!110, !989}
!3620 = !{!3621}
!3621 = !DILocalVariable(name: "path", arg: 1, scope: !3616, file: !3617, line: 1910, type: !989)
!3622 = !DILocation(line: 1910, column: 59, scope: !3616)
!3623 = !DILocation(line: 1912, column: 2, scope: !3616)
!3624 = !DISubprogram(name: "set_fs_root", scope: !2634, file: !2634, line: 21, type: !3543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3625 = distinct !DISubprogram(name: "init_chown", scope: !1, file: !1, line: 82, type: !3626, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!110, !710, !593, !610, !110}
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3629 = !DILocalVariable(name: "filename", arg: 1, scope: !3625, file: !1, line: 82, type: !710)
!3630 = !DILocalVariable(name: "user", arg: 2, scope: !3625, file: !1, line: 82, type: !593)
!3631 = !DILocalVariable(name: "group", arg: 3, scope: !3625, file: !1, line: 82, type: !610)
!3632 = !DILocalVariable(name: "flags", arg: 4, scope: !3625, file: !1, line: 82, type: !110)
!3633 = !DILocalVariable(name: "lookup_flags", scope: !3625, file: !1, line: 84, type: !110)
!3634 = !DILocalVariable(name: "path", scope: !3625, file: !1, line: 85, type: !823)
!3635 = !DILocalVariable(name: "error", scope: !3625, file: !1, line: 86, type: !110)
!3636 = !DILocation(line: 82, column: 35, scope: !3625)
!3637 = !DILocation(line: 82, column: 51, scope: !3625)
!3638 = !DILocation(line: 82, column: 63, scope: !3625)
!3639 = !DILocation(line: 82, column: 74, scope: !3625)
!3640 = !DILocation(line: 84, column: 2, scope: !3625)
!3641 = !DILocation(line: 84, column: 6, scope: !3625)
!3642 = !DILocation(line: 84, column: 22, scope: !3625)
!3643 = !DILocation(line: 84, column: 28, scope: !3625)
!3644 = !DILocation(line: 84, column: 21, scope: !3625)
!3645 = !DILocation(line: 85, column: 2, scope: !3625)
!3646 = !DILocation(line: 85, column: 14, scope: !3625)
!3647 = !DILocation(line: 86, column: 2, scope: !3625)
!3648 = !DILocation(line: 86, column: 6, scope: !3625)
!3649 = !DILocation(line: 88, column: 20, scope: !3625)
!3650 = !DILocation(line: 88, column: 30, scope: !3625)
!3651 = !DILocation(line: 88, column: 10, scope: !3625)
!3652 = !DILocation(line: 88, column: 8, scope: !3625)
!3653 = !DILocation(line: 89, column: 6, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 89, column: 6)
!3655 = !DILocation(line: 89, column: 6, scope: !3625)
!3656 = !DILocation(line: 90, column: 10, scope: !3654)
!3657 = !DILocation(line: 90, column: 3, scope: !3654)
!3658 = !DILocation(line: 91, column: 30, scope: !3625)
!3659 = !DILocation(line: 91, column: 10, scope: !3625)
!3660 = !DILocation(line: 91, column: 8, scope: !3625)
!3661 = !DILocation(line: 92, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 92, column: 6)
!3663 = !DILocation(line: 92, column: 6, scope: !3625)
!3664 = !DILocation(line: 93, column: 31, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3662, file: !1, line: 92, column: 14)
!3666 = !DILocation(line: 93, column: 37, scope: !3665)
!3667 = !DILocation(line: 93, column: 11, scope: !3665)
!3668 = !DILocation(line: 93, column: 9, scope: !3665)
!3669 = !DILocation(line: 94, column: 23, scope: !3665)
!3670 = !DILocation(line: 94, column: 3, scope: !3665)
!3671 = !DILocation(line: 95, column: 2, scope: !3665)
!3672 = !DILocation(line: 96, column: 2, scope: !3625)
!3673 = !DILocation(line: 97, column: 9, scope: !3625)
!3674 = !DILocation(line: 97, column: 2, scope: !3625)
!3675 = !DILocation(line: 98, column: 1, scope: !3625)
!3676 = !DISubprogram(name: "mnt_want_write", scope: !795, file: !795, line: 83, type: !3677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!110, !827}
!3679 = !DISubprogram(name: "chown_common", scope: !3448, file: !3448, line: 181, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!110, !989, !593, !610}
!3682 = !DISubprogram(name: "mnt_drop_write", scope: !795, file: !795, line: 85, type: !3683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !827}
!3685 = distinct !DISubprogram(name: "init_chmod", scope: !1, file: !1, line: 100, type: !3686, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!110, !710, !870}
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "filename", arg: 1, scope: !3685, file: !1, line: 100, type: !710)
!3690 = !DILocalVariable(name: "mode", arg: 2, scope: !3685, file: !1, line: 100, type: !870)
!3691 = !DILocalVariable(name: "path", scope: !3685, file: !1, line: 102, type: !823)
!3692 = !DILocalVariable(name: "error", scope: !3685, file: !1, line: 103, type: !110)
!3693 = !DILocation(line: 100, column: 35, scope: !3685)
!3694 = !DILocation(line: 100, column: 53, scope: !3685)
!3695 = !DILocation(line: 102, column: 2, scope: !3685)
!3696 = !DILocation(line: 102, column: 14, scope: !3685)
!3697 = !DILocation(line: 103, column: 2, scope: !3685)
!3698 = !DILocation(line: 103, column: 6, scope: !3685)
!3699 = !DILocation(line: 105, column: 20, scope: !3685)
!3700 = !DILocation(line: 105, column: 10, scope: !3685)
!3701 = !DILocation(line: 105, column: 8, scope: !3685)
!3702 = !DILocation(line: 106, column: 6, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3685, file: !1, line: 106, column: 6)
!3704 = !DILocation(line: 106, column: 6, scope: !3685)
!3705 = !DILocation(line: 107, column: 10, scope: !3703)
!3706 = !DILocation(line: 107, column: 3, scope: !3703)
!3707 = !DILocation(line: 108, column: 30, scope: !3685)
!3708 = !DILocation(line: 108, column: 10, scope: !3685)
!3709 = !DILocation(line: 108, column: 8, scope: !3685)
!3710 = !DILocation(line: 109, column: 2, scope: !3685)
!3711 = !DILocation(line: 110, column: 9, scope: !3685)
!3712 = !DILocation(line: 110, column: 2, scope: !3685)
!3713 = !DILocation(line: 111, column: 1, scope: !3685)
!3714 = !DISubprogram(name: "chmod_common", scope: !3448, file: !3448, line: 178, type: !3715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!110, !989, !870}
!3717 = distinct !DISubprogram(name: "init_eaccess", scope: !1, file: !1, line: 113, type: !3494, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DILocalVariable(name: "filename", arg: 1, scope: !3717, file: !1, line: 113, type: !710)
!3720 = !DILocalVariable(name: "path", scope: !3717, file: !1, line: 115, type: !823)
!3721 = !DILocalVariable(name: "error", scope: !3717, file: !1, line: 116, type: !110)
!3722 = !DILocation(line: 113, column: 37, scope: !3717)
!3723 = !DILocation(line: 115, column: 2, scope: !3717)
!3724 = !DILocation(line: 115, column: 14, scope: !3717)
!3725 = !DILocation(line: 116, column: 2, scope: !3717)
!3726 = !DILocation(line: 116, column: 6, scope: !3717)
!3727 = !DILocation(line: 118, column: 20, scope: !3717)
!3728 = !DILocation(line: 118, column: 10, scope: !3717)
!3729 = !DILocation(line: 118, column: 8, scope: !3717)
!3730 = !DILocation(line: 119, column: 6, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 119, column: 6)
!3732 = !DILocation(line: 119, column: 6, scope: !3717)
!3733 = !DILocation(line: 120, column: 10, scope: !3731)
!3734 = !DILocation(line: 120, column: 3, scope: !3731)
!3735 = !DILocation(line: 121, column: 10, scope: !3717)
!3736 = !DILocation(line: 121, column: 8, scope: !3717)
!3737 = !DILocation(line: 122, column: 2, scope: !3717)
!3738 = !DILocation(line: 123, column: 9, scope: !3717)
!3739 = !DILocation(line: 123, column: 2, scope: !3717)
!3740 = !DILocation(line: 124, column: 1, scope: !3717)
!3741 = distinct !DISubprogram(name: "init_stat", scope: !1, file: !1, line: 126, type: !3742, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!110, !710, !991, !110}
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750}
!3745 = !DILocalVariable(name: "filename", arg: 1, scope: !3741, file: !1, line: 126, type: !710)
!3746 = !DILocalVariable(name: "stat", arg: 2, scope: !3741, file: !1, line: 126, type: !991)
!3747 = !DILocalVariable(name: "flags", arg: 3, scope: !3741, file: !1, line: 126, type: !110)
!3748 = !DILocalVariable(name: "lookup_flags", scope: !3741, file: !1, line: 128, type: !110)
!3749 = !DILocalVariable(name: "path", scope: !3741, file: !1, line: 129, type: !823)
!3750 = !DILocalVariable(name: "error", scope: !3741, file: !1, line: 130, type: !110)
!3751 = !DILocation(line: 126, column: 34, scope: !3741)
!3752 = !DILocation(line: 126, column: 58, scope: !3741)
!3753 = !DILocation(line: 126, column: 68, scope: !3741)
!3754 = !DILocation(line: 128, column: 2, scope: !3741)
!3755 = !DILocation(line: 128, column: 6, scope: !3741)
!3756 = !DILocation(line: 128, column: 22, scope: !3741)
!3757 = !DILocation(line: 128, column: 28, scope: !3741)
!3758 = !DILocation(line: 128, column: 21, scope: !3741)
!3759 = !DILocation(line: 129, column: 2, scope: !3741)
!3760 = !DILocation(line: 129, column: 14, scope: !3741)
!3761 = !DILocation(line: 130, column: 2, scope: !3741)
!3762 = !DILocation(line: 130, column: 6, scope: !3741)
!3763 = !DILocation(line: 132, column: 20, scope: !3741)
!3764 = !DILocation(line: 132, column: 30, scope: !3741)
!3765 = !DILocation(line: 132, column: 10, scope: !3741)
!3766 = !DILocation(line: 132, column: 8, scope: !3741)
!3767 = !DILocation(line: 133, column: 6, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3741, file: !1, line: 133, column: 6)
!3769 = !DILocation(line: 133, column: 6, scope: !3741)
!3770 = !DILocation(line: 134, column: 10, scope: !3768)
!3771 = !DILocation(line: 134, column: 3, scope: !3768)
!3772 = !DILocation(line: 135, column: 29, scope: !3741)
!3773 = !DILocation(line: 136, column: 8, scope: !3741)
!3774 = !DILocation(line: 136, column: 14, scope: !3741)
!3775 = !DILocation(line: 135, column: 10, scope: !3741)
!3776 = !DILocation(line: 135, column: 8, scope: !3741)
!3777 = !DILocation(line: 137, column: 2, scope: !3741)
!3778 = !DILocation(line: 138, column: 9, scope: !3741)
!3779 = !DILocation(line: 138, column: 2, scope: !3741)
!3780 = !DILocation(line: 139, column: 1, scope: !3741)
!3781 = !DISubprogram(name: "vfs_getattr", scope: !44, file: !44, line: 3097, type: !3782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!110, !989, !991, !91, !5}
!3784 = distinct !DISubprogram(name: "init_mknod", scope: !1, file: !1, line: 141, type: !3785, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!110, !710, !870, !5}
!3787 = !{!3788, !3789, !3790, !3791, !3792, !3793}
!3788 = !DILocalVariable(name: "filename", arg: 1, scope: !3784, file: !1, line: 141, type: !710)
!3789 = !DILocalVariable(name: "mode", arg: 2, scope: !3784, file: !1, line: 141, type: !870)
!3790 = !DILocalVariable(name: "dev", arg: 3, scope: !3784, file: !1, line: 141, type: !5)
!3791 = !DILocalVariable(name: "dentry", scope: !3784, file: !1, line: 143, type: !831)
!3792 = !DILocalVariable(name: "path", scope: !3784, file: !1, line: 144, type: !823)
!3793 = !DILocalVariable(name: "error", scope: !3784, file: !1, line: 145, type: !110)
!3794 = !DILocation(line: 141, column: 35, scope: !3784)
!3795 = !DILocation(line: 141, column: 53, scope: !3784)
!3796 = !DILocation(line: 141, column: 72, scope: !3784)
!3797 = !DILocation(line: 143, column: 2, scope: !3784)
!3798 = !DILocation(line: 143, column: 17, scope: !3784)
!3799 = !DILocation(line: 144, column: 2, scope: !3784)
!3800 = !DILocation(line: 144, column: 14, scope: !3784)
!3801 = !DILocation(line: 145, column: 2, scope: !3784)
!3802 = !DILocation(line: 145, column: 6, scope: !3784)
!3803 = !DILocation(line: 147, column: 6, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3784, file: !1, line: 147, column: 6)
!3805 = !DILocation(line: 147, column: 21, scope: !3804)
!3806 = !DILocation(line: 147, column: 24, scope: !3804)
!3807 = !DILocation(line: 147, column: 6, scope: !3784)
!3808 = !DILocation(line: 148, column: 7, scope: !3804)
!3809 = !DILocation(line: 148, column: 3, scope: !3804)
!3810 = !DILocation(line: 149, column: 13, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3804, file: !1, line: 149, column: 11)
!3812 = !DILocation(line: 149, column: 27, scope: !3811)
!3813 = !DILocation(line: 149, column: 30, scope: !3811)
!3814 = !DILocation(line: 149, column: 11, scope: !3804)
!3815 = !DILocation(line: 150, column: 3, scope: !3811)
!3816 = !DILocation(line: 152, column: 38, scope: !3784)
!3817 = !DILocation(line: 152, column: 11, scope: !3784)
!3818 = !DILocation(line: 152, column: 9, scope: !3784)
!3819 = !DILocation(line: 153, column: 13, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3784, file: !1, line: 153, column: 6)
!3821 = !DILocation(line: 153, column: 6, scope: !3820)
!3822 = !DILocation(line: 153, column: 6, scope: !3784)
!3823 = !DILocation(line: 154, column: 18, scope: !3820)
!3824 = !DILocation(line: 154, column: 10, scope: !3820)
!3825 = !DILocation(line: 154, column: 3, scope: !3820)
!3826 = !DILocation(line: 156, column: 7, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3784, file: !1, line: 156, column: 6)
!3828 = !DILocation(line: 156, column: 6, scope: !3784)
!3829 = !DILocation(line: 157, column: 12, scope: !3827)
!3830 = !DILocation(line: 157, column: 11, scope: !3827)
!3831 = !DILocation(line: 157, column: 8, scope: !3827)
!3832 = !DILocation(line: 157, column: 3, scope: !3827)
!3833 = !DILocation(line: 158, column: 37, scope: !3784)
!3834 = !DILocation(line: 158, column: 45, scope: !3784)
!3835 = !DILocation(line: 158, column: 51, scope: !3784)
!3836 = !DILocation(line: 158, column: 10, scope: !3784)
!3837 = !DILocation(line: 158, column: 8, scope: !3784)
!3838 = !DILocation(line: 159, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3784, file: !1, line: 159, column: 6)
!3840 = !DILocation(line: 159, column: 6, scope: !3784)
!3841 = !DILocation(line: 160, column: 36, scope: !3839)
!3842 = !DILocation(line: 160, column: 21, scope: !3839)
!3843 = !DILocation(line: 160, column: 47, scope: !3839)
!3844 = !DILocation(line: 160, column: 55, scope: !3839)
!3845 = !DILocation(line: 161, column: 7, scope: !3839)
!3846 = !DILocation(line: 161, column: 15, scope: !3839)
!3847 = !DILocation(line: 161, column: 36, scope: !3839)
!3848 = !DILocation(line: 161, column: 21, scope: !3839)
!3849 = !DILocation(line: 160, column: 11, scope: !3839)
!3850 = !DILocation(line: 160, column: 9, scope: !3839)
!3851 = !DILocation(line: 160, column: 3, scope: !3839)
!3852 = !DILocation(line: 162, column: 26, scope: !3784)
!3853 = !DILocation(line: 162, column: 2, scope: !3784)
!3854 = !DILocation(line: 163, column: 9, scope: !3784)
!3855 = !DILocation(line: 163, column: 2, scope: !3784)
!3856 = !DILocation(line: 164, column: 1, scope: !3784)
!3857 = !DISubprogram(name: "kern_path_create", scope: !3444, file: !3444, line: 65, type: !3858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!831, !110, !710, !1564, !5}
!3860 = distinct !DISubprogram(name: "IS_ERR", scope: !3861, file: !3861, line: 59, type: !3862, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3864)
!3861 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!707, !3554}
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "ptr", arg: 1, scope: !3860, file: !3861, line: 59, type: !3554)
!3866 = !DILocation(line: 59, column: 60, scope: !3860)
!3867 = !DILocation(line: 61, column: 9, scope: !3860)
!3868 = !DILocation(line: 61, column: 2, scope: !3860)
!3869 = distinct !DISubprogram(name: "PTR_ERR", scope: !3861, file: !3861, line: 49, type: !3870, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3872)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!981, !3554}
!3872 = !{!3873}
!3873 = !DILocalVariable(name: "ptr", arg: 1, scope: !3869, file: !3861, line: 49, type: !3554)
!3874 = !DILocation(line: 49, column: 61, scope: !3869)
!3875 = !DILocation(line: 51, column: 16, scope: !3869)
!3876 = !DILocation(line: 51, column: 9, scope: !3869)
!3877 = !DILocation(line: 51, column: 2, scope: !3869)
!3878 = !DISubprogram(name: "current_umask", scope: !44, file: !44, line: 2456, type: !3879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!110}
!3881 = distinct !DISubprogram(name: "security_path_mknod", scope: !3617, file: !3617, line: 1867, type: !3882, scopeLine: 1869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!110, !989, !831, !870, !5}
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DILocalVariable(name: "dir", arg: 1, scope: !3881, file: !3617, line: 1867, type: !989)
!3886 = !DILocalVariable(name: "dentry", arg: 2, scope: !3881, file: !3617, line: 1867, type: !831)
!3887 = !DILocalVariable(name: "mode", arg: 3, scope: !3881, file: !3617, line: 1868, type: !870)
!3888 = !DILocalVariable(name: "dev", arg: 4, scope: !3881, file: !3617, line: 1868, type: !5)
!3889 = !DILocation(line: 1867, column: 58, scope: !3881)
!3890 = !DILocation(line: 1867, column: 78, scope: !3881)
!3891 = !DILocation(line: 1868, column: 19, scope: !3881)
!3892 = !DILocation(line: 1868, column: 38, scope: !3881)
!3893 = !DILocation(line: 1870, column: 2, scope: !3881)
!3894 = !DISubprogram(name: "vfs_mknod", scope: !44, file: !44, line: 1773, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3895 = distinct !DISubprogram(name: "mnt_idmap", scope: !795, file: !795, line: 77, type: !3896, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3900)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!906, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!3900 = !{!3901, !3902}
!3901 = !DILocalVariable(name: "mnt", arg: 1, scope: !3895, file: !795, line: 77, type: !3898)
!3902 = !DILocalVariable(name: "___p1", scope: !3903, file: !795, line: 80, type: !3904)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !795, line: 80, column: 9)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!3905 = !DILocation(line: 77, column: 66, scope: !3895)
!3906 = !DILocation(line: 80, column: 9, scope: !3903)
!3907 = !DILocation(line: 80, column: 9, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3903, file: !795, line: 80, column: 9)
!3909 = !DILocation(line: 80, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !795, line: 80, column: 9)
!3911 = !DILocation(line: 80, column: 9, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3903, file: !795, line: 80, column: 9)
!3913 = !{i64 2147723095}
!3914 = !DILocation(line: 80, column: 9, scope: !3895)
!3915 = !DILocation(line: 80, column: 2, scope: !3895)
!3916 = distinct !DISubprogram(name: "new_decode_dev", scope: !3917, file: !3917, line: 46, type: !3918, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3920)
!3917 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!941, !91}
!3920 = !{!3921, !3922, !3923}
!3921 = !DILocalVariable(name: "dev", arg: 1, scope: !3916, file: !3917, line: 46, type: !91)
!3922 = !DILocalVariable(name: "major", scope: !3916, file: !3917, line: 48, type: !5)
!3923 = !DILocalVariable(name: "minor", scope: !3916, file: !3917, line: 49, type: !5)
!3924 = !DILocation(line: 46, column: 49, scope: !3916)
!3925 = !DILocation(line: 48, column: 2, scope: !3916)
!3926 = !DILocation(line: 48, column: 11, scope: !3916)
!3927 = !DILocation(line: 48, column: 20, scope: !3916)
!3928 = !DILocation(line: 48, column: 24, scope: !3916)
!3929 = !DILocation(line: 48, column: 35, scope: !3916)
!3930 = !DILocation(line: 49, column: 2, scope: !3916)
!3931 = !DILocation(line: 49, column: 11, scope: !3916)
!3932 = !DILocation(line: 49, column: 20, scope: !3916)
!3933 = !DILocation(line: 49, column: 24, scope: !3916)
!3934 = !DILocation(line: 49, column: 36, scope: !3916)
!3935 = !DILocation(line: 49, column: 40, scope: !3916)
!3936 = !DILocation(line: 49, column: 47, scope: !3916)
!3937 = !DILocation(line: 49, column: 32, scope: !3916)
!3938 = !DILocation(line: 50, column: 9, scope: !3916)
!3939 = !DILocation(line: 51, column: 1, scope: !3916)
!3940 = !DILocation(line: 50, column: 2, scope: !3916)
!3941 = !DISubprogram(name: "done_path_create", scope: !3444, file: !3444, line: 67, type: !3942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{null, !1564, !831}
!3944 = distinct !DISubprogram(name: "init_link", scope: !1, file: !1, line: 166, type: !3945, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!110, !710, !710}
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3948 = !DILocalVariable(name: "oldname", arg: 1, scope: !3944, file: !1, line: 166, type: !710)
!3949 = !DILocalVariable(name: "newname", arg: 2, scope: !3944, file: !1, line: 166, type: !710)
!3950 = !DILocalVariable(name: "new_dentry", scope: !3944, file: !1, line: 168, type: !831)
!3951 = !DILocalVariable(name: "old_path", scope: !3944, file: !1, line: 169, type: !823)
!3952 = !DILocalVariable(name: "new_path", scope: !3944, file: !1, line: 169, type: !823)
!3953 = !DILocalVariable(name: "idmap", scope: !3944, file: !1, line: 170, type: !906)
!3954 = !DILocalVariable(name: "error", scope: !3944, file: !1, line: 171, type: !110)
!3955 = !DILabel(scope: !3944, name: "out_dput", file: !1, line: 194)
!3956 = !DILabel(scope: !3944, name: "out", file: !1, line: 196)
!3957 = !DILocation(line: 166, column: 34, scope: !3944)
!3958 = !DILocation(line: 166, column: 55, scope: !3944)
!3959 = !DILocation(line: 168, column: 2, scope: !3944)
!3960 = !DILocation(line: 168, column: 17, scope: !3944)
!3961 = !DILocation(line: 169, column: 2, scope: !3944)
!3962 = !DILocation(line: 169, column: 14, scope: !3944)
!3963 = !DILocation(line: 169, column: 24, scope: !3944)
!3964 = !DILocation(line: 170, column: 2, scope: !3944)
!3965 = !DILocation(line: 170, column: 20, scope: !3944)
!3966 = !DILocation(line: 171, column: 2, scope: !3944)
!3967 = !DILocation(line: 171, column: 6, scope: !3944)
!3968 = !DILocation(line: 173, column: 20, scope: !3944)
!3969 = !DILocation(line: 173, column: 10, scope: !3944)
!3970 = !DILocation(line: 173, column: 8, scope: !3944)
!3971 = !DILocation(line: 174, column: 6, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 174, column: 6)
!3973 = !DILocation(line: 174, column: 6, scope: !3944)
!3974 = !DILocation(line: 175, column: 10, scope: !3972)
!3975 = !DILocation(line: 175, column: 3, scope: !3972)
!3976 = !DILocation(line: 177, column: 42, scope: !3944)
!3977 = !DILocation(line: 177, column: 15, scope: !3944)
!3978 = !DILocation(line: 177, column: 13, scope: !3944)
!3979 = !DILocation(line: 178, column: 18, scope: !3944)
!3980 = !DILocation(line: 178, column: 10, scope: !3944)
!3981 = !DILocation(line: 178, column: 8, scope: !3944)
!3982 = !DILocation(line: 179, column: 13, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 179, column: 6)
!3984 = !DILocation(line: 179, column: 6, scope: !3983)
!3985 = !DILocation(line: 179, column: 6, scope: !3944)
!3986 = !DILocation(line: 180, column: 3, scope: !3983)
!3987 = !DILocation(line: 182, column: 8, scope: !3944)
!3988 = !DILocation(line: 183, column: 15, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 183, column: 6)
!3990 = !DILocation(line: 183, column: 31, scope: !3989)
!3991 = !DILocation(line: 183, column: 19, scope: !3989)
!3992 = !DILocation(line: 183, column: 6, scope: !3944)
!3993 = !DILocation(line: 184, column: 3, scope: !3989)
!3994 = !DILocation(line: 185, column: 29, scope: !3944)
!3995 = !DILocation(line: 185, column: 10, scope: !3944)
!3996 = !DILocation(line: 185, column: 8, scope: !3944)
!3997 = !DILocation(line: 186, column: 21, scope: !3944)
!3998 = !DILocation(line: 186, column: 10, scope: !3944)
!3999 = !DILocation(line: 186, column: 8, scope: !3944)
!4000 = !DILocation(line: 187, column: 6, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 187, column: 6)
!4002 = !DILocation(line: 187, column: 6, scope: !3944)
!4003 = !DILocation(line: 188, column: 3, scope: !4001)
!4004 = !DILocation(line: 189, column: 38, scope: !3944)
!4005 = !DILocation(line: 189, column: 57, scope: !3944)
!4006 = !DILocation(line: 189, column: 10, scope: !3944)
!4007 = !DILocation(line: 189, column: 8, scope: !3944)
!4008 = !DILocation(line: 190, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 190, column: 6)
!4010 = !DILocation(line: 190, column: 6, scope: !3944)
!4011 = !DILocation(line: 191, column: 3, scope: !4009)
!4012 = !DILocation(line: 192, column: 28, scope: !3944)
!4013 = !DILocation(line: 192, column: 36, scope: !3944)
!4014 = !DILocation(line: 192, column: 52, scope: !3944)
!4015 = !DILocation(line: 192, column: 60, scope: !3944)
!4016 = !DILocation(line: 193, column: 5, scope: !3944)
!4017 = !DILocation(line: 192, column: 10, scope: !3944)
!4018 = !DILocation(line: 192, column: 8, scope: !3944)
!4019 = !DILocation(line: 192, column: 2, scope: !3944)
!4020 = !DILocation(line: 194, column: 1, scope: !3944)
!4021 = !DILocation(line: 195, column: 30, scope: !3944)
!4022 = !DILocation(line: 195, column: 2, scope: !3944)
!4023 = !DILocation(line: 196, column: 1, scope: !3944)
!4024 = !DILocation(line: 197, column: 2, scope: !3944)
!4025 = !DILocation(line: 198, column: 9, scope: !3944)
!4026 = !DILocation(line: 198, column: 2, scope: !3944)
!4027 = !DILocation(line: 199, column: 1, scope: !3944)
!4028 = !DISubprogram(name: "may_linkat", scope: !3448, file: !3448, line: 58, type: !4029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!110, !906, !989}
!4031 = distinct !DISubprogram(name: "security_path_link", scope: !3617, file: !3617, line: 1884, type: !4032, scopeLine: 1887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!110, !831, !989, !831}
!4034 = !{!4035, !4036, !4037}
!4035 = !DILocalVariable(name: "old_dentry", arg: 1, scope: !4031, file: !3617, line: 1884, type: !831)
!4036 = !DILocalVariable(name: "new_dir", arg: 2, scope: !4031, file: !3617, line: 1885, type: !989)
!4037 = !DILocalVariable(name: "new_dentry", arg: 3, scope: !4031, file: !3617, line: 1886, type: !831)
!4038 = !DILocation(line: 1884, column: 53, scope: !4031)
!4039 = !DILocation(line: 1885, column: 29, scope: !4031)
!4040 = !DILocation(line: 1886, column: 25, scope: !4031)
!4041 = !DILocation(line: 1888, column: 2, scope: !4031)
!4042 = !DISubprogram(name: "vfs_link", scope: !44, file: !44, line: 1777, type: !4043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!110, !831, !906, !866, !831, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!4046 = distinct !DISubprogram(name: "init_symlink", scope: !1, file: !1, line: 201, type: !3945, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4047)
!4047 = !{!4048, !4049, !4050, !4051, !4052}
!4048 = !DILocalVariable(name: "oldname", arg: 1, scope: !4046, file: !1, line: 201, type: !710)
!4049 = !DILocalVariable(name: "newname", arg: 2, scope: !4046, file: !1, line: 201, type: !710)
!4050 = !DILocalVariable(name: "dentry", scope: !4046, file: !1, line: 203, type: !831)
!4051 = !DILocalVariable(name: "path", scope: !4046, file: !1, line: 204, type: !823)
!4052 = !DILocalVariable(name: "error", scope: !4046, file: !1, line: 205, type: !110)
!4053 = !DILocation(line: 201, column: 37, scope: !4046)
!4054 = !DILocation(line: 201, column: 58, scope: !4046)
!4055 = !DILocation(line: 203, column: 2, scope: !4046)
!4056 = !DILocation(line: 203, column: 17, scope: !4046)
!4057 = !DILocation(line: 204, column: 2, scope: !4046)
!4058 = !DILocation(line: 204, column: 14, scope: !4046)
!4059 = !DILocation(line: 205, column: 2, scope: !4046)
!4060 = !DILocation(line: 205, column: 6, scope: !4046)
!4061 = !DILocation(line: 207, column: 38, scope: !4046)
!4062 = !DILocation(line: 207, column: 11, scope: !4046)
!4063 = !DILocation(line: 207, column: 9, scope: !4046)
!4064 = !DILocation(line: 208, column: 13, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4046, file: !1, line: 208, column: 6)
!4066 = !DILocation(line: 208, column: 6, scope: !4065)
!4067 = !DILocation(line: 208, column: 6, scope: !4046)
!4068 = !DILocation(line: 209, column: 18, scope: !4065)
!4069 = !DILocation(line: 209, column: 10, scope: !4065)
!4070 = !DILocation(line: 209, column: 3, scope: !4065)
!4071 = !DILocation(line: 210, column: 39, scope: !4046)
!4072 = !DILocation(line: 210, column: 47, scope: !4046)
!4073 = !DILocation(line: 210, column: 10, scope: !4046)
!4074 = !DILocation(line: 210, column: 8, scope: !4046)
!4075 = !DILocation(line: 211, column: 7, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4046, file: !1, line: 211, column: 6)
!4077 = !DILocation(line: 211, column: 6, scope: !4046)
!4078 = !DILocation(line: 212, column: 38, scope: !4076)
!4079 = !DILocation(line: 212, column: 23, scope: !4076)
!4080 = !DILocation(line: 212, column: 49, scope: !4076)
!4081 = !DILocation(line: 212, column: 57, scope: !4076)
!4082 = !DILocation(line: 213, column: 9, scope: !4076)
!4083 = !DILocation(line: 213, column: 17, scope: !4076)
!4084 = !DILocation(line: 212, column: 11, scope: !4076)
!4085 = !DILocation(line: 212, column: 9, scope: !4076)
!4086 = !DILocation(line: 212, column: 3, scope: !4076)
!4087 = !DILocation(line: 214, column: 26, scope: !4046)
!4088 = !DILocation(line: 214, column: 2, scope: !4046)
!4089 = !DILocation(line: 215, column: 9, scope: !4046)
!4090 = !DILocation(line: 215, column: 2, scope: !4046)
!4091 = !DILocation(line: 216, column: 1, scope: !4046)
!4092 = distinct !DISubprogram(name: "security_path_symlink", scope: !3617, file: !3617, line: 1878, type: !4093, scopeLine: 1880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!110, !989, !831, !710}
!4095 = !{!4096, !4097, !4098}
!4096 = !DILocalVariable(name: "dir", arg: 1, scope: !4092, file: !3617, line: 1878, type: !989)
!4097 = !DILocalVariable(name: "dentry", arg: 2, scope: !4092, file: !3617, line: 1878, type: !831)
!4098 = !DILocalVariable(name: "old_name", arg: 3, scope: !4092, file: !3617, line: 1879, type: !710)
!4099 = !DILocation(line: 1878, column: 60, scope: !4092)
!4100 = !DILocation(line: 1878, column: 80, scope: !4092)
!4101 = !DILocation(line: 1879, column: 18, scope: !4092)
!4102 = !DILocation(line: 1881, column: 2, scope: !4092)
!4103 = !DISubprogram(name: "vfs_symlink", scope: !44, file: !44, line: 1775, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4104 = distinct !DISubprogram(name: "init_unlink", scope: !1, file: !1, line: 218, type: !3494, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4105)
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "pathname", arg: 1, scope: !4104, file: !1, line: 218, type: !710)
!4107 = !DILocation(line: 218, column: 36, scope: !4104)
!4108 = !DILocation(line: 220, column: 46, scope: !4104)
!4109 = !DILocation(line: 220, column: 31, scope: !4104)
!4110 = !DILocation(line: 220, column: 9, scope: !4104)
!4111 = !DILocation(line: 220, column: 2, scope: !4104)
!4112 = !DISubprogram(name: "do_unlinkat", scope: !3448, file: !3448, line: 57, type: !4113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!110, !110, !4115}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !44, line: 2470, size: 256, elements: !4117)
!4117 = !{!4118, !4119, !4120, !4121, !4124}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4116, file: !44, line: 2471, baseType: !710, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !4116, file: !44, line: 2472, baseType: !710, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4116, file: !44, line: 2473, baseType: !105, size: 32, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !4116, file: !44, line: 2474, baseType: !4122, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !44, line: 2469, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !4116, file: !44, line: 2475, baseType: !4125, offset: 256)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, elements: !584)
!4126 = !DISubprogram(name: "getname_kernel", scope: !44, file: !44, line: 2548, type: !4127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!4115, !710}
!4129 = distinct !DISubprogram(name: "init_mkdir", scope: !1, file: !1, line: 223, type: !3686, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4130)
!4130 = !{!4131, !4132, !4133, !4134, !4135}
!4131 = !DILocalVariable(name: "pathname", arg: 1, scope: !4129, file: !1, line: 223, type: !710)
!4132 = !DILocalVariable(name: "mode", arg: 2, scope: !4129, file: !1, line: 223, type: !870)
!4133 = !DILocalVariable(name: "dentry", scope: !4129, file: !1, line: 225, type: !831)
!4134 = !DILocalVariable(name: "path", scope: !4129, file: !1, line: 226, type: !823)
!4135 = !DILocalVariable(name: "error", scope: !4129, file: !1, line: 227, type: !110)
!4136 = !DILocation(line: 223, column: 35, scope: !4129)
!4137 = !DILocation(line: 223, column: 53, scope: !4129)
!4138 = !DILocation(line: 225, column: 2, scope: !4129)
!4139 = !DILocation(line: 225, column: 17, scope: !4129)
!4140 = !DILocation(line: 226, column: 2, scope: !4129)
!4141 = !DILocation(line: 226, column: 14, scope: !4129)
!4142 = !DILocation(line: 227, column: 2, scope: !4129)
!4143 = !DILocation(line: 227, column: 6, scope: !4129)
!4144 = !DILocation(line: 229, column: 38, scope: !4129)
!4145 = !DILocation(line: 229, column: 11, scope: !4129)
!4146 = !DILocation(line: 229, column: 9, scope: !4129)
!4147 = !DILocation(line: 230, column: 13, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4129, file: !1, line: 230, column: 6)
!4149 = !DILocation(line: 230, column: 6, scope: !4148)
!4150 = !DILocation(line: 230, column: 6, scope: !4129)
!4151 = !DILocation(line: 231, column: 18, scope: !4148)
!4152 = !DILocation(line: 231, column: 10, scope: !4148)
!4153 = !DILocation(line: 231, column: 3, scope: !4148)
!4154 = !DILocation(line: 232, column: 7, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4129, file: !1, line: 232, column: 6)
!4156 = !DILocation(line: 232, column: 6, scope: !4129)
!4157 = !DILocation(line: 233, column: 12, scope: !4155)
!4158 = !DILocation(line: 233, column: 11, scope: !4155)
!4159 = !DILocation(line: 233, column: 8, scope: !4155)
!4160 = !DILocation(line: 233, column: 3, scope: !4155)
!4161 = !DILocation(line: 234, column: 37, scope: !4129)
!4162 = !DILocation(line: 234, column: 45, scope: !4129)
!4163 = !DILocation(line: 234, column: 10, scope: !4129)
!4164 = !DILocation(line: 234, column: 8, scope: !4129)
!4165 = !DILocation(line: 235, column: 7, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4129, file: !1, line: 235, column: 6)
!4167 = !DILocation(line: 235, column: 6, scope: !4129)
!4168 = !DILocation(line: 236, column: 36, scope: !4166)
!4169 = !DILocation(line: 236, column: 21, scope: !4166)
!4170 = !DILocation(line: 236, column: 47, scope: !4166)
!4171 = !DILocation(line: 236, column: 55, scope: !4166)
!4172 = !DILocation(line: 237, column: 7, scope: !4166)
!4173 = !DILocation(line: 237, column: 15, scope: !4166)
!4174 = !DILocation(line: 236, column: 11, scope: !4166)
!4175 = !DILocation(line: 236, column: 9, scope: !4166)
!4176 = !DILocation(line: 236, column: 3, scope: !4166)
!4177 = !DILocation(line: 238, column: 26, scope: !4129)
!4178 = !DILocation(line: 238, column: 2, scope: !4129)
!4179 = !DILocation(line: 239, column: 9, scope: !4129)
!4180 = !DILocation(line: 239, column: 2, scope: !4129)
!4181 = !DILocation(line: 240, column: 1, scope: !4129)
!4182 = distinct !DISubprogram(name: "security_path_mkdir", scope: !3617, file: !3617, line: 1856, type: !4183, scopeLine: 1858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!110, !989, !831, !870}
!4185 = !{!4186, !4187, !4188}
!4186 = !DILocalVariable(name: "dir", arg: 1, scope: !4182, file: !3617, line: 1856, type: !989)
!4187 = !DILocalVariable(name: "dentry", arg: 2, scope: !4182, file: !3617, line: 1856, type: !831)
!4188 = !DILocalVariable(name: "mode", arg: 3, scope: !4182, file: !3617, line: 1857, type: !870)
!4189 = !DILocation(line: 1856, column: 58, scope: !4182)
!4190 = !DILocation(line: 1856, column: 78, scope: !4182)
!4191 = !DILocation(line: 1857, column: 19, scope: !4182)
!4192 = !DILocation(line: 1859, column: 2, scope: !4182)
!4193 = !DISubprogram(name: "vfs_mkdir", scope: !44, file: !44, line: 1771, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4194 = distinct !DISubprogram(name: "init_rmdir", scope: !1, file: !1, line: 242, type: !3494, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4195)
!4195 = !{!4196}
!4196 = !DILocalVariable(name: "pathname", arg: 1, scope: !4194, file: !1, line: 242, type: !710)
!4197 = !DILocation(line: 242, column: 35, scope: !4194)
!4198 = !DILocation(line: 244, column: 43, scope: !4194)
!4199 = !DILocation(line: 244, column: 28, scope: !4194)
!4200 = !DILocation(line: 244, column: 9, scope: !4194)
!4201 = !DILocation(line: 244, column: 2, scope: !4194)
!4202 = !DISubprogram(name: "do_rmdir", scope: !3448, file: !3448, line: 56, type: !4113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4203 = distinct !DISubprogram(name: "init_utimes", scope: !1, file: !1, line: 247, type: !4204, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4207)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!110, !720, !4206}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!4207 = !{!4208, !4209, !4210, !4211}
!4208 = !DILocalVariable(name: "filename", arg: 1, scope: !4203, file: !1, line: 247, type: !720)
!4209 = !DILocalVariable(name: "ts", arg: 2, scope: !4203, file: !1, line: 247, type: !4206)
!4210 = !DILocalVariable(name: "path", scope: !4203, file: !1, line: 249, type: !823)
!4211 = !DILocalVariable(name: "error", scope: !4203, file: !1, line: 250, type: !110)
!4212 = !DILocation(line: 247, column: 30, scope: !4203)
!4213 = !DILocation(line: 247, column: 59, scope: !4203)
!4214 = !DILocation(line: 249, column: 2, scope: !4203)
!4215 = !DILocation(line: 249, column: 14, scope: !4203)
!4216 = !DILocation(line: 250, column: 2, scope: !4203)
!4217 = !DILocation(line: 250, column: 6, scope: !4203)
!4218 = !DILocation(line: 252, column: 20, scope: !4203)
!4219 = !DILocation(line: 252, column: 10, scope: !4203)
!4220 = !DILocation(line: 252, column: 8, scope: !4203)
!4221 = !DILocation(line: 253, column: 6, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4203, file: !1, line: 253, column: 6)
!4223 = !DILocation(line: 253, column: 6, scope: !4203)
!4224 = !DILocation(line: 254, column: 10, scope: !4222)
!4225 = !DILocation(line: 254, column: 3, scope: !4222)
!4226 = !DILocation(line: 255, column: 28, scope: !4203)
!4227 = !DILocation(line: 255, column: 10, scope: !4203)
!4228 = !DILocation(line: 255, column: 8, scope: !4203)
!4229 = !DILocation(line: 256, column: 2, scope: !4203)
!4230 = !DILocation(line: 257, column: 9, scope: !4203)
!4231 = !DILocation(line: 257, column: 2, scope: !4203)
!4232 = !DILocation(line: 258, column: 1, scope: !4203)
!4233 = !DISubprogram(name: "vfs_utimes", scope: !44, file: !44, line: 1827, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!110, !989, !4206}
!4236 = distinct !DISubprogram(name: "init_dup", scope: !1, file: !1, line: 260, type: !4237, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!110, !478}
!4239 = !{!4240, !4241}
!4240 = !DILocalVariable(name: "file", arg: 1, scope: !4236, file: !1, line: 260, type: !478)
!4241 = !DILocalVariable(name: "fd", scope: !4236, file: !1, line: 262, type: !110)
!4242 = !DILocation(line: 260, column: 34, scope: !4236)
!4243 = !DILocation(line: 262, column: 2, scope: !4236)
!4244 = !DILocation(line: 262, column: 6, scope: !4236)
!4245 = !DILocation(line: 264, column: 7, scope: !4236)
!4246 = !DILocation(line: 264, column: 5, scope: !4236)
!4247 = !DILocation(line: 265, column: 6, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4236, file: !1, line: 265, column: 6)
!4249 = !DILocation(line: 265, column: 9, scope: !4248)
!4250 = !DILocation(line: 265, column: 6, scope: !4236)
!4251 = !DILocation(line: 266, column: 10, scope: !4248)
!4252 = !DILocation(line: 266, column: 3, scope: !4248)
!4253 = !DILocation(line: 267, column: 13, scope: !4236)
!4254 = !DILocation(line: 267, column: 26, scope: !4236)
!4255 = !DILocation(line: 267, column: 17, scope: !4236)
!4256 = !DILocation(line: 267, column: 2, scope: !4236)
!4257 = !DILocation(line: 268, column: 2, scope: !4236)
!4258 = !DILocation(line: 269, column: 1, scope: !4236)
!4259 = !DISubprogram(name: "get_unused_fd_flags", scope: !4260, file: !4260, line: 91, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4260 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!110, !5}
!4263 = !DISubprogram(name: "fd_install", scope: !4260, file: !4260, line: 97, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !5, !478}
!4266 = distinct !DISubprogram(name: "get_file", scope: !44, file: !44, line: 1042, type: !4267, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!478, !478}
!4269 = !{!4270}
!4270 = !DILocalVariable(name: "f", arg: 1, scope: !4266, file: !44, line: 1042, type: !478)
!4271 = !DILocation(line: 1042, column: 50, scope: !4266)
!4272 = !DILocation(line: 1044, column: 19, scope: !4266)
!4273 = !DILocation(line: 1044, column: 22, scope: !4266)
!4274 = !DILocation(line: 1044, column: 2, scope: !4266)
!4275 = !DILocation(line: 1045, column: 9, scope: !4266)
!4276 = !DILocation(line: 1045, column: 2, scope: !4266)
!4277 = !DISubprogram(name: "inode_permission", scope: !44, file: !44, line: 2675, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4278 = distinct !DISubprogram(name: "d_inode", scope: !833, file: !833, line: 514, type: !4279, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!866, !1530}
!4281 = !{!4282}
!4282 = !DILocalVariable(name: "dentry", arg: 1, scope: !4278, file: !833, line: 514, type: !1530)
!4283 = !DILocation(line: 514, column: 58, scope: !4278)
!4284 = !DILocation(line: 516, column: 9, scope: !4278)
!4285 = !DILocation(line: 516, column: 17, scope: !4278)
!4286 = !DILocation(line: 516, column: 2, scope: !4278)
!4287 = distinct !DISubprogram(name: "atomic_long_inc", scope: !4288, file: !4288, line: 3561, type: !4289, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4291)
!4288 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !1589}
!4291 = !{!4292}
!4292 = !DILocalVariable(name: "v", arg: 1, scope: !4287, file: !4288, line: 3561, type: !1589)
!4293 = !DILocation(line: 3561, column: 32, scope: !4287)
!4294 = !DILocation(line: 3563, column: 31, scope: !4287)
!4295 = !DILocation(line: 3563, column: 2, scope: !4287)
!4296 = !DILocation(line: 3564, column: 22, scope: !4287)
!4297 = !DILocation(line: 3564, column: 2, scope: !4287)
!4298 = !DILocation(line: 3565, column: 1, scope: !4287)
!4299 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4300, file: !4300, line: 94, type: !4301, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4306)
!4300 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !4303, !1023}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4306 = !{!4307, !4308}
!4307 = !DILocalVariable(name: "v", arg: 1, scope: !4299, file: !4300, line: 94, type: !4303)
!4308 = !DILocalVariable(name: "size", arg: 2, scope: !4299, file: !4300, line: 94, type: !1023)
!4309 = !DILocation(line: 94, column: 79, scope: !4299)
!4310 = !DILocation(line: 94, column: 89, scope: !4299)
!4311 = !DILocation(line: 96, column: 20, scope: !4299)
!4312 = !DILocation(line: 96, column: 23, scope: !4299)
!4313 = !DILocation(line: 96, column: 2, scope: !4299)
!4314 = !DILocation(line: 97, column: 2, scope: !4299)
!4315 = !DILocation(line: 98, column: 1, scope: !4299)
!4316 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !500, file: !500, line: 495, type: !4289, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4317)
!4317 = !{!4318}
!4318 = !DILocalVariable(name: "v", arg: 1, scope: !4316, file: !500, line: 495, type: !1589)
!4319 = !DILocation(line: 495, column: 36, scope: !4316)
!4320 = !DILocation(line: 498, column: 19, scope: !4316)
!4321 = !DILocation(line: 498, column: 2, scope: !4316)
!4322 = !DILocation(line: 502, column: 1, scope: !4316)
!4323 = distinct !DISubprogram(name: "kasan_check_write", scope: !4324, file: !4324, line: 44, type: !4325, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4327)
!4324 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!707, !4303, !5}
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "p", arg: 1, scope: !4323, file: !4324, line: 44, type: !4303)
!4329 = !DILocalVariable(name: "size", arg: 2, scope: !4323, file: !4324, line: 44, type: !5)
!4330 = !DILocation(line: 44, column: 59, scope: !4323)
!4331 = !DILocation(line: 44, column: 75, scope: !4323)
!4332 = !DILocation(line: 46, column: 2, scope: !4323)
!4333 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4334, file: !4334, line: 229, type: !4335, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4337)
!4334 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4335 = !DISubroutineType(types: !4336)
!4336 = !{null, !4303, !1023, !110}
!4337 = !{!4338, !4339, !4340}
!4338 = !DILocalVariable(name: "ptr", arg: 1, scope: !4333, file: !4334, line: 229, type: !4303)
!4339 = !DILocalVariable(name: "size", arg: 2, scope: !4333, file: !4334, line: 229, type: !1023)
!4340 = !DILocalVariable(name: "type", arg: 3, scope: !4333, file: !4334, line: 230, type: !110)
!4341 = !DILocation(line: 229, column: 60, scope: !4333)
!4342 = !DILocation(line: 229, column: 72, scope: !4333)
!4343 = !DILocation(line: 230, column: 15, scope: !4333)
!4344 = !DILocation(line: 230, column: 23, scope: !4333)
!4345 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !4346, file: !4346, line: 3088, type: !4347, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4350)
!4346 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !4349}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "v", arg: 1, scope: !4345, file: !4346, line: 3088, type: !4349)
!4352 = !DILocation(line: 3088, column: 30, scope: !4345)
!4353 = !DILocation(line: 3091, column: 20, scope: !4345)
!4354 = !DILocation(line: 3091, column: 2, scope: !4345)
!4355 = !DILocation(line: 3095, column: 1, scope: !4345)
!4356 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !4357, file: !4357, line: 43, type: !4347, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4358)
!4357 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4358 = !{!4359}
!4359 = !DILocalVariable(name: "v", arg: 1, scope: !4356, file: !4357, line: 43, type: !4349)
!4360 = !DILocation(line: 43, column: 59, scope: !4356)
!4361 = !DILocation(line: 46, column: 16, scope: !4356)
!4362 = !DILocation(line: 46, column: 19, scope: !4356)
!4363 = !DILocation(line: 47, column: 15, scope: !4356)
!4364 = !DILocation(line: 47, column: 18, scope: !4356)
!4365 = !DILocation(line: 45, column: 2, scope: !4356)
!4366 = !{i64 2149023159, i64 2149023198, i64 2149023219, i64 2149023256, i64 2149023279, i64 2149023149}
!4367 = !DILocation(line: 48, column: 1, scope: !4356)
