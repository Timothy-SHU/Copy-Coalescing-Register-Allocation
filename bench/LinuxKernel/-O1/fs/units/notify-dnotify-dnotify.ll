; ModuleID = 'fs/notify/dnotify/dnotify.c'
source_filename = "fs/notify/dnotify/dnotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_dnotify__298_412_dnotify_init\22, \22a\22\09\09"
module asm "__initcall__kmod_dnotify__298_412_dnotify_init6:\09\09\09"
module asm ".long\09__initstub__kmod_dnotify__298_412_dnotify_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.16 = type { ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dnotify_mark = type { %struct.fsnotify_mark, ptr }
%struct.dnotify_struct = type { ptr, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.20 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.20 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x ptr], [32 x i8] }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }

@dnotify_group = internal global ptr null, section ".data..read_mostly", align 8, !dbg !0
@dnotify_struct_cache = internal global ptr null, section ".data..read_mostly", align 8, !dbg !4374
@dir_notify_enable = internal global i32 1, section ".data..read_mostly", align 4, !dbg !4386
@dnotify_mark_cache = internal global ptr null, section ".data..read_mostly", align 8, !dbg !4379
@__UNIQUE_ID___addressable___initstub__kmod_dnotify__298_412_dnotify_init6299 = internal global ptr @__initstub__kmod_dnotify__298_412_dnotify_init6, section ".discard.addressable", align 8, !dbg !4372
@.str = private unnamed_addr constant [28 x i8] c"fs/notify/dnotify/dnotify.c\00", align 1, !dbg !4381
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [15 x i8] c"dnotify_struct\00", align 1, !dbg !4388
@.str.2 = private unnamed_addr constant [13 x i8] c"dnotify_mark\00", align 1, !dbg !4393
@dnotify_fsnotify_ops = internal constant %struct.fsnotify_ops { ptr null, ptr @dnotify_handle_event, ptr null, ptr null, ptr null, ptr @dnotify_free_mark }, align 8, !dbg !4403
@.str.3 = private unnamed_addr constant [47 x i8] c"unable to allocate fsnotify group for dnotify\0A\00", align 1, !dbg !4398
@.str.4 = private unnamed_addr constant [3 x i8] c"fs\00", align 1, !dbg !4405
@dnotify_sysctls = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.6, ptr @dir_notify_enable, i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !4415
@.str.5 = private unnamed_addr constant [16 x i8] c"dnotify_sysctls\00", align 1, !dbg !4408
@.str.6 = private unnamed_addr constant [18 x i8] c"dir-notify-enable\00", align 1, !dbg !4410
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_dnotify__298_412_dnotify_init6299], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dnotify_flush(ptr noundef %filp, ptr noundef %id) #0 align 16 !dbg !4427 {
entry:
  %filp.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %fsn_mark = alloca ptr, align 8
  %dn_mark = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %free = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4431, metadata !DIExpression()), !dbg !4442
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4432, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsn_mark) #9, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %fsn_mark, metadata !4433, metadata !DIExpression()), !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn_mark) #9, !dbg !4446
  call void @llvm.dbg.declare(metadata ptr %dn_mark, metadata !4434, metadata !DIExpression()), !dbg !4447
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #9, !dbg !4448
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !4435, metadata !DIExpression()), !dbg !4449
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #9, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !4436, metadata !DIExpression()), !dbg !4451
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4438, metadata !DIExpression()), !dbg !4453
  call void @llvm.lifetime.start.p0(i64 1, ptr %free) #9, !dbg !4454
  call void @llvm.dbg.declare(metadata ptr %free, metadata !4439, metadata !DIExpression()), !dbg !4455
  store i8 0, ptr %free, align 1, !dbg !4455
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !4456
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !4457
  store ptr %call, ptr %inode, align 8, !dbg !4458
  %1 = load ptr, ptr %inode, align 8, !dbg !4459
  %i_mode = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 0, !dbg !4459
  %2 = load i16, ptr %i_mode, align 8, !dbg !4459
  %conv = zext i16 %2 to i32, !dbg !4459
  %and = and i32 %conv, 61440, !dbg !4459
  %cmp = icmp eq i32 %and, 16384, !dbg !4459
  br i1 %cmp, label %if.end, label %if.then, !dbg !4461

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4462

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %inode, align 8, !dbg !4463
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 46, !dbg !4464
  %4 = load ptr, ptr @dnotify_group, align 8, !dbg !4465
  %call2 = call ptr @fsnotify_find_mark(ptr noundef %i_fsnotify_marks, ptr noundef %4) #10, !dbg !4466
  store ptr %call2, ptr %fsn_mark, align 8, !dbg !4467
  %5 = load ptr, ptr %fsn_mark, align 8, !dbg !4468
  %tobool = icmp ne ptr %5, null, !dbg !4468
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4470

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4471

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4440, metadata !DIExpression()), !dbg !4472
  %6 = load ptr, ptr %fsn_mark, align 8, !dbg !4472
  store ptr %6, ptr %__mptr, align 8, !dbg !4472
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4472
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !4472
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !4473
  %8 = load ptr, ptr %tmp, align 8, !dbg !4472
  store ptr %8, ptr %dn_mark, align 8, !dbg !4474
  %9 = load ptr, ptr @dnotify_group, align 8, !dbg !4475
  call void @fsnotify_group_lock(ptr noundef %9) #10, !dbg !4476
  %10 = load ptr, ptr %fsn_mark, align 8, !dbg !4477
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %10, i32 0, i32 4, !dbg !4478
  call void @spin_lock(ptr noundef %lock) #10, !dbg !4479
  %11 = load ptr, ptr %dn_mark, align 8, !dbg !4480
  %dn5 = getelementptr inbounds %struct.dnotify_mark, ptr %11, i32 0, i32 1, !dbg !4481
  store ptr %dn5, ptr %prev, align 8, !dbg !4482
  br label %while.cond, !dbg !4483

while.cond:                                       ; preds = %if.end13, %if.end4
  %12 = load ptr, ptr %prev, align 8, !dbg !4484
  %13 = load ptr, ptr %12, align 8, !dbg !4485
  store ptr %13, ptr %dn, align 8, !dbg !4486
  %cmp6 = icmp ne ptr %13, null, !dbg !4487
  br i1 %cmp6, label %while.body, label %while.end, !dbg !4483

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %dn, align 8, !dbg !4488
  %dn_owner = getelementptr inbounds %struct.dnotify_struct, ptr %14, i32 0, i32 4, !dbg !4491
  %15 = load ptr, ptr %dn_owner, align 8, !dbg !4491
  %16 = load ptr, ptr %id.addr, align 8, !dbg !4492
  %cmp8 = icmp eq ptr %15, %16, !dbg !4493
  br i1 %cmp8, label %land.lhs.true, label %if.end13, !dbg !4494

land.lhs.true:                                    ; preds = %while.body
  %17 = load ptr, ptr %dn, align 8, !dbg !4495
  %dn_filp = getelementptr inbounds %struct.dnotify_struct, ptr %17, i32 0, i32 3, !dbg !4496
  %18 = load ptr, ptr %dn_filp, align 8, !dbg !4496
  %19 = load ptr, ptr %filp.addr, align 8, !dbg !4497
  %cmp10 = icmp eq ptr %18, %19, !dbg !4498
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4499

if.then12:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %dn, align 8, !dbg !4500
  %dn_next = getelementptr inbounds %struct.dnotify_struct, ptr %20, i32 0, i32 0, !dbg !4502
  %21 = load ptr, ptr %dn_next, align 8, !dbg !4502
  %22 = load ptr, ptr %prev, align 8, !dbg !4503
  store ptr %21, ptr %22, align 8, !dbg !4504
  %23 = load ptr, ptr @dnotify_struct_cache, align 8, !dbg !4505
  %24 = load ptr, ptr %dn, align 8, !dbg !4506
  call void @kmem_cache_free(ptr noundef %23, ptr noundef %24) #10, !dbg !4507
  %25 = load ptr, ptr %fsn_mark, align 8, !dbg !4508
  call void @dnotify_recalc_inode_mask(ptr noundef %25) #10, !dbg !4509
  br label %while.end, !dbg !4510

if.end13:                                         ; preds = %land.lhs.true, %while.body
  %26 = load ptr, ptr %dn, align 8, !dbg !4511
  %dn_next14 = getelementptr inbounds %struct.dnotify_struct, ptr %26, i32 0, i32 0, !dbg !4512
  store ptr %dn_next14, ptr %prev, align 8, !dbg !4513
  br label %while.cond, !dbg !4483, !llvm.loop !4514

while.end:                                        ; preds = %if.then12, %while.cond
  %27 = load ptr, ptr %fsn_mark, align 8, !dbg !4518
  %lock15 = getelementptr inbounds %struct.fsnotify_mark, ptr %27, i32 0, i32 4, !dbg !4519
  call void @spin_unlock(ptr noundef %lock15) #10, !dbg !4520
  %28 = load ptr, ptr %dn_mark, align 8, !dbg !4521
  %dn16 = getelementptr inbounds %struct.dnotify_mark, ptr %28, i32 0, i32 1, !dbg !4523
  %29 = load ptr, ptr %dn16, align 8, !dbg !4523
  %cmp17 = icmp eq ptr %29, null, !dbg !4524
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4525

if.then19:                                        ; preds = %while.end
  %30 = load ptr, ptr %fsn_mark, align 8, !dbg !4526
  call void @fsnotify_detach_mark(ptr noundef %30) #10, !dbg !4528
  store i8 1, ptr %free, align 1, !dbg !4529
  br label %if.end20, !dbg !4530

if.end20:                                         ; preds = %if.then19, %while.end
  %31 = load ptr, ptr @dnotify_group, align 8, !dbg !4531
  call void @fsnotify_group_unlock(ptr noundef %31) #10, !dbg !4532
  %32 = load i8, ptr %free, align 1, !dbg !4533, !range !4535, !noundef !762
  %tobool21 = trunc i8 %32 to i1, !dbg !4533
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4536

if.then22:                                        ; preds = %if.end20
  %33 = load ptr, ptr %fsn_mark, align 8, !dbg !4537
  call void @fsnotify_free_mark(ptr noundef %33) #10, !dbg !4538
  br label %if.end23, !dbg !4538

if.end23:                                         ; preds = %if.then22, %if.end20
  %34 = load ptr, ptr %fsn_mark, align 8, !dbg !4539
  call void @fsnotify_put_mark(ptr noundef %34) #10, !dbg !4540
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4541
  br label %cleanup, !dbg !4541

cleanup:                                          ; preds = %if.end23, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %free) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn_mark) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsn_mark) #9, !dbg !4541
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4541

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !4542 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4550
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !4551
  %1 = load ptr, ptr %f_inode, align 8, !dbg !4551
  ret ptr %1, !dbg !4552
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4553 dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_group_lock(ptr noundef %group) #3 align 16 !dbg !4556 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4558, metadata !DIExpression()), !dbg !4559
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4560
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 11, !dbg !4561
  call void @mutex_lock(ptr noundef %mark_mutex) #10, !dbg !4562
  %1 = load ptr, ptr %group.addr, align 8, !dbg !4563
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 9, !dbg !4565
  %2 = load i32, ptr %flags, align 8, !dbg !4565
  %and = and i32 %2, 4, !dbg !4566
  %tobool = icmp ne i32 %and, 0, !dbg !4566
  br i1 %tobool, label %if.then, label %if.end, !dbg !4567

if.then:                                          ; preds = %entry
  %call = call i32 @memalloc_nofs_save() #10, !dbg !4568
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4569
  %owner_flags = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 10, !dbg !4570
  store i32 %call, ptr %owner_flags, align 4, !dbg !4571
  br label %if.end, !dbg !4569

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4572
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !4573 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4578, metadata !DIExpression()), !dbg !4579
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4580
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4580
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !4580
  ret void, !dbg !4581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4582 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dnotify_recalc_inode_mask(ptr noundef %fsn_mark) #0 align 16 !dbg !4586 {
entry:
  %fsn_mark.addr = alloca ptr, align 8
  %new_mask = alloca i32, align 4
  %dn = alloca ptr, align 8
  %dn_mark = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fsn_mark, ptr %fsn_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsn_mark.addr, metadata !4588, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #9, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !4589, metadata !DIExpression()), !dbg !4596
  store i32 0, ptr %new_mask, align 4, !dbg !4596
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #9, !dbg !4597
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !4590, metadata !DIExpression()), !dbg !4598
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn_mark) #9, !dbg !4599
  call void @llvm.dbg.declare(metadata ptr %dn_mark, metadata !4591, metadata !DIExpression()), !dbg !4600
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !4601
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4592, metadata !DIExpression()), !dbg !4601
  %0 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !4601
  store ptr %0, ptr %__mptr, align 8, !dbg !4601
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4601
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4601
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !4602
  %2 = load ptr, ptr %tmp, align 8, !dbg !4601
  store ptr %2, ptr %dn_mark, align 8, !dbg !4600
  br label %do.body, !dbg !4603

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !4604
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %3, i32 0, i32 4, !dbg !4604
  %4 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !4604
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 0, !dbg !4604
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #10, !dbg !4604
  %tobool = icmp ne i32 %call, 0, !dbg !4604
  %lnot = xor i1 %tobool, true, !dbg !4604
  %lnot1 = xor i1 %lnot, true, !dbg !4604
  %lnot2 = xor i1 %lnot1, true, !dbg !4604
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4604
  %conv = sext i32 %lnot.ext to i64, !dbg !4604
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4604
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4604
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4607

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4604

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4608

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !4610

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4610

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4608

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 72, i32 0, i64 12) #9, !dbg !4612, !srcloc !4614
  br label %do.cond7, !dbg !4612

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4612

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !4608

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !4608

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !4608

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !4607

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !4607

do.end12:                                         ; preds = %do.cond11
  %5 = load ptr, ptr %dn_mark, align 8, !dbg !4615
  %dn13 = getelementptr inbounds %struct.dnotify_mark, ptr %5, i32 0, i32 1, !dbg !4617
  %6 = load ptr, ptr %dn13, align 8, !dbg !4617
  store ptr %6, ptr %dn, align 8, !dbg !4618
  br label %for.cond, !dbg !4619

for.cond:                                         ; preds = %for.inc, %do.end12
  %7 = load ptr, ptr %dn, align 8, !dbg !4620
  %cmp = icmp ne ptr %7, null, !dbg !4622
  br i1 %cmp, label %for.body, label %for.end, !dbg !4623

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dn, align 8, !dbg !4624
  %dn_mask = getelementptr inbounds %struct.dnotify_struct, ptr %8, i32 0, i32 1, !dbg !4625
  %9 = load i32, ptr %dn_mask, align 8, !dbg !4625
  %and = and i32 %9, -536870913, !dbg !4626
  %10 = load i32, ptr %new_mask, align 4, !dbg !4627
  %or = or i32 %10, %and, !dbg !4627
  store i32 %or, ptr %new_mask, align 4, !dbg !4627
  br label %for.inc, !dbg !4628

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %dn, align 8, !dbg !4629
  %dn_next = getelementptr inbounds %struct.dnotify_struct, ptr %11, i32 0, i32 0, !dbg !4630
  %12 = load ptr, ptr %dn_next, align 8, !dbg !4630
  store ptr %12, ptr %dn, align 8, !dbg !4631
  br label %for.cond, !dbg !4632, !llvm.loop !4633

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !4635
  %mask = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 0, !dbg !4637
  %14 = load i32, ptr %mask, align 8, !dbg !4637
  %15 = load i32, ptr %new_mask, align 4, !dbg !4638
  %cmp15 = icmp eq i32 %14, %15, !dbg !4639
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4640

if.then17:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4641

if.end18:                                         ; preds = %for.end
  %16 = load i32, ptr %new_mask, align 4, !dbg !4642
  %17 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !4643
  %mask19 = getelementptr inbounds %struct.fsnotify_mark, ptr %17, i32 0, i32 0, !dbg !4644
  store i32 %16, ptr %mask19, align 8, !dbg !4645
  %18 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !4646
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %18, i32 0, i32 6, !dbg !4647
  %19 = load ptr, ptr %connector, align 8, !dbg !4647
  call void @fsnotify_recalc_mask(ptr noundef %19) #10, !dbg !4648
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4649
  br label %cleanup, !dbg !4649

cleanup:                                          ; preds = %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn_mark) #9, !dbg !4649
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #9, !dbg !4649
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #9, !dbg !4649
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4649

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !4650 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4654
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4654
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !4654
  ret void, !dbg !4655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4656 dso_local void @fsnotify_detach_mark(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_group_unlock(ptr noundef %group) #3 align 16 !dbg !4657 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4661
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 9, !dbg !4663
  %1 = load i32, ptr %flags, align 8, !dbg !4663
  %and = and i32 %1, 4, !dbg !4664
  %tobool = icmp ne i32 %and, 0, !dbg !4664
  br i1 %tobool, label %if.then, label %if.end, !dbg !4665

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %group.addr, align 8, !dbg !4666
  %owner_flags = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 10, !dbg !4667
  %3 = load i32, ptr %owner_flags, align 4, !dbg !4667
  call void @memalloc_nofs_restore(i32 noundef %3) #10, !dbg !4668
  br label %if.end, !dbg !4668

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %group.addr, align 8, !dbg !4669
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 11, !dbg !4670
  call void @mutex_unlock(ptr noundef %mark_mutex) #10, !dbg !4671
  ret void, !dbg !4672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4673 dso_local void @fsnotify_free_mark(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4674 dso_local void @fsnotify_put_mark(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fcntl_dirnotify(i32 noundef %fd, ptr noundef %filp, i32 noundef %arg) #0 align 16 !dbg !4675 {
entry:
  %fd.addr = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %arg.addr = alloca i32, align 4
  %new_dn_mark = alloca ptr, align 8
  %dn_mark = alloca ptr, align 8
  %new_fsn_mark = alloca ptr, align 8
  %fsn_mark = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %id = alloca ptr, align 8
  %f = alloca ptr, align 8
  %destroy = alloca i32, align 4
  %error = alloca i32, align 4
  %mask = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !4679, metadata !DIExpression()), !dbg !4700
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4680, metadata !DIExpression()), !dbg !4701
  store i32 %arg, ptr %arg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4681, metadata !DIExpression()), !dbg !4702
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_dn_mark) #9, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %new_dn_mark, metadata !4682, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn_mark) #9, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %dn_mark, metadata !4683, metadata !DIExpression()), !dbg !4705
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_fsn_mark) #9, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %new_fsn_mark, metadata !4684, metadata !DIExpression()), !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsn_mark) #9, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %fsn_mark, metadata !4685, metadata !DIExpression()), !dbg !4708
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #9, !dbg !4709
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !4686, metadata !DIExpression()), !dbg !4710
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4687, metadata !DIExpression()), !dbg !4712
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #9, !dbg !4713
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4688, metadata !DIExpression()), !dbg !4714
  %call = call ptr @get_current() #10, !dbg !4715
  %files = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 101, !dbg !4716
  %0 = load ptr, ptr %files, align 8, !dbg !4716
  store ptr %0, ptr %id, align 8, !dbg !4714
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #9, !dbg !4717
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4689, metadata !DIExpression()), !dbg !4718
  call void @llvm.lifetime.start.p0(i64 4, ptr %destroy) #9, !dbg !4719
  call void @llvm.dbg.declare(metadata ptr %destroy, metadata !4690, metadata !DIExpression()), !dbg !4720
  store i32 0, ptr %destroy, align 4, !dbg !4720
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #9, !dbg !4719
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4691, metadata !DIExpression()), !dbg !4721
  store i32 0, ptr %error, align 4, !dbg !4721
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !4722
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4692, metadata !DIExpression()), !dbg !4723
  store ptr null, ptr %new_fsn_mark, align 8, !dbg !4724
  store ptr null, ptr %dn, align 8, !dbg !4725
  %1 = load i32, ptr @dir_notify_enable, align 4, !dbg !4726
  %tobool = icmp ne i32 %1, 0, !dbg !4726
  br i1 %tobool, label %if.end, label %if.then, !dbg !4728

if.then:                                          ; preds = %entry
  store i32 -22, ptr %error, align 4, !dbg !4729
  br label %out_err, !dbg !4731

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %arg.addr, align 4, !dbg !4732
  %and = and i32 %2, 2147483647, !dbg !4734
  %cmp = icmp eq i32 %and, 0, !dbg !4735
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4736

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !4737
  %4 = load ptr, ptr %id, align 8, !dbg !4739
  call void @dnotify_flush(ptr noundef %3, ptr noundef %4) #10, !dbg !4740
  store i32 0, ptr %error, align 4, !dbg !4741
  br label %out_err, !dbg !4742

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %filp.addr, align 8, !dbg !4743
  %call3 = call ptr @file_inode(ptr noundef %5) #10, !dbg !4744
  store ptr %call3, ptr %inode, align 8, !dbg !4745
  %6 = load ptr, ptr %inode, align 8, !dbg !4746
  %i_mode = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 0, !dbg !4746
  %7 = load i16, ptr %i_mode, align 8, !dbg !4746
  %conv = zext i16 %7 to i32, !dbg !4746
  %and4 = and i32 %conv, 61440, !dbg !4746
  %cmp5 = icmp eq i32 %and4, 16384, !dbg !4746
  br i1 %cmp5, label %if.end8, label %if.then7, !dbg !4748

if.then7:                                         ; preds = %if.end2
  store i32 -20, ptr %error, align 4, !dbg !4749
  br label %out_err, !dbg !4751

if.end8:                                          ; preds = %if.end2
  %8 = load i32, ptr %arg.addr, align 4, !dbg !4752
  %call9 = call i32 @convert_arg(i32 noundef %8) #10, !dbg !4753
  store i32 %call9, ptr %mask, align 4, !dbg !4754
  %9 = load ptr, ptr %filp.addr, align 8, !dbg !4755
  %f_path = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 10, !dbg !4756
  %10 = load i32, ptr %mask, align 4, !dbg !4757
  %conv10 = zext i32 %10 to i64, !dbg !4757
  %call11 = call i32 @security_path_notify(ptr noundef %f_path, i64 noundef %conv10, i32 noundef 0) #10, !dbg !4758
  store i32 %call11, ptr %error, align 4, !dbg !4759
  %11 = load i32, ptr %error, align 4, !dbg !4760
  %tobool12 = icmp ne i32 %11, 0, !dbg !4760
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4762

if.then13:                                        ; preds = %if.end8
  br label %out_err, !dbg !4763

if.end14:                                         ; preds = %if.end8
  %12 = load ptr, ptr @dnotify_struct_cache, align 8, !dbg !4764
  %call15 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 3264) #10, !dbg !4765
  store ptr %call15, ptr %dn, align 8, !dbg !4766
  %13 = load ptr, ptr %dn, align 8, !dbg !4767
  %tobool16 = icmp ne ptr %13, null, !dbg !4767
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4769

if.then17:                                        ; preds = %if.end14
  store i32 -12, ptr %error, align 4, !dbg !4770
  br label %out_err, !dbg !4772

if.end18:                                         ; preds = %if.end14
  %14 = load ptr, ptr @dnotify_mark_cache, align 8, !dbg !4773
  %call19 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3264) #10, !dbg !4774
  store ptr %call19, ptr %new_dn_mark, align 8, !dbg !4775
  %15 = load ptr, ptr %new_dn_mark, align 8, !dbg !4776
  %tobool20 = icmp ne ptr %15, null, !dbg !4776
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4778

if.then21:                                        ; preds = %if.end18
  store i32 -12, ptr %error, align 4, !dbg !4779
  br label %out_err, !dbg !4781

if.end22:                                         ; preds = %if.end18
  %16 = load ptr, ptr %new_dn_mark, align 8, !dbg !4782
  %fsn_mark23 = getelementptr inbounds %struct.dnotify_mark, ptr %16, i32 0, i32 0, !dbg !4783
  store ptr %fsn_mark23, ptr %new_fsn_mark, align 8, !dbg !4784
  %17 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4785
  %18 = load ptr, ptr @dnotify_group, align 8, !dbg !4786
  call void @fsnotify_init_mark(ptr noundef %17, ptr noundef %18) #10, !dbg !4787
  %19 = load i32, ptr %mask, align 4, !dbg !4788
  %20 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4789
  %mask24 = getelementptr inbounds %struct.fsnotify_mark, ptr %20, i32 0, i32 0, !dbg !4790
  store i32 %19, ptr %mask24, align 8, !dbg !4791
  %21 = load ptr, ptr %new_dn_mark, align 8, !dbg !4792
  %dn25 = getelementptr inbounds %struct.dnotify_mark, ptr %21, i32 0, i32 1, !dbg !4793
  store ptr null, ptr %dn25, align 8, !dbg !4794
  %22 = load ptr, ptr @dnotify_group, align 8, !dbg !4795
  call void @fsnotify_group_lock(ptr noundef %22) #10, !dbg !4796
  %23 = load ptr, ptr %inode, align 8, !dbg !4797
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 46, !dbg !4798
  %24 = load ptr, ptr @dnotify_group, align 8, !dbg !4799
  %call26 = call ptr @fsnotify_find_mark(ptr noundef %i_fsnotify_marks, ptr noundef %24) #10, !dbg !4800
  store ptr %call26, ptr %fsn_mark, align 8, !dbg !4801
  %25 = load ptr, ptr %fsn_mark, align 8, !dbg !4802
  %tobool27 = icmp ne ptr %25, null, !dbg !4802
  br i1 %tobool27, label %if.then28, label %if.else, !dbg !4803

if.then28:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4693, metadata !DIExpression()), !dbg !4804
  %26 = load ptr, ptr %fsn_mark, align 8, !dbg !4804
  store ptr %26, ptr %__mptr, align 8, !dbg !4804
  %27 = load ptr, ptr %__mptr, align 8, !dbg !4804
  %add.ptr = getelementptr i8, ptr %27, i64 0, !dbg !4804
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !4805
  %28 = load ptr, ptr %tmp, align 8, !dbg !4804
  store ptr %28, ptr %dn_mark, align 8, !dbg !4806
  %29 = load ptr, ptr %fsn_mark, align 8, !dbg !4807
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %29, i32 0, i32 4, !dbg !4808
  call void @spin_lock(ptr noundef %lock) #10, !dbg !4809
  br label %if.end34, !dbg !4810

if.else:                                          ; preds = %if.end22
  %30 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4811
  %31 = load ptr, ptr %inode, align 8, !dbg !4813
  %call29 = call i32 @fsnotify_add_inode_mark_locked(ptr noundef %30, ptr noundef %31, i32 noundef 0) #10, !dbg !4814
  store i32 %call29, ptr %error, align 4, !dbg !4815
  %32 = load i32, ptr %error, align 4, !dbg !4816
  %tobool30 = icmp ne i32 %32, 0, !dbg !4816
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4818

if.then31:                                        ; preds = %if.else
  %33 = load ptr, ptr @dnotify_group, align 8, !dbg !4819
  call void @fsnotify_group_unlock(ptr noundef %33) #10, !dbg !4821
  br label %out_err, !dbg !4822

if.end32:                                         ; preds = %if.else
  %34 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4823
  %lock33 = getelementptr inbounds %struct.fsnotify_mark, ptr %34, i32 0, i32 4, !dbg !4824
  call void @spin_lock(ptr noundef %lock33) #10, !dbg !4825
  %35 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4826
  store ptr %35, ptr %fsn_mark, align 8, !dbg !4827
  %36 = load ptr, ptr %new_dn_mark, align 8, !dbg !4828
  store ptr %36, ptr %dn_mark, align 8, !dbg !4829
  store ptr null, ptr %new_fsn_mark, align 8, !dbg !4830
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.then28
  call void @rcu_read_lock() #10, !dbg !4831
  %37 = load i32, ptr %fd.addr, align 4, !dbg !4832
  %call35 = call ptr @lookup_fd_rcu(i32 noundef %37) #10, !dbg !4833
  store ptr %call35, ptr %f, align 8, !dbg !4834
  call void @rcu_read_unlock() #10, !dbg !4835
  %38 = load ptr, ptr %f, align 8, !dbg !4836
  %39 = load ptr, ptr %filp.addr, align 8, !dbg !4838
  %cmp36 = icmp ne ptr %38, %39, !dbg !4839
  br i1 %cmp36, label %if.then38, label %if.end43, !dbg !4840

if.then38:                                        ; preds = %if.end34
  %40 = load ptr, ptr %dn_mark, align 8, !dbg !4841
  %41 = load ptr, ptr %new_dn_mark, align 8, !dbg !4844
  %cmp39 = icmp eq ptr %40, %41, !dbg !4845
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !4846

if.then41:                                        ; preds = %if.then38
  store i32 1, ptr %destroy, align 4, !dbg !4847
  br label %if.end42, !dbg !4848

if.end42:                                         ; preds = %if.then41, %if.then38
  store i32 0, ptr %error, align 4, !dbg !4849
  br label %out, !dbg !4850

if.end43:                                         ; preds = %if.end34
  %42 = load ptr, ptr %filp.addr, align 8, !dbg !4851
  %call44 = call ptr @get_current() #10, !dbg !4852
  %call45 = call ptr @task_pid(ptr noundef %call44) #10, !dbg !4853
  call void @__f_setown(ptr noundef %42, ptr noundef %call45, i32 noundef 1, i32 noundef 0) #10, !dbg !4854
  %43 = load ptr, ptr %dn, align 8, !dbg !4855
  %44 = load ptr, ptr %dn_mark, align 8, !dbg !4856
  %45 = load ptr, ptr %id, align 8, !dbg !4857
  %46 = load i32, ptr %fd.addr, align 4, !dbg !4858
  %47 = load ptr, ptr %filp.addr, align 8, !dbg !4859
  %48 = load i32, ptr %mask, align 4, !dbg !4860
  %call46 = call i32 @attach_dn(ptr noundef %43, ptr noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47, i32 noundef %48) #10, !dbg !4861
  store i32 %call46, ptr %error, align 4, !dbg !4862
  %49 = load i32, ptr %error, align 4, !dbg !4863
  %tobool47 = icmp ne i32 %49, 0, !dbg !4863
  br i1 %tobool47, label %if.else49, label %if.then48, !dbg !4865

if.then48:                                        ; preds = %if.end43
  store ptr null, ptr %dn, align 8, !dbg !4866
  br label %if.end54, !dbg !4867

if.else49:                                        ; preds = %if.end43
  %50 = load i32, ptr %error, align 4, !dbg !4868
  %cmp50 = icmp eq i32 %50, -17, !dbg !4870
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4871

if.then52:                                        ; preds = %if.else49
  store i32 0, ptr %error, align 4, !dbg !4872
  br label %if.end53, !dbg !4873

if.end53:                                         ; preds = %if.then52, %if.else49
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then48
  %51 = load ptr, ptr %fsn_mark, align 8, !dbg !4874
  call void @dnotify_recalc_inode_mask(ptr noundef %51) #10, !dbg !4875
  br label %out, !dbg !4875

out:                                              ; preds = %if.end54, %if.end42
  call void @llvm.dbg.label(metadata !4698), !dbg !4876
  %52 = load ptr, ptr %fsn_mark, align 8, !dbg !4877
  %lock55 = getelementptr inbounds %struct.fsnotify_mark, ptr %52, i32 0, i32 4, !dbg !4878
  call void @spin_unlock(ptr noundef %lock55) #10, !dbg !4879
  %53 = load i32, ptr %destroy, align 4, !dbg !4880
  %tobool56 = icmp ne i32 %53, 0, !dbg !4880
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !4882

if.then57:                                        ; preds = %out
  %54 = load ptr, ptr %fsn_mark, align 8, !dbg !4883
  call void @fsnotify_detach_mark(ptr noundef %54) #10, !dbg !4884
  br label %if.end58, !dbg !4884

if.end58:                                         ; preds = %if.then57, %out
  %55 = load ptr, ptr @dnotify_group, align 8, !dbg !4885
  call void @fsnotify_group_unlock(ptr noundef %55) #10, !dbg !4886
  %56 = load i32, ptr %destroy, align 4, !dbg !4887
  %tobool59 = icmp ne i32 %56, 0, !dbg !4887
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !4889

if.then60:                                        ; preds = %if.end58
  %57 = load ptr, ptr %fsn_mark, align 8, !dbg !4890
  call void @fsnotify_free_mark(ptr noundef %57) #10, !dbg !4891
  br label %if.end61, !dbg !4891

if.end61:                                         ; preds = %if.then60, %if.end58
  %58 = load ptr, ptr %fsn_mark, align 8, !dbg !4892
  call void @fsnotify_put_mark(ptr noundef %58) #10, !dbg !4893
  br label %out_err, !dbg !4893

out_err:                                          ; preds = %if.end61, %if.then31, %if.then21, %if.then17, %if.then13, %if.then7, %if.then1, %if.then
  call void @llvm.dbg.label(metadata !4699), !dbg !4894
  %59 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4895
  %tobool62 = icmp ne ptr %59, null, !dbg !4895
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !4897

if.then63:                                        ; preds = %out_err
  %60 = load ptr, ptr %new_fsn_mark, align 8, !dbg !4898
  call void @fsnotify_put_mark(ptr noundef %60) #10, !dbg !4899
  br label %if.end64, !dbg !4899

if.end64:                                         ; preds = %if.then63, %out_err
  %61 = load ptr, ptr %dn, align 8, !dbg !4900
  %tobool65 = icmp ne ptr %61, null, !dbg !4900
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !4902

if.then66:                                        ; preds = %if.end64
  %62 = load ptr, ptr @dnotify_struct_cache, align 8, !dbg !4903
  %63 = load ptr, ptr %dn, align 8, !dbg !4904
  call void @kmem_cache_free(ptr noundef %62, ptr noundef %63) #10, !dbg !4905
  br label %if.end67, !dbg !4905

if.end67:                                         ; preds = %if.then66, %if.end64
  %64 = load i32, ptr %error, align 4, !dbg !4906
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 4, ptr %destroy) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsn_mark) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_fsn_mark) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn_mark) #9, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_dn_mark) #9, !dbg !4907
  ret i32 %64, !dbg !4908
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4909 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !4920
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4914, metadata !DIExpression()), !dbg !4920
  br label %do.body, !dbg !4920

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4921
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4916, metadata !DIExpression()), !dbg !4921
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4921
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4920
  br label %do.cond, !dbg !4921

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4921

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !4922
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4918, metadata !DIExpression()), !dbg !4922
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !4922, !srcloc !4923
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4922
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4922
  %3 = inttoptr i64 %2 to ptr, !dbg !4922
  store ptr %3, ptr %tmp, align 8, !dbg !4922
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !4920
  %4 = load ptr, ptr %tmp, align 8, !dbg !4922
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4920
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4920
  store ptr %5, ptr %tmp1, align 8, !dbg !4920
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !4924
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4920
  ret ptr %6, !dbg !4925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @convert_arg(i32 noundef %arg) #0 align 16 !dbg !4926 {
entry:
  %arg.addr = alloca i32, align 4
  %new_mask = alloca i32, align 4
  store i32 %arg, ptr %arg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4930, metadata !DIExpression()), !dbg !4932
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #9, !dbg !4933
  call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !4931, metadata !DIExpression()), !dbg !4934
  store i32 134217728, ptr %new_mask, align 4, !dbg !4934
  %0 = load i32, ptr %arg.addr, align 4, !dbg !4935
  %and = and i32 %0, -2147483648, !dbg !4937
  %tobool = icmp ne i32 %and, 0, !dbg !4937
  br i1 %tobool, label %if.then, label %if.end, !dbg !4938

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %new_mask, align 4, !dbg !4939
  %or = or i32 %1, 536870912, !dbg !4939
  store i32 %or, ptr %new_mask, align 4, !dbg !4939
  br label %if.end, !dbg !4940

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %arg.addr, align 4, !dbg !4941
  %and1 = and i32 %2, 8, !dbg !4943
  %tobool2 = icmp ne i32 %and1, 0, !dbg !4943
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4944

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %new_mask, align 4, !dbg !4945
  %or4 = or i32 %3, 576, !dbg !4945
  store i32 %or4, ptr %new_mask, align 4, !dbg !4945
  br label %if.end5, !dbg !4946

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %arg.addr, align 4, !dbg !4947
  %and6 = and i32 %4, 2, !dbg !4949
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4949
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4950

if.then8:                                         ; preds = %if.end5
  %5 = load i32, ptr %new_mask, align 4, !dbg !4951
  %or9 = or i32 %5, 2, !dbg !4951
  store i32 %or9, ptr %new_mask, align 4, !dbg !4951
  br label %if.end10, !dbg !4952

if.end10:                                         ; preds = %if.then8, %if.end5
  %6 = load i32, ptr %arg.addr, align 4, !dbg !4953
  %and11 = and i32 %6, 1, !dbg !4955
  %tobool12 = icmp ne i32 %and11, 0, !dbg !4955
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !4956

if.then13:                                        ; preds = %if.end10
  %7 = load i32, ptr %new_mask, align 4, !dbg !4957
  %or14 = or i32 %7, 1, !dbg !4957
  store i32 %or14, ptr %new_mask, align 4, !dbg !4957
  br label %if.end15, !dbg !4958

if.end15:                                         ; preds = %if.then13, %if.end10
  %8 = load i32, ptr %arg.addr, align 4, !dbg !4959
  %and16 = and i32 %8, 32, !dbg !4961
  %tobool17 = icmp ne i32 %and16, 0, !dbg !4961
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !4962

if.then18:                                        ; preds = %if.end15
  %9 = load i32, ptr %new_mask, align 4, !dbg !4963
  %or19 = or i32 %9, 4, !dbg !4963
  store i32 %or19, ptr %new_mask, align 4, !dbg !4963
  br label %if.end20, !dbg !4964

if.end20:                                         ; preds = %if.then18, %if.end15
  %10 = load i32, ptr %arg.addr, align 4, !dbg !4965
  %and21 = and i32 %10, 16, !dbg !4967
  %tobool22 = icmp ne i32 %and21, 0, !dbg !4967
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4968

if.then23:                                        ; preds = %if.end20
  %11 = load i32, ptr %new_mask, align 4, !dbg !4969
  %or24 = or i32 %11, 268435456, !dbg !4969
  store i32 %or24, ptr %new_mask, align 4, !dbg !4969
  br label %if.end25, !dbg !4970

if.end25:                                         ; preds = %if.then23, %if.end20
  %12 = load i32, ptr %arg.addr, align 4, !dbg !4971
  %and26 = and i32 %12, 4, !dbg !4973
  %tobool27 = icmp ne i32 %and26, 0, !dbg !4973
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !4974

if.then28:                                        ; preds = %if.end25
  %13 = load i32, ptr %new_mask, align 4, !dbg !4975
  %or29 = or i32 %13, 384, !dbg !4975
  store i32 %or29, ptr %new_mask, align 4, !dbg !4975
  br label %if.end30, !dbg !4976

if.end30:                                         ; preds = %if.then28, %if.end25
  %14 = load i32, ptr %new_mask, align 4, !dbg !4977
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #9, !dbg !4978
  ret i32 %14, !dbg !4979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4980 dso_local i32 @security_path_notify(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4984 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4987 dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_add_inode_mark_locked(ptr noundef %mark, ptr noundef %inode, i32 noundef %add_flags) #3 align 16 !dbg !4988 {
entry:
  %mark.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %add_flags.addr = alloca i32, align 4
  store ptr %mark, ptr %mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mark.addr, metadata !4992, metadata !DIExpression()), !dbg !4995
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4993, metadata !DIExpression()), !dbg !4996
  store i32 %add_flags, ptr %add_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %add_flags.addr, metadata !4994, metadata !DIExpression()), !dbg !4997
  %0 = load ptr, ptr %mark.addr, align 8, !dbg !4998
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4999
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46, !dbg !5000
  %2 = load i32, ptr %add_flags.addr, align 4, !dbg !5001
  %call = call i32 @fsnotify_add_mark_locked(ptr noundef %0, ptr noundef %i_fsnotify_marks, i32 noundef 0, i32 noundef %2, ptr noundef null) #10, !dbg !5002
  ret i32 %call, !dbg !5003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !5004 {
entry:
  call void @__rcu_read_lock() #10, !dbg !5006
  br label %do.body, !dbg !5007

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5008

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5010

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5011

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5013
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_fd_rcu(i32 noundef %fd) #3 align 16 !dbg !5014 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  %call = call ptr @get_current() #10, !dbg !5020
  %files = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 101, !dbg !5021
  %0 = load ptr, ptr %files, align 8, !dbg !5021
  %1 = load i32, ptr %fd.addr, align 4, !dbg !5022
  %call1 = call ptr @files_lookup_fd_rcu(ptr noundef %0, i32 noundef %1) #10, !dbg !5023
  ret ptr %call1, !dbg !5024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !5025 {
entry:
  br label %do.body, !dbg !5026

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5027

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #10, !dbg !5029
  br label %do.body1, !dbg !5030

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5031

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5033
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5034 dso_local void @__f_setown(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_pid(ptr noundef %task) #3 align 16 !dbg !5037 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5043
  %thread_pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 72, !dbg !5044
  %1 = load ptr, ptr %thread_pid, align 32, !dbg !5044
  ret ptr %1, !dbg !5045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @attach_dn(ptr noundef %dn, ptr noundef %dn_mark, ptr noundef %id, i32 noundef %fd, ptr noundef %filp, i32 noundef %mask) #0 align 16 !dbg !5046 {
entry:
  %retval = alloca i32, align 4
  %dn.addr = alloca ptr, align 8
  %dn_mark.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %odn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dn, ptr %dn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dn.addr, metadata !5050, metadata !DIExpression()), !dbg !5057
  store ptr %dn_mark, ptr %dn_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dn_mark.addr, metadata !5051, metadata !DIExpression()), !dbg !5058
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5052, metadata !DIExpression()), !dbg !5059
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5053, metadata !DIExpression()), !dbg !5060
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5054, metadata !DIExpression()), !dbg !5061
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5055, metadata !DIExpression()), !dbg !5062
  call void @llvm.lifetime.start.p0(i64 8, ptr %odn) #9, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %odn, metadata !5056, metadata !DIExpression()), !dbg !5064
  %0 = load ptr, ptr %dn_mark.addr, align 8, !dbg !5065
  %dn1 = getelementptr inbounds %struct.dnotify_mark, ptr %0, i32 0, i32 1, !dbg !5066
  %1 = load ptr, ptr %dn1, align 8, !dbg !5066
  store ptr %1, ptr %odn, align 8, !dbg !5067
  br label %while.cond, !dbg !5068

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %odn, align 8, !dbg !5069
  %cmp = icmp ne ptr %2, null, !dbg !5070
  br i1 %cmp, label %while.body, label %while.end, !dbg !5068

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %odn, align 8, !dbg !5071
  %dn_owner = getelementptr inbounds %struct.dnotify_struct, ptr %3, i32 0, i32 4, !dbg !5074
  %4 = load ptr, ptr %dn_owner, align 8, !dbg !5074
  %5 = load ptr, ptr %id.addr, align 8, !dbg !5075
  %cmp2 = icmp eq ptr %4, %5, !dbg !5076
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !5077

land.lhs.true:                                    ; preds = %while.body
  %6 = load ptr, ptr %odn, align 8, !dbg !5078
  %dn_filp = getelementptr inbounds %struct.dnotify_struct, ptr %6, i32 0, i32 3, !dbg !5079
  %7 = load ptr, ptr %dn_filp, align 8, !dbg !5079
  %8 = load ptr, ptr %filp.addr, align 8, !dbg !5080
  %cmp3 = icmp eq ptr %7, %8, !dbg !5081
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5082

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %fd.addr, align 4, !dbg !5083
  %10 = load ptr, ptr %odn, align 8, !dbg !5085
  %dn_fd = getelementptr inbounds %struct.dnotify_struct, ptr %10, i32 0, i32 2, !dbg !5086
  store i32 %9, ptr %dn_fd, align 4, !dbg !5087
  %11 = load i32, ptr %mask.addr, align 4, !dbg !5088
  %12 = load ptr, ptr %odn, align 8, !dbg !5089
  %dn_mask = getelementptr inbounds %struct.dnotify_struct, ptr %12, i32 0, i32 1, !dbg !5090
  %13 = load i32, ptr %dn_mask, align 8, !dbg !5091
  %or = or i32 %13, %11, !dbg !5091
  store i32 %or, ptr %dn_mask, align 8, !dbg !5091
  store i32 -17, ptr %retval, align 4, !dbg !5092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5092

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load ptr, ptr %odn, align 8, !dbg !5093
  %dn_next = getelementptr inbounds %struct.dnotify_struct, ptr %14, i32 0, i32 0, !dbg !5094
  %15 = load ptr, ptr %dn_next, align 8, !dbg !5094
  store ptr %15, ptr %odn, align 8, !dbg !5095
  br label %while.cond, !dbg !5068, !llvm.loop !5096

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %mask.addr, align 4, !dbg !5098
  %17 = load ptr, ptr %dn.addr, align 8, !dbg !5099
  %dn_mask4 = getelementptr inbounds %struct.dnotify_struct, ptr %17, i32 0, i32 1, !dbg !5100
  store i32 %16, ptr %dn_mask4, align 8, !dbg !5101
  %18 = load i32, ptr %fd.addr, align 4, !dbg !5102
  %19 = load ptr, ptr %dn.addr, align 8, !dbg !5103
  %dn_fd5 = getelementptr inbounds %struct.dnotify_struct, ptr %19, i32 0, i32 2, !dbg !5104
  store i32 %18, ptr %dn_fd5, align 4, !dbg !5105
  %20 = load ptr, ptr %filp.addr, align 8, !dbg !5106
  %21 = load ptr, ptr %dn.addr, align 8, !dbg !5107
  %dn_filp6 = getelementptr inbounds %struct.dnotify_struct, ptr %21, i32 0, i32 3, !dbg !5108
  store ptr %20, ptr %dn_filp6, align 8, !dbg !5109
  %22 = load ptr, ptr %id.addr, align 8, !dbg !5110
  %23 = load ptr, ptr %dn.addr, align 8, !dbg !5111
  %dn_owner7 = getelementptr inbounds %struct.dnotify_struct, ptr %23, i32 0, i32 4, !dbg !5112
  store ptr %22, ptr %dn_owner7, align 8, !dbg !5113
  %24 = load ptr, ptr %dn_mark.addr, align 8, !dbg !5114
  %dn8 = getelementptr inbounds %struct.dnotify_mark, ptr %24, i32 0, i32 1, !dbg !5115
  %25 = load ptr, ptr %dn8, align 8, !dbg !5115
  %26 = load ptr, ptr %dn.addr, align 8, !dbg !5116
  %dn_next9 = getelementptr inbounds %struct.dnotify_struct, ptr %26, i32 0, i32 0, !dbg !5117
  store ptr %25, ptr %dn_next9, align 8, !dbg !5118
  %27 = load ptr, ptr %dn.addr, align 8, !dbg !5119
  %28 = load ptr, ptr %dn_mark.addr, align 8, !dbg !5120
  %dn10 = getelementptr inbounds %struct.dnotify_mark, ptr %28, i32 0, i32 1, !dbg !5121
  store ptr %27, ptr %dn10, align 8, !dbg !5122
  store i32 0, ptr %retval, align 4, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %odn) #9, !dbg !5124
  %29 = load i32, ptr %retval, align 4, !dbg !5124
  ret i32 %29, !dbg !5124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_dnotify__298_412_dnotify_init6() #6 section ".init.text" align 16 !dbg !5125 {
entry:
  %call = call i32 @dnotify_init() #12, !dbg !5126
  ret i32 %call, !dbg !5126
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dnotify_init() #6 section ".init.text" align 16 !dbg !5127 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 32, i32 noundef 8, i32 noundef 262144, ptr noundef null) #10, !dbg !5128
  store ptr %call, ptr @dnotify_struct_cache, align 8, !dbg !5129
  %call1 = call ptr @kmem_cache_create(ptr noundef @.str.2, i32 noundef 80, i32 noundef 8, i32 noundef 262144, ptr noundef null) #10, !dbg !5130
  store ptr %call1, ptr @dnotify_mark_cache, align 8, !dbg !5131
  %call2 = call ptr @fsnotify_alloc_group(ptr noundef @dnotify_fsnotify_ops, i32 noundef 4) #10, !dbg !5132
  store ptr %call2, ptr @dnotify_group, align 8, !dbg !5133
  %0 = load ptr, ptr @dnotify_group, align 8, !dbg !5134
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %0) #10, !dbg !5136
  br i1 %call3, label %if.then, label %if.end, !dbg !5137

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.3) #13, !dbg !5138
  unreachable, !dbg !5138

if.end:                                           ; preds = %entry
  call void @dnotify_sysctl_init() #12, !dbg !5139
  ret i32 0, !dbg !5140
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5141 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @memalloc_nofs_save() #3 align 16 !dbg !5145 {
entry:
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5150, metadata !DIExpression()), !dbg !5152
  %call = call ptr @get_current() #10, !dbg !5153
  %flags1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 4, !dbg !5154
  %0 = load i32, ptr %flags1, align 4, !dbg !5154
  %and = and i32 %0, 262144, !dbg !5155
  store i32 %and, ptr %flags, align 4, !dbg !5152
  %call2 = call ptr @get_current() #10, !dbg !5156
  %flags3 = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 4, !dbg !5157
  %1 = load i32, ptr %flags3, align 4, !dbg !5158
  %or = or i32 %1, 262144, !dbg !5158
  store i32 %or, ptr %flags3, align 4, !dbg !5158
  %2 = load i32, ptr %flags, align 4, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9, !dbg !5160
  ret i32 %2, !dbg !5161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5162 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #5 align 16 !dbg !5167 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5175
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !5176
  %call = call i32 @atomic_read(ptr noundef %1) #10, !dbg !5177
  ret i32 %call, !dbg !5178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5179 dso_local void @fsnotify_recalc_mask(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !5182 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5191
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !5192
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5193
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !5194
  ret i32 %call, !dbg !5195
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5196 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5204, metadata !DIExpression()), !dbg !5206
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5205, metadata !DIExpression()), !dbg !5207
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5208
  %1 = load i64, ptr %size.addr, align 8, !dbg !5209
  %conv = trunc i64 %1 to i32, !dbg !5209
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !5210
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5211
  %3 = load i64, ptr %size.addr, align 8, !dbg !5211
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !5211
  ret void, !dbg !5212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !5213 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5218
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !5219
  ret i32 %call, !dbg !5220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5221 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5226, metadata !DIExpression()), !dbg !5228
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5227, metadata !DIExpression()), !dbg !5229
  ret i1 true, !dbg !5230
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5231 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5236, metadata !DIExpression()), !dbg !5239
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5237, metadata !DIExpression()), !dbg !5240
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5238, metadata !DIExpression()), !dbg !5241
  ret void, !dbg !5242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !5243 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5248
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5248
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5248
  ret i32 %1, !dbg !5249
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5250 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memalloc_nofs_restore(i32 noundef %flags) #3 align 16 !dbg !5251 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  %call = call ptr @get_current() #10, !dbg !5257
  %flags1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 4, !dbg !5258
  %0 = load i32, ptr %flags1, align 4, !dbg !5258
  %and = and i32 %0, -262145, !dbg !5259
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5260
  %or = or i32 %and, %1, !dbg !5261
  %call2 = call ptr @get_current() #10, !dbg !5262
  %flags3 = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 4, !dbg !5263
  store i32 %or, ptr %flags3, align 4, !dbg !5264
  ret void, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5267 dso_local i32 @fsnotify_add_mark_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5271 dso_local void @__rcu_read_lock() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @files_lookup_fd_rcu(ptr noundef %files, i32 noundef %fd) #3 align 16 !dbg !5272 {
entry:
  %files.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  store ptr %files, ptr %files.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %files.addr, metadata !5276, metadata !DIExpression()), !dbg !5278
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5277, metadata !DIExpression()), !dbg !5279
  br label %do.body, !dbg !5280

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5281

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %files.addr, align 8, !dbg !5283
  %1 = load i32, ptr %fd.addr, align 4, !dbg !5284
  %call = call ptr @files_lookup_fd_raw(ptr noundef %0, i32 noundef %1) #10, !dbg !5285
  ret ptr %call, !dbg !5286
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @files_lookup_fd_raw(ptr noundef %files, i32 noundef %fd) #3 align 16 !dbg !5287 {
entry:
  %retval = alloca ptr, align 8
  %files.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %fdt = alloca ptr, align 8
  %__UNIQUE_ID_rcu289 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__UNIQUE_ID_rcu293 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %files, ptr %files.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %files.addr, metadata !5289, metadata !DIExpression()), !dbg !5302
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5290, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %fdt) #9, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %fdt, metadata !5291, metadata !DIExpression()), !dbg !5305
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu289) #9, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu289, metadata !5292, metadata !DIExpression()), !dbg !5306
  br label %do.body, !dbg !5307

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5309

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5309

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %files.addr, align 8, !dbg !5307
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3, !dbg !5307
  %1 = load volatile ptr, ptr %fdt1, align 32, !dbg !5307
  store ptr %1, ptr %tmp, align 8, !dbg !5309
  %2 = load ptr, ptr %tmp, align 8, !dbg !5307
  store ptr %2, ptr %__UNIQUE_ID_rcu289, align 8, !dbg !5306
  %3 = load ptr, ptr %__UNIQUE_ID_rcu289, align 8, !dbg !5306
  store ptr %3, ptr %tmp2, align 8, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu289) #9, !dbg !5311
  %4 = load ptr, ptr %tmp2, align 8, !dbg !5306
  store ptr %4, ptr %fdt, align 8, !dbg !5305
  %5 = load i32, ptr %fd.addr, align 4, !dbg !5312
  %6 = load ptr, ptr %fdt, align 8, !dbg !5313
  %max_fds = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 0, !dbg !5314
  %7 = load i32, ptr %max_fds, align 8, !dbg !5314
  %cmp = icmp ult i32 %5, %7, !dbg !5315
  br i1 %cmp, label %if.then, label %if.end, !dbg !5316

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #9, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !5294, metadata !DIExpression()), !dbg !5317
  %8 = load i32, ptr %fd.addr, align 4, !dbg !5317
  store i32 %8, ptr %_i, align 4, !dbg !5317
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #9, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !5298, metadata !DIExpression()), !dbg !5317
  %9 = load ptr, ptr %fdt, align 8, !dbg !5317
  %max_fds3 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 0, !dbg !5317
  %10 = load i32, ptr %max_fds3, align 8, !dbg !5317
  store i32 %10, ptr %_s, align 4, !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #9, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !5299, metadata !DIExpression()), !dbg !5317
  %11 = load i32, ptr %_i, align 4, !dbg !5317
  %conv = zext i32 %11 to i64, !dbg !5317
  %12 = load i32, ptr %_s, align 4, !dbg !5317
  %conv4 = zext i32 %12 to i64, !dbg !5317
  %call = call i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv4) #10, !dbg !5317
  store i64 %call, ptr %_mask, align 8, !dbg !5317
  br label %do.body5, !dbg !5317

do.body5:                                         ; preds = %if.then
  br label %do.cond6, !dbg !5318

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5318

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !5317

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !5320

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5320

do.end10:                                         ; preds = %do.cond9
  %13 = load i32, ptr %_i, align 4, !dbg !5317
  %conv12 = zext i32 %13 to i64, !dbg !5317
  %14 = load i64, ptr %_mask, align 8, !dbg !5317
  %and = and i64 %conv12, %14, !dbg !5317
  %conv13 = trunc i64 %and to i32, !dbg !5317
  store i32 %conv13, ptr %tmp11, align 4, !dbg !5320
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #9, !dbg !5322
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #9, !dbg !5322
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #9, !dbg !5322
  %15 = load i32, ptr %tmp11, align 4, !dbg !5317
  store i32 %15, ptr %fd.addr, align 4, !dbg !5323
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu293) #9, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu293, metadata !5300, metadata !DIExpression()), !dbg !5324
  br label %do.body14, !dbg !5325

do.body14:                                        ; preds = %do.end10
  br label %do.cond15, !dbg !5327

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5327

do.end16:                                         ; preds = %do.cond15
  %16 = load ptr, ptr %fdt, align 8, !dbg !5325
  %fd18 = getelementptr inbounds %struct.fdtable, ptr %16, i32 0, i32 1, !dbg !5325
  %17 = load ptr, ptr %fd18, align 8, !dbg !5325
  %18 = load i32, ptr %fd.addr, align 4, !dbg !5325
  %idxprom = zext i32 %18 to i64, !dbg !5325
  %arrayidx = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !5325
  %19 = load volatile ptr, ptr %arrayidx, align 8, !dbg !5325
  store ptr %19, ptr %tmp17, align 8, !dbg !5327
  %20 = load ptr, ptr %tmp17, align 8, !dbg !5325
  store ptr %20, ptr %__UNIQUE_ID_rcu293, align 8, !dbg !5324
  %21 = load ptr, ptr %__UNIQUE_ID_rcu293, align 8, !dbg !5324
  store ptr %21, ptr %tmp19, align 8, !dbg !5324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu293) #9, !dbg !5329
  %22 = load ptr, ptr %tmp19, align 8, !dbg !5324
  store ptr %22, ptr %retval, align 8, !dbg !5330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5330

if.end:                                           ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !5331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5331

cleanup:                                          ; preds = %if.end, %do.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %fdt) #9, !dbg !5332
  %23 = load ptr, ptr %retval, align 8, !dbg !5332
  ret ptr %23, !dbg !5332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #3 align 16 !dbg !5333 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5338, metadata !DIExpression()), !dbg !5341
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5339, metadata !DIExpression()), !dbg !5342
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !5343
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5340, metadata !DIExpression()), !dbg !5344
  %0 = load i64, ptr %size.addr, align 8, !dbg !5345
  %1 = load i64, ptr %index.addr, align 8, !dbg !5346
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #9, !dbg !5347, !srcloc !5348
  store i64 %2, ptr %mask, align 8, !dbg !5347
  %3 = load i64, ptr %mask, align 8, !dbg !5349
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !5350
  ret i64 %3, !dbg !5351
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5352 dso_local void @__rcu_read_unlock() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5353 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5356 dso_local ptr @fsnotify_alloc_group(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5359 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5366
  %1 = ptrtoint ptr %0 to i64, !dbg !5366
  %2 = inttoptr i64 %1 to ptr, !dbg !5366
  %3 = ptrtoint ptr %2 to i64, !dbg !5366
  %cmp = icmp uge i64 %3, -4095, !dbg !5366
  %lnot = xor i1 %cmp, true, !dbg !5366
  %lnot1 = xor i1 %lnot, true, !dbg !5366
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5366
  %conv = sext i32 %lnot.ext to i64, !dbg !5366
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5366
  %tobool = icmp ne i64 %expval, 0, !dbg !5366
  ret i1 %tobool, !dbg !5367
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !5368 dso_local void @panic(ptr noundef, ...) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @dnotify_sysctl_init() #6 section ".init.text" align 16 !dbg !5372 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str.4, ptr noundef @dnotify_sysctls, ptr noundef @.str.5, i64 noundef 2) #10, !dbg !5373
  ret void, !dbg !5374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dnotify_handle_event(ptr noundef %inode_mark, i32 noundef %mask, ptr noundef %inode, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #0 align 16 !dbg !5375 {
entry:
  %retval = alloca i32, align 4
  %inode_mark.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %dn_mark = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %fown = alloca ptr, align 8
  %test_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode_mark, ptr %inode_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode_mark.addr, metadata !5377, metadata !DIExpression()), !dbg !5391
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5378, metadata !DIExpression()), !dbg !5392
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5379, metadata !DIExpression()), !dbg !5393
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5380, metadata !DIExpression()), !dbg !5394
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5381, metadata !DIExpression()), !dbg !5395
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5382, metadata !DIExpression()), !dbg !5396
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn_mark) #9, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %dn_mark, metadata !5383, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #9, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !5384, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #9, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !5385, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %fown) #9, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %fown, metadata !5386, metadata !DIExpression()), !dbg !5404
  call void @llvm.lifetime.start.p0(i64 4, ptr %test_mask) #9, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %test_mask, metadata !5388, metadata !DIExpression()), !dbg !5406
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5407
  %and = and i32 %0, -134217729, !dbg !5408
  store i32 %and, ptr %test_mask, align 4, !dbg !5406
  %1 = load ptr, ptr %dir.addr, align 8, !dbg !5409
  %tobool = icmp ne ptr %1, null, !dbg !5409
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5411

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5412
  %and1 = and i32 %2, 1073741824, !dbg !5413
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5413
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5414

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !5415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5415

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5389, metadata !DIExpression()), !dbg !5416
  %3 = load ptr, ptr %inode_mark.addr, align 8, !dbg !5416
  store ptr %3, ptr %__mptr, align 8, !dbg !5416
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5416
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !5416
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5417
  %5 = load ptr, ptr %tmp, align 8, !dbg !5416
  store ptr %5, ptr %dn_mark, align 8, !dbg !5418
  %6 = load ptr, ptr %inode_mark.addr, align 8, !dbg !5419
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %6, i32 0, i32 4, !dbg !5420
  call void @spin_lock(ptr noundef %lock) #10, !dbg !5421
  %7 = load ptr, ptr %dn_mark, align 8, !dbg !5422
  %dn3 = getelementptr inbounds %struct.dnotify_mark, ptr %7, i32 0, i32 1, !dbg !5423
  store ptr %dn3, ptr %prev, align 8, !dbg !5424
  br label %while.cond, !dbg !5425

while.cond:                                       ; preds = %if.end14, %if.then6, %if.end
  %8 = load ptr, ptr %prev, align 8, !dbg !5426
  %9 = load ptr, ptr %8, align 8, !dbg !5427
  store ptr %9, ptr %dn, align 8, !dbg !5428
  %cmp = icmp ne ptr %9, null, !dbg !5429
  br i1 %cmp, label %while.body, label %while.end, !dbg !5425

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %dn, align 8, !dbg !5430
  %dn_mask = getelementptr inbounds %struct.dnotify_struct, ptr %10, i32 0, i32 1, !dbg !5433
  %11 = load i32, ptr %dn_mask, align 8, !dbg !5433
  %12 = load i32, ptr %test_mask, align 4, !dbg !5434
  %and4 = and i32 %11, %12, !dbg !5435
  %cmp5 = icmp eq i32 %and4, 0, !dbg !5436
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5437

if.then6:                                         ; preds = %while.body
  %13 = load ptr, ptr %dn, align 8, !dbg !5438
  %dn_next = getelementptr inbounds %struct.dnotify_struct, ptr %13, i32 0, i32 0, !dbg !5440
  store ptr %dn_next, ptr %prev, align 8, !dbg !5441
  br label %while.cond, !dbg !5442, !llvm.loop !5443

if.end7:                                          ; preds = %while.body
  %14 = load ptr, ptr %dn, align 8, !dbg !5445
  %dn_filp = getelementptr inbounds %struct.dnotify_struct, ptr %14, i32 0, i32 3, !dbg !5446
  %15 = load ptr, ptr %dn_filp, align 8, !dbg !5446
  %f_owner = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 7, !dbg !5447
  store ptr %f_owner, ptr %fown, align 8, !dbg !5448
  %16 = load ptr, ptr %fown, align 8, !dbg !5449
  %17 = load ptr, ptr %dn, align 8, !dbg !5450
  %dn_fd = getelementptr inbounds %struct.dnotify_struct, ptr %17, i32 0, i32 2, !dbg !5451
  %18 = load i32, ptr %dn_fd, align 4, !dbg !5451
  call void @send_sigio(ptr noundef %16, i32 noundef %18, i32 noundef 3) #10, !dbg !5452
  %19 = load ptr, ptr %dn, align 8, !dbg !5453
  %dn_mask8 = getelementptr inbounds %struct.dnotify_struct, ptr %19, i32 0, i32 1, !dbg !5455
  %20 = load i32, ptr %dn_mask8, align 8, !dbg !5455
  %and9 = and i32 %20, 536870912, !dbg !5456
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5456
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !5457

if.then11:                                        ; preds = %if.end7
  %21 = load ptr, ptr %dn, align 8, !dbg !5458
  %dn_next12 = getelementptr inbounds %struct.dnotify_struct, ptr %21, i32 0, i32 0, !dbg !5459
  store ptr %dn_next12, ptr %prev, align 8, !dbg !5460
  br label %if.end14, !dbg !5461

if.else:                                          ; preds = %if.end7
  %22 = load ptr, ptr %dn, align 8, !dbg !5462
  %dn_next13 = getelementptr inbounds %struct.dnotify_struct, ptr %22, i32 0, i32 0, !dbg !5464
  %23 = load ptr, ptr %dn_next13, align 8, !dbg !5464
  %24 = load ptr, ptr %prev, align 8, !dbg !5465
  store ptr %23, ptr %24, align 8, !dbg !5466
  %25 = load ptr, ptr @dnotify_struct_cache, align 8, !dbg !5467
  %26 = load ptr, ptr %dn, align 8, !dbg !5468
  call void @kmem_cache_free(ptr noundef %25, ptr noundef %26) #10, !dbg !5469
  %27 = load ptr, ptr %inode_mark.addr, align 8, !dbg !5470
  call void @dnotify_recalc_inode_mask(ptr noundef %27) #10, !dbg !5471
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  br label %while.cond, !dbg !5425, !llvm.loop !5443

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %inode_mark.addr, align 8, !dbg !5472
  %lock15 = getelementptr inbounds %struct.fsnotify_mark, ptr %28, i32 0, i32 4, !dbg !5473
  call void @spin_unlock(ptr noundef %lock15) #10, !dbg !5474
  store i32 0, ptr %retval, align 4, !dbg !5475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5475

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %test_mask) #9, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %fown) #9, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #9, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #9, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn_mark) #9, !dbg !5476
  %29 = load i32, ptr %retval, align 4, !dbg !5476
  ret i32 %29, !dbg !5476
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dnotify_free_mark(ptr noundef %fsn_mark) #0 align 16 !dbg !5477 {
entry:
  %fsn_mark.addr = alloca ptr, align 8
  %dn_mark = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fsn_mark, ptr %fsn_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsn_mark.addr, metadata !5479, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn_mark) #9, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %dn_mark, metadata !5480, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5481, metadata !DIExpression()), !dbg !5486
  %0 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !5486
  store ptr %0, ptr %__mptr, align 8, !dbg !5486
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5486
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5486
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5486
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5487
  %2 = load ptr, ptr %tmp, align 8, !dbg !5486
  store ptr %2, ptr %dn_mark, align 8, !dbg !5485
  br label %do.body, !dbg !5488

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %dn_mark, align 8, !dbg !5489
  %dn = getelementptr inbounds %struct.dnotify_mark, ptr %3, i32 0, i32 1, !dbg !5489
  %4 = load ptr, ptr %dn, align 8, !dbg !5489
  %tobool = icmp ne ptr %4, null, !dbg !5489
  %lnot = xor i1 %tobool, true, !dbg !5489
  %lnot1 = xor i1 %lnot, true, !dbg !5489
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5489
  %conv = sext i32 %lnot.ext to i64, !dbg !5489
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5489
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5489
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5492

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5489

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5493

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !5495

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5495

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !5493

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 136, i32 0, i64 12) #9, !dbg !5497, !srcloc !5499
  br label %do.cond6, !dbg !5497

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5497

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !5493

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !5493

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !5493

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !5492

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !5492

do.end11:                                         ; preds = %do.cond10
  %5 = load ptr, ptr @dnotify_mark_cache, align 8, !dbg !5500
  %6 = load ptr, ptr %dn_mark, align 8, !dbg !5501
  call void @kmem_cache_free(ptr noundef %5, ptr noundef %6) #10, !dbg !5502
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn_mark) #9, !dbg !5503
  ret void, !dbg !5503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5504 dso_local void @send_sigio(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5507 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }
attributes #12 = { cold noredzone }
attributes #13 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425}
!llvm.ident = !{!4426}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dnotify_group", scope: !2, file: !3, line: 44, type: !213, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/notify/dnotify/.dnotify.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/notify/dnotify/dnotify\22 -D KBUILD_BASENAME=\22dnotify\22 -D KBUILD_MODNAME=\22dnotify\22 -D __KBUILD_MODNAME=kmod_dnotify -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/notify/dnotify/dnotify.ll fs/notify/dnotify/dnotify.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !197, globals: !4371, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/notify/dnotify/dnotify.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dde046c56c9b8575a7781334ea4c3d0d")
!4 = !{!5, !14, !110, !117, !125, !141, !148, !154, !159, !165, !170, !176, !183, !188}
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
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !111, line: 312, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!114 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!115 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!116 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !118, line: 68, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!121 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!122 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!123 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !142, line: 15, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!145 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!146 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!147 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !149, line: 26, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!152 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!153 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !155, line: 2052, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!158 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !160, line: 54, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "USRQUOTA", value: 0)
!163 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!164 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !166, line: 65, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!169 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !171, line: 16, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "TT_NONE", value: 0)
!174 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!175 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !177, line: 51, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!180 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!181 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!182 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 10, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "false", value: 0)
!187 = !DIEnumerator(name: "true", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_obj_type", file: !189, line: 386, baseType: !25, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_ANY", value: -1)
!192 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_INODE", value: 0)
!193 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_VFSMOUNT", value: 1)
!194 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_SB", value: 2)
!195 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_COUNT", value: 3)
!196 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_DETACHED", value: 3)
!197 = !{!23, !198, !546, !4360, !4363, !2703, !42, !4364, !3151, !7, !4367, !769, !4370, !25}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dnotify_mark", file: !3, line: 51, size: 640, elements: !200)
!200 = !{!201, !4350}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_mark", scope: !199, file: !3, line: 52, baseType: !202, size: 576)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark", file: !189, line: 502, size: 576, elements: !203)
!203 = !{!204, !206, !212, !4344, !4345, !4346, !4347, !4348, !4349}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !202, file: !189, line: 504, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !202, file: !189, line: 507, baseType: !207, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !208, line: 113, baseType: !209)
!208 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !208, line: 111, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !209, file: !208, line: 112, baseType: !52, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !202, file: !189, line: 510, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_group", file: !189, line: 185, size: 1600, elements: !215)
!215 = !{!216, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4326, !4327, !4328}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !214, file: !189, line: 186, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_ops", file: !189, line: 155, size: 384, elements: !220)
!220 = !{!221, !4279, !4283, !4287, !4291, !4299}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "handle_event", scope: !219, file: !189, line: 156, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!25, !213, !225, !226, !25, !228, !344, !225, !4270}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !205)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !155, line: 641, size: 4800, elements: !230)
!230 = !{!231, !232, !233, !241, !242, !249, !250, !253, !254, !4208, !4209, !4210, !4211, !4212, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4252, !4255, !4256, !4257, !4266, !4267, !4268, !4269}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !229, file: !155, line: 642, baseType: !27, size: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !229, file: !155, line: 643, baseType: !29, size: 16, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !229, file: !155, line: 644, baseType: !234, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !235, line: 23, baseType: !236)
!235 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 21, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !236, file: !235, line: 22, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !229, file: !155, line: 645, baseType: !100, size: 128, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !229, file: !155, line: 646, baseType: !243, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !235, line: 28, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 26, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !244, file: !235, line: 27, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !229, file: !155, line: 647, baseType: !7, size: 32, offset: 224)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !229, file: !155, line: 650, baseType: !251, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !155, line: 607, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !229, file: !155, line: 651, baseType: !251, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !229, file: !155, line: 654, baseType: !255, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !155, line: 1966, size: 2048, align: 512, elements: !258)
!258 = !{!259, !4042, !4052, !4056, !4060, !4064, !4068, !4072, !4076, !4080, !4084, !4085, !4089, !4093, !4130, !4159, !4163, !4169, !4173, !4177, !4181, !4185, !4189, !4195, !4199}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !257, file: !155, line: 1967, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !228, !263, !7}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !265, line: 82, size: 1536, elements: !266)
!265 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!266 = !{!267, !268, !278, !286, !287, !305, !306, !310, !323, !4025, !4026, !4027, !4028, !4034, !4035, !4036}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !264, file: !265, line: 84, baseType: !7, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !264, file: !265, line: 85, baseType: !269, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !270, line: 275, baseType: !271)
!270 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !270, line: 275, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !271, file: !270, line: 275, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !270, line: 69, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !270, line: 64, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !275, file: !270, line: 65, baseType: !7, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !264, file: !265, line: 86, baseType: !279, size: 128, offset: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !280, line: 38, size: 128, elements: !281)
!280 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!281 = !{!282, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !280, line: 39, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !279, file: !280, line: 39, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !264, file: !265, line: 87, baseType: !263, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !264, file: !265, line: 88, baseType: !288, size: 128, offset: 256)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !265, line: 49, size: 128, elements: !289)
!289 = !{!290, !302}
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !265, line: 50, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !288, file: !265, line: 50, size: 64, elements: !292)
!292 = !{!293, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !265, line: 51, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !265, line: 51, size: 64, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !294, file: !265, line: 52, baseType: !225, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !294, file: !265, line: 52, baseType: !225, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !291, file: !265, line: 54, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !301)
!301 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !265, line: 56, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !264, file: !265, line: 89, baseType: !228, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !264, file: !265, line: 91, baseType: !307, size: 256, offset: 448)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !264, file: !265, line: 94, baseType: !311, size: 64, offset: 704)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !312, line: 25, size: 64, elements: !313)
!312 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 26, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 26, size: 64, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !315, file: !312, line: 28, baseType: !300, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !312, line: 30, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !312, line: 30, size: 64, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !319, file: !312, line: 31, baseType: !62, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !319, file: !312, line: 32, baseType: !25, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !264, file: !265, line: 95, baseType: !324, size: 64, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !265, line: 128, size: 1024, align: 512, elements: !327)
!327 = !{!328, !332, !333, !340, !346, !350, !354, !358, !359, !363, !368, !4015, !4019}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !326, file: !265, line: 129, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!25, !263, !7}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !326, file: !265, line: 130, baseType: !329, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !326, file: !265, line: 131, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!25, !337, !339}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !326, file: !265, line: 132, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!25, !337, !7, !19, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !326, file: !265, line: 134, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!25, !337}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !326, file: !265, line: 135, baseType: !351, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!25, !263}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !326, file: !265, line: 136, baseType: !355, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !263}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !326, file: !265, line: 137, baseType: !355, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !326, file: !265, line: 138, baseType: !360, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !263, !228}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !326, file: !265, line: 139, baseType: !364, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !263, !367, !25}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !326, file: !265, line: 140, baseType: !369, size: 64, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !4014}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !374, line: 70, size: 256, elements: !375)
!374 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!375 = !{!376, !377, !4010, !4011}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !373, file: !374, line: 71, baseType: !263, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !373, file: !374, line: 72, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !155, line: 1190, size: 10752, elements: !380)
!380 = !{!381, !382, !385, !386, !387, !388, !2345, !2477, !2517, !2602, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2619, !2623, !2624, !2627, !2630, !2633, !2636, !2637, !2638, !2679, !3925, !3926, !3927, !3928, !3929, !3930, !3951, !3953, !3960, !3961, !3962, !3963, !3964, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !379, file: !155, line: 1191, baseType: !100, size: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !379, file: !155, line: 1192, baseType: !383, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !225)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !379, file: !155, line: 1193, baseType: !90, size: 8, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !379, file: !155, line: 1194, baseType: !42, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !379, file: !155, line: 1195, baseType: !44, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !379, file: !155, line: 1196, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !155, line: 2366, size: 576, elements: !391)
!391 = !{!392, !393, !394, !400, !404, !408, !412, !2333, !2334, !2335, !2337, !2338, !2339, !2341, !2342, !2343, !2344}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !155, line: 2367, baseType: !19, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !390, file: !155, line: 2368, baseType: !25, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !390, file: !155, line: 2376, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!25, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !374, line: 21, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !390, file: !155, line: 2377, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !155, line: 75, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !390, file: !155, line: 2378, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!263, !389, !25, !19, !23}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !390, file: !155, line: 2380, baseType: !409, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !378}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !390, file: !155, line: 2381, baseType: !413, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !111, line: 402, size: 9216, align: 512, elements: !415)
!415 = !{!416, !417, !418, !422, !1990, !2016, !2017, !2018, !2019, !2023, !2026, !2027, !2028, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2096, !2100, !2120, !2138, !2139, !2140, !2141, !2150, !2173, !2174, !2177, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2191, !2192, !2291, !2299, !2300, !2301, !2303, !2307, !2308, !2312, !2313, !2314, !2315, !2317, !2318, !2319, !2326, !2327, !2328, !2332}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !111, line: 403, baseType: !110, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !414, file: !111, line: 406, baseType: !100, size: 128, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !111, line: 409, baseType: !419, size: 448, offset: 192)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 448, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 56)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !414, file: !111, line: 417, baseType: !423, size: 768, offset: 640)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !111, line: 45, size: 768, elements: !424)
!424 = !{!425, !1984, !1985, !1986, !1989}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !423, file: !111, line: 46, baseType: !426, size: 512)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !427, line: 64, size: 512, elements: !428)
!427 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!428 = !{!429, !430, !431, !433, !479, !1870, !1974, !1979, !1980, !1981, !1982, !1983}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !427, line: 65, baseType: !19, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !426, file: !427, line: 66, baseType: !100, size: 128, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !426, file: !427, line: 67, baseType: !432, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !426, file: !427, line: 68, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !427, line: 168, size: 768, elements: !436)
!436 = !{!437, !438, !439, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !435, file: !427, line: 169, baseType: !100, size: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !435, file: !427, line: 170, baseType: !62, size: 32, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !435, file: !427, line: 171, baseType: !426, size: 512, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !435, file: !427, line: 172, baseType: !441, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !427, line: 133, size: 192, elements: !444)
!444 = !{!445, !452, !457}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !443, file: !427, line: 134, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!25, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !427, line: 135, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!19, !450}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !443, file: !427, line: 136, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!25, !450, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !427, line: 125, size: 20736, elements: !464)
!464 = !{!465, !469, !473, !474, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !463, file: !427, line: 126, baseType: !466, size: 192)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 192, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 3)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !463, file: !427, line: 127, baseType: !470, size: 4096, offset: 192)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 4096, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !463, file: !427, line: 128, baseType: !25, size: 32, offset: 4288)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !463, file: !427, line: 129, baseType: !475, size: 16384, offset: 4320)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16384, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 2048)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !463, file: !427, line: 130, baseType: !25, size: 32, offset: 20704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !426, file: !427, line: 69, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !427, line: 116, size: 384, elements: !483)
!483 = !{!484, !488, !511, !1831, !1862, !1866}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !482, file: !427, line: 117, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !432}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !482, file: !427, line: 118, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !492, line: 254, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!493 = !{!494, !507}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !491, file: !492, line: 255, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !432, !502, !367}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !501)
!501 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !492, line: 30, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !492, line: 31, baseType: !19, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !503, file: !492, line: 32, baseType: !27, size: 16, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !491, file: !492, line: 256, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!498, !432, !502, !19, !38}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !482, file: !427, line: 119, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !492, line: 84, size: 320, elements: !516)
!516 = !{!517, !518, !522, !1827, !1829}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !492, line: 85, baseType: !19, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !515, file: !492, line: 86, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!27, !432, !502, !25}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !515, file: !492, line: 88, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!27, !432, !526, !25}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !492, line: 175, size: 512, elements: !528)
!528 = !{!529, !530, !531, !532, !1818, !1822, !1823}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !527, file: !492, line: 176, baseType: !503, size: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !492, line: 177, baseType: !38, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !527, file: !492, line: 178, baseType: !23, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !527, file: !492, line: 179, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !155, line: 472, size: 1536, align: 64, elements: !538)
!538 = !{!539, !540, !548, !570, !571, !572, !587, !588, !589, !1812, !1813, !1814, !1815, !1816, !1817}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !537, file: !155, line: 473, baseType: !228, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !537, file: !155, line: 474, baseType: !541, size: 128, offset: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !542, line: 296, size: 128, elements: !543)
!542 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!543 = !{!544, !545, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !541, file: !542, line: 297, baseType: !62, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !541, file: !542, line: 299, baseType: !546, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !541, file: !542, line: 300, baseType: !23, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !537, file: !155, line: 475, baseType: !549, size: 320, offset: 192)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !550, line: 48, size: 320, elements: !551)
!550 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!551 = !{!552, !561, !562, !567, !569}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !549, file: !550, line: 49, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !554, line: 13, baseType: !555)
!554 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !556, file: !28, line: 180, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !549, file: !550, line: 55, baseType: !553, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !549, file: !550, line: 57, baseType: !563, size: 32, offset: 128)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !564, line: 15, size: 32, elements: !565)
!564 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !563, file: !564, line: 20, baseType: !52, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !549, file: !550, line: 59, baseType: !568, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !549, file: !550, line: 60, baseType: !100, size: 128, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !537, file: !155, line: 476, baseType: !546, size: 32, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !537, file: !155, line: 477, baseType: !52, size: 32, offset: 544)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !537, file: !155, line: 482, baseType: !573, size: 128, offset: 576)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !574, line: 26, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!575 = !{!576, !586}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !573, file: !574, line: 27, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !574, line: 12, size: 64, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !577, file: !574, line: 13, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !574, line: 5, size: 192, align: 64, elements: !582)
!582 = !{!583, !584, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !581, file: !574, line: 6, baseType: !42, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !581, file: !574, line: 7, baseType: !580, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !581, file: !574, line: 8, baseType: !580, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !573, file: !574, line: 28, baseType: !580, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !537, file: !155, line: 483, baseType: !42, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !537, file: !155, line: 484, baseType: !42, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !537, file: !155, line: 485, baseType: !590, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !155, line: 404, size: 1280, elements: !593)
!593 = !{!594, !1668, !1738, !1742, !1746, !1752, !1757, !1761, !1766, !1770, !1774, !1778, !1779, !1783, !1787, !1791, !1796, !1800, !1807, !1808}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !592, file: !155, line: 405, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!25, !598, !1666}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !600)
!600 = !{!601, !602, !1660, !1665}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !126, line: 75, baseType: !42, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !126, line: 83, baseType: !603, size: 320, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !126, line: 83, size: 320, elements: !604)
!604 = !{!605, !626, !640, !644, !1659}
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !126, line: 84, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !126, line: 84, size: 320, elements: !607)
!607 = !{!608, !619, !620, !625}
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !126, line: 90, baseType: !609, size: 128)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !126, line: 90, size: 128, elements: !610)
!610 = !{!611, !612, !617, !618}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !609, file: !126, line: 91, baseType: !100, size: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !126, line: 94, baseType: !613, size: 128)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !126, line: 94, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !613, file: !126, line: 96, baseType: !23, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !613, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !609, file: !126, line: 102, baseType: !100, size: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !609, file: !126, line: 103, baseType: !100, size: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !606, file: !126, line: 106, baseType: !536, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !126, line: 107, baseType: !621, size: 64, offset: 192)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !126, line: 107, size: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !621, file: !126, line: 108, baseType: !42, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !621, file: !126, line: 109, baseType: !42, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !606, file: !126, line: 117, baseType: !42, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !126, line: 119, baseType: !627, size: 320)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !126, line: 119, size: 320, elements: !628)
!628 = !{!629, !630, !633, !634, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !627, file: !126, line: 124, baseType: !42, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !627, file: !126, line: 125, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !627, file: !126, line: 126, baseType: !42, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !627, file: !126, line: 127, baseType: !42, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !126, line: 128, baseType: !636, size: 64, offset: 256)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !627, file: !126, line: 128, size: 64, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !636, file: !126, line: 133, baseType: !42, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !636, file: !126, line: 138, baseType: !553, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !126, line: 141, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !126, line: 141, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !641, file: !126, line: 142, baseType: !42, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !126, line: 144, baseType: !645, size: 128)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !126, line: 144, size: 128, elements: !646)
!646 = !{!647, !1658}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !645, file: !126, line: 146, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !118, line: 126, size: 1216, elements: !650)
!650 = !{!651, !661, !692, !703, !704, !705, !706, !1640, !1641, !1642}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !649, file: !118, line: 127, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !118, line: 21, size: 384, elements: !653)
!653 = !{!654, !655, !657, !658, !659, !660}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !652, file: !118, line: 22, baseType: !42, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !652, file: !118, line: 23, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !652, file: !118, line: 24, baseType: !656, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !652, file: !118, line: 25, baseType: !42, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !652, file: !118, line: 26, baseType: !42, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !652, file: !118, line: 27, baseType: !42, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !649, file: !118, line: 128, baseType: !662, size: 128, offset: 384)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !663, line: 105, size: 128, elements: !664)
!663 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !662, file: !663, line: 110, baseType: !42, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !662, file: !663, line: 118, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !663, line: 95, size: 448, elements: !669)
!669 = !{!670, !671, !677, !678, !681, !682, !691}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !663, line: 96, baseType: !553, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !668, file: !663, line: 97, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !663, line: 60, baseType: !674)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !668, file: !663, line: 98, baseType: !672, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !668, file: !663, line: 99, baseType: !679, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !680)
!680 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !668, file: !663, line: 100, baseType: !679, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !663, line: 101, baseType: !683, size: 128, align: 64, offset: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !684)
!684 = !{!685, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !28, line: 233, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !683, file: !28, line: 234, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !686}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !668, file: !663, line: 102, baseType: !676, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !649, file: !118, line: 129, baseType: !693, size: 256, offset: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !694, line: 26, size: 256, elements: !695)
!694 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !693, file: !694, line: 27, baseType: !7, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !693, file: !694, line: 28, baseType: !698, size: 192, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !699, line: 43, size: 192, elements: !700)
!699 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !698, file: !699, line: 44, baseType: !568, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !698, file: !699, line: 45, baseType: !100, size: 128, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !118, line: 130, baseType: !117, size: 32, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !118, line: 131, baseType: !7, size: 32, offset: 800)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !649, file: !118, line: 132, baseType: !42, size: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !649, file: !118, line: 133, baseType: !707, size: 64, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !118, line: 77, size: 192, elements: !710)
!710 = !{!711, !715, !1636}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !709, file: !118, line: 83, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !598}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !709, file: !118, line: 89, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !722, line: 512, size: 896, elements: !723)
!722 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!723 = !{!724, !1603, !1604, !1611, !1618, !1628, !1629, !1630, !1632, !1634}
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !722, line: 513, baseType: !725, size: 320)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !721, file: !722, line: 513, size: 320, elements: !726)
!726 = !{!727, !1599, !1600, !1601, !1602}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !725, file: !722, line: 514, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !730)
!730 = !{!731, !740, !1504, !1510, !1517, !1518, !1523, !1524, !1529, !1530, !1533, !1592, !1593, !1594, !1595, !1596, !1597}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !126, line: 628, baseType: !732, size: 128)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !126, line: 628, size: 128, elements: !733)
!733 = !{!734, !739}
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !126, line: 629, baseType: !735, size: 128)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !732, file: !126, line: 629, size: 128, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !735, file: !126, line: 631, baseType: !42, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !735, file: !126, line: 632, baseType: !42, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !732, file: !126, line: 635, baseType: !683, size: 128, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !729, file: !126, line: 639, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !743)
!743 = !{!744, !1502}
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !126, line: 734, baseType: !745, size: 10240)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !126, line: 734, size: 10240, elements: !746)
!746 = !{!747, !751, !765, !1377, !1378, !1379, !1380, !1381, !1382, !1391, !1392, !1393, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1432, !1434, !1437, !1482, !1483, !1484, !1487, !1488, !1489, !1492, !1493, !1494, !1500, !1501}
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !126, line: 739, baseType: !748, size: 512, align: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !126, line: 739, size: 512, align: 512, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !748, file: !126, line: 747, baseType: !52, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !745, file: !126, line: 750, baseType: !752, size: 128, offset: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !753, line: 218, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!754 = !{!755, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !753, line: 219, baseType: !756, size: 32)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !753, line: 219, size: 32, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !756, file: !753, line: 220, baseType: !62, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !756, file: !753, line: 221, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !753, line: 197, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 197, elements: !762)
!762 = !{}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !752, file: !753, line: 223, baseType: !7, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !752, file: !753, line: 224, baseType: !23, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !745, file: !126, line: 752, baseType: !766, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!42, !769, !42, !42, !42, !42}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !155, line: 994, size: 1856, align: 64, elements: !771)
!771 = !{!772, !783, !784, !786, !787, !795, !796, !797, !858, !1187, !1196, !1202, !1203, !1367, !1368, !1369, !1370, !1372, !1373, !1376}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !155, line: 995, baseType: !773, size: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !155, line: 995, size: 128, elements: !774)
!774 = !{!775, !781, !782}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !773, file: !155, line: 996, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !777, line: 60, size: 64, elements: !778)
!777 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !777, line: 61, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !773, file: !155, line: 997, baseType: !683, size: 128, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !773, file: !155, line: 998, baseType: !7, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !770, file: !155, line: 1005, baseType: !62, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !770, file: !155, line: 1006, baseType: !785, size: 32, offset: 160)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !770, file: !155, line: 1007, baseType: !553, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !770, file: !155, line: 1008, baseType: !788, size: 256, offset: 256)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !789, line: 66, size: 256, elements: !790)
!789 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !788, file: !789, line: 67, baseType: !553, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !788, file: !789, line: 68, baseType: !568, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !788, file: !789, line: 70, baseType: !563, size: 32, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !788, file: !789, line: 72, baseType: !100, size: 128, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !770, file: !155, line: 1009, baseType: !44, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !770, file: !155, line: 1010, baseType: !7, size: 32, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !770, file: !155, line: 1011, baseType: !798, size: 256, offset: 640)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !155, line: 948, size: 256, elements: !799)
!799 = !{!800, !821, !854, !855, !856, !857}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !155, line: 949, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !802, line: 34, baseType: !803)
!802 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !802, line: 25, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !803, file: !802, line: 26, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !807, line: 27, baseType: !808)
!807 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !807, line: 13, size: 64, elements: !809)
!809 = !{!810, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !807, line: 14, baseType: !811, size: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !807, line: 14, size: 32, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !811, file: !807, line: 15, baseType: !52, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !807, line: 16, baseType: !815, size: 32)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !807, line: 16, size: 32, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !815, file: !807, line: 18, baseType: !86, size: 8)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !815, file: !807, line: 19, baseType: !819, size: 24, offset: 8)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !467)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !808, file: !807, line: 26, baseType: !74, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !798, file: !155, line: 950, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !824)
!824 = !{!825, !826, !827, !828, !841, !842, !843, !844}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !823, file: !6, line: 61, baseType: !207, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !823, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !823, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !823, file: !6, line: 65, baseType: !829, size: 256, offset: 128)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 256, elements: !839)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !830, file: !28, line: 195, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !834, file: !28, line: 199, baseType: !833, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !834, file: !28, line: 199, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!839 = !{!840}
!840 = !DISubrange(count: 4)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !823, file: !6, line: 66, baseType: !830, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !823, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !823, file: !6, line: 69, baseType: !683, size: 128, align: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !823, file: !6, line: 70, baseType: !845, offset: 768)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, elements: !852)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !846, file: !6, line: 55, baseType: !25, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !846, file: !6, line: 56, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!852 = !{!853}
!853 = !DISubrange(count: -1)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !798, file: !155, line: 951, baseType: !5, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !798, file: !155, line: 952, baseType: !234, size: 32, offset: 160)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !798, file: !155, line: 952, baseType: !234, size: 32, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !798, file: !155, line: 953, baseType: !25, size: 32, offset: 224)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !770, file: !155, line: 1012, baseType: !859, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !862, line: 110, size: 1472, elements: !863)
!862 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !880, !881, !882, !883, !884, !885, !998, !999, !1000, !1001, !1002, !1033, !1173, !1174, !1182}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !861, file: !862, line: 111, baseType: !553, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !861, file: !862, line: 112, baseType: !234, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !861, file: !862, line: 113, baseType: !243, size: 32, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !861, file: !862, line: 114, baseType: !234, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !861, file: !862, line: 115, baseType: !243, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !861, file: !862, line: 116, baseType: !234, size: 32, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !861, file: !862, line: 117, baseType: !243, size: 32, offset: 224)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !861, file: !862, line: 118, baseType: !234, size: 32, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !861, file: !862, line: 119, baseType: !243, size: 32, offset: 288)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !861, file: !862, line: 120, baseType: !7, size: 32, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !861, file: !862, line: 121, baseType: !875, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !876, line: 24, baseType: !877)
!876 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !876, line: 24, size: 64, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !877, file: !876, line: 24, baseType: !299, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !861, file: !862, line: 122, baseType: !875, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !861, file: !862, line: 123, baseType: !875, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !861, file: !862, line: 124, baseType: !875, size: 64, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !861, file: !862, line: 125, baseType: !875, size: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !861, file: !862, line: 127, baseType: !90, size: 8, offset: 704)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !861, file: !862, line: 129, baseType: !886, size: 64, offset: 768)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !888, line: 195, size: 1728, elements: !889)
!888 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!889 = !{!890, !891, !896, !901, !902, !905, !906, !913, !914, !915, !916, !919, !920, !921, !923, !924, !962, !983}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !887, file: !888, line: 196, baseType: !207, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !887, file: !888, line: 197, baseType: !892, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !888, line: 28, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 198, baseType: !897, size: 192, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 198, size: 192, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !897, file: !888, line: 199, baseType: !100, size: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !897, file: !888, line: 200, baseType: !581, size: 192, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !887, file: !888, line: 205, baseType: !549, size: 320, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !887, file: !888, line: 206, baseType: !903, size: 64, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !888, line: 206, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !887, file: !888, line: 207, baseType: !23, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 208, baseType: !907, size: 64, offset: 704)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 208, size: 64, elements: !908)
!908 = !{!909, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !907, file: !888, line: 209, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !911, line: 8, baseType: !560)
!911 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !907, file: !888, line: 210, baseType: !910, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !887, file: !888, line: 212, baseType: !910, size: 64, offset: 768)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !887, file: !888, line: 213, baseType: !234, size: 32, offset: 832)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !887, file: !888, line: 214, baseType: !243, size: 32, offset: 864)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !887, file: !888, line: 215, baseType: !917, size: 32, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !888, line: 31, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !225)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !887, file: !888, line: 216, baseType: !29, size: 16, offset: 928)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !887, file: !888, line: 217, baseType: !29, size: 16, offset: 944)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !887, file: !888, line: 221, baseType: !922, size: 16, offset: 960)
!922 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !888, line: 228, baseType: !42, size: 64, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 245, baseType: !925, size: 320, offset: 1088)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 245, size: 320, elements: !926)
!926 = !{!927, !954}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !925, file: !888, line: 246, baseType: !928, size: 320)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !888, line: 114, size: 320, elements: !929)
!929 = !{!930, !931, !943, !946, !953}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !928, file: !888, line: 116, baseType: !42, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !888, line: 117, baseType: !932, size: 64, offset: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !888, line: 117, size: 64, elements: !933)
!933 = !{!934, !942}
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !888, line: 118, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !888, line: 118, size: 64, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !935, file: !888, line: 120, baseType: !96, size: 16)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !935, file: !888, line: 121, baseType: !939, size: 48, offset: 16)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 6)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !932, file: !888, line: 127, baseType: !42, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !928, file: !888, line: 129, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !888, line: 102, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !928, file: !888, line: 130, baseType: !947, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !888, line: 108, size: 192, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !948, file: !888, line: 109, baseType: !683, size: 128, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !948, file: !888, line: 110, baseType: !207, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !948, file: !888, line: 111, baseType: !679, size: 8, offset: 160)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !928, file: !888, line: 131, baseType: !19, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !888, line: 247, baseType: !955, size: 320)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !888, line: 247, size: 320, elements: !956)
!956 = !{!957, !958, !959, !960, !961}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !955, file: !888, line: 248, baseType: !42, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !955, file: !888, line: 249, baseType: !42, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !955, file: !888, line: 250, baseType: !944, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !955, file: !888, line: 251, baseType: !947, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !955, file: !888, line: 252, baseType: !367, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 260, baseType: !963, size: 256, offset: 1408)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 260, size: 256, elements: !964)
!964 = !{!965, !971}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !963, file: !888, line: 261, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !888, line: 134, size: 256, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !966, file: !888, line: 135, baseType: !23, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !966, file: !888, line: 136, baseType: !970, size: 256)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !839)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !888, line: 262, baseType: !972, size: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !888, line: 262, size: 256, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !972, file: !888, line: 264, baseType: !100, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !972, file: !888, line: 265, baseType: !976, size: 128, offset: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !977, line: 22, size: 128, elements: !978)
!977 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!978 = !{!979, !982}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !976, file: !977, line: 23, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !977, line: 23, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !976, file: !977, line: 24, baseType: !42, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !887, file: !888, line: 280, baseType: !984, size: 64, offset: 1664)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !888, line: 176, size: 192, elements: !986)
!986 = !{!987, !996, !997}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !985, file: !888, line: 177, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !888, line: 171, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!25, !886, !992, !994, !886}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !985, file: !888, line: 178, baseType: !886, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !985, file: !888, line: 179, baseType: !944, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !861, file: !862, line: 130, baseType: !886, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !861, file: !862, line: 131, baseType: !886, size: 64, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !861, file: !862, line: 132, baseType: !886, size: 64, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !861, file: !862, line: 135, baseType: !23, size: 64, offset: 1024)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !861, file: !862, line: 137, baseType: !1003, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1005, line: 14, size: 1088, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1006 = !{!1007, !1008, !1017, !1018, !1019, !1020, !1021, !1022}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1004, file: !1005, line: 15, baseType: !207, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1004, file: !1005, line: 17, baseType: !1009, size: 320, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1010, line: 22, size: 320, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1011 = !{!1012, !1013, !1014, !1015}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1009, file: !1010, line: 23, baseType: !568, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1009, file: !1010, line: 24, baseType: !559, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1009, file: !1010, line: 26, baseType: !100, size: 128, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1009, file: !1010, line: 28, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1004, file: !1005, line: 19, baseType: !42, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1004, file: !1005, line: 20, baseType: !553, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1004, file: !1005, line: 23, baseType: !834, size: 128, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1004, file: !1005, line: 24, baseType: !234, size: 32, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1004, file: !1005, line: 29, baseType: !553, size: 64, offset: 704)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1004, file: !1005, line: 36, baseType: !1023, size: 320, offset: 768)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1024, line: 15, size: 320, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1023, file: !1024, line: 16, baseType: !568, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1023, file: !1024, line: 18, baseType: !25, size: 32, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1023, file: !1024, line: 19, baseType: !25, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1023, file: !1024, line: 20, baseType: !25, size: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1023, file: !1024, line: 21, baseType: !25, size: 32, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1023, file: !1024, line: 22, baseType: !42, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !1024, line: 23, baseType: !42, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !861, file: !862, line: 138, baseType: !1034, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1036, line: 68, size: 4800, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1037 = !{!1038, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1077, !1078, !1079, !1080, !1081, !1082, !1094, !1154, !1155, !1169, !1171}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1035, file: !1036, line: 69, baseType: !1039, size: 576)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1036, line: 23, size: 576, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1039, file: !1036, line: 24, baseType: !225, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !1036, line: 25, baseType: !1043, size: 512, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !1036, line: 25, size: 512, elements: !1044)
!1044 = !{!1045, !1054}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1043, file: !1036, line: 26, baseType: !1046, size: 480)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 480, elements: !1052)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1036, line: 17, size: 96, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1047, file: !1036, line: 18, baseType: !225, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1047, file: !1036, line: 19, baseType: !225, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1047, file: !1036, line: 20, baseType: !225, size: 32, offset: 64)
!1052 = !{!1053}
!1053 = !DISubrange(count: 5)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !1036, line: 27, baseType: !1055, size: 128)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1036, line: 27, size: 128, elements: !1056)
!1056 = !{!1057, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1055, file: !1036, line: 28, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1055, file: !1036, line: 29, baseType: !1058, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1035, file: !1036, line: 70, baseType: !1039, size: 576, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1035, file: !1036, line: 71, baseType: !1039, size: 576, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1035, file: !1036, line: 72, baseType: !1034, size: 64, offset: 1728)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1035, file: !1036, line: 73, baseType: !25, size: 32, offset: 1792)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1035, file: !1036, line: 74, baseType: !234, size: 32, offset: 1824)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1035, file: !1036, line: 75, baseType: !243, size: 32, offset: 1856)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1035, file: !1036, line: 76, baseType: !1067, size: 192, offset: 1920)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1068, line: 9, size: 192, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1069 = !{!1070, !1071, !1075, !1076}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1067, file: !1068, line: 10, baseType: !553, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1067, file: !1068, line: 11, baseType: !1072, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1068, line: 7, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1067, file: !1068, line: 12, baseType: !7, size: 32, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1067, file: !1068, line: 13, baseType: !207, size: 32, offset: 160)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !1036, line: 77, baseType: !42, size: 64, offset: 2112)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1035, file: !1036, line: 80, baseType: !679, size: 8, offset: 2176)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1035, file: !1036, line: 88, baseType: !100, size: 128, offset: 2240)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1035, file: !1036, line: 89, baseType: !886, size: 64, offset: 2368)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1035, file: !1036, line: 90, baseType: !549, size: 320, offset: 2432)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1035, file: !1036, line: 97, baseType: !1083, size: 256, offset: 2752)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1084, line: 98, size: 256, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1083, file: !1084, line: 99, baseType: !553, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1083, file: !1084, line: 100, baseType: !100, size: 128, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1083, file: !1084, line: 101, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1084, line: 21, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1035, file: !1036, line: 99, baseType: !1095, size: 768, offset: 3008)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !1096)
!1096 = !{!1097, !1102}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1095, file: !15, line: 200, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!25, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1095, file: !15, line: 201, baseType: !1103, size: 704, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !1104)
!1104 = !{!1105, !1153}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1103, file: !15, line: 195, baseType: !1106, size: 640)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !1107)
!1107 = !{!1108, !1120, !1122, !1123, !1143, !1144, !1146, !1152}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !15, line: 174, baseType: !1109, size: 192)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !15, line: 174, size: 192, elements: !1110)
!1110 = !{!1111, !1119}
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !15, line: 175, baseType: !1112, size: 192)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !15, line: 175, size: 192, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1112, file: !15, line: 176, baseType: !36, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1112, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1112, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1112, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1112, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1109, file: !15, line: 182, baseType: !683, size: 128, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1106, file: !15, line: 184, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1106, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1106, file: !15, line: 186, baseType: !1124, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !1126)
!1126 = !{!1127, !1128, !1132, !1139}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1125, file: !15, line: 205, baseType: !1095, size: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1125, file: !15, line: 206, baseType: !1129, size: 64, offset: 768)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1101, !1124}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1125, file: !15, line: 207, baseType: !1133, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1125, file: !15, line: 209, baseType: !1140, size: 64, offset: 896)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!25, !1136, !36}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1106, file: !15, line: 187, baseType: !1101, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1106, file: !15, line: 188, baseType: !1145, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1106, file: !15, line: 189, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1148, file: !15, line: 158, baseType: !581, size: 192, align: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1148, file: !15, line: 159, baseType: !1136, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1106, file: !15, line: 190, baseType: !830, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1103, file: !15, line: 196, baseType: !577, size: 64, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1035, file: !1036, line: 100, baseType: !1136, size: 64, offset: 3776)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1035, file: !1036, line: 102, baseType: !1156, size: 64, offset: 3840)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1036, line: 107, size: 1152, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1167}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1157, file: !1036, line: 108, baseType: !834, size: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1157, file: !1036, line: 109, baseType: !1034, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1157, file: !1036, line: 110, baseType: !234, size: 32, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1157, file: !1036, line: 111, baseType: !52, size: 32, offset: 224)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1157, file: !1036, line: 112, baseType: !1164, size: 640, offset: 256)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 640, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 10)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1157, file: !1036, line: 113, baseType: !1168, size: 256, offset: 896)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 256, elements: !839)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1035, file: !1036, line: 103, baseType: !1170, size: 640, offset: 3904)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 640, elements: !1165)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1035, file: !1036, line: 104, baseType: !1172, size: 256, offset: 4544)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !839)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !861, file: !862, line: 139, baseType: !1156, size: 64, offset: 1216)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !861, file: !862, line: 140, baseType: !1175, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !862, line: 25, size: 64, elements: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1176, file: !862, line: 26, baseType: !52, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1176, file: !862, line: 27, baseType: !25, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1176, file: !862, line: 28, baseType: !1181, offset: 64)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !852)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !862, line: 142, baseType: !1183, size: 128, offset: 1344)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !862, line: 142, size: 128, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1183, file: !862, line: 143, baseType: !25, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1183, file: !862, line: 144, baseType: !683, size: 128, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !770, file: !155, line: 1013, baseType: !1188, size: 256, offset: 960)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !155, line: 970, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1188, file: !155, line: 971, baseType: !42, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1188, file: !155, line: 972, baseType: !7, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1188, file: !155, line: 973, baseType: !7, size: 32, offset: 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1188, file: !155, line: 974, baseType: !7, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1188, file: !155, line: 975, baseType: !7, size: 32, offset: 160)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1188, file: !155, line: 976, baseType: !44, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !770, file: !155, line: 1014, baseType: !1197, size: 128, offset: 1216)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1198, line: 8, size: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1197, file: !1198, line: 9, baseType: !372, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1197, file: !1198, line: 10, baseType: !263, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !770, file: !155, line: 1015, baseType: !228, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !770, file: !155, line: 1016, baseType: !1204, size: 64, offset: 1408)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !155, line: 1914, size: 2112, elements: !1207)
!1207 = !{!1208, !1209, !1213, !1217, !1221, !1249, !1250, !1256, !1269, !1277, !1281, !1282, !1286, !1287, !1291, !1296, !1297, !1301, !1305, !1311, !1312, !1316, !1317, !1324, !1328, !1332, !1338, !1342, !1348, !1352, !1356, !1357, !1363}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1206, file: !155, line: 1915, baseType: !413, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1206, file: !155, line: 1916, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!44, !769, !44, !25}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1206, file: !155, line: 1917, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!498, !769, !367, !38, !43}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1206, file: !155, line: 1918, baseType: !1218, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!498, !769, !19, !38, !43}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1206, file: !155, line: 1919, baseType: !1222, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!498, !1225, !1247}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !155, line: 373, size: 384, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1234, !1235, !1236, !1237}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1226, file: !155, line: 374, baseType: !769, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1226, file: !155, line: 375, baseType: !44, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1226, file: !155, line: 376, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1225, !501}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1226, file: !155, line: 377, baseType: !23, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1226, file: !155, line: 378, baseType: !25, size: 32, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1226, file: !155, line: 379, baseType: !96, size: 16, offset: 288)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !155, line: 380, baseType: !1238, size: 64, offset: 320)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !155, line: 380, size: 64, elements: !1239)
!1239 = !{!1240, !1243}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1238, file: !155, line: 386, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !155, line: 386, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1238, file: !155, line: 395, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!498, !23}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !155, line: 69, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1206, file: !155, line: 1920, baseType: !1222, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1206, file: !155, line: 1921, baseType: !1251, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!25, !1225, !1254, !7}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !155, line: 53, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1206, file: !155, line: 1923, baseType: !1257, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!25, !769, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !155, line: 1858, size: 128, elements: !1262)
!1262 = !{!1263, !1268}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1261, file: !155, line: 1859, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !155, line: 1855, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!679, !1260, !19, !25, !44, !299, !7}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1261, file: !155, line: 1860, baseType: !44, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1206, file: !155, line: 1924, baseType: !1270, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1273, !769, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1274, line: 59, baseType: !7)
!1274 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !155, line: 61, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1206, file: !155, line: 1925, baseType: !1278, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!501, !769, !7, !42}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1206, file: !155, line: 1926, baseType: !1278, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1206, file: !155, line: 1927, baseType: !1283, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!25, !769, !728}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1206, file: !155, line: 1928, baseType: !42, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1206, file: !155, line: 1929, baseType: !1288, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!25, !228, !769}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1206, file: !155, line: 1930, baseType: !1292, size: 64, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!25, !769, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !155, line: 1061, baseType: !23)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1206, file: !155, line: 1931, baseType: !1288, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1206, file: !155, line: 1932, baseType: !1298, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!25, !769, !44, !44, !25}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1206, file: !155, line: 1933, baseType: !1302, size: 64, offset: 1088)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!25, !25, !769, !25}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1206, file: !155, line: 1934, baseType: !1306, size: 64, offset: 1152)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!25, !769, !25, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !155, line: 1063, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1206, file: !155, line: 1935, baseType: !766, size: 64, offset: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1206, file: !155, line: 1936, baseType: !1313, size: 64, offset: 1280)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!25, !25}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1206, file: !155, line: 1937, baseType: !1306, size: 64, offset: 1344)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1206, file: !155, line: 1938, baseType: !1318, size: 64, offset: 1408)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!498, !1321, !769, !43, !38, !7}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1323, line: 59, flags: DIFlagFwdDecl)
!1323 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1206, file: !155, line: 1939, baseType: !1325, size: 64, offset: 1472)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!498, !769, !43, !1321, !38, !7}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1206, file: !155, line: 1940, baseType: !1329, size: 64, offset: 1536)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !769}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1206, file: !155, line: 1941, baseType: !1333, size: 64, offset: 1600)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!25, !769, !25, !1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1206, file: !155, line: 1942, baseType: !1339, size: 64, offset: 1664)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!501, !769, !25, !44, !44}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1206, file: !155, line: 1944, baseType: !1343, size: 64, offset: 1728)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346, !769}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1323, line: 66, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1206, file: !155, line: 1948, baseType: !1349, size: 64, offset: 1792)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!498, !769, !44, !769, !44, !38, !7}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1206, file: !155, line: 1950, baseType: !1353, size: 64, offset: 1856)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!44, !769, !44, !769, !44, !44, !7}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1206, file: !155, line: 1953, baseType: !1298, size: 64, offset: 1920)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1206, file: !155, line: 1954, baseType: !1358, size: 64, offset: 1984)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!25, !1361, !7}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !155, line: 1911, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1206, file: !155, line: 1955, baseType: !1364, size: 64, offset: 2048)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!25, !1361, !1254, !7}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !770, file: !155, line: 1018, baseType: !299, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !770, file: !155, line: 1020, baseType: !23, size: 64, offset: 1536)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !770, file: !155, line: 1023, baseType: !23, size: 64, offset: 1600)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !770, file: !155, line: 1027, baseType: !1371, size: 64, offset: 1664)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !770, file: !155, line: 1029, baseType: !536, size: 64, offset: 1728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !770, file: !155, line: 1030, baseType: !1374, size: 32, offset: 1792)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1375, line: 8, baseType: !225)
!1375 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !770, file: !155, line: 1031, baseType: !1374, size: 32, offset: 1824)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !745, file: !126, line: 756, baseType: !42, size: 64, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !745, file: !126, line: 757, baseType: !42, size: 64, offset: 768)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !745, file: !126, line: 760, baseType: !42, size: 64, offset: 832)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !745, file: !126, line: 761, baseType: !42, size: 64, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !745, file: !126, line: 763, baseType: !42, size: 64, offset: 960)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !745, file: !126, line: 764, baseType: !1383, size: 64, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1385, line: 299, baseType: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1385, line: 299, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1386, file: !1385, line: 299, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1390, line: 18, baseType: !42)
!1390 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !745, file: !126, line: 773, baseType: !52, size: 32, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !745, file: !126, line: 785, baseType: !52, size: 32, offset: 1120)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !745, file: !126, line: 795, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1395, file: !126, line: 727, baseType: !299, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1395, file: !126, line: 728, baseType: !25, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !745, file: !126, line: 801, baseType: !42, size: 64, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !745, file: !126, line: 804, baseType: !553, size: 64, offset: 1280)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !745, file: !126, line: 806, baseType: !25, size: 32, offset: 1344)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !745, file: !126, line: 808, baseType: !62, size: 32, offset: 1376)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !745, file: !126, line: 823, baseType: !549, size: 320, offset: 1408)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !745, file: !126, line: 825, baseType: !100, size: 128, offset: 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !745, file: !126, line: 845, baseType: !25, size: 32, offset: 1856)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !745, file: !126, line: 849, baseType: !42, size: 64, offset: 1920)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !745, file: !126, line: 850, baseType: !42, size: 64, offset: 1984)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !745, file: !126, line: 852, baseType: !42, size: 64, offset: 2048)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !745, file: !126, line: 853, baseType: !42, size: 64, offset: 2112)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !745, file: !126, line: 854, baseType: !555, size: 64, offset: 2176)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !745, file: !126, line: 855, baseType: !42, size: 64, offset: 2240)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !745, file: !126, line: 856, baseType: !42, size: 64, offset: 2304)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !745, file: !126, line: 857, baseType: !42, size: 64, offset: 2368)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !745, file: !126, line: 858, baseType: !42, size: 64, offset: 2432)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !745, file: !126, line: 865, baseType: !274, size: 32, offset: 2496)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !745, file: !126, line: 867, baseType: !62, size: 32, offset: 2528)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !745, file: !126, line: 869, baseType: !42, size: 64, offset: 2560)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !745, file: !126, line: 869, baseType: !42, size: 64, offset: 2624)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !745, file: !126, line: 869, baseType: !42, size: 64, offset: 2688)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !745, file: !126, line: 869, baseType: !42, size: 64, offset: 2752)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !745, file: !126, line: 870, baseType: !42, size: 64, offset: 2816)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !745, file: !126, line: 870, baseType: !42, size: 64, offset: 2880)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !745, file: !126, line: 870, baseType: !42, size: 64, offset: 2944)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !745, file: !126, line: 871, baseType: !42, size: 64, offset: 3008)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !745, file: !126, line: 871, baseType: !42, size: 64, offset: 3072)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !745, file: !126, line: 871, baseType: !42, size: 64, offset: 3136)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !745, file: !126, line: 871, baseType: !42, size: 64, offset: 3200)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !745, file: !126, line: 873, baseType: !1429, size: 3328, offset: 3264)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 52)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !745, file: !126, line: 875, baseType: !1433, size: 1280, offset: 6592)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 1280, elements: !839)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !745, file: !126, line: 877, baseType: !1435, size: 64, offset: 7872)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !745, file: !126, line: 880, baseType: !1438, size: 1088, offset: 7936)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1439, line: 72, baseType: !1440)
!1439 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1439, line: 23, size: 1088, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1449, !1450, !1451, !1452, !1477, !1478, !1479}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1440, file: !1439, line: 28, baseType: !299, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1440, file: !1439, line: 38, baseType: !555, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1440, file: !1439, line: 40, baseType: !42, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1440, file: !1439, line: 43, baseType: !549, size: 320, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1440, file: !1439, line: 44, baseType: !1447, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1439, line: 44, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1439, line: 48, baseType: !42, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !1439, line: 59, baseType: !788, size: 256, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1440, file: !1439, line: 60, baseType: !23, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1440, file: !1439, line: 61, baseType: !1453, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1456, line: 13, size: 1216, elements: !1457)
!1456 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1455, file: !1456, line: 14, baseType: !23, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1455, file: !1456, line: 15, baseType: !42, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1455, file: !1456, line: 17, baseType: !42, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1455, file: !1456, line: 17, baseType: !42, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1455, file: !1456, line: 18, baseType: !42, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1455, file: !1456, line: 18, baseType: !42, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1455, file: !1456, line: 19, baseType: !226, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1455, file: !1456, line: 21, baseType: !501, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1455, file: !1456, line: 23, baseType: !501, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1455, file: !1456, line: 24, baseType: !501, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1455, file: !1456, line: 25, baseType: !501, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1455, file: !1456, line: 26, baseType: !501, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1455, file: !1456, line: 27, baseType: !501, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1455, file: !1456, line: 28, baseType: !501, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1455, file: !1456, line: 29, baseType: !501, size: 64, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1455, file: !1456, line: 30, baseType: !501, size: 64, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1455, file: !1456, line: 31, baseType: !501, size: 64, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1455, file: !1456, line: 32, baseType: !501, size: 64, offset: 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1455, file: !1456, line: 33, baseType: !501, size: 64, offset: 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1440, file: !1439, line: 63, baseType: !52, size: 32, offset: 1024)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1440, file: !1439, line: 69, baseType: !96, size: 16, offset: 1056)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1440, file: !1439, line: 70, baseType: !1480, size: 16, offset: 1072)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !922)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !126, line: 882, baseType: !42, size: 64, offset: 9024)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !745, file: !126, line: 885, baseType: !62, size: 32, offset: 9088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !745, file: !126, line: 886, baseType: !1485, size: 64, offset: 9152)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !745, file: !126, line: 901, baseType: !1034, size: 64, offset: 9216)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !745, file: !126, line: 904, baseType: !769, size: 64, offset: 9280)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !745, file: !126, line: 906, baseType: !1490, size: 64, offset: 9344)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !745, file: !126, line: 930, baseType: !52, size: 32, offset: 9408)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !745, file: !126, line: 933, baseType: !52, size: 32, offset: 9440)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !745, file: !126, line: 935, baseType: !1495, size: 64, offset: 9472)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !177, line: 103, size: 64, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1495, file: !177, line: 104, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !177, line: 101, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !745, file: !126, line: 940, baseType: !553, size: 64, offset: 9536)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !745, file: !126, line: 942, baseType: !1083, size: 256, offset: 9600)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !742, file: !126, line: 986, baseType: !1503, offset: 10240)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !852)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !729, file: !126, line: 640, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1385, line: 297, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1385, line: 297, size: 64, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1506, file: !1385, line: 297, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1390, line: 19, baseType: !42)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !126, line: 646, baseType: !1511, size: 64, offset: 256)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !126, line: 646, size: 64, elements: !1512)
!1512 = !{!1513, !1516}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1511, file: !126, line: 647, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !42)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1511, file: !126, line: 648, baseType: !1515, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !729, file: !126, line: 666, baseType: !25, size: 32, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !729, file: !126, line: 667, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1520, file: !126, line: 580, baseType: !549, size: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !729, file: !126, line: 670, baseType: !679, size: 8, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !729, file: !126, line: 681, baseType: !1525, size: 256, offset: 512)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !126, line: 678, size: 256, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1525, file: !126, line: 679, baseType: !581, size: 192, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1525, file: !126, line: 680, baseType: !42, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !729, file: !126, line: 689, baseType: !100, size: 128, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !729, file: !126, line: 691, baseType: !1531, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !729, file: !126, line: 694, baseType: !1534, size: 64, offset: 960)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !722, line: 563, size: 1024, elements: !1537)
!1537 = !{!1538, !1542, !1543, !1547, !1551, !1555, !1556, !1560, !1564, !1568, !1569, !1570, !1574, !1578, !1584, !1588}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1536, file: !722, line: 564, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !728}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1536, file: !722, line: 569, baseType: !1539, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1536, file: !722, line: 571, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!25, !728, !42}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1536, file: !722, line: 572, baseType: !1548, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!25, !728}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1536, file: !722, line: 578, baseType: !1552, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!25, !728, !42, !42, !42}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1536, file: !722, line: 580, baseType: !716, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1536, file: !722, line: 581, baseType: !1557, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!719, !720, !7}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1536, file: !722, line: 582, baseType: !1561, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!719, !720, !42, !42}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1536, file: !722, line: 584, baseType: !1565, size: 64, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!42, !728}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1536, file: !722, line: 588, baseType: !716, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1536, file: !722, line: 591, baseType: !716, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1536, file: !722, line: 597, baseType: !1571, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!25, !728, !42, !23, !25, !25}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1536, file: !722, line: 603, baseType: !1575, size: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!19, !728}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1536, file: !722, line: 613, baseType: !1579, size: 64, offset: 832)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!25, !728, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !126, line: 717, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1536, file: !722, line: 625, baseType: !1585, size: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1582, !728, !42}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1536, file: !722, line: 633, baseType: !1589, size: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!598, !728, !42}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !729, file: !126, line: 697, baseType: !42, size: 64, offset: 1024)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !729, file: !126, line: 699, baseType: !769, size: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !729, file: !126, line: 700, baseType: !23, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !729, file: !126, line: 711, baseType: !553, size: 64, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !729, file: !126, line: 717, baseType: !1582, size: 64, offset: 1280)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !729, file: !126, line: 722, baseType: !1598, offset: 1344)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !762)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !725, file: !722, line: 515, baseType: !546, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !725, file: !722, line: 516, baseType: !42, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !725, file: !722, line: 517, baseType: !42, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !725, file: !722, line: 518, baseType: !42, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !722, line: 520, baseType: !125, size: 32, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !721, file: !722, line: 522, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1390, line: 22, baseType: !1607)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1390, line: 22, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1607, file: !1390, line: 22, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1390, line: 15, baseType: !42)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !721, file: !722, line: 524, baseType: !1612, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1385, line: 372, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1385, line: 372, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1614, file: !1385, line: 372, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1390, line: 16, baseType: !42)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !722, line: 527, baseType: !1619, size: 64, offset: 512)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !722, line: 527, size: 64, elements: !1620)
!1620 = !{!1621, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1619, file: !722, line: 528, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1390, line: 21, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1390, line: 21, size: 64, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1623, file: !1390, line: 21, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1390, line: 14, baseType: !42)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1619, file: !722, line: 529, baseType: !1606, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !721, file: !722, line: 534, baseType: !598, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !721, file: !722, line: 535, baseType: !598, size: 64, offset: 640)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !721, file: !722, line: 541, baseType: !1631, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !721, file: !722, line: 545, baseType: !1633, size: 64, offset: 768)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !721, file: !722, line: 549, baseType: !1635, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1385, line: 520, baseType: !598)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !709, file: !118, line: 100, baseType: !1637, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!25, !648, !42, !42, !25}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !649, file: !118, line: 134, baseType: !23, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !649, file: !118, line: 135, baseType: !25, size: 32, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !118, line: 136, baseType: !1643, size: 128, offset: 1088)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !118, line: 136, size: 128, elements: !1644)
!1644 = !{!1645, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1643, file: !118, line: 137, baseType: !1646, size: 128)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1647, line: 6, size: 128, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1646, file: !1647, line: 7, baseType: !299, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1646, file: !1647, line: 8, baseType: !299, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !118, line: 138, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !118, line: 138, elements: !1653)
!1653 = !{!1654, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1652, file: !118, line: 138, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !118, line: 138, elements: !762)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1652, file: !118, line: 138, baseType: !1657)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, elements: !852)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !645, file: !126, line: 147, baseType: !23, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !603, file: !126, line: 161, baseType: !683, size: 128, align: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !126, line: 164, baseType: !1661, size: 32, offset: 384)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !126, line: 164, size: 32, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1661, file: !126, line: 169, baseType: !52, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1661, file: !126, line: 177, baseType: !7, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !599, file: !126, line: 181, baseType: !52, size: 32, offset: 416)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !155, line: 309, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !592, file: !155, line: 406, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!25, !769, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !1674)
!1674 = !{!1675, !1705, !1719}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !126, line: 295, baseType: !1676, size: 512)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !126, line: 295, size: 512, elements: !1677)
!1677 = !{!1678, !1704}
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !126, line: 296, baseType: !1679, size: 448)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !126, line: 296, size: 448, elements: !1680)
!1680 = !{!1681, !1682, !1691, !1692, !1693, !1702, !1703}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !126, line: 298, baseType: !42, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !126, line: 299, baseType: !1683, size: 128, offset: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !126, line: 299, size: 128, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1683, file: !126, line: 300, baseType: !100, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !126, line: 302, baseType: !1687, size: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !126, line: 302, size: 128, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1687, file: !126, line: 303, baseType: !23, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1687, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1679, file: !126, line: 310, baseType: !536, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1679, file: !126, line: 311, baseType: !42, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !126, line: 312, baseType: !1694, size: 64, offset: 320)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !126, line: 312, size: 64, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1694, file: !126, line: 313, baseType: !23, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1694, file: !126, line: 314, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1699, file: !126, line: 256, baseType: !42, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1679, file: !126, line: 316, baseType: !52, size: 32, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1679, file: !126, line: 317, baseType: !52, size: 32, offset: 416)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1676, file: !126, line: 323, baseType: !599, size: 512, align: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !126, line: 325, baseType: !1706, size: 512, offset: 512)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !126, line: 325, size: 512, elements: !1707)
!1707 = !{!1708, !1718}
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !126, line: 326, baseType: !1709, size: 320)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !126, line: 326, size: 320, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1709, file: !126, line: 327, baseType: !42, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1709, file: !126, line: 328, baseType: !42, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1709, file: !126, line: 329, baseType: !42, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1709, file: !126, line: 331, baseType: !52, size: 32, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1709, file: !126, line: 332, baseType: !52, size: 32, offset: 224)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1709, file: !126, line: 333, baseType: !52, size: 32, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1709, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1706, file: !126, line: 339, baseType: !599, size: 512, align: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !126, line: 341, baseType: !1720, size: 512, offset: 1024)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !126, line: 341, size: 512, elements: !1721)
!1721 = !{!1722, !1731, !1737}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !126, line: 342, baseType: !1723, size: 384)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1720, file: !126, line: 342, size: 384, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1723, file: !126, line: 343, baseType: !42, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1723, file: !126, line: 344, baseType: !42, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1723, file: !126, line: 346, baseType: !23, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1723, file: !126, line: 347, baseType: !23, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1723, file: !126, line: 348, baseType: !23, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1723, file: !126, line: 349, baseType: !23, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !126, line: 352, baseType: !1732, size: 256)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1720, file: !126, line: 352, size: 256, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1732, file: !126, line: 353, baseType: !42, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1732, file: !126, line: 354, baseType: !42, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1732, file: !126, line: 356, baseType: !100, size: 128, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1720, file: !126, line: 359, baseType: !599, size: 512, align: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !592, file: !155, line: 409, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!25, !536, !1666}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !592, file: !155, line: 412, baseType: !1743, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!679, !536, !1672}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !592, file: !155, line: 414, baseType: !1747, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !155, line: 310, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !592, file: !155, line: 416, baseType: !1753, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!25, !769, !536, !44, !7, !1756, !1337}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !592, file: !155, line: 419, baseType: !1758, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!25, !769, !536, !44, !7, !7, !598, !23}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !592, file: !155, line: 424, baseType: !1762, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!1765, !536, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !299)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !592, file: !155, line: 425, baseType: !1767, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1672, !38, !38}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !592, file: !155, line: 426, baseType: !1771, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!679, !1672, !546}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !592, file: !155, line: 427, baseType: !1775, size: 64, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1672}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !592, file: !155, line: 428, baseType: !1222, size: 64, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !592, file: !155, line: 433, baseType: !1780, size: 64, offset: 768)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!25, !536, !1672, !1672, !141}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !592, file: !155, line: 435, baseType: !1784, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!25, !1672}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !592, file: !155, line: 436, baseType: !1788, size: 64, offset: 896)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!679, !1672, !38, !38}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !592, file: !155, line: 438, baseType: !1792, size: 64, offset: 960)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1672, !1795, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !592, file: !155, line: 439, baseType: !1797, size: 64, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!25, !536, !598}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !592, file: !155, line: 442, baseType: !1801, size: 64, offset: 1088)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!25, !1804, !769, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !155, line: 66, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !592, file: !155, line: 444, baseType: !1329, size: 64, offset: 1152)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !592, file: !155, line: 445, baseType: !1809, size: 64, offset: 1216)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!25, !1225, !1247}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !155, line: 486, baseType: !42, size: 64, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !537, file: !155, line: 487, baseType: !549, size: 320, offset: 960)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !537, file: !155, line: 488, baseType: !1374, size: 32, offset: 1280)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !537, file: !155, line: 489, baseType: !62, size: 32, offset: 1312)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !537, file: !155, line: 490, baseType: !100, size: 128, offset: 1344)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !537, file: !155, line: 491, baseType: !23, size: 64, offset: 1472)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !527, file: !492, line: 180, baseType: !1819, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!498, !769, !432, !526, !367, !44, !38}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !527, file: !492, line: 182, baseType: !1819, size: 64, offset: 384)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !527, file: !492, line: 184, baseType: !1824, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!25, !769, !432, !526, !728}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !515, file: !492, line: 90, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !515, file: !492, line: 91, baseType: !1830, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !482, file: !427, line: 120, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1835, !450}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !149, line: 39, size: 384, elements: !1838)
!1838 = !{!1839, !1840, !1844, !1848, !1854, !1858}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1837, file: !149, line: 40, baseType: !148, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1837, file: !149, line: 41, baseType: !1841, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!679}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1837, file: !149, line: 42, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!23}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1837, file: !149, line: 43, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!226, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !149, line: 19, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1837, file: !149, line: 44, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!226}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1837, file: !149, line: 45, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !23}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !482, file: !427, line: 121, baseType: !1863, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!226, !450}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !482, file: !427, line: 122, baseType: !1867, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !450, !1137, !1138}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !426, file: !427, line: 70, baseType: !1871, size: 64, offset: 384)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1873, line: 190, size: 1152, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1966, !1967, !1968, !1969, !1970, !1973}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1872, file: !1873, line: 191, baseType: !52, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1872, file: !1873, line: 192, baseType: !52, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1872, file: !1873, line: 202, baseType: !1871, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1872, file: !1873, line: 203, baseType: !19, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1872, file: !1873, line: 205, baseType: !581, size: 192, align: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1872, file: !1873, line: 207, baseType: !226, size: 64, offset: 384)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1872, file: !1873, line: 208, baseType: !7, size: 32, offset: 448)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1873, line: 209, baseType: !1883, size: 256, offset: 512)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1873, line: 209, size: 256, elements: !1884)
!1884 = !{!1885, !1894, !1898}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1883, file: !1873, line: 210, baseType: !1886, size: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1873, line: 153, size: 256, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1893}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1886, file: !1873, line: 154, baseType: !42, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1886, file: !1873, line: 156, baseType: !577, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1886, file: !1873, line: 162, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1873, line: 162, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1886, file: !1873, line: 167, baseType: !42, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1883, file: !1873, line: 211, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1873, line: 170, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1895, file: !1873, line: 171, baseType: !1871, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1883, file: !1873, line: 212, baseType: !1899, size: 256)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1873, line: 174, size: 256, elements: !1900)
!1900 = !{!1901, !1961, !1964, !1965}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1899, file: !1873, line: 175, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1873, line: 271, size: 768, elements: !1905)
!1905 = !{!1906, !1926, !1930, !1934, !1938, !1942, !1946, !1950, !1951, !1952, !1953, !1957}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1904, file: !1873, line: 276, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!25, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1873, line: 251, size: 1216, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1911, file: !1873, line: 253, baseType: !1871, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1911, file: !1873, line: 254, baseType: !769, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1911, file: !1873, line: 255, baseType: !1346, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1911, file: !1873, line: 256, baseType: !23, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1911, file: !1873, line: 259, baseType: !788, size: 256, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1911, file: !1873, line: 260, baseType: !788, size: 256, offset: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1911, file: !1873, line: 261, baseType: !25, size: 32, offset: 768)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1911, file: !1873, line: 262, baseType: !100, size: 128, offset: 832)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1911, file: !1873, line: 263, baseType: !367, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1911, file: !1873, line: 265, baseType: !38, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1911, file: !1873, line: 266, baseType: !679, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1911, file: !1873, line: 267, baseType: !679, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1911, file: !1873, line: 268, baseType: !1534, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1904, file: !1873, line: 277, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1910}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1904, file: !1873, line: 290, baseType: !1931, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!25, !1346, !23}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1904, file: !1873, line: 292, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!23, !1346, !43}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1904, file: !1873, line: 293, baseType: !1939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!23, !1346, !23, !43}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1904, file: !1873, line: 294, baseType: !1943, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1346, !23}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1904, file: !1873, line: 296, baseType: !1947, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!498, !1910, !367, !38, !44}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1904, file: !1873, line: 306, baseType: !38, size: 64, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1904, file: !1873, line: 313, baseType: !679, size: 8, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1904, file: !1873, line: 314, baseType: !1947, size: 64, offset: 576)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1904, file: !1873, line: 317, baseType: !1954, size: 64, offset: 640)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1273, !1910, !1275}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1904, file: !1873, line: 320, baseType: !1958, size: 64, offset: 704)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!25, !1910, !728}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1899, file: !1873, line: 176, baseType: !1962, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1873, line: 35, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1899, file: !1873, line: 177, baseType: !44, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1899, file: !1873, line: 178, baseType: !1871, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1872, file: !1873, line: 215, baseType: !23, size: 64, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1872, file: !1873, line: 221, baseType: !299, size: 64, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1872, file: !1873, line: 223, baseType: !29, size: 16, offset: 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1872, file: !1873, line: 224, baseType: !27, size: 16, offset: 912)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1872, file: !1873, line: 225, baseType: !1971, size: 64, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1873, line: 36, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1872, file: !1873, line: 227, baseType: !683, size: 128, align: 64, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !426, file: !427, line: 71, baseType: !1975, size: 32, offset: 448)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1976, line: 19, size: 32, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1977 = !{!1978}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1975, file: !1976, line: 20, baseType: !207, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !426, file: !427, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !426, file: !427, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !426, file: !427, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !426, file: !427, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !426, file: !427, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !423, file: !111, line: 47, baseType: !413, size: 64, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !423, file: !111, line: 48, baseType: !432, size: 64, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !423, file: !111, line: 49, baseType: !1987, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !111, line: 49, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !423, file: !111, line: 50, baseType: !1121, size: 64, offset: 704)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !414, file: !111, line: 418, baseType: !1991, size: 64, offset: 1408)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !111, line: 53, size: 448, elements: !1993)
!1993 = !{!1994, !1995, !2000, !2004, !2008, !2012}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1992, file: !111, line: 54, baseType: !503, size: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1992, file: !111, line: 55, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!498, !1991, !1999, !367}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1992, file: !111, line: 57, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!498, !1991, !1999, !19, !38}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1992, file: !111, line: 59, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !413, !19}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1992, file: !111, line: 60, baseType: !2009, size: 64, offset: 320)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!25, !413}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1992, file: !111, line: 61, baseType: !2013, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !413}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !414, file: !111, line: 419, baseType: !19, size: 64, offset: 1472)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !414, file: !111, line: 420, baseType: !19, size: 64, offset: 1536)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !414, file: !111, line: 421, baseType: !432, size: 64, offset: 1600)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !414, file: !111, line: 424, baseType: !2020, size: 64, offset: 1664)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !111, line: 424, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !414, file: !111, line: 425, baseType: !2024, size: 64, offset: 1728)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !414, file: !111, line: 426, baseType: !7, size: 32, offset: 1792)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !414, file: !111, line: 435, baseType: !788, size: 256, offset: 1856)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !414, file: !111, line: 437, baseType: !2029, size: 64, offset: 2112)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2031, line: 69, size: 320, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2032 = !{!2033, !2034, !2035, !2052, !2054, !2058, !2059}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2030, file: !2031, line: 70, baseType: !19, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2030, file: !2031, line: 71, baseType: !413, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2030, file: !2031, line: 72, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2031, line: 47, size: 256, elements: !2039)
!2039 = !{!2040, !2041, !2047, !2051}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !2031, line: 49, baseType: !7, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2038, file: !2031, line: 51, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!25, !19, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2038, file: !2031, line: 53, baseType: !2048, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!25, !367, !2045}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2038, file: !2031, line: 55, baseType: !1859, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2030, file: !2031, line: 73, baseType: !2053, size: 16, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2030, file: !2031, line: 74, baseType: !2055, size: 8, offset: 208)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !87, line: 16, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !89, line: 20, baseType: !2057)
!2057 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !2031, line: 75, baseType: !86, size: 8, offset: 216)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !2031, line: 76, baseType: !2060, size: 64, offset: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !2031, line: 76, size: 64, elements: !2061)
!2061 = !{!2062, !2063, !2070}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2060, file: !2031, line: 77, baseType: !23, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2060, file: !2031, line: 78, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2031, line: 86, size: 128, elements: !2067)
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2066, file: !2031, line: 87, baseType: !7, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2066, file: !2031, line: 88, baseType: !367, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2060, file: !2031, line: 79, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2031, line: 92, size: 256, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2079, !2080}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2073, file: !2031, line: 94, baseType: !7, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2073, file: !2031, line: 95, baseType: !7, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2073, file: !2031, line: 96, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2073, file: !2031, line: 97, baseType: !2036, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2073, file: !2031, line: 98, baseType: !23, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !414, file: !111, line: 438, baseType: !7, size: 32, offset: 2176)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !414, file: !111, line: 441, baseType: !7, size: 32, offset: 2208)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !414, file: !111, line: 442, baseType: !2020, size: 64, offset: 2240)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !414, file: !111, line: 443, baseType: !2024, size: 64, offset: 2304)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !414, file: !111, line: 444, baseType: !679, size: 8, offset: 2368)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !414, file: !111, line: 451, baseType: !679, size: 8, offset: 2376)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !414, file: !111, line: 454, baseType: !7, size: 32, offset: 2400)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !414, file: !111, line: 455, baseType: !2089, size: 64, offset: 2432)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2091, line: 23, size: 96, elements: !2092)
!2091 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2092 = !{!2093, !2094, !2095}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2090, file: !2091, line: 24, baseType: !25, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2090, file: !2091, line: 24, baseType: !25, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2090, file: !2091, line: 24, baseType: !25, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !414, file: !111, line: 458, baseType: !2097, size: 64, offset: 2496)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!25}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !414, file: !111, line: 460, baseType: !2101, size: 4032, align: 512, offset: 2560)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 4032, elements: !2118)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !111, line: 362, size: 576, elements: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2102, file: !111, line: 363, baseType: !23, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2102, file: !111, line: 364, baseType: !7, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2102, file: !111, line: 367, baseType: !2107, size: 448, offset: 128)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !111, line: 319, size: 448, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2107, file: !111, line: 320, baseType: !413, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2107, file: !111, line: 321, baseType: !2111, size: 384, offset: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2112, line: 40, size: 384, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2113 = !{!2114}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2111, file: !2112, line: 41, baseType: !2115, size: 384, align: 64)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 384, align: 64, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 2)
!2118 = !{!2119}
!2119 = !DISubrange(count: 7)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !414, file: !111, line: 463, baseType: !2121, size: 192, offset: 6592)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2122, line: 8, size: 192, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2123 = !{!2124, !2125, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2121, file: !2122, line: 10, baseType: !7, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2121, file: !2122, line: 11, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2121, file: !2122, line: 12, baseType: !2128, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2130, line: 59, size: 48, elements: !2131)
!2130 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2129, file: !2130, line: 60, baseType: !1480, size: 16)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2129, file: !2130, line: 61, baseType: !1480, size: 16, offset: 16)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2129, file: !2130, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2129, file: !2130, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2129, file: !2130, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2129, file: !2130, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !414, file: !111, line: 465, baseType: !42, size: 64, offset: 6784)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !414, file: !111, line: 469, baseType: !7, size: 32, offset: 6848)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !414, file: !111, line: 470, baseType: !100, size: 128, offset: 6912)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !414, file: !111, line: 471, baseType: !2142, size: 64, offset: 7040)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2144, line: 33, size: 96, elements: !2145)
!2144 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2143, file: !2144, line: 37, baseType: !25, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2143, file: !2144, line: 43, baseType: !25, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2143, file: !2144, line: 45, baseType: !29, size: 16, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2144, line: 47, baseType: !29, size: 16, offset: 80)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !414, file: !111, line: 476, baseType: !2151, size: 64, offset: 7104)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !111, line: 378, size: 256, elements: !2153)
!2153 = !{!2154, !2170, !2171, !2172}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2152, file: !111, line: 379, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2157, line: 204, baseType: !2158)
!2157 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2157, line: 197, size: 192, elements: !2159)
!2159 = !{!2160, !2162, !2163, !2164, !2166, !2168}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2158, file: !2157, line: 198, baseType: !2161, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2157, line: 21, baseType: !205)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2158, file: !2157, line: 199, baseType: !90, size: 8, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2158, file: !2157, line: 200, baseType: !90, size: 8, offset: 40)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2158, file: !2157, line: 201, baseType: !2165, size: 16, offset: 48)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2157, line: 17, baseType: !97)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2158, file: !2157, line: 202, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2157, line: 16, baseType: !300)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2158, file: !2157, line: 203, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2157, line: 22, baseType: !300)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2152, file: !111, line: 380, baseType: !7, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2152, file: !111, line: 381, baseType: !367, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2152, file: !111, line: 382, baseType: !367, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !414, file: !111, line: 477, baseType: !2152, size: 256, offset: 7168)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !414, file: !111, line: 480, baseType: !2175, size: 64, offset: 7424)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !111, line: 480, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !414, file: !111, line: 483, baseType: !2178, size: 64, offset: 7488)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !111, line: 483, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !414, file: !111, line: 488, baseType: !367, size: 64, offset: 7552)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !414, file: !111, line: 492, baseType: !23, size: 64, offset: 7616)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !414, file: !111, line: 493, baseType: !7, size: 32, offset: 7680)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !414, file: !111, line: 495, baseType: !23, size: 64, offset: 7744)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !414, file: !111, line: 496, baseType: !7, size: 32, offset: 7808)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !414, file: !111, line: 499, baseType: !7, size: 32, offset: 7840)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !414, file: !111, line: 500, baseType: !2187, size: 64, offset: 7872)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2189, line: 45, baseType: !2190)
!2189 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !414, file: !111, line: 503, baseType: !7, size: 32, offset: 7936)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !414, file: !111, line: 504, baseType: !2193, size: 64, offset: 8000)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2196, line: 96, size: 192, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2197 = !{!2198, !2199, !2252, !2255}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2195, file: !2196, line: 97, baseType: !7, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2195, file: !2196, line: 98, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2196, line: 24, size: 3072, elements: !2202)
!2202 = !{!2203, !2205, !2206, !2207, !2208, !2221, !2222, !2223, !2224, !2236, !2237, !2238, !2249, !2250, !2251}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2201, file: !2196, line: 26, baseType: !2204, size: 128)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 128, elements: !2116)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2201, file: !2196, line: 27, baseType: !2204, size: 128, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2201, file: !2196, line: 28, baseType: !25, size: 32, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2201, file: !2196, line: 31, baseType: !62, size: 32, align: 512, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2201, file: !2196, line: 32, baseType: !2209, size: 960, offset: 576)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2210, line: 206, size: 960, elements: !2211)
!2210 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2211 = !{!2212, !2213, !2216, !2218, !2219, !2220}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2209, file: !2210, line: 207, baseType: !686, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2209, file: !2210, line: 208, baseType: !2214, size: 256, offset: 64)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2215, size: 256, elements: !839)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2209, file: !2210, line: 209, baseType: !2217, size: 256, offset: 320)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !839)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2209, file: !2210, line: 213, baseType: !501, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2209, file: !2210, line: 215, baseType: !1172, size: 256, offset: 640)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2209, file: !2210, line: 216, baseType: !86, size: 8, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2201, file: !2196, line: 33, baseType: !42, size: 64, offset: 1536)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2201, file: !2196, line: 34, baseType: !42, size: 64, offset: 1600)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2201, file: !2196, line: 35, baseType: !679, size: 8, offset: 1664)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2201, file: !2196, line: 36, baseType: !2225, size: 320, offset: 1728)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2226, line: 11, size: 320, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2227 = !{!2228, !2229, !2230, !2235}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2225, file: !2226, line: 16, baseType: !834, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2225, file: !2226, line: 17, baseType: !42, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2225, file: !2226, line: 18, baseType: !2231, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2225, file: !2226, line: 19, baseType: !225, size: 32, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2201, file: !2196, line: 37, baseType: !1083, size: 256, offset: 2048)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2201, file: !2196, line: 38, baseType: !683, size: 128, align: 64, offset: 2304)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2201, file: !2196, line: 39, baseType: !2239, size: 64, offset: 2432)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2196, line: 49, size: 768, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2240, file: !2196, line: 50, baseType: !62, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2240, file: !2196, line: 51, baseType: !2217, size: 256, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2240, file: !2196, line: 53, baseType: !2217, size: 256, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2240, file: !2196, line: 54, baseType: !42, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2240, file: !2196, line: 55, baseType: !2239, size: 64, offset: 640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2240, file: !2196, line: 56, baseType: !25, size: 32, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2240, file: !2196, line: 57, baseType: !25, size: 32, offset: 736)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2201, file: !2196, line: 40, baseType: !42, size: 64, offset: 2496)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2201, file: !2196, line: 42, baseType: !25, size: 32, offset: 2560)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2201, file: !2196, line: 43, baseType: !2194, size: 64, offset: 2624)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2195, file: !2196, line: 99, baseType: !2253, offset: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2254, line: 211, elements: !762)
!2254 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2195, file: !2196, line: 100, baseType: !2256, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2196, line: 63, size: 3008, elements: !2258)
!2258 = !{!2259, !2260, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2290}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2257, file: !2196, line: 64, baseType: !2239, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2257, file: !2196, line: 65, baseType: !2261, size: 192, offset: 64)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2239, size: 192, elements: !467)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2257, file: !2196, line: 67, baseType: !25, size: 32, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2257, file: !2196, line: 68, baseType: !788, size: 256, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2257, file: !2196, line: 69, baseType: !62, size: 32, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2257, file: !2196, line: 70, baseType: !788, size: 256, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2257, file: !2196, line: 71, baseType: !42, size: 64, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2257, file: !2196, line: 72, baseType: !42, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2257, file: !2196, line: 73, baseType: !42, size: 64, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2257, file: !2196, line: 74, baseType: !42, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2257, file: !2196, line: 75, baseType: !42, size: 64, offset: 1152)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2257, file: !2196, line: 76, baseType: !42, size: 64, offset: 1216)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2257, file: !2196, line: 77, baseType: !42, size: 64, offset: 1280)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2257, file: !2196, line: 78, baseType: !42, size: 64, offset: 1344)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2257, file: !2196, line: 79, baseType: !679, size: 8, offset: 1408)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2257, file: !2196, line: 80, baseType: !42, size: 64, offset: 1472)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2257, file: !2196, line: 81, baseType: !788, size: 256, offset: 1536)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2257, file: !2196, line: 82, baseType: !693, size: 256, offset: 1792)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2257, file: !2196, line: 84, baseType: !52, size: 32, offset: 2048)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2257, file: !2196, line: 87, baseType: !42, size: 64, offset: 2112)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2257, file: !2196, line: 88, baseType: !42, size: 64, offset: 2176)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2257, file: !2196, line: 89, baseType: !2282, size: 704, offset: 2240)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1084, line: 111, size: 704, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2289}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2282, file: !1084, line: 112, baseType: !1083, size: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2282, file: !1084, line: 113, baseType: !2225, size: 320, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2282, file: !1084, line: 116, baseType: !2287, size: 64, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1084, line: 18, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2282, file: !1084, line: 117, baseType: !25, size: 32, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2257, file: !2196, line: 90, baseType: !2194, size: 64, offset: 2944)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !414, file: !111, line: 515, baseType: !2292, size: 64, offset: 8064)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2294, line: 117, size: 128, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2293, file: !2294, line: 118, baseType: !894, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2293, file: !2294, line: 119, baseType: !894, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2293, file: !2294, line: 120, baseType: !501, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !414, file: !111, line: 516, baseType: !7, size: 32, offset: 8128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !414, file: !111, line: 519, baseType: !7, size: 32, offset: 8160)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !414, file: !111, line: 520, baseType: !2302, size: 64, offset: 8192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !414, file: !111, line: 523, baseType: !2304, size: 64, offset: 8256)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !111, line: 523, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !414, file: !111, line: 524, baseType: !7, size: 32, offset: 8320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !414, file: !111, line: 525, baseType: !2309, size: 64, offset: 8384)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !111, line: 525, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !414, file: !111, line: 526, baseType: !7, size: 32, offset: 8448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !414, file: !111, line: 533, baseType: !23, size: 64, offset: 8512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !414, file: !111, line: 534, baseType: !7, size: 32, offset: 8576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !414, file: !111, line: 535, baseType: !2316, size: 64, offset: 8640)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !414, file: !111, line: 536, baseType: !7, size: 32, offset: 8704)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !414, file: !111, line: 539, baseType: !25, size: 32, offset: 8736)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !414, file: !111, line: 540, baseType: !2320, size: 64, offset: 8768)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2322, line: 32, size: 64, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2321, file: !2322, line: 33, baseType: !894, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2321, file: !2322, line: 34, baseType: !894, size: 32, offset: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !414, file: !111, line: 563, baseType: !100, size: 128, offset: 8832)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !414, file: !111, line: 565, baseType: !100, size: 128, offset: 8960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !414, file: !111, line: 568, baseType: !2329, size: 64, offset: 9088)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !414, file: !111, line: 570, baseType: !52, size: 32, offset: 9152)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !155, line: 2382, baseType: !389, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !390, file: !155, line: 2383, baseType: !830, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !390, file: !155, line: 2385, baseType: !2336, offset: 576)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2254, line: 206, elements: !762)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !390, file: !155, line: 2386, baseType: !2336, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !390, file: !155, line: 2387, baseType: !2336, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !390, file: !155, line: 2388, baseType: !2340, offset: 576)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, elements: !467)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !390, file: !155, line: 2390, baseType: !2336, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !390, file: !155, line: 2391, baseType: !2336, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !390, file: !155, line: 2392, baseType: !2336, offset: 576)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !390, file: !155, line: 2393, baseType: !2336, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !379, file: !155, line: 1197, baseType: !2346, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !155, line: 2057, size: 1664, elements: !2349)
!2349 = !{!2350, !2354, !2358, !2359, !2363, !2367, !2371, !2372, !2373, !2377, !2381, !2385, !2386, !2387, !2393, !2397, !2398, !2402, !2403, !2404, !2405, !2409, !2413, !2460, !2475, !2476}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2348, file: !155, line: 2058, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!228, !378}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2348, file: !155, line: 2059, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !228}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2348, file: !155, line: 2060, baseType: !2355, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2348, file: !155, line: 2062, baseType: !2360, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !228, !25}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2348, file: !155, line: 2063, baseType: !2364, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!25, !228, !1666}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2348, file: !155, line: 2064, baseType: !2368, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!25, !228}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2348, file: !155, line: 2065, baseType: !2355, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2348, file: !155, line: 2066, baseType: !409, size: 64, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2348, file: !155, line: 2067, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!25, !378, !25}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2348, file: !155, line: 2068, baseType: !2378, size: 64, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!25, !378, !154}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2348, file: !155, line: 2069, baseType: !2382, size: 64, offset: 640)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!25, !378}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2348, file: !155, line: 2070, baseType: !2378, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2348, file: !155, line: 2071, baseType: !2382, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2348, file: !155, line: 2072, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!25, !263, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !155, line: 62, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2348, file: !155, line: 2073, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!25, !378, !2126, !367}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2348, file: !155, line: 2074, baseType: !409, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2348, file: !155, line: 2076, baseType: !2399, size: 64, offset: 1024)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!25, !1346, !263}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2348, file: !155, line: 2077, baseType: !2399, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2348, file: !155, line: 2078, baseType: !2399, size: 64, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2348, file: !155, line: 2079, baseType: !2399, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2348, file: !155, line: 2081, baseType: !2406, size: 64, offset: 1280)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!498, !378, !25, !367, !38, !44}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2348, file: !155, line: 2082, baseType: !2410, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!498, !378, !25, !19, !38, !44}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2348, file: !155, line: 2083, baseType: !2414, size: 64, offset: 1408)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!2417, !228}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !160, line: 296, size: 1664, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2445, !2446, !2447}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2419, file: !160, line: 297, baseType: !834, size: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2419, file: !160, line: 298, baseType: !100, size: 128, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2419, file: !160, line: 299, baseType: !100, size: 128, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2419, file: !160, line: 300, baseType: !100, size: 128, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2419, file: !160, line: 301, baseType: !788, size: 256, offset: 512)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2419, file: !160, line: 302, baseType: !62, size: 32, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2419, file: !160, line: 303, baseType: !52, size: 32, offset: 800)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2419, file: !160, line: 304, baseType: !378, size: 64, offset: 832)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2419, file: !160, line: 305, baseType: !2430, size: 64, offset: 896)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !160, line: 68, size: 64, elements: !2431)
!2431 = !{!2432, !2444}
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !2430, file: !160, line: 69, baseType: !2433, size: 32)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2430, file: !160, line: 69, size: 32, elements: !2434)
!2434 = !{!2435, !2436, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2433, file: !160, line: 70, baseType: !234, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2433, file: !160, line: 71, baseType: !243, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2433, file: !160, line: 72, baseType: !2438, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2439, line: 24, baseType: !2440)
!2439 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2439, line: 22, size: 32, elements: !2441)
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2440, file: !2439, line: 23, baseType: !2443, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2439, line: 20, baseType: !240)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2430, file: !160, line: 74, baseType: !159, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2419, file: !160, line: 306, baseType: !44, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2419, file: !160, line: 307, baseType: !42, size: 64, offset: 1024)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2419, file: !160, line: 308, baseType: !2448, size: 576, offset: 1088)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !160, line: 205, size: 576, elements: !2449)
!2449 = !{!2450, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2448, file: !160, line: 206, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !160, line: 66, baseType: !46)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2448, file: !160, line: 207, baseType: !2451, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2448, file: !160, line: 208, baseType: !2451, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2448, file: !160, line: 209, baseType: !2451, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2448, file: !160, line: 210, baseType: !2451, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2448, file: !160, line: 211, baseType: !2451, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2448, file: !160, line: 212, baseType: !2451, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2448, file: !160, line: 213, baseType: !910, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2448, file: !160, line: 214, baseType: !910, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2348, file: !155, line: 2085, baseType: !2461, size: 64, offset: 1472)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!501, !378, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2466, line: 15, size: 256, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2467 = !{!2468, !2469, !2470, !2471, !2472}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2465, file: !2466, line: 16, baseType: !546, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2465, file: !2466, line: 19, baseType: !25, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2465, file: !2466, line: 26, baseType: !42, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2465, file: !2466, line: 33, baseType: !42, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2465, file: !2466, line: 36, baseType: !2473, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2466, line: 36, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2348, file: !155, line: 2087, baseType: !2461, size: 64, offset: 1536)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2348, file: !155, line: 2089, baseType: !409, size: 64, offset: 1600)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !379, file: !155, line: 1198, baseType: !2478, size: 64, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !160, line: 324, size: 704, elements: !2481)
!2481 = !{!2482, !2486, !2490, !2494, !2495, !2496, !2497, !2498, !2503, !2508, !2512}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2480, file: !160, line: 325, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!25, !2418}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2480, file: !160, line: 326, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2418, !378, !25}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2480, file: !160, line: 327, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2418}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2480, file: !160, line: 328, baseType: !2483, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2480, file: !160, line: 329, baseType: !2483, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2480, file: !160, line: 330, baseType: !2483, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2480, file: !160, line: 331, baseType: !2374, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2480, file: !160, line: 334, baseType: !2499, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !228}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2480, file: !160, line: 335, baseType: !2504, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!25, !228, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2480, file: !160, line: 337, baseType: !2509, size: 64, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!25, !228, !2502}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2480, file: !160, line: 339, baseType: !2513, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!25, !378, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !379, file: !155, line: 1199, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !160, line: 430, size: 704, elements: !2521)
!2521 = !{!2522, !2528, !2529, !2533, !2534, !2535, !2550, !2573, !2577, !2578, !2601}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2520, file: !160, line: 431, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!25, !378, !25, !25, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2520, file: !160, line: 432, baseType: !2374, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2520, file: !160, line: 433, baseType: !2530, size: 64, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!25, !378, !7}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2520, file: !160, line: 434, baseType: !2530, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2520, file: !160, line: 435, baseType: !2374, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2520, file: !160, line: 436, baseType: !2536, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!25, !378, !25, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !160, line: 417, size: 256, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2540, file: !160, line: 418, baseType: !25, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2540, file: !160, line: 419, baseType: !7, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2540, file: !160, line: 420, baseType: !7, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2540, file: !160, line: 422, baseType: !7, size: 32, offset: 96)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2540, file: !160, line: 423, baseType: !7, size: 32, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2540, file: !160, line: 424, baseType: !7, size: 32, offset: 160)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2540, file: !160, line: 425, baseType: !7, size: 32, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2540, file: !160, line: 426, baseType: !7, size: 32, offset: 224)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2520, file: !160, line: 437, baseType: !2551, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!25, !378, !2430, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !160, line: 345, size: 960, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2555, file: !160, line: 346, baseType: !25, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2555, file: !160, line: 347, baseType: !299, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2555, file: !160, line: 348, baseType: !299, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2555, file: !160, line: 349, baseType: !299, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2555, file: !160, line: 350, baseType: !299, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2555, file: !160, line: 351, baseType: !299, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2555, file: !160, line: 352, baseType: !299, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2555, file: !160, line: 353, baseType: !559, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2555, file: !160, line: 355, baseType: !559, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2555, file: !160, line: 356, baseType: !25, size: 32, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2555, file: !160, line: 357, baseType: !25, size: 32, offset: 608)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2555, file: !160, line: 358, baseType: !299, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2555, file: !160, line: 359, baseType: !299, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2555, file: !160, line: 360, baseType: !299, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2555, file: !160, line: 361, baseType: !559, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2555, file: !160, line: 362, baseType: !25, size: 32, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2520, file: !160, line: 438, baseType: !2574, size: 64, offset: 448)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!25, !378, !2516, !2554}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2520, file: !160, line: 440, baseType: !2551, size: 64, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2520, file: !160, line: 441, baseType: !2579, size: 64, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!25, !378, !2582}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !160, line: 411, size: 1408, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2583, file: !160, line: 412, baseType: !7, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2583, file: !160, line: 413, baseType: !2587, size: 1344, offset: 64)
!2587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2588, size: 1344, elements: !467)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !160, line: 397, size: 448, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2600}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2588, file: !160, line: 398, baseType: !7, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2588, file: !160, line: 399, baseType: !7, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2588, file: !160, line: 401, baseType: !7, size: 32, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2588, file: !160, line: 402, baseType: !7, size: 32, offset: 96)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2588, file: !160, line: 403, baseType: !7, size: 32, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2588, file: !160, line: 404, baseType: !7, size: 32, offset: 160)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2588, file: !160, line: 405, baseType: !7, size: 32, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2588, file: !160, line: 406, baseType: !301, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2588, file: !160, line: 407, baseType: !2599, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !299)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2588, file: !160, line: 408, baseType: !2599, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2520, file: !160, line: 442, baseType: !2530, size: 64, offset: 640)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !379, file: !155, line: 1200, baseType: !2603, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !155, line: 54, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !379, file: !155, line: 1201, baseType: !42, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !379, file: !155, line: 1202, baseType: !42, size: 64, offset: 704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !379, file: !155, line: 1203, baseType: !42, size: 64, offset: 768)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !379, file: !155, line: 1204, baseType: !263, size: 64, offset: 832)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !379, file: !155, line: 1205, baseType: !549, size: 320, offset: 896)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !379, file: !155, line: 1206, baseType: !25, size: 32, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !379, file: !155, line: 1207, baseType: !52, size: 32, offset: 1248)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !379, file: !155, line: 1209, baseType: !23, size: 64, offset: 1280)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !379, file: !155, line: 1211, baseType: !2615, size: 64, offset: 1344)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !155, line: 1211, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !379, file: !155, line: 1223, baseType: !2620, size: 64, offset: 1408)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !280, line: 34, size: 64, elements: !2621)
!2621 = !{!2622}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2620, file: !280, line: 35, baseType: !283, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !379, file: !155, line: 1224, baseType: !100, size: 128, offset: 1472)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !379, file: !155, line: 1225, baseType: !2625, size: 64, offset: 1600)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !155, line: 1225, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !379, file: !155, line: 1226, baseType: !2628, size: 64, offset: 1664)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !155, line: 1226, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !379, file: !155, line: 1227, baseType: !2631, size: 64, offset: 1728)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !155, line: 50, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !379, file: !155, line: 1228, baseType: !2634, size: 64, offset: 1792)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !155, line: 1228, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !379, file: !155, line: 1229, baseType: !834, size: 128, offset: 1856)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !379, file: !155, line: 1230, baseType: !7, size: 32, offset: 1984)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !379, file: !155, line: 1231, baseType: !2639, size: 2496, offset: 2048)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !160, line: 521, size: 2496, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2645, !2677}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2639, file: !160, line: 522, baseType: !7, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2639, file: !160, line: 523, baseType: !549, size: 320, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2639, file: !160, line: 524, baseType: !2644, size: 192, offset: 384)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, elements: !467)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2639, file: !160, line: 525, baseType: !2646, size: 1728, offset: 576)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, size: 1728, elements: !467)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !160, line: 222, size: 576, elements: !2648)
!2648 = !{!2649, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2647, file: !160, line: 223, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !160, line: 445, size: 256, elements: !2652)
!2652 = !{!2653, !2654, !2667, !2668}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2651, file: !160, line: 446, baseType: !25, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2651, file: !160, line: 447, baseType: !2655, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2657)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !160, line: 312, size: 512, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2657, file: !160, line: 313, baseType: !2374, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2657, file: !160, line: 314, baseType: !2374, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2657, file: !160, line: 315, baseType: !2374, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2657, file: !160, line: 316, baseType: !2374, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2657, file: !160, line: 317, baseType: !2483, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2657, file: !160, line: 318, baseType: !2483, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2657, file: !160, line: 319, baseType: !2483, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2657, file: !160, line: 320, baseType: !2513, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2651, file: !160, line: 448, baseType: !413, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2651, file: !160, line: 449, baseType: !2650, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2647, file: !160, line: 224, baseType: !25, size: 32, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2647, file: !160, line: 226, baseType: !100, size: 128, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2647, file: !160, line: 227, baseType: !42, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2647, file: !160, line: 228, baseType: !7, size: 32, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2647, file: !160, line: 229, baseType: !7, size: 32, offset: 352)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2647, file: !160, line: 230, baseType: !2451, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2647, file: !160, line: 231, baseType: !2451, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2647, file: !160, line: 232, baseType: !23, size: 64, offset: 512)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2639, file: !160, line: 526, baseType: !2678, size: 192, offset: 2304)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 192, elements: !467)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !379, file: !155, line: 1233, baseType: !2680, size: 2368, offset: 4544)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !155, line: 1184, size: 2368, elements: !2681)
!2681 = !{!2682, !2683, !2684}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2680, file: !155, line: 1185, baseType: !29, size: 16)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2680, file: !155, line: 1186, baseType: !29, size: 16, offset: 16)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2680, file: !155, line: 1187, baseType: !2685, size: 2304, offset: 64)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2686, size: 2304, elements: !467)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2687, line: 12, size: 768, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2688 = !{!2689, !2697, !2698, !3923, !3924}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2686, file: !2687, line: 13, baseType: !2690, size: 384)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2691, line: 17, size: 384, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2692 = !{!2693, !2694, !2695, !2696}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2690, file: !2691, line: 18, baseType: !25, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2690, file: !2691, line: 19, baseType: !25, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2690, file: !2691, line: 20, baseType: !57, size: 192, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2690, file: !2691, line: 22, baseType: !683, size: 128, align: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2686, file: !2687, line: 14, baseType: !2078, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2686, file: !2687, line: 15, baseType: !2699, size: 64, offset: 448)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2700, line: 16, size: 64, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2699, file: !2700, line: 17, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1323, line: 746, size: 58368, elements: !2705)
!2705 = !{!2706, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2786, !2797, !2885, !2889, !2892, !2923, !2924, !2925, !2926, !2937, !2939, !2940, !2941, !2942, !2943, !2944, !2955, !2956, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2973, !2974, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3062, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3110, !3116, !3117, !3118, !3119, !3120, !3124, !3127, !3134, !3139, !3142, !3169, !3172, !3198, !3337, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3375, !3376, !3377, !3386, !3394, !3395, !3396, !3397, !3398, !3403, !3404, !3405, !3408, !3409, !3412, !3415, !3418, !3426, !3429, !3430, !3516, !3517, !3518, !3519, !3520, !3526, !3527, !3528, !3529, !3532, !3533, !3536, !3539, !3540, !3543, !3544, !3545, !3548, !3549, !3550, !3551, !3552, !3553, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3585, !3586, !3592, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3604, !3676, !3678, !3679, !3680, !3681, !3682, !3683, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3700, !3701, !3702}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2704, file: !1323, line: 752, baseType: !2707, size: 192)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2708, line: 56, size: 192, elements: !2709)
!2708 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2709 = !{!2710, !2711, !2712, !2713}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2707, file: !2708, line: 57, baseType: !42, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2707, file: !2708, line: 58, baseType: !42, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2707, file: !2708, line: 59, baseType: !225, size: 32, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2707, file: !2708, line: 61, baseType: !225, size: 32, offset: 160)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2704, file: !1323, line: 754, baseType: !7, size: 32, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2704, file: !1323, line: 767, baseType: !23, size: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2704, file: !1323, line: 768, baseType: !207, size: 32, offset: 320)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2704, file: !1323, line: 770, baseType: !7, size: 32, offset: 352)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2704, file: !1323, line: 771, baseType: !7, size: 32, offset: 384)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2704, file: !1323, line: 774, baseType: !25, size: 32, offset: 416)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2704, file: !1323, line: 775, baseType: !2721, size: 128, offset: 448)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2722, line: 58, size: 128, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2723 = !{!2724, !2725, !2730, !2731}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2721, file: !2722, line: 59, baseType: !776, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !2722, line: 60, baseType: !2726, size: 32, offset: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !2722, line: 60, size: 32, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2726, file: !2722, line: 61, baseType: !7, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2726, file: !2722, line: 62, baseType: !52, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2721, file: !2722, line: 65, baseType: !96, size: 16, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2721, file: !2722, line: 65, baseType: !96, size: 16, offset: 112)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2704, file: !1323, line: 776, baseType: !7, size: 32, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2704, file: !1323, line: 777, baseType: !42, size: 64, offset: 640)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2704, file: !1323, line: 778, baseType: !2703, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2704, file: !1323, line: 787, baseType: !25, size: 32, offset: 768)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2704, file: !1323, line: 788, baseType: !25, size: 32, offset: 800)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2704, file: !1323, line: 790, baseType: !25, size: 32, offset: 832)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2704, file: !1323, line: 792, baseType: !25, size: 32, offset: 864)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2704, file: !1323, line: 793, baseType: !25, size: 32, offset: 896)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2704, file: !1323, line: 794, baseType: !25, size: 32, offset: 928)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2704, file: !1323, line: 795, baseType: !7, size: 32, offset: 960)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2704, file: !1323, line: 797, baseType: !2743, size: 2048, offset: 1024)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1323, line: 551, size: 2048, elements: !2744)
!2744 = !{!2745, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2765, !2768, !2769, !2770}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2743, file: !1323, line: 553, baseType: !2746, size: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1323, line: 411, size: 128, elements: !2747)
!2747 = !{!2748, !2749}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2746, file: !1323, line: 412, baseType: !42, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2746, file: !1323, line: 413, baseType: !225, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2743, file: !1323, line: 554, baseType: !581, size: 192, align: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2743, file: !1323, line: 555, baseType: !299, size: 64, offset: 320)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2743, file: !1323, line: 556, baseType: !299, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2743, file: !1323, line: 558, baseType: !100, size: 128, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2743, file: !1323, line: 559, baseType: !7, size: 32, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2743, file: !1323, line: 561, baseType: !299, size: 64, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2743, file: !1323, line: 562, baseType: !299, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2743, file: !1323, line: 563, baseType: !299, size: 64, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2743, file: !1323, line: 564, baseType: !299, size: 64, offset: 832)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2743, file: !1323, line: 565, baseType: !559, size: 64, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2743, file: !1323, line: 566, baseType: !299, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2743, file: !1323, line: 568, baseType: !299, size: 64, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2743, file: !1323, line: 571, baseType: !25, size: 32, offset: 1088)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2743, file: !1323, line: 572, baseType: !2764, size: 64, offset: 1152)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2743, file: !1323, line: 574, baseType: !2766, size: 64, offset: 1216)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1323, line: 49, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2743, file: !1323, line: 576, baseType: !2766, size: 64, offset: 1280)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2743, file: !1323, line: 578, baseType: !42, size: 64, offset: 1344)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2743, file: !1323, line: 588, baseType: !2771, size: 512, align: 512, offset: 1536)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1323, line: 497, size: 512, align: 512, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2771, file: !1323, line: 498, baseType: !299, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2771, file: !1323, line: 499, baseType: !299, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2771, file: !1323, line: 500, baseType: !299, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2771, file: !1323, line: 501, baseType: !225, size: 32, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2771, file: !1323, line: 502, baseType: !225, size: 32, offset: 224)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2771, file: !1323, line: 503, baseType: !42, size: 64, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2771, file: !1323, line: 504, baseType: !42, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2771, file: !1323, line: 505, baseType: !42, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2771, file: !1323, line: 506, baseType: !2782, size: 64, align: 64, offset: 448)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1323, line: 445, size: 64, align: 64, elements: !2783)
!2783 = !{!2784, !2785}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2782, file: !1323, line: 446, baseType: !7, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2782, file: !1323, line: 447, baseType: !7, size: 32, offset: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2704, file: !1323, line: 798, baseType: !2787, size: 384, offset: 3072)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1323, line: 592, size: 384, elements: !2788)
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794, !2795}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2787, file: !1323, line: 593, baseType: !100, size: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2787, file: !1323, line: 594, baseType: !42, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2787, file: !1323, line: 595, baseType: !42, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2787, file: !1323, line: 596, baseType: !7, size: 32, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2787, file: !1323, line: 597, baseType: !29, size: 16, offset: 288)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2787, file: !1323, line: 598, baseType: !29, size: 16, offset: 304)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2787, file: !1323, line: 600, baseType: !2796, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2704, file: !1323, line: 799, baseType: !2798, size: 1792, offset: 3456)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1323, line: 610, size: 1792, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2882, !2883}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2798, file: !1323, line: 611, baseType: !581, size: 192, align: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2798, file: !1323, line: 618, baseType: !299, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2798, file: !1323, line: 619, baseType: !299, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2798, file: !1323, line: 620, baseType: !299, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2798, file: !1323, line: 621, baseType: !299, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2798, file: !1323, line: 622, baseType: !299, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2798, file: !1323, line: 629, baseType: !559, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2798, file: !1323, line: 630, baseType: !299, size: 64, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2798, file: !1323, line: 631, baseType: !7, size: 32, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2798, file: !1323, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2798, file: !1323, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2798, file: !1323, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2798, file: !1323, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2798, file: !1323, line: 662, baseType: !2814, size: 512, offset: 704)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !166, line: 118, size: 512, elements: !2815)
!2815 = !{!2816, !2824, !2825, !2830, !2878, !2879, !2880, !2881}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2814, file: !166, line: 119, baseType: !2817, size: 256)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2818, line: 9, size: 256, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2817, file: !2818, line: 10, baseType: !581, size: 192, align: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2817, file: !2818, line: 11, baseType: !2822, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2823, line: 29, baseType: !559)
!2823 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2814, file: !166, line: 120, baseType: !2822, size: 64, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2814, file: !166, line: 121, baseType: !2826, size: 64, offset: 320)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!165, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2814, file: !166, line: 122, baseType: !2831, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !166, line: 159, size: 512, align: 512, elements: !2833)
!2833 = !{!2834, !2859, !2860, !2863, !2868, !2869, !2873, !2877}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2832, file: !166, line: 160, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !166, line: 215, size: 4608, align: 512, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2836, file: !166, line: 216, baseType: !568, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2836, file: !166, line: 217, baseType: !7, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2836, file: !166, line: 218, baseType: !7, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2836, file: !166, line: 219, baseType: !7, size: 32, offset: 96)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2836, file: !166, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2836, file: !166, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2836, file: !166, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2836, file: !166, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2836, file: !166, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2836, file: !166, line: 226, baseType: !7, size: 32, offset: 160)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2836, file: !166, line: 227, baseType: !29, size: 16, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2836, file: !166, line: 228, baseType: !29, size: 16, offset: 208)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2836, file: !166, line: 229, baseType: !7, size: 32, offset: 224)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2836, file: !166, line: 235, baseType: !2822, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2836, file: !166, line: 236, baseType: !2829, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2836, file: !166, line: 237, baseType: !2822, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2836, file: !166, line: 238, baseType: !2829, size: 64, offset: 448)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2836, file: !166, line: 239, baseType: !2856, size: 4096, align: 512, offset: 512)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2832, size: 4096, align: 512, elements: !2857)
!2857 = !{!2858}
!2858 = !DISubrange(count: 8)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2832, file: !166, line: 161, baseType: !7, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2832, file: !166, line: 162, baseType: !2861, size: 32, offset: 96)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !2862)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2832, file: !166, line: 163, baseType: !2864, size: 32, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !270, line: 274, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !270, line: 274, size: 32, elements: !2866)
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2865, file: !270, line: 274, baseType: !274, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2832, file: !166, line: 164, baseType: !2829, size: 64, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2832, file: !166, line: 165, baseType: !2870, size: 128, offset: 256)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2818, line: 14, size: 128, elements: !2871)
!2871 = !{!2872}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2870, file: !2818, line: 15, baseType: !573, size: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2832, file: !166, line: 166, baseType: !2874, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!2822}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2832, file: !166, line: 167, baseType: !2822, size: 64, offset: 448)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2814, file: !166, line: 123, baseType: !86, size: 8, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2814, file: !166, line: 124, baseType: !86, size: 8, offset: 456)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2814, file: !166, line: 125, baseType: !86, size: 8, offset: 464)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2814, file: !166, line: 126, baseType: !86, size: 8, offset: 472)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2798, file: !1323, line: 671, baseType: !2814, size: 512, offset: 1216)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2798, file: !1323, line: 679, baseType: !2884, size: 64, offset: 1728)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2704, file: !1323, line: 800, baseType: !2886, size: 64, offset: 5248)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2888)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1323, line: 800, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2704, file: !1323, line: 809, baseType: !2890, size: 64, offset: 5312)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1323, line: 70, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2704, file: !1323, line: 825, baseType: !2893, size: 2048, align: 512, offset: 5632)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1323, line: 509, size: 2048, align: 512, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2893, file: !1323, line: 511, baseType: !299, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2893, file: !1323, line: 512, baseType: !299, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2893, file: !1323, line: 513, baseType: !299, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2893, file: !1323, line: 514, baseType: !299, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2893, file: !1323, line: 515, baseType: !299, size: 64, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2893, file: !1323, line: 516, baseType: !299, size: 64, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2893, file: !1323, line: 518, baseType: !299, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2893, file: !1323, line: 519, baseType: !299, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2893, file: !1323, line: 520, baseType: !559, size: 64, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2893, file: !1323, line: 522, baseType: !299, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2893, file: !1323, line: 523, baseType: !299, size: 64, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2893, file: !1323, line: 524, baseType: !559, size: 64, offset: 704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2893, file: !1323, line: 526, baseType: !559, size: 64, offset: 768)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2893, file: !1323, line: 527, baseType: !299, size: 64, offset: 832)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2893, file: !1323, line: 529, baseType: !299, size: 64, offset: 896)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2893, file: !1323, line: 530, baseType: !299, size: 64, offset: 960)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2893, file: !1323, line: 531, baseType: !299, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2893, file: !1323, line: 532, baseType: !299, size: 64, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2893, file: !1323, line: 533, baseType: !299, size: 64, offset: 1152)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2893, file: !1323, line: 535, baseType: !299, size: 64, offset: 1216)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2893, file: !1323, line: 536, baseType: !299, size: 64, offset: 1280)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2893, file: !1323, line: 537, baseType: !299, size: 64, offset: 1344)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2893, file: !1323, line: 538, baseType: !299, size: 64, offset: 1408)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2893, file: !1323, line: 539, baseType: !299, size: 64, offset: 1472)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2893, file: !1323, line: 540, baseType: !299, size: 64, offset: 1536)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2893, file: !1323, line: 541, baseType: !299, size: 64, offset: 1600)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2893, file: !1323, line: 542, baseType: !299, size: 64, offset: 1664)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2893, file: !1323, line: 543, baseType: !299, size: 64, offset: 1728)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2704, file: !1323, line: 833, baseType: !7, size: 32, offset: 7680)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2704, file: !1323, line: 836, baseType: !7, size: 32, offset: 7712)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2704, file: !1323, line: 837, baseType: !25, size: 32, offset: 7744)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2704, file: !1323, line: 838, baseType: !2927, size: 64, offset: 7808)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2930, line: 19, baseType: !2931)
!2930 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2930, line: 19, size: 64, elements: !2932)
!2932 = !{!2933}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2931, file: !2930, line: 19, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !2935)
!2935 = !{!2936}
!2936 = !DISubrange(count: 1)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2704, file: !1323, line: 839, baseType: !2938, size: 64, offset: 7872)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2704, file: !1323, line: 840, baseType: !2929, size: 64, offset: 7936)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2704, file: !1323, line: 841, baseType: !23, size: 64, offset: 8000)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2704, file: !1323, line: 843, baseType: !29, size: 16, offset: 8064)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2704, file: !1323, line: 845, baseType: !29, size: 16, offset: 8080)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2704, file: !1323, line: 848, baseType: !25, size: 32, offset: 8096)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2704, file: !1323, line: 849, baseType: !2945, size: 32, offset: 8128)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1323, line: 718, size: 32, elements: !2946)
!2946 = !{!2947, !2954}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2945, file: !1323, line: 724, baseType: !2948, size: 32)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2945, file: !1323, line: 719, size: 32, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2948, file: !1323, line: 720, baseType: !86, size: 8)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2948, file: !1323, line: 721, baseType: !86, size: 8, offset: 8)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2948, file: !1323, line: 722, baseType: !86, size: 8, offset: 16)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2948, file: !1323, line: 723, baseType: !86, size: 8, offset: 24)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2945, file: !1323, line: 725, baseType: !225, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2704, file: !1323, line: 850, baseType: !100, size: 128, offset: 8192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2704, file: !1323, line: 851, baseType: !2957, size: 64, offset: 8320)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1323, line: 60, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2704, file: !1323, line: 855, baseType: !42, size: 64, offset: 8384)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2704, file: !1323, line: 856, baseType: !86, size: 8, offset: 8448)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2704, file: !1323, line: 857, baseType: !86, size: 8, offset: 8456)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2704, file: !1323, line: 858, baseType: !25, size: 32, offset: 8480)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2704, file: !1323, line: 859, baseType: !100, size: 128, offset: 8512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2704, file: !1323, line: 860, baseType: !25, size: 32, offset: 8640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2704, file: !1323, line: 861, baseType: !100, size: 128, offset: 8704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2704, file: !1323, line: 873, baseType: !2967, size: 256, offset: 8832)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1323, line: 376, size: 256, elements: !2968)
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2967, file: !1323, line: 381, baseType: !42, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2967, file: !1323, line: 384, baseType: !301, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2967, file: !1323, line: 389, baseType: !301, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2967, file: !1323, line: 392, baseType: !301, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2704, file: !1323, line: 875, baseType: !100, size: 128, offset: 9088)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2704, file: !1323, line: 877, baseType: !2975, size: 320, offset: 9216)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2976, line: 86, size: 320, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2977 = !{!2978, !2979, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2975, file: !2976, line: 87, baseType: !25, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2975, file: !2976, line: 88, baseType: !100, size: 128, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2975, file: !2976, line: 89, baseType: !100, size: 128, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2704, file: !1323, line: 878, baseType: !581, size: 192, align: 64, offset: 9536)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2704, file: !1323, line: 881, baseType: !741, size: 64, offset: 9728)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2704, file: !1323, line: 882, baseType: !741, size: 64, offset: 9792)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2704, file: !1323, line: 884, baseType: !25, size: 32, offset: 9856)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2704, file: !1323, line: 885, baseType: !25, size: 32, offset: 9888)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2704, file: !1323, line: 886, baseType: !25, size: 32, offset: 9920)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2704, file: !1323, line: 888, baseType: !25, size: 32, offset: 9952)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2704, file: !1323, line: 890, baseType: !42, size: 64, offset: 9984)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2704, file: !1323, line: 893, baseType: !7, size: 32, offset: 10048)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2704, file: !1323, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2704, file: !1323, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2704, file: !1323, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2704, file: !1323, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2704, file: !1323, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2704, file: !1323, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2704, file: !1323, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2704, file: !1323, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2704, file: !1323, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2704, file: !1323, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2704, file: !1323, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2704, file: !1323, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2704, file: !1323, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2704, file: !1323, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2704, file: !1323, line: 969, baseType: !42, size: 64, offset: 10176)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2704, file: !1323, line: 971, baseType: !3006, size: 448, offset: 10240)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !171, line: 25, size: 448, elements: !3007)
!3007 = !{!3008, !3009, !3014}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3006, file: !171, line: 26, baseType: !42, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3006, file: !171, line: 27, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!501, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !171, line: 28, baseType: !3015, size: 320, offset: 128)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3006, file: !171, line: 28, size: 320, elements: !3016)
!3016 = !{!3017, !3027, !3052}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3015, file: !171, line: 37, baseType: !3018, size: 320)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3015, file: !171, line: 30, size: 320, elements: !3019)
!3019 = !{!3020, !3022, !3023, !3024, !3025, !3026}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3018, file: !171, line: 31, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3018, file: !171, line: 32, baseType: !225, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3018, file: !171, line: 33, baseType: !225, size: 32, offset: 96)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3018, file: !171, line: 34, baseType: !225, size: 32, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3018, file: !171, line: 35, baseType: !299, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3018, file: !171, line: 36, baseType: !3021, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3015, file: !171, line: 47, baseType: !3028, size: 192)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3015, file: !171, line: 39, size: 192, elements: !3029)
!3029 = !{!3030, !3031, !3032, !3051}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3028, file: !171, line: 40, baseType: !2861, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3028, file: !171, line: 41, baseType: !170, size: 32, offset: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !171, line: 42, baseType: !3033, size: 64, offset: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !171, line: 42, size: 64, elements: !3034)
!3034 = !{!3035, !3043}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3033, file: !171, line: 43, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3038, line: 7, size: 128, elements: !3039)
!3038 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3039 = !{!3040, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3037, file: !3038, line: 8, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3037, file: !3038, line: 9, baseType: !46, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3033, file: !171, line: 44, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3046, line: 7, size: 64, elements: !3047)
!3046 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3047 = !{!3048, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3045, file: !3046, line: 8, baseType: !3049, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3046, line: 5, baseType: !894)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3045, file: !3046, line: 9, baseType: !894, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3028, file: !171, line: 46, baseType: !299, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3015, file: !171, line: 55, baseType: !3053, size: 256)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3015, file: !171, line: 49, size: 256, elements: !3054)
!3054 = !{!3055, !3058, !3059, !3060, !3061}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3053, file: !171, line: 50, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !171, line: 14, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3053, file: !171, line: 51, baseType: !25, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3053, file: !171, line: 52, baseType: !25, size: 32, offset: 96)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3053, file: !171, line: 53, baseType: !42, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3053, file: !171, line: 54, baseType: !42, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2704, file: !1323, line: 973, baseType: !3063, size: 32, offset: 10688)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2704, file: !1323, line: 974, baseType: !3063, size: 32, offset: 10720)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2704, file: !1323, line: 978, baseType: !42, size: 64, offset: 10752)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2704, file: !1323, line: 987, baseType: !2703, size: 64, offset: 10816)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2704, file: !1323, line: 990, baseType: !2703, size: 64, offset: 10880)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2704, file: !1323, line: 995, baseType: !100, size: 128, offset: 10944)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2704, file: !1323, line: 996, baseType: !100, size: 128, offset: 11072)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2704, file: !1323, line: 997, baseType: !2703, size: 64, offset: 11200)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2704, file: !1323, line: 1005, baseType: !100, size: 128, offset: 11264)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2704, file: !1323, line: 1006, baseType: !100, size: 128, offset: 11392)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2704, file: !1323, line: 1009, baseType: !822, size: 64, offset: 11520)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2704, file: !1323, line: 1010, baseType: !3076, size: 512, offset: 11584)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 512, elements: !839)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2704, file: !1323, line: 1011, baseType: !100, size: 128, offset: 12096)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2704, file: !1323, line: 1012, baseType: !100, size: 128, offset: 12224)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2704, file: !1323, line: 1014, baseType: !1121, size: 64, offset: 12352)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2704, file: !1323, line: 1017, baseType: !2126, size: 64, offset: 12416)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2704, file: !1323, line: 1020, baseType: !2126, size: 64, offset: 12480)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2704, file: !1323, line: 1023, baseType: !23, size: 64, offset: 12544)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2704, file: !1323, line: 1025, baseType: !299, size: 64, offset: 12608)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2704, file: !1323, line: 1026, baseType: !299, size: 64, offset: 12672)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2704, file: !1323, line: 1031, baseType: !299, size: 64, offset: 12736)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2704, file: !1323, line: 1032, baseType: !3087, size: 192, offset: 12800)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1323, line: 324, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3087, file: !1323, line: 326, baseType: !299, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3087, file: !1323, line: 327, baseType: !299, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3087, file: !1323, line: 328, baseType: !568, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2704, file: !1323, line: 1041, baseType: !42, size: 64, offset: 12992)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2704, file: !1323, line: 1042, baseType: !42, size: 64, offset: 13056)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2704, file: !1323, line: 1045, baseType: !299, size: 64, offset: 13120)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2704, file: !1323, line: 1048, baseType: !299, size: 64, offset: 13184)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2704, file: !1323, line: 1051, baseType: !42, size: 64, offset: 13248)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2704, file: !1323, line: 1052, baseType: !42, size: 64, offset: 13312)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2704, file: !1323, line: 1055, baseType: !3099, size: 640, offset: 13376)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3100, line: 132, size: 640, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3101 = !{!3102, !3108, !3109}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3099, file: !3100, line: 133, baseType: !3103, size: 576)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3104, size: 576, elements: !467)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3100, line: 117, size: 192, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3104, file: !3100, line: 118, baseType: !299, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3104, file: !3100, line: 119, baseType: !2870, size: 128, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3099, file: !3100, line: 134, baseType: !7, size: 32, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3099, file: !3100, line: 135, baseType: !7, size: 32, offset: 608)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2704, file: !1323, line: 1058, baseType: !3111, size: 448, offset: 14016)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3100, line: 144, size: 448, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3111, file: !3100, line: 145, baseType: !683, size: 128, align: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3111, file: !3100, line: 146, baseType: !788, size: 256, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3111, file: !3100, line: 147, baseType: !7, size: 32, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2704, file: !1323, line: 1064, baseType: !859, size: 64, offset: 14464)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2704, file: !1323, line: 1067, baseType: !859, size: 64, offset: 14528)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2704, file: !1323, line: 1070, baseType: !859, size: 64, offset: 14592)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2704, file: !1323, line: 1074, baseType: !886, size: 64, offset: 14656)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2704, file: !1323, line: 1084, baseType: !3121, size: 128, offset: 14720)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !3122)
!3122 = !{!3123}
!3123 = !DISubrange(count: 16)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2704, file: !1323, line: 1086, baseType: !3125, size: 64, offset: 14848)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1323, line: 55, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2704, file: !1323, line: 1089, baseType: !3128, size: 64, offset: 14912)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3129, line: 12, size: 64, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3128, file: !3129, line: 13, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3129, line: 8, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2704, file: !1323, line: 1090, baseType: !3135, size: 128, offset: 14976)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3136, line: 13, size: 128, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3135, file: !3136, line: 14, baseType: !100, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2704, file: !1323, line: 1097, baseType: !3140, size: 64, offset: 15104)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1323, line: 50, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2704, file: !1323, line: 1100, baseType: !3143, size: 64, offset: 15168)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !3145, line: 48, size: 5632, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/fdtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "498516b1695965933173787db61c4521")
!3146 = !{!3147, !3148, !3149, !3150, !3161, !3162, !3163, !3164, !3165, !3166, !3167}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3144, file: !3145, line: 52, baseType: !52, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "resize_in_progress", scope: !3144, file: !3145, line: 53, baseType: !679, size: 8, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "resize_wait", scope: !3144, file: !3145, line: 54, baseType: !57, size: 192, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fdt", scope: !3144, file: !3145, line: 56, baseType: !3151, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdtable", file: !3145, line: 26, size: 448, elements: !3153)
!3153 = !{!3154, !3155, !3157, !3158, !3159, !3160}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !3152, file: !3145, line: 27, baseType: !7, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3152, file: !3145, line: 28, baseType: !3156, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec", scope: !3152, file: !3145, line: 29, baseType: !2316, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds", scope: !3152, file: !3145, line: 30, baseType: !2316, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits", scope: !3152, file: !3145, line: 31, baseType: !2316, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3152, file: !3145, line: 32, baseType: !683, size: 128, align: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fdtab", scope: !3144, file: !3145, line: 57, baseType: !3152, size: 448, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "file_lock", scope: !3144, file: !3145, line: 61, baseType: !62, size: 32, align: 512, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "next_fd", scope: !3144, file: !3145, line: 62, baseType: !7, size: 32, offset: 1056)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec_init", scope: !3144, file: !3145, line: 63, baseType: !2934, size: 64, offset: 1088)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds_init", scope: !3144, file: !3145, line: 64, baseType: !2934, size: 64, offset: 1152)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits_init", scope: !3144, file: !3145, line: 65, baseType: !2934, size: 64, offset: 1216)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !3144, file: !3145, line: 66, baseType: !3168, size: 4096, offset: 1280)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 4096, elements: !471)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2704, file: !1323, line: 1103, baseType: !3170, size: 64, offset: 15232)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1323, line: 53, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2704, file: !1323, line: 1107, baseType: !3173, size: 64, offset: 15296)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3175, line: 31, size: 576, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3176 = !{!3177, !3178, !3181, !3184, !3187, !3188, !3191, !3194, !3195}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3174, file: !3175, line: 32, baseType: !207, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3174, file: !3175, line: 33, baseType: !3179, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3175, line: 9, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3174, file: !3175, line: 34, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3175, line: 10, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3174, file: !3175, line: 35, baseType: !3185, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3175, line: 8, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3174, file: !3175, line: 36, baseType: !850, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3174, file: !3175, line: 37, baseType: !3189, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !888, line: 34, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3174, file: !3175, line: 38, baseType: !3192, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3175, line: 38, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3174, file: !3175, line: 39, baseType: !3192, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3174, file: !3175, line: 40, baseType: !3196, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3175, line: 12, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2704, file: !1323, line: 1110, baseType: !3199, size: 64, offset: 15360)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3201, line: 93, size: 8768, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3251, !3260, !3261, !3263, !3264, !3265, !3268, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3306, !3307, !3314, !3324, !3327, !3328, !3331, !3332, !3333, !3334, !3335, !3336}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3200, file: !3201, line: 94, baseType: !207, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3200, file: !3201, line: 95, baseType: !52, size: 32, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3200, file: !3201, line: 96, baseType: !25, size: 32, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3200, file: !3201, line: 97, baseType: !25, size: 32, offset: 96)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3200, file: !3201, line: 98, baseType: !100, size: 128, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3200, file: !3201, line: 100, baseType: !57, size: 192, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3200, file: !3201, line: 103, baseType: !2703, size: 64, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3200, file: !3201, line: 106, baseType: !3211, size: 192, offset: 512)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3212, line: 32, size: 192, elements: !3213)
!3212 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3211, file: !3212, line: 33, baseType: !100, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3211, file: !3212, line: 34, baseType: !3216, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3217, line: 25, baseType: !3218)
!3217 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3217, line: 23, size: 64, elements: !3219)
!3219 = !{!3220}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3218, file: !3217, line: 24, baseType: !2934, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3200, file: !3201, line: 109, baseType: !830, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3200, file: !3201, line: 112, baseType: !25, size: 32, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3200, file: !3201, line: 114, baseType: !25, size: 32, offset: 800)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3200, file: !3201, line: 115, baseType: !2703, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3200, file: !3201, line: 118, baseType: !25, size: 32, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !3201, line: 119, baseType: !7, size: 32, offset: 928)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3200, file: !3201, line: 121, baseType: !3228, size: 64, offset: 960)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3201, line: 80, size: 448, elements: !3230)
!3230 = !{!3231, !3232, !3238}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3229, file: !3201, line: 81, baseType: !52, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3229, file: !3201, line: 82, baseType: !3233, size: 128, offset: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3201, line: 75, size: 128, elements: !3234)
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3233, file: !3201, line: 76, baseType: !2703, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3233, file: !3201, line: 77, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3229, file: !3201, line: 83, baseType: !693, size: 256, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3200, file: !3201, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3200, file: !3201, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3200, file: !3201, line: 138, baseType: !7, size: 32, offset: 1056)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3200, file: !3201, line: 139, baseType: !100, size: 128, offset: 1088)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3200, file: !3201, line: 142, baseType: !2814, size: 512, offset: 1216)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3200, file: !3201, line: 143, baseType: !2822, size: 64, offset: 1728)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3200, file: !3201, line: 150, baseType: !3246, size: 256, offset: 1792)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3247, size: 256, elements: !2116)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3201, line: 38, size: 128, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3247, file: !3201, line: 39, baseType: !299, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3247, file: !3201, line: 40, baseType: !299, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3200, file: !3201, line: 156, baseType: !3252, size: 192, offset: 2048)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3201, line: 66, size: 192, elements: !3253)
!3253 = !{!3254}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3252, file: !3201, line: 67, baseType: !3255, size: 192)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3201, line: 47, size: 192, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3255, file: !3201, line: 48, baseType: !555, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3255, file: !3201, line: 49, baseType: !555, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3255, file: !3201, line: 50, baseType: !555, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3200, file: !3201, line: 160, baseType: !3099, size: 640, offset: 2240)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3200, file: !3201, line: 163, baseType: !3262, size: 256, offset: 2880)
!3262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 256, elements: !839)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3200, file: !3201, line: 169, baseType: !822, size: 64, offset: 3136)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3200, file: !3201, line: 172, baseType: !25, size: 32, offset: 3200)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3200, file: !3201, line: 174, baseType: !3266, size: 64, offset: 3264)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3201, line: 174, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3200, file: !3201, line: 185, baseType: !3269, size: 64, offset: 3328)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !270, line: 860, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 853, size: 64, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3270, file: !270, line: 858, baseType: !269, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3270, file: !270, line: 859, baseType: !62, size: 32, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3200, file: !3201, line: 186, baseType: !299, size: 64, offset: 3392)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3200, file: !3201, line: 186, baseType: !299, size: 64, offset: 3456)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3200, file: !3201, line: 186, baseType: !299, size: 64, offset: 3520)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3200, file: !3201, line: 186, baseType: !299, size: 64, offset: 3584)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3200, file: !3201, line: 187, baseType: !299, size: 64, offset: 3648)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3200, file: !3201, line: 188, baseType: !299, size: 64, offset: 3712)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3200, file: !3201, line: 189, baseType: !3087, size: 192, offset: 3776)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3200, file: !3201, line: 190, baseType: !42, size: 64, offset: 3968)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3200, file: !3201, line: 190, baseType: !42, size: 64, offset: 4032)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3200, file: !3201, line: 190, baseType: !42, size: 64, offset: 4096)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3200, file: !3201, line: 190, baseType: !42, size: 64, offset: 4160)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3200, file: !3201, line: 191, baseType: !42, size: 64, offset: 4224)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3200, file: !3201, line: 191, baseType: !42, size: 64, offset: 4288)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3200, file: !3201, line: 191, baseType: !42, size: 64, offset: 4352)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3200, file: !3201, line: 191, baseType: !42, size: 64, offset: 4416)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3200, file: !3201, line: 192, baseType: !42, size: 64, offset: 4480)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3200, file: !3201, line: 192, baseType: !42, size: 64, offset: 4544)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3200, file: !3201, line: 192, baseType: !42, size: 64, offset: 4608)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3200, file: !3201, line: 192, baseType: !42, size: 64, offset: 4672)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3200, file: !3201, line: 193, baseType: !42, size: 64, offset: 4736)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3200, file: !3201, line: 193, baseType: !42, size: 64, offset: 4800)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3200, file: !3201, line: 194, baseType: !3296, size: 448, offset: 4864)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3297, line: 12, size: 448, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3296, file: !3297, line: 15, baseType: !299, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3296, file: !3297, line: 17, baseType: !299, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3296, file: !3297, line: 19, baseType: !299, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3296, file: !3297, line: 21, baseType: !299, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3296, file: !3297, line: 29, baseType: !299, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3296, file: !3297, line: 35, baseType: !299, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3296, file: !3297, line: 44, baseType: !299, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3200, file: !3201, line: 202, baseType: !301, size: 64, offset: 5312)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3200, file: !3201, line: 213, baseType: !3308, size: 2048, offset: 5376)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3309, size: 2048, elements: !3122)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3310, line: 43, size: 128, elements: !3311)
!3310 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3309, file: !3310, line: 44, baseType: !41, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3309, file: !3310, line: 45, baseType: !41, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3200, file: !3201, line: 216, baseType: !3315, size: 448, offset: 7424)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3201, line: 30, size: 448, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3315, file: !3201, line: 31, baseType: !25, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3315, file: !3201, line: 32, baseType: !501, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3315, file: !3201, line: 33, baseType: !42, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3315, file: !3201, line: 34, baseType: !299, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3315, file: !3201, line: 34, baseType: !299, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3315, file: !3201, line: 35, baseType: !42, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3315, file: !3201, line: 35, baseType: !42, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3200, file: !3201, line: 219, baseType: !3325, size: 64, offset: 7872)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3201, line: 219, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3200, file: !3201, line: 222, baseType: !7, size: 32, offset: 7936)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3200, file: !3201, line: 223, baseType: !3329, size: 64, offset: 8000)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3201, line: 223, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3200, file: !3201, line: 230, baseType: !679, size: 8, offset: 8064)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3200, file: !3201, line: 231, baseType: !922, size: 16, offset: 8080)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3200, file: !3201, line: 232, baseType: !922, size: 16, offset: 8096)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3200, file: !3201, line: 234, baseType: !741, size: 64, offset: 8128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3200, file: !3201, line: 237, baseType: !788, size: 256, offset: 8192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3200, file: !3201, line: 243, baseType: !549, size: 320, offset: 8448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2704, file: !1323, line: 1111, baseType: !3338, size: 64, offset: 15424)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3201, line: 20, size: 16640, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3339, file: !3201, line: 21, baseType: !62, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3339, file: !3201, line: 22, baseType: !207, size: 32, offset: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3339, file: !3201, line: 23, baseType: !57, size: 192, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3339, file: !3201, line: 24, baseType: !3345, size: 16384, offset: 256)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3346, size: 16384, elements: !471)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3212, line: 51, size: 256, elements: !3347)
!3347 = !{!3348}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3346, file: !3212, line: 52, baseType: !3349, size: 256)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3212, line: 37, size: 256, elements: !3350)
!3350 = !{!3351, !3358, !3359, !3363}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3349, file: !3212, line: 39, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3353, line: 83, baseType: !3354)
!3353 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3353, line: 82, baseType: !3356)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !25}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3349, file: !3212, line: 40, baseType: !42, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3349, file: !3212, line: 46, baseType: !3360, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3353, line: 86, baseType: !3361)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3353, line: 85, baseType: !2330)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3349, file: !3212, line: 48, baseType: !3216, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2704, file: !1323, line: 1112, baseType: !3216, size: 64, offset: 15488)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2704, file: !1323, line: 1113, baseType: !3216, size: 64, offset: 15552)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2704, file: !1323, line: 1115, baseType: !3216, size: 64, offset: 15616)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2704, file: !1323, line: 1116, baseType: !3211, size: 192, offset: 15680)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2704, file: !1323, line: 1117, baseType: !42, size: 64, offset: 15872)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2704, file: !1323, line: 1118, baseType: !38, size: 64, offset: 15936)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2704, file: !1323, line: 1119, baseType: !7, size: 32, offset: 16000)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2704, file: !1323, line: 1121, baseType: !686, size: 64, offset: 16064)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2704, file: !1323, line: 1125, baseType: !3373, size: 64, offset: 16128)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1323, line: 43, flags: DIFlagFwdDecl)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2704, file: !1323, line: 1127, baseType: !234, size: 32, offset: 16192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2704, file: !1323, line: 1128, baseType: !7, size: 32, offset: 16224)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2704, file: !1323, line: 1130, baseType: !3378, size: 128, offset: 16256)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3379, line: 37, size: 128, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3380 = !{!3381, !3382, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3378, file: !3379, line: 38, baseType: !25, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3378, file: !3379, line: 39, baseType: !52, size: 32, offset: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3378, file: !3379, line: 40, baseType: !3384, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3379, line: 24, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2704, file: !1323, line: 1131, baseType: !3387, size: 256, offset: 16384)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3388, line: 12, size: 256, elements: !3389)
!3388 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3387, file: !3388, line: 13, baseType: !367, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3387, file: !3388, line: 14, baseType: !42, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3387, file: !3388, line: 15, baseType: !42, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3387, file: !3388, line: 16, baseType: !679, size: 8, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2704, file: !1323, line: 1134, baseType: !299, size: 64, offset: 16640)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2704, file: !1323, line: 1135, baseType: !299, size: 64, offset: 16704)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2704, file: !1323, line: 1138, baseType: !62, size: 32, offset: 16768)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2704, file: !1323, line: 1141, baseType: !568, size: 32, offset: 16800)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2704, file: !1323, line: 1143, baseType: !3399, size: 64, offset: 16832)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1323, line: 735, size: 64, elements: !3400)
!3400 = !{!3401}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3399, file: !1323, line: 736, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2704, file: !1323, line: 1147, baseType: !573, size: 128, offset: 16896)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2704, file: !1323, line: 1149, baseType: !2703, size: 64, offset: 17024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2704, file: !1323, line: 1151, baseType: !3406, size: 64, offset: 17088)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1323, line: 1151, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2704, file: !1323, line: 1188, baseType: !23, size: 64, offset: 17152)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2704, file: !1323, line: 1191, baseType: !3410, size: 64, offset: 17216)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1323, line: 44, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2704, file: !1323, line: 1194, baseType: !3413, size: 64, offset: 17280)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1323, line: 45, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2704, file: !1323, line: 1197, baseType: !3416, size: 64, offset: 17344)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1323, line: 61, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2704, file: !1323, line: 1199, baseType: !3419, size: 64, offset: 17408)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3421, line: 99, size: 128, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3422 = !{!3423, !3424, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3420, file: !3421, line: 100, baseType: !553, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3420, file: !3421, line: 101, baseType: !52, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3420, file: !3421, line: 103, baseType: !29, size: 16, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2704, file: !1323, line: 1202, baseType: !3427, size: 64, offset: 17472)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1323, line: 48, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2704, file: !1323, line: 1205, baseType: !42, size: 64, offset: 17536)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2704, file: !1323, line: 1206, baseType: !3431, size: 64, offset: 17600)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3212, line: 14, baseType: !3433)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3212, line: 12, size: 384, elements: !3434)
!3434 = !{!3435}
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !3212, line: 13, baseType: !3436, size: 384)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3433, file: !3212, line: 13, size: 384, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3436, file: !3212, line: 13, baseType: !25, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3436, file: !3212, line: 13, baseType: !25, size: 32, offset: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3436, file: !3212, line: 13, baseType: !25, size: 32, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3436, file: !3212, line: 13, baseType: !3442, size: 256, offset: 128)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3443, line: 37, size: 256, elements: !3444)
!3443 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3444 = !{!3445, !3450, !3463, !3469, !3478, !3505, !3510}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3442, file: !3443, line: 42, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 39, size: 64, elements: !3447)
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3446, file: !3443, line: 40, baseType: !3064, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3446, file: !3443, line: 41, baseType: !240, size: 32, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3442, file: !3443, line: 50, baseType: !3451, size: 192)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 45, size: 192, elements: !3452)
!3452 = !{!3453, !3455, !3456, !3462}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3451, file: !3443, line: 46, baseType: !3454, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3451, file: !3443, line: 47, baseType: !25, size: 32, offset: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3451, file: !3443, line: 48, baseType: !3457, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3443, line: 11, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3443, line: 8, size: 64, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3458, file: !3443, line: 9, baseType: !25, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3458, file: !3443, line: 10, baseType: !23, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3451, file: !3443, line: 49, baseType: !25, size: 32, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3442, file: !3443, line: 57, baseType: !3464, size: 128)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 53, size: 128, elements: !3465)
!3465 = !{!3466, !3467, !3468}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3464, file: !3443, line: 54, baseType: !3064, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3464, file: !3443, line: 55, baseType: !240, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3464, file: !3443, line: 56, baseType: !3457, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3442, file: !3443, line: 66, baseType: !3470, size: 256)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 60, size: 256, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3477}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3470, file: !3443, line: 61, baseType: !3064, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3470, file: !3443, line: 62, baseType: !240, size: 32, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3470, file: !3443, line: 63, baseType: !25, size: 32, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3470, file: !3443, line: 64, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !500)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3470, file: !3443, line: 65, baseType: !3476, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3442, file: !3443, line: 105, baseType: !3479, size: 256)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 69, size: 256, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3479, file: !3443, line: 70, baseType: !23, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3443, line: 79, baseType: !3483, size: 192, offset: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3443, line: 79, size: 192, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3494, !3499}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3483, file: !3443, line: 81, baseType: !25, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3483, file: !3443, line: 86, baseType: !922, size: 16)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3483, file: !3443, line: 92, baseType: !3488, size: 192)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3443, line: 88, size: 192, elements: !3489)
!3489 = !{!3490, !3492, !3493}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3488, file: !3443, line: 89, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !2857)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3488, file: !3443, line: 90, baseType: !23, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3488, file: !3443, line: 91, baseType: !23, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3483, file: !3443, line: 97, baseType: !3495, size: 96)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3443, line: 94, size: 96, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3495, file: !3443, line: 95, baseType: !3491, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3495, file: !3443, line: 96, baseType: !205, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3483, file: !3443, line: 103, baseType: !3500, size: 128)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3443, line: 99, size: 128, elements: !3501)
!3501 = !{!3502, !3503, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3500, file: !3443, line: 100, baseType: !42, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3500, file: !3443, line: 101, baseType: !205, size: 32, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3500, file: !3443, line: 102, baseType: !205, size: 32, offset: 96)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3442, file: !3443, line: 111, baseType: !3506, size: 128)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 108, size: 128, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3506, file: !3443, line: 109, baseType: !501, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3506, file: !3443, line: 110, baseType: !25, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3442, file: !3443, line: 118, baseType: !3511, size: 128)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !3443, line: 114, size: 128, elements: !3512)
!3512 = !{!3513, !3514, !3515}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3511, file: !3443, line: 115, baseType: !23, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3511, file: !3443, line: 116, baseType: !25, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3511, file: !3443, line: 117, baseType: !7, size: 32, offset: 96)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2704, file: !1323, line: 1208, baseType: !3296, size: 448, offset: 17664)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2704, file: !1323, line: 1215, baseType: !299, size: 64, offset: 18112)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2704, file: !1323, line: 1217, baseType: !299, size: 64, offset: 18176)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2704, file: !1323, line: 1219, baseType: !299, size: 64, offset: 18240)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2704, file: !1323, line: 1223, baseType: !3521, size: 64, offset: 18304)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3522, line: 99, baseType: !3523)
!3522 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3522, line: 99, size: 64, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3523, file: !3522, line: 99, baseType: !2934, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2704, file: !1323, line: 1225, baseType: !269, size: 32, offset: 18368)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2704, file: !1323, line: 1226, baseType: !25, size: 32, offset: 18400)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2704, file: !1323, line: 1227, baseType: !25, size: 32, offset: 18432)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2704, file: !1323, line: 1231, baseType: !3530, size: 64, offset: 18496)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1323, line: 1231, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2704, file: !1323, line: 1233, baseType: !100, size: 128, offset: 18560)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2704, file: !1323, line: 1240, baseType: !3534, size: 64, offset: 18688)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1323, line: 62, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2704, file: !1323, line: 1242, baseType: !3537, size: 64, offset: 18752)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1323, line: 1242, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2704, file: !1323, line: 1244, baseType: !100, size: 128, offset: 18816)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2704, file: !1323, line: 1245, baseType: !3541, size: 64, offset: 18944)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1323, line: 51, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2704, file: !1323, line: 1246, baseType: !788, size: 256, offset: 19008)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2704, file: !1323, line: 1247, baseType: !7, size: 32, offset: 19264)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2704, file: !1323, line: 1250, baseType: !3546, size: 64, offset: 19328)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1323, line: 57, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2704, file: !1323, line: 1251, baseType: !788, size: 256, offset: 19392)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2704, file: !1323, line: 1252, baseType: !100, size: 128, offset: 19648)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2704, file: !1323, line: 1259, baseType: !1582, size: 64, offset: 19776)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2704, file: !1323, line: 1260, baseType: !922, size: 16, offset: 19840)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2704, file: !1323, line: 1261, baseType: !922, size: 16, offset: 19856)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2704, file: !1323, line: 1314, baseType: !3554, size: 64, offset: 19904)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3556, line: 62, size: 256, align: 256, elements: !3557)
!3556 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3555, file: !3556, line: 75, baseType: !205, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3555, file: !3556, line: 90, baseType: !205, size: 32, offset: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3555, file: !3556, line: 112, baseType: !300, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3555, file: !3556, line: 132, baseType: !205, size: 32, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3555, file: !3556, line: 140, baseType: !205, size: 32, offset: 160)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3555, file: !3556, line: 149, baseType: !205, size: 32, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3555, file: !3556, line: 154, baseType: !3565, offset: 224)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !852)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2704, file: !1323, line: 1315, baseType: !225, size: 32, offset: 19968)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2704, file: !1323, line: 1316, baseType: !225, size: 32, offset: 20000)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2704, file: !1323, line: 1321, baseType: !42, size: 64, offset: 20032)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2704, file: !1323, line: 1325, baseType: !25, size: 32, offset: 20096)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2704, file: !1323, line: 1326, baseType: !25, size: 32, offset: 20128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2704, file: !1323, line: 1327, baseType: !25, size: 32, offset: 20160)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2704, file: !1323, line: 1328, baseType: !25, size: 32, offset: 20192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2704, file: !1323, line: 1329, baseType: !683, size: 128, align: 64, offset: 20224)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2704, file: !1323, line: 1332, baseType: !3575, size: 128, offset: 20352)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3576, line: 51, size: 128, elements: !3577)
!3576 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3577 = !{!3578, !3583, !3584}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3575, file: !3576, line: 60, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3580, line: 7, size: 64, elements: !3581)
!3580 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3579, file: !3580, line: 12, baseType: !2931, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3575, file: !3576, line: 63, baseType: !679, size: 8, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3575, file: !3576, line: 70, baseType: !679, size: 8, offset: 72)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2704, file: !1323, line: 1335, baseType: !1321, size: 64, offset: 20480)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2704, file: !1323, line: 1337, baseType: !3587, size: 128, offset: 20544)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3576, line: 39, size: 128, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3587, file: !3576, line: 40, baseType: !598, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3587, file: !3576, line: 42, baseType: !205, size: 32, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3587, file: !3576, line: 43, baseType: !205, size: 32, offset: 96)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2704, file: !1323, line: 1340, baseType: !3593, size: 64, offset: 20672)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1323, line: 69, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2704, file: !1323, line: 1351, baseType: !25, size: 32, offset: 20736)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2704, file: !1323, line: 1352, baseType: !25, size: 32, offset: 20768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2704, file: !1323, line: 1354, baseType: !42, size: 64, offset: 20800)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2704, file: !1323, line: 1364, baseType: !299, size: 64, offset: 20864)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2704, file: !1323, line: 1365, baseType: !299, size: 64, offset: 20928)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2704, file: !1323, line: 1412, baseType: !42, size: 64, offset: 20992)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2704, file: !1323, line: 1453, baseType: !3602, size: 64, offset: 21056)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1323, line: 1453, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2704, file: !1323, line: 1457, baseType: !3605, size: 64, offset: 21120)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !177, line: 61, size: 576, elements: !3607)
!3607 = !{!3608, !3609, !3628, !3631, !3632, !3665, !3675}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3606, file: !177, line: 62, baseType: !176, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !177, line: 64, baseType: !3610, size: 192, offset: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !177, line: 64, size: 192, elements: !3611)
!3611 = !{!3612, !3623}
!3612 = !DIDerivedType(tag: DW_TAG_member, scope: !3610, file: !177, line: 65, baseType: !3613, size: 192)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3610, file: !177, line: 65, size: 192, elements: !3614)
!3614 = !{!3615, !3622}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3613, file: !177, line: 66, baseType: !3616, size: 128)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3617, line: 50, size: 128, elements: !3618)
!3617 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3618 = !{!3619, !3620, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3616, file: !3617, line: 52, baseType: !42, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3616, file: !3617, line: 54, baseType: !7, size: 32, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3616, file: !3617, line: 55, baseType: !7, size: 32, offset: 96)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3613, file: !177, line: 67, baseType: !42, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, scope: !3610, file: !177, line: 70, baseType: !3624, size: 192)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3610, file: !177, line: 70, size: 192, elements: !3625)
!3625 = !{!3626, !3627}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3624, file: !177, line: 71, baseType: !683, size: 128, align: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3624, file: !177, line: 72, baseType: !42, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3606, file: !177, line: 76, baseType: !3629, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !177, line: 76, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3606, file: !177, line: 77, baseType: !42, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3606, file: !177, line: 79, baseType: !3633, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3617, line: 25, size: 256, elements: !3635)
!3635 = !{!3636, !3642, !3646}
!3636 = !DIDerivedType(tag: DW_TAG_member, scope: !3634, file: !3617, line: 26, baseType: !3637, size: 128)
!3637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3634, file: !3617, line: 26, size: 128, elements: !3638)
!3638 = !{!3639, !3641}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3637, file: !3617, line: 27, baseType: !3640, size: 128)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !3122)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3637, file: !3617, line: 28, baseType: !3640, size: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !3617, line: 31, baseType: !3643, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3617, line: 23, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !3634, file: !3617, line: 33, baseType: !3647, size: 64, offset: 192)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3634, file: !3617, line: 33, size: 64, elements: !3648)
!3648 = !{!3649, !3655, !3660}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3647, file: !3617, line: 38, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3617, line: 34, size: 64, elements: !3651)
!3651 = !{!3652, !3653, !3654}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3650, file: !3617, line: 35, baseType: !894, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3650, file: !3617, line: 36, baseType: !86, size: 8, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3650, file: !3617, line: 37, baseType: !86, size: 8, offset: 40)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3647, file: !3617, line: 42, baseType: !3656, size: 16)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3617, line: 39, size: 16, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3656, file: !3617, line: 40, baseType: !86, size: 8)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3656, file: !3617, line: 41, baseType: !86, size: 8, offset: 8)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3647, file: !3617, line: 46, baseType: !3661, size: 16)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3617, line: 43, size: 16, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3661, file: !3617, line: 44, baseType: !86, size: 8)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3661, file: !3617, line: 45, baseType: !86, size: 8, offset: 8)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3606, file: !177, line: 81, baseType: !3666, size: 64, offset: 448)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !177, line: 85, size: 384, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3667, file: !177, line: 86, baseType: !3629, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3667, file: !177, line: 87, baseType: !42, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3667, file: !177, line: 88, baseType: !42, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3667, file: !177, line: 89, baseType: !42, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3667, file: !177, line: 90, baseType: !679, size: 8, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3667, file: !177, line: 92, baseType: !3666, size: 64, offset: 320)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3606, file: !177, line: 82, baseType: !7, size: 32, offset: 512)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2704, file: !1323, line: 1463, baseType: !3677, offset: 21184)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1323, line: 739, elements: !762)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2704, file: !1323, line: 1470, baseType: !683, size: 128, align: 64, offset: 21184)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2704, file: !1323, line: 1471, baseType: !207, size: 32, offset: 21312)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2704, file: !1323, line: 1472, baseType: !25, size: 32, offset: 21344)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2704, file: !1323, line: 1474, baseType: !2703, size: 64, offset: 21376)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2704, file: !1323, line: 1475, baseType: !2225, size: 320, offset: 21440)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2704, file: !1323, line: 1478, baseType: !3684, size: 64, offset: 21760)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1323, line: 1478, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2704, file: !1323, line: 1482, baseType: !207, size: 32, offset: 21824)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2704, file: !1323, line: 1489, baseType: !23, size: 64, offset: 21888)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2704, file: !1323, line: 1504, baseType: !23, size: 64, offset: 21952)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2704, file: !1323, line: 1505, baseType: !300, size: 64, offset: 22016)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2704, file: !1323, line: 1506, baseType: !299, size: 64, offset: 22080)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2704, file: !1323, line: 1507, baseType: !300, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2704, file: !1323, line: 1508, baseType: !300, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2704, file: !1323, line: 1509, baseType: !300, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2704, file: !1323, line: 1510, baseType: !683, size: 128, align: 64, offset: 22208)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2704, file: !1323, line: 1511, baseType: !25, size: 32, offset: 22336)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2704, file: !1323, line: 1515, baseType: !3697, size: 64, offset: 22400)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !777, line: 56, size: 64, elements: !3698)
!3698 = !{!3699}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3697, file: !777, line: 57, baseType: !780, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2704, file: !1323, line: 1518, baseType: !3697, size: 64, offset: 22464)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2704, file: !1323, line: 1528, baseType: !683, size: 128, align: 64, offset: 22528)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2704, file: !1323, line: 1552, baseType: !3703, size: 35328, offset: 23040)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3704, line: 430, size: 35328, elements: !3705)
!3704 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3705 = !{!3706, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3735, !3736, !3737, !3738, !3739, !3740, !3743, !3744, !3745, !3746}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3703, file: !3704, line: 432, baseType: !3707, size: 192)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3708, size: 192, elements: !467)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3709, line: 16, size: 64, elements: !3710)
!3709 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3708, file: !3709, line: 17, baseType: !96, size: 16)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3708, file: !3709, line: 18, baseType: !96, size: 16, offset: 16)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3708, file: !3709, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3708, file: !3709, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3708, file: !3709, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3708, file: !3709, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3708, file: !3709, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3708, file: !3709, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3708, file: !3709, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3708, file: !3709, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3708, file: !3709, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3708, file: !3709, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3708, file: !3709, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3703, file: !3704, line: 436, baseType: !42, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3703, file: !3704, line: 440, baseType: !29, size: 16, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3703, file: !3704, line: 441, baseType: !29, size: 16, offset: 272)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3703, file: !3704, line: 442, baseType: !29, size: 16, offset: 288)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3703, file: !3704, line: 443, baseType: !29, size: 16, offset: 304)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3703, file: !3704, line: 447, baseType: !42, size: 64, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3703, file: !3704, line: 448, baseType: !42, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3703, file: !3704, line: 459, baseType: !3732, size: 256, offset: 448)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3733, size: 256, elements: !839)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3704, line: 428, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3703, file: !3704, line: 461, baseType: !42, size: 64, offset: 704)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3703, file: !3704, line: 463, baseType: !42, size: 64, offset: 768)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3703, file: !3704, line: 465, baseType: !42, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3703, file: !3704, line: 466, baseType: !42, size: 64, offset: 896)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3703, file: !3704, line: 467, baseType: !42, size: 64, offset: 960)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3703, file: !3704, line: 473, baseType: !3741, size: 64, offset: 1024)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3704, line: 10, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3703, file: !3704, line: 480, baseType: !42, size: 64, offset: 1088)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3703, file: !3704, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3703, file: !3704, line: 491, baseType: !225, size: 32, offset: 1184)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3703, file: !3704, line: 501, baseType: !3747, size: 33792, offset: 1536)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3748, line: 448, size: 33792, elements: !3749)
!3748 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3749 = !{!3750, !3751, !3752, !3914, !3915, !3921, !3922}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3747, file: !3748, line: 461, baseType: !7, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3747, file: !3748, line: 468, baseType: !42, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3747, file: !3748, line: 476, baseType: !3753, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3748, line: 356, size: 33280, align: 512, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3754, file: !3748, line: 358, baseType: !7, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3754, file: !3748, line: 361, baseType: !7, size: 32, offset: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3754, file: !3748, line: 364, baseType: !299, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3754, file: !3748, line: 367, baseType: !299, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3754, file: !3748, line: 370, baseType: !299, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3754, file: !3748, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3754, file: !3748, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3754, file: !3748, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3754, file: !3748, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3754, file: !3748, line: 397, baseType: !3766, size: 32768, offset: 512)
!3766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3748, line: 348, size: 32768, elements: !3767)
!3767 = !{!3768, !3783, !3820, !3897, !3910}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3766, file: !3748, line: 349, baseType: !3769, size: 896)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3748, line: 12, size: 896, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3782}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3769, file: !3748, line: 13, baseType: !225, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3769, file: !3748, line: 14, baseType: !225, size: 32, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3769, file: !3748, line: 15, baseType: !225, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3769, file: !3748, line: 16, baseType: !225, size: 32, offset: 96)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3769, file: !3748, line: 17, baseType: !225, size: 32, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3769, file: !3748, line: 18, baseType: !225, size: 32, offset: 160)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3769, file: !3748, line: 19, baseType: !225, size: 32, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3769, file: !3748, line: 22, baseType: !3779, size: 640, offset: 224)
!3779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 640, elements: !3780)
!3780 = !{!3781}
!3781 = !DISubrange(count: 20)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3769, file: !3748, line: 25, baseType: !225, size: 32, offset: 864)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3766, file: !3748, line: 350, baseType: !3784, size: 4096, align: 128)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3748, line: 34, size: 4096, align: 128, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3805, !3806, !3807, !3809, !3811, !3815}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3784, file: !3748, line: 35, baseType: !96, size: 16)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3784, file: !3748, line: 36, baseType: !96, size: 16, offset: 16)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3784, file: !3748, line: 37, baseType: !96, size: 16, offset: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3784, file: !3748, line: 38, baseType: !96, size: 16, offset: 48)
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !3784, file: !3748, line: 39, baseType: !3791, size: 128, offset: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3784, file: !3748, line: 39, size: 128, elements: !3792)
!3792 = !{!3793, !3798}
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !3748, line: 40, baseType: !3794, size: 128)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3748, line: 40, size: 128, elements: !3795)
!3795 = !{!3796, !3797}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3794, file: !3748, line: 41, baseType: !299, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3794, file: !3748, line: 42, baseType: !299, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !3748, line: 44, baseType: !3799, size: 128)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3748, line: 44, size: 128, elements: !3800)
!3800 = !{!3801, !3802, !3803, !3804}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3799, file: !3748, line: 45, baseType: !225, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3799, file: !3748, line: 46, baseType: !225, size: 32, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3799, file: !3748, line: 47, baseType: !225, size: 32, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3799, file: !3748, line: 48, baseType: !225, size: 32, offset: 96)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3784, file: !3748, line: 51, baseType: !225, size: 32, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3784, file: !3748, line: 52, baseType: !225, size: 32, offset: 224)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3784, file: !3748, line: 55, baseType: !3808, size: 1024, offset: 256)
!3808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 1024, elements: !308)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3784, file: !3748, line: 58, baseType: !3810, size: 2048, offset: 1280)
!3810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2048, elements: !471)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3784, file: !3748, line: 60, baseType: !3812, size: 384, offset: 3328)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 384, elements: !3813)
!3813 = !{!3814}
!3814 = !DISubrange(count: 12)
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3784, file: !3748, line: 62, baseType: !3816, size: 384, offset: 3712)
!3816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3784, file: !3748, line: 62, size: 384, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3816, file: !3748, line: 63, baseType: !3812, size: 384)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3816, file: !3748, line: 64, baseType: !3812, size: 384)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3766, file: !3748, line: 351, baseType: !3821, size: 1088)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3748, line: 79, size: 1088, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3896}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3821, file: !3748, line: 80, baseType: !225, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3821, file: !3748, line: 81, baseType: !225, size: 32, offset: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3821, file: !3748, line: 82, baseType: !225, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3821, file: !3748, line: 83, baseType: !225, size: 32, offset: 96)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3821, file: !3748, line: 84, baseType: !225, size: 32, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3821, file: !3748, line: 85, baseType: !225, size: 32, offset: 160)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3821, file: !3748, line: 86, baseType: !225, size: 32, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3821, file: !3748, line: 88, baseType: !3779, size: 640, offset: 224)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3821, file: !3748, line: 89, baseType: !86, size: 8, offset: 864)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3821, file: !3748, line: 90, baseType: !86, size: 8, offset: 872)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3821, file: !3748, line: 91, baseType: !86, size: 8, offset: 880)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3821, file: !3748, line: 92, baseType: !86, size: 8, offset: 888)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3821, file: !3748, line: 93, baseType: !86, size: 8, offset: 896)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3821, file: !3748, line: 94, baseType: !86, size: 8, offset: 904)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3821, file: !3748, line: 95, baseType: !3838, size: 64, offset: 960)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3840, line: 11, size: 128, elements: !3841)
!3840 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3839, file: !3840, line: 12, baseType: !501, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3839, file: !3840, line: 13, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3846, line: 103, size: 1344, elements: !3847)
!3846 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3876, !3877, !3878}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3845, file: !3846, line: 109, baseType: !42, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3845, file: !3846, line: 110, baseType: !42, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3845, file: !3846, line: 111, baseType: !42, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3845, file: !3846, line: 112, baseType: !42, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3845, file: !3846, line: 113, baseType: !42, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3845, file: !3846, line: 114, baseType: !42, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3845, file: !3846, line: 117, baseType: !42, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3845, file: !3846, line: 118, baseType: !42, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3845, file: !3846, line: 119, baseType: !42, size: 64, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3845, file: !3846, line: 120, baseType: !42, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3845, file: !3846, line: 121, baseType: !42, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3845, file: !3846, line: 122, baseType: !42, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3845, file: !3846, line: 123, baseType: !42, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3845, file: !3846, line: 124, baseType: !42, size: 64, offset: 832)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3845, file: !3846, line: 125, baseType: !42, size: 64, offset: 896)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3845, file: !3846, line: 139, baseType: !42, size: 64, offset: 960)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3845, file: !3846, line: 142, baseType: !42, size: 64, offset: 1024)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !3846, line: 144, baseType: !3866, size: 64, offset: 1088)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !3846, line: 144, size: 64, elements: !3867)
!3867 = !{!3868, !3869, !3870}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3866, file: !3846, line: 146, baseType: !96, size: 16)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3866, file: !3846, line: 148, baseType: !299, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3866, file: !3846, line: 150, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3846, line: 59, size: 64, elements: !3872)
!3872 = !{!3873, !3874, !3875}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3871, file: !3846, line: 61, baseType: !299, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3871, file: !3846, line: 63, baseType: !299, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3871, file: !3846, line: 65, baseType: !299, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3845, file: !3846, line: 153, baseType: !42, size: 64, offset: 1152)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3845, file: !3846, line: 154, baseType: !42, size: 64, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !3846, line: 156, baseType: !3879, size: 64, offset: 1280)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !3846, line: 156, size: 64, elements: !3880)
!3880 = !{!3881, !3882, !3883}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3879, file: !3846, line: 158, baseType: !96, size: 16)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3879, file: !3846, line: 160, baseType: !299, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3879, file: !3846, line: 162, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3846, line: 69, size: 64, elements: !3885)
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3884, file: !3846, line: 71, baseType: !299, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3884, file: !3846, line: 73, baseType: !299, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3884, file: !3846, line: 75, baseType: !299, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3884, file: !3846, line: 77, baseType: !299, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3884, file: !3846, line: 80, baseType: !299, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3884, file: !3846, line: 83, baseType: !299, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3884, file: !3846, line: 86, baseType: !299, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3884, file: !3846, line: 88, baseType: !299, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3884, file: !3846, line: 93, baseType: !299, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3884, file: !3846, line: 100, baseType: !299, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3821, file: !3748, line: 96, baseType: !225, size: 32, offset: 1024)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3766, file: !3748, line: 352, baseType: !3898, size: 4608, align: 512)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3748, line: 333, size: 4608, align: 512, elements: !3899)
!3899 = !{!3900, !3901, !3908}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3898, file: !3748, line: 334, baseType: !3784, size: 4096, align: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3898, file: !3748, line: 335, baseType: !3902, size: 512, offset: 4096)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3748, line: 312, size: 512, elements: !3903)
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3902, file: !3748, line: 313, baseType: !299, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3902, file: !3748, line: 314, baseType: !299, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3902, file: !3748, line: 315, baseType: !3907, size: 384, offset: 128)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 384, elements: !940)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3898, file: !3748, line: 336, baseType: !3909, offset: 4608)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !852)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3766, file: !3748, line: 353, baseType: !3911, size: 32768)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !3912)
!3912 = !{!3913}
!3913 = !DISubrange(count: 4096)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3747, file: !3748, line: 484, baseType: !3753, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3747, file: !3748, line: 491, baseType: !3916, size: 128, offset: 256)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3748, line: 404, size: 128, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3916, file: !3748, line: 424, baseType: !299, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3916, file: !3748, line: 432, baseType: !7, size: 32, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3916, file: !3748, line: 440, baseType: !7, size: 32, offset: 96)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3747, file: !3748, line: 498, baseType: !3916, size: 128, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3747, file: !3748, line: 508, baseType: !3754, size: 33280, align: 512, offset: 512)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2686, file: !2687, line: 16, baseType: !57, size: 192, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2686, file: !2687, line: 17, baseType: !52, size: 32, offset: 704)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !379, file: !155, line: 1240, baseType: !23, size: 64, offset: 6912)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !379, file: !155, line: 1243, baseType: !225, size: 32, offset: 6976)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !379, file: !155, line: 1245, baseType: !910, size: 64, offset: 7040)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !379, file: !155, line: 1246, baseType: !910, size: 64, offset: 7104)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !379, file: !155, line: 1248, baseType: !205, size: 32, offset: 7168)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !379, file: !155, line: 1249, baseType: !3931, size: 64, offset: 7232)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !189, line: 472, size: 256, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937, !3943, !3950}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3932, file: !189, line: 473, baseType: !62, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3932, file: !189, line: 474, baseType: !29, size: 16, offset: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3932, file: !189, line: 477, baseType: !29, size: 16, offset: 48)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !3932, file: !189, line: 478, baseType: !3938, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !40, line: 81, baseType: !3939)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 79, size: 64, elements: !3940)
!3940 = !{!3941}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3939, file: !40, line: 80, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !2116)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !189, line: 479, baseType: !3944, size: 64, offset: 128)
!3944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3932, file: !189, line: 479, size: 64, elements: !3945)
!3945 = !{!3946, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !3944, file: !189, line: 481, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !189, line: 464, baseType: !3931)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !3944, file: !189, line: 483, baseType: !3931, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3932, file: !189, line: 485, baseType: !830, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !379, file: !155, line: 1252, baseType: !3952, size: 256, offset: 7296)
!3952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !308)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !379, file: !155, line: 1253, baseType: !3954, size: 128, offset: 7552)
!3954 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3955, line: 21, baseType: !3956)
!3955 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3955, line: 19, size: 128, elements: !3957)
!3957 = !{!3958}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3956, file: !3955, line: 20, baseType: !3959, size: 128)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !3122)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !379, file: !155, line: 1255, baseType: !7, size: 32, offset: 7680)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !379, file: !155, line: 1261, baseType: !788, size: 256, offset: 7744)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !379, file: !155, line: 1267, baseType: !19, size: 64, offset: 8000)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !379, file: !155, line: 1269, baseType: !324, size: 64, offset: 8064)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !379, file: !155, line: 1271, baseType: !3965, size: 448, offset: 8128)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2466, line: 63, size: 448, elements: !3966)
!3966 = !{!3967, !3972, !3973, !3974, !3975, !3976, !3977}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3965, file: !2466, line: 64, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!42, !3971, !2464}
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3965, file: !2466, line: 66, baseType: !3968, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3965, file: !2466, line: 69, baseType: !501, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3965, file: !2466, line: 70, baseType: !25, size: 32, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3965, file: !2466, line: 71, baseType: !7, size: 32, offset: 224)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3965, file: !2466, line: 74, baseType: !100, size: 128, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3965, file: !2466, line: 85, baseType: !3978, size: 64, offset: 384)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !379, file: !155, line: 1274, baseType: !553, size: 64, offset: 8576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !379, file: !155, line: 1280, baseType: !553, size: 64, offset: 8640)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !379, file: !155, line: 1283, baseType: !25, size: 32, offset: 8704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !379, file: !155, line: 1286, baseType: !1374, size: 32, offset: 8736)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !379, file: !155, line: 1289, baseType: !2287, size: 64, offset: 8768)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !379, file: !155, line: 1290, baseType: !830, size: 64, offset: 8832)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !379, file: !155, line: 1297, baseType: !1034, size: 64, offset: 8896)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !379, file: !155, line: 1304, baseType: !3987, size: 64, offset: 8960)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3988, line: 49, size: 64, elements: !3989)
!3988 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3989 = !{!3990}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3987, file: !3988, line: 50, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3988, line: 41, size: 512, align: 512, elements: !3993)
!3993 = !{!3994, !3995, !4000}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3992, file: !3988, line: 43, baseType: !62, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3992, file: !3988, line: 45, baseType: !3996, size: 192, offset: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3988, line: 29, size: 192, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3996, file: !3988, line: 30, baseType: !100, size: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3996, file: !3988, line: 32, baseType: !501, size: 64, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3992, file: !3988, line: 46, baseType: !501, size: 64, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !379, file: !155, line: 1305, baseType: !3987, size: 64, offset: 9024)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !379, file: !155, line: 1306, baseType: !683, size: 128, align: 64, offset: 9088)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !379, file: !155, line: 1307, baseType: !1083, size: 256, offset: 9216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !379, file: !155, line: 1309, baseType: !788, size: 256, offset: 9472)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !379, file: !155, line: 1314, baseType: !25, size: 32, offset: 9728)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !379, file: !155, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !379, file: !155, line: 1318, baseType: !100, size: 128, offset: 10304)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !379, file: !155, line: 1320, baseType: !62, size: 32, offset: 10432)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !379, file: !155, line: 1321, baseType: !100, size: 128, offset: 10496)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !373, file: !374, line: 73, baseType: !25, size: 32, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !373, file: !374, line: 74, baseType: !4012, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !876, line: 42, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !326, file: !265, line: 141, baseType: !4016, size: 64, offset: 704)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!25, !2526, !679}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !326, file: !265, line: 142, baseType: !4020, size: 64, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!263, !263, !4023}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !264, file: !265, line: 96, baseType: !378, size: 64, offset: 832)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !264, file: !265, line: 97, baseType: !42, size: 64, offset: 896)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !264, file: !265, line: 98, baseType: !23, size: 64, offset: 960)
!4028 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !265, line: 100, baseType: !4029, size: 128, offset: 1024)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !265, line: 100, size: 128, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4029, file: !265, line: 101, baseType: !100, size: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4029, file: !265, line: 102, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !264, file: !265, line: 104, baseType: !100, size: 128, offset: 1152)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !264, file: !265, line: 105, baseType: !100, size: 128, offset: 1280)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !264, file: !265, line: 113, baseType: !4037, size: 128, offset: 1408)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !265, line: 109, size: 128, elements: !4038)
!4038 = !{!4039, !4040, !4041}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4037, file: !265, line: 110, baseType: !834, size: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4037, file: !265, line: 111, baseType: !279, size: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4037, file: !265, line: 112, baseType: !683, size: 128, align: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !257, file: !155, line: 1968, baseType: !4043, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!19, !263, !228, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4048, line: 10, size: 128, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4047, file: !4048, line: 11, baseType: !1859, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4047, file: !4048, line: 12, baseType: !23, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !257, file: !155, line: 1969, baseType: !4053, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!25, !4012, !228, !25}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !257, file: !155, line: 1970, baseType: !4057, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!251, !228, !25, !679}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !257, file: !155, line: 1972, baseType: !4061, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!25, !263, !367, !25}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !257, file: !155, line: 1974, baseType: !4065, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!25, !4012, !228, !263, !27, !679}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !257, file: !155, line: 1976, baseType: !4069, size: 64, offset: 384)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!25, !263, !228, !263}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !257, file: !155, line: 1977, baseType: !4073, size: 64, offset: 448)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!25, !228, !263}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !257, file: !155, line: 1978, baseType: !4077, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!25, !4012, !228, !263, !19}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !257, file: !155, line: 1980, baseType: !4081, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!25, !4012, !228, !263, !27}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !257, file: !155, line: 1982, baseType: !4073, size: 64, offset: 640)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !257, file: !155, line: 1983, baseType: !4086, size: 64, offset: 704)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!25, !4012, !228, !263, !27, !383}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !257, file: !155, line: 1985, baseType: !4090, size: 64, offset: 768)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!25, !4012, !228, !263, !228, !263, !7}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !257, file: !155, line: 1987, baseType: !4094, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!25, !4012, !263, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !155, line: 226, size: 640, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4112, !4121, !4122, !4127, !4128, !4129}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4098, file: !155, line: 227, baseType: !7, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4098, file: !155, line: 228, baseType: !27, size: 16, offset: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, scope: !4098, file: !155, line: 241, baseType: !4103, size: 32, offset: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4098, file: !155, line: 241, size: 32, elements: !4104)
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4103, file: !155, line: 242, baseType: !234, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4103, file: !155, line: 243, baseType: !4107, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4108, line: 16, baseType: !4109)
!4108 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4108, line: 14, size: 32, elements: !4110)
!4110 = !{!4111}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4109, file: !4108, line: 15, baseType: !239, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !4098, file: !155, line: 245, baseType: !4113, size: 32, offset: 96)
!4113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4098, file: !155, line: 245, size: 32, elements: !4114)
!4114 = !{!4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4113, file: !155, line: 246, baseType: !243, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4113, file: !155, line: 247, baseType: !4117, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4108, line: 20, baseType: !4118)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4108, line: 18, size: 32, elements: !4119)
!4119 = !{!4120}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4118, file: !4108, line: 19, baseType: !247, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4098, file: !155, line: 249, baseType: !44, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4098, file: !155, line: 250, baseType: !4123, size: 128, offset: 192)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !911, line: 13, size: 128, elements: !4124)
!4124 = !{!4125, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4123, file: !911, line: 14, baseType: !910, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4123, file: !911, line: 15, baseType: !501, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4098, file: !155, line: 251, baseType: !4123, size: 128, offset: 320)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4098, file: !155, line: 252, baseType: !4123, size: 128, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4098, file: !155, line: 259, baseType: !769, size: 64, offset: 576)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !257, file: !155, line: 1988, baseType: !4131, size: 64, offset: 896)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!25, !4012, !2526, !4134, !225, !7}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4136, line: 22, size: 1280, elements: !4137)
!4136 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4135, file: !4136, line: 23, baseType: !225, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4135, file: !4136, line: 24, baseType: !27, size: 16, offset: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4135, file: !4136, line: 25, baseType: !7, size: 32, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4135, file: !4136, line: 26, baseType: !918, size: 32, offset: 96)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4135, file: !4136, line: 27, baseType: !299, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4135, file: !4136, line: 28, baseType: !299, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4135, file: !4136, line: 41, baseType: !299, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4135, file: !4136, line: 42, baseType: !383, size: 32, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4135, file: !4136, line: 43, baseType: !383, size: 32, offset: 352)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4135, file: !4136, line: 44, baseType: !234, size: 32, offset: 384)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4135, file: !4136, line: 45, baseType: !243, size: 32, offset: 416)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4135, file: !4136, line: 46, baseType: !44, size: 64, offset: 448)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4135, file: !4136, line: 47, baseType: !4123, size: 128, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4135, file: !4136, line: 48, baseType: !4123, size: 128, offset: 640)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4135, file: !4136, line: 49, baseType: !4123, size: 128, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4135, file: !4136, line: 50, baseType: !4123, size: 128, offset: 896)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4135, file: !4136, line: 51, baseType: !299, size: 64, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4135, file: !4136, line: 52, baseType: !299, size: 64, offset: 1088)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4135, file: !4136, line: 53, baseType: !225, size: 32, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4135, file: !4136, line: 54, baseType: !225, size: 32, offset: 1184)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4135, file: !4136, line: 55, baseType: !299, size: 64, offset: 1216)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !257, file: !155, line: 1990, baseType: !4160, size: 64, offset: 960)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!498, !263, !367, !38}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !257, file: !155, line: 1991, baseType: !4164, size: 64, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!25, !228, !4167, !299, !299}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !155, line: 55, flags: DIFlagFwdDecl)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !257, file: !155, line: 1993, baseType: !4170, size: 64, offset: 1088)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!25, !228, !25}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !257, file: !155, line: 1994, baseType: !4174, size: 64, offset: 1152)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!25, !228, !263, !769, !7, !27}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !257, file: !155, line: 1997, baseType: !4178, size: 64, offset: 1216)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!25, !4012, !228, !769, !27}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !257, file: !155, line: 1999, baseType: !4182, size: 64, offset: 1280)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!251, !4012, !263, !25}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !257, file: !155, line: 2001, baseType: !4186, size: 64, offset: 1344)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!25, !4012, !263, !251, !25}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !257, file: !155, line: 2003, baseType: !4190, size: 64, offset: 1408)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!25, !4012, !263, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !155, line: 76, flags: DIFlagFwdDecl)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !257, file: !155, line: 2005, baseType: !4196, size: 64, offset: 1472)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!25, !263, !4193}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !257, file: !155, line: 2006, baseType: !4200, size: 64, offset: 1536)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!4203, !228}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !155, line: 3192, size: 192, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4204, file: !155, line: 3193, baseType: !541, size: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4204, file: !155, line: 3194, baseType: !225, size: 32, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !229, file: !155, line: 655, baseType: !378, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !229, file: !155, line: 656, baseType: !536, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !229, file: !155, line: 659, baseType: !23, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !229, file: !155, line: 663, baseType: !42, size: 64, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !155, line: 671, baseType: !4213, size: 32, offset: 704)
!4213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !155, line: 671, size: 32, elements: !4214)
!4214 = !{!4215, !4217}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4213, file: !155, line: 672, baseType: !4216, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4213, file: !155, line: 673, baseType: !7, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !229, file: !155, line: 675, baseType: !383, size: 32, offset: 736)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !229, file: !155, line: 676, baseType: !44, size: 64, offset: 768)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !229, file: !155, line: 677, baseType: !4123, size: 128, offset: 832)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !229, file: !155, line: 678, baseType: !4123, size: 128, offset: 960)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !229, file: !155, line: 679, baseType: !4123, size: 128, offset: 1088)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !229, file: !155, line: 680, baseType: !62, size: 32, offset: 1216)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !229, file: !155, line: 681, baseType: !29, size: 16, offset: 1248)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !229, file: !155, line: 682, baseType: !86, size: 8, offset: 1264)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !229, file: !155, line: 683, baseType: !86, size: 8, offset: 1272)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !229, file: !155, line: 684, baseType: !2599, size: 64, offset: 1280)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !229, file: !155, line: 691, baseType: !42, size: 64, offset: 1344)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !229, file: !155, line: 692, baseType: !549, size: 320, offset: 1408)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !229, file: !155, line: 694, baseType: !42, size: 64, offset: 1728)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !229, file: !155, line: 695, baseType: !42, size: 64, offset: 1792)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !229, file: !155, line: 697, baseType: !834, size: 128, offset: 1856)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !229, file: !155, line: 698, baseType: !100, size: 128, offset: 1984)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !229, file: !155, line: 707, baseType: !100, size: 128, offset: 2112)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !229, file: !155, line: 708, baseType: !100, size: 128, offset: 2240)
!4236 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !155, line: 709, baseType: !4237, size: 128, offset: 2368)
!4237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !155, line: 709, size: 128, elements: !4238)
!4238 = !{!4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4237, file: !155, line: 710, baseType: !830, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4237, file: !155, line: 711, baseType: !683, size: 128, align: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !229, file: !155, line: 713, baseType: !555, size: 64, offset: 2496)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !229, file: !155, line: 714, baseType: !555, size: 64, offset: 2560)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !229, file: !155, line: 715, baseType: !52, size: 32, offset: 2624)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !229, file: !155, line: 716, baseType: !52, size: 32, offset: 2656)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !229, file: !155, line: 717, baseType: !52, size: 32, offset: 2688)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !229, file: !155, line: 719, baseType: !52, size: 32, offset: 2720)
!4247 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !155, line: 721, baseType: !4248, size: 64, offset: 2752)
!4248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !155, line: 721, size: 64, elements: !4249)
!4249 = !{!4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4248, file: !155, line: 722, baseType: !1204, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4248, file: !155, line: 723, baseType: !2355, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !229, file: !155, line: 725, baseType: !4253, size: 64, offset: 2816)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !155, line: 725, flags: DIFlagFwdDecl)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !229, file: !155, line: 726, baseType: !537, size: 1536, align: 64, offset: 2880)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !229, file: !155, line: 727, baseType: !100, size: 128, offset: 4416)
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !155, line: 728, baseType: !4258, size: 64, offset: 4544)
!4258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !155, line: 728, size: 64, elements: !4259)
!4259 = !{!4260, !4261, !4264, !4265}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4258, file: !155, line: 729, baseType: !1321, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4258, file: !155, line: 730, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !155, line: 730, flags: DIFlagFwdDecl)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4258, file: !155, line: 731, baseType: !367, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4258, file: !155, line: 732, baseType: !7, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !229, file: !155, line: 735, baseType: !205, size: 32, offset: 4608)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !229, file: !155, line: 738, baseType: !205, size: 32, offset: 4640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !229, file: !155, line: 739, baseType: !3931, size: 64, offset: 4672)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !229, file: !155, line: 750, baseType: !23, size: 64, offset: 4736)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_iter_info", file: !189, line: 400, size: 448, elements: !4272)
!4272 = !{!4273, !4276, !4277, !4278}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !4271, file: !189, line: 401, baseType: !4274, size: 320)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4275, size: 320, elements: !1052)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "current_group", scope: !4271, file: !189, line: 402, baseType: !213, size: 64, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "report_mask", scope: !4271, file: !189, line: 403, baseType: !7, size: 32, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4271, file: !189, line: 404, baseType: !25, size: 32, offset: 416)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "handle_inode_event", scope: !219, file: !189, line: 160, baseType: !4280, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!25, !4275, !225, !228, !228, !344, !225}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "free_group_priv", scope: !219, file: !189, line: 163, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !213}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "freeing_mark", scope: !219, file: !189, line: 164, baseType: !4288, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !4275, !213}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "free_event", scope: !219, file: !189, line: 165, baseType: !4292, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !213, !4295}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_event", file: !189, line: 175, size: 128, elements: !4297)
!4297 = !{!4298}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4296, file: !189, line: 176, baseType: !100, size: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "free_mark", scope: !219, file: !189, line: 167, baseType: !4300, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !4275}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !214, file: !189, line: 196, baseType: !207, size: 32, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "notification_lock", scope: !214, file: !189, line: 199, baseType: !62, size: 32, offset: 96)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "notification_list", scope: !214, file: !189, line: 200, baseType: !100, size: 128, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "notification_waitq", scope: !214, file: !189, line: 201, baseType: !57, size: 192, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "q_len", scope: !214, file: !189, line: 202, baseType: !7, size: 32, offset: 448)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "max_events", scope: !214, file: !189, line: 203, baseType: !7, size: 32, offset: 480)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !214, file: !189, line: 211, baseType: !7, size: 32, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !214, file: !189, line: 212, baseType: !679, size: 8, offset: 544)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !189, line: 217, baseType: !25, size: 32, offset: 576)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "owner_flags", scope: !214, file: !189, line: 218, baseType: !7, size: 32, offset: 608)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mark_mutex", scope: !214, file: !189, line: 221, baseType: !788, size: 256, offset: 640)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "user_waits", scope: !214, file: !189, line: 222, baseType: !52, size: 32, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "marks_list", scope: !214, file: !189, line: 224, baseType: !100, size: 128, offset: 960)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_fa", scope: !214, file: !189, line: 226, baseType: !4317, size: 64, offset: 1088)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !155, line: 1083, size: 384, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4318, file: !155, line: 1084, baseType: !801, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4318, file: !155, line: 1085, baseType: !25, size: 32, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4318, file: !155, line: 1086, baseType: !25, size: 32, offset: 96)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4318, file: !155, line: 1087, baseType: !4317, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4318, file: !155, line: 1088, baseType: !769, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4318, file: !155, line: 1089, baseType: !683, size: 128, align: 64, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_event", scope: !214, file: !189, line: 228, baseType: !4295, size: 64, offset: 1152)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !214, file: !189, line: 232, baseType: !2473, size: 64, offset: 1216)
!4328 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !189, line: 235, baseType: !4329, size: 320, offset: 1280)
!4329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !189, line: 235, size: 320, elements: !4330)
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4329, file: !189, line: 236, baseType: !23, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_data", scope: !4329, file: !189, line: 242, baseType: !4333, size: 320)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_group_private_data", file: !189, line: 238, size: 320, elements: !4334)
!4334 = !{!4335, !4336, !4343}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "idr_lock", scope: !4333, file: !189, line: 239, baseType: !62, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !4333, file: !189, line: 240, baseType: !4337, size: 192, offset: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4338, line: 19, size: 192, elements: !4339)
!4338 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4339 = !{!4340, !4341, !4342}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4337, file: !4338, line: 20, baseType: !541, size: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4337, file: !4338, line: 21, baseType: !7, size: 32, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4337, file: !4338, line: 22, baseType: !7, size: 32, offset: 160)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4333, file: !189, line: 241, baseType: !1156, size: 64, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "g_list", scope: !202, file: !189, line: 514, baseType: !100, size: 128, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !202, file: !189, line: 516, baseType: !62, size: 32, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "obj_list", scope: !202, file: !189, line: 518, baseType: !834, size: 128, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !202, file: !189, line: 520, baseType: !3931, size: 64, offset: 448)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_mask", scope: !202, file: !189, line: 522, baseType: !205, size: 32, offset: 512)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !189, line: 533, baseType: !7, size: 32, offset: 544)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "dn", scope: !199, file: !3, line: 53, baseType: !4351, size: 64, offset: 576)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dnotify_struct", file: !4353, line: 12, size: 256, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/dnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36c3e01f8303eb196897417b9b032b92")
!4354 = !{!4355, !4356, !4357, !4358, !4359}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dn_next", scope: !4352, file: !4353, line: 13, baseType: !4351, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dn_mask", scope: !4352, file: !4353, line: 14, baseType: !205, size: 32, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dn_fd", scope: !4352, file: !4353, line: 15, baseType: !25, size: 32, offset: 96)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dn_filp", scope: !4352, file: !4353, line: 16, baseType: !769, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dn_owner", scope: !4352, file: !4353, line: 17, baseType: !1295, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4366)
!4366 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3151)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !769)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !28, line: 155, baseType: !7)
!4371 = !{!4372, !4374, !4379, !0, !4381, !4386, !4388, !4393, !4398, !4403, !4405, !4408, !4410, !4415}
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_dnotify__298_412_dnotify_init6299", scope: !2, file: !3, line: 412, type: !23, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "dnotify_struct_cache", scope: !2, file: !3, line: 42, type: !4376, isLocal: true, isDefinition: true)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4378, line: 325, flags: DIFlagFwdDecl)
!4378 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4379 = !DIGlobalVariableExpression(var: !4380, expr: !DIExpression())
!4380 = distinct !DIGlobalVariable(name: "dnotify_mark_cache", scope: !2, file: !3, line: 43, type: !4376, isLocal: true, isDefinition: true)
!4381 = !DIGlobalVariableExpression(var: !4382, expr: !DIExpression())
!4382 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !4383, isLocal: true, isDefinition: true)
!4383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 224, elements: !4384)
!4384 = !{!4385}
!4385 = !DISubrange(count: 28)
!4386 = !DIGlobalVariableExpression(var: !4387, expr: !DIExpression())
!4387 = distinct !DIGlobalVariable(name: "dir_notify_enable", scope: !2, file: !3, line: 22, type: !25, isLocal: true, isDefinition: true)
!4388 = !DIGlobalVariableExpression(var: !4389, expr: !DIExpression())
!4389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4390, isLocal: true, isDefinition: true)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 120, elements: !4391)
!4391 = !{!4392}
!4392 = !DISubrange(count: 15)
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(scope: null, file: !3, line: 402, type: !4395, isLocal: true, isDefinition: true)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 104, elements: !4396)
!4396 = !{!4397}
!4397 = !DISubrange(count: 13)
!4398 = !DIGlobalVariableExpression(var: !4399, expr: !DIExpression())
!4399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !4400, isLocal: true, isDefinition: true)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !4401)
!4401 = !{!4402}
!4402 = !DISubrange(count: 47)
!4403 = !DIGlobalVariableExpression(var: !4404, expr: !DIExpression())
!4404 = distinct !DIGlobalVariable(name: "dnotify_fsnotify_ops", scope: !2, file: !3, line: 141, type: !218, isLocal: true, isDefinition: true)
!4405 = !DIGlobalVariableExpression(var: !4406, expr: !DIExpression())
!4406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !4407, isLocal: true, isDefinition: true)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !467)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !3121, isLocal: true, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !4412, isLocal: true, isDefinition: true)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 144, elements: !4413)
!4413 = !{!4414}
!4414 = !DISubrange(count: 18)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "dnotify_sysctls", scope: !2, file: !3, line: 24, type: !4417, isLocal: true, isDefinition: true)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, elements: !2116)
!4418 = !{i32 7, !"Dwarf Version", i32 5}
!4419 = !{i32 2, !"Debug Info Version", i32 3}
!4420 = !{i32 1, !"wchar_size", i32 2}
!4421 = !{i32 8, !"cf-protection-branch", i32 1}
!4422 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4423 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4424 = !{i32 1, !"Code Model", i32 2}
!4425 = !{i32 1, !"override-stack-alignment", i32 8}
!4426 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4427 = distinct !DISubprogram(name: "dnotify_flush", scope: !3, file: !3, line: 153, type: !4428, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !769, !1295}
!4430 = !{!4431, !4432, !4433, !4434, !4435, !4436, !4438, !4439, !4440}
!4431 = !DILocalVariable(name: "filp", arg: 1, scope: !4427, file: !3, line: 153, type: !769)
!4432 = !DILocalVariable(name: "id", arg: 2, scope: !4427, file: !3, line: 153, type: !1295)
!4433 = !DILocalVariable(name: "fsn_mark", scope: !4427, file: !3, line: 155, type: !4275)
!4434 = !DILocalVariable(name: "dn_mark", scope: !4427, file: !3, line: 156, type: !198)
!4435 = !DILocalVariable(name: "dn", scope: !4427, file: !3, line: 157, type: !4351)
!4436 = !DILocalVariable(name: "prev", scope: !4427, file: !3, line: 158, type: !4437)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4438 = !DILocalVariable(name: "inode", scope: !4427, file: !3, line: 159, type: !228)
!4439 = !DILocalVariable(name: "free", scope: !4427, file: !3, line: 160, type: !679)
!4440 = !DILocalVariable(name: "__mptr", scope: !4441, file: !3, line: 169, type: !23)
!4441 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 169, column: 12)
!4442 = !DILocation(line: 153, column: 33, scope: !4427)
!4443 = !DILocation(line: 153, column: 50, scope: !4427)
!4444 = !DILocation(line: 155, column: 2, scope: !4427)
!4445 = !DILocation(line: 155, column: 24, scope: !4427)
!4446 = !DILocation(line: 156, column: 2, scope: !4427)
!4447 = !DILocation(line: 156, column: 23, scope: !4427)
!4448 = !DILocation(line: 157, column: 2, scope: !4427)
!4449 = !DILocation(line: 157, column: 25, scope: !4427)
!4450 = !DILocation(line: 158, column: 2, scope: !4427)
!4451 = !DILocation(line: 158, column: 26, scope: !4427)
!4452 = !DILocation(line: 159, column: 2, scope: !4427)
!4453 = !DILocation(line: 159, column: 16, scope: !4427)
!4454 = !DILocation(line: 160, column: 2, scope: !4427)
!4455 = !DILocation(line: 160, column: 7, scope: !4427)
!4456 = !DILocation(line: 162, column: 21, scope: !4427)
!4457 = !DILocation(line: 162, column: 10, scope: !4427)
!4458 = !DILocation(line: 162, column: 8, scope: !4427)
!4459 = !DILocation(line: 163, column: 7, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 163, column: 6)
!4461 = !DILocation(line: 163, column: 6, scope: !4427)
!4462 = !DILocation(line: 164, column: 3, scope: !4460)
!4463 = !DILocation(line: 166, column: 33, scope: !4427)
!4464 = !DILocation(line: 166, column: 40, scope: !4427)
!4465 = !DILocation(line: 166, column: 58, scope: !4427)
!4466 = !DILocation(line: 166, column: 13, scope: !4427)
!4467 = !DILocation(line: 166, column: 11, scope: !4427)
!4468 = !DILocation(line: 167, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 167, column: 6)
!4470 = !DILocation(line: 167, column: 6, scope: !4427)
!4471 = !DILocation(line: 168, column: 3, scope: !4469)
!4472 = !DILocation(line: 169, column: 12, scope: !4441)
!4473 = !DILocation(line: 169, column: 12, scope: !4427)
!4474 = !DILocation(line: 169, column: 10, scope: !4427)
!4475 = !DILocation(line: 171, column: 22, scope: !4427)
!4476 = !DILocation(line: 171, column: 2, scope: !4427)
!4477 = !DILocation(line: 173, column: 13, scope: !4427)
!4478 = !DILocation(line: 173, column: 23, scope: !4427)
!4479 = !DILocation(line: 173, column: 2, scope: !4427)
!4480 = !DILocation(line: 174, column: 10, scope: !4427)
!4481 = !DILocation(line: 174, column: 19, scope: !4427)
!4482 = !DILocation(line: 174, column: 7, scope: !4427)
!4483 = !DILocation(line: 175, column: 2, scope: !4427)
!4484 = !DILocation(line: 175, column: 16, scope: !4427)
!4485 = !DILocation(line: 175, column: 15, scope: !4427)
!4486 = !DILocation(line: 175, column: 13, scope: !4427)
!4487 = !DILocation(line: 175, column: 22, scope: !4427)
!4488 = !DILocation(line: 176, column: 8, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 176, column: 7)
!4490 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 175, column: 31)
!4491 = !DILocation(line: 176, column: 12, scope: !4489)
!4492 = !DILocation(line: 176, column: 24, scope: !4489)
!4493 = !DILocation(line: 176, column: 21, scope: !4489)
!4494 = !DILocation(line: 176, column: 28, scope: !4489)
!4495 = !DILocation(line: 176, column: 32, scope: !4489)
!4496 = !DILocation(line: 176, column: 36, scope: !4489)
!4497 = !DILocation(line: 176, column: 47, scope: !4489)
!4498 = !DILocation(line: 176, column: 44, scope: !4489)
!4499 = !DILocation(line: 176, column: 7, scope: !4490)
!4500 = !DILocation(line: 177, column: 12, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 176, column: 54)
!4502 = !DILocation(line: 177, column: 16, scope: !4501)
!4503 = !DILocation(line: 177, column: 5, scope: !4501)
!4504 = !DILocation(line: 177, column: 10, scope: !4501)
!4505 = !DILocation(line: 178, column: 20, scope: !4501)
!4506 = !DILocation(line: 178, column: 42, scope: !4501)
!4507 = !DILocation(line: 178, column: 4, scope: !4501)
!4508 = !DILocation(line: 179, column: 30, scope: !4501)
!4509 = !DILocation(line: 179, column: 4, scope: !4501)
!4510 = !DILocation(line: 180, column: 4, scope: !4501)
!4511 = !DILocation(line: 182, column: 11, scope: !4490)
!4512 = !DILocation(line: 182, column: 15, scope: !4490)
!4513 = !DILocation(line: 182, column: 8, scope: !4490)
!4514 = distinct !{!4514, !4483, !4515, !4516, !4517}
!4515 = !DILocation(line: 183, column: 2, scope: !4427)
!4516 = !{!"llvm.loop.mustprogress"}
!4517 = !{!"llvm.loop.unroll.disable"}
!4518 = !DILocation(line: 185, column: 15, scope: !4427)
!4519 = !DILocation(line: 185, column: 25, scope: !4427)
!4520 = !DILocation(line: 185, column: 2, scope: !4427)
!4521 = !DILocation(line: 189, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 189, column: 6)
!4523 = !DILocation(line: 189, column: 15, scope: !4522)
!4524 = !DILocation(line: 189, column: 18, scope: !4522)
!4525 = !DILocation(line: 189, column: 6, scope: !4427)
!4526 = !DILocation(line: 190, column: 24, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 189, column: 27)
!4528 = !DILocation(line: 190, column: 3, scope: !4527)
!4529 = !DILocation(line: 191, column: 8, scope: !4527)
!4530 = !DILocation(line: 192, column: 2, scope: !4527)
!4531 = !DILocation(line: 194, column: 24, scope: !4427)
!4532 = !DILocation(line: 194, column: 2, scope: !4427)
!4533 = !DILocation(line: 196, column: 6, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 196, column: 6)
!4535 = !{i8 0, i8 2}
!4536 = !DILocation(line: 196, column: 6, scope: !4427)
!4537 = !DILocation(line: 197, column: 22, scope: !4534)
!4538 = !DILocation(line: 197, column: 3, scope: !4534)
!4539 = !DILocation(line: 198, column: 20, scope: !4427)
!4540 = !DILocation(line: 198, column: 2, scope: !4427)
!4541 = !DILocation(line: 199, column: 1, scope: !4427)
!4542 = distinct !DISubprogram(name: "file_inode", scope: !155, file: !155, line: 1073, type: !4543, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4547)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!228, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!4547 = !{!4548}
!4548 = !DILocalVariable(name: "f", arg: 1, scope: !4542, file: !155, line: 1073, type: !4545)
!4549 = !DILocation(line: 1073, column: 59, scope: !4542)
!4550 = !DILocation(line: 1075, column: 9, scope: !4542)
!4551 = !DILocation(line: 1075, column: 12, scope: !4542)
!4552 = !DILocation(line: 1075, column: 2, scope: !4542)
!4553 = !DISubprogram(name: "fsnotify_find_mark", scope: !189, file: !189, line: 763, type: !4554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!4275, !3947, !213}
!4556 = distinct !DISubprogram(name: "fsnotify_group_lock", scope: !189, file: !189, line: 264, type: !4285, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4557)
!4557 = !{!4558}
!4558 = !DILocalVariable(name: "group", arg: 1, scope: !4556, file: !189, line: 264, type: !213)
!4559 = !DILocation(line: 264, column: 63, scope: !4556)
!4560 = !DILocation(line: 266, column: 14, scope: !4556)
!4561 = !DILocation(line: 266, column: 21, scope: !4556)
!4562 = !DILocation(line: 266, column: 2, scope: !4556)
!4563 = !DILocation(line: 267, column: 6, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4556, file: !189, line: 267, column: 6)
!4565 = !DILocation(line: 267, column: 13, scope: !4564)
!4566 = !DILocation(line: 267, column: 19, scope: !4564)
!4567 = !DILocation(line: 267, column: 6, scope: !4556)
!4568 = !DILocation(line: 268, column: 24, scope: !4564)
!4569 = !DILocation(line: 268, column: 3, scope: !4564)
!4570 = !DILocation(line: 268, column: 10, scope: !4564)
!4571 = !DILocation(line: 268, column: 22, scope: !4564)
!4572 = !DILocation(line: 269, column: 1, scope: !4556)
!4573 = distinct !DISubprogram(name: "spin_lock", scope: !4574, file: !4574, line: 349, type: !4575, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4577)
!4574 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !1633}
!4577 = !{!4578}
!4578 = !DILocalVariable(name: "lock", arg: 1, scope: !4573, file: !4574, line: 349, type: !1633)
!4579 = !DILocation(line: 349, column: 51, scope: !4573)
!4580 = !DILocation(line: 351, column: 2, scope: !4573)
!4581 = !DILocation(line: 352, column: 1, scope: !4573)
!4582 = !DISubprogram(name: "kmem_cache_free", scope: !4583, file: !4583, line: 503, type: !4584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4583 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4376, !23}
!4586 = distinct !DISubprogram(name: "dnotify_recalc_inode_mask", scope: !3, file: !3, line: 64, type: !4301, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4587)
!4587 = !{!4588, !4589, !4590, !4591, !4592}
!4588 = !DILocalVariable(name: "fsn_mark", arg: 1, scope: !4586, file: !3, line: 64, type: !4275)
!4589 = !DILocalVariable(name: "new_mask", scope: !4586, file: !3, line: 66, type: !205)
!4590 = !DILocalVariable(name: "dn", scope: !4586, file: !3, line: 67, type: !4351)
!4591 = !DILocalVariable(name: "dn_mark", scope: !4586, file: !3, line: 68, type: !198)
!4592 = !DILocalVariable(name: "__mptr", scope: !4593, file: !3, line: 68, type: !23)
!4593 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 68, column: 34)
!4594 = !DILocation(line: 64, column: 61, scope: !4586)
!4595 = !DILocation(line: 66, column: 2, scope: !4586)
!4596 = !DILocation(line: 66, column: 8, scope: !4586)
!4597 = !DILocation(line: 67, column: 2, scope: !4586)
!4598 = !DILocation(line: 67, column: 25, scope: !4586)
!4599 = !DILocation(line: 68, column: 2, scope: !4586)
!4600 = !DILocation(line: 68, column: 23, scope: !4586)
!4601 = !DILocation(line: 68, column: 34, scope: !4593)
!4602 = !DILocation(line: 68, column: 34, scope: !4586)
!4603 = !DILocation(line: 72, column: 2, scope: !4586)
!4604 = !DILocation(line: 72, column: 2, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 72, column: 2)
!4606 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 72, column: 2)
!4607 = !DILocation(line: 72, column: 2, scope: !4606)
!4608 = !DILocation(line: 72, column: 2, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 72, column: 2)
!4610 = !DILocation(line: 72, column: 2, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 72, column: 2)
!4612 = !DILocation(line: 72, column: 2, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 72, column: 2)
!4614 = !{i64 2154313601, i64 2154313630, i64 2154313676, i64 2154313734, i64 2154313788, i64 2154313842, i64 2154313897, i64 2154313928}
!4615 = !DILocation(line: 74, column: 12, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 74, column: 2)
!4617 = !DILocation(line: 74, column: 21, scope: !4616)
!4618 = !DILocation(line: 74, column: 10, scope: !4616)
!4619 = !DILocation(line: 74, column: 7, scope: !4616)
!4620 = !DILocation(line: 74, column: 25, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 74, column: 2)
!4622 = !DILocation(line: 74, column: 28, scope: !4621)
!4623 = !DILocation(line: 74, column: 2, scope: !4616)
!4624 = !DILocation(line: 75, column: 16, scope: !4621)
!4625 = !DILocation(line: 75, column: 20, scope: !4621)
!4626 = !DILocation(line: 75, column: 28, scope: !4621)
!4627 = !DILocation(line: 75, column: 12, scope: !4621)
!4628 = !DILocation(line: 75, column: 3, scope: !4621)
!4629 = !DILocation(line: 74, column: 42, scope: !4621)
!4630 = !DILocation(line: 74, column: 46, scope: !4621)
!4631 = !DILocation(line: 74, column: 40, scope: !4621)
!4632 = !DILocation(line: 74, column: 2, scope: !4621)
!4633 = distinct !{!4633, !4623, !4634, !4516, !4517}
!4634 = !DILocation(line: 75, column: 46, scope: !4616)
!4635 = !DILocation(line: 76, column: 6, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 76, column: 6)
!4637 = !DILocation(line: 76, column: 16, scope: !4636)
!4638 = !DILocation(line: 76, column: 24, scope: !4636)
!4639 = !DILocation(line: 76, column: 21, scope: !4636)
!4640 = !DILocation(line: 76, column: 6, scope: !4586)
!4641 = !DILocation(line: 77, column: 3, scope: !4636)
!4642 = !DILocation(line: 78, column: 19, scope: !4586)
!4643 = !DILocation(line: 78, column: 2, scope: !4586)
!4644 = !DILocation(line: 78, column: 12, scope: !4586)
!4645 = !DILocation(line: 78, column: 17, scope: !4586)
!4646 = !DILocation(line: 80, column: 23, scope: !4586)
!4647 = !DILocation(line: 80, column: 33, scope: !4586)
!4648 = !DILocation(line: 80, column: 2, scope: !4586)
!4649 = !DILocation(line: 81, column: 1, scope: !4586)
!4650 = distinct !DISubprogram(name: "spin_unlock", scope: !4574, file: !4574, line: 389, type: !4575, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4651)
!4651 = !{!4652}
!4652 = !DILocalVariable(name: "lock", arg: 1, scope: !4650, file: !4574, line: 389, type: !1633)
!4653 = !DILocation(line: 389, column: 53, scope: !4650)
!4654 = !DILocation(line: 391, column: 2, scope: !4650)
!4655 = !DILocation(line: 392, column: 1, scope: !4650)
!4656 = !DISubprogram(name: "fsnotify_detach_mark", scope: !189, file: !189, line: 795, type: !4301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4657 = distinct !DISubprogram(name: "fsnotify_group_unlock", scope: !189, file: !189, line: 271, type: !4285, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4658)
!4658 = !{!4659}
!4659 = !DILocalVariable(name: "group", arg: 1, scope: !4657, file: !189, line: 271, type: !213)
!4660 = !DILocation(line: 271, column: 65, scope: !4657)
!4661 = !DILocation(line: 273, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !189, line: 273, column: 6)
!4663 = !DILocation(line: 273, column: 13, scope: !4662)
!4664 = !DILocation(line: 273, column: 19, scope: !4662)
!4665 = !DILocation(line: 273, column: 6, scope: !4657)
!4666 = !DILocation(line: 274, column: 25, scope: !4662)
!4667 = !DILocation(line: 274, column: 32, scope: !4662)
!4668 = !DILocation(line: 274, column: 3, scope: !4662)
!4669 = !DILocation(line: 275, column: 16, scope: !4657)
!4670 = !DILocation(line: 275, column: 23, scope: !4657)
!4671 = !DILocation(line: 275, column: 2, scope: !4657)
!4672 = !DILocation(line: 276, column: 1, scope: !4657)
!4673 = !DISubprogram(name: "fsnotify_free_mark", scope: !189, file: !189, line: 797, type: !4301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4674 = !DISubprogram(name: "fsnotify_put_mark", scope: !189, file: !189, line: 819, type: !4301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4675 = distinct !DISubprogram(name: "fcntl_dirnotify", scope: !3, file: !3, line: 261, type: !4676, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4678)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!25, !25, !769, !7}
!4678 = !{!4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4698, !4699}
!4679 = !DILocalVariable(name: "fd", arg: 1, scope: !4675, file: !3, line: 261, type: !25)
!4680 = !DILocalVariable(name: "filp", arg: 2, scope: !4675, file: !3, line: 261, type: !769)
!4681 = !DILocalVariable(name: "arg", arg: 3, scope: !4675, file: !3, line: 261, type: !7)
!4682 = !DILocalVariable(name: "new_dn_mark", scope: !4675, file: !3, line: 263, type: !198)
!4683 = !DILocalVariable(name: "dn_mark", scope: !4675, file: !3, line: 263, type: !198)
!4684 = !DILocalVariable(name: "new_fsn_mark", scope: !4675, file: !3, line: 264, type: !4275)
!4685 = !DILocalVariable(name: "fsn_mark", scope: !4675, file: !3, line: 264, type: !4275)
!4686 = !DILocalVariable(name: "dn", scope: !4675, file: !3, line: 265, type: !4351)
!4687 = !DILocalVariable(name: "inode", scope: !4675, file: !3, line: 266, type: !228)
!4688 = !DILocalVariable(name: "id", scope: !4675, file: !3, line: 267, type: !1295)
!4689 = !DILocalVariable(name: "f", scope: !4675, file: !3, line: 268, type: !769)
!4690 = !DILocalVariable(name: "destroy", scope: !4675, file: !3, line: 269, type: !25)
!4691 = !DILocalVariable(name: "error", scope: !4675, file: !3, line: 269, type: !25)
!4692 = !DILocalVariable(name: "mask", scope: !4675, file: !3, line: 270, type: !205)
!4693 = !DILocalVariable(name: "__mptr", scope: !4694, file: !3, line: 332, type: !23)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 332, column: 13)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 331, column: 16)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 331, column: 6)
!4697 = !DILexicalBlockFile(scope: !4675, file: !3, discriminator: 0)
!4698 = !DILabel(scope: !4697, name: "out", file: !3, line: 381)
!4699 = !DILabel(scope: !4697, name: "out_err", file: !3, line: 390)
!4700 = !DILocation(line: 261, column: 25, scope: !4675)
!4701 = !DILocation(line: 261, column: 42, scope: !4675)
!4702 = !DILocation(line: 261, column: 61, scope: !4675)
!4703 = !DILocation(line: 263, column: 2, scope: !4675)
!4704 = !DILocation(line: 263, column: 23, scope: !4675)
!4705 = !DILocation(line: 263, column: 37, scope: !4675)
!4706 = !DILocation(line: 264, column: 2, scope: !4675)
!4707 = !DILocation(line: 264, column: 24, scope: !4675)
!4708 = !DILocation(line: 264, column: 39, scope: !4675)
!4709 = !DILocation(line: 265, column: 2, scope: !4675)
!4710 = !DILocation(line: 265, column: 25, scope: !4675)
!4711 = !DILocation(line: 266, column: 2, scope: !4675)
!4712 = !DILocation(line: 266, column: 16, scope: !4675)
!4713 = !DILocation(line: 267, column: 2, scope: !4675)
!4714 = !DILocation(line: 267, column: 13, scope: !4675)
!4715 = !DILocation(line: 267, column: 18, scope: !4675)
!4716 = !DILocation(line: 267, column: 27, scope: !4675)
!4717 = !DILocation(line: 268, column: 2, scope: !4675)
!4718 = !DILocation(line: 268, column: 15, scope: !4675)
!4719 = !DILocation(line: 269, column: 2, scope: !4675)
!4720 = !DILocation(line: 269, column: 6, scope: !4675)
!4721 = !DILocation(line: 269, column: 19, scope: !4675)
!4722 = !DILocation(line: 270, column: 2, scope: !4675)
!4723 = !DILocation(line: 270, column: 8, scope: !4675)
!4724 = !DILocation(line: 273, column: 15, scope: !4675)
!4725 = !DILocation(line: 274, column: 5, scope: !4675)
!4726 = !DILocation(line: 276, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 276, column: 6)
!4728 = !DILocation(line: 276, column: 6, scope: !4675)
!4729 = !DILocation(line: 277, column: 9, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 276, column: 26)
!4731 = !DILocation(line: 278, column: 3, scope: !4730)
!4732 = !DILocation(line: 282, column: 7, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 282, column: 6)
!4734 = !DILocation(line: 282, column: 11, scope: !4733)
!4735 = !DILocation(line: 282, column: 28, scope: !4733)
!4736 = !DILocation(line: 282, column: 6, scope: !4675)
!4737 = !DILocation(line: 283, column: 17, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 282, column: 34)
!4739 = !DILocation(line: 283, column: 23, scope: !4738)
!4740 = !DILocation(line: 283, column: 3, scope: !4738)
!4741 = !DILocation(line: 284, column: 9, scope: !4738)
!4742 = !DILocation(line: 285, column: 3, scope: !4738)
!4743 = !DILocation(line: 289, column: 21, scope: !4675)
!4744 = !DILocation(line: 289, column: 10, scope: !4675)
!4745 = !DILocation(line: 289, column: 8, scope: !4675)
!4746 = !DILocation(line: 290, column: 7, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 290, column: 6)
!4748 = !DILocation(line: 290, column: 6, scope: !4675)
!4749 = !DILocation(line: 291, column: 9, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 290, column: 31)
!4751 = !DILocation(line: 292, column: 3, scope: !4750)
!4752 = !DILocation(line: 299, column: 21, scope: !4675)
!4753 = !DILocation(line: 299, column: 9, scope: !4675)
!4754 = !DILocation(line: 299, column: 7, scope: !4675)
!4755 = !DILocation(line: 301, column: 32, scope: !4675)
!4756 = !DILocation(line: 301, column: 38, scope: !4675)
!4757 = !DILocation(line: 301, column: 46, scope: !4675)
!4758 = !DILocation(line: 301, column: 10, scope: !4675)
!4759 = !DILocation(line: 301, column: 8, scope: !4675)
!4760 = !DILocation(line: 303, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 303, column: 6)
!4762 = !DILocation(line: 303, column: 6, scope: !4675)
!4763 = !DILocation(line: 304, column: 3, scope: !4761)
!4764 = !DILocation(line: 307, column: 24, scope: !4675)
!4765 = !DILocation(line: 307, column: 7, scope: !4675)
!4766 = !DILocation(line: 307, column: 5, scope: !4675)
!4767 = !DILocation(line: 308, column: 7, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 308, column: 6)
!4769 = !DILocation(line: 308, column: 6, scope: !4697)
!4770 = !DILocation(line: 309, column: 9, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 308, column: 11)
!4772 = !DILocation(line: 310, column: 3, scope: !4771)
!4773 = !DILocation(line: 314, column: 33, scope: !4697)
!4774 = !DILocation(line: 314, column: 16, scope: !4697)
!4775 = !DILocation(line: 314, column: 14, scope: !4697)
!4776 = !DILocation(line: 315, column: 7, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 315, column: 6)
!4778 = !DILocation(line: 315, column: 6, scope: !4697)
!4779 = !DILocation(line: 316, column: 9, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 315, column: 20)
!4781 = !DILocation(line: 317, column: 3, scope: !4780)
!4782 = !DILocation(line: 321, column: 18, scope: !4697)
!4783 = !DILocation(line: 321, column: 31, scope: !4697)
!4784 = !DILocation(line: 321, column: 15, scope: !4697)
!4785 = !DILocation(line: 322, column: 21, scope: !4697)
!4786 = !DILocation(line: 322, column: 35, scope: !4697)
!4787 = !DILocation(line: 322, column: 2, scope: !4697)
!4788 = !DILocation(line: 323, column: 23, scope: !4697)
!4789 = !DILocation(line: 323, column: 2, scope: !4697)
!4790 = !DILocation(line: 323, column: 16, scope: !4697)
!4791 = !DILocation(line: 323, column: 21, scope: !4697)
!4792 = !DILocation(line: 324, column: 2, scope: !4697)
!4793 = !DILocation(line: 324, column: 15, scope: !4697)
!4794 = !DILocation(line: 324, column: 18, scope: !4697)
!4795 = !DILocation(line: 327, column: 22, scope: !4697)
!4796 = !DILocation(line: 327, column: 2, scope: !4697)
!4797 = !DILocation(line: 330, column: 33, scope: !4697)
!4798 = !DILocation(line: 330, column: 40, scope: !4697)
!4799 = !DILocation(line: 330, column: 58, scope: !4697)
!4800 = !DILocation(line: 330, column: 13, scope: !4697)
!4801 = !DILocation(line: 330, column: 11, scope: !4697)
!4802 = !DILocation(line: 331, column: 6, scope: !4696)
!4803 = !DILocation(line: 331, column: 6, scope: !4697)
!4804 = !DILocation(line: 332, column: 13, scope: !4694)
!4805 = !DILocation(line: 332, column: 13, scope: !4695)
!4806 = !DILocation(line: 332, column: 11, scope: !4695)
!4807 = !DILocation(line: 333, column: 14, scope: !4695)
!4808 = !DILocation(line: 333, column: 24, scope: !4695)
!4809 = !DILocation(line: 333, column: 3, scope: !4695)
!4810 = !DILocation(line: 334, column: 2, scope: !4695)
!4811 = !DILocation(line: 335, column: 42, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 334, column: 9)
!4813 = !DILocation(line: 335, column: 56, scope: !4812)
!4814 = !DILocation(line: 335, column: 11, scope: !4812)
!4815 = !DILocation(line: 335, column: 9, scope: !4812)
!4816 = !DILocation(line: 336, column: 7, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 336, column: 7)
!4818 = !DILocation(line: 336, column: 7, scope: !4812)
!4819 = !DILocation(line: 337, column: 26, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 336, column: 14)
!4821 = !DILocation(line: 337, column: 4, scope: !4820)
!4822 = !DILocation(line: 338, column: 4, scope: !4820)
!4823 = !DILocation(line: 340, column: 14, scope: !4812)
!4824 = !DILocation(line: 340, column: 28, scope: !4812)
!4825 = !DILocation(line: 340, column: 3, scope: !4812)
!4826 = !DILocation(line: 341, column: 14, scope: !4812)
!4827 = !DILocation(line: 341, column: 12, scope: !4812)
!4828 = !DILocation(line: 342, column: 13, scope: !4812)
!4829 = !DILocation(line: 342, column: 11, scope: !4812)
!4830 = !DILocation(line: 344, column: 16, scope: !4812)
!4831 = !DILocation(line: 347, column: 2, scope: !4697)
!4832 = !DILocation(line: 348, column: 20, scope: !4697)
!4833 = !DILocation(line: 348, column: 6, scope: !4697)
!4834 = !DILocation(line: 348, column: 4, scope: !4697)
!4835 = !DILocation(line: 349, column: 2, scope: !4697)
!4836 = !DILocation(line: 356, column: 6, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 356, column: 6)
!4838 = !DILocation(line: 356, column: 11, scope: !4837)
!4839 = !DILocation(line: 356, column: 8, scope: !4837)
!4840 = !DILocation(line: 356, column: 6, scope: !4697)
!4841 = !DILocation(line: 363, column: 7, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 363, column: 7)
!4843 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 356, column: 17)
!4844 = !DILocation(line: 363, column: 18, scope: !4842)
!4845 = !DILocation(line: 363, column: 15, scope: !4842)
!4846 = !DILocation(line: 363, column: 7, scope: !4843)
!4847 = !DILocation(line: 364, column: 12, scope: !4842)
!4848 = !DILocation(line: 364, column: 4, scope: !4842)
!4849 = !DILocation(line: 365, column: 9, scope: !4843)
!4850 = !DILocation(line: 366, column: 3, scope: !4843)
!4851 = !DILocation(line: 369, column: 13, scope: !4697)
!4852 = !DILocation(line: 369, column: 28, scope: !4697)
!4853 = !DILocation(line: 369, column: 19, scope: !4697)
!4854 = !DILocation(line: 369, column: 2, scope: !4697)
!4855 = !DILocation(line: 371, column: 20, scope: !4697)
!4856 = !DILocation(line: 371, column: 24, scope: !4697)
!4857 = !DILocation(line: 371, column: 33, scope: !4697)
!4858 = !DILocation(line: 371, column: 37, scope: !4697)
!4859 = !DILocation(line: 371, column: 41, scope: !4697)
!4860 = !DILocation(line: 371, column: 47, scope: !4697)
!4861 = !DILocation(line: 371, column: 10, scope: !4697)
!4862 = !DILocation(line: 371, column: 8, scope: !4697)
!4863 = !DILocation(line: 373, column: 7, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 373, column: 6)
!4865 = !DILocation(line: 373, column: 6, scope: !4697)
!4866 = !DILocation(line: 374, column: 6, scope: !4864)
!4867 = !DILocation(line: 374, column: 3, scope: !4864)
!4868 = !DILocation(line: 377, column: 11, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 377, column: 11)
!4870 = !DILocation(line: 377, column: 17, scope: !4869)
!4871 = !DILocation(line: 377, column: 11, scope: !4864)
!4872 = !DILocation(line: 378, column: 9, scope: !4869)
!4873 = !DILocation(line: 378, column: 3, scope: !4869)
!4874 = !DILocation(line: 380, column: 28, scope: !4697)
!4875 = !DILocation(line: 380, column: 2, scope: !4697)
!4876 = !DILocation(line: 381, column: 1, scope: !4697)
!4877 = !DILocation(line: 382, column: 15, scope: !4697)
!4878 = !DILocation(line: 382, column: 25, scope: !4697)
!4879 = !DILocation(line: 382, column: 2, scope: !4697)
!4880 = !DILocation(line: 384, column: 6, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 384, column: 6)
!4882 = !DILocation(line: 384, column: 6, scope: !4697)
!4883 = !DILocation(line: 385, column: 24, scope: !4881)
!4884 = !DILocation(line: 385, column: 3, scope: !4881)
!4885 = !DILocation(line: 386, column: 24, scope: !4697)
!4886 = !DILocation(line: 386, column: 2, scope: !4697)
!4887 = !DILocation(line: 387, column: 6, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 387, column: 6)
!4889 = !DILocation(line: 387, column: 6, scope: !4697)
!4890 = !DILocation(line: 388, column: 22, scope: !4888)
!4891 = !DILocation(line: 388, column: 3, scope: !4888)
!4892 = !DILocation(line: 389, column: 20, scope: !4697)
!4893 = !DILocation(line: 389, column: 2, scope: !4697)
!4894 = !DILocation(line: 390, column: 1, scope: !4697)
!4895 = !DILocation(line: 391, column: 6, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 391, column: 6)
!4897 = !DILocation(line: 391, column: 6, scope: !4697)
!4898 = !DILocation(line: 392, column: 21, scope: !4896)
!4899 = !DILocation(line: 392, column: 3, scope: !4896)
!4900 = !DILocation(line: 393, column: 6, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 393, column: 6)
!4902 = !DILocation(line: 393, column: 6, scope: !4697)
!4903 = !DILocation(line: 394, column: 19, scope: !4901)
!4904 = !DILocation(line: 394, column: 41, scope: !4901)
!4905 = !DILocation(line: 394, column: 3, scope: !4901)
!4906 = !DILocation(line: 395, column: 9, scope: !4697)
!4907 = !DILocation(line: 396, column: 1, scope: !4697)
!4908 = !DILocation(line: 395, column: 2, scope: !4697)
!4909 = distinct !DISubprogram(name: "get_current", scope: !4910, file: !4910, line: 39, type: !4911, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4913)
!4910 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!2703}
!4913 = !{!4914, !4916, !4918}
!4914 = !DILocalVariable(name: "pscr_ret__", scope: !4915, file: !4910, line: 41, type: !2703)
!4915 = distinct !DILexicalBlock(scope: !4909, file: !4910, line: 41, column: 9)
!4916 = !DILocalVariable(name: "__vpp_verify", scope: !4917, file: !4910, line: 41, type: !226)
!4917 = distinct !DILexicalBlock(scope: !4915, file: !4910, line: 41, column: 9)
!4918 = !DILocalVariable(name: "pfo_val__", scope: !4919, file: !4910, line: 41, type: !299)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !4910, line: 41, column: 9)
!4920 = !DILocation(line: 41, column: 9, scope: !4915)
!4921 = !DILocation(line: 41, column: 9, scope: !4917)
!4922 = !DILocation(line: 41, column: 9, scope: !4919)
!4923 = !{i64 2148444603}
!4924 = !DILocation(line: 41, column: 9, scope: !4909)
!4925 = !DILocation(line: 41, column: 2, scope: !4909)
!4926 = distinct !DISubprogram(name: "convert_arg", scope: !3, file: !3, line: 202, type: !4927, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!205, !7}
!4929 = !{!4930, !4931}
!4930 = !DILocalVariable(name: "arg", arg: 1, scope: !4926, file: !3, line: 202, type: !7)
!4931 = !DILocalVariable(name: "new_mask", scope: !4926, file: !3, line: 204, type: !205)
!4932 = !DILocation(line: 202, column: 39, scope: !4926)
!4933 = !DILocation(line: 204, column: 2, scope: !4926)
!4934 = !DILocation(line: 204, column: 8, scope: !4926)
!4935 = !DILocation(line: 206, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 206, column: 6)
!4937 = !DILocation(line: 206, column: 10, scope: !4936)
!4938 = !DILocation(line: 206, column: 6, scope: !4926)
!4939 = !DILocation(line: 207, column: 12, scope: !4936)
!4940 = !DILocation(line: 207, column: 3, scope: !4936)
!4941 = !DILocation(line: 208, column: 6, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 208, column: 6)
!4943 = !DILocation(line: 208, column: 10, scope: !4942)
!4944 = !DILocation(line: 208, column: 6, scope: !4926)
!4945 = !DILocation(line: 209, column: 12, scope: !4942)
!4946 = !DILocation(line: 209, column: 3, scope: !4942)
!4947 = !DILocation(line: 210, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 210, column: 6)
!4949 = !DILocation(line: 210, column: 10, scope: !4948)
!4950 = !DILocation(line: 210, column: 6, scope: !4926)
!4951 = !DILocation(line: 211, column: 12, scope: !4948)
!4952 = !DILocation(line: 211, column: 3, scope: !4948)
!4953 = !DILocation(line: 212, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 212, column: 6)
!4955 = !DILocation(line: 212, column: 10, scope: !4954)
!4956 = !DILocation(line: 212, column: 6, scope: !4926)
!4957 = !DILocation(line: 213, column: 12, scope: !4954)
!4958 = !DILocation(line: 213, column: 3, scope: !4954)
!4959 = !DILocation(line: 214, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 214, column: 6)
!4961 = !DILocation(line: 214, column: 10, scope: !4960)
!4962 = !DILocation(line: 214, column: 6, scope: !4926)
!4963 = !DILocation(line: 215, column: 12, scope: !4960)
!4964 = !DILocation(line: 215, column: 3, scope: !4960)
!4965 = !DILocation(line: 216, column: 6, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 216, column: 6)
!4967 = !DILocation(line: 216, column: 10, scope: !4966)
!4968 = !DILocation(line: 216, column: 6, scope: !4926)
!4969 = !DILocation(line: 217, column: 12, scope: !4966)
!4970 = !DILocation(line: 217, column: 3, scope: !4966)
!4971 = !DILocation(line: 218, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 218, column: 6)
!4973 = !DILocation(line: 218, column: 10, scope: !4972)
!4974 = !DILocation(line: 218, column: 6, scope: !4926)
!4975 = !DILocation(line: 219, column: 12, scope: !4972)
!4976 = !DILocation(line: 219, column: 3, scope: !4972)
!4977 = !DILocation(line: 221, column: 9, scope: !4926)
!4978 = !DILocation(line: 222, column: 1, scope: !4926)
!4979 = !DILocation(line: 221, column: 2, scope: !4926)
!4980 = !DISubprogram(name: "security_path_notify", scope: !4981, file: !4981, line: 331, type: !4982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4981 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!25, !2526, !299, !7}
!4984 = !DISubprogram(name: "kmem_cache_alloc", scope: !4583, file: !4583, line: 500, type: !4985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!23, !4376, !546}
!4987 = !DISubprogram(name: "fsnotify_init_mark", scope: !189, file: !189, line: 760, type: !4289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4988 = distinct !DISubprogram(name: "fsnotify_add_inode_mark_locked", scope: !189, file: !189, line: 782, type: !4989, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!25, !4275, !228, !25}
!4991 = !{!4992, !4993, !4994}
!4992 = !DILocalVariable(name: "mark", arg: 1, scope: !4988, file: !189, line: 782, type: !4275)
!4993 = !DILocalVariable(name: "inode", arg: 2, scope: !4988, file: !189, line: 783, type: !228)
!4994 = !DILocalVariable(name: "add_flags", arg: 3, scope: !4988, file: !189, line: 784, type: !25)
!4995 = !DILocation(line: 782, column: 72, scope: !4988)
!4996 = !DILocation(line: 783, column: 22, scope: !4988)
!4997 = !DILocation(line: 784, column: 12, scope: !4988)
!4998 = !DILocation(line: 786, column: 34, scope: !4988)
!4999 = !DILocation(line: 786, column: 41, scope: !4988)
!5000 = !DILocation(line: 786, column: 48, scope: !4988)
!5001 = !DILocation(line: 787, column: 31, scope: !4988)
!5002 = !DILocation(line: 786, column: 9, scope: !4988)
!5003 = !DILocation(line: 786, column: 2, scope: !4988)
!5004 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5005, file: !5005, line: 782, type: !2330, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5005 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5006 = !DILocation(line: 784, column: 2, scope: !5004)
!5007 = !DILocation(line: 786, column: 2, scope: !5004)
!5008 = !DILocation(line: 786, column: 2, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5004, file: !5005, line: 786, column: 2)
!5010 = !DILocation(line: 787, column: 2, scope: !5004)
!5011 = !DILocation(line: 787, column: 2, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5004, file: !5005, line: 787, column: 2)
!5013 = !DILocation(line: 789, column: 1, scope: !5004)
!5014 = distinct !DISubprogram(name: "lookup_fd_rcu", scope: !3145, file: !3145, line: 107, type: !5015, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5017)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!769, !7}
!5017 = !{!5018}
!5018 = !DILocalVariable(name: "fd", arg: 1, scope: !5014, file: !3145, line: 107, type: !7)
!5019 = !DILocation(line: 107, column: 55, scope: !5014)
!5020 = !DILocation(line: 109, column: 29, scope: !5014)
!5021 = !DILocation(line: 109, column: 38, scope: !5014)
!5022 = !DILocation(line: 109, column: 45, scope: !5014)
!5023 = !DILocation(line: 109, column: 9, scope: !5014)
!5024 = !DILocation(line: 109, column: 2, scope: !5014)
!5025 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5005, file: !5005, line: 813, type: !2330, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5026 = !DILocation(line: 815, column: 2, scope: !5025)
!5027 = !DILocation(line: 815, column: 2, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5025, file: !5005, line: 815, column: 2)
!5029 = !DILocation(line: 818, column: 2, scope: !5025)
!5030 = !DILocation(line: 819, column: 2, scope: !5025)
!5031 = !DILocation(line: 819, column: 2, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5025, file: !5005, line: 819, column: 2)
!5033 = !DILocation(line: 820, column: 1, scope: !5025)
!5034 = !DISubprogram(name: "__f_setown", scope: !155, file: !155, line: 1104, type: !5035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !769, !822, !5, !25}
!5037 = distinct !DISubprogram(name: "task_pid", scope: !1323, file: !1323, line: 1562, type: !5038, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!822, !2703}
!5040 = !{!5041}
!5041 = !DILocalVariable(name: "task", arg: 1, scope: !5037, file: !1323, line: 1562, type: !2703)
!5042 = !DILocation(line: 1562, column: 56, scope: !5037)
!5043 = !DILocation(line: 1564, column: 9, scope: !5037)
!5044 = !DILocation(line: 1564, column: 15, scope: !5037)
!5045 = !DILocation(line: 1564, column: 2, scope: !5037)
!5046 = distinct !DISubprogram(name: "attach_dn", scope: !3, file: !3, line: 230, type: !5047, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!25, !4351, !198, !1295, !25, !769, !205}
!5049 = !{!5050, !5051, !5052, !5053, !5054, !5055, !5056}
!5050 = !DILocalVariable(name: "dn", arg: 1, scope: !5046, file: !3, line: 230, type: !4351)
!5051 = !DILocalVariable(name: "dn_mark", arg: 2, scope: !5046, file: !3, line: 230, type: !198)
!5052 = !DILocalVariable(name: "id", arg: 3, scope: !5046, file: !3, line: 231, type: !1295)
!5053 = !DILocalVariable(name: "fd", arg: 4, scope: !5046, file: !3, line: 231, type: !25)
!5054 = !DILocalVariable(name: "filp", arg: 5, scope: !5046, file: !3, line: 231, type: !769)
!5055 = !DILocalVariable(name: "mask", arg: 6, scope: !5046, file: !3, line: 231, type: !205)
!5056 = !DILocalVariable(name: "odn", scope: !5046, file: !3, line: 233, type: !4351)
!5057 = !DILocation(line: 230, column: 45, scope: !5046)
!5058 = !DILocation(line: 230, column: 70, scope: !5046)
!5059 = !DILocation(line: 231, column: 19, scope: !5046)
!5060 = !DILocation(line: 231, column: 27, scope: !5046)
!5061 = !DILocation(line: 231, column: 44, scope: !5046)
!5062 = !DILocation(line: 231, column: 56, scope: !5046)
!5063 = !DILocation(line: 233, column: 2, scope: !5046)
!5064 = !DILocation(line: 233, column: 25, scope: !5046)
!5065 = !DILocation(line: 235, column: 8, scope: !5046)
!5066 = !DILocation(line: 235, column: 17, scope: !5046)
!5067 = !DILocation(line: 235, column: 6, scope: !5046)
!5068 = !DILocation(line: 236, column: 2, scope: !5046)
!5069 = !DILocation(line: 236, column: 9, scope: !5046)
!5070 = !DILocation(line: 236, column: 13, scope: !5046)
!5071 = !DILocation(line: 238, column: 8, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 238, column: 7)
!5073 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 236, column: 22)
!5074 = !DILocation(line: 238, column: 13, scope: !5072)
!5075 = !DILocation(line: 238, column: 25, scope: !5072)
!5076 = !DILocation(line: 238, column: 22, scope: !5072)
!5077 = !DILocation(line: 238, column: 29, scope: !5072)
!5078 = !DILocation(line: 238, column: 33, scope: !5072)
!5079 = !DILocation(line: 238, column: 38, scope: !5072)
!5080 = !DILocation(line: 238, column: 49, scope: !5072)
!5081 = !DILocation(line: 238, column: 46, scope: !5072)
!5082 = !DILocation(line: 238, column: 7, scope: !5073)
!5083 = !DILocation(line: 239, column: 17, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 238, column: 56)
!5085 = !DILocation(line: 239, column: 4, scope: !5084)
!5086 = !DILocation(line: 239, column: 9, scope: !5084)
!5087 = !DILocation(line: 239, column: 15, scope: !5084)
!5088 = !DILocation(line: 240, column: 20, scope: !5084)
!5089 = !DILocation(line: 240, column: 4, scope: !5084)
!5090 = !DILocation(line: 240, column: 9, scope: !5084)
!5091 = !DILocation(line: 240, column: 17, scope: !5084)
!5092 = !DILocation(line: 241, column: 4, scope: !5084)
!5093 = !DILocation(line: 243, column: 9, scope: !5073)
!5094 = !DILocation(line: 243, column: 14, scope: !5073)
!5095 = !DILocation(line: 243, column: 7, scope: !5073)
!5096 = distinct !{!5096, !5068, !5097, !4516, !4517}
!5097 = !DILocation(line: 244, column: 2, scope: !5046)
!5098 = !DILocation(line: 246, column: 16, scope: !5046)
!5099 = !DILocation(line: 246, column: 2, scope: !5046)
!5100 = !DILocation(line: 246, column: 6, scope: !5046)
!5101 = !DILocation(line: 246, column: 14, scope: !5046)
!5102 = !DILocation(line: 247, column: 14, scope: !5046)
!5103 = !DILocation(line: 247, column: 2, scope: !5046)
!5104 = !DILocation(line: 247, column: 6, scope: !5046)
!5105 = !DILocation(line: 247, column: 12, scope: !5046)
!5106 = !DILocation(line: 248, column: 16, scope: !5046)
!5107 = !DILocation(line: 248, column: 2, scope: !5046)
!5108 = !DILocation(line: 248, column: 6, scope: !5046)
!5109 = !DILocation(line: 248, column: 14, scope: !5046)
!5110 = !DILocation(line: 249, column: 17, scope: !5046)
!5111 = !DILocation(line: 249, column: 2, scope: !5046)
!5112 = !DILocation(line: 249, column: 6, scope: !5046)
!5113 = !DILocation(line: 249, column: 15, scope: !5046)
!5114 = !DILocation(line: 250, column: 16, scope: !5046)
!5115 = !DILocation(line: 250, column: 25, scope: !5046)
!5116 = !DILocation(line: 250, column: 2, scope: !5046)
!5117 = !DILocation(line: 250, column: 6, scope: !5046)
!5118 = !DILocation(line: 250, column: 14, scope: !5046)
!5119 = !DILocation(line: 251, column: 16, scope: !5046)
!5120 = !DILocation(line: 251, column: 2, scope: !5046)
!5121 = !DILocation(line: 251, column: 11, scope: !5046)
!5122 = !DILocation(line: 251, column: 14, scope: !5046)
!5123 = !DILocation(line: 253, column: 2, scope: !5046)
!5124 = !DILocation(line: 254, column: 1, scope: !5046)
!5125 = distinct !DISubprogram(name: "__initstub__kmod_dnotify__298_412_dnotify_init6", scope: !3, file: !3, line: 412, type: !2098, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5126 = !DILocation(line: 412, column: 1, scope: !5125)
!5127 = distinct !DISubprogram(name: "dnotify_init", scope: !3, file: !3, line: 398, type: !2098, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5128 = !DILocation(line: 400, column: 25, scope: !5127)
!5129 = !DILocation(line: 400, column: 23, scope: !5127)
!5130 = !DILocation(line: 402, column: 23, scope: !5127)
!5131 = !DILocation(line: 402, column: 21, scope: !5127)
!5132 = !DILocation(line: 404, column: 18, scope: !5127)
!5133 = !DILocation(line: 404, column: 16, scope: !5127)
!5134 = !DILocation(line: 406, column: 13, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 406, column: 6)
!5136 = !DILocation(line: 406, column: 6, scope: !5135)
!5137 = !DILocation(line: 406, column: 6, scope: !5127)
!5138 = !DILocation(line: 407, column: 3, scope: !5135)
!5139 = !DILocation(line: 408, column: 2, scope: !5127)
!5140 = !DILocation(line: 409, column: 2, scope: !5127)
!5141 = !DISubprogram(name: "mutex_lock", scope: !789, file: !789, line: 227, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !5144}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!5145 = distinct !DISubprogram(name: "memalloc_nofs_save", scope: !5146, file: !5146, line: 351, type: !5147, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5149)
!5146 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!7}
!5149 = !{!5150}
!5150 = !DILocalVariable(name: "flags", scope: !5145, file: !5146, line: 353, type: !7)
!5151 = !DILocation(line: 353, column: 2, scope: !5145)
!5152 = !DILocation(line: 353, column: 15, scope: !5145)
!5153 = !DILocation(line: 353, column: 23, scope: !5145)
!5154 = !DILocation(line: 353, column: 32, scope: !5145)
!5155 = !DILocation(line: 353, column: 38, scope: !5145)
!5156 = !DILocation(line: 354, column: 2, scope: !5145)
!5157 = !DILocation(line: 354, column: 11, scope: !5145)
!5158 = !DILocation(line: 354, column: 17, scope: !5145)
!5159 = !DILocation(line: 355, column: 9, scope: !5145)
!5160 = !DILocation(line: 356, column: 1, scope: !5145)
!5161 = !DILocation(line: 355, column: 2, scope: !5145)
!5162 = !DISubprogram(name: "_raw_spin_lock", scope: !5163, file: !5163, line: 22, type: !5164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5163 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5164 = !DISubroutineType(types: !5165)
!5165 = !{null, !5166}
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!5167 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !5168, file: !5168, line: 51, type: !5169, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5172)
!5168 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!25, !5171}
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!5172 = !{!5173}
!5173 = !DILocalVariable(name: "lock", arg: 1, scope: !5167, file: !5168, line: 51, type: !5171)
!5174 = !DILocation(line: 51, column: 68, scope: !5167)
!5175 = !DILocation(line: 57, column: 22, scope: !5167)
!5176 = !DILocation(line: 57, column: 28, scope: !5167)
!5177 = !DILocation(line: 57, column: 9, scope: !5167)
!5178 = !DILocation(line: 57, column: 2, scope: !5167)
!5179 = !DISubprogram(name: "fsnotify_recalc_mask", scope: !189, file: !189, line: 759, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{null, !3931}
!5182 = distinct !DISubprogram(name: "atomic_read", scope: !5183, file: !5183, line: 30, type: !5184, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5188)
!5183 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!25, !5186}
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!5188 = !{!5189}
!5189 = !DILocalVariable(name: "v", arg: 1, scope: !5182, file: !5183, line: 30, type: !5186)
!5190 = !DILocation(line: 30, column: 29, scope: !5182)
!5191 = !DILocation(line: 32, column: 25, scope: !5182)
!5192 = !DILocation(line: 32, column: 2, scope: !5182)
!5193 = !DILocation(line: 33, column: 25, scope: !5182)
!5194 = !DILocation(line: 33, column: 9, scope: !5182)
!5195 = !DILocation(line: 33, column: 2, scope: !5182)
!5196 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5197, file: !5197, line: 66, type: !5198, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5197 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5198 = !DISubroutineType(types: !5199)
!5199 = !{null, !5200, !38}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5202)
!5202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "v", arg: 1, scope: !5196, file: !5197, line: 66, type: !5200)
!5205 = !DILocalVariable(name: "size", arg: 2, scope: !5196, file: !5197, line: 66, type: !38)
!5206 = !DILocation(line: 66, column: 73, scope: !5196)
!5207 = !DILocation(line: 66, column: 83, scope: !5196)
!5208 = !DILocation(line: 68, column: 19, scope: !5196)
!5209 = !DILocation(line: 68, column: 22, scope: !5196)
!5210 = !DILocation(line: 68, column: 2, scope: !5196)
!5211 = !DILocation(line: 69, column: 2, scope: !5196)
!5212 = !DILocation(line: 70, column: 1, scope: !5196)
!5213 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5214, file: !5214, line: 442, type: !5184, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5215)
!5214 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5215 = !{!5216}
!5216 = !DILocalVariable(name: "v", arg: 1, scope: !5213, file: !5214, line: 442, type: !5186)
!5217 = !DILocation(line: 442, column: 33, scope: !5213)
!5218 = !DILocation(line: 444, column: 26, scope: !5213)
!5219 = !DILocation(line: 444, column: 9, scope: !5213)
!5220 = !DILocation(line: 444, column: 2, scope: !5213)
!5221 = distinct !DISubprogram(name: "kasan_check_read", scope: !5222, file: !5222, line: 40, type: !5223, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5222 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!679, !5200, !7}
!5225 = !{!5226, !5227}
!5226 = !DILocalVariable(name: "p", arg: 1, scope: !5221, file: !5222, line: 40, type: !5200)
!5227 = !DILocalVariable(name: "size", arg: 2, scope: !5221, file: !5222, line: 40, type: !7)
!5228 = !DILocation(line: 40, column: 58, scope: !5221)
!5229 = !DILocation(line: 40, column: 74, scope: !5221)
!5230 = !DILocation(line: 42, column: 2, scope: !5221)
!5231 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5232, file: !5232, line: 229, type: !5233, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5235)
!5232 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5233 = !DISubroutineType(types: !5234)
!5234 = !{null, !5200, !38, !25}
!5235 = !{!5236, !5237, !5238}
!5236 = !DILocalVariable(name: "ptr", arg: 1, scope: !5231, file: !5232, line: 229, type: !5200)
!5237 = !DILocalVariable(name: "size", arg: 2, scope: !5231, file: !5232, line: 229, type: !38)
!5238 = !DILocalVariable(name: "type", arg: 3, scope: !5231, file: !5232, line: 230, type: !25)
!5239 = !DILocation(line: 229, column: 60, scope: !5231)
!5240 = !DILocation(line: 229, column: 72, scope: !5231)
!5241 = !DILocation(line: 230, column: 15, scope: !5231)
!5242 = !DILocation(line: 230, column: 23, scope: !5231)
!5243 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5244, file: !5244, line: 17, type: !5184, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5244 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5245 = !{!5246}
!5246 = !DILocalVariable(name: "v", arg: 1, scope: !5243, file: !5244, line: 17, type: !5186)
!5247 = !DILocation(line: 17, column: 61, scope: !5243)
!5248 = !DILocation(line: 23, column: 9, scope: !5243)
!5249 = !DILocation(line: 23, column: 2, scope: !5243)
!5250 = !DISubprogram(name: "_raw_spin_unlock", scope: !5163, file: !5163, line: 39, type: !5164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5251 = distinct !DISubprogram(name: "memalloc_nofs_restore", scope: !5146, file: !5146, line: 366, type: !5252, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5254)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !7}
!5254 = !{!5255}
!5255 = !DILocalVariable(name: "flags", arg: 1, scope: !5251, file: !5146, line: 366, type: !7)
!5256 = !DILocation(line: 366, column: 55, scope: !5251)
!5257 = !DILocation(line: 368, column: 20, scope: !5251)
!5258 = !DILocation(line: 368, column: 29, scope: !5251)
!5259 = !DILocation(line: 368, column: 35, scope: !5251)
!5260 = !DILocation(line: 368, column: 58, scope: !5251)
!5261 = !DILocation(line: 368, column: 56, scope: !5251)
!5262 = !DILocation(line: 368, column: 2, scope: !5251)
!5263 = !DILocation(line: 368, column: 11, scope: !5251)
!5264 = !DILocation(line: 368, column: 17, scope: !5251)
!5265 = !DILocation(line: 369, column: 1, scope: !5251)
!5266 = !DISubprogram(name: "mutex_unlock", scope: !789, file: !789, line: 246, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DISubprogram(name: "fsnotify_add_mark_locked", scope: !189, file: !189, line: 769, type: !5268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!25, !4275, !3947, !7, !25, !5270}
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!5271 = !DISubprogram(name: "__rcu_read_lock", scope: !5005, file: !5005, line: 74, type: !2330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5272 = distinct !DISubprogram(name: "files_lookup_fd_rcu", scope: !3145, file: !3145, line: 100, type: !5273, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!769, !3143, !7}
!5275 = !{!5276, !5277}
!5276 = !DILocalVariable(name: "files", arg: 1, scope: !5272, file: !3145, line: 100, type: !3143)
!5277 = !DILocalVariable(name: "fd", arg: 2, scope: !5272, file: !3145, line: 100, type: !7)
!5278 = !DILocation(line: 100, column: 69, scope: !5272)
!5279 = !DILocation(line: 100, column: 89, scope: !5272)
!5280 = !DILocation(line: 102, column: 2, scope: !5272)
!5281 = !DILocation(line: 102, column: 2, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5272, file: !3145, line: 102, column: 2)
!5283 = !DILocation(line: 104, column: 29, scope: !5272)
!5284 = !DILocation(line: 104, column: 36, scope: !5272)
!5285 = !DILocation(line: 104, column: 9, scope: !5272)
!5286 = !DILocation(line: 104, column: 2, scope: !5272)
!5287 = distinct !DISubprogram(name: "files_lookup_fd_raw", scope: !3145, file: !3145, line: 82, type: !5273, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5288 = !{!5289, !5290, !5291, !5292, !5294, !5298, !5299, !5300}
!5289 = !DILocalVariable(name: "files", arg: 1, scope: !5287, file: !3145, line: 82, type: !3143)
!5290 = !DILocalVariable(name: "fd", arg: 2, scope: !5287, file: !3145, line: 82, type: !7)
!5291 = !DILocalVariable(name: "fdt", scope: !5287, file: !3145, line: 84, type: !3151)
!5292 = !DILocalVariable(name: "__UNIQUE_ID_rcu289", scope: !5293, file: !3145, line: 84, type: !3151)
!5293 = distinct !DILexicalBlock(scope: !5287, file: !3145, line: 84, column: 24)
!5294 = !DILocalVariable(name: "_i", scope: !5295, file: !3145, line: 87, type: !7)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3145, line: 87, column: 8)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !3145, line: 86, column: 25)
!5297 = distinct !DILexicalBlock(scope: !5287, file: !3145, line: 86, column: 6)
!5298 = !DILocalVariable(name: "_s", scope: !5295, file: !3145, line: 87, type: !7)
!5299 = !DILocalVariable(name: "_mask", scope: !5295, file: !3145, line: 87, type: !42)
!5300 = !DILocalVariable(name: "__UNIQUE_ID_rcu293", scope: !5301, file: !3145, line: 88, type: !769)
!5301 = distinct !DILexicalBlock(scope: !5296, file: !3145, line: 88, column: 10)
!5302 = !DILocation(line: 82, column: 69, scope: !5287)
!5303 = !DILocation(line: 82, column: 89, scope: !5287)
!5304 = !DILocation(line: 84, column: 2, scope: !5287)
!5305 = !DILocation(line: 84, column: 18, scope: !5287)
!5306 = !DILocation(line: 84, column: 24, scope: !5293)
!5307 = !DILocation(line: 84, column: 24, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5293, file: !3145, line: 84, column: 24)
!5309 = !DILocation(line: 84, column: 24, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5308, file: !3145, line: 84, column: 24)
!5311 = !DILocation(line: 84, column: 24, scope: !5287)
!5312 = !DILocation(line: 86, column: 6, scope: !5297)
!5313 = !DILocation(line: 86, column: 11, scope: !5297)
!5314 = !DILocation(line: 86, column: 16, scope: !5297)
!5315 = !DILocation(line: 86, column: 9, scope: !5297)
!5316 = !DILocation(line: 86, column: 6, scope: !5287)
!5317 = !DILocation(line: 87, column: 8, scope: !5295)
!5318 = !DILocation(line: 87, column: 8, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5295, file: !3145, line: 87, column: 8)
!5320 = !DILocation(line: 87, column: 8, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5295, file: !3145, line: 87, column: 8)
!5322 = !DILocation(line: 87, column: 8, scope: !5296)
!5323 = !DILocation(line: 87, column: 6, scope: !5296)
!5324 = !DILocation(line: 88, column: 10, scope: !5301)
!5325 = !DILocation(line: 88, column: 10, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5301, file: !3145, line: 88, column: 10)
!5327 = !DILocation(line: 88, column: 10, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5326, file: !3145, line: 88, column: 10)
!5329 = !DILocation(line: 88, column: 10, scope: !5296)
!5330 = !DILocation(line: 88, column: 3, scope: !5296)
!5331 = !DILocation(line: 90, column: 2, scope: !5287)
!5332 = !DILocation(line: 91, column: 1, scope: !5287)
!5333 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !5334, file: !5334, line: 36, type: !5335, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5334 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!42, !42, !42}
!5337 = !{!5338, !5339, !5340}
!5338 = !DILocalVariable(name: "index", arg: 1, scope: !5333, file: !5334, line: 36, type: !42)
!5339 = !DILocalVariable(name: "size", arg: 2, scope: !5333, file: !5334, line: 37, type: !42)
!5340 = !DILocalVariable(name: "mask", scope: !5333, file: !5334, line: 39, type: !42)
!5341 = !DILocation(line: 36, column: 67, scope: !5333)
!5342 = !DILocation(line: 37, column: 17, scope: !5333)
!5343 = !DILocation(line: 39, column: 2, scope: !5333)
!5344 = !DILocation(line: 39, column: 16, scope: !5333)
!5345 = !DILocation(line: 43, column: 9, scope: !5333)
!5346 = !DILocation(line: 43, column: 20, scope: !5333)
!5347 = !DILocation(line: 41, column: 2, scope: !5333)
!5348 = !{i64 429093}
!5349 = !DILocation(line: 45, column: 9, scope: !5333)
!5350 = !DILocation(line: 46, column: 1, scope: !5333)
!5351 = !DILocation(line: 45, column: 2, scope: !5333)
!5352 = !DISubprogram(name: "__rcu_read_unlock", scope: !5005, file: !5005, line: 75, type: !2330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5353 = !DISubprogram(name: "kmem_cache_create", scope: !4583, file: !4583, line: 189, type: !5354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!4376, !19, !7, !7, !4370, !1859}
!5356 = !DISubprogram(name: "fsnotify_alloc_group", scope: !189, file: !189, line: 600, type: !5357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!213, !217, !25}
!5359 = distinct !DISubprogram(name: "IS_ERR", scope: !5360, file: !5360, line: 59, type: !5361, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5363)
!5360 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!679, !226}
!5363 = !{!5364}
!5364 = !DILocalVariable(name: "ptr", arg: 1, scope: !5359, file: !5360, line: 59, type: !226)
!5365 = !DILocation(line: 59, column: 60, scope: !5359)
!5366 = !DILocation(line: 61, column: 9, scope: !5359)
!5367 = !DILocation(line: 61, column: 2, scope: !5359)
!5368 = !DISubprogram(name: "panic", scope: !5369, file: !5369, line: 12, type: !5370, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5369 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!5370 = !DISubroutineType(types: !5371)
!5371 = !{null, !19, null}
!5372 = distinct !DISubprogram(name: "dnotify_sysctl_init", scope: !3, file: !3, line: 34, type: !2330, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5373 = !DILocation(line: 36, column: 2, scope: !5372)
!5374 = !DILocation(line: 37, column: 1, scope: !5372)
!5375 = distinct !DISubprogram(name: "dnotify_handle_event", scope: !3, file: !3, line: 91, type: !4281, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5376 = !{!5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5388, !5389}
!5377 = !DILocalVariable(name: "inode_mark", arg: 1, scope: !5375, file: !3, line: 91, type: !4275)
!5378 = !DILocalVariable(name: "mask", arg: 2, scope: !5375, file: !3, line: 91, type: !225)
!5379 = !DILocalVariable(name: "inode", arg: 3, scope: !5375, file: !3, line: 92, type: !228)
!5380 = !DILocalVariable(name: "dir", arg: 4, scope: !5375, file: !3, line: 92, type: !228)
!5381 = !DILocalVariable(name: "name", arg: 5, scope: !5375, file: !3, line: 93, type: !344)
!5382 = !DILocalVariable(name: "cookie", arg: 6, scope: !5375, file: !3, line: 93, type: !225)
!5383 = !DILocalVariable(name: "dn_mark", scope: !5375, file: !3, line: 95, type: !198)
!5384 = !DILocalVariable(name: "dn", scope: !5375, file: !3, line: 96, type: !4351)
!5385 = !DILocalVariable(name: "prev", scope: !5375, file: !3, line: 97, type: !4437)
!5386 = !DILocalVariable(name: "fown", scope: !5375, file: !3, line: 98, type: !5387)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!5388 = !DILocalVariable(name: "test_mask", scope: !5375, file: !3, line: 99, type: !205)
!5389 = !DILocalVariable(name: "__mptr", scope: !5390, file: !3, line: 105, type: !23)
!5390 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 105, column: 12)
!5391 = !DILocation(line: 91, column: 55, scope: !5375)
!5392 = !DILocation(line: 91, column: 71, scope: !5375)
!5393 = !DILocation(line: 92, column: 19, scope: !5375)
!5394 = !DILocation(line: 92, column: 40, scope: !5375)
!5395 = !DILocation(line: 93, column: 24, scope: !5375)
!5396 = !DILocation(line: 93, column: 34, scope: !5375)
!5397 = !DILocation(line: 95, column: 2, scope: !5375)
!5398 = !DILocation(line: 95, column: 23, scope: !5375)
!5399 = !DILocation(line: 96, column: 2, scope: !5375)
!5400 = !DILocation(line: 96, column: 25, scope: !5375)
!5401 = !DILocation(line: 97, column: 2, scope: !5375)
!5402 = !DILocation(line: 97, column: 26, scope: !5375)
!5403 = !DILocation(line: 98, column: 2, scope: !5375)
!5404 = !DILocation(line: 98, column: 22, scope: !5375)
!5405 = !DILocation(line: 99, column: 2, scope: !5375)
!5406 = !DILocation(line: 99, column: 8, scope: !5375)
!5407 = !DILocation(line: 99, column: 20, scope: !5375)
!5408 = !DILocation(line: 99, column: 25, scope: !5375)
!5409 = !DILocation(line: 102, column: 7, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 102, column: 6)
!5411 = !DILocation(line: 102, column: 11, scope: !5410)
!5412 = !DILocation(line: 102, column: 16, scope: !5410)
!5413 = !DILocation(line: 102, column: 21, scope: !5410)
!5414 = !DILocation(line: 102, column: 6, scope: !5375)
!5415 = !DILocation(line: 103, column: 3, scope: !5410)
!5416 = !DILocation(line: 105, column: 12, scope: !5390)
!5417 = !DILocation(line: 105, column: 12, scope: !5375)
!5418 = !DILocation(line: 105, column: 10, scope: !5375)
!5419 = !DILocation(line: 107, column: 13, scope: !5375)
!5420 = !DILocation(line: 107, column: 25, scope: !5375)
!5421 = !DILocation(line: 107, column: 2, scope: !5375)
!5422 = !DILocation(line: 108, column: 10, scope: !5375)
!5423 = !DILocation(line: 108, column: 19, scope: !5375)
!5424 = !DILocation(line: 108, column: 7, scope: !5375)
!5425 = !DILocation(line: 109, column: 2, scope: !5375)
!5426 = !DILocation(line: 109, column: 16, scope: !5375)
!5427 = !DILocation(line: 109, column: 15, scope: !5375)
!5428 = !DILocation(line: 109, column: 13, scope: !5375)
!5429 = !DILocation(line: 109, column: 22, scope: !5375)
!5430 = !DILocation(line: 110, column: 8, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 110, column: 7)
!5432 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 109, column: 31)
!5433 = !DILocation(line: 110, column: 12, scope: !5431)
!5434 = !DILocation(line: 110, column: 22, scope: !5431)
!5435 = !DILocation(line: 110, column: 20, scope: !5431)
!5436 = !DILocation(line: 110, column: 33, scope: !5431)
!5437 = !DILocation(line: 110, column: 7, scope: !5432)
!5438 = !DILocation(line: 111, column: 12, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 110, column: 39)
!5440 = !DILocation(line: 111, column: 16, scope: !5439)
!5441 = !DILocation(line: 111, column: 9, scope: !5439)
!5442 = !DILocation(line: 112, column: 4, scope: !5439)
!5443 = distinct !{!5443, !5425, !5444, !4516, !4517}
!5444 = !DILocation(line: 123, column: 2, scope: !5375)
!5445 = !DILocation(line: 114, column: 11, scope: !5432)
!5446 = !DILocation(line: 114, column: 15, scope: !5432)
!5447 = !DILocation(line: 114, column: 24, scope: !5432)
!5448 = !DILocation(line: 114, column: 8, scope: !5432)
!5449 = !DILocation(line: 115, column: 14, scope: !5432)
!5450 = !DILocation(line: 115, column: 20, scope: !5432)
!5451 = !DILocation(line: 115, column: 24, scope: !5432)
!5452 = !DILocation(line: 115, column: 3, scope: !5432)
!5453 = !DILocation(line: 116, column: 7, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 116, column: 7)
!5455 = !DILocation(line: 116, column: 11, scope: !5454)
!5456 = !DILocation(line: 116, column: 19, scope: !5454)
!5457 = !DILocation(line: 116, column: 7, scope: !5432)
!5458 = !DILocation(line: 117, column: 12, scope: !5454)
!5459 = !DILocation(line: 117, column: 16, scope: !5454)
!5460 = !DILocation(line: 117, column: 9, scope: !5454)
!5461 = !DILocation(line: 117, column: 4, scope: !5454)
!5462 = !DILocation(line: 119, column: 12, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 118, column: 8)
!5464 = !DILocation(line: 119, column: 16, scope: !5463)
!5465 = !DILocation(line: 119, column: 5, scope: !5463)
!5466 = !DILocation(line: 119, column: 10, scope: !5463)
!5467 = !DILocation(line: 120, column: 20, scope: !5463)
!5468 = !DILocation(line: 120, column: 42, scope: !5463)
!5469 = !DILocation(line: 120, column: 4, scope: !5463)
!5470 = !DILocation(line: 121, column: 30, scope: !5463)
!5471 = !DILocation(line: 121, column: 4, scope: !5463)
!5472 = !DILocation(line: 125, column: 15, scope: !5375)
!5473 = !DILocation(line: 125, column: 27, scope: !5375)
!5474 = !DILocation(line: 125, column: 2, scope: !5375)
!5475 = !DILocation(line: 127, column: 2, scope: !5375)
!5476 = !DILocation(line: 128, column: 1, scope: !5375)
!5477 = distinct !DISubprogram(name: "dnotify_free_mark", scope: !3, file: !3, line: 130, type: !4301, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5478)
!5478 = !{!5479, !5480, !5481}
!5479 = !DILocalVariable(name: "fsn_mark", arg: 1, scope: !5477, file: !3, line: 130, type: !4275)
!5480 = !DILocalVariable(name: "dn_mark", scope: !5477, file: !3, line: 132, type: !198)
!5481 = !DILocalVariable(name: "__mptr", scope: !5482, file: !3, line: 132, type: !23)
!5482 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 132, column: 33)
!5483 = !DILocation(line: 130, column: 53, scope: !5477)
!5484 = !DILocation(line: 132, column: 2, scope: !5477)
!5485 = !DILocation(line: 132, column: 23, scope: !5477)
!5486 = !DILocation(line: 132, column: 33, scope: !5482)
!5487 = !DILocation(line: 132, column: 33, scope: !5477)
!5488 = !DILocation(line: 136, column: 2, scope: !5477)
!5489 = !DILocation(line: 136, column: 2, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 136, column: 2)
!5491 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 136, column: 2)
!5492 = !DILocation(line: 136, column: 2, scope: !5491)
!5493 = !DILocation(line: 136, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 136, column: 2)
!5495 = !DILocation(line: 136, column: 2, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 136, column: 2)
!5497 = !DILocation(line: 136, column: 2, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 136, column: 2)
!5499 = !{i64 2154317072, i64 2154317101, i64 2154317147, i64 2154317205, i64 2154317259, i64 2154317313, i64 2154317368, i64 2154317399}
!5500 = !DILocation(line: 138, column: 18, scope: !5477)
!5501 = !DILocation(line: 138, column: 38, scope: !5477)
!5502 = !DILocation(line: 138, column: 2, scope: !5477)
!5503 = !DILocation(line: 139, column: 1, scope: !5477)
!5504 = !DISubprogram(name: "send_sigio", scope: !155, file: !155, line: 1071, type: !5505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{null, !5387, !25, !25}
!5507 = !DISubprogram(name: "__register_sysctl_init", scope: !15, file: !15, line: 237, type: !5508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{null, !19, !36, !19, !38}
