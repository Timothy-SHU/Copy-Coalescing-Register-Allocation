; ModuleID = 'fs/autofs/waitq.c'
source_filename = "fs/autofs/waitq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [16 x i8] }
%struct.anon.21 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.30 }
%union.anon.30 = type { i64 }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.autofs_wait_queue = type { %struct.wait_queue_head, ptr, i32, %struct.qstr, i32, i32, i64, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.14 = type { i32, i32 }
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
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.19 }
%struct.kernel_cap_t = type { i64 }
%union.anon.19 = type { %struct.callback_head }
%struct.autofs_info = type { ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [0 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.22, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.23, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.24, ptr, %struct.address_space, %struct.list_head, %union.anon.25, i32, i32, ptr, ptr }
%union.anon.22 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.23 = type { %struct.callback_head }
%union.anon.24 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.25 = type { ptr }
%union.anon.26 = type { %union.autofs_v5_packet_union }
%union.autofs_v5_packet_union = type { %struct.autofs_v5_packet }
%struct.autofs_v5_packet = type { %struct.autofs_packet_hdr, i32, i32, i64, i32, i32, i32, i32, i32, [256 x i8] }
%struct.autofs_packet_hdr = type { i32, i32 }
%struct.autofs_packet_missing = type { %struct.autofs_packet_hdr, i32, i32, [256 x i8] }
%struct.autofs_packet_expire_multi = type { %struct.autofs_packet_hdr, i32, i32, [256 x i8] }
%struct.file = type { %union.anon.27, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.27 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.28, %struct.qspinlock }
%union.anon.28 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1, !dbg !0
@autofs_next_wait_queue = internal global i32 1, align 4, !dbg !7
@autofs_wait.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3269
@.str.1 = private unnamed_addr constant [11 x i8] c"&wq->queue\00", align 1, !dbg !3317
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3322
@.str.3 = private unnamed_addr constant [35 x i8] c"\014autofs4:pid:%d:%s: bad type %d!\0A\00", align 1, !dbg !3327
@__func__.autofs_notify_daemon = private unnamed_addr constant [21 x i8] c"autofs_notify_daemon\00", align 1, !dbg !3332
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched37 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !3335
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched37], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @autofs_catatonic_mode(ptr noundef %sbi) #0 align 16 !dbg !3348 {
entry:
  %sbi.addr = alloca ptr, align 8
  %wq = alloca ptr, align 8
  %nwq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.lifetime.start.p0(i64 8, ptr %wq) #16, !dbg !3356
  call void @llvm.dbg.declare(metadata ptr %wq, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.lifetime.start.p0(i64 8, ptr %nwq) #16, !dbg !3356
  call void @llvm.dbg.declare(metadata ptr %nwq, metadata !3354, metadata !DIExpression()), !dbg !3358
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !3359
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12, !dbg !3360
  call void @mutex_lock(ptr noundef %wq_mutex) #17, !dbg !3361
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !3362
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 8, !dbg !3364
  %2 = load i32, ptr %flags, align 8, !dbg !3364
  %and = and i32 %2, 1, !dbg !3365
  %tobool = icmp ne i32 %and, 0, !dbg !3365
  br i1 %tobool, label %if.then, label %if.end, !dbg !3366

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !3367
  %wq_mutex1 = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 12, !dbg !3369
  call void @mutex_unlock(ptr noundef %wq_mutex1) #17, !dbg !3370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3371

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !3372
  %4 = load i32, ptr %tmp, align 4, !dbg !3375
  %5 = load ptr, ptr %sbi.addr, align 8, !dbg !3376
  %flags2 = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 8, !dbg !3377
  %6 = load i32, ptr %flags2, align 8, !dbg !3378
  %or = or i32 %6, 1, !dbg !3378
  store i32 %or, ptr %flags2, align 8, !dbg !3378
  %7 = load ptr, ptr %sbi.addr, align 8, !dbg !3379
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 15, !dbg !3380
  %8 = load ptr, ptr %queues, align 8, !dbg !3380
  store ptr %8, ptr %wq, align 8, !dbg !3381
  %9 = load ptr, ptr %sbi.addr, align 8, !dbg !3382
  %queues3 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 15, !dbg !3383
  store ptr null, ptr %queues3, align 8, !dbg !3384
  br label %while.cond, !dbg !3385

while.cond:                                       ; preds = %if.end10, %if.end
  %10 = load ptr, ptr %wq, align 8, !dbg !3386
  %tobool4 = icmp ne ptr %10, null, !dbg !3385
  br i1 %tobool4, label %while.body, label %while.end, !dbg !3385

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %wq, align 8, !dbg !3387
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %11, i32 0, i32 1, !dbg !3389
  %12 = load ptr, ptr %next, align 8, !dbg !3389
  store ptr %12, ptr %nwq, align 8, !dbg !3390
  %13 = load ptr, ptr %wq, align 8, !dbg !3391
  %status = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 11, !dbg !3392
  store i32 -2, ptr %status, align 8, !dbg !3393
  %14 = load ptr, ptr %wq, align 8, !dbg !3394
  %name = getelementptr inbounds %struct.autofs_wait_queue, ptr %14, i32 0, i32 3, !dbg !3395
  %name5 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1, !dbg !3396
  %15 = load ptr, ptr %name5, align 8, !dbg !3396
  %16 = load ptr, ptr %wq, align 8, !dbg !3397
  %offset = getelementptr inbounds %struct.autofs_wait_queue, ptr %16, i32 0, i32 4, !dbg !3398
  %17 = load i32, ptr %offset, align 8, !dbg !3398
  %idx.ext = zext i32 %17 to i64, !dbg !3399
  %idx.neg = sub i64 0, %idx.ext, !dbg !3399
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.neg, !dbg !3399
  call void @kfree(ptr noundef %add.ptr) #17, !dbg !3400
  %18 = load ptr, ptr %wq, align 8, !dbg !3401
  %name6 = getelementptr inbounds %struct.autofs_wait_queue, ptr %18, i32 0, i32 3, !dbg !3402
  %name7 = getelementptr inbounds %struct.qstr, ptr %name6, i32 0, i32 1, !dbg !3403
  store ptr null, ptr %name7, align 8, !dbg !3404
  %19 = load ptr, ptr %wq, align 8, !dbg !3405
  %queue = getelementptr inbounds %struct.autofs_wait_queue, ptr %19, i32 0, i32 0, !dbg !3405
  %call = call i32 @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #17, !dbg !3405
  %20 = load ptr, ptr %wq, align 8, !dbg !3406
  %wait_ctr = getelementptr inbounds %struct.autofs_wait_queue, ptr %20, i32 0, i32 12, !dbg !3408
  %21 = load i32, ptr %wait_ctr, align 4, !dbg !3409
  %dec = add i32 %21, -1, !dbg !3409
  store i32 %dec, ptr %wait_ctr, align 4, !dbg !3409
  %tobool8 = icmp ne i32 %dec, 0, !dbg !3409
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3410

if.then9:                                         ; preds = %while.body
  %22 = load ptr, ptr %wq, align 8, !dbg !3411
  call void @kfree(ptr noundef %22) #17, !dbg !3412
  br label %if.end10, !dbg !3412

if.end10:                                         ; preds = %if.then9, %while.body
  %23 = load ptr, ptr %nwq, align 8, !dbg !3413
  store ptr %23, ptr %wq, align 8, !dbg !3414
  br label %while.cond, !dbg !3385, !llvm.loop !3415

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %sbi.addr, align 8, !dbg !3419
  %pipe = getelementptr inbounds %struct.autofs_sb_info, ptr %24, i32 0, i32 2, !dbg !3420
  %25 = load ptr, ptr %pipe, align 8, !dbg !3420
  call void @fput(ptr noundef %25) #17, !dbg !3421
  %26 = load ptr, ptr %sbi.addr, align 8, !dbg !3422
  %pipe11 = getelementptr inbounds %struct.autofs_sb_info, ptr %26, i32 0, i32 2, !dbg !3423
  store ptr null, ptr %pipe11, align 8, !dbg !3424
  %27 = load ptr, ptr %sbi.addr, align 8, !dbg !3425
  %pipefd = getelementptr inbounds %struct.autofs_sb_info, ptr %27, i32 0, i32 1, !dbg !3426
  store i32 -1, ptr %pipefd, align 4, !dbg !3427
  %28 = load ptr, ptr %sbi.addr, align 8, !dbg !3428
  %wq_mutex12 = getelementptr inbounds %struct.autofs_sb_info, ptr %28, i32 0, i32 12, !dbg !3429
  call void @mutex_unlock(ptr noundef %wq_mutex12) #17, !dbg !3430
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3431
  br label %cleanup, !dbg !3431

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nwq) #16, !dbg !3431
  call void @llvm.lifetime.end.p0(i64 8, ptr %wq) #16, !dbg !3431
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3431

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3432 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3436 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3437 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3442 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3446 dso_local void @fput(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_wait(ptr noundef %sbi, ptr noundef %path, i32 noundef %notify) #0 align 16 !dbg !3271 {
entry:
  %retval = alloca i32, align 4
  %sbi.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %notify.addr = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %wq = alloca ptr, align 8
  %qstr = alloca %struct.qstr, align 8
  %name = alloca ptr, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %type = alloca i32, align 4
  %offset = alloca i32, align 4
  %pid = alloca i32, align 4
  %tgid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp87 = alloca ptr, align 8
  %tmp116 = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret131 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp147 = alloca i64, align 8
  %tmp150 = alloca i32, align 4
  %ino154 = alloca ptr, align 8
  %de = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3275, metadata !DIExpression()), !dbg !3448
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3276, metadata !DIExpression()), !dbg !3449
  store i32 %notify, ptr %notify.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %notify.addr, metadata !3277, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !3451
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3278, metadata !DIExpression()), !dbg !3452
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3453
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !3454
  %1 = load ptr, ptr %dentry1, align 8, !dbg !3454
  store ptr %1, ptr %dentry, align 8, !dbg !3452
  call void @llvm.lifetime.start.p0(i64 8, ptr %wq) #16, !dbg !3455
  call void @llvm.dbg.declare(metadata ptr %wq, metadata !3279, metadata !DIExpression()), !dbg !3456
  call void @llvm.lifetime.start.p0(i64 16, ptr %qstr) #16, !dbg !3457
  call void @llvm.dbg.declare(metadata ptr %qstr, metadata !3280, metadata !DIExpression()), !dbg !3458
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %name, metadata !3281, metadata !DIExpression()), !dbg !3460
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3282, metadata !DIExpression()), !dbg !3462
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3283, metadata !DIExpression()), !dbg !3463
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #16, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3284, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #16, !dbg !3465
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !3285, metadata !DIExpression()), !dbg !3466
  store i32 0, ptr %offset, align 4, !dbg !3466
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #16, !dbg !3467
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !3286, metadata !DIExpression()), !dbg !3468
  call void @llvm.lifetime.start.p0(i64 4, ptr %tgid) #16, !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %tgid, metadata !3287, metadata !DIExpression()), !dbg !3470
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !3471
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 8, !dbg !3473
  %3 = load i32, ptr %flags, align 8, !dbg !3473
  %and = and i32 %3, 1, !dbg !3474
  %tobool = icmp ne i32 %and, 0, !dbg !3474
  br i1 %tobool, label %if.then, label %if.end, !dbg !3475

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !3476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3476

if.end:                                           ; preds = %entry
  %call = call ptr @get_current() #17, !dbg !3477
  %4 = load ptr, ptr %sbi.addr, align 8, !dbg !3478
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %4, i32 0, i32 3, !dbg !3479
  %5 = load ptr, ptr %oz_pgrp, align 8, !dbg !3479
  %call2 = call ptr @ns_of_pid(ptr noundef %5) #17, !dbg !3480
  %call3 = call i32 @task_pid_nr_ns(ptr noundef %call, ptr noundef %call2) #17, !dbg !3481
  store i32 %call3, ptr %pid, align 4, !dbg !3482
  %call4 = call ptr @get_current() #17, !dbg !3483
  %6 = load ptr, ptr %sbi.addr, align 8, !dbg !3484
  %oz_pgrp5 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 3, !dbg !3485
  %7 = load ptr, ptr %oz_pgrp5, align 8, !dbg !3485
  %call6 = call ptr @ns_of_pid(ptr noundef %7) #17, !dbg !3486
  %call7 = call i32 @task_tgid_nr_ns(ptr noundef %call4, ptr noundef %call6) #17, !dbg !3487
  store i32 %call7, ptr %tgid, align 4, !dbg !3488
  %8 = load i32, ptr %pid, align 4, !dbg !3489
  %cmp = icmp eq i32 %8, 0, !dbg !3491
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !3492

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, ptr %tgid, align 4, !dbg !3493
  %cmp8 = icmp eq i32 %9, 0, !dbg !3494
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3495

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -2, ptr %retval, align 4, !dbg !3496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3496

if.end10:                                         ; preds = %lor.lhs.false
  %10 = load ptr, ptr %dentry, align 8, !dbg !3497
  %call11 = call zeroext i1 @d_really_is_negative(ptr noundef %10) #17, !dbg !3499
  br i1 %call11, label %if.then12, label %if.end23, !dbg !3500

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %sbi.addr, align 8, !dbg !3501
  %type13 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 10, !dbg !3504
  %12 = load i32, ptr %type13, align 8, !dbg !3504
  %call14 = call i32 @autofs_type_trigger(i32 noundef %12) #17, !dbg !3505
  %tobool15 = icmp ne i32 %call14, 0, !dbg !3505
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !3506

if.then16:                                        ; preds = %if.then12
  store i32 -2, ptr %retval, align 4, !dbg !3507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3507

if.else:                                          ; preds = %if.then12
  %13 = load ptr, ptr %dentry, align 8, !dbg !3508
  %d_parent = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3, !dbg !3508
  %14 = load ptr, ptr %d_parent, align 8, !dbg !3508
  %15 = load ptr, ptr %dentry, align 8, !dbg !3508
  %d_parent17 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 3, !dbg !3508
  %16 = load ptr, ptr %d_parent17, align 8, !dbg !3508
  %d_parent18 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3, !dbg !3508
  %17 = load ptr, ptr %d_parent18, align 8, !dbg !3508
  %cmp19 = icmp eq ptr %14, %17, !dbg !3508
  br i1 %cmp19, label %if.end21, label %if.then20, !dbg !3510

if.then20:                                        ; preds = %if.else
  store i32 -2, ptr %retval, align 4, !dbg !3511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3511

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %if.end23, !dbg !3512

if.end23:                                         ; preds = %if.end22, %if.end10
  %call24 = call noalias ptr @kmalloc(i64 noundef 256, i32 noundef 3264) #18, !dbg !3513
  store ptr %call24, ptr %name, align 8, !dbg !3514
  %18 = load ptr, ptr %name, align 8, !dbg !3515
  %tobool25 = icmp ne ptr %18, null, !dbg !3515
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !3517

if.then26:                                        ; preds = %if.end23
  store i32 -12, ptr %retval, align 4, !dbg !3518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3518

if.end27:                                         ; preds = %if.end23
  %19 = load ptr, ptr %dentry, align 8, !dbg !3519
  %20 = load ptr, ptr %dentry, align 8, !dbg !3519
  %d_parent28 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 3, !dbg !3519
  %21 = load ptr, ptr %d_parent28, align 8, !dbg !3519
  %cmp29 = icmp eq ptr %19, %21, !dbg !3519
  br i1 %cmp29, label %land.lhs.true, label %if.else36, !dbg !3520

land.lhs.true:                                    ; preds = %if.end27
  %22 = load ptr, ptr %sbi.addr, align 8, !dbg !3521
  %type30 = getelementptr inbounds %struct.autofs_sb_info, ptr %22, i32 0, i32 10, !dbg !3522
  %23 = load i32, ptr %type30, align 8, !dbg !3522
  %call31 = call i32 @autofs_type_trigger(i32 noundef %23) #17, !dbg !3523
  %tobool32 = icmp ne i32 %call31, 0, !dbg !3523
  br i1 %tobool32, label %if.then33, label %if.else36, !dbg !3524

if.then33:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %name, align 8, !dbg !3525
  %name34 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1, !dbg !3527
  store ptr %24, ptr %name34, align 8, !dbg !3528
  %25 = load ptr, ptr %name, align 8, !dbg !3529
  %26 = load ptr, ptr %dentry, align 8, !dbg !3530
  %call35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %25, ptr noundef @.str, ptr noundef %26) #17, !dbg !3531
  %27 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 0, !dbg !3532
  %len = getelementptr inbounds %struct.anon.14, ptr %27, i32 0, i32 1, !dbg !3532
  store i32 %call35, ptr %len, align 4, !dbg !3533
  br label %if.end45, !dbg !3534

if.else36:                                        ; preds = %land.lhs.true, %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !3535
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3288, metadata !DIExpression()), !dbg !3536
  %28 = load ptr, ptr %dentry, align 8, !dbg !3537
  %29 = load ptr, ptr %name, align 8, !dbg !3538
  %call37 = call ptr @dentry_path_raw(ptr noundef %28, ptr noundef %29, i32 noundef 255) #17, !dbg !3539
  store ptr %call37, ptr %p, align 8, !dbg !3536
  %30 = load ptr, ptr %p, align 8, !dbg !3540
  %call38 = call zeroext i1 @IS_ERR(ptr noundef %30) #17, !dbg !3542
  br i1 %call38, label %if.then39, label %if.end40, !dbg !3543

if.then39:                                        ; preds = %if.else36
  %31 = load ptr, ptr %name, align 8, !dbg !3544
  call void @kfree(ptr noundef %31) #17, !dbg !3546
  store i32 -2, ptr %retval, align 4, !dbg !3547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3547

if.end40:                                         ; preds = %if.else36
  %32 = load ptr, ptr %p, align 8, !dbg !3548
  %incdec.ptr = getelementptr i8, ptr %32, i32 1, !dbg !3548
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !3548
  %name41 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1, !dbg !3549
  store ptr %incdec.ptr, ptr %name41, align 8, !dbg !3550
  %33 = load ptr, ptr %p, align 8, !dbg !3551
  %call42 = call i64 @strlen(ptr noundef %33) #17, !dbg !3552
  %conv = trunc i64 %call42 to i32, !dbg !3552
  %34 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 0, !dbg !3553
  %len43 = getelementptr inbounds %struct.anon.14, ptr %34, i32 0, i32 1, !dbg !3553
  store i32 %conv, ptr %len43, align 4, !dbg !3554
  %35 = load ptr, ptr %p, align 8, !dbg !3555
  %36 = load ptr, ptr %name, align 8, !dbg !3556
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i64, !dbg !3557
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i64, !dbg !3557
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3557
  %conv44 = trunc i64 %sub.ptr.sub to i32, !dbg !3555
  store i32 %conv44, ptr %offset, align 4, !dbg !3558
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3559
  br label %cleanup, !dbg !3559

cleanup:                                          ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !3559
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup183 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end45

if.end45:                                         ; preds = %cleanup.cont, %if.then33
  %37 = load ptr, ptr %dentry, align 8, !dbg !3560
  %name46 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1, !dbg !3561
  %38 = load ptr, ptr %name46, align 8, !dbg !3561
  %39 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 0, !dbg !3562
  %len47 = getelementptr inbounds %struct.anon.14, ptr %39, i32 0, i32 1, !dbg !3562
  %40 = load i32, ptr %len47, align 4, !dbg !3562
  %call48 = call i32 @full_name_hash(ptr noundef %37, ptr noundef %38, i32 noundef %40) #19, !dbg !3563
  %41 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 0, !dbg !3564
  %hash = getelementptr inbounds %struct.anon.14, ptr %41, i32 0, i32 0, !dbg !3564
  store i32 %call48, ptr %hash, align 8, !dbg !3565
  %42 = load ptr, ptr %sbi.addr, align 8, !dbg !3566
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %42, i32 0, i32 12, !dbg !3568
  %call49 = call i32 @mutex_lock_interruptible(ptr noundef %wq_mutex) #17, !dbg !3569
  %tobool50 = icmp ne i32 %call49, 0, !dbg !3569
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !3570

if.then51:                                        ; preds = %if.end45
  %43 = load ptr, ptr %name, align 8, !dbg !3571
  call void @kfree(ptr noundef %43) #17, !dbg !3573
  store i32 -4, ptr %retval, align 4, !dbg !3574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3574

if.end52:                                         ; preds = %if.end45
  %44 = load ptr, ptr %sbi.addr, align 8, !dbg !3575
  %45 = load ptr, ptr %path.addr, align 8, !dbg !3576
  %46 = load i32, ptr %notify.addr, align 4, !dbg !3577
  %call53 = call i32 @validate_request(ptr noundef %wq, ptr noundef %44, ptr noundef %qstr, ptr noundef %45, i32 noundef %46) #17, !dbg !3578
  store i32 %call53, ptr %ret, align 4, !dbg !3579
  %47 = load i32, ptr %ret, align 4, !dbg !3580
  %cmp54 = icmp sle i32 %47, 0, !dbg !3582
  br i1 %cmp54, label %if.then56, label %if.end62, !dbg !3583

if.then56:                                        ; preds = %if.end52
  %48 = load i32, ptr %ret, align 4, !dbg !3584
  %cmp57 = icmp ne i32 %48, -4, !dbg !3587
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !3588

if.then59:                                        ; preds = %if.then56
  %49 = load ptr, ptr %sbi.addr, align 8, !dbg !3589
  %wq_mutex60 = getelementptr inbounds %struct.autofs_sb_info, ptr %49, i32 0, i32 12, !dbg !3590
  call void @mutex_unlock(ptr noundef %wq_mutex60) #17, !dbg !3591
  br label %if.end61, !dbg !3591

if.end61:                                         ; preds = %if.then59, %if.then56
  %50 = load ptr, ptr %name, align 8, !dbg !3592
  call void @kfree(ptr noundef %50) #17, !dbg !3593
  %51 = load i32, ptr %ret, align 4, !dbg !3594
  store i32 %51, ptr %retval, align 4, !dbg !3595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3595

if.end62:                                         ; preds = %if.end52
  %52 = load ptr, ptr %wq, align 8, !dbg !3596
  %tobool63 = icmp ne ptr %52, null, !dbg !3596
  br i1 %tobool63, label %if.else117, label %if.then64, !dbg !3598

if.then64:                                        ; preds = %if.end62
  %call65 = call noalias ptr @kmalloc(i64 noundef 96, i32 noundef 3264) #18, !dbg !3599
  store ptr %call65, ptr %wq, align 8, !dbg !3601
  %53 = load ptr, ptr %wq, align 8, !dbg !3602
  %tobool66 = icmp ne ptr %53, null, !dbg !3602
  br i1 %tobool66, label %if.end69, label %if.then67, !dbg !3604

if.then67:                                        ; preds = %if.then64
  %54 = load ptr, ptr %name, align 8, !dbg !3605
  call void @kfree(ptr noundef %54) #17, !dbg !3607
  %55 = load ptr, ptr %sbi.addr, align 8, !dbg !3608
  %wq_mutex68 = getelementptr inbounds %struct.autofs_sb_info, ptr %55, i32 0, i32 12, !dbg !3609
  call void @mutex_unlock(ptr noundef %wq_mutex68) #17, !dbg !3610
  store i32 -12, ptr %retval, align 4, !dbg !3611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3611

if.end69:                                         ; preds = %if.then64
  %56 = load i32, ptr @autofs_next_wait_queue, align 4, !dbg !3612
  %57 = load ptr, ptr %wq, align 8, !dbg !3613
  %wait_queue_token = getelementptr inbounds %struct.autofs_wait_queue, ptr %57, i32 0, i32 2, !dbg !3614
  store i32 %56, ptr %wait_queue_token, align 8, !dbg !3615
  %58 = load i32, ptr @autofs_next_wait_queue, align 4, !dbg !3616
  %inc = add i32 %58, 1, !dbg !3616
  store i32 %inc, ptr @autofs_next_wait_queue, align 4, !dbg !3616
  %cmp70 = icmp eq i32 %inc, 0, !dbg !3618
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !3619

if.then72:                                        ; preds = %if.end69
  store i32 1, ptr @autofs_next_wait_queue, align 4, !dbg !3620
  br label %if.end73, !dbg !3621

if.end73:                                         ; preds = %if.then72, %if.end69
  %59 = load ptr, ptr %sbi.addr, align 8, !dbg !3622
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %59, i32 0, i32 15, !dbg !3623
  %60 = load ptr, ptr %queues, align 8, !dbg !3623
  %61 = load ptr, ptr %wq, align 8, !dbg !3624
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %61, i32 0, i32 1, !dbg !3625
  store ptr %60, ptr %next, align 8, !dbg !3626
  %62 = load ptr, ptr %wq, align 8, !dbg !3627
  %63 = load ptr, ptr %sbi.addr, align 8, !dbg !3628
  %queues74 = getelementptr inbounds %struct.autofs_sb_info, ptr %63, i32 0, i32 15, !dbg !3629
  store ptr %62, ptr %queues74, align 8, !dbg !3630
  br label %do.body, !dbg !3631

do.body:                                          ; preds = %if.end73
  %64 = load ptr, ptr %wq, align 8, !dbg !3632
  %queue = getelementptr inbounds %struct.autofs_wait_queue, ptr %64, i32 0, i32 0, !dbg !3632
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef @.str.1, ptr noundef @autofs_wait.__key) #17, !dbg !3632
  br label %do.cond, !dbg !3632

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3632

do.end:                                           ; preds = %do.cond
  %65 = load ptr, ptr %wq, align 8, !dbg !3634
  %name75 = getelementptr inbounds %struct.autofs_wait_queue, ptr %65, i32 0, i32 3, !dbg !3635
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name75, ptr align 8 %qstr, i64 16, i1 false), !dbg !3636
  %66 = load i32, ptr %offset, align 4, !dbg !3637
  %67 = load ptr, ptr %wq, align 8, !dbg !3638
  %offset76 = getelementptr inbounds %struct.autofs_wait_queue, ptr %67, i32 0, i32 4, !dbg !3639
  store i32 %66, ptr %offset76, align 8, !dbg !3640
  %68 = load ptr, ptr %sbi.addr, align 8, !dbg !3641
  %call77 = call i32 @autofs_get_dev(ptr noundef %68) #17, !dbg !3642
  %69 = load ptr, ptr %wq, align 8, !dbg !3643
  %dev = getelementptr inbounds %struct.autofs_wait_queue, ptr %69, i32 0, i32 5, !dbg !3644
  store i32 %call77, ptr %dev, align 4, !dbg !3645
  %70 = load ptr, ptr %sbi.addr, align 8, !dbg !3646
  %call78 = call i64 @autofs_get_ino(ptr noundef %70) #17, !dbg !3647
  %71 = load ptr, ptr %wq, align 8, !dbg !3648
  %ino = getelementptr inbounds %struct.autofs_wait_queue, ptr %71, i32 0, i32 6, !dbg !3649
  store i64 %call78, ptr %ino, align 8, !dbg !3650
  %72 = load ptr, ptr %wq, align 8, !dbg !3651
  %uid = getelementptr inbounds %struct.autofs_wait_queue, ptr %72, i32 0, i32 7, !dbg !3652
  br label %do.body79, !dbg !3653

do.body79:                                        ; preds = %do.end
  br label %do.cond80, !dbg !3656

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !3656

do.end81:                                         ; preds = %do.cond80
  %call82 = call ptr @get_current() #17, !dbg !3653
  %cred = getelementptr inbounds %struct.task_struct, ptr %call82, i32 0, i32 94, !dbg !3653
  %73 = load ptr, ptr %cred, align 32, !dbg !3653
  store ptr %73, ptr %tmp, align 8, !dbg !3656
  %74 = load ptr, ptr %tmp, align 8, !dbg !3653
  %uid83 = getelementptr inbounds %struct.cred, ptr %74, i32 0, i32 1, !dbg !3658
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %uid, ptr align 8 %uid83, i64 4, i1 false), !dbg !3658
  %75 = load ptr, ptr %wq, align 8, !dbg !3659
  %gid = getelementptr inbounds %struct.autofs_wait_queue, ptr %75, i32 0, i32 8, !dbg !3660
  br label %do.body84, !dbg !3661

do.body84:                                        ; preds = %do.end81
  br label %do.cond85, !dbg !3664

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !3664

do.end86:                                         ; preds = %do.cond85
  %call88 = call ptr @get_current() #17, !dbg !3661
  %cred89 = getelementptr inbounds %struct.task_struct, ptr %call88, i32 0, i32 94, !dbg !3661
  %76 = load ptr, ptr %cred89, align 32, !dbg !3661
  store ptr %76, ptr %tmp87, align 8, !dbg !3664
  %77 = load ptr, ptr %tmp87, align 8, !dbg !3661
  %gid90 = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 2, !dbg !3666
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %gid90, i64 4, i1 false), !dbg !3666
  %78 = load i32, ptr %pid, align 4, !dbg !3667
  %79 = load ptr, ptr %wq, align 8, !dbg !3668
  %pid91 = getelementptr inbounds %struct.autofs_wait_queue, ptr %79, i32 0, i32 9, !dbg !3669
  store i32 %78, ptr %pid91, align 8, !dbg !3670
  %80 = load i32, ptr %tgid, align 4, !dbg !3671
  %81 = load ptr, ptr %wq, align 8, !dbg !3672
  %tgid92 = getelementptr inbounds %struct.autofs_wait_queue, ptr %81, i32 0, i32 10, !dbg !3673
  store i32 %80, ptr %tgid92, align 4, !dbg !3674
  %82 = load ptr, ptr %wq, align 8, !dbg !3675
  %status93 = getelementptr inbounds %struct.autofs_wait_queue, ptr %82, i32 0, i32 11, !dbg !3676
  store i32 -4, ptr %status93, align 8, !dbg !3677
  %83 = load ptr, ptr %wq, align 8, !dbg !3678
  %wait_ctr = getelementptr inbounds %struct.autofs_wait_queue, ptr %83, i32 0, i32 12, !dbg !3679
  store i32 2, ptr %wait_ctr, align 4, !dbg !3680
  %84 = load ptr, ptr %sbi.addr, align 8, !dbg !3681
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %84, i32 0, i32 4, !dbg !3683
  %85 = load i32, ptr %version, align 8, !dbg !3683
  %cmp94 = icmp slt i32 %85, 5, !dbg !3684
  br i1 %cmp94, label %if.then96, label %if.else102, !dbg !3685

if.then96:                                        ; preds = %do.end86
  %86 = load i32, ptr %notify.addr, align 4, !dbg !3686
  %cmp97 = icmp eq i32 %86, 1, !dbg !3689
  br i1 %cmp97, label %if.then99, label %if.else100, !dbg !3690

if.then99:                                        ; preds = %if.then96
  store i32 0, ptr %type, align 4, !dbg !3691
  br label %if.end101, !dbg !3692

if.else100:                                       ; preds = %if.then96
  store i32 2, ptr %type, align 4, !dbg !3693
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then99
  br label %if.end115, !dbg !3694

if.else102:                                       ; preds = %do.end86
  %87 = load i32, ptr %notify.addr, align 4, !dbg !3695
  %cmp103 = icmp eq i32 %87, 1, !dbg !3698
  br i1 %cmp103, label %if.then105, label %if.else109, !dbg !3699

if.then105:                                       ; preds = %if.else102
  %88 = load ptr, ptr %sbi.addr, align 8, !dbg !3700
  %type106 = getelementptr inbounds %struct.autofs_sb_info, ptr %88, i32 0, i32 10, !dbg !3701
  %89 = load i32, ptr %type106, align 8, !dbg !3701
  %call107 = call i32 @autofs_type_trigger(i32 noundef %89) #17, !dbg !3702
  %tobool108 = icmp ne i32 %call107, 0, !dbg !3702
  %90 = zext i1 %tobool108 to i64, !dbg !3702
  %cond = select i1 %tobool108, i32 5, i32 3, !dbg !3702
  store i32 %cond, ptr %type, align 4, !dbg !3703
  br label %if.end114, !dbg !3704

if.else109:                                       ; preds = %if.else102
  %91 = load ptr, ptr %sbi.addr, align 8, !dbg !3705
  %type110 = getelementptr inbounds %struct.autofs_sb_info, ptr %91, i32 0, i32 10, !dbg !3706
  %92 = load i32, ptr %type110, align 8, !dbg !3706
  %call111 = call i32 @autofs_type_trigger(i32 noundef %92) #17, !dbg !3707
  %tobool112 = icmp ne i32 %call111, 0, !dbg !3707
  %93 = zext i1 %tobool112 to i64, !dbg !3707
  %cond113 = select i1 %tobool112, i32 6, i32 4, !dbg !3707
  store i32 %cond113, ptr %type, align 4, !dbg !3708
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.then105
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end101
  store i32 0, ptr %tmp116, align 4, !dbg !3709
  %94 = load i32, ptr %tmp116, align 4, !dbg !3712
  %95 = load ptr, ptr %sbi.addr, align 8, !dbg !3713
  %96 = load ptr, ptr %wq, align 8, !dbg !3714
  %97 = load i32, ptr %type, align 4, !dbg !3715
  call void @autofs_notify_daemon(ptr noundef %95, ptr noundef %96, i32 noundef %97) #17, !dbg !3716
  br label %if.end122, !dbg !3717

if.else117:                                       ; preds = %if.end62
  %98 = load ptr, ptr %wq, align 8, !dbg !3718
  %wait_ctr118 = getelementptr inbounds %struct.autofs_wait_queue, ptr %98, i32 0, i32 12, !dbg !3720
  %99 = load i32, ptr %wait_ctr118, align 4, !dbg !3721
  %inc119 = add i32 %99, 1, !dbg !3721
  store i32 %inc119, ptr %wait_ctr118, align 4, !dbg !3721
  store i32 0, ptr %tmp120, align 4, !dbg !3722
  %100 = load i32, ptr %tmp120, align 4, !dbg !3725
  %101 = load ptr, ptr %sbi.addr, align 8, !dbg !3726
  %wq_mutex121 = getelementptr inbounds %struct.autofs_sb_info, ptr %101, i32 0, i32 12, !dbg !3727
  call void @mutex_unlock(ptr noundef %wq_mutex121) #17, !dbg !3728
  %102 = load ptr, ptr %name, align 8, !dbg !3729
  call void @kfree(ptr noundef %102) #17, !dbg !3730
  br label %if.end122

if.end122:                                        ; preds = %if.else117, %if.end115
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !3731
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3291, metadata !DIExpression()), !dbg !3731
  store i32 0, ptr %__ret, align 4, !dbg !3731
  br label %do.body123, !dbg !3731

do.body123:                                       ; preds = %if.end122
  call void @might_resched() #17, !dbg !3732
  br label %do.cond124, !dbg !3732

do.cond124:                                       ; preds = %do.body123
  br label %do.end125, !dbg !3732

do.end125:                                        ; preds = %do.cond124
  %103 = load ptr, ptr %wq, align 8, !dbg !3734
  %name126 = getelementptr inbounds %struct.autofs_wait_queue, ptr %103, i32 0, i32 3, !dbg !3734
  %name127 = getelementptr inbounds %struct.qstr, ptr %name126, i32 0, i32 1, !dbg !3734
  %104 = load ptr, ptr %name127, align 8, !dbg !3734
  %cmp128 = icmp eq ptr %104, null, !dbg !3734
  br i1 %cmp128, label %if.end149, label %if.then130, !dbg !3731

if.then130:                                       ; preds = %do.end125
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !3293, metadata !DIExpression()), !dbg !3735
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret131) #16, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %__ret131, metadata !3307, metadata !DIExpression()), !dbg !3735
  store i64 0, ptr %__ret131, align 8, !dbg !3735
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !3735
  br label %for.cond, !dbg !3735

for.cond:                                         ; preds = %cleanup.cont145, %if.then130
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !3736
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !3308, metadata !DIExpression()), !dbg !3736
  %105 = load ptr, ptr %wq, align 8, !dbg !3736
  %queue132 = getelementptr inbounds %struct.autofs_wait_queue, ptr %105, i32 0, i32 0, !dbg !3736
  %call133 = call i64 @prepare_to_wait_event(ptr noundef %queue132, ptr noundef %__wq_entry, i32 noundef 258) #17, !dbg !3736
  store i64 %call133, ptr %__int, align 8, !dbg !3736
  %106 = load ptr, ptr %wq, align 8, !dbg !3737
  %name134 = getelementptr inbounds %struct.autofs_wait_queue, ptr %106, i32 0, i32 3, !dbg !3737
  %name135 = getelementptr inbounds %struct.qstr, ptr %name134, i32 0, i32 1, !dbg !3737
  %107 = load ptr, ptr %name135, align 8, !dbg !3737
  %cmp136 = icmp eq ptr %107, null, !dbg !3737
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !3736

if.then138:                                       ; preds = %for.cond
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup143, !dbg !3737

if.end139:                                        ; preds = %for.cond
  %108 = load i64, ptr %__int, align 8, !dbg !3739
  %tobool140 = icmp ne i64 %108, 0, !dbg !3739
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !3736

if.then141:                                       ; preds = %if.end139
  %109 = load i64, ptr %__int, align 8, !dbg !3741
  store i64 %109, ptr %__ret131, align 8, !dbg !3741
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup143, !dbg !3741

if.end142:                                        ; preds = %if.end139
  call void @schedule() #17, !dbg !3736
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3743
  br label %cleanup143, !dbg !3743

cleanup143:                                       ; preds = %if.then141, %if.end142, %if.then138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !3743
  %cleanup.dest144 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest144, label %unreachable [
    i32 0, label %cleanup.cont145
    i32 10, label %for.end
    i32 12, label %__out
  ]

cleanup.cont145:                                  ; preds = %cleanup143
  br label %for.cond, !dbg !3743, !llvm.loop !3744

for.end:                                          ; preds = %cleanup143
  %110 = load ptr, ptr %wq, align 8, !dbg !3735
  %queue146 = getelementptr inbounds %struct.autofs_wait_queue, ptr %110, i32 0, i32 0, !dbg !3735
  call void @finish_wait(ptr noundef %queue146, ptr noundef %__wq_entry) #17, !dbg !3735
  br label %__out, !dbg !3735

__out:                                            ; preds = %for.end, %cleanup143
  call void @llvm.dbg.label(metadata !3312), !dbg !3735
  %111 = load i64, ptr %__ret131, align 8, !dbg !3735
  store i64 %111, ptr %tmp147, align 8, !dbg !3735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret131) #16, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !3734
  %112 = load i64, ptr %tmp147, align 8, !dbg !3735
  %conv148 = trunc i64 %112 to i32, !dbg !3734
  store i32 %conv148, ptr %__ret, align 4, !dbg !3734
  br label %if.end149, !dbg !3734

if.end149:                                        ; preds = %__out, %do.end125
  %113 = load i32, ptr %__ret, align 4, !dbg !3731
  store i32 %113, ptr %tmp150, align 4, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !3746
  %114 = load i32, ptr %tmp150, align 4, !dbg !3731
  %115 = load ptr, ptr %wq, align 8, !dbg !3747
  %status151 = getelementptr inbounds %struct.autofs_wait_queue, ptr %115, i32 0, i32 11, !dbg !3748
  %116 = load i32, ptr %status151, align 8, !dbg !3748
  store i32 %116, ptr %status, align 4, !dbg !3749
  %117 = load i32, ptr %status, align 4, !dbg !3750
  %tobool152 = icmp ne i32 %117, 0, !dbg !3750
  br i1 %tobool152, label %if.end176, label %if.then153, !dbg !3751

if.then153:                                       ; preds = %if.end149
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino154) #16, !dbg !3752
  call void @llvm.dbg.declare(metadata ptr %ino154, metadata !3313, metadata !DIExpression()), !dbg !3753
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #16, !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %de, metadata !3316, metadata !DIExpression()), !dbg !3755
  store ptr null, ptr %de, align 8, !dbg !3755
  %118 = load ptr, ptr %dentry, align 8, !dbg !3756
  %call155 = call ptr @autofs_dentry_ino(ptr noundef %118) #17, !dbg !3757
  store ptr %call155, ptr %ino154, align 8, !dbg !3758
  %119 = load ptr, ptr %ino154, align 8, !dbg !3759
  %tobool156 = icmp ne ptr %119, null, !dbg !3759
  br i1 %tobool156, label %if.end164, label %if.then157, !dbg !3761

if.then157:                                       ; preds = %if.then153
  %120 = load ptr, ptr %dentry, align 8, !dbg !3762
  %d_parent158 = getelementptr inbounds %struct.dentry, ptr %120, i32 0, i32 3, !dbg !3764
  %121 = load ptr, ptr %d_parent158, align 8, !dbg !3764
  %122 = load ptr, ptr %dentry, align 8, !dbg !3765
  %d_name = getelementptr inbounds %struct.dentry, ptr %122, i32 0, i32 4, !dbg !3766
  %call159 = call ptr @d_lookup(ptr noundef %121, ptr noundef %d_name) #17, !dbg !3767
  store ptr %call159, ptr %de, align 8, !dbg !3768
  %123 = load ptr, ptr %de, align 8, !dbg !3769
  %tobool160 = icmp ne ptr %123, null, !dbg !3769
  br i1 %tobool160, label %if.then161, label %if.end163, !dbg !3771

if.then161:                                       ; preds = %if.then157
  %124 = load ptr, ptr %de, align 8, !dbg !3772
  %call162 = call ptr @autofs_dentry_ino(ptr noundef %124) #17, !dbg !3773
  store ptr %call162, ptr %ino154, align 8, !dbg !3774
  br label %if.end163, !dbg !3775

if.end163:                                        ; preds = %if.then161, %if.then157
  br label %if.end164, !dbg !3776

if.end164:                                        ; preds = %if.end163, %if.then153
  %125 = load ptr, ptr %ino154, align 8, !dbg !3777
  %tobool165 = icmp ne ptr %125, null, !dbg !3777
  br i1 %tobool165, label %if.then166, label %if.end172, !dbg !3779

if.then166:                                       ; preds = %if.end164
  %126 = load ptr, ptr %sbi.addr, align 8, !dbg !3780
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %126, i32 0, i32 14, !dbg !3782
  call void @spin_lock(ptr noundef %fs_lock) #17, !dbg !3783
  %127 = load ptr, ptr %ino154, align 8, !dbg !3784
  %uid167 = getelementptr inbounds %struct.autofs_info, ptr %127, i32 0, i32 8, !dbg !3785
  %128 = load ptr, ptr %wq, align 8, !dbg !3786
  %uid168 = getelementptr inbounds %struct.autofs_wait_queue, ptr %128, i32 0, i32 7, !dbg !3787
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid167, ptr align 8 %uid168, i64 4, i1 false), !dbg !3787
  %129 = load ptr, ptr %ino154, align 8, !dbg !3788
  %gid169 = getelementptr inbounds %struct.autofs_info, ptr %129, i32 0, i32 9, !dbg !3789
  %130 = load ptr, ptr %wq, align 8, !dbg !3790
  %gid170 = getelementptr inbounds %struct.autofs_wait_queue, ptr %130, i32 0, i32 8, !dbg !3791
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid169, ptr align 4 %gid170, i64 4, i1 false), !dbg !3791
  %131 = load ptr, ptr %sbi.addr, align 8, !dbg !3792
  %fs_lock171 = getelementptr inbounds %struct.autofs_sb_info, ptr %131, i32 0, i32 14, !dbg !3793
  call void @spin_unlock(ptr noundef %fs_lock171) #17, !dbg !3794
  br label %if.end172, !dbg !3795

if.end172:                                        ; preds = %if.then166, %if.end164
  %132 = load ptr, ptr %de, align 8, !dbg !3796
  %tobool173 = icmp ne ptr %132, null, !dbg !3796
  br i1 %tobool173, label %if.then174, label %if.end175, !dbg !3798

if.then174:                                       ; preds = %if.end172
  %133 = load ptr, ptr %de, align 8, !dbg !3799
  call void @dput(ptr noundef %133) #17, !dbg !3800
  br label %if.end175, !dbg !3800

if.end175:                                        ; preds = %if.then174, %if.end172
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #16, !dbg !3801
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino154) #16, !dbg !3801
  br label %if.end176, !dbg !3802

if.end176:                                        ; preds = %if.end175, %if.end149
  %134 = load ptr, ptr %sbi.addr, align 8, !dbg !3803
  %wq_mutex177 = getelementptr inbounds %struct.autofs_sb_info, ptr %134, i32 0, i32 12, !dbg !3804
  call void @mutex_lock(ptr noundef %wq_mutex177) #17, !dbg !3805
  %135 = load ptr, ptr %wq, align 8, !dbg !3806
  %wait_ctr178 = getelementptr inbounds %struct.autofs_wait_queue, ptr %135, i32 0, i32 12, !dbg !3808
  %136 = load i32, ptr %wait_ctr178, align 4, !dbg !3809
  %dec = add i32 %136, -1, !dbg !3809
  store i32 %dec, ptr %wait_ctr178, align 4, !dbg !3809
  %tobool179 = icmp ne i32 %dec, 0, !dbg !3809
  br i1 %tobool179, label %if.end181, label %if.then180, !dbg !3810

if.then180:                                       ; preds = %if.end176
  %137 = load ptr, ptr %wq, align 8, !dbg !3811
  call void @kfree(ptr noundef %137) #17, !dbg !3812
  br label %if.end181, !dbg !3812

if.end181:                                        ; preds = %if.then180, %if.end176
  %138 = load ptr, ptr %sbi.addr, align 8, !dbg !3813
  %wq_mutex182 = getelementptr inbounds %struct.autofs_sb_info, ptr %138, i32 0, i32 12, !dbg !3814
  call void @mutex_unlock(ptr noundef %wq_mutex182) #17, !dbg !3815
  %139 = load i32, ptr %status, align 4, !dbg !3816
  store i32 %139, ptr %retval, align 4, !dbg !3817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183, !dbg !3817

cleanup183:                                       ; preds = %if.end181, %if.then67, %if.end61, %if.then51, %cleanup, %if.then26, %if.then20, %if.then16, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tgid) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 16, ptr %qstr) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 8, ptr %wq) #16, !dbg !3818
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !3818
  %140 = load i32, ptr %retval, align 4, !dbg !3818
  ret i32 %140, !dbg !3818

unreachable:                                      ; preds = %cleanup143
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr_ns(ptr noundef %tsk, ptr noundef %ns) #4 align 16 !dbg !3819 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3823, metadata !DIExpression()), !dbg !3825
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3824, metadata !DIExpression()), !dbg !3826
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3827
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3828
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef %1) #17, !dbg !3829
  ret i32 %call, !dbg !3830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !3831 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !3842
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3836, metadata !DIExpression()), !dbg !3842
  br label %do.body, !dbg !3842

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3838, metadata !DIExpression()), !dbg !3843
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3843
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3843
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3842
  br label %do.cond, !dbg !3843

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3843

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !3844
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3840, metadata !DIExpression()), !dbg !3844
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !3844, !srcloc !3845
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3844
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3844
  %3 = inttoptr i64 %2 to ptr, !dbg !3844
  store ptr %3, ptr %tmp, align 8, !dbg !3844
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !3842
  %4 = load ptr, ptr %tmp, align 8, !dbg !3844
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3842
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3842
  store ptr %5, ptr %tmp1, align 8, !dbg !3842
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !3846
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3842
  ret ptr %6, !dbg !3847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ns_of_pid(ptr noundef %pid) #4 align 16 !dbg !3848 {
entry:
  %pid.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store ptr %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !3852, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #16, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3853, metadata !DIExpression()), !dbg !3856
  store ptr null, ptr %ns, align 8, !dbg !3856
  %0 = load ptr, ptr %pid.addr, align 8, !dbg !3857
  %tobool = icmp ne ptr %0, null, !dbg !3857
  br i1 %tobool, label %if.then, label %if.end, !dbg !3859

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pid.addr, align 8, !dbg !3860
  %numbers = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 7, !dbg !3861
  %2 = load ptr, ptr %pid.addr, align 8, !dbg !3862
  %level = getelementptr inbounds %struct.pid, ptr %2, i32 0, i32 1, !dbg !3863
  %3 = load i32, ptr %level, align 4, !dbg !3863
  %idxprom = zext i32 %3 to i64, !dbg !3860
  %arrayidx = getelementptr [0 x %struct.upid], ptr %numbers, i64 0, i64 %idxprom, !dbg !3860
  %ns1 = getelementptr inbounds %struct.upid, ptr %arrayidx, i32 0, i32 1, !dbg !3864
  %4 = load ptr, ptr %ns1, align 8, !dbg !3864
  store ptr %4, ptr %ns, align 8, !dbg !3865
  br label %if.end, !dbg !3866

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ns, align 8, !dbg !3867
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #16, !dbg !3868
  ret ptr %5, !dbg !3869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_tgid_nr_ns(ptr noundef %tsk, ptr noundef %ns) #4 align 16 !dbg !3870 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3872, metadata !DIExpression()), !dbg !3874
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3873, metadata !DIExpression()), !dbg !3875
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3876
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3877
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 1, ptr noundef %1) #17, !dbg !3878
  ret i32 %call, !dbg !3879
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_negative(ptr noundef %dentry) #4 align 16 !dbg !3880 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3884, metadata !DIExpression()), !dbg !3885
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3886
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !3887
  %1 = load ptr, ptr %d_inode, align 8, !dbg !3887
  %cmp = icmp eq ptr %1, null, !dbg !3888
  ret i1 %cmp, !dbg !3889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_trigger(i32 noundef %type) #4 align 16 !dbg !3890 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3894, metadata !DIExpression()), !dbg !3895
  %0 = load i32, ptr %type.addr, align 4, !dbg !3896
  %cmp = icmp eq i32 %0, 2, !dbg !3897
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3898

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !3899
  %cmp1 = icmp eq i32 %1, 4, !dbg !3900
  br label %lor.end, !dbg !3898

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !3898
  ret i32 %lor.ext, !dbg !3901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !3902 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3906, metadata !DIExpression()), !dbg !3911
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3907, metadata !DIExpression()), !dbg !3912
  %0 = load i64, ptr %size.addr, align 8, !dbg !3913
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3914
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3915

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3916
  %tobool = icmp ne i64 %2, 0, !dbg !3916
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3917

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3918
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3908, metadata !DIExpression()), !dbg !3919
  %3 = load i64, ptr %size.addr, align 8, !dbg !3920
  %cmp = icmp ugt i64 %3, 8192, !dbg !3922
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3923

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3924
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3925
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !3926
  store ptr %call, ptr %retval, align 8, !dbg !3927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3927

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3928
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !3928
  store i32 %call2, ptr %index, align 4, !dbg !3929
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3930
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3931
  %9 = ptrtoint ptr %8 to i64, !dbg !3931
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !3932
  %idxprom = zext i32 %call3 to i64, !dbg !3933
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3933
  %10 = load i32, ptr %index, align 4, !dbg !3934
  %idxprom4 = zext i32 %10 to i64, !dbg !3933
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3933
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3933
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3935
  %13 = load i64, ptr %size.addr, align 8, !dbg !3936
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !3937
  store ptr %call6, ptr %retval, align 8, !dbg !3938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3938

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3939
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3940
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3941
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !3942
  store ptr %call8, ptr %retval, align 8, !dbg !3943
  br label %return, !dbg !3943

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3944
  ret ptr %16, !dbg !3944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3945 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3949 dso_local ptr @dentry_path_raw(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !3952 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3957, metadata !DIExpression()), !dbg !3958
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3959
  %1 = ptrtoint ptr %0 to i64, !dbg !3959
  %2 = inttoptr i64 %1 to ptr, !dbg !3959
  %3 = ptrtoint ptr %2 to i64, !dbg !3959
  %cmp = icmp uge i64 %3, -4095, !dbg !3959
  %lnot = xor i1 %cmp, true, !dbg !3959
  %lnot1 = xor i1 %lnot, true, !dbg !3959
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3959
  %conv = sext i32 %lnot.ext to i64, !dbg !3959
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3959
  %tobool = icmp ne i64 %expval, 0, !dbg !3959
  ret i1 %tobool, !dbg !3960
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3961 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !3965 dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3969 dso_local i32 @mutex_lock_interruptible(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @validate_request(ptr noundef %wait, ptr noundef %sbi, ptr noundef %qstr, ptr noundef %path, i32 noundef %notify) #0 align 16 !dbg !3972 {
entry:
  %retval = alloca i32, align 4
  %wait.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %qstr.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %notify.addr = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %wq = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new = alloca ptr, align 8
  %this = alloca %struct.path, align 8
  %valid = alloca i32, align 4
  %parent = alloca ptr, align 8
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !3977, metadata !DIExpression()), !dbg !3995
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3978, metadata !DIExpression()), !dbg !3996
  store ptr %qstr, ptr %qstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qstr.addr, metadata !3979, metadata !DIExpression()), !dbg !3997
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3980, metadata !DIExpression()), !dbg !3998
  store i32 %notify, ptr %notify.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %notify.addr, metadata !3981, metadata !DIExpression()), !dbg !3999
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3982, metadata !DIExpression()), !dbg !4001
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4002
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !4003
  %1 = load ptr, ptr %dentry1, align 8, !dbg !4003
  store ptr %1, ptr %dentry, align 8, !dbg !4001
  call void @llvm.lifetime.start.p0(i64 8, ptr %wq) #16, !dbg !4004
  call void @llvm.dbg.declare(metadata ptr %wq, metadata !3983, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #16, !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3984, metadata !DIExpression()), !dbg !4007
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !4008
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 8, !dbg !4010
  %3 = load i32, ptr %flags, align 8, !dbg !4010
  %and = and i32 %3, 1, !dbg !4011
  %tobool = icmp ne i32 %and, 0, !dbg !4011
  br i1 %tobool, label %if.then, label %if.end, !dbg !4012

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4013

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %sbi.addr, align 8, !dbg !4014
  %5 = load ptr, ptr %qstr.addr, align 8, !dbg !4015
  %call = call ptr @autofs_find_wait(ptr noundef %4, ptr noundef %5) #17, !dbg !4016
  store ptr %call, ptr %wq, align 8, !dbg !4017
  %6 = load ptr, ptr %wq, align 8, !dbg !4018
  %tobool2 = icmp ne ptr %6, null, !dbg !4018
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4020

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %wq, align 8, !dbg !4021
  %8 = load ptr, ptr %wait.addr, align 8, !dbg !4023
  store ptr %7, ptr %8, align 8, !dbg !4024
  store i32 1, ptr %retval, align 4, !dbg !4025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4025

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %wait.addr, align 8, !dbg !4026
  store ptr null, ptr %9, align 8, !dbg !4027
  %10 = load ptr, ptr %dentry, align 8, !dbg !4028
  %call5 = call ptr @autofs_dentry_ino(ptr noundef %10) #17, !dbg !4029
  store ptr %call5, ptr %ino, align 8, !dbg !4030
  %11 = load ptr, ptr %ino, align 8, !dbg !4031
  %tobool6 = icmp ne ptr %11, null, !dbg !4031
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4033

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4, !dbg !4034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4034

if.end8:                                          ; preds = %if.end4
  %12 = load i32, ptr %notify.addr, align 4, !dbg !4035
  %cmp = icmp eq i32 %12, 0, !dbg !4037
  br i1 %cmp, label %if.then9, label %if.end28, !dbg !4038

if.then9:                                         ; preds = %if.end8
  br label %while.cond, !dbg !4039

while.cond:                                       ; preds = %if.end27, %if.then9
  %13 = load ptr, ptr %ino, align 8, !dbg !4041
  %flags10 = getelementptr inbounds %struct.autofs_info, ptr %13, i32 0, i32 1, !dbg !4042
  %14 = load i32, ptr %flags10, align 8, !dbg !4042
  %and11 = and i32 %14, 1, !dbg !4043
  %tobool12 = icmp ne i32 %and11, 0, !dbg !4039
  br i1 %tobool12, label %while.body, label %while.end, !dbg !4039

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %sbi.addr, align 8, !dbg !4044
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 12, !dbg !4046
  call void @mutex_unlock(ptr noundef %wq_mutex) #17, !dbg !4047
  %call13 = call i64 @schedule_timeout_interruptible(i64 noundef 100) #17, !dbg !4048
  %16 = load ptr, ptr %sbi.addr, align 8, !dbg !4049
  %wq_mutex14 = getelementptr inbounds %struct.autofs_sb_info, ptr %16, i32 0, i32 12, !dbg !4051
  %call15 = call i32 @mutex_lock_interruptible(ptr noundef %wq_mutex14) #17, !dbg !4052
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4052
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4053

if.then17:                                        ; preds = %while.body
  store i32 -4, ptr %retval, align 4, !dbg !4054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4054

if.end18:                                         ; preds = %while.body
  %17 = load ptr, ptr %sbi.addr, align 8, !dbg !4055
  %flags19 = getelementptr inbounds %struct.autofs_sb_info, ptr %17, i32 0, i32 8, !dbg !4057
  %18 = load i32, ptr %flags19, align 8, !dbg !4057
  %and20 = and i32 %18, 1, !dbg !4058
  %tobool21 = icmp ne i32 %and20, 0, !dbg !4058
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4059

if.then22:                                        ; preds = %if.end18
  store i32 -2, ptr %retval, align 4, !dbg !4060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4060

if.end23:                                         ; preds = %if.end18
  %19 = load ptr, ptr %sbi.addr, align 8, !dbg !4061
  %20 = load ptr, ptr %qstr.addr, align 8, !dbg !4062
  %call24 = call ptr @autofs_find_wait(ptr noundef %19, ptr noundef %20) #17, !dbg !4063
  store ptr %call24, ptr %wq, align 8, !dbg !4064
  %21 = load ptr, ptr %wq, align 8, !dbg !4065
  %tobool25 = icmp ne ptr %21, null, !dbg !4065
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4067

if.then26:                                        ; preds = %if.end23
  %22 = load ptr, ptr %wq, align 8, !dbg !4068
  %23 = load ptr, ptr %wait.addr, align 8, !dbg !4070
  store ptr %22, ptr %23, align 8, !dbg !4071
  store i32 1, ptr %retval, align 4, !dbg !4072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4072

if.end27:                                         ; preds = %if.end23
  br label %while.cond, !dbg !4039, !llvm.loop !4073

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !4075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4075

if.end28:                                         ; preds = %if.end8
  %24 = load i32, ptr %notify.addr, align 4, !dbg !4076
  %cmp29 = icmp eq i32 %24, 1, !dbg !4077
  br i1 %cmp29, label %if.then30, label %if.end53, !dbg !4078

if.then30:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3985, metadata !DIExpression()), !dbg !4080
  store ptr null, ptr %new, align 8, !dbg !4080
  call void @llvm.lifetime.start.p0(i64 16, ptr %this) #16, !dbg !4081
  call void @llvm.dbg.declare(metadata ptr %this, metadata !3988, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 4, ptr %valid) #16, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !3989, metadata !DIExpression()), !dbg !4084
  store i32 1, ptr %valid, align 4, !dbg !4084
  %25 = load ptr, ptr %dentry, align 8, !dbg !4085
  %26 = load ptr, ptr %dentry, align 8, !dbg !4085
  %d_parent = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 3, !dbg !4085
  %27 = load ptr, ptr %d_parent, align 8, !dbg !4085
  %cmp31 = icmp eq ptr %25, %27, !dbg !4085
  br i1 %cmp31, label %if.end43, label %if.then32, !dbg !4086

if.then32:                                        ; preds = %if.then30
  %28 = load ptr, ptr %dentry, align 8, !dbg !4087
  %call33 = call i32 @d_unhashed(ptr noundef %28) #17, !dbg !4088
  %tobool34 = icmp ne i32 %call33, 0, !dbg !4088
  br i1 %tobool34, label %land.lhs.true, label %if.end42, !dbg !4089

land.lhs.true:                                    ; preds = %if.then32
  %29 = load ptr, ptr %dentry, align 8, !dbg !4090
  %call35 = call zeroext i1 @d_really_is_positive(ptr noundef %29) #17, !dbg !4091
  br i1 %call35, label %if.then36, label %if.end42, !dbg !4092

if.then36:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3990, metadata !DIExpression()), !dbg !4094
  %30 = load ptr, ptr %dentry, align 8, !dbg !4095
  %d_parent37 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 3, !dbg !4096
  %31 = load ptr, ptr %d_parent37, align 8, !dbg !4096
  store ptr %31, ptr %parent, align 8, !dbg !4094
  %32 = load ptr, ptr %parent, align 8, !dbg !4097
  %33 = load ptr, ptr %dentry, align 8, !dbg !4098
  %d_name = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 4, !dbg !4099
  %call38 = call ptr @d_lookup(ptr noundef %32, ptr noundef %d_name) #17, !dbg !4100
  store ptr %call38, ptr %new, align 8, !dbg !4101
  %34 = load ptr, ptr %new, align 8, !dbg !4102
  %tobool39 = icmp ne ptr %34, null, !dbg !4102
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4104

if.then40:                                        ; preds = %if.then36
  %35 = load ptr, ptr %new, align 8, !dbg !4105
  store ptr %35, ptr %dentry, align 8, !dbg !4106
  br label %if.end41, !dbg !4107

if.end41:                                         ; preds = %if.then40, %if.then36
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !4108
  br label %if.end42, !dbg !4109

if.end42:                                         ; preds = %if.end41, %land.lhs.true, %if.then32
  br label %if.end43, !dbg !4110

if.end43:                                         ; preds = %if.end42, %if.then30
  %36 = load ptr, ptr %path.addr, align 8, !dbg !4111
  %mnt = getelementptr inbounds %struct.path, ptr %36, i32 0, i32 0, !dbg !4112
  %37 = load ptr, ptr %mnt, align 8, !dbg !4112
  %mnt44 = getelementptr inbounds %struct.path, ptr %this, i32 0, i32 0, !dbg !4113
  store ptr %37, ptr %mnt44, align 8, !dbg !4114
  %38 = load ptr, ptr %dentry, align 8, !dbg !4115
  %dentry45 = getelementptr inbounds %struct.path, ptr %this, i32 0, i32 1, !dbg !4116
  store ptr %38, ptr %dentry45, align 8, !dbg !4117
  %call46 = call i32 @path_has_submounts(ptr noundef %this) #17, !dbg !4118
  %tobool47 = icmp ne i32 %call46, 0, !dbg !4118
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !4120

if.then48:                                        ; preds = %if.end43
  store i32 0, ptr %valid, align 4, !dbg !4121
  br label %if.end49, !dbg !4122

if.end49:                                         ; preds = %if.then48, %if.end43
  %39 = load ptr, ptr %new, align 8, !dbg !4123
  %tobool50 = icmp ne ptr %39, null, !dbg !4123
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4125

if.then51:                                        ; preds = %if.end49
  %40 = load ptr, ptr %new, align 8, !dbg !4126
  call void @dput(ptr noundef %40) #17, !dbg !4127
  br label %if.end52, !dbg !4127

if.end52:                                         ; preds = %if.then51, %if.end49
  %41 = load i32, ptr %valid, align 4, !dbg !4128
  store i32 %41, ptr %retval, align 4, !dbg !4129
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %valid) #16, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 16, ptr %this) #16, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !4130
  br label %cleanup

if.end53:                                         ; preds = %if.end28
  store i32 1, ptr %retval, align 4, !dbg !4131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4131

cleanup:                                          ; preds = %if.end53, %if.end52, %while.end, %if.then26, %if.then22, %if.then17, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #16, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 8, ptr %wq) #16, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4132
  %42 = load i32, ptr %retval, align 4, !dbg !4132
  ret i32 %42, !dbg !4132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4133 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_get_dev(ptr noundef %sbi) #4 align 16 !dbg !4137 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !4143
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 11, !dbg !4144
  %1 = load ptr, ptr %sb, align 8, !dbg !4144
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1, !dbg !4145
  %2 = load i32, ptr %s_dev, align 16, !dbg !4145
  %call = call i32 @new_encode_dev(i32 noundef %2) #17, !dbg !4146
  ret i32 %call, !dbg !4147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autofs_get_ino(ptr noundef %sbi) #4 align 16 !dbg !4148 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !4154
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 11, !dbg !4155
  %1 = load ptr, ptr %sb, align 8, !dbg !4155
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13, !dbg !4156
  %2 = load ptr, ptr %s_root, align 8, !dbg !4156
  %call = call ptr @d_inode(ptr noundef %2) #17, !dbg !4157
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 12, !dbg !4158
  %3 = load i64, ptr %i_ino, align 8, !dbg !4158
  ret i64 %3, !dbg !4159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autofs_notify_daemon(ptr noundef %sbi, ptr noundef %wq, i32 noundef %type) #0 align 16 !dbg !4160 {
entry:
  %sbi.addr = alloca ptr, align 8
  %wq.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %pkt = alloca %union.anon.26, align 8
  %pipe = alloca ptr, align 8
  %pktsz = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %mp = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %packet = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %tmp58 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4164, metadata !DIExpression()), !dbg !4241
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !4165, metadata !DIExpression()), !dbg !4242
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4166, metadata !DIExpression()), !dbg !4243
  call void @llvm.lifetime.start.p0(i64 304, ptr %pkt) #16, !dbg !4244
  call void @llvm.dbg.declare(metadata ptr %pkt, metadata !4167, metadata !DIExpression()), !dbg !4245
  call void @llvm.lifetime.start.p0(i64 8, ptr %pipe) #16, !dbg !4246
  call void @llvm.dbg.declare(metadata ptr %pipe, metadata !4227, metadata !DIExpression()), !dbg !4247
  store ptr null, ptr %pipe, align 8, !dbg !4247
  call void @llvm.lifetime.start.p0(i64 8, ptr %pktsz) #16, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %pktsz, metadata !4228, metadata !DIExpression()), !dbg !4249
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4229, metadata !DIExpression()), !dbg !4251
  store i32 0, ptr %tmp, align 4, !dbg !4252
  %0 = load i32, ptr %tmp, align 4, !dbg !4255
  call void @llvm.memset.p0.i64(ptr align 8 %pkt, i8 0, i64 304, i1 false), !dbg !4256
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !4257
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 4, !dbg !4258
  %2 = load i32, ptr %version, align 8, !dbg !4258
  %proto_version = getelementptr inbounds %struct.autofs_packet_hdr, ptr %pkt, i32 0, i32 0, !dbg !4259
  store i32 %2, ptr %proto_version, align 8, !dbg !4260
  %3 = load i32, ptr %type.addr, align 4, !dbg !4261
  %type1 = getelementptr inbounds %struct.autofs_packet_hdr, ptr %pkt, i32 0, i32 1, !dbg !4262
  store i32 %3, ptr %type1, align 4, !dbg !4263
  %4 = load i32, ptr %type.addr, align 4, !dbg !4264
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb30
    i32 4, label %sw.bb30
    i32 5, label %sw.bb30
    i32 6, label %sw.bb30
  ], !dbg !4265

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp) #16, !dbg !4266
  call void @llvm.dbg.declare(metadata ptr %mp, metadata !4230, metadata !DIExpression()), !dbg !4267
  store ptr %pkt, ptr %mp, align 8, !dbg !4267
  store i64 272, ptr %pktsz, align 8, !dbg !4268
  %5 = load ptr, ptr %wq.addr, align 8, !dbg !4269
  %wait_queue_token = getelementptr inbounds %struct.autofs_wait_queue, ptr %5, i32 0, i32 2, !dbg !4270
  %6 = load i32, ptr %wait_queue_token, align 8, !dbg !4270
  %7 = load ptr, ptr %mp, align 8, !dbg !4271
  %wait_queue_token2 = getelementptr inbounds %struct.autofs_packet_missing, ptr %7, i32 0, i32 1, !dbg !4272
  store i32 %6, ptr %wait_queue_token2, align 4, !dbg !4273
  %8 = load ptr, ptr %wq.addr, align 8, !dbg !4274
  %name = getelementptr inbounds %struct.autofs_wait_queue, ptr %8, i32 0, i32 3, !dbg !4275
  %9 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 0, !dbg !4276
  %len = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 1, !dbg !4276
  %10 = load i32, ptr %len, align 4, !dbg !4276
  %11 = load ptr, ptr %mp, align 8, !dbg !4277
  %len3 = getelementptr inbounds %struct.autofs_packet_missing, ptr %11, i32 0, i32 2, !dbg !4278
  store i32 %10, ptr %len3, align 4, !dbg !4279
  %12 = load ptr, ptr %mp, align 8, !dbg !4280
  %name4 = getelementptr inbounds %struct.autofs_packet_missing, ptr %12, i32 0, i32 3, !dbg !4281
  %arraydecay = getelementptr inbounds [256 x i8], ptr %name4, i64 0, i64 0, !dbg !4282
  %13 = load ptr, ptr %wq.addr, align 8, !dbg !4283
  %name5 = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 3, !dbg !4284
  %name6 = getelementptr inbounds %struct.qstr, ptr %name5, i32 0, i32 1, !dbg !4285
  %14 = load ptr, ptr %name6, align 8, !dbg !4285
  %15 = load ptr, ptr %wq.addr, align 8, !dbg !4286
  %name7 = getelementptr inbounds %struct.autofs_wait_queue, ptr %15, i32 0, i32 3, !dbg !4287
  %16 = getelementptr inbounds %struct.qstr, ptr %name7, i32 0, i32 0, !dbg !4288
  %len8 = getelementptr inbounds %struct.anon.14, ptr %16, i32 0, i32 1, !dbg !4288
  %17 = load i32, ptr %len8, align 4, !dbg !4288
  %conv = zext i32 %17 to i64, !dbg !4286
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 1 %14, i64 %conv, i1 false), !dbg !4282
  %18 = load ptr, ptr %mp, align 8, !dbg !4289
  %name9 = getelementptr inbounds %struct.autofs_packet_missing, ptr %18, i32 0, i32 3, !dbg !4290
  %19 = load ptr, ptr %wq.addr, align 8, !dbg !4291
  %name10 = getelementptr inbounds %struct.autofs_wait_queue, ptr %19, i32 0, i32 3, !dbg !4292
  %20 = getelementptr inbounds %struct.qstr, ptr %name10, i32 0, i32 0, !dbg !4293
  %len11 = getelementptr inbounds %struct.anon.14, ptr %20, i32 0, i32 1, !dbg !4293
  %21 = load i32, ptr %len11, align 4, !dbg !4293
  %idxprom = zext i32 %21 to i64, !dbg !4289
  %arrayidx = getelementptr [256 x i8], ptr %name9, i64 0, i64 %idxprom, !dbg !4289
  store i8 0, ptr %arrayidx, align 1, !dbg !4294
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp) #16, !dbg !4295
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #16, !dbg !4296
  call void @llvm.dbg.declare(metadata ptr %ep, metadata !4234, metadata !DIExpression()), !dbg !4297
  store ptr %pkt, ptr %ep, align 8, !dbg !4297
  store i64 272, ptr %pktsz, align 8, !dbg !4298
  %22 = load ptr, ptr %wq.addr, align 8, !dbg !4299
  %wait_queue_token13 = getelementptr inbounds %struct.autofs_wait_queue, ptr %22, i32 0, i32 2, !dbg !4300
  %23 = load i32, ptr %wait_queue_token13, align 8, !dbg !4300
  %24 = load ptr, ptr %ep, align 8, !dbg !4301
  %wait_queue_token14 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %24, i32 0, i32 1, !dbg !4302
  store i32 %23, ptr %wait_queue_token14, align 4, !dbg !4303
  %25 = load ptr, ptr %wq.addr, align 8, !dbg !4304
  %name15 = getelementptr inbounds %struct.autofs_wait_queue, ptr %25, i32 0, i32 3, !dbg !4305
  %26 = getelementptr inbounds %struct.qstr, ptr %name15, i32 0, i32 0, !dbg !4306
  %len16 = getelementptr inbounds %struct.anon.14, ptr %26, i32 0, i32 1, !dbg !4306
  %27 = load i32, ptr %len16, align 4, !dbg !4306
  %28 = load ptr, ptr %ep, align 8, !dbg !4307
  %len17 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %28, i32 0, i32 2, !dbg !4308
  store i32 %27, ptr %len17, align 4, !dbg !4309
  %29 = load ptr, ptr %ep, align 8, !dbg !4310
  %name18 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %29, i32 0, i32 3, !dbg !4311
  %arraydecay19 = getelementptr inbounds [256 x i8], ptr %name18, i64 0, i64 0, !dbg !4312
  %30 = load ptr, ptr %wq.addr, align 8, !dbg !4313
  %name20 = getelementptr inbounds %struct.autofs_wait_queue, ptr %30, i32 0, i32 3, !dbg !4314
  %name21 = getelementptr inbounds %struct.qstr, ptr %name20, i32 0, i32 1, !dbg !4315
  %31 = load ptr, ptr %name21, align 8, !dbg !4315
  %32 = load ptr, ptr %wq.addr, align 8, !dbg !4316
  %name22 = getelementptr inbounds %struct.autofs_wait_queue, ptr %32, i32 0, i32 3, !dbg !4317
  %33 = getelementptr inbounds %struct.qstr, ptr %name22, i32 0, i32 0, !dbg !4318
  %len23 = getelementptr inbounds %struct.anon.14, ptr %33, i32 0, i32 1, !dbg !4318
  %34 = load i32, ptr %len23, align 4, !dbg !4318
  %conv24 = zext i32 %34 to i64, !dbg !4316
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay19, ptr align 1 %31, i64 %conv24, i1 false), !dbg !4312
  %35 = load ptr, ptr %ep, align 8, !dbg !4319
  %name25 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %35, i32 0, i32 3, !dbg !4320
  %36 = load ptr, ptr %wq.addr, align 8, !dbg !4321
  %name26 = getelementptr inbounds %struct.autofs_wait_queue, ptr %36, i32 0, i32 3, !dbg !4322
  %37 = getelementptr inbounds %struct.qstr, ptr %name26, i32 0, i32 0, !dbg !4323
  %len27 = getelementptr inbounds %struct.anon.14, ptr %37, i32 0, i32 1, !dbg !4323
  %38 = load i32, ptr %len27, align 4, !dbg !4323
  %idxprom28 = zext i32 %38 to i64, !dbg !4319
  %arrayidx29 = getelementptr [256 x i8], ptr %name25, i64 0, i64 %idxprom28, !dbg !4319
  store i8 0, ptr %arrayidx29, align 1, !dbg !4324
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #16, !dbg !4325
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry, %entry, %entry, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %packet) #16, !dbg !4326
  call void @llvm.dbg.declare(metadata ptr %packet, metadata !4237, metadata !DIExpression()), !dbg !4327
  store ptr %pkt, ptr %packet, align 8, !dbg !4327
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #16, !dbg !4328
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !4240, metadata !DIExpression()), !dbg !4329
  %39 = load ptr, ptr %sbi.addr, align 8, !dbg !4330
  %pipe31 = getelementptr inbounds %struct.autofs_sb_info, ptr %39, i32 0, i32 2, !dbg !4331
  %40 = load ptr, ptr %pipe31, align 8, !dbg !4331
  %f_cred = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 8, !dbg !4332
  %41 = load ptr, ptr %f_cred, align 8, !dbg !4332
  %user_ns32 = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 22, !dbg !4333
  %42 = load ptr, ptr %user_ns32, align 8, !dbg !4333
  store ptr %42, ptr %user_ns, align 8, !dbg !4329
  store i64 304, ptr %pktsz, align 8, !dbg !4334
  %43 = load ptr, ptr %wq.addr, align 8, !dbg !4335
  %wait_queue_token33 = getelementptr inbounds %struct.autofs_wait_queue, ptr %43, i32 0, i32 2, !dbg !4336
  %44 = load i32, ptr %wait_queue_token33, align 8, !dbg !4336
  %45 = load ptr, ptr %packet, align 8, !dbg !4337
  %wait_queue_token34 = getelementptr inbounds %struct.autofs_v5_packet, ptr %45, i32 0, i32 1, !dbg !4338
  store i32 %44, ptr %wait_queue_token34, align 8, !dbg !4339
  %46 = load ptr, ptr %wq.addr, align 8, !dbg !4340
  %name35 = getelementptr inbounds %struct.autofs_wait_queue, ptr %46, i32 0, i32 3, !dbg !4341
  %47 = getelementptr inbounds %struct.qstr, ptr %name35, i32 0, i32 0, !dbg !4342
  %len36 = getelementptr inbounds %struct.anon.14, ptr %47, i32 0, i32 1, !dbg !4342
  %48 = load i32, ptr %len36, align 4, !dbg !4342
  %49 = load ptr, ptr %packet, align 8, !dbg !4343
  %len37 = getelementptr inbounds %struct.autofs_v5_packet, ptr %49, i32 0, i32 8, !dbg !4344
  store i32 %48, ptr %len37, align 8, !dbg !4345
  %50 = load ptr, ptr %packet, align 8, !dbg !4346
  %name38 = getelementptr inbounds %struct.autofs_v5_packet, ptr %50, i32 0, i32 9, !dbg !4347
  %arraydecay39 = getelementptr inbounds [256 x i8], ptr %name38, i64 0, i64 0, !dbg !4348
  %51 = load ptr, ptr %wq.addr, align 8, !dbg !4349
  %name40 = getelementptr inbounds %struct.autofs_wait_queue, ptr %51, i32 0, i32 3, !dbg !4350
  %name41 = getelementptr inbounds %struct.qstr, ptr %name40, i32 0, i32 1, !dbg !4351
  %52 = load ptr, ptr %name41, align 8, !dbg !4351
  %53 = load ptr, ptr %wq.addr, align 8, !dbg !4352
  %name42 = getelementptr inbounds %struct.autofs_wait_queue, ptr %53, i32 0, i32 3, !dbg !4353
  %54 = getelementptr inbounds %struct.qstr, ptr %name42, i32 0, i32 0, !dbg !4354
  %len43 = getelementptr inbounds %struct.anon.14, ptr %54, i32 0, i32 1, !dbg !4354
  %55 = load i32, ptr %len43, align 4, !dbg !4354
  %conv44 = zext i32 %55 to i64, !dbg !4352
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay39, ptr align 1 %52, i64 %conv44, i1 false), !dbg !4348
  %56 = load ptr, ptr %packet, align 8, !dbg !4355
  %name45 = getelementptr inbounds %struct.autofs_v5_packet, ptr %56, i32 0, i32 9, !dbg !4356
  %57 = load ptr, ptr %wq.addr, align 8, !dbg !4357
  %name46 = getelementptr inbounds %struct.autofs_wait_queue, ptr %57, i32 0, i32 3, !dbg !4358
  %58 = getelementptr inbounds %struct.qstr, ptr %name46, i32 0, i32 0, !dbg !4359
  %len47 = getelementptr inbounds %struct.anon.14, ptr %58, i32 0, i32 1, !dbg !4359
  %59 = load i32, ptr %len47, align 4, !dbg !4359
  %idxprom48 = zext i32 %59 to i64, !dbg !4355
  %arrayidx49 = getelementptr [256 x i8], ptr %name45, i64 0, i64 %idxprom48, !dbg !4355
  store i8 0, ptr %arrayidx49, align 1, !dbg !4360
  %60 = load ptr, ptr %wq.addr, align 8, !dbg !4361
  %dev = getelementptr inbounds %struct.autofs_wait_queue, ptr %60, i32 0, i32 5, !dbg !4362
  %61 = load i32, ptr %dev, align 4, !dbg !4362
  %62 = load ptr, ptr %packet, align 8, !dbg !4363
  %dev50 = getelementptr inbounds %struct.autofs_v5_packet, ptr %62, i32 0, i32 2, !dbg !4364
  store i32 %61, ptr %dev50, align 4, !dbg !4365
  %63 = load ptr, ptr %wq.addr, align 8, !dbg !4366
  %ino = getelementptr inbounds %struct.autofs_wait_queue, ptr %63, i32 0, i32 6, !dbg !4367
  %64 = load i64, ptr %ino, align 8, !dbg !4367
  %65 = load ptr, ptr %packet, align 8, !dbg !4368
  %ino51 = getelementptr inbounds %struct.autofs_v5_packet, ptr %65, i32 0, i32 3, !dbg !4369
  store i64 %64, ptr %ino51, align 8, !dbg !4370
  %66 = load ptr, ptr %user_ns, align 8, !dbg !4371
  %67 = load ptr, ptr %wq.addr, align 8, !dbg !4372
  %uid = getelementptr inbounds %struct.autofs_wait_queue, ptr %67, i32 0, i32 7, !dbg !4373
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4374
  %68 = load i32, ptr %coerce.dive, align 8, !dbg !4374
  %call = call i32 @from_kuid_munged(ptr noundef %66, i32 %68) #17, !dbg !4374
  %69 = load ptr, ptr %packet, align 8, !dbg !4375
  %uid52 = getelementptr inbounds %struct.autofs_v5_packet, ptr %69, i32 0, i32 4, !dbg !4376
  store i32 %call, ptr %uid52, align 8, !dbg !4377
  %70 = load ptr, ptr %user_ns, align 8, !dbg !4378
  %71 = load ptr, ptr %wq.addr, align 8, !dbg !4379
  %gid = getelementptr inbounds %struct.autofs_wait_queue, ptr %71, i32 0, i32 8, !dbg !4380
  %coerce.dive53 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4381
  %72 = load i32, ptr %coerce.dive53, align 4, !dbg !4381
  %call54 = call i32 @from_kgid_munged(ptr noundef %70, i32 %72) #17, !dbg !4381
  %73 = load ptr, ptr %packet, align 8, !dbg !4382
  %gid55 = getelementptr inbounds %struct.autofs_v5_packet, ptr %73, i32 0, i32 5, !dbg !4383
  store i32 %call54, ptr %gid55, align 4, !dbg !4384
  %74 = load ptr, ptr %wq.addr, align 8, !dbg !4385
  %pid = getelementptr inbounds %struct.autofs_wait_queue, ptr %74, i32 0, i32 9, !dbg !4386
  %75 = load i32, ptr %pid, align 8, !dbg !4386
  %76 = load ptr, ptr %packet, align 8, !dbg !4387
  %pid56 = getelementptr inbounds %struct.autofs_v5_packet, ptr %76, i32 0, i32 6, !dbg !4388
  store i32 %75, ptr %pid56, align 8, !dbg !4389
  %77 = load ptr, ptr %wq.addr, align 8, !dbg !4390
  %tgid = getelementptr inbounds %struct.autofs_wait_queue, ptr %77, i32 0, i32 10, !dbg !4391
  %78 = load i32, ptr %tgid, align 4, !dbg !4391
  %79 = load ptr, ptr %packet, align 8, !dbg !4392
  %tgid57 = getelementptr inbounds %struct.autofs_v5_packet, ptr %79, i32 0, i32 7, !dbg !4393
  store i32 %78, ptr %tgid57, align 4, !dbg !4394
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #16, !dbg !4395
  call void @llvm.lifetime.end.p0(i64 8, ptr %packet) #16, !dbg !4395
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !4396

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !4398

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4398

do.end:                                           ; preds = %do.cond
  %call59 = call ptr @get_current() #17, !dbg !4396
  %pid60 = getelementptr inbounds %struct.task_struct, ptr %call59, i32 0, i32 62, !dbg !4396
  %80 = load i32, ptr %pid60, align 8, !dbg !4396
  %81 = load i32, ptr %type.addr, align 4, !dbg !4396
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %80, ptr noundef @__func__.autofs_notify_daemon, i32 noundef %81) #22, !dbg !4396
  store i32 %call61, ptr %tmp58, align 4, !dbg !4398
  %82 = load i32, ptr %tmp58, align 4, !dbg !4396
  %83 = load ptr, ptr %sbi.addr, align 8, !dbg !4400
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %83, i32 0, i32 12, !dbg !4401
  call void @mutex_unlock(ptr noundef %wq_mutex) #17, !dbg !4402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4403

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb12, %sw.bb
  %84 = load ptr, ptr %sbi.addr, align 8, !dbg !4404
  %pipe62 = getelementptr inbounds %struct.autofs_sb_info, ptr %84, i32 0, i32 2, !dbg !4405
  %85 = load ptr, ptr %pipe62, align 8, !dbg !4405
  %call63 = call ptr @get_file(ptr noundef %85) #17, !dbg !4406
  store ptr %call63, ptr %pipe, align 8, !dbg !4407
  %86 = load ptr, ptr %sbi.addr, align 8, !dbg !4408
  %wq_mutex64 = getelementptr inbounds %struct.autofs_sb_info, ptr %86, i32 0, i32 12, !dbg !4409
  call void @mutex_unlock(ptr noundef %wq_mutex64) #17, !dbg !4410
  %87 = load ptr, ptr %sbi.addr, align 8, !dbg !4411
  %88 = load ptr, ptr %pipe, align 8, !dbg !4412
  %89 = load i64, ptr %pktsz, align 8, !dbg !4413
  %conv65 = trunc i64 %89 to i32, !dbg !4413
  %call66 = call i32 @autofs_write(ptr noundef %87, ptr noundef %88, ptr noundef %pkt, i32 noundef %conv65) #17, !dbg !4414
  store i32 %call66, ptr %ret, align 4, !dbg !4415
  switch i32 %call66, label %sw.default70 [
    i32 0, label %sw.epilog71
    i32 -12, label %sw.bb67
    i32 -512, label %sw.bb67
  ], !dbg !4416

sw.bb67:                                          ; preds = %sw.epilog, %sw.epilog
  %90 = load ptr, ptr %sbi.addr, align 8, !dbg !4417
  %91 = load ptr, ptr %wq.addr, align 8, !dbg !4419
  %wait_queue_token68 = getelementptr inbounds %struct.autofs_wait_queue, ptr %91, i32 0, i32 2, !dbg !4420
  %92 = load i32, ptr %wait_queue_token68, align 8, !dbg !4420
  %93 = load i32, ptr %ret, align 4, !dbg !4421
  %call69 = call i32 @autofs_wait_release(ptr noundef %90, i32 noundef %92, i32 noundef %93) #17, !dbg !4422
  br label %sw.epilog71, !dbg !4423

sw.default70:                                     ; preds = %sw.epilog
  %94 = load ptr, ptr %sbi.addr, align 8, !dbg !4424
  call void @autofs_catatonic_mode(ptr noundef %94) #17, !dbg !4425
  br label %sw.epilog71, !dbg !4426

sw.epilog71:                                      ; preds = %sw.default70, %sw.bb67, %sw.epilog
  %95 = load ptr, ptr %pipe, align 8, !dbg !4427
  call void @fput(ptr noundef %95) #17, !dbg !4428
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4429
  br label %cleanup, !dbg !4429

cleanup:                                          ; preds = %sw.epilog71, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4429
  call void @llvm.lifetime.end.p0(i64 8, ptr %pktsz) #16, !dbg !4429
  call void @llvm.lifetime.end.p0(i64 8, ptr %pipe) #16, !dbg !4429
  call void @llvm.lifetime.end.p0(i64 304, ptr %pkt) #16, !dbg !4429
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4429

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !3337 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !4430
  %0 = load ptr, ptr %tmp, align 8, !dbg !4430
  %call = call i32 %0() #17, !dbg !4432
  ret void, !dbg !4433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4434 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4437 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4440 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4441 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_dentry_ino(ptr noundef %dentry) #4 align 16 !dbg !4444 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4450
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !4451
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !4451
  ret ptr %1, !dbg !4452
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4453 dso_local ptr @d_lookup(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !4456 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4464
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4464
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !4464
  ret void, !dbg !4465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !4466 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4470
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4470
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !4470
  ret void, !dbg !4471
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4472 dso_local void @dput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_wait_release(ptr noundef %sbi, i32 noundef %wait_queue_token, i32 noundef %status) #0 align 16 !dbg !4473 {
entry:
  %retval = alloca i32, align 4
  %sbi.addr = alloca ptr, align 8
  %wait_queue_token.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %wq = alloca ptr, align 8
  %wql = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4477, metadata !DIExpression()), !dbg !4482
  store i32 %wait_queue_token, ptr %wait_queue_token.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait_queue_token.addr, metadata !4478, metadata !DIExpression()), !dbg !4483
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !4479, metadata !DIExpression()), !dbg !4484
  call void @llvm.lifetime.start.p0(i64 8, ptr %wq) #16, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %wq, metadata !4480, metadata !DIExpression()), !dbg !4486
  call void @llvm.lifetime.start.p0(i64 8, ptr %wql) #16, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %wql, metadata !4481, metadata !DIExpression()), !dbg !4487
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !4488
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12, !dbg !4489
  call void @mutex_lock(ptr noundef %wq_mutex) #17, !dbg !4490
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !4491
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 15, !dbg !4493
  store ptr %queues, ptr %wql, align 8, !dbg !4494
  br label %for.cond, !dbg !4495

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %wql, align 8, !dbg !4496
  %3 = load ptr, ptr %2, align 8, !dbg !4498
  store ptr %3, ptr %wq, align 8, !dbg !4499
  %cmp = icmp ne ptr %3, null, !dbg !4500
  br i1 %cmp, label %for.body, label %for.end, !dbg !4501

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %wq, align 8, !dbg !4502
  %wait_queue_token1 = getelementptr inbounds %struct.autofs_wait_queue, ptr %4, i32 0, i32 2, !dbg !4505
  %5 = load i32, ptr %wait_queue_token1, align 8, !dbg !4505
  %6 = load i32, ptr %wait_queue_token.addr, align 4, !dbg !4506
  %cmp2 = icmp eq i32 %5, %6, !dbg !4507
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4508

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4509

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4510

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %wq, align 8, !dbg !4511
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %7, i32 0, i32 1, !dbg !4512
  store ptr %next, ptr %wql, align 8, !dbg !4513
  br label %for.cond, !dbg !4514, !llvm.loop !4515

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load ptr, ptr %wq, align 8, !dbg !4517
  %tobool = icmp ne ptr %8, null, !dbg !4517
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !4519

if.then3:                                         ; preds = %for.end
  %9 = load ptr, ptr %sbi.addr, align 8, !dbg !4520
  %wq_mutex4 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 12, !dbg !4522
  call void @mutex_unlock(ptr noundef %wq_mutex4) #17, !dbg !4523
  store i32 -22, ptr %retval, align 4, !dbg !4524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4524

if.end5:                                          ; preds = %for.end
  %10 = load ptr, ptr %wq, align 8, !dbg !4525
  %next6 = getelementptr inbounds %struct.autofs_wait_queue, ptr %10, i32 0, i32 1, !dbg !4526
  %11 = load ptr, ptr %next6, align 8, !dbg !4526
  %12 = load ptr, ptr %wql, align 8, !dbg !4527
  store ptr %11, ptr %12, align 8, !dbg !4528
  %13 = load ptr, ptr %wq, align 8, !dbg !4529
  %name = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 3, !dbg !4530
  %name7 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1, !dbg !4531
  %14 = load ptr, ptr %name7, align 8, !dbg !4531
  %15 = load ptr, ptr %wq, align 8, !dbg !4532
  %offset = getelementptr inbounds %struct.autofs_wait_queue, ptr %15, i32 0, i32 4, !dbg !4533
  %16 = load i32, ptr %offset, align 8, !dbg !4533
  %idx.ext = zext i32 %16 to i64, !dbg !4534
  %idx.neg = sub i64 0, %idx.ext, !dbg !4534
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.neg, !dbg !4534
  call void @kfree(ptr noundef %add.ptr) #17, !dbg !4535
  %17 = load ptr, ptr %wq, align 8, !dbg !4536
  %name8 = getelementptr inbounds %struct.autofs_wait_queue, ptr %17, i32 0, i32 3, !dbg !4537
  %name9 = getelementptr inbounds %struct.qstr, ptr %name8, i32 0, i32 1, !dbg !4538
  store ptr null, ptr %name9, align 8, !dbg !4539
  %18 = load i32, ptr %status.addr, align 4, !dbg !4540
  %19 = load ptr, ptr %wq, align 8, !dbg !4541
  %status10 = getelementptr inbounds %struct.autofs_wait_queue, ptr %19, i32 0, i32 11, !dbg !4542
  store i32 %18, ptr %status10, align 8, !dbg !4543
  %20 = load ptr, ptr %wq, align 8, !dbg !4544
  %queue = getelementptr inbounds %struct.autofs_wait_queue, ptr %20, i32 0, i32 0, !dbg !4544
  %call = call i32 @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #17, !dbg !4544
  %21 = load ptr, ptr %wq, align 8, !dbg !4545
  %wait_ctr = getelementptr inbounds %struct.autofs_wait_queue, ptr %21, i32 0, i32 12, !dbg !4547
  %22 = load i32, ptr %wait_ctr, align 4, !dbg !4548
  %dec = add i32 %22, -1, !dbg !4548
  store i32 %dec, ptr %wait_ctr, align 4, !dbg !4548
  %tobool11 = icmp ne i32 %dec, 0, !dbg !4548
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4549

if.then12:                                        ; preds = %if.end5
  %23 = load ptr, ptr %wq, align 8, !dbg !4550
  call void @kfree(ptr noundef %23) #17, !dbg !4551
  br label %if.end13, !dbg !4551

if.end13:                                         ; preds = %if.then12, %if.end5
  %24 = load ptr, ptr %sbi.addr, align 8, !dbg !4552
  %wq_mutex14 = getelementptr inbounds %struct.autofs_sb_info, ptr %24, i32 0, i32 12, !dbg !4553
  call void @mutex_unlock(ptr noundef %wq_mutex14) #17, !dbg !4554
  store i32 0, ptr %retval, align 4, !dbg !4555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4555

cleanup:                                          ; preds = %if.end13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %wql) #16, !dbg !4556
  call void @llvm.lifetime.end.p0(i64 8, ptr %wq) #16, !dbg !4556
  %25 = load i32, ptr %retval, align 4, !dbg !4556
  ret i32 %25, !dbg !4556
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4557 dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4560 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !4561 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4565, metadata !DIExpression()), !dbg !4567
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4566, metadata !DIExpression()), !dbg !4568
  %0 = load i64, ptr %size.addr, align 8, !dbg !4569
  %tobool = icmp ne i64 %0, 0, !dbg !4569
  br i1 %tobool, label %if.end, label %if.then, !dbg !4571

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4572
  br label %return, !dbg !4572

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4573
  %cmp = icmp ule i64 %1, 8, !dbg !4575
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4576

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4577
  br label %return, !dbg !4577

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4578
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4580
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4581

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4582
  %cmp4 = icmp ule i64 %3, 96, !dbg !4583
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4584

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4586
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4588
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4589

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4590
  %cmp9 = icmp ule i64 %5, 192, !dbg !4591
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4592

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4593
  br label %return, !dbg !4593

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4594
  %cmp12 = icmp ule i64 %6, 8, !dbg !4596
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4597

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4599
  %cmp15 = icmp ule i64 %7, 16, !dbg !4601
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4602

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4603
  br label %return, !dbg !4603

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4604
  %cmp18 = icmp ule i64 %8, 32, !dbg !4606
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4607

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4608
  br label %return, !dbg !4608

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4609
  %cmp21 = icmp ule i64 %9, 64, !dbg !4611
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4612

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4613
  br label %return, !dbg !4613

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4614
  %cmp24 = icmp ule i64 %10, 128, !dbg !4616
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4617

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4618
  br label %return, !dbg !4618

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4619
  %cmp27 = icmp ule i64 %11, 256, !dbg !4621
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4622

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4623
  br label %return, !dbg !4623

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4624
  %cmp30 = icmp ule i64 %12, 512, !dbg !4626
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4627

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4628
  br label %return, !dbg !4628

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4629
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4631
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4632

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4633
  br label %return, !dbg !4633

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4634
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4636
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4637

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4638
  br label %return, !dbg !4638

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4639
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4641
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4642

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4644
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4646
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4647

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4648
  br label %return, !dbg !4648

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4649
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4651
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4652

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4653
  br label %return, !dbg !4653

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4654
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4656
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4657

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4658
  br label %return, !dbg !4658

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4659
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4661
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4662

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4663
  br label %return, !dbg !4663

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4664
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4666
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4667

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4668
  br label %return, !dbg !4668

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4669
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4671
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4672

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4673
  br label %return, !dbg !4673

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4674
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4676
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4677

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4678
  br label %return, !dbg !4678

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4679
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4681
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4682

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4683
  br label %return, !dbg !4683

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4684
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4686
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4687

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4688
  br label %return, !dbg !4688

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4689, !range !4691, !noundef !721
  %tobool69 = trunc i8 %25 to i1, !dbg !4689
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4692

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4693

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #23, !dbg !4694, !srcloc !4697
  unreachable, !dbg !4694

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4698

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4699

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4700

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4702

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4700

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !4704, !srcloc !4706
  br label %do.end75, !dbg !4704

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4700

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4707
  br label %return, !dbg !4707

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4708
  ret i32 %26, !dbg !4708
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4709 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !4714 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4718, metadata !DIExpression()), !dbg !4720
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4719, metadata !DIExpression()), !dbg !4721
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4722
  %and = and i32 %0, 17, !dbg !4722
  %cmp = icmp eq i32 %and, 0, !dbg !4722
  %lnot = xor i1 %cmp, true, !dbg !4722
  %lnot1 = xor i1 %lnot, true, !dbg !4722
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4722
  %conv = sext i32 %lnot.ext to i64, !dbg !4722
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4722
  %tobool = icmp ne i64 %expval, 0, !dbg !4722
  br i1 %tobool, label %if.then, label %if.end, !dbg !4724

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4725
  br label %return, !dbg !4725

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4726
  %and2 = and i32 %1, 1, !dbg !4728
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4728
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4729

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4730
  br label %return, !dbg !4730

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4731
  br label %return, !dbg !4731

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4733
  ret i32 %2, !dbg !4733
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4734 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4735 dso_local void @__compiletime_assert_245() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_find_wait(ptr noundef %sbi, ptr noundef %qstr) #0 align 16 !dbg !4736 {
entry:
  %sbi.addr = alloca ptr, align 8
  %qstr.addr = alloca ptr, align 8
  %wq = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4740, metadata !DIExpression()), !dbg !4743
  store ptr %qstr, ptr %qstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qstr.addr, metadata !4741, metadata !DIExpression()), !dbg !4744
  call void @llvm.lifetime.start.p0(i64 8, ptr %wq) #16, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %wq, metadata !4742, metadata !DIExpression()), !dbg !4746
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !4747
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 15, !dbg !4749
  %1 = load ptr, ptr %queues, align 8, !dbg !4749
  store ptr %1, ptr %wq, align 8, !dbg !4750
  br label %for.cond, !dbg !4751

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %wq, align 8, !dbg !4752
  %tobool = icmp ne ptr %2, null, !dbg !4754
  br i1 %tobool, label %for.body, label %for.end, !dbg !4754

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %wq, align 8, !dbg !4755
  %name = getelementptr inbounds %struct.autofs_wait_queue, ptr %3, i32 0, i32 3, !dbg !4758
  %4 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 0, !dbg !4759
  %hash = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 0, !dbg !4759
  %5 = load i32, ptr %hash, align 8, !dbg !4759
  %6 = load ptr, ptr %qstr.addr, align 8, !dbg !4760
  %7 = getelementptr inbounds %struct.qstr, ptr %6, i32 0, i32 0, !dbg !4761
  %hash1 = getelementptr inbounds %struct.anon.14, ptr %7, i32 0, i32 0, !dbg !4761
  %8 = load i32, ptr %hash1, align 8, !dbg !4761
  %cmp = icmp eq i32 %5, %8, !dbg !4762
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4763

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %wq, align 8, !dbg !4764
  %name2 = getelementptr inbounds %struct.autofs_wait_queue, ptr %9, i32 0, i32 3, !dbg !4765
  %10 = getelementptr inbounds %struct.qstr, ptr %name2, i32 0, i32 0, !dbg !4766
  %len = getelementptr inbounds %struct.anon.14, ptr %10, i32 0, i32 1, !dbg !4766
  %11 = load i32, ptr %len, align 4, !dbg !4766
  %12 = load ptr, ptr %qstr.addr, align 8, !dbg !4767
  %13 = getelementptr inbounds %struct.qstr, ptr %12, i32 0, i32 0, !dbg !4768
  %len3 = getelementptr inbounds %struct.anon.14, ptr %13, i32 0, i32 1, !dbg !4768
  %14 = load i32, ptr %len3, align 4, !dbg !4768
  %cmp4 = icmp eq i32 %11, %14, !dbg !4769
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !4770

land.lhs.true5:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %wq, align 8, !dbg !4771
  %name6 = getelementptr inbounds %struct.autofs_wait_queue, ptr %15, i32 0, i32 3, !dbg !4772
  %name7 = getelementptr inbounds %struct.qstr, ptr %name6, i32 0, i32 1, !dbg !4773
  %16 = load ptr, ptr %name7, align 8, !dbg !4773
  %tobool8 = icmp ne ptr %16, null, !dbg !4771
  br i1 %tobool8, label %land.lhs.true9, label %if.end, !dbg !4774

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %17 = load ptr, ptr %wq, align 8, !dbg !4775
  %name10 = getelementptr inbounds %struct.autofs_wait_queue, ptr %17, i32 0, i32 3, !dbg !4776
  %name11 = getelementptr inbounds %struct.qstr, ptr %name10, i32 0, i32 1, !dbg !4777
  %18 = load ptr, ptr %name11, align 8, !dbg !4777
  %19 = load ptr, ptr %qstr.addr, align 8, !dbg !4778
  %name12 = getelementptr inbounds %struct.qstr, ptr %19, i32 0, i32 1, !dbg !4779
  %20 = load ptr, ptr %name12, align 8, !dbg !4779
  %21 = load ptr, ptr %qstr.addr, align 8, !dbg !4780
  %22 = getelementptr inbounds %struct.qstr, ptr %21, i32 0, i32 0, !dbg !4781
  %len13 = getelementptr inbounds %struct.anon.14, ptr %22, i32 0, i32 1, !dbg !4781
  %23 = load i32, ptr %len13, align 4, !dbg !4781
  %conv = zext i32 %23 to i64, !dbg !4780
  %call = call i32 @memcmp(ptr noundef %18, ptr noundef %20, i64 noundef %conv) #17, !dbg !4782
  %tobool14 = icmp ne i32 %call, 0, !dbg !4782
  br i1 %tobool14, label %if.end, label %if.then, !dbg !4783

if.then:                                          ; preds = %land.lhs.true9
  br label %for.end, !dbg !4784

if.end:                                           ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4785

for.inc:                                          ; preds = %if.end
  %24 = load ptr, ptr %wq, align 8, !dbg !4786
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %24, i32 0, i32 1, !dbg !4787
  %25 = load ptr, ptr %next, align 8, !dbg !4787
  store ptr %25, ptr %wq, align 8, !dbg !4788
  br label %for.cond, !dbg !4789, !llvm.loop !4790

for.end:                                          ; preds = %if.then, %for.cond
  %26 = load ptr, ptr %wq, align 8, !dbg !4792
  call void @llvm.lifetime.end.p0(i64 8, ptr %wq) #16, !dbg !4793
  ret ptr %26, !dbg !4794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4795 dso_local i64 @schedule_timeout_interruptible(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unhashed(ptr noundef %dentry) #4 align 16 !dbg !4798 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4800, metadata !DIExpression()), !dbg !4801
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4802
  %d_hash = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, !dbg !4803
  %call = call zeroext i1 @hlist_bl_unhashed(ptr noundef %d_hash) #17, !dbg !4804
  %conv = zext i1 %call to i32, !dbg !4804
  ret i32 %conv, !dbg !4805
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_positive(ptr noundef %dentry) #4 align 16 !dbg !4806 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4810
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4811
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4811
  %cmp = icmp ne ptr %1, null, !dbg !4812
  ret i1 %cmp, !dbg !4813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4814 dso_local i32 @path_has_submounts(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4817 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #4 align 16 !dbg !4820 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load ptr, ptr %h.addr, align 8, !dbg !4828
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !4829
  %1 = load ptr, ptr %pprev, align 8, !dbg !4829
  %tobool = icmp ne ptr %1, null, !dbg !4830
  %lnot = xor i1 %tobool, true, !dbg !4830
  ret i1 %lnot, !dbg !4831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_encode_dev(i32 noundef %dev) #5 align 16 !dbg !4832 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4837, metadata !DIExpression()), !dbg !4840
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #16, !dbg !4841
  call void @llvm.dbg.declare(metadata ptr %major, metadata !4838, metadata !DIExpression()), !dbg !4842
  %0 = load i32, ptr %dev.addr, align 4, !dbg !4843
  %shr = lshr i32 %0, 20, !dbg !4843
  store i32 %shr, ptr %major, align 4, !dbg !4842
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #16, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !4839, metadata !DIExpression()), !dbg !4845
  %1 = load i32, ptr %dev.addr, align 4, !dbg !4846
  %and = and i32 %1, 1048575, !dbg !4846
  store i32 %and, ptr %minor, align 4, !dbg !4845
  %2 = load i32, ptr %minor, align 4, !dbg !4847
  %and1 = and i32 %2, 255, !dbg !4848
  %3 = load i32, ptr %major, align 4, !dbg !4849
  %shl = shl i32 %3, 8, !dbg !4850
  %or = or i32 %and1, %shl, !dbg !4851
  %4 = load i32, ptr %minor, align 4, !dbg !4852
  %and2 = and i32 %4, -256, !dbg !4853
  %shl3 = shl i32 %and2, 12, !dbg !4854
  %or4 = or i32 %or, %shl3, !dbg !4855
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #16, !dbg !4856
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #16, !dbg !4856
  ret i32 %or4, !dbg !4857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !4858 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4864
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4865
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4865
  ret ptr %1, !dbg !4866
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !4867 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4871, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4872, metadata !DIExpression()), !dbg !4875
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !4876
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4873, metadata !DIExpression()), !dbg !4877
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4878
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4879
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4879
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #17, !dbg !4879
  store i32 %call, ptr %uid, align 4, !dbg !4877
  %2 = load i32, ptr %uid, align 4, !dbg !4880
  %cmp = icmp eq i32 %2, -1, !dbg !4882
  br i1 %cmp, label %if.then, label %if.end, !dbg !4883

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !4884
  store i32 %3, ptr %uid, align 4, !dbg !4885
  br label %if.end, !dbg !4886

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !4888
  ret i32 %4, !dbg !4889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !4890 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4894, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4895, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4896, metadata !DIExpression()), !dbg !4900
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4901
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4902
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4902
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #17, !dbg !4902
  store i32 %call, ptr %gid, align 4, !dbg !4900
  %2 = load i32, ptr %gid, align 4, !dbg !4903
  %cmp = icmp eq i32 %2, -1, !dbg !4905
  br i1 %cmp, label %if.then, label %if.end, !dbg !4906

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !4907
  store i32 %3, ptr %gid, align 4, !dbg !4908
  br label %if.end, !dbg !4909

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !4911
  ret i32 %4, !dbg !4912
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4913 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_file(ptr noundef %f) #4 align 16 !dbg !4917 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4923
  %f_count = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3, !dbg !4924
  call void @atomic_long_inc(ptr noundef %f_count) #17, !dbg !4925
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4926
  ret ptr %1, !dbg !4927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_write(ptr noundef %sbi, ptr noundef %file, ptr noundef %addr, i32 noundef %bytes) #0 align 16 !dbg !4928 {
entry:
  %sbi.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %sigpipe = alloca i64, align 8
  %flags = alloca i64, align 8
  %data = alloca ptr, align 8
  %wr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4932, metadata !DIExpression()), !dbg !4947
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4933, metadata !DIExpression()), !dbg !4948
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4934, metadata !DIExpression()), !dbg !4949
  store i32 %bytes, ptr %bytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4935, metadata !DIExpression()), !dbg !4950
  call void @llvm.lifetime.start.p0(i64 8, ptr %sigpipe) #16, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %sigpipe, metadata !4936, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4937, metadata !DIExpression()), !dbg !4953
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4938, metadata !DIExpression()), !dbg !4955
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4956
  store ptr %0, ptr %data, align 8, !dbg !4955
  call void @llvm.lifetime.start.p0(i64 8, ptr %wr) #16, !dbg !4957
  call void @llvm.dbg.declare(metadata ptr %wr, metadata !4939, metadata !DIExpression()), !dbg !4958
  store i64 0, ptr %wr, align 8, !dbg !4958
  %call = call ptr @get_current() #17, !dbg !4959
  %pending = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 109, !dbg !4960
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !4961
  %call1 = call i32 @sigismember(ptr noundef %signal, i32 noundef 13) #17, !dbg !4962
  %conv = sext i32 %call1 to i64, !dbg !4962
  store i64 %conv, ptr %sigpipe, align 8, !dbg !4963
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !4964
  %pipe_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 13, !dbg !4965
  call void @mutex_lock(ptr noundef %pipe_mutex) #17, !dbg !4966
  br label %while.cond, !dbg !4967

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %bytes.addr, align 4, !dbg !4968
  %tobool = icmp ne i32 %2, 0, !dbg !4967
  br i1 %tobool, label %while.body, label %while.end, !dbg !4967

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %file.addr, align 8, !dbg !4969
  %4 = load ptr, ptr %data, align 8, !dbg !4971
  %5 = load i32, ptr %bytes.addr, align 4, !dbg !4972
  %conv2 = sext i32 %5 to i64, !dbg !4972
  %call3 = call i64 @__kernel_write(ptr noundef %3, ptr noundef %4, i64 noundef %conv2, ptr noundef null) #17, !dbg !4973
  store i64 %call3, ptr %wr, align 8, !dbg !4974
  %6 = load i64, ptr %wr, align 8, !dbg !4975
  %cmp = icmp sle i64 %6, 0, !dbg !4977
  br i1 %cmp, label %if.then, label %if.end, !dbg !4978

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !4979

if.end:                                           ; preds = %while.body
  %7 = load i64, ptr %wr, align 8, !dbg !4980
  %8 = load ptr, ptr %data, align 8, !dbg !4981
  %add.ptr = getelementptr i8, ptr %8, i64 %7, !dbg !4981
  store ptr %add.ptr, ptr %data, align 8, !dbg !4981
  %9 = load i64, ptr %wr, align 8, !dbg !4982
  %10 = load i32, ptr %bytes.addr, align 4, !dbg !4983
  %conv5 = sext i32 %10 to i64, !dbg !4983
  %sub = sub i64 %conv5, %9, !dbg !4983
  %conv6 = trunc i64 %sub to i32, !dbg !4983
  store i32 %conv6, ptr %bytes.addr, align 4, !dbg !4983
  br label %while.cond, !dbg !4967, !llvm.loop !4984

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load ptr, ptr %sbi.addr, align 8, !dbg !4986
  %pipe_mutex7 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 13, !dbg !4987
  call void @mutex_unlock(ptr noundef %pipe_mutex7) #17, !dbg !4988
  %12 = load i64, ptr %wr, align 8, !dbg !4989
  %cmp8 = icmp eq i64 %12, -32, !dbg !4990
  br i1 %cmp8, label %land.lhs.true, label %if.end26, !dbg !4991

land.lhs.true:                                    ; preds = %while.end
  %13 = load i64, ptr %sigpipe, align 8, !dbg !4992
  %tobool10 = icmp ne i64 %13, 0, !dbg !4992
  br i1 %tobool10, label %if.end26, label %if.then11, !dbg !4993

if.then11:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !4994

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !4995

do.body12:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4940, metadata !DIExpression()), !dbg !4996
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4946, metadata !DIExpression()), !dbg !4996
  %cmp13 = icmp eq ptr %__dummy, %__dummy2, !dbg !4996
  %conv14 = zext i1 %cmp13 to i32, !dbg !4996
  store i32 1, ptr %tmp, align 4, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4997
  %14 = load i32, ptr %tmp, align 4, !dbg !4996
  %call15 = call ptr @get_current() #17, !dbg !4997
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call15, i32 0, i32 105, !dbg !4997
  %15 = load ptr, ptr %sighand, align 8, !dbg !4997
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %15, i32 0, i32 0, !dbg !4997
  %call16 = call ptr @spinlock_check(ptr noundef %siglock) #17, !dbg !4997
  %call17 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call16) #17, !dbg !4997
  store i64 %call17, ptr %flags, align 8, !dbg !4997
  br label %do.cond, !dbg !4997

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !4997

do.end:                                           ; preds = %do.cond
  br label %do.cond18, !dbg !4995

do.cond18:                                        ; preds = %do.end
  br label %do.end19, !dbg !4995

do.end19:                                         ; preds = %do.cond18
  %call20 = call ptr @get_current() #17, !dbg !4998
  %pending21 = getelementptr inbounds %struct.task_struct, ptr %call20, i32 0, i32 109, !dbg !4999
  %signal22 = getelementptr inbounds %struct.sigpending, ptr %pending21, i32 0, i32 1, !dbg !5000
  call void @sigdelset(ptr noundef %signal22, i32 noundef 13) #17, !dbg !5001
  call void @recalc_sigpending() #17, !dbg !5002
  %call23 = call ptr @get_current() #17, !dbg !5003
  %sighand24 = getelementptr inbounds %struct.task_struct, ptr %call23, i32 0, i32 105, !dbg !5004
  %16 = load ptr, ptr %sighand24, align 8, !dbg !5004
  %siglock25 = getelementptr inbounds %struct.sighand_struct, ptr %16, i32 0, i32 0, !dbg !5005
  %17 = load i64, ptr %flags, align 8, !dbg !5006
  call void @spin_unlock_irqrestore(ptr noundef %siglock25, i64 noundef %17) #17, !dbg !5007
  br label %if.end26, !dbg !5008

if.end26:                                         ; preds = %do.end19, %land.lhs.true, %while.end
  %18 = load i32, ptr %bytes.addr, align 4, !dbg !5009
  %cmp27 = icmp eq i32 %18, 0, !dbg !5010
  br i1 %cmp27, label %cond.true, label %cond.false, !dbg !5009

cond.true:                                        ; preds = %if.end26
  br label %cond.end33, !dbg !5009

cond.false:                                       ; preds = %if.end26
  %19 = load i64, ptr %wr, align 8, !dbg !5011
  %cmp29 = icmp slt i64 %19, 0, !dbg !5012
  br i1 %cmp29, label %cond.true31, label %cond.false32, !dbg !5011

cond.true31:                                      ; preds = %cond.false
  %20 = load i64, ptr %wr, align 8, !dbg !5013
  br label %cond.end, !dbg !5011

cond.false32:                                     ; preds = %cond.false
  br label %cond.end, !dbg !5011

cond.end:                                         ; preds = %cond.false32, %cond.true31
  %cond = phi i64 [ %20, %cond.true31 ], [ -5, %cond.false32 ], !dbg !5011
  br label %cond.end33, !dbg !5009

cond.end33:                                       ; preds = %cond.end, %cond.true
  %cond34 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ], !dbg !5009
  %conv35 = trunc i64 %cond34 to i32, !dbg !5009
  call void @llvm.lifetime.end.p0(i64 8, ptr %wr) #16, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %sigpipe) #16, !dbg !5014
  ret i32 %conv35, !dbg !5015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !5016 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5018, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5019, metadata !DIExpression()), !dbg !5021
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5022
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5022
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !5022
  ret i32 %call, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !5024 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5028, metadata !DIExpression()), !dbg !5029
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5030
  %0 = load i32, ptr %val, align 4, !dbg !5030
  ret i32 %0, !dbg !5031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !5032 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5034, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5035, metadata !DIExpression()), !dbg !5037
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5038
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5038
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !5038
  ret i32 %call, !dbg !5039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #4 align 16 !dbg !5040 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5044, metadata !DIExpression()), !dbg !5045
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5046
  %0 = load i32, ptr %val, align 4, !dbg !5046
  ret i32 %0, !dbg !5047
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #5 align 16 !dbg !5048 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5055
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !5056
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5057
  call void @raw_atomic_long_inc(ptr noundef %1) #17, !dbg !5058
  ret void, !dbg !5059
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5060 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5068, metadata !DIExpression()), !dbg !5070
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5069, metadata !DIExpression()), !dbg !5071
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5072
  %1 = load i64, ptr %size.addr, align 8, !dbg !5073
  %conv = trunc i64 %1 to i32, !dbg !5073
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5074
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5075
  %3 = load i64, ptr %size.addr, align 8, !dbg !5075
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5075
  ret void, !dbg !5076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #5 align 16 !dbg !5077 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5081
  call void @raw_atomic64_inc(ptr noundef %0) #17, !dbg !5082
  ret void, !dbg !5083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5084 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5089, metadata !DIExpression()), !dbg !5091
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5090, metadata !DIExpression()), !dbg !5092
  ret i1 true, !dbg !5093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5094 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5100, metadata !DIExpression()), !dbg !5103
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5101, metadata !DIExpression()), !dbg !5104
  ret void, !dbg !5105
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #5 align 16 !dbg !5106 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5114
  call void @arch_atomic64_inc(ptr noundef %0) #17, !dbg !5115
  ret void, !dbg !5116
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #5 align 16 !dbg !5117 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5122
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5123
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5124
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !5125
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #16, !dbg !5126, !srcloc !5127
  ret void, !dbg !5128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #4 align 16 !dbg !5129 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5134, metadata !DIExpression()), !dbg !5137
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !5135, metadata !DIExpression()), !dbg !5138
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #16, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5136, metadata !DIExpression()), !dbg !5140
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !5141
  %sub = sub i32 %0, 1, !dbg !5142
  %conv = sext i32 %sub to i64, !dbg !5141
  store i64 %conv, ptr %sig, align 8, !dbg !5140
  %1 = load ptr, ptr %set.addr, align 8, !dbg !5143
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !5145
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !5143
  %2 = load i64, ptr %arrayidx, align 8, !dbg !5143
  %3 = load i64, ptr %sig, align 8, !dbg !5146
  %shr = lshr i64 %2, %3, !dbg !5147
  %and = and i64 1, %shr, !dbg !5148
  %conv2 = trunc i64 %and to i32, !dbg !5149
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #16, !dbg !5150
  ret i32 %conv2, !dbg !5151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5152 dso_local i64 @__kernel_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5155 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5160 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5166
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5167
  ret ptr %1, !dbg !5168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sigdelset(ptr noundef %set, i32 noundef %_sig) #4 align 16 !dbg !5169 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5173, metadata !DIExpression()), !dbg !5176
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !5174, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #16, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5175, metadata !DIExpression()), !dbg !5179
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !5180
  %sub = sub i32 %0, 1, !dbg !5181
  %conv = sext i32 %sub to i64, !dbg !5180
  store i64 %conv, ptr %sig, align 8, !dbg !5179
  %1 = load i64, ptr %sig, align 8, !dbg !5182
  %shl = shl i64 1, %1, !dbg !5184
  %not = xor i64 %shl, -1, !dbg !5185
  %2 = load ptr, ptr %set.addr, align 8, !dbg !5186
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %2, i32 0, i32 0, !dbg !5187
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !5186
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5188
  %and = and i64 %3, %not, !dbg !5188
  store i64 %and, ptr %arrayidx, align 8, !dbg !5188
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #16, !dbg !5189
  ret void, !dbg !5189
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5190 dso_local void @recalc_sigpending() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !5191 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5195, metadata !DIExpression()), !dbg !5201
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5196, metadata !DIExpression()), !dbg !5202
  br label %do.body, !dbg !5203

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5204
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5197, metadata !DIExpression()), !dbg !5204
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5204
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5200, metadata !DIExpression()), !dbg !5204
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5204
  %conv = zext i1 %cmp to i32, !dbg !5204
  store i32 1, ptr %tmp, align 4, !dbg !5204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5205
  %0 = load i32, ptr %tmp, align 4, !dbg !5204
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5205
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5205
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5205
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5205
  br label %do.end, !dbg !5205

do.end:                                           ; preds = %do.body
  ret void, !dbg !5206
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5207 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5210 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5213 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone nounwind willreturn memory(read) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!llvm.ident = !{!3347}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/autofs/waitq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08c4c46bd64086633bc14c8b7262e1bd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "autofs_next_wait_queue", scope: !9, file: !2, line: 13, type: !3248, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/autofs/.waitq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/autofs/autofs4\22 -D KBUILD_BASENAME=\22waitq\22 -D KBUILD_MODNAME=\22autofs4\22 -D __KBUILD_MODNAME=kmod_autofs4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/autofs/waitq.ll fs/autofs/waitq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !77, globals: !3268, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !25, !31, !36, !42, !49, !56, !62, !67}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !21, line: 2052, baseType: !13, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!24 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !26, line: 54, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "USRQUOTA", value: 0)
!29 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!30 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !43, line: 15, baseType: !13, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!47 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!48 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !50, line: 51, baseType: !13, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!53 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!54 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!55 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "autofs_notify", file: !57, line: 154, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/uapi/linux/auto_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "967b492b126909646225f054deef702b")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "NFY_NONE", value: 0)
!60 = !DIEnumerator(name: "NFY_MOUNT", value: 1)
!61 = !DIEnumerator(name: "NFY_EXPIRE", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 10, baseType: !13, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "false", value: 0)
!66 = !DIEnumerator(name: "true", value: 1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !68, line: 364, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!69 = !{!70, !71, !72, !73, !74, !75, !76}
!70 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!71 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!72 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!73 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!74 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!75 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!76 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!77 = !{!78, !79, !81, !392, !393, !171, !13, !104, !112, !280, !3213}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !80, line: 154, baseType: !13)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !84, line: 110, size: 1472, elements: !85)
!84 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!85 = !{!86, !98, !107, !114, !115, !116, !117, !118, !119, !120, !121, !130, !131, !132, !133, !134, !136, !329, !330, !331, !332, !333, !370, !373, !377, !387}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !83, file: !84, line: 111, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !88, line: 13, baseType: !89)
!88 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !80, line: 181, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 179, size: 64, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !90, file: !80, line: 180, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !94, line: 22, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !96, line: 30, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!97 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !83, file: !84, line: 112, baseType: !99, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !100, line: 23, baseType: !101)
!100 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 21, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !100, line: 22, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !80, line: 37, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !106, line: 49, baseType: !13)
!106 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !83, file: !84, line: 113, baseType: !108, size: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !100, line: 28, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 26, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !109, file: !100, line: 27, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !80, line: 38, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !106, line: 50, baseType: !13)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !83, file: !84, line: 114, baseType: !99, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !83, file: !84, line: 115, baseType: !108, size: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !83, file: !84, line: 116, baseType: !99, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !83, file: !84, line: 117, baseType: !108, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !83, file: !84, line: 118, baseType: !99, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !83, file: !84, line: 119, baseType: !108, size: 32, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !83, file: !84, line: 120, baseType: !13, size: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !83, file: !84, line: 121, baseType: !122, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !123, line: 24, baseType: !124)
!123 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 24, size: 64, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !123, line: 24, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !129)
!129 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !83, file: !84, line: 122, baseType: !122, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !83, file: !84, line: 123, baseType: !122, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !83, file: !84, line: 124, baseType: !122, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !83, file: !84, line: 125, baseType: !122, size: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !83, file: !84, line: 127, baseType: !135, size: 8, offset: 704)
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !83, file: !84, line: 129, baseType: !137, size: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !139, line: 195, size: 1728, elements: !140)
!139 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!140 = !{!141, !152, !157, !175, !216, !219, !220, !227, !228, !229, !230, !235, !236, !237, !239, !240, !291, !314}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !138, file: !139, line: 196, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !143, line: 113, baseType: !144)
!143 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !143, line: 111, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !144, file: !143, line: 112, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !80, line: 174, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 172, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !148, file: !80, line: 173, baseType: !151, size: 32)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !138, file: !139, line: 197, baseType: !153, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !139, line: 28, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !80, line: 104, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !94, line: 20, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !96, line: 26, baseType: !151)
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 198, baseType: !158, size: 192, offset: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 198, size: 192, elements: !159)
!159 = !{!160, !166}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !158, file: !139, line: 199, baseType: !161, size: 128)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !80, line: 190, size: 128, elements: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !80, line: 191, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !80, line: 191, baseType: !164, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !158, file: !139, line: 200, baseType: !167, size: 192, align: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !168, line: 5, size: 192, align: 64, elements: !169)
!168 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!169 = !{!170, !172, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !167, file: !168, line: 6, baseType: !171, size: 64)
!171 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !167, file: !168, line: 7, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !167, file: !168, line: 8, baseType: !173, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !138, file: !139, line: 205, baseType: !176, size: 320, offset: 256)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !177, line: 48, size: 320, elements: !178)
!177 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!178 = !{!179, !180, !181, !186, !215}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !176, file: !177, line: 49, baseType: !87, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !176, file: !177, line: 55, baseType: !87, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !176, file: !177, line: 57, baseType: !182, size: 32, offset: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !183, line: 15, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !182, file: !183, line: 20, baseType: !147, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !176, file: !177, line: 59, baseType: !187, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !188, line: 23, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !188, line: 14, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !189, file: !188, line: 15, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 44, baseType: !194)
!193 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !193, line: 14, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 15, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 15, size: 32, elements: !198)
!198 = !{!199, !200, !207}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !197, file: !193, line: 16, baseType: !147, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 24, baseType: !201, size: 16)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 24, size: 16, elements: !202)
!202 = !{!203, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !201, file: !193, line: 25, baseType: !204, size: 8)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !135)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !201, file: !193, line: 26, baseType: !204, size: 8, offset: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 28, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 28, size: 32, elements: !209)
!209 = !{!210, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !208, file: !193, line: 29, baseType: !211, size: 16)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !213)
!213 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !208, file: !193, line: 30, baseType: !211, size: 16, offset: 16)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !176, file: !177, line: 60, baseType: !161, size: 128, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !138, file: !139, line: 206, baseType: !217, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !139, line: 206, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !138, file: !139, line: 207, baseType: !78, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 208, baseType: !221, size: 64, offset: 704)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 208, size: 64, elements: !222)
!222 = !{!223, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !221, file: !139, line: 209, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !225, line: 8, baseType: !95)
!225 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!226 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !221, file: !139, line: 210, baseType: !224, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !138, file: !139, line: 212, baseType: !224, size: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !138, file: !139, line: 213, baseType: !99, size: 32, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !138, file: !139, line: 214, baseType: !108, size: 32, offset: 864)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !138, file: !139, line: 215, baseType: !231, size: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !139, line: 31, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 110, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !13)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !138, file: !139, line: 216, baseType: !213, size: 16, offset: 928)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !138, file: !139, line: 217, baseType: !213, size: 16, offset: 944)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !138, file: !139, line: 221, baseType: !238, size: 16, offset: 960)
!238 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !139, line: 228, baseType: !171, size: 64, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 245, baseType: !241, size: 320, offset: 1088)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 245, size: 320, elements: !242)
!242 = !{!243, !282}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !241, file: !139, line: 246, baseType: !244, size: 320)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !139, line: 114, size: 320, elements: !245)
!245 = !{!246, !247, !259, !262, !279}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !244, file: !139, line: 116, baseType: !171, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !139, line: 117, baseType: !248, size: 64, offset: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !139, line: 117, size: 64, elements: !249)
!249 = !{!250, !258}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !139, line: 118, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !139, line: 118, size: 64, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !251, file: !139, line: 120, baseType: !211, size: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !251, file: !139, line: 121, baseType: !255, size: 48, offset: 16)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 6)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !248, file: !139, line: 127, baseType: !171, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !244, file: !139, line: 129, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !139, line: 102, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !244, file: !139, line: 130, baseType: !263, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !139, line: 108, size: 192, elements: !265)
!265 = !{!266, !275, !276}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !264, file: !139, line: 109, baseType: !267, size: 128, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !80, line: 232, size: 128, align: 64, elements: !268)
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !80, line: 233, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !267, file: !80, line: 234, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !270}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !264, file: !139, line: 110, baseType: !142, size: 32, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !264, file: !139, line: 111, baseType: !277, size: 8, offset: 160)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 35, baseType: !278)
!278 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !244, file: !139, line: 131, baseType: !280, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !139, line: 247, baseType: !283, size: 320)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !139, line: 247, size: 320, elements: !284)
!284 = !{!285, !286, !287, !288, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !283, file: !139, line: 248, baseType: !171, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !283, file: !139, line: 249, baseType: !171, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !139, line: 250, baseType: !260, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !283, file: !139, line: 251, baseType: !263, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !283, file: !139, line: 252, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 260, baseType: !292, size: 256, offset: 1408)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 260, size: 256, elements: !293)
!293 = !{!294, !302}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !292, file: !139, line: 261, baseType: !295, size: 256)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !139, line: 134, size: 256, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !295, file: !139, line: 135, baseType: !78, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !295, file: !139, line: 136, baseType: !299, size: 256)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 4)
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !139, line: 262, baseType: !303, size: 256)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !139, line: 262, size: 256, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !303, file: !139, line: 264, baseType: !161, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !303, file: !139, line: 265, baseType: !307, size: 128, offset: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !308, line: 22, size: 128, elements: !309)
!308 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!309 = !{!310, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !307, file: !308, line: 23, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !308, line: 23, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !307, file: !308, line: 24, baseType: !171, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !138, file: !139, line: 280, baseType: !315, size: 64, offset: 1664)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !139, line: 176, size: 192, elements: !317)
!317 = !{!318, !327, !328}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !316, file: !139, line: 177, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !139, line: 171, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!151, !137, !323, !325, !137}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !316, file: !139, line: 178, baseType: !137, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !316, file: !139, line: 179, baseType: !260, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !83, file: !84, line: 130, baseType: !137, size: 64, offset: 832)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !83, file: !84, line: 131, baseType: !137, size: 64, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !83, file: !84, line: 132, baseType: !137, size: 64, offset: 960)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !83, file: !84, line: 135, baseType: !78, size: 64, offset: 1024)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !83, file: !84, line: 137, baseType: !334, size: 64, offset: 1088)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !336, line: 14, size: 1088, elements: !337)
!336 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!337 = !{!338, !339, !348, !349, !350, !357, !358, !359}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !335, file: !336, line: 15, baseType: !142, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !335, file: !336, line: 17, baseType: !340, size: 320, offset: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !341, line: 22, size: 320, elements: !342)
!341 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!342 = !{!343, !344, !345, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !340, file: !341, line: 23, baseType: !187, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !340, file: !341, line: 24, baseType: !93, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !340, file: !341, line: 26, baseType: !161, size: 128, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !340, file: !341, line: 28, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !335, file: !336, line: 19, baseType: !171, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !335, file: !336, line: 20, baseType: !87, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !335, file: !336, line: 23, baseType: !351, size: 128, offset: 512)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !80, line: 198, size: 128, elements: !352)
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !80, line: 199, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !351, file: !80, line: 199, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !335, file: !336, line: 24, baseType: !99, size: 32, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !335, file: !336, line: 29, baseType: !87, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !335, file: !336, line: 36, baseType: !360, size: 320, offset: 768)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !361, line: 15, size: 320, elements: !362)
!361 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!362 = !{!363, !364, !365, !366, !367, !368, !369}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !360, file: !361, line: 16, baseType: !187, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !360, file: !361, line: 18, baseType: !151, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !360, file: !361, line: 19, baseType: !151, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !360, file: !361, line: 20, baseType: !151, size: 32, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !360, file: !361, line: 21, baseType: !151, size: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !360, file: !361, line: 22, baseType: !171, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !361, line: 23, baseType: !171, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !83, file: !84, line: 138, baseType: !371, size: 64, offset: 1152)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !100, line: 18, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !83, file: !84, line: 139, baseType: !374, size: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !376, line: 16, flags: DIFlagFwdDecl)
!376 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!377 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !83, file: !84, line: 140, baseType: !378, size: 64, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !84, line: 25, size: 64, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !379, file: !84, line: 26, baseType: !147, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !379, file: !84, line: 27, baseType: !151, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !379, file: !84, line: 28, baseType: !384, offset: 64)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: -1)
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !84, line: 142, baseType: !388, size: 128, offset: 1344)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !84, line: 142, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !388, file: !84, line: 143, baseType: !151, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !388, file: !84, line: 144, baseType: !267, size: 128, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !395, line: 746, size: 58368, elements: !396)
!395 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!396 = !{!397, !405, !406, !407, !408, !409, !410, !411, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !482, !493, !593, !597, !600, !631, !632, !633, !634, !645, !647, !648, !649, !650, !651, !652, !663, !664, !667, !668, !669, !670, !671, !672, !673, !674, !681, !682, !689, !690, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2374, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2389, !2390, !2391, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2433, !2439, !2440, !2441, !2442, !2443, !2445, !2448, !2455, !2460, !2463, !2466, !2469, !2472, !2612, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2654, !2655, !2656, !2665, !2673, !2674, !2675, !2676, !2677, !2682, !2683, !2684, !2687, !2688, !2691, !2694, !2697, !2705, !2708, !2709, !2795, !2796, !2797, !2798, !2799, !2805, !2806, !2807, !2808, !2811, !2812, !2815, !2818, !2819, !2822, !2823, !2824, !2827, !2828, !2829, !2830, !2831, !2832, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2864, !2865, !2871, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2883, !2955, !2957, !2958, !2959, !2960, !2961, !2973, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2990, !2991, !2992}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !394, file: !395, line: 752, baseType: !398, size: 192)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !399, line: 56, size: 192, elements: !400)
!399 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!400 = !{!401, !402, !403, !404}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !399, line: 57, baseType: !171, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !398, file: !399, line: 58, baseType: !171, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !398, file: !399, line: 59, baseType: !233, size: 32, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !398, file: !399, line: 61, baseType: !233, size: 32, offset: 160)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !394, file: !395, line: 754, baseType: !13, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !394, file: !395, line: 767, baseType: !78, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !394, file: !395, line: 768, baseType: !142, size: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !395, line: 770, baseType: !13, size: 32, offset: 352)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !394, file: !395, line: 771, baseType: !13, size: 32, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !394, file: !395, line: 774, baseType: !151, size: 32, offset: 416)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !394, file: !395, line: 775, baseType: !412, size: 128, offset: 448)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !413, line: 58, size: 128, elements: !414)
!413 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!414 = !{!415, !421, !426, !427}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !412, file: !413, line: 59, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !417, line: 60, size: 64, elements: !418)
!417 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !417, line: 61, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 60, baseType: !422, size: 32, offset: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 60, size: 32, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !422, file: !413, line: 61, baseType: !13, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !422, file: !413, line: 62, baseType: !147, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !412, file: !413, line: 65, baseType: !211, size: 16, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !412, file: !413, line: 65, baseType: !211, size: 16, offset: 112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !394, file: !395, line: 776, baseType: !13, size: 32, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !394, file: !395, line: 777, baseType: !171, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !394, file: !395, line: 778, baseType: !393, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !394, file: !395, line: 787, baseType: !151, size: 32, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !394, file: !395, line: 788, baseType: !151, size: 32, offset: 800)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !394, file: !395, line: 790, baseType: !151, size: 32, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !394, file: !395, line: 792, baseType: !151, size: 32, offset: 864)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !394, file: !395, line: 793, baseType: !151, size: 32, offset: 896)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !394, file: !395, line: 794, baseType: !151, size: 32, offset: 928)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !394, file: !395, line: 795, baseType: !13, size: 32, offset: 960)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !394, file: !395, line: 797, baseType: !439, size: 2048, offset: 1024)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !395, line: 551, size: 2048, elements: !440)
!440 = !{!441, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !461, !464, !465, !466}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !439, file: !395, line: 553, baseType: !442, size: 128)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !395, line: 411, size: 128, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !442, file: !395, line: 412, baseType: !171, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !442, file: !395, line: 413, baseType: !233, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !439, file: !395, line: 554, baseType: !167, size: 192, align: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !439, file: !395, line: 555, baseType: !127, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !439, file: !395, line: 556, baseType: !127, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !439, file: !395, line: 558, baseType: !161, size: 128, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !439, file: !395, line: 559, baseType: !13, size: 32, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !439, file: !395, line: 561, baseType: !127, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !439, file: !395, line: 562, baseType: !127, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !439, file: !395, line: 563, baseType: !127, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !439, file: !395, line: 564, baseType: !127, size: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !439, file: !395, line: 565, baseType: !93, size: 64, offset: 896)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !439, file: !395, line: 566, baseType: !127, size: 64, offset: 960)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !439, file: !395, line: 568, baseType: !127, size: 64, offset: 1024)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !439, file: !395, line: 571, baseType: !151, size: 32, offset: 1088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !439, file: !395, line: 572, baseType: !460, size: 64, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !439, file: !395, line: 574, baseType: !462, size: 64, offset: 1216)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !395, line: 49, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !439, file: !395, line: 576, baseType: !462, size: 64, offset: 1280)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !439, file: !395, line: 578, baseType: !171, size: 64, offset: 1344)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !439, file: !395, line: 588, baseType: !467, size: 512, align: 512, offset: 1536)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !395, line: 497, size: 512, align: 512, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !467, file: !395, line: 498, baseType: !127, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !467, file: !395, line: 499, baseType: !127, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !467, file: !395, line: 500, baseType: !127, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !467, file: !395, line: 501, baseType: !233, size: 32, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !467, file: !395, line: 502, baseType: !233, size: 32, offset: 224)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !467, file: !395, line: 503, baseType: !171, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !467, file: !395, line: 504, baseType: !171, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !467, file: !395, line: 505, baseType: !171, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !467, file: !395, line: 506, baseType: !478, size: 64, align: 64, offset: 448)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !395, line: 445, size: 64, align: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !478, file: !395, line: 446, baseType: !13, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !478, file: !395, line: 447, baseType: !13, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !394, file: !395, line: 798, baseType: !483, size: 384, offset: 3072)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !395, line: 592, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !483, file: !395, line: 593, baseType: !161, size: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !483, file: !395, line: 594, baseType: !171, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !483, file: !395, line: 595, baseType: !171, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !483, file: !395, line: 596, baseType: !13, size: 32, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !483, file: !395, line: 597, baseType: !213, size: 16, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !483, file: !395, line: 598, baseType: !213, size: 16, offset: 304)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !483, file: !395, line: 600, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !394, file: !395, line: 799, baseType: !494, size: 1792, offset: 3456)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !395, line: 610, size: 1792, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !590, !591}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !494, file: !395, line: 611, baseType: !167, size: 192, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !494, file: !395, line: 618, baseType: !127, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !494, file: !395, line: 619, baseType: !127, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !494, file: !395, line: 620, baseType: !127, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !494, file: !395, line: 621, baseType: !127, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !494, file: !395, line: 622, baseType: !127, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !494, file: !395, line: 629, baseType: !93, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !494, file: !395, line: 630, baseType: !127, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !395, line: 631, baseType: !13, size: 32, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !494, file: !395, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !494, file: !395, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !494, file: !395, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !494, file: !395, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !494, file: !395, line: 662, baseType: !510, size: 512, offset: 704)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !511)
!511 = !{!512, !520, !521, !526, !586, !587, !588, !589}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !32, line: 119, baseType: !513, size: 256)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !514, line: 9, size: 256, elements: !515)
!514 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !513, file: !514, line: 10, baseType: !167, size: 192, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !513, file: !514, line: 11, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !519, line: 29, baseType: !93)
!519 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !510, file: !32, line: 120, baseType: !518, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !510, file: !32, line: 121, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!31, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !510, file: !32, line: 122, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !529)
!529 = !{!530, !555, !556, !559, !569, !570, !581, !585}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !528, file: !32, line: 160, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 215, size: 4608, align: 512, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !532, file: !32, line: 216, baseType: !187, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !532, file: !32, line: 217, baseType: !13, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !532, file: !32, line: 218, baseType: !13, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !532, file: !32, line: 219, baseType: !13, size: 32, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !532, file: !32, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !532, file: !32, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !532, file: !32, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !532, file: !32, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !532, file: !32, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !532, file: !32, line: 226, baseType: !13, size: 32, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !532, file: !32, line: 227, baseType: !213, size: 16, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !532, file: !32, line: 228, baseType: !213, size: 16, offset: 208)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !532, file: !32, line: 229, baseType: !13, size: 32, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !532, file: !32, line: 235, baseType: !518, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !532, file: !32, line: 236, baseType: !525, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !532, file: !32, line: 237, baseType: !518, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !532, file: !32, line: 238, baseType: !525, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !532, file: !32, line: 239, baseType: !552, size: 4096, align: 512, offset: 512)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 4096, align: 512, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !528, file: !32, line: 161, baseType: !13, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !528, file: !32, line: 162, baseType: !557, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !80, line: 32, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !106, line: 96, baseType: !151)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !528, file: !32, line: 163, baseType: !560, size: 32, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !561, line: 274, baseType: !562)
!561 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !561, line: 274, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !562, file: !561, line: 274, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !561, line: 69, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !561, line: 64, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !566, file: !561, line: 65, baseType: !13, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !528, file: !32, line: 164, baseType: !525, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !528, file: !32, line: 165, baseType: !571, size: 128, offset: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !514, line: 14, size: 128, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !571, file: !514, line: 15, baseType: !574, size: 128)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !168, line: 26, size: 128, elements: !575)
!575 = !{!576, !580}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !574, file: !168, line: 27, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !168, line: 12, size: 64, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !577, file: !168, line: 13, baseType: !173, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !574, file: !168, line: 28, baseType: !173, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !528, file: !32, line: 166, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!518}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !528, file: !32, line: 167, baseType: !518, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !510, file: !32, line: 123, baseType: !204, size: 8, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !510, file: !32, line: 124, baseType: !204, size: 8, offset: 456)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !510, file: !32, line: 125, baseType: !204, size: 8, offset: 464)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !510, file: !32, line: 126, baseType: !204, size: 8, offset: 472)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !494, file: !395, line: 671, baseType: !510, size: 512, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !494, file: !395, line: 679, baseType: !592, size: 64, offset: 1728)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !394, file: !395, line: 800, baseType: !594, size: 64, offset: 5248)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !395, line: 800, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !394, file: !395, line: 809, baseType: !598, size: 64, offset: 5312)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !395, line: 70, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !394, file: !395, line: 825, baseType: !601, size: 2048, align: 512, offset: 5632)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !395, line: 509, size: 2048, align: 512, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !601, file: !395, line: 511, baseType: !127, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !601, file: !395, line: 512, baseType: !127, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !601, file: !395, line: 513, baseType: !127, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !601, file: !395, line: 514, baseType: !127, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !601, file: !395, line: 515, baseType: !127, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !601, file: !395, line: 516, baseType: !127, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !601, file: !395, line: 518, baseType: !127, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !601, file: !395, line: 519, baseType: !127, size: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !601, file: !395, line: 520, baseType: !93, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !601, file: !395, line: 522, baseType: !127, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !601, file: !395, line: 523, baseType: !127, size: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !601, file: !395, line: 524, baseType: !93, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !601, file: !395, line: 526, baseType: !93, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !601, file: !395, line: 527, baseType: !127, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !601, file: !395, line: 529, baseType: !127, size: 64, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !601, file: !395, line: 530, baseType: !127, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !601, file: !395, line: 531, baseType: !127, size: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !601, file: !395, line: 532, baseType: !127, size: 64, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !601, file: !395, line: 533, baseType: !127, size: 64, offset: 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !601, file: !395, line: 535, baseType: !127, size: 64, offset: 1216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !601, file: !395, line: 536, baseType: !127, size: 64, offset: 1280)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !601, file: !395, line: 537, baseType: !127, size: 64, offset: 1344)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !601, file: !395, line: 538, baseType: !127, size: 64, offset: 1408)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !601, file: !395, line: 539, baseType: !127, size: 64, offset: 1472)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !601, file: !395, line: 540, baseType: !127, size: 64, offset: 1536)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !601, file: !395, line: 541, baseType: !127, size: 64, offset: 1600)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !601, file: !395, line: 542, baseType: !127, size: 64, offset: 1664)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !601, file: !395, line: 543, baseType: !127, size: 64, offset: 1728)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !394, file: !395, line: 833, baseType: !13, size: 32, offset: 7680)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !394, file: !395, line: 836, baseType: !13, size: 32, offset: 7712)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !394, file: !395, line: 837, baseType: !151, size: 32, offset: 7744)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !394, file: !395, line: 838, baseType: !635, size: 64, offset: 7808)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !638, line: 19, baseType: !639)
!638 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !638, line: 19, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !639, file: !638, line: 19, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 64, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 1)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !394, file: !395, line: 839, baseType: !646, size: 64, offset: 7872)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !394, file: !395, line: 840, baseType: !637, size: 64, offset: 7936)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !394, file: !395, line: 841, baseType: !78, size: 64, offset: 8000)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !394, file: !395, line: 843, baseType: !213, size: 16, offset: 8064)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !394, file: !395, line: 845, baseType: !213, size: 16, offset: 8080)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !394, file: !395, line: 848, baseType: !151, size: 32, offset: 8096)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !394, file: !395, line: 849, baseType: !653, size: 32, offset: 8128)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !395, line: 718, size: 32, elements: !654)
!654 = !{!655, !662}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !653, file: !395, line: 724, baseType: !656, size: 32)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !395, line: 719, size: 32, elements: !657)
!657 = !{!658, !659, !660, !661}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !656, file: !395, line: 720, baseType: !204, size: 8)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !656, file: !395, line: 721, baseType: !204, size: 8, offset: 8)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !656, file: !395, line: 722, baseType: !204, size: 8, offset: 16)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !656, file: !395, line: 723, baseType: !204, size: 8, offset: 24)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !653, file: !395, line: 725, baseType: !233, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !394, file: !395, line: 850, baseType: !161, size: 128, offset: 8192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !394, file: !395, line: 851, baseType: !665, size: 64, offset: 8320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !395, line: 60, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !394, file: !395, line: 855, baseType: !171, size: 64, offset: 8384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !394, file: !395, line: 856, baseType: !204, size: 8, offset: 8448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !394, file: !395, line: 857, baseType: !204, size: 8, offset: 8456)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !394, file: !395, line: 858, baseType: !151, size: 32, offset: 8480)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !394, file: !395, line: 859, baseType: !161, size: 128, offset: 8512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !394, file: !395, line: 860, baseType: !151, size: 32, offset: 8640)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !394, file: !395, line: 861, baseType: !161, size: 128, offset: 8704)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !394, file: !395, line: 873, baseType: !675, size: 256, offset: 8832)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !395, line: 376, size: 256, elements: !676)
!676 = !{!677, !678, !679, !680}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !675, file: !395, line: 381, baseType: !171, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !675, file: !395, line: 384, baseType: !129, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !675, file: !395, line: 389, baseType: !129, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !675, file: !395, line: 392, baseType: !129, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !394, file: !395, line: 875, baseType: !161, size: 128, offset: 9088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !394, file: !395, line: 877, baseType: !683, size: 320, offset: 9216)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !684, line: 86, size: 320, elements: !685)
!684 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!685 = !{!686, !687, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !683, file: !684, line: 87, baseType: !151, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !683, file: !684, line: 88, baseType: !161, size: 128, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !683, file: !684, line: 89, baseType: !161, size: 128, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !394, file: !395, line: 878, baseType: !167, size: 192, align: 64, offset: 9536)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !394, file: !395, line: 881, baseType: !691, size: 64, offset: 9728)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !693, line: 733, size: 10240, elements: !694)
!693 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!694 = !{!695, !2293}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !693, line: 734, baseType: !696, size: 10240)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !692, file: !693, line: 734, size: 10240, elements: !697)
!697 = !{!698, !702, !724, !2191, !2192, !2193, !2194, !2195, !2196, !2203, !2204, !2205, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2244, !2246, !2249, !2273, !2274, !2275, !2278, !2279, !2280, !2283, !2284, !2285, !2291, !2292}
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !693, line: 739, baseType: !699, size: 512, align: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !693, line: 739, size: 512, align: 512, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !699, file: !693, line: 747, baseType: !147, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !696, file: !693, line: 750, baseType: !703, size: 128, offset: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !704, line: 218, size: 128, elements: !705)
!704 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!705 = !{!706, !722, !723}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !704, line: 219, baseType: !707, size: 32)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !704, line: 219, size: 32, elements: !708)
!708 = !{!709, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !707, file: !704, line: 220, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !711, line: 29, baseType: !712)
!711 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !711, line: 17, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !712, file: !711, line: 18, baseType: !715, size: 32)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !712, file: !711, line: 18, size: 32, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !715, file: !711, line: 19, baseType: !189, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !707, file: !704, line: 221, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !704, line: 197, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 197, elements: !721)
!721 = !{}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !703, file: !704, line: 223, baseType: !13, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !703, file: !704, line: 224, baseType: !78, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !696, file: !693, line: 752, baseType: !725, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!171, !728, !171, !171, !171, !171}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !21, line: 994, size: 1856, align: 64, elements: !730)
!730 = !{!731, !737, !738, !740, !741, !749, !752, !753, !810, !811, !820, !2181, !2182, !2183, !2184, !2185, !2186, !2188, !2189, !2190}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !21, line: 995, baseType: !732, size: 128)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !21, line: 995, size: 128, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !732, file: !21, line: 996, baseType: !416, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !732, file: !21, line: 997, baseType: !267, size: 128, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !732, file: !21, line: 998, baseType: !13, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !729, file: !21, line: 1005, baseType: !710, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !729, file: !21, line: 1006, baseType: !739, size: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !80, line: 156, baseType: !13)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !729, file: !21, line: 1007, baseType: !87, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !729, file: !21, line: 1008, baseType: !742, size: 256, offset: 256)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !743, line: 66, size: 256, elements: !744)
!743 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!744 = !{!745, !746, !747, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !742, file: !743, line: 67, baseType: !87, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !742, file: !743, line: 68, baseType: !187, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !742, file: !743, line: 70, baseType: !182, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !742, file: !743, line: 72, baseType: !161, size: 128, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !729, file: !21, line: 1009, baseType: !750, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !80, line: 52, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !106, line: 88, baseType: !97)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !729, file: !21, line: 1010, baseType: !13, size: 32, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !729, file: !21, line: 1011, baseType: !754, size: 256, offset: 640)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !21, line: 948, size: 256, elements: !755)
!755 = !{!756, !777, !806, !807, !808, !809}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !21, line: 949, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !758, line: 34, baseType: !759)
!758 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 25, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !759, file: !758, line: 26, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !763, line: 27, baseType: !764)
!763 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !763, line: 13, size: 64, elements: !765)
!765 = !{!766, !776}
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !763, line: 14, baseType: !767, size: 32)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !763, line: 14, size: 32, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !767, file: !763, line: 15, baseType: !147, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 16, baseType: !771, size: 32)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 16, size: 32, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !771, file: !763, line: 18, baseType: !204, size: 8)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !771, file: !763, line: 19, baseType: !775, size: 24, offset: 8)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 24, elements: !5)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !763, line: 26, baseType: !192, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !754, file: !21, line: 950, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !780)
!780 = !{!781, !782, !783, !784, !789, !790, !797, !798}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !779, file: !12, line: 61, baseType: !142, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !779, file: !12, line: 62, baseType: !13, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !779, file: !12, line: 63, baseType: !710, size: 32, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !779, file: !12, line: 65, baseType: !785, size: 256, offset: 128)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 256, elements: !300)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !80, line: 194, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !786, file: !80, line: 195, baseType: !354, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !779, file: !12, line: 66, baseType: !786, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !779, file: !12, line: 68, baseType: !791, size: 192, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !792, line: 41, baseType: !793)
!792 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !792, line: 37, size: 192, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !793, file: !792, line: 38, baseType: !710, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !793, file: !792, line: 39, baseType: !161, size: 128, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !779, file: !12, line: 69, baseType: !267, size: 128, align: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !779, file: !12, line: 70, baseType: !799, offset: 768)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, elements: !385)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !800, file: !12, line: 55, baseType: !151, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !800, file: !12, line: 56, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !754, file: !21, line: 951, baseType: !11, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !754, file: !21, line: 952, baseType: !99, size: 32, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !754, file: !21, line: 952, baseType: !99, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !754, file: !21, line: 953, baseType: !151, size: 32, offset: 224)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !729, file: !21, line: 1012, baseType: !81, size: 64, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !729, file: !21, line: 1013, baseType: !812, size: 256, offset: 960)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !21, line: 970, size: 256, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !819}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !812, file: !21, line: 971, baseType: !171, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !812, file: !21, line: 972, baseType: !13, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !812, file: !21, line: 973, baseType: !13, size: 32, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !812, file: !21, line: 974, baseType: !13, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !812, file: !21, line: 975, baseType: !13, size: 32, offset: 160)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !812, file: !21, line: 976, baseType: !750, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !729, file: !21, line: 1014, baseType: !821, size: 128, offset: 1216)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !822, line: 8, size: 128, elements: !823)
!822 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!823 = !{!824, !2180}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !821, file: !822, line: 9, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !827, line: 70, size: 256, elements: !828)
!827 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!828 = !{!829, !2177, !2178, !2179}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !826, file: !827, line: 71, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !832, line: 82, size: 1536, elements: !833)
!832 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!833 = !{!834, !835, !840, !848, !849, !864, !2144, !2146, !2159, !2160, !2161, !2162, !2163, !2169, !2170, !2171}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !831, file: !832, line: 84, baseType: !13, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !831, file: !832, line: 85, baseType: !836, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !561, line: 275, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !561, line: 275, size: 32, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !837, file: !561, line: 275, baseType: !565, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !831, file: !832, line: 86, baseType: !841, size: 128, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !842, line: 38, size: 128, elements: !843)
!842 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!843 = !{!844, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !842, line: 39, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !841, file: !842, line: 39, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !831, file: !832, line: 87, baseType: !830, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !831, file: !832, line: 88, baseType: !850, size: 128, offset: 256)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !832, line: 49, size: 128, elements: !851)
!851 = !{!852, !861}
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !832, line: 50, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !832, line: 50, size: 64, elements: !854)
!854 = !{!855, !860}
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !832, line: 51, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !832, line: 51, size: 64, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !856, file: !832, line: 52, baseType: !233, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !856, file: !832, line: 52, baseType: !233, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !853, file: !832, line: 54, baseType: !127, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !832, line: 56, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !831, file: !832, line: 89, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !21, line: 641, size: 4800, elements: !867)
!867 = !{!868, !870, !871, !872, !873, !874, !875, !878, !879, !1076, !1635, !1897, !1898, !1899, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !2126, !2129, !2130, !2131, !2140, !2141, !2142, !2143}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !866, file: !21, line: 642, baseType: !869, size: 16)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !80, line: 24, baseType: !213)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !866, file: !21, line: 643, baseType: !213, size: 16, offset: 16)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !866, file: !21, line: 644, baseType: !99, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !866, file: !21, line: 645, baseType: !161, size: 128, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !866, file: !21, line: 646, baseType: !108, size: 32, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !866, file: !21, line: 647, baseType: !13, size: 32, offset: 224)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !866, file: !21, line: 650, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !21, line: 607, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !866, file: !21, line: 651, baseType: !876, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !866, file: !21, line: 654, baseType: !880, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !21, line: 1966, size: 2048, align: 512, elements: !883)
!883 = !{!884, !888, !901, !907, !911, !915, !919, !923, !927, !931, !935, !936, !942, !946, !984, !1015, !1025, !1031, !1035, !1039, !1043, !1047, !1051, !1057, !1061}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !882, file: !21, line: 1967, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!830, !865, !830, !13}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !882, file: !21, line: 1968, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!280, !830, !865, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !894, line: 10, size: 128, elements: !895)
!894 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!895 = !{!896, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !893, file: !894, line: 11, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !78}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !893, file: !894, line: 12, baseType: !78, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !882, file: !21, line: 1969, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!151, !905, !865, !151}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !123, line: 42, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !882, file: !21, line: 1970, baseType: !908, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!876, !865, !151, !277}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !882, file: !21, line: 1972, baseType: !912, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!151, !830, !290, !151}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !882, file: !21, line: 1974, baseType: !916, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!151, !905, !865, !830, !869, !277}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !882, file: !21, line: 1976, baseType: !920, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!151, !830, !865, !830}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !882, file: !21, line: 1977, baseType: !924, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!151, !865, !830}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !882, file: !21, line: 1978, baseType: !928, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!151, !905, !865, !830, !280}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !882, file: !21, line: 1980, baseType: !932, size: 64, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!151, !905, !865, !830, !869}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !882, file: !21, line: 1982, baseType: !924, size: 64, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !882, file: !21, line: 1983, baseType: !937, size: 64, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!151, !905, !865, !830, !869, !940}
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !80, line: 21, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !80, line: 18, baseType: !233)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !882, file: !21, line: 1985, baseType: !943, size: 64, offset: 768)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!151, !905, !865, !830, !865, !830, !13}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !882, file: !21, line: 1987, baseType: !947, size: 64, offset: 832)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!151, !905, !830, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !21, line: 226, size: 640, elements: !952)
!952 = !{!953, !954, !955, !965, !974, !975, !981, !982, !983}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !951, file: !21, line: 227, baseType: !13, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !951, file: !21, line: 228, baseType: !869, size: 16, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !21, line: 241, baseType: !956, size: 32, offset: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !21, line: 241, size: 32, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !956, file: !21, line: 242, baseType: !99, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !956, file: !21, line: 243, baseType: !960, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !961, line: 16, baseType: !962)
!961 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !961, line: 14, size: 32, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !962, file: !961, line: 15, baseType: !104, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !21, line: 245, baseType: !966, size: 32, offset: 96)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !21, line: 245, size: 32, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !966, file: !21, line: 246, baseType: !108, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !966, file: !21, line: 247, baseType: !970, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !961, line: 20, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !961, line: 18, size: 32, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !971, file: !961, line: 19, baseType: !112, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !951, file: !21, line: 249, baseType: !750, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !951, file: !21, line: 250, baseType: !976, size: 128, offset: 192)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !225, line: 13, size: 128, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !976, file: !225, line: 14, baseType: !224, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !976, file: !225, line: 15, baseType: !980, size: 64, offset: 64)
!980 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !951, file: !21, line: 251, baseType: !976, size: 128, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !951, file: !21, line: 252, baseType: !976, size: 128, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !951, file: !21, line: 259, baseType: !728, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !882, file: !21, line: 1988, baseType: !985, size: 64, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!151, !905, !988, !990, !233, !13}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !992, line: 22, size: 1280, elements: !993)
!992 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !991, file: !992, line: 23, baseType: !233, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !991, file: !992, line: 24, baseType: !869, size: 16, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !991, file: !992, line: 25, baseType: !13, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !991, file: !992, line: 26, baseType: !232, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !991, file: !992, line: 27, baseType: !127, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !991, file: !992, line: 28, baseType: !127, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !991, file: !992, line: 41, baseType: !127, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !991, file: !992, line: 42, baseType: !940, size: 32, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !991, file: !992, line: 43, baseType: !940, size: 32, offset: 352)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !991, file: !992, line: 44, baseType: !99, size: 32, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !991, file: !992, line: 45, baseType: !108, size: 32, offset: 416)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !991, file: !992, line: 46, baseType: !750, size: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !991, file: !992, line: 47, baseType: !976, size: 128, offset: 512)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !991, file: !992, line: 48, baseType: !976, size: 128, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !991, file: !992, line: 49, baseType: !976, size: 128, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !991, file: !992, line: 50, baseType: !976, size: 128, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !991, file: !992, line: 51, baseType: !127, size: 64, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !991, file: !992, line: 52, baseType: !127, size: 64, offset: 1088)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !991, file: !992, line: 53, baseType: !233, size: 32, offset: 1152)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !991, file: !992, line: 54, baseType: !233, size: 32, offset: 1184)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !991, file: !992, line: 55, baseType: !127, size: 64, offset: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !882, file: !21, line: 1990, baseType: !1016, size: 64, offset: 960)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!1019, !830, !290, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !80, line: 66, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !106, line: 73, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !106, line: 15, baseType: !980)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 61, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !106, line: 72, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !106, line: 16, baseType: !171)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !882, file: !21, line: 1991, baseType: !1026, size: 64, offset: 1024)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!151, !865, !1029, !127, !127}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !21, line: 55, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !882, file: !21, line: 1993, baseType: !1032, size: 64, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!151, !865, !151}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !882, file: !21, line: 1994, baseType: !1036, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!151, !865, !830, !728, !13, !869}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !882, file: !21, line: 1997, baseType: !1040, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!151, !905, !865, !728, !869}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !882, file: !21, line: 1999, baseType: !1044, size: 64, offset: 1280)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!876, !905, !830, !151}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !882, file: !21, line: 2001, baseType: !1048, size: 64, offset: 1344)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!151, !905, !830, !876, !151}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !882, file: !21, line: 2003, baseType: !1052, size: 64, offset: 1408)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!151, !905, !830, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !21, line: 76, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !882, file: !21, line: 2005, baseType: !1058, size: 64, offset: 1472)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!151, !830, !1055}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !882, file: !21, line: 2006, baseType: !1062, size: 64, offset: 1536)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1065, !865}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !21, line: 3192, size: 192, elements: !1067)
!1067 = !{!1068, !1075}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1066, file: !21, line: 3193, baseType: !1069, size: 128)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1070, line: 296, size: 128, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1069, file: !1070, line: 297, baseType: !710, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1069, file: !1070, line: 299, baseType: !79, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1069, file: !1070, line: 300, baseType: !78, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1066, file: !21, line: 3194, baseType: !233, size: 32, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !866, file: !21, line: 655, baseType: !1077, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !21, line: 1190, size: 10752, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1126, !1264, !1304, !1387, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1404, !1408, !1409, !1412, !1415, !1418, !1421, !1422, !1423, !1464, !1491, !1492, !1493, !1494, !1495, !1496, !1499, !1503, !1512, !1513, !1514, !1515, !1574, !1589, !1590, !1591, !1592, !1595, !1599, !1600, !1601, !1616, !1617, !1618, !1629, !1630, !1631, !1632, !1633, !1634}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1078, file: !21, line: 1191, baseType: !161, size: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1078, file: !21, line: 1192, baseType: !940, size: 32, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1078, file: !21, line: 1193, baseType: !135, size: 8, offset: 160)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1078, file: !21, line: 1194, baseType: !171, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1078, file: !21, line: 1195, baseType: !750, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1078, file: !21, line: 1196, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !21, line: 2366, size: 576, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1097, !1101, !1105, !1109, !1113, !1114, !1115, !1118, !1119, !1120, !1122, !1123, !1124, !1125}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1087, file: !21, line: 2367, baseType: !280, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1087, file: !21, line: 2368, baseType: !151, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1087, file: !21, line: 2376, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!151, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !827, line: 21, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1087, file: !21, line: 2377, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !21, line: 75, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1087, file: !21, line: 2378, baseType: !1102, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!830, !1086, !151, !280, !78}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1087, file: !21, line: 2380, baseType: !1106, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !1077}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1087, file: !21, line: 2381, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1112, line: 103, flags: DIFlagFwdDecl)
!1112 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1087, file: !21, line: 2382, baseType: !1086, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1087, file: !21, line: 2383, baseType: !786, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1087, file: !21, line: 2385, baseType: !1116, offset: 576)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1117, line: 206, elements: !721)
!1117 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1087, file: !21, line: 2386, baseType: !1116, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1087, file: !21, line: 2387, baseType: !1116, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1087, file: !21, line: 2388, baseType: !1121, offset: 576)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, elements: !5)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1087, file: !21, line: 2390, baseType: !1116, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1087, file: !21, line: 2391, baseType: !1116, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1087, file: !21, line: 2392, baseType: !1116, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1087, file: !21, line: 2393, baseType: !1116, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1078, file: !21, line: 1197, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !21, line: 2057, size: 1664, elements: !1130)
!1130 = !{!1131, !1135, !1139, !1140, !1144, !1150, !1154, !1155, !1156, !1160, !1164, !1168, !1169, !1170, !1176, !1181, !1182, !1189, !1190, !1191, !1192, !1196, !1200, !1247, !1262, !1263}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1129, file: !21, line: 2058, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!865, !1077}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1129, file: !21, line: 2059, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !865}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1129, file: !21, line: 2060, baseType: !1136, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1129, file: !21, line: 2062, baseType: !1141, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !865, !151}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1129, file: !21, line: 2063, baseType: !1145, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!151, !865, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 309, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1129, file: !21, line: 2064, baseType: !1151, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!151, !865}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1129, file: !21, line: 2065, baseType: !1136, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1129, file: !21, line: 2066, baseType: !1106, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1129, file: !21, line: 2067, baseType: !1157, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!151, !1077, !151}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1129, file: !21, line: 2068, baseType: !1161, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!151, !1077, !20}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1129, file: !21, line: 2069, baseType: !1165, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!151, !1077}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1129, file: !21, line: 2070, baseType: !1161, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1129, file: !21, line: 2071, baseType: !1165, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1129, file: !21, line: 2072, baseType: !1171, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!151, !830, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !21, line: 62, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1129, file: !21, line: 2073, baseType: !1177, size: 64, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!151, !1077, !1180, !290}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1129, file: !21, line: 2074, baseType: !1106, size: 64, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1129, file: !21, line: 2076, baseType: !1183, size: 64, offset: 1024)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!151, !1186, !830}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1188, line: 474, flags: DIFlagFwdDecl)
!1188 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1129, file: !21, line: 2077, baseType: !1183, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1129, file: !21, line: 2078, baseType: !1183, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1129, file: !21, line: 2079, baseType: !1183, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1129, file: !21, line: 2081, baseType: !1193, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1019, !1077, !151, !290, !1022, !750}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1129, file: !21, line: 2082, baseType: !1197, size: 64, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1019, !1077, !151, !280, !1022, !750}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1129, file: !21, line: 2083, baseType: !1201, size: 64, offset: 1408)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1204, !865}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !26, line: 296, size: 1664, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1232, !1233, !1234}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1206, file: !26, line: 297, baseType: !351, size: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1206, file: !26, line: 298, baseType: !161, size: 128, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1206, file: !26, line: 299, baseType: !161, size: 128, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1206, file: !26, line: 300, baseType: !161, size: 128, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1206, file: !26, line: 301, baseType: !742, size: 256, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1206, file: !26, line: 302, baseType: !710, size: 32, offset: 768)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1206, file: !26, line: 303, baseType: !147, size: 32, offset: 800)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1206, file: !26, line: 304, baseType: !1077, size: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1206, file: !26, line: 305, baseType: !1217, size: 64, offset: 896)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !26, line: 68, size: 64, elements: !1218)
!1218 = !{!1219, !1231}
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !26, line: 69, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !26, line: 69, size: 32, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1220, file: !26, line: 70, baseType: !99, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1220, file: !26, line: 71, baseType: !108, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1220, file: !26, line: 72, baseType: !1225, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1226, line: 24, baseType: !1227)
!1226 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 22, size: 32, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1227, file: !1226, line: 23, baseType: !1230, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1226, line: 20, baseType: !105)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1217, file: !26, line: 74, baseType: !25, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1206, file: !26, line: 306, baseType: !750, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1206, file: !26, line: 307, baseType: !171, size: 64, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1206, file: !26, line: 308, baseType: !1235, size: 576, offset: 1088)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !26, line: 205, size: 576, elements: !1236)
!1236 = !{!1237, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1235, file: !26, line: 206, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !26, line: 66, baseType: !97)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1235, file: !26, line: 207, baseType: !1238, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1235, file: !26, line: 208, baseType: !1238, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1235, file: !26, line: 209, baseType: !1238, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1235, file: !26, line: 210, baseType: !1238, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1235, file: !26, line: 211, baseType: !1238, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1235, file: !26, line: 212, baseType: !1238, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1235, file: !26, line: 213, baseType: !224, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1235, file: !26, line: 214, baseType: !224, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1129, file: !21, line: 2085, baseType: !1248, size: 64, offset: 1472)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!980, !1077, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1253, line: 15, size: 256, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1254 = !{!1255, !1256, !1257, !1258, !1259}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1252, file: !1253, line: 16, baseType: !79, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1252, file: !1253, line: 19, baseType: !151, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1252, file: !1253, line: 26, baseType: !171, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1252, file: !1253, line: 33, baseType: !171, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1252, file: !1253, line: 36, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !693, line: 33, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1129, file: !21, line: 2087, baseType: !1248, size: 64, offset: 1536)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1129, file: !21, line: 2089, baseType: !1106, size: 64, offset: 1600)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1078, file: !21, line: 1198, baseType: !1265, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !26, line: 324, size: 704, elements: !1268)
!1268 = !{!1269, !1273, !1277, !1281, !1282, !1283, !1284, !1285, !1290, !1295, !1299}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1267, file: !26, line: 325, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!151, !1205}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1267, file: !26, line: 326, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1205, !1077, !151}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1267, file: !26, line: 327, baseType: !1278, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1205}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1267, file: !26, line: 328, baseType: !1270, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1267, file: !26, line: 329, baseType: !1270, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1267, file: !26, line: 330, baseType: !1270, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1267, file: !26, line: 331, baseType: !1157, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1267, file: !26, line: 334, baseType: !1286, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1289, !865}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1267, file: !26, line: 335, baseType: !1291, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!151, !865, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1267, file: !26, line: 337, baseType: !1296, size: 64, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!151, !865, !1289}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1267, file: !26, line: 339, baseType: !1300, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!151, !1077, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1078, file: !21, line: 1199, baseType: !1305, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !26, line: 430, size: 704, elements: !1308)
!1308 = !{!1309, !1313, !1314, !1318, !1319, !1320, !1335, !1358, !1362, !1363, !1386}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1307, file: !26, line: 431, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!151, !1077, !151, !151, !988}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1307, file: !26, line: 432, baseType: !1157, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1307, file: !26, line: 433, baseType: !1315, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!151, !1077, !13}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1307, file: !26, line: 434, baseType: !1315, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1307, file: !26, line: 435, baseType: !1157, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1307, file: !26, line: 436, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!151, !1077, !151, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !26, line: 417, size: 256, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1325, file: !26, line: 418, baseType: !151, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1325, file: !26, line: 419, baseType: !13, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1325, file: !26, line: 420, baseType: !13, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1325, file: !26, line: 422, baseType: !13, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1325, file: !26, line: 423, baseType: !13, size: 32, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1325, file: !26, line: 424, baseType: !13, size: 32, offset: 160)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1325, file: !26, line: 425, baseType: !13, size: 32, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1325, file: !26, line: 426, baseType: !13, size: 32, offset: 224)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1307, file: !26, line: 437, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!151, !1077, !1217, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !26, line: 345, size: 960, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1340, file: !26, line: 346, baseType: !151, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1340, file: !26, line: 347, baseType: !127, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1340, file: !26, line: 348, baseType: !127, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1340, file: !26, line: 349, baseType: !127, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1340, file: !26, line: 350, baseType: !127, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1340, file: !26, line: 351, baseType: !127, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1340, file: !26, line: 352, baseType: !127, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1340, file: !26, line: 353, baseType: !93, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1340, file: !26, line: 355, baseType: !93, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1340, file: !26, line: 356, baseType: !151, size: 32, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1340, file: !26, line: 357, baseType: !151, size: 32, offset: 608)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1340, file: !26, line: 358, baseType: !127, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1340, file: !26, line: 359, baseType: !127, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1340, file: !26, line: 360, baseType: !127, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1340, file: !26, line: 361, baseType: !93, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1340, file: !26, line: 362, baseType: !151, size: 32, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1307, file: !26, line: 438, baseType: !1359, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!151, !1077, !1303, !1339}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1307, file: !26, line: 440, baseType: !1336, size: 64, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1307, file: !26, line: 441, baseType: !1364, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!151, !1077, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !26, line: 411, size: 1408, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1368, file: !26, line: 412, baseType: !13, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1368, file: !26, line: 413, baseType: !1372, size: 1344, offset: 64)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 1344, elements: !5)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !26, line: 397, size: 448, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1385}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1373, file: !26, line: 398, baseType: !13, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1373, file: !26, line: 399, baseType: !13, size: 32, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1373, file: !26, line: 401, baseType: !13, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1373, file: !26, line: 402, baseType: !13, size: 32, offset: 96)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1373, file: !26, line: 403, baseType: !13, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1373, file: !26, line: 404, baseType: !13, size: 32, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1373, file: !26, line: 405, baseType: !13, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1373, file: !26, line: 406, baseType: !129, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1373, file: !26, line: 407, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !80, line: 132, baseType: !127)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1373, file: !26, line: 408, baseType: !1384, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1307, file: !26, line: 442, baseType: !1315, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1078, file: !21, line: 1200, baseType: !1388, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !21, line: 54, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1078, file: !21, line: 1201, baseType: !171, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1078, file: !21, line: 1202, baseType: !171, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1078, file: !21, line: 1203, baseType: !171, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1078, file: !21, line: 1204, baseType: !830, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1078, file: !21, line: 1205, baseType: !176, size: 320, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1078, file: !21, line: 1206, baseType: !151, size: 32, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1078, file: !21, line: 1207, baseType: !147, size: 32, offset: 1248)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1078, file: !21, line: 1209, baseType: !78, size: 64, offset: 1280)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1078, file: !21, line: 1211, baseType: !1400, size: 64, offset: 1344)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !21, line: 1211, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1078, file: !21, line: 1223, baseType: !1405, size: 64, offset: 1408)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !842, line: 34, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1405, file: !842, line: 35, baseType: !845, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1078, file: !21, line: 1224, baseType: !161, size: 128, offset: 1472)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1078, file: !21, line: 1225, baseType: !1410, size: 64, offset: 1600)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !21, line: 1225, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1078, file: !21, line: 1226, baseType: !1413, size: 64, offset: 1664)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !21, line: 1226, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1078, file: !21, line: 1227, baseType: !1416, size: 64, offset: 1728)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !21, line: 50, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1078, file: !21, line: 1228, baseType: !1419, size: 64, offset: 1792)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !21, line: 1228, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1078, file: !21, line: 1229, baseType: !351, size: 128, offset: 1856)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1078, file: !21, line: 1230, baseType: !13, size: 32, offset: 1984)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1078, file: !21, line: 1231, baseType: !1424, size: 2496, offset: 2048)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !26, line: 521, size: 2496, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1430, !1462}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !26, line: 522, baseType: !13, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1424, file: !26, line: 523, baseType: !176, size: 320, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1424, file: !26, line: 524, baseType: !1429, size: 192, offset: 384)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 192, elements: !5)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1424, file: !26, line: 525, baseType: !1431, size: 1728, offset: 576)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 1728, elements: !5)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !26, line: 222, size: 576, elements: !1433)
!1433 = !{!1434, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1432, file: !26, line: 223, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !26, line: 445, size: 256, elements: !1437)
!1437 = !{!1438, !1439, !1452, !1453}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1436, file: !26, line: 446, baseType: !151, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1436, file: !26, line: 447, baseType: !1440, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !26, line: 312, size: 512, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1442, file: !26, line: 313, baseType: !1157, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1442, file: !26, line: 314, baseType: !1157, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1442, file: !26, line: 315, baseType: !1157, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1442, file: !26, line: 316, baseType: !1157, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1442, file: !26, line: 317, baseType: !1270, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1442, file: !26, line: 318, baseType: !1270, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1442, file: !26, line: 319, baseType: !1270, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1442, file: !26, line: 320, baseType: !1300, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1436, file: !26, line: 448, baseType: !1110, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1436, file: !26, line: 449, baseType: !1435, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1432, file: !26, line: 224, baseType: !151, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1432, file: !26, line: 226, baseType: !161, size: 128, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1432, file: !26, line: 227, baseType: !171, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1432, file: !26, line: 228, baseType: !13, size: 32, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1432, file: !26, line: 229, baseType: !13, size: 32, offset: 352)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1432, file: !26, line: 230, baseType: !1238, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1432, file: !26, line: 231, baseType: !1238, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1432, file: !26, line: 232, baseType: !78, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1424, file: !26, line: 526, baseType: !1463, size: 192, offset: 2304)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 192, elements: !5)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1078, file: !21, line: 1233, baseType: !1465, size: 2368, offset: 4544)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !21, line: 1184, size: 2368, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1465, file: !21, line: 1185, baseType: !213, size: 16)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1465, file: !21, line: 1186, baseType: !213, size: 16, offset: 16)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1465, file: !21, line: 1187, baseType: !1470, size: 2304, offset: 64)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 2304, elements: !5)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1472, line: 12, size: 768, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1473 = !{!1474, !1482, !1484, !1489, !1490}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1471, file: !1472, line: 13, baseType: !1475, size: 384)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1476, line: 17, size: 384, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1477 = !{!1478, !1479, !1480, !1481}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1475, file: !1476, line: 18, baseType: !151, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1475, file: !1476, line: 19, baseType: !151, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1475, file: !1476, line: 20, baseType: !791, size: 192, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1475, file: !1476, line: 22, baseType: !267, size: 128, align: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1471, file: !1472, line: 14, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1471, file: !1472, line: 15, baseType: !1485, size: 64, offset: 448)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1486, line: 16, size: 64, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1485, file: !1486, line: 17, baseType: !393, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1471, file: !1472, line: 16, baseType: !791, size: 192, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1471, file: !1472, line: 17, baseType: !147, size: 32, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1078, file: !21, line: 1240, baseType: !78, size: 64, offset: 6912)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1078, file: !21, line: 1243, baseType: !233, size: 32, offset: 6976)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1078, file: !21, line: 1245, baseType: !224, size: 64, offset: 7040)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1078, file: !21, line: 1246, baseType: !224, size: 64, offset: 7104)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1078, file: !21, line: 1248, baseType: !234, size: 32, offset: 7168)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1078, file: !21, line: 1249, baseType: !1497, size: 64, offset: 7232)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !21, line: 634, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1078, file: !21, line: 1252, baseType: !1500, size: 256, offset: 7296)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1078, file: !21, line: 1253, baseType: !1504, size: 128, offset: 7552)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1505, line: 21, baseType: !1506)
!1505 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 19, size: 128, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1506, file: !1505, line: 20, baseType: !1509, size: 128)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !1510)
!1510 = !{!1511}
!1511 = !DISubrange(count: 16)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1078, file: !21, line: 1255, baseType: !13, size: 32, offset: 7680)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1078, file: !21, line: 1261, baseType: !742, size: 256, offset: 7744)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1078, file: !21, line: 1267, baseType: !280, size: 64, offset: 8000)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1078, file: !21, line: 1269, baseType: !1516, size: 64, offset: 8064)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !832, line: 128, size: 1024, align: 512, elements: !1519)
!1519 = !{!1520, !1524, !1525, !1532, !1538, !1542, !1546, !1550, !1551, !1555, !1559, !1564, !1568}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1518, file: !832, line: 129, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!151, !830, !13}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1518, file: !832, line: 130, baseType: !1521, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1518, file: !832, line: 131, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!151, !1529, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1518, file: !832, line: 132, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!151, !1529, !13, !280, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1518, file: !832, line: 134, baseType: !1539, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!151, !1529}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1518, file: !832, line: 135, baseType: !1543, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!151, !830}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1518, file: !832, line: 136, baseType: !1547, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !830}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1518, file: !832, line: 137, baseType: !1547, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1518, file: !832, line: 138, baseType: !1552, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !830, !865}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1518, file: !832, line: 139, baseType: !1556, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!290, !830, !290, !151}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1518, file: !832, line: 140, baseType: !1560, size: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!825, !1563}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1518, file: !832, line: 141, baseType: !1565, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!151, !988, !277}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1518, file: !832, line: 142, baseType: !1569, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!830, !830, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1078, file: !21, line: 1271, baseType: !1575, size: 448, offset: 8128)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1253, line: 63, size: 448, elements: !1576)
!1576 = !{!1577, !1582, !1583, !1584, !1585, !1586, !1587}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1575, file: !1253, line: 64, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!171, !1581, !1251}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1575, file: !1253, line: 66, baseType: !1578, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1575, file: !1253, line: 69, baseType: !980, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1575, file: !1253, line: 70, baseType: !151, size: 32, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !1253, line: 71, baseType: !13, size: 32, offset: 224)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1575, file: !1253, line: 74, baseType: !161, size: 128, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1575, file: !1253, line: 85, baseType: !1588, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1078, file: !21, line: 1274, baseType: !87, size: 64, offset: 8576)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1078, file: !21, line: 1280, baseType: !87, size: 64, offset: 8640)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1078, file: !21, line: 1283, baseType: !151, size: 32, offset: 8704)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1078, file: !21, line: 1286, baseType: !1593, size: 32, offset: 8736)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1594, line: 8, baseType: !233)
!1594 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1078, file: !21, line: 1289, baseType: !1596, size: 64, offset: 8768)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1598, line: 18, flags: DIFlagFwdDecl)
!1598 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1078, file: !21, line: 1290, baseType: !786, size: 64, offset: 8832)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1078, file: !21, line: 1297, baseType: !371, size: 64, offset: 8896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1078, file: !21, line: 1304, baseType: !1602, size: 64, offset: 8960)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1603, line: 49, size: 64, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1602, file: !1603, line: 50, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1603, line: 41, size: 512, align: 512, elements: !1608)
!1608 = !{!1609, !1610, !1615}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1607, file: !1603, line: 43, baseType: !710, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1607, file: !1603, line: 45, baseType: !1611, size: 192, offset: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1603, line: 29, size: 192, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1611, file: !1603, line: 30, baseType: !161, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1611, file: !1603, line: 32, baseType: !980, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1607, file: !1603, line: 46, baseType: !980, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1078, file: !21, line: 1305, baseType: !1602, size: 64, offset: 9024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1078, file: !21, line: 1306, baseType: !267, size: 128, align: 64, offset: 9088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1078, file: !21, line: 1307, baseType: !1619, size: 256, offset: 9216)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1598, line: 98, size: 256, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1619, file: !1598, line: 99, baseType: !87, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1619, file: !1598, line: 100, baseType: !161, size: 128, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1619, file: !1598, line: 101, baseType: !1624, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1598, line: 21, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1078, file: !21, line: 1309, baseType: !742, size: 256, offset: 9472)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1078, file: !21, line: 1314, baseType: !151, size: 32, offset: 9728)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1078, file: !21, line: 1317, baseType: !710, size: 32, align: 512, offset: 10240)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1078, file: !21, line: 1318, baseType: !161, size: 128, offset: 10304)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1078, file: !21, line: 1320, baseType: !710, size: 32, offset: 10432)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1078, file: !21, line: 1321, baseType: !161, size: 128, offset: 10496)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !866, file: !21, line: 656, baseType: !1636, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !21, line: 472, size: 1536, align: 64, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1891, !1892, !1893, !1894, !1895, !1896}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1637, file: !21, line: 473, baseType: !865, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1637, file: !21, line: 474, baseType: !1069, size: 128, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1637, file: !21, line: 475, baseType: !176, size: 320, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1637, file: !21, line: 476, baseType: !79, size: 32, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1637, file: !21, line: 477, baseType: !147, size: 32, offset: 544)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1637, file: !21, line: 482, baseType: !574, size: 128, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1637, file: !21, line: 483, baseType: !171, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1637, file: !21, line: 484, baseType: !171, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1637, file: !21, line: 485, baseType: !1648, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !21, line: 404, size: 1280, elements: !1651)
!1651 = !{!1652, !1716, !1786, !1790, !1794, !1800, !1806, !1810, !1815, !1819, !1823, !1827, !1855, !1859, !1863, !1867, !1872, !1876, !1883, !1887}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1650, file: !21, line: 405, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!151, !1656, !1148}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !693, line: 74, size: 512, align: 128, elements: !1658)
!1658 = !{!1659, !1660, !1710, !1715}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1657, file: !693, line: 75, baseType: !171, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !693, line: 83, baseType: !1661, size: 320, offset: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !693, line: 83, size: 320, elements: !1662)
!1662 = !{!1663, !1684, !1698, !1702, !1709}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !693, line: 84, baseType: !1664, size: 320)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !693, line: 84, size: 320, elements: !1665)
!1665 = !{!1666, !1677, !1678, !1683}
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !693, line: 90, baseType: !1667, size: 128)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !693, line: 90, size: 128, elements: !1668)
!1668 = !{!1669, !1670, !1675, !1676}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1667, file: !693, line: 91, baseType: !161, size: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !693, line: 94, baseType: !1671, size: 128)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !693, line: 94, size: 128, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1671, file: !693, line: 96, baseType: !78, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1671, file: !693, line: 98, baseType: !13, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1667, file: !693, line: 102, baseType: !161, size: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1667, file: !693, line: 103, baseType: !161, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1664, file: !693, line: 106, baseType: !1636, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !693, line: 107, baseType: !1679, size: 64, offset: 192)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !693, line: 107, size: 64, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1679, file: !693, line: 108, baseType: !171, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1679, file: !693, line: 109, baseType: !171, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1664, file: !693, line: 117, baseType: !171, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !693, line: 119, baseType: !1685, size: 320)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !693, line: 119, size: 320, elements: !1686)
!1686 = !{!1687, !1688, !1691, !1692, !1693}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1685, file: !693, line: 124, baseType: !171, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1685, file: !693, line: 125, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !693, line: 125, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1685, file: !693, line: 126, baseType: !171, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1685, file: !693, line: 127, baseType: !171, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !693, line: 128, baseType: !1694, size: 64, offset: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !693, line: 128, size: 64, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1694, file: !693, line: 133, baseType: !171, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1694, file: !693, line: 138, baseType: !87, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !693, line: 141, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !693, line: 141, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1699, file: !693, line: 142, baseType: !171, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !693, line: 144, baseType: !1703, size: 128)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !693, line: 144, size: 128, elements: !1704)
!1704 = !{!1705, !1708}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1703, file: !693, line: 146, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !693, line: 146, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1703, file: !693, line: 147, baseType: !78, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1661, file: !693, line: 161, baseType: !267, size: 128, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !693, line: 164, baseType: !1711, size: 32, offset: 384)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !693, line: 164, size: 32, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1711, file: !693, line: 169, baseType: !147, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1711, file: !693, line: 177, baseType: !13, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1657, file: !693, line: 181, baseType: !147, size: 32, offset: 416)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1650, file: !21, line: 406, baseType: !1717, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!151, !728, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !693, line: 293, size: 1536, elements: !1722)
!1722 = !{!1723, !1753, !1767}
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !693, line: 295, baseType: !1724, size: 512)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !693, line: 295, size: 512, elements: !1725)
!1725 = !{!1726, !1752}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !693, line: 296, baseType: !1727, size: 448)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1724, file: !693, line: 296, size: 448, elements: !1728)
!1728 = !{!1729, !1730, !1739, !1740, !1741, !1750, !1751}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !693, line: 298, baseType: !171, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !693, line: 299, baseType: !1731, size: 128, offset: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !693, line: 299, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1731, file: !693, line: 300, baseType: !161, size: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !693, line: 302, baseType: !1735, size: 128)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1731, file: !693, line: 302, size: 128, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1735, file: !693, line: 303, baseType: !78, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1735, file: !693, line: 305, baseType: !13, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1727, file: !693, line: 310, baseType: !1636, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1727, file: !693, line: 311, baseType: !171, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !693, line: 312, baseType: !1742, size: 64, offset: 320)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !693, line: 312, size: 64, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1742, file: !693, line: 313, baseType: !78, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1742, file: !693, line: 314, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !693, line: 257, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 255, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1747, file: !693, line: 256, baseType: !171, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1727, file: !693, line: 316, baseType: !147, size: 32, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1727, file: !693, line: 317, baseType: !147, size: 32, offset: 416)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1724, file: !693, line: 323, baseType: !1657, size: 512, align: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !693, line: 325, baseType: !1754, size: 512, offset: 512)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !693, line: 325, size: 512, elements: !1755)
!1755 = !{!1756, !1766}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !693, line: 326, baseType: !1757, size: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !693, line: 326, size: 320, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1757, file: !693, line: 327, baseType: !171, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1757, file: !693, line: 328, baseType: !171, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1757, file: !693, line: 329, baseType: !171, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1757, file: !693, line: 331, baseType: !147, size: 32, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1757, file: !693, line: 332, baseType: !147, size: 32, offset: 224)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1757, file: !693, line: 333, baseType: !147, size: 32, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1757, file: !693, line: 335, baseType: !13, size: 32, offset: 288)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1754, file: !693, line: 339, baseType: !1657, size: 512, align: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !693, line: 341, baseType: !1768, size: 512, offset: 1024)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !693, line: 341, size: 512, elements: !1769)
!1769 = !{!1770, !1779, !1785}
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !693, line: 342, baseType: !1771, size: 384)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !693, line: 342, size: 384, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1771, file: !693, line: 343, baseType: !171, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1771, file: !693, line: 344, baseType: !171, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1771, file: !693, line: 346, baseType: !78, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1771, file: !693, line: 347, baseType: !78, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1771, file: !693, line: 348, baseType: !78, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1771, file: !693, line: 349, baseType: !78, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !693, line: 352, baseType: !1780, size: 256)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !693, line: 352, size: 256, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1780, file: !693, line: 353, baseType: !171, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1780, file: !693, line: 354, baseType: !171, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1780, file: !693, line: 356, baseType: !161, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1768, file: !693, line: 359, baseType: !1657, size: 512, align: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1650, file: !21, line: 409, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!151, !1636, !1148}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1650, file: !21, line: 412, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!277, !1636, !1720}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1650, file: !21, line: 414, baseType: !1795, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !21, line: 310, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1650, file: !21, line: 416, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!151, !728, !1636, !750, !13, !1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1650, file: !21, line: 419, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!151, !728, !1636, !750, !13, !13, !1656, !78}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1650, file: !21, line: 424, baseType: !1811, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1814, !1636, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !80, line: 131, baseType: !127)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1650, file: !21, line: 425, baseType: !1816, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1720, !1022, !1022}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1650, file: !21, line: 426, baseType: !1820, size: 64, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!277, !1720, !79}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1650, file: !21, line: 427, baseType: !1824, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1720}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1650, file: !21, line: 428, baseType: !1828, size: 64, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1019, !1831, !1853}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !21, line: 373, size: 384, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1840, !1841, !1842, !1843}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1832, file: !21, line: 374, baseType: !728, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1832, file: !21, line: 375, baseType: !750, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1832, file: !21, line: 376, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1831, !980}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1832, file: !21, line: 377, baseType: !78, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1832, file: !21, line: 378, baseType: !151, size: 32, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1832, file: !21, line: 379, baseType: !211, size: 16, offset: 288)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !21, line: 380, baseType: !1844, size: 64, offset: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !21, line: 380, size: 64, elements: !1845)
!1845 = !{!1846, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1844, file: !21, line: 386, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !21, line: 386, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1844, file: !21, line: 395, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1019, !78}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !21, line: 69, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1650, file: !21, line: 433, baseType: !1856, size: 64, offset: 768)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!151, !1636, !1720, !1720, !42}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1650, file: !21, line: 435, baseType: !1860, size: 64, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!151, !1720}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1650, file: !21, line: 436, baseType: !1864, size: 64, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!277, !1720, !1022, !1022}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1650, file: !21, line: 438, baseType: !1868, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1720, !1871, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1650, file: !21, line: 439, baseType: !1873, size: 64, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!151, !1636, !1656}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1650, file: !21, line: 442, baseType: !1877, size: 64, offset: 1088)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!151, !1880, !728, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !21, line: 66, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1650, file: !21, line: 444, baseType: !1884, size: 64, offset: 1152)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !728}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1650, file: !21, line: 445, baseType: !1888, size: 64, offset: 1216)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!151, !1831, !1853}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1637, file: !21, line: 486, baseType: !171, size: 64, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1637, file: !21, line: 487, baseType: !176, size: 320, offset: 960)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1637, file: !21, line: 488, baseType: !1593, size: 32, offset: 1280)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1637, file: !21, line: 489, baseType: !710, size: 32, offset: 1312)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1637, file: !21, line: 490, baseType: !161, size: 128, offset: 1344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1637, file: !21, line: 491, baseType: !78, size: 64, offset: 1472)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !866, file: !21, line: 659, baseType: !78, size: 64, offset: 576)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !866, file: !21, line: 663, baseType: !171, size: 64, offset: 640)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !21, line: 671, baseType: !1900, size: 32, offset: 704)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !21, line: 671, size: 32, elements: !1901)
!1901 = !{!1902, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1900, file: !21, line: 672, baseType: !1903, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1900, file: !21, line: 673, baseType: !13, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !866, file: !21, line: 675, baseType: !940, size: 32, offset: 736)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !866, file: !21, line: 676, baseType: !750, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !866, file: !21, line: 677, baseType: !976, size: 128, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !866, file: !21, line: 678, baseType: !976, size: 128, offset: 960)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !866, file: !21, line: 679, baseType: !976, size: 128, offset: 1088)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !866, file: !21, line: 680, baseType: !710, size: 32, offset: 1216)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !866, file: !21, line: 681, baseType: !213, size: 16, offset: 1248)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !866, file: !21, line: 682, baseType: !204, size: 8, offset: 1264)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !866, file: !21, line: 683, baseType: !204, size: 8, offset: 1272)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !866, file: !21, line: 684, baseType: !1384, size: 64, offset: 1280)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !866, file: !21, line: 691, baseType: !171, size: 64, offset: 1344)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !866, file: !21, line: 692, baseType: !176, size: 320, offset: 1408)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !866, file: !21, line: 694, baseType: !171, size: 64, offset: 1728)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !866, file: !21, line: 695, baseType: !171, size: 64, offset: 1792)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !866, file: !21, line: 697, baseType: !351, size: 128, offset: 1856)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !866, file: !21, line: 698, baseType: !161, size: 128, offset: 1984)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !866, file: !21, line: 707, baseType: !161, size: 128, offset: 2112)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !866, file: !21, line: 708, baseType: !161, size: 128, offset: 2240)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !21, line: 709, baseType: !1924, size: 128, offset: 2368)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !21, line: 709, size: 128, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1924, file: !21, line: 710, baseType: !786, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1924, file: !21, line: 711, baseType: !267, size: 128, align: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !866, file: !21, line: 713, baseType: !89, size: 64, offset: 2496)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !866, file: !21, line: 714, baseType: !89, size: 64, offset: 2560)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !866, file: !21, line: 715, baseType: !147, size: 32, offset: 2624)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !866, file: !21, line: 716, baseType: !147, size: 32, offset: 2656)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !866, file: !21, line: 717, baseType: !147, size: 32, offset: 2688)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !866, file: !21, line: 719, baseType: !147, size: 32, offset: 2720)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !21, line: 721, baseType: !1935, size: 64, offset: 2752)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !21, line: 721, size: 64, elements: !1936)
!1936 = !{!1937, !2125}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1935, file: !21, line: 722, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !21, line: 1914, size: 2112, elements: !1941)
!1941 = !{!1942, !1943, !1947, !1952, !1956, !1957, !1958, !1964, !1977, !1985, !1989, !1990, !2051, !2052, !2056, !2061, !2062, !2066, !2070, !2076, !2077, !2081, !2082, !2088, !2092, !2093, !2098, !2102, !2106, !2110, !2114, !2115, !2121}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1940, file: !21, line: 1915, baseType: !1110, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1940, file: !21, line: 1916, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!750, !728, !750, !151}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1940, file: !21, line: 1917, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1019, !728, !290, !1022, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1940, file: !21, line: 1918, baseType: !1953, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1019, !728, !280, !1022, !1951}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1940, file: !21, line: 1919, baseType: !1828, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1940, file: !21, line: 1920, baseType: !1828, size: 64, offset: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1940, file: !21, line: 1921, baseType: !1959, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!151, !1831, !1962, !13}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !21, line: 53, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1940, file: !21, line: 1923, baseType: !1965, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!151, !728, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !21, line: 1858, size: 128, elements: !1970)
!1970 = !{!1971, !1976}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1969, file: !21, line: 1859, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !21, line: 1855, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!277, !1968, !280, !151, !750, !127, !13}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1969, file: !21, line: 1860, baseType: !750, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1940, file: !21, line: 1924, baseType: !1978, size: 64, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1981, !728, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1982, line: 59, baseType: !13)
!1982 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !21, line: 61, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1940, file: !21, line: 1925, baseType: !1986, size: 64, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!980, !728, !13, !171}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1940, file: !21, line: 1926, baseType: !1986, size: 64, offset: 640)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1940, file: !21, line: 1927, baseType: !1991, size: 64, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!151, !728, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !693, line: 625, size: 1344, elements: !1996)
!1996 = !{!1997, !2006, !2007, !2015, !2022, !2023, !2028, !2029, !2034, !2035, !2038, !2042, !2043, !2044, !2045, !2046, !2049}
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !693, line: 628, baseType: !1998, size: 128)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !693, line: 628, size: 128, elements: !1999)
!1999 = !{!2000, !2005}
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !693, line: 629, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !693, line: 629, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2001, file: !693, line: 631, baseType: !171, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2001, file: !693, line: 632, baseType: !171, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1998, file: !693, line: 635, baseType: !267, size: 128, align: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1995, file: !693, line: 639, baseType: !691, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1995, file: !693, line: 640, baseType: !2008, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2009, line: 297, baseType: !2010)
!2009 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2009, line: 297, size: 64, elements: !2011)
!2011 = !{!2012}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2010, file: !2009, line: 297, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2014, line: 19, baseType: !171)
!2014 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !693, line: 646, baseType: !2016, size: 64, offset: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !693, line: 646, size: 64, elements: !2017)
!2017 = !{!2018, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2016, file: !693, line: 647, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !693, line: 542, baseType: !171)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2016, file: !693, line: 648, baseType: !2020, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1995, file: !693, line: 666, baseType: !151, size: 32, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1995, file: !693, line: 667, baseType: !2024, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !693, line: 579, size: 320, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2025, file: !693, line: 580, baseType: !176, size: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1995, file: !693, line: 670, baseType: !277, size: 8, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1995, file: !693, line: 681, baseType: !2030, size: 256, offset: 512)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !693, line: 678, size: 256, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2030, file: !693, line: 679, baseType: !167, size: 192, align: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2030, file: !693, line: 680, baseType: !171, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1995, file: !693, line: 689, baseType: !161, size: 128, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1995, file: !693, line: 691, baseType: !2036, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !693, line: 691, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1995, file: !693, line: 694, baseType: !2039, size: 64, offset: 960)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !693, line: 694, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1995, file: !693, line: 697, baseType: !171, size: 64, offset: 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1995, file: !693, line: 699, baseType: !728, size: 64, offset: 1088)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1995, file: !693, line: 700, baseType: !78, size: 64, offset: 1152)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1995, file: !693, line: 711, baseType: !87, size: 64, offset: 1216)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1995, file: !693, line: 717, baseType: !2047, size: 64, offset: 1280)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !395, line: 54, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1995, file: !693, line: 722, baseType: !2050, offset: 1344)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !693, line: 570, elements: !721)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1940, file: !21, line: 1928, baseType: !171, size: 64, offset: 768)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1940, file: !21, line: 1929, baseType: !2053, size: 64, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!151, !865, !728}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1940, file: !21, line: 1930, baseType: !2057, size: 64, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!151, !728, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !21, line: 1061, baseType: !78)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1940, file: !21, line: 1931, baseType: !2053, size: 64, offset: 960)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1940, file: !21, line: 1932, baseType: !2063, size: 64, offset: 1024)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!151, !728, !750, !750, !151}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1940, file: !21, line: 1933, baseType: !2067, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!151, !151, !728, !151}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1940, file: !21, line: 1934, baseType: !2071, size: 64, offset: 1152)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!151, !728, !151, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !21, line: 1063, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1940, file: !21, line: 1935, baseType: !725, size: 64, offset: 1216)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1940, file: !21, line: 1936, baseType: !2078, size: 64, offset: 1280)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!151, !151}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1940, file: !21, line: 1937, baseType: !2071, size: 64, offset: 1344)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1940, file: !21, line: 1938, baseType: !2083, size: 64, offset: 1408)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!1019, !2086, !728, !1951, !1022, !13}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !395, line: 59, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1940, file: !21, line: 1939, baseType: !2089, size: 64, offset: 1472)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!1019, !728, !1951, !2086, !1022, !13}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1940, file: !21, line: 1940, baseType: !1884, size: 64, offset: 1536)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1940, file: !21, line: 1941, baseType: !2094, size: 64, offset: 1600)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!151, !728, !151, !2097, !1805}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1940, file: !21, line: 1942, baseType: !2099, size: 64, offset: 1664)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!980, !728, !151, !750, !750}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1940, file: !21, line: 1944, baseType: !2103, size: 64, offset: 1728)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !1186, !728}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1940, file: !21, line: 1948, baseType: !2107, size: 64, offset: 1792)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!1019, !728, !750, !728, !750, !1022, !13}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1940, file: !21, line: 1950, baseType: !2111, size: 64, offset: 1856)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!750, !728, !750, !728, !750, !750, !13}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1940, file: !21, line: 1953, baseType: !2063, size: 64, offset: 1920)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1940, file: !21, line: 1954, baseType: !2116, size: 64, offset: 1984)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!151, !2119, !13}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !21, line: 1911, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1940, file: !21, line: 1955, baseType: !2122, size: 64, offset: 2048)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!151, !2119, !1962, !13}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1935, file: !21, line: 723, baseType: !1136, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !866, file: !21, line: 725, baseType: !2127, size: 64, offset: 2816)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !21, line: 725, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !866, file: !21, line: 726, baseType: !1637, size: 1536, align: 64, offset: 2880)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !866, file: !21, line: 727, baseType: !161, size: 128, offset: 4416)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !21, line: 728, baseType: !2132, size: 64, offset: 4544)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !21, line: 728, size: 64, elements: !2133)
!2133 = !{!2134, !2135, !2138, !2139}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2132, file: !21, line: 729, baseType: !2086, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2132, file: !21, line: 730, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !21, line: 730, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2132, file: !21, line: 731, baseType: !290, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2132, file: !21, line: 732, baseType: !13, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !866, file: !21, line: 735, baseType: !234, size: 32, offset: 4608)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !866, file: !21, line: 738, baseType: !234, size: 32, offset: 4640)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !866, file: !21, line: 739, baseType: !1497, size: 64, offset: 4672)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !866, file: !21, line: 750, baseType: !78, size: 64, offset: 4736)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !831, file: !832, line: 91, baseType: !2145, size: 256, offset: 448)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !1501)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !831, file: !832, line: 94, baseType: !2147, size: 64, offset: 704)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2148, line: 25, size: 64, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2148, line: 26, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2148, line: 26, size: 64, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2151, file: !2148, line: 28, baseType: !128, size: 64, align: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2148, line: 30, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2151, file: !2148, line: 30, size: 64, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2155, file: !2148, line: 31, baseType: !710, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2155, file: !2148, line: 32, baseType: !151, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !831, file: !832, line: 95, baseType: !1516, size: 64, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !831, file: !832, line: 96, baseType: !1077, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !831, file: !832, line: 97, baseType: !171, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !831, file: !832, line: 98, baseType: !78, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !832, line: 100, baseType: !2164, size: 128, offset: 1024)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !832, line: 100, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2164, file: !832, line: 101, baseType: !161, size: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2164, file: !832, line: 102, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !831, file: !832, line: 104, baseType: !161, size: 128, offset: 1152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !831, file: !832, line: 105, baseType: !161, size: 128, offset: 1280)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !831, file: !832, line: 113, baseType: !2172, size: 128, offset: 1408)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !832, line: 109, size: 128, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2172, file: !832, line: 110, baseType: !351, size: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2172, file: !832, line: 111, baseType: !841, size: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2172, file: !832, line: 112, baseType: !267, size: 128, align: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !826, file: !827, line: 72, baseType: !1077, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !826, file: !827, line: 73, baseType: !151, size: 32, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !826, file: !827, line: 74, baseType: !905, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !821, file: !822, line: 10, baseType: !830, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !729, file: !21, line: 1015, baseType: !865, size: 64, offset: 1344)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !729, file: !21, line: 1016, baseType: !1938, size: 64, offset: 1408)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !729, file: !21, line: 1018, baseType: !127, size: 64, offset: 1472)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !729, file: !21, line: 1020, baseType: !78, size: 64, offset: 1536)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !729, file: !21, line: 1023, baseType: !78, size: 64, offset: 1600)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !729, file: !21, line: 1027, baseType: !2187, size: 64, offset: 1664)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !729, file: !21, line: 1029, baseType: !1636, size: 64, offset: 1728)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !729, file: !21, line: 1030, baseType: !1593, size: 32, offset: 1792)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !729, file: !21, line: 1031, baseType: !1593, size: 32, offset: 1824)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !696, file: !693, line: 756, baseType: !171, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !696, file: !693, line: 757, baseType: !171, size: 64, offset: 768)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !696, file: !693, line: 760, baseType: !171, size: 64, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !696, file: !693, line: 761, baseType: !171, size: 64, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !696, file: !693, line: 763, baseType: !171, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !696, file: !693, line: 764, baseType: !2197, size: 64, offset: 1024)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2009, line: 299, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2009, line: 299, size: 64, elements: !2200)
!2200 = !{!2201}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2199, file: !2009, line: 299, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2014, line: 18, baseType: !171)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !696, file: !693, line: 773, baseType: !147, size: 32, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !696, file: !693, line: 785, baseType: !147, size: 32, offset: 1120)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !696, file: !693, line: 795, baseType: !2206, size: 64, offset: 1152)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !693, line: 726, size: 128, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2207, file: !693, line: 727, baseType: !127, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2207, file: !693, line: 728, baseType: !151, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !696, file: !693, line: 801, baseType: !171, size: 64, offset: 1216)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !696, file: !693, line: 804, baseType: !87, size: 64, offset: 1280)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !696, file: !693, line: 806, baseType: !151, size: 32, offset: 1344)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !696, file: !693, line: 808, baseType: !710, size: 32, offset: 1376)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !696, file: !693, line: 823, baseType: !176, size: 320, offset: 1408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !696, file: !693, line: 825, baseType: !161, size: 128, offset: 1728)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !696, file: !693, line: 845, baseType: !151, size: 32, offset: 1856)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !696, file: !693, line: 849, baseType: !171, size: 64, offset: 1920)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !696, file: !693, line: 850, baseType: !171, size: 64, offset: 1984)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !696, file: !693, line: 852, baseType: !171, size: 64, offset: 2048)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !696, file: !693, line: 853, baseType: !171, size: 64, offset: 2112)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !696, file: !693, line: 854, baseType: !89, size: 64, offset: 2176)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !696, file: !693, line: 855, baseType: !171, size: 64, offset: 2240)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !696, file: !693, line: 856, baseType: !171, size: 64, offset: 2304)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !696, file: !693, line: 857, baseType: !171, size: 64, offset: 2368)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !696, file: !693, line: 858, baseType: !171, size: 64, offset: 2432)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !696, file: !693, line: 865, baseType: !565, size: 32, offset: 2496)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !696, file: !693, line: 867, baseType: !710, size: 32, offset: 2528)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !696, file: !693, line: 869, baseType: !171, size: 64, offset: 2560)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !696, file: !693, line: 869, baseType: !171, size: 64, offset: 2624)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !696, file: !693, line: 869, baseType: !171, size: 64, offset: 2688)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !696, file: !693, line: 869, baseType: !171, size: 64, offset: 2752)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !696, file: !693, line: 870, baseType: !171, size: 64, offset: 2816)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !696, file: !693, line: 870, baseType: !171, size: 64, offset: 2880)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !696, file: !693, line: 870, baseType: !171, size: 64, offset: 2944)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !696, file: !693, line: 871, baseType: !171, size: 64, offset: 3008)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !696, file: !693, line: 871, baseType: !171, size: 64, offset: 3072)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !696, file: !693, line: 871, baseType: !171, size: 64, offset: 3136)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !696, file: !693, line: 871, baseType: !171, size: 64, offset: 3200)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !696, file: !693, line: 873, baseType: !2241, size: 3328, offset: 3264)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 3328, elements: !2242)
!2242 = !{!2243}
!2243 = !DISubrange(count: 52)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !696, file: !693, line: 875, baseType: !2245, size: 1280, offset: 6592)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1280, elements: !300)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !696, file: !693, line: 877, baseType: !2247, size: 64, offset: 7872)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !693, line: 877, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !693, line: 880, baseType: !2250, size: 1088, offset: 7936)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2251, line: 72, baseType: !2252)
!2251 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2251, line: 23, size: 1088, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2261, !2262, !2263, !2264, !2268, !2269, !2270}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2252, file: !2251, line: 28, baseType: !127, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2252, file: !2251, line: 38, baseType: !89, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2252, file: !2251, line: 40, baseType: !171, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2252, file: !2251, line: 43, baseType: !176, size: 320, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2252, file: !2251, line: 44, baseType: !2259, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2251, line: 44, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !2251, line: 48, baseType: !171, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2252, file: !2251, line: 59, baseType: !742, size: 256, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2252, file: !2251, line: 60, baseType: !78, size: 64, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2252, file: !2251, line: 61, baseType: !2265, size: 64, offset: 960)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2251, line: 61, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2252, file: !2251, line: 63, baseType: !147, size: 32, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2252, file: !2251, line: 69, baseType: !211, size: 16, offset: 1056)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2252, file: !2251, line: 70, baseType: !2271, size: 16, offset: 1072)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !94, line: 18, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !96, line: 23, baseType: !238)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !693, line: 882, baseType: !171, size: 64, offset: 9024)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !696, file: !693, line: 885, baseType: !710, size: 32, offset: 9088)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !696, file: !693, line: 886, baseType: !2276, size: 64, offset: 9152)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !693, line: 732, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !696, file: !693, line: 901, baseType: !371, size: 64, offset: 9216)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !696, file: !693, line: 904, baseType: !728, size: 64, offset: 9280)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !696, file: !693, line: 906, baseType: !2281, size: 64, offset: 9344)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !693, line: 906, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !696, file: !693, line: 930, baseType: !147, size: 32, offset: 9408)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !696, file: !693, line: 933, baseType: !147, size: 32, offset: 9440)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !696, file: !693, line: 935, baseType: !2286, size: 64, offset: 9472)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !50, line: 103, size: 64, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2286, file: !50, line: 104, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !50, line: 101, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !696, file: !693, line: 940, baseType: !87, size: 64, offset: 9536)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !696, file: !693, line: 942, baseType: !1619, size: 256, offset: 9600)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !692, file: !693, line: 986, baseType: !2294, offset: 10240)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, elements: !385)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !394, file: !395, line: 882, baseType: !691, size: 64, offset: 9792)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !394, file: !395, line: 884, baseType: !151, size: 32, offset: 9856)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !394, file: !395, line: 885, baseType: !151, size: 32, offset: 9888)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !394, file: !395, line: 886, baseType: !151, size: 32, offset: 9920)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !394, file: !395, line: 888, baseType: !151, size: 32, offset: 9952)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !394, file: !395, line: 890, baseType: !171, size: 64, offset: 9984)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !394, file: !395, line: 893, baseType: !13, size: 32, offset: 10048)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !394, file: !395, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !394, file: !395, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !394, file: !395, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !394, file: !395, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !394, file: !395, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !394, file: !395, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !394, file: !395, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !394, file: !395, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !394, file: !395, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !394, file: !395, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !394, file: !395, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !394, file: !395, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !394, file: !395, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !394, file: !395, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !394, file: !395, line: 969, baseType: !171, size: 64, offset: 10176)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !394, file: !395, line: 971, baseType: !2318, size: 448, offset: 10240)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 448, elements: !2319)
!2319 = !{!2320, !2321, !2326}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2318, file: !37, line: 26, baseType: !171, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2318, file: !37, line: 27, baseType: !2322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!980, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !37, line: 28, baseType: !2327, size: 320, offset: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2318, file: !37, line: 28, size: 320, elements: !2328)
!2328 = !{!2329, !2339, !2364}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2327, file: !37, line: 37, baseType: !2330, size: 320)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !37, line: 30, size: 320, elements: !2331)
!2331 = !{!2332, !2334, !2335, !2336, !2337, !2338}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2330, file: !37, line: 31, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2330, file: !37, line: 32, baseType: !233, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !37, line: 33, baseType: !233, size: 32, offset: 96)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2330, file: !37, line: 34, baseType: !233, size: 32, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2330, file: !37, line: 35, baseType: !127, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2330, file: !37, line: 36, baseType: !2333, size: 64, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2327, file: !37, line: 47, baseType: !2340, size: 192)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !37, line: 39, size: 192, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2363}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2340, file: !37, line: 40, baseType: !557, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2340, file: !37, line: 41, baseType: !36, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !2340, file: !37, line: 42, baseType: !2345, size: 64, offset: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2340, file: !37, line: 42, size: 64, elements: !2346)
!2346 = !{!2347, !2355}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2345, file: !37, line: 43, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2350, line: 7, size: 128, elements: !2351)
!2350 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2351 = !{!2352, !2354}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2349, file: !2350, line: 8, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !106, line: 93, baseType: !97)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2349, file: !2350, line: 9, baseType: !97, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2345, file: !37, line: 44, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2358, line: 7, size: 64, elements: !2359)
!2358 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2359 = !{!2360, !2362}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2357, file: !2358, line: 8, baseType: !2361, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2358, line: 5, baseType: !155)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2357, file: !2358, line: 9, baseType: !155, size: 32, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2340, file: !37, line: 46, baseType: !127, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2327, file: !37, line: 55, baseType: !2365, size: 256)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !37, line: 49, size: 256, elements: !2366)
!2366 = !{!2367, !2370, !2371, !2372, !2373}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2365, file: !37, line: 50, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2365, file: !37, line: 51, baseType: !151, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2365, file: !37, line: 52, baseType: !151, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2365, file: !37, line: 53, baseType: !171, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2365, file: !37, line: 54, baseType: !171, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !394, file: !395, line: 973, baseType: !2375, size: 32, offset: 10688)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !80, line: 27, baseType: !2376)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !106, line: 28, baseType: !151)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !394, file: !395, line: 974, baseType: !2375, size: 32, offset: 10720)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !394, file: !395, line: 978, baseType: !171, size: 64, offset: 10752)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !394, file: !395, line: 987, baseType: !393, size: 64, offset: 10816)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !394, file: !395, line: 990, baseType: !393, size: 64, offset: 10880)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !394, file: !395, line: 995, baseType: !161, size: 128, offset: 10944)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !394, file: !395, line: 996, baseType: !161, size: 128, offset: 11072)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !394, file: !395, line: 997, baseType: !393, size: 64, offset: 11200)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !394, file: !395, line: 1005, baseType: !161, size: 128, offset: 11264)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !394, file: !395, line: 1006, baseType: !161, size: 128, offset: 11392)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !394, file: !395, line: 1009, baseType: !778, size: 64, offset: 11520)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !394, file: !395, line: 1010, baseType: !2388, size: 512, offset: 11584)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 512, elements: !300)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !394, file: !395, line: 1011, baseType: !161, size: 128, offset: 12096)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !394, file: !395, line: 1012, baseType: !161, size: 128, offset: 12224)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !394, file: !395, line: 1014, baseType: !2392, size: 64, offset: 12352)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2394, line: 26, size: 256, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2393, file: !2394, line: 27, baseType: !13, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2393, file: !2394, line: 28, baseType: !2398, size: 192, offset: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2399, line: 43, size: 192, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2398, file: !2399, line: 44, baseType: !187, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2398, file: !2399, line: 45, baseType: !161, size: 128, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !394, file: !395, line: 1017, baseType: !1180, size: 64, offset: 12416)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !394, file: !395, line: 1020, baseType: !1180, size: 64, offset: 12480)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !394, file: !395, line: 1023, baseType: !78, size: 64, offset: 12544)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !394, file: !395, line: 1025, baseType: !127, size: 64, offset: 12608)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !394, file: !395, line: 1026, baseType: !127, size: 64, offset: 12672)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !394, file: !395, line: 1031, baseType: !127, size: 64, offset: 12736)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !394, file: !395, line: 1032, baseType: !2410, size: 192, offset: 12800)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !395, line: 324, size: 192, elements: !2411)
!2411 = !{!2412, !2413, !2414}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2410, file: !395, line: 326, baseType: !127, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2410, file: !395, line: 327, baseType: !127, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2410, file: !395, line: 328, baseType: !187, size: 32, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !394, file: !395, line: 1041, baseType: !171, size: 64, offset: 12992)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !394, file: !395, line: 1042, baseType: !171, size: 64, offset: 13056)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !394, file: !395, line: 1045, baseType: !127, size: 64, offset: 13120)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !394, file: !395, line: 1048, baseType: !127, size: 64, offset: 13184)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !394, file: !395, line: 1051, baseType: !171, size: 64, offset: 13248)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !394, file: !395, line: 1052, baseType: !171, size: 64, offset: 13312)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !394, file: !395, line: 1055, baseType: !2422, size: 640, offset: 13376)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2423, line: 132, size: 640, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2424 = !{!2425, !2431, !2432}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2422, file: !2423, line: 133, baseType: !2426, size: 576)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, size: 576, elements: !5)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2423, line: 117, size: 192, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2427, file: !2423, line: 118, baseType: !127, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2427, file: !2423, line: 119, baseType: !571, size: 128, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2422, file: !2423, line: 134, baseType: !13, size: 32, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2422, file: !2423, line: 135, baseType: !13, size: 32, offset: 608)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !394, file: !395, line: 1058, baseType: !2434, size: 448, offset: 14016)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2423, line: 144, size: 448, elements: !2435)
!2435 = !{!2436, !2437, !2438}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2434, file: !2423, line: 145, baseType: !267, size: 128, align: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2434, file: !2423, line: 146, baseType: !742, size: 256, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2434, file: !2423, line: 147, baseType: !13, size: 32, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !394, file: !395, line: 1064, baseType: !81, size: 64, offset: 14464)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !394, file: !395, line: 1067, baseType: !81, size: 64, offset: 14528)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !394, file: !395, line: 1070, baseType: !81, size: 64, offset: 14592)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !394, file: !395, line: 1074, baseType: !137, size: 64, offset: 14656)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !394, file: !395, line: 1084, baseType: !2444, size: 128, offset: 14720)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1510)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !394, file: !395, line: 1086, baseType: !2446, size: 64, offset: 14848)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !395, line: 55, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !394, file: !395, line: 1089, baseType: !2449, size: 64, offset: 14912)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2450, line: 12, size: 64, elements: !2451)
!2450 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2451 = !{!2452}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2449, file: !2450, line: 13, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2450, line: 8, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !394, file: !395, line: 1090, baseType: !2456, size: 128, offset: 14976)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2457, line: 13, size: 128, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2456, file: !2457, line: 14, baseType: !161, size: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !394, file: !395, line: 1097, baseType: !2461, size: 64, offset: 15104)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !395, line: 50, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !394, file: !395, line: 1100, baseType: !2464, size: 64, offset: 15168)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !395, line: 1100, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !394, file: !395, line: 1103, baseType: !2467, size: 64, offset: 15232)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !395, line: 53, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !394, file: !395, line: 1107, baseType: !2470, size: 64, offset: 15296)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !395, line: 56, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !394, file: !395, line: 1110, baseType: !2473, size: 64, offset: 15360)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2475, line: 93, size: 8768, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2526, !2535, !2536, !2538, !2539, !2540, !2543, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2581, !2582, !2589, !2599, !2602, !2603, !2606, !2607, !2608, !2609, !2610, !2611}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2474, file: !2475, line: 94, baseType: !142, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2474, file: !2475, line: 95, baseType: !147, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2474, file: !2475, line: 96, baseType: !151, size: 32, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2474, file: !2475, line: 97, baseType: !151, size: 32, offset: 96)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2474, file: !2475, line: 98, baseType: !161, size: 128, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2474, file: !2475, line: 100, baseType: !791, size: 192, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2474, file: !2475, line: 103, baseType: !393, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2474, file: !2475, line: 106, baseType: !2485, size: 192, offset: 512)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !376, line: 32, size: 192, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2485, file: !376, line: 33, baseType: !161, size: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2485, file: !376, line: 34, baseType: !2489, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2490, line: 25, baseType: !2491)
!2490 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2490, line: 23, size: 64, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2491, file: !2490, line: 24, baseType: !642, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2474, file: !2475, line: 109, baseType: !786, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2474, file: !2475, line: 112, baseType: !151, size: 32, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2474, file: !2475, line: 114, baseType: !151, size: 32, offset: 800)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2474, file: !2475, line: 115, baseType: !393, size: 64, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2474, file: !2475, line: 118, baseType: !151, size: 32, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2474, file: !2475, line: 119, baseType: !13, size: 32, offset: 928)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2474, file: !2475, line: 121, baseType: !2501, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2475, line: 80, size: 448, elements: !2503)
!2503 = !{!2504, !2505, !2511}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2502, file: !2475, line: 81, baseType: !147, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2502, file: !2475, line: 82, baseType: !2506, size: 128, offset: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2475, line: 75, size: 128, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2506, file: !2475, line: 76, baseType: !393, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2506, file: !2475, line: 77, baseType: !2510, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2502, file: !2475, line: 83, baseType: !2393, size: 256, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2474, file: !2475, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2474, file: !2475, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2474, file: !2475, line: 138, baseType: !13, size: 32, offset: 1056)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2474, file: !2475, line: 139, baseType: !161, size: 128, offset: 1088)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2474, file: !2475, line: 142, baseType: !510, size: 512, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2474, file: !2475, line: 143, baseType: !518, size: 64, offset: 1728)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2474, file: !2475, line: 150, baseType: !2519, size: 256, offset: 1792)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 256, elements: !2524)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2475, line: 38, size: 128, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2520, file: !2475, line: 39, baseType: !127, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2520, file: !2475, line: 40, baseType: !127, size: 64, offset: 64)
!2524 = !{!2525}
!2525 = !DISubrange(count: 2)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2474, file: !2475, line: 156, baseType: !2527, size: 192, offset: 2048)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2475, line: 66, size: 192, elements: !2528)
!2528 = !{!2529}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2527, file: !2475, line: 67, baseType: !2530, size: 192)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2475, line: 47, size: 192, elements: !2531)
!2531 = !{!2532, !2533, !2534}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2530, file: !2475, line: 48, baseType: !89, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2530, file: !2475, line: 49, baseType: !89, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2530, file: !2475, line: 50, baseType: !89, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2474, file: !2475, line: 160, baseType: !2422, size: 640, offset: 2240)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2474, file: !2475, line: 163, baseType: !2537, size: 256, offset: 2880)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 256, elements: !300)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2474, file: !2475, line: 169, baseType: !778, size: 64, offset: 3136)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2474, file: !2475, line: 172, baseType: !151, size: 32, offset: 3200)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2474, file: !2475, line: 174, baseType: !2541, size: 64, offset: 3264)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2475, line: 174, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2474, file: !2475, line: 185, baseType: !2544, size: 64, offset: 3328)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !561, line: 860, baseType: !2545)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 853, size: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2545, file: !561, line: 858, baseType: !836, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2545, file: !561, line: 859, baseType: !710, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2474, file: !2475, line: 186, baseType: !127, size: 64, offset: 3392)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2474, file: !2475, line: 186, baseType: !127, size: 64, offset: 3456)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2474, file: !2475, line: 186, baseType: !127, size: 64, offset: 3520)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2474, file: !2475, line: 186, baseType: !127, size: 64, offset: 3584)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2474, file: !2475, line: 187, baseType: !127, size: 64, offset: 3648)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2474, file: !2475, line: 188, baseType: !127, size: 64, offset: 3712)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2474, file: !2475, line: 189, baseType: !2410, size: 192, offset: 3776)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2474, file: !2475, line: 190, baseType: !171, size: 64, offset: 3968)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2474, file: !2475, line: 190, baseType: !171, size: 64, offset: 4032)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2474, file: !2475, line: 190, baseType: !171, size: 64, offset: 4096)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2474, file: !2475, line: 190, baseType: !171, size: 64, offset: 4160)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2474, file: !2475, line: 191, baseType: !171, size: 64, offset: 4224)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2474, file: !2475, line: 191, baseType: !171, size: 64, offset: 4288)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2474, file: !2475, line: 191, baseType: !171, size: 64, offset: 4352)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2474, file: !2475, line: 191, baseType: !171, size: 64, offset: 4416)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2474, file: !2475, line: 192, baseType: !171, size: 64, offset: 4480)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2474, file: !2475, line: 192, baseType: !171, size: 64, offset: 4544)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2474, file: !2475, line: 192, baseType: !171, size: 64, offset: 4608)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2474, file: !2475, line: 192, baseType: !171, size: 64, offset: 4672)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2474, file: !2475, line: 193, baseType: !171, size: 64, offset: 4736)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2474, file: !2475, line: 193, baseType: !171, size: 64, offset: 4800)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2474, file: !2475, line: 194, baseType: !2571, size: 448, offset: 4864)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2572, line: 12, size: 448, elements: !2573)
!2572 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2571, file: !2572, line: 15, baseType: !127, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2571, file: !2572, line: 17, baseType: !127, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2571, file: !2572, line: 19, baseType: !127, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2571, file: !2572, line: 21, baseType: !127, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2571, file: !2572, line: 29, baseType: !127, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2571, file: !2572, line: 35, baseType: !127, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2571, file: !2572, line: 44, baseType: !127, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2474, file: !2475, line: 202, baseType: !129, size: 64, offset: 5312)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2474, file: !2475, line: 213, baseType: !2583, size: 2048, offset: 5376)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2584, size: 2048, elements: !1510)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2585, line: 43, size: 128, elements: !2586)
!2585 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2586 = !{!2587, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2584, file: !2585, line: 44, baseType: !1024, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2584, file: !2585, line: 45, baseType: !1024, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2474, file: !2475, line: 216, baseType: !2590, size: 448, offset: 7424)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2475, line: 30, size: 448, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2590, file: !2475, line: 31, baseType: !151, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2590, file: !2475, line: 32, baseType: !980, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2590, file: !2475, line: 33, baseType: !171, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2590, file: !2475, line: 34, baseType: !127, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2590, file: !2475, line: 34, baseType: !127, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2590, file: !2475, line: 35, baseType: !171, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2590, file: !2475, line: 35, baseType: !171, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2474, file: !2475, line: 219, baseType: !2600, size: 64, offset: 7872)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2475, line: 219, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2474, file: !2475, line: 222, baseType: !13, size: 32, offset: 7936)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2474, file: !2475, line: 223, baseType: !2604, size: 64, offset: 8000)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2475, line: 223, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2474, file: !2475, line: 230, baseType: !277, size: 8, offset: 8064)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2474, file: !2475, line: 231, baseType: !238, size: 16, offset: 8080)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2474, file: !2475, line: 232, baseType: !238, size: 16, offset: 8096)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2474, file: !2475, line: 234, baseType: !691, size: 64, offset: 8128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2474, file: !2475, line: 237, baseType: !742, size: 256, offset: 8192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2474, file: !2475, line: 243, baseType: !176, size: 320, offset: 8448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !394, file: !395, line: 1111, baseType: !2613, size: 64, offset: 15424)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2475, line: 20, size: 16640, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2614, file: !2475, line: 21, baseType: !710, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2614, file: !2475, line: 22, baseType: !142, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2614, file: !2475, line: 23, baseType: !791, size: 192, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2614, file: !2475, line: 24, baseType: !2620, size: 16384, offset: 256)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 16384, elements: !2641)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !376, line: 51, size: 256, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2621, file: !376, line: 52, baseType: !2624, size: 256)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !376, line: 37, size: 256, elements: !2625)
!2625 = !{!2626, !2633, !2634, !2640}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2624, file: !376, line: 39, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2628, line: 83, baseType: !2629)
!2628 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2628, line: 82, baseType: !2631)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !151}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2624, file: !376, line: 40, baseType: !171, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2624, file: !376, line: 46, baseType: !2635, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2628, line: 86, baseType: !2636)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2628, line: 85, baseType: !2638)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2624, file: !376, line: 48, baseType: !2489, size: 64, offset: 192)
!2641 = !{!2642}
!2642 = !DISubrange(count: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !394, file: !395, line: 1112, baseType: !2489, size: 64, offset: 15488)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !394, file: !395, line: 1113, baseType: !2489, size: 64, offset: 15552)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !394, file: !395, line: 1115, baseType: !2489, size: 64, offset: 15616)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !394, file: !395, line: 1116, baseType: !2485, size: 192, offset: 15680)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !394, file: !395, line: 1117, baseType: !171, size: 64, offset: 15872)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !394, file: !395, line: 1118, baseType: !1022, size: 64, offset: 15936)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !394, file: !395, line: 1119, baseType: !13, size: 32, offset: 16000)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !394, file: !395, line: 1121, baseType: !270, size: 64, offset: 16064)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !394, file: !395, line: 1125, baseType: !2652, size: 64, offset: 16128)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !395, line: 43, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !394, file: !395, line: 1127, baseType: !99, size: 32, offset: 16192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !394, file: !395, line: 1128, baseType: !13, size: 32, offset: 16224)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !394, file: !395, line: 1130, baseType: !2657, size: 128, offset: 16256)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2658, line: 37, size: 128, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2659 = !{!2660, !2661, !2662}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2657, file: !2658, line: 38, baseType: !151, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2657, file: !2658, line: 39, baseType: !147, size: 32, offset: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2657, file: !2658, line: 40, baseType: !2663, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2658, line: 24, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !394, file: !395, line: 1131, baseType: !2666, size: 256, offset: 16384)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2667, line: 12, size: 256, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2668 = !{!2669, !2670, !2671, !2672}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2666, file: !2667, line: 13, baseType: !290, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2666, file: !2667, line: 14, baseType: !171, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2666, file: !2667, line: 15, baseType: !171, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2666, file: !2667, line: 16, baseType: !277, size: 8, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !394, file: !395, line: 1134, baseType: !127, size: 64, offset: 16640)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !394, file: !395, line: 1135, baseType: !127, size: 64, offset: 16704)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !394, file: !395, line: 1138, baseType: !710, size: 32, offset: 16768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !394, file: !395, line: 1141, baseType: !187, size: 32, offset: 16800)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !394, file: !395, line: 1143, baseType: !2678, size: 64, offset: 16832)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !395, line: 735, size: 64, elements: !2679)
!2679 = !{!2680}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2678, file: !395, line: 736, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !394, file: !395, line: 1147, baseType: !574, size: 128, offset: 16896)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !394, file: !395, line: 1149, baseType: !393, size: 64, offset: 17024)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !394, file: !395, line: 1151, baseType: !2685, size: 64, offset: 17088)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !395, line: 1151, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !394, file: !395, line: 1188, baseType: !78, size: 64, offset: 17152)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !394, file: !395, line: 1191, baseType: !2689, size: 64, offset: 17216)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !395, line: 44, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !394, file: !395, line: 1194, baseType: !2692, size: 64, offset: 17280)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !395, line: 45, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !394, file: !395, line: 1197, baseType: !2695, size: 64, offset: 17344)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !395, line: 61, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !394, file: !395, line: 1199, baseType: !2698, size: 64, offset: 17408)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2700, line: 99, size: 128, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2701 = !{!2702, !2703, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2699, file: !2700, line: 100, baseType: !87, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2699, file: !2700, line: 101, baseType: !147, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2699, file: !2700, line: 103, baseType: !213, size: 16, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !394, file: !395, line: 1202, baseType: !2706, size: 64, offset: 17472)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !395, line: 48, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !394, file: !395, line: 1205, baseType: !171, size: 64, offset: 17536)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !394, file: !395, line: 1206, baseType: !2710, size: 64, offset: 17600)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !376, line: 14, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !376, line: 12, size: 384, elements: !2713)
!2713 = !{!2714}
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !2712, file: !376, line: 13, baseType: !2715, size: 384)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2712, file: !376, line: 13, size: 384, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2715, file: !376, line: 13, baseType: !151, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2715, file: !376, line: 13, baseType: !151, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2715, file: !376, line: 13, baseType: !151, size: 32, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2715, file: !376, line: 13, baseType: !2721, size: 256, offset: 128)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2722, line: 37, size: 256, elements: !2723)
!2722 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2723 = !{!2724, !2729, !2742, !2748, !2757, !2784, !2789}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2721, file: !2722, line: 42, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 39, size: 64, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2725, file: !2722, line: 40, baseType: !2376, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2725, file: !2722, line: 41, baseType: !105, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2721, file: !2722, line: 50, baseType: !2730, size: 192)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 45, size: 192, elements: !2731)
!2731 = !{!2732, !2734, !2735, !2741}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2730, file: !2722, line: 46, baseType: !2733, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !106, line: 95, baseType: !151)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2730, file: !2722, line: 47, baseType: !151, size: 32, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2730, file: !2722, line: 48, baseType: !2736, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2722, line: 11, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2722, line: 8, size: 64, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2737, file: !2722, line: 9, baseType: !151, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2737, file: !2722, line: 10, baseType: !78, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2730, file: !2722, line: 49, baseType: !151, size: 32, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2721, file: !2722, line: 57, baseType: !2743, size: 128)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 53, size: 128, elements: !2744)
!2744 = !{!2745, !2746, !2747}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2743, file: !2722, line: 54, baseType: !2376, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2743, file: !2722, line: 55, baseType: !105, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2743, file: !2722, line: 56, baseType: !2736, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2721, file: !2722, line: 66, baseType: !2749, size: 256)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 60, size: 256, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2756}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2749, file: !2722, line: 61, baseType: !2376, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2749, file: !2722, line: 62, baseType: !105, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2749, file: !2722, line: 63, baseType: !151, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2749, file: !2722, line: 64, baseType: !2755, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !106, line: 94, baseType: !1021)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2749, file: !2722, line: 65, baseType: !2755, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2721, file: !2722, line: 105, baseType: !2758, size: 256)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 69, size: 256, elements: !2759)
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2758, file: !2722, line: 70, baseType: !78, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, scope: !2758, file: !2722, line: 79, baseType: !2762, size: 192, offset: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2758, file: !2722, line: 79, size: 192, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2773, !2778}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2762, file: !2722, line: 81, baseType: !151, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2762, file: !2722, line: 86, baseType: !238, size: 16)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2762, file: !2722, line: 92, baseType: !2767, size: 192)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2762, file: !2722, line: 88, size: 192, elements: !2768)
!2768 = !{!2769, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2767, file: !2722, line: 89, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !553)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2767, file: !2722, line: 90, baseType: !78, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2767, file: !2722, line: 91, baseType: !78, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2762, file: !2722, line: 97, baseType: !2774, size: 96)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2762, file: !2722, line: 94, size: 96, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2774, file: !2722, line: 95, baseType: !2770, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2774, file: !2722, line: 96, baseType: !234, size: 32, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2762, file: !2722, line: 103, baseType: !2779, size: 128)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2762, file: !2722, line: 99, size: 128, elements: !2780)
!2780 = !{!2781, !2782, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2779, file: !2722, line: 100, baseType: !171, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2779, file: !2722, line: 101, baseType: !234, size: 32, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2779, file: !2722, line: 102, baseType: !234, size: 32, offset: 96)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2721, file: !2722, line: 111, baseType: !2785, size: 128)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 108, size: 128, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2785, file: !2722, line: 109, baseType: !980, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2785, file: !2722, line: 110, baseType: !151, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2721, file: !2722, line: 118, baseType: !2790, size: 128)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2722, line: 114, size: 128, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2790, file: !2722, line: 115, baseType: !78, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2790, file: !2722, line: 116, baseType: !151, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2790, file: !2722, line: 117, baseType: !13, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !394, file: !395, line: 1208, baseType: !2571, size: 448, offset: 17664)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !394, file: !395, line: 1215, baseType: !127, size: 64, offset: 18112)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !394, file: !395, line: 1217, baseType: !127, size: 64, offset: 18176)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !394, file: !395, line: 1219, baseType: !127, size: 64, offset: 18240)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !394, file: !395, line: 1223, baseType: !2800, size: 64, offset: 18304)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2801, line: 99, baseType: !2802)
!2801 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2801, line: 99, size: 64, elements: !2803)
!2803 = !{!2804}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2802, file: !2801, line: 99, baseType: !642, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !394, file: !395, line: 1225, baseType: !836, size: 32, offset: 18368)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !394, file: !395, line: 1226, baseType: !151, size: 32, offset: 18400)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !394, file: !395, line: 1227, baseType: !151, size: 32, offset: 18432)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !394, file: !395, line: 1231, baseType: !2809, size: 64, offset: 18496)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !395, line: 1231, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !394, file: !395, line: 1233, baseType: !161, size: 128, offset: 18560)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !394, file: !395, line: 1240, baseType: !2813, size: 64, offset: 18688)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !395, line: 62, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !394, file: !395, line: 1242, baseType: !2816, size: 64, offset: 18752)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !395, line: 1242, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !394, file: !395, line: 1244, baseType: !161, size: 128, offset: 18816)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !394, file: !395, line: 1245, baseType: !2820, size: 64, offset: 18944)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !395, line: 51, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !394, file: !395, line: 1246, baseType: !742, size: 256, offset: 19008)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !394, file: !395, line: 1247, baseType: !13, size: 32, offset: 19264)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !394, file: !395, line: 1250, baseType: !2825, size: 64, offset: 19328)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !395, line: 57, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !394, file: !395, line: 1251, baseType: !742, size: 256, offset: 19392)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !394, file: !395, line: 1252, baseType: !161, size: 128, offset: 19648)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !394, file: !395, line: 1259, baseType: !2047, size: 64, offset: 19776)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !394, file: !395, line: 1260, baseType: !238, size: 16, offset: 19840)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !394, file: !395, line: 1261, baseType: !238, size: 16, offset: 19856)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !394, file: !395, line: 1314, baseType: !2833, size: 64, offset: 19904)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2835, line: 62, size: 256, align: 256, elements: !2836)
!2835 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2834, file: !2835, line: 75, baseType: !234, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2834, file: !2835, line: 90, baseType: !234, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2834, file: !2835, line: 112, baseType: !128, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2834, file: !2835, line: 132, baseType: !234, size: 32, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2834, file: !2835, line: 140, baseType: !234, size: 32, offset: 160)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2834, file: !2835, line: 149, baseType: !234, size: 32, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2834, file: !2835, line: 154, baseType: !2844, offset: 224)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !385)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !394, file: !395, line: 1315, baseType: !233, size: 32, offset: 19968)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !394, file: !395, line: 1316, baseType: !233, size: 32, offset: 20000)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !394, file: !395, line: 1321, baseType: !171, size: 64, offset: 20032)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !394, file: !395, line: 1325, baseType: !151, size: 32, offset: 20096)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !394, file: !395, line: 1326, baseType: !151, size: 32, offset: 20128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !394, file: !395, line: 1327, baseType: !151, size: 32, offset: 20160)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !394, file: !395, line: 1328, baseType: !151, size: 32, offset: 20192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !394, file: !395, line: 1329, baseType: !267, size: 128, align: 64, offset: 20224)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !394, file: !395, line: 1332, baseType: !2854, size: 128, offset: 20352)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2855, line: 51, size: 128, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2856 = !{!2857, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2854, file: !2855, line: 60, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2859, line: 7, size: 64, elements: !2860)
!2859 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2858, file: !2859, line: 12, baseType: !639, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2854, file: !2855, line: 63, baseType: !277, size: 8, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2854, file: !2855, line: 70, baseType: !277, size: 8, offset: 72)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !394, file: !395, line: 1335, baseType: !2086, size: 64, offset: 20480)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !394, file: !395, line: 1337, baseType: !2866, size: 128, offset: 20544)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2855, line: 39, size: 128, elements: !2867)
!2867 = !{!2868, !2869, !2870}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2866, file: !2855, line: 40, baseType: !1656, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2866, file: !2855, line: 42, baseType: !234, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2866, file: !2855, line: 43, baseType: !234, size: 32, offset: 96)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !394, file: !395, line: 1340, baseType: !2872, size: 64, offset: 20672)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !395, line: 69, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !394, file: !395, line: 1351, baseType: !151, size: 32, offset: 20736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !394, file: !395, line: 1352, baseType: !151, size: 32, offset: 20768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !394, file: !395, line: 1354, baseType: !171, size: 64, offset: 20800)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !394, file: !395, line: 1364, baseType: !127, size: 64, offset: 20864)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !394, file: !395, line: 1365, baseType: !127, size: 64, offset: 20928)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !394, file: !395, line: 1412, baseType: !171, size: 64, offset: 20992)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !394, file: !395, line: 1453, baseType: !2881, size: 64, offset: 21056)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !395, line: 1453, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !394, file: !395, line: 1457, baseType: !2884, size: 64, offset: 21120)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !50, line: 61, size: 576, elements: !2886)
!2886 = !{!2887, !2888, !2907, !2910, !2911, !2944, !2954}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2885, file: !50, line: 62, baseType: !49, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !50, line: 64, baseType: !2889, size: 192, offset: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !50, line: 64, size: 192, elements: !2890)
!2890 = !{!2891, !2902}
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !50, line: 65, baseType: !2892, size: 192)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2889, file: !50, line: 65, size: 192, elements: !2893)
!2893 = !{!2894, !2901}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2892, file: !50, line: 66, baseType: !2895, size: 128)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2896, line: 50, size: 128, elements: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2895, file: !2896, line: 52, baseType: !171, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2895, file: !2896, line: 54, baseType: !13, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2895, file: !2896, line: 55, baseType: !13, size: 32, offset: 96)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2892, file: !50, line: 67, baseType: !171, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !50, line: 70, baseType: !2903, size: 192)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2889, file: !50, line: 70, size: 192, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2903, file: !50, line: 71, baseType: !267, size: 128, align: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2903, file: !50, line: 72, baseType: !171, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2885, file: !50, line: 76, baseType: !2908, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !50, line: 76, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2885, file: !50, line: 77, baseType: !171, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2885, file: !50, line: 79, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2896, line: 25, size: 256, elements: !2914)
!2914 = !{!2915, !2921, !2925}
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !2896, line: 26, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !2896, line: 26, size: 128, elements: !2917)
!2917 = !{!2918, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2916, file: !2896, line: 27, baseType: !2919, size: 128)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !1510)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2916, file: !2896, line: 28, baseType: !2919, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2913, file: !2896, line: 31, baseType: !2922, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2924)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2896, line: 23, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !2896, line: 33, baseType: !2926, size: 64, offset: 192)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !2896, line: 33, size: 64, elements: !2927)
!2927 = !{!2928, !2934, !2939}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2926, file: !2896, line: 38, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2896, line: 34, size: 64, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2929, file: !2896, line: 35, baseType: !155, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2929, file: !2896, line: 36, baseType: !204, size: 8, offset: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2929, file: !2896, line: 37, baseType: !204, size: 8, offset: 40)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2926, file: !2896, line: 42, baseType: !2935, size: 16)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2896, line: 39, size: 16, elements: !2936)
!2936 = !{!2937, !2938}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2935, file: !2896, line: 40, baseType: !204, size: 8)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2935, file: !2896, line: 41, baseType: !204, size: 8, offset: 8)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2926, file: !2896, line: 46, baseType: !2940, size: 16)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2896, line: 43, size: 16, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2940, file: !2896, line: 44, baseType: !204, size: 8)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2940, file: !2896, line: 45, baseType: !204, size: 8, offset: 8)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2885, file: !50, line: 81, baseType: !2945, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !50, line: 85, size: 384, elements: !2947)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2946, file: !50, line: 86, baseType: !2908, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2946, file: !50, line: 87, baseType: !171, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2946, file: !50, line: 88, baseType: !171, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2946, file: !50, line: 89, baseType: !171, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2946, file: !50, line: 90, baseType: !277, size: 8, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2946, file: !50, line: 92, baseType: !2945, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2885, file: !50, line: 82, baseType: !13, size: 32, offset: 512)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !394, file: !395, line: 1463, baseType: !2956, offset: 21184)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !395, line: 739, elements: !721)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !394, file: !395, line: 1470, baseType: !267, size: 128, align: 64, offset: 21184)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !394, file: !395, line: 1471, baseType: !142, size: 32, offset: 21312)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !394, file: !395, line: 1472, baseType: !151, size: 32, offset: 21344)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !394, file: !395, line: 1474, baseType: !393, size: 64, offset: 21376)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !394, file: !395, line: 1475, baseType: !2962, size: 320, offset: 21440)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2963, line: 11, size: 320, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2964 = !{!2965, !2966, !2967, !2972}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2962, file: !2963, line: 16, baseType: !351, size: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2962, file: !2963, line: 17, baseType: !171, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2962, file: !2963, line: 18, baseType: !2968, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !2971}
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2962, file: !2963, line: 19, baseType: !233, size: 32, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !394, file: !395, line: 1478, baseType: !2974, size: 64, offset: 21760)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !395, line: 1478, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !394, file: !395, line: 1482, baseType: !142, size: 32, offset: 21824)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !394, file: !395, line: 1489, baseType: !78, size: 64, offset: 21888)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !394, file: !395, line: 1504, baseType: !78, size: 64, offset: 21952)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !394, file: !395, line: 1505, baseType: !128, size: 64, offset: 22016)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !394, file: !395, line: 1506, baseType: !127, size: 64, offset: 22080)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !394, file: !395, line: 1507, baseType: !128, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !394, file: !395, line: 1508, baseType: !128, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !394, file: !395, line: 1509, baseType: !128, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !394, file: !395, line: 1510, baseType: !267, size: 128, align: 64, offset: 22208)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !394, file: !395, line: 1511, baseType: !151, size: 32, offset: 22336)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !394, file: !395, line: 1515, baseType: !2987, size: 64, offset: 22400)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !417, line: 56, size: 64, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2987, file: !417, line: 57, baseType: !420, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !394, file: !395, line: 1518, baseType: !2987, size: 64, offset: 22464)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !394, file: !395, line: 1528, baseType: !267, size: 128, align: 64, offset: 22528)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !394, file: !395, line: 1552, baseType: !2993, size: 35328, offset: 23040)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2994, line: 430, size: 35328, elements: !2995)
!2994 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2995 = !{!2996, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3025, !3026, !3027, !3028, !3029, !3030, !3033, !3034, !3035, !3036}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2993, file: !2994, line: 432, baseType: !2997, size: 192)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2998, size: 192, elements: !5)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2999, line: 16, size: 64, elements: !3000)
!2999 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2998, file: !2999, line: 17, baseType: !211, size: 16)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2998, file: !2999, line: 18, baseType: !211, size: 16, offset: 16)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2998, file: !2999, line: 19, baseType: !211, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2998, file: !2999, line: 19, baseType: !211, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2998, file: !2999, line: 19, baseType: !211, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2998, file: !2999, line: 19, baseType: !211, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2998, file: !2999, line: 19, baseType: !211, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2998, file: !2999, line: 20, baseType: !211, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2998, file: !2999, line: 20, baseType: !211, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2998, file: !2999, line: 20, baseType: !211, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2998, file: !2999, line: 20, baseType: !211, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2998, file: !2999, line: 20, baseType: !211, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2998, file: !2999, line: 20, baseType: !211, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2993, file: !2994, line: 436, baseType: !171, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2993, file: !2994, line: 440, baseType: !213, size: 16, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2993, file: !2994, line: 441, baseType: !213, size: 16, offset: 272)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2993, file: !2994, line: 442, baseType: !213, size: 16, offset: 288)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2993, file: !2994, line: 443, baseType: !213, size: 16, offset: 304)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2993, file: !2994, line: 447, baseType: !171, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2993, file: !2994, line: 448, baseType: !171, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2993, file: !2994, line: 459, baseType: !3022, size: 256, offset: 448)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3023, size: 256, elements: !300)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2994, line: 428, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2993, file: !2994, line: 461, baseType: !171, size: 64, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2993, file: !2994, line: 463, baseType: !171, size: 64, offset: 768)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2993, file: !2994, line: 465, baseType: !171, size: 64, offset: 832)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2993, file: !2994, line: 466, baseType: !171, size: 64, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2993, file: !2994, line: 467, baseType: !171, size: 64, offset: 960)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2993, file: !2994, line: 473, baseType: !3031, size: 64, offset: 1024)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2994, line: 10, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2993, file: !2994, line: 480, baseType: !171, size: 64, offset: 1088)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2993, file: !2994, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2993, file: !2994, line: 491, baseType: !233, size: 32, offset: 1184)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2993, file: !2994, line: 501, baseType: !3037, size: 33792, offset: 1536)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3038, line: 448, size: 33792, elements: !3039)
!3038 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3039 = !{!3040, !3041, !3042, !3204, !3205, !3211, !3212}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3037, file: !3038, line: 461, baseType: !13, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3037, file: !3038, line: 468, baseType: !171, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3037, file: !3038, line: 476, baseType: !3043, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3038, line: 356, size: 33280, align: 512, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3044, file: !3038, line: 358, baseType: !13, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3044, file: !3038, line: 361, baseType: !13, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3044, file: !3038, line: 364, baseType: !127, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3044, file: !3038, line: 367, baseType: !127, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3044, file: !3038, line: 370, baseType: !127, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3044, file: !3038, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3044, file: !3038, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3044, file: !3038, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3044, file: !3038, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3044, file: !3038, line: 397, baseType: !3056, size: 32768, offset: 512)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3038, line: 348, size: 32768, elements: !3057)
!3057 = !{!3058, !3073, !3110, !3187, !3200}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3056, file: !3038, line: 349, baseType: !3059, size: 896)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3038, line: 12, size: 896, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3072}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3059, file: !3038, line: 13, baseType: !233, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3059, file: !3038, line: 14, baseType: !233, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3059, file: !3038, line: 15, baseType: !233, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3059, file: !3038, line: 16, baseType: !233, size: 32, offset: 96)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3059, file: !3038, line: 17, baseType: !233, size: 32, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3059, file: !3038, line: 18, baseType: !233, size: 32, offset: 160)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3059, file: !3038, line: 19, baseType: !233, size: 32, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3059, file: !3038, line: 22, baseType: !3069, size: 640, offset: 224)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 640, elements: !3070)
!3070 = !{!3071}
!3071 = !DISubrange(count: 20)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3059, file: !3038, line: 25, baseType: !233, size: 32, offset: 864)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3056, file: !3038, line: 350, baseType: !3074, size: 4096, align: 128)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3038, line: 34, size: 4096, align: 128, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3095, !3096, !3097, !3099, !3101, !3105}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3074, file: !3038, line: 35, baseType: !211, size: 16)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3074, file: !3038, line: 36, baseType: !211, size: 16, offset: 16)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3074, file: !3038, line: 37, baseType: !211, size: 16, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3074, file: !3038, line: 38, baseType: !211, size: 16, offset: 48)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !3038, line: 39, baseType: !3081, size: 128, offset: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3074, file: !3038, line: 39, size: 128, elements: !3082)
!3082 = !{!3083, !3088}
!3083 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !3038, line: 40, baseType: !3084, size: 128)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3081, file: !3038, line: 40, size: 128, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3084, file: !3038, line: 41, baseType: !127, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3084, file: !3038, line: 42, baseType: !127, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !3038, line: 44, baseType: !3089, size: 128)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3081, file: !3038, line: 44, size: 128, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3089, file: !3038, line: 45, baseType: !233, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3089, file: !3038, line: 46, baseType: !233, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3089, file: !3038, line: 47, baseType: !233, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3089, file: !3038, line: 48, baseType: !233, size: 32, offset: 96)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3074, file: !3038, line: 51, baseType: !233, size: 32, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3074, file: !3038, line: 52, baseType: !233, size: 32, offset: 224)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3074, file: !3038, line: 55, baseType: !3098, size: 1024, offset: 256)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1024, elements: !1501)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3074, file: !3038, line: 58, baseType: !3100, size: 2048, offset: 1280)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 2048, elements: !2641)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3074, file: !3038, line: 60, baseType: !3102, size: 384, offset: 3328)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 384, elements: !3103)
!3103 = !{!3104}
!3104 = !DISubrange(count: 12)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !3038, line: 62, baseType: !3106, size: 384, offset: 3712)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3074, file: !3038, line: 62, size: 384, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3106, file: !3038, line: 63, baseType: !3102, size: 384)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3106, file: !3038, line: 64, baseType: !3102, size: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3056, file: !3038, line: 351, baseType: !3111, size: 1088)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3038, line: 79, size: 1088, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3186}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3111, file: !3038, line: 80, baseType: !233, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3111, file: !3038, line: 81, baseType: !233, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3111, file: !3038, line: 82, baseType: !233, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3111, file: !3038, line: 83, baseType: !233, size: 32, offset: 96)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3111, file: !3038, line: 84, baseType: !233, size: 32, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3111, file: !3038, line: 85, baseType: !233, size: 32, offset: 160)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3111, file: !3038, line: 86, baseType: !233, size: 32, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3111, file: !3038, line: 88, baseType: !3069, size: 640, offset: 224)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3111, file: !3038, line: 89, baseType: !204, size: 8, offset: 864)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3111, file: !3038, line: 90, baseType: !204, size: 8, offset: 872)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3111, file: !3038, line: 91, baseType: !204, size: 8, offset: 880)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3111, file: !3038, line: 92, baseType: !204, size: 8, offset: 888)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3111, file: !3038, line: 93, baseType: !204, size: 8, offset: 896)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3111, file: !3038, line: 94, baseType: !204, size: 8, offset: 904)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3111, file: !3038, line: 95, baseType: !3128, size: 64, offset: 960)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3130, line: 11, size: 128, elements: !3131)
!3130 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3129, file: !3130, line: 12, baseType: !980, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3129, file: !3130, line: 13, baseType: !3134, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3136, line: 103, size: 1344, elements: !3137)
!3136 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3166, !3167, !3168}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3135, file: !3136, line: 109, baseType: !171, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3135, file: !3136, line: 110, baseType: !171, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3135, file: !3136, line: 111, baseType: !171, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3135, file: !3136, line: 112, baseType: !171, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3135, file: !3136, line: 113, baseType: !171, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3135, file: !3136, line: 114, baseType: !171, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3135, file: !3136, line: 117, baseType: !171, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3135, file: !3136, line: 118, baseType: !171, size: 64, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3135, file: !3136, line: 119, baseType: !171, size: 64, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3135, file: !3136, line: 120, baseType: !171, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3135, file: !3136, line: 121, baseType: !171, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3135, file: !3136, line: 122, baseType: !171, size: 64, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3135, file: !3136, line: 123, baseType: !171, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3135, file: !3136, line: 124, baseType: !171, size: 64, offset: 832)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3135, file: !3136, line: 125, baseType: !171, size: 64, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3135, file: !3136, line: 139, baseType: !171, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3135, file: !3136, line: 142, baseType: !171, size: 64, offset: 1024)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3136, line: 144, baseType: !3156, size: 64, offset: 1088)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !3136, line: 144, size: 64, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3156, file: !3136, line: 146, baseType: !211, size: 16)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3156, file: !3136, line: 148, baseType: !127, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3156, file: !3136, line: 150, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3136, line: 59, size: 64, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3161, file: !3136, line: 61, baseType: !127, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3161, file: !3136, line: 63, baseType: !127, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3161, file: !3136, line: 65, baseType: !127, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3135, file: !3136, line: 153, baseType: !171, size: 64, offset: 1152)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3135, file: !3136, line: 154, baseType: !171, size: 64, offset: 1216)
!3168 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3136, line: 156, baseType: !3169, size: 64, offset: 1280)
!3169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !3136, line: 156, size: 64, elements: !3170)
!3170 = !{!3171, !3172, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3169, file: !3136, line: 158, baseType: !211, size: 16)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3169, file: !3136, line: 160, baseType: !127, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3169, file: !3136, line: 162, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3136, line: 69, size: 64, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3174, file: !3136, line: 71, baseType: !127, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3174, file: !3136, line: 73, baseType: !127, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3174, file: !3136, line: 75, baseType: !127, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3174, file: !3136, line: 77, baseType: !127, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3174, file: !3136, line: 80, baseType: !127, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3174, file: !3136, line: 83, baseType: !127, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3174, file: !3136, line: 86, baseType: !127, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3174, file: !3136, line: 88, baseType: !127, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3174, file: !3136, line: 93, baseType: !127, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3174, file: !3136, line: 100, baseType: !127, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3111, file: !3038, line: 96, baseType: !233, size: 32, offset: 1024)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3056, file: !3038, line: 352, baseType: !3188, size: 4608, align: 512)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3038, line: 333, size: 4608, align: 512, elements: !3189)
!3189 = !{!3190, !3191, !3198}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3188, file: !3038, line: 334, baseType: !3074, size: 4096, align: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3188, file: !3038, line: 335, baseType: !3192, size: 512, offset: 4096)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3038, line: 312, size: 512, elements: !3193)
!3193 = !{!3194, !3195, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3192, file: !3038, line: 313, baseType: !127, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3192, file: !3038, line: 314, baseType: !127, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3192, file: !3038, line: 315, baseType: !3197, size: 384, offset: 128)
!3197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !256)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3188, file: !3038, line: 336, baseType: !3199, offset: 4608)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, elements: !385)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3056, file: !3038, line: 353, baseType: !3201, size: 32768)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32768, elements: !3202)
!3202 = !{!3203}
!3203 = !DISubrange(count: 4096)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3037, file: !3038, line: 484, baseType: !3043, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3037, file: !3038, line: 491, baseType: !3206, size: 128, offset: 256)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3038, line: 404, size: 128, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3206, file: !3038, line: 424, baseType: !127, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3206, file: !3038, line: 432, baseType: !13, size: 32, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3206, file: !3038, line: 440, baseType: !13, size: 32, offset: 96)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3037, file: !3038, line: 498, baseType: !3206, size: 128, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3037, file: !3038, line: 508, baseType: !3044, size: 33280, align: 512, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_info", file: !3215, line: 52, size: 1024, elements: !3216)
!3215 = !DIFile(filename: "fs/autofs/autofs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "474496a990f5ae9b197285e0b4803e95")
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3263, !3264, !3265, !3266, !3267}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3214, file: !3215, line: 53, baseType: !830, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3214, file: !3215, line: 54, baseType: !151, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "expire_complete", scope: !3214, file: !3215, line: 56, baseType: !2393, size: 256, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3214, file: !3215, line: 58, baseType: !161, size: 128, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "expiring", scope: !3214, file: !3215, line: 60, baseType: !161, size: 128, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sbi", scope: !3214, file: !3215, line: 62, baseType: !3223, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_sb_info", file: !3215, line: 106, size: 1664, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3259, !3260, !3261, !3262}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3224, file: !3215, line: 107, baseType: !233, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "pipefd", scope: !3224, file: !3215, line: 108, baseType: !151, size: 32, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3224, file: !3215, line: 109, baseType: !728, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "oz_pgrp", scope: !3224, file: !3215, line: 110, baseType: !778, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3224, file: !3215, line: 111, baseType: !151, size: 32, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sub_version", scope: !3224, file: !3215, line: 112, baseType: !151, size: 32, offset: 224)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "min_proto", scope: !3224, file: !3215, line: 113, baseType: !151, size: 32, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "max_proto", scope: !3224, file: !3215, line: 114, baseType: !151, size: 32, offset: 288)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3224, file: !3215, line: 115, baseType: !13, size: 32, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "exp_timeout", scope: !3224, file: !3215, line: 116, baseType: !171, size: 64, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3224, file: !3215, line: 117, baseType: !13, size: 32, offset: 448)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3224, file: !3215, line: 118, baseType: !1077, size: 64, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "wq_mutex", scope: !3224, file: !3215, line: 119, baseType: !742, size: 256, offset: 576)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mutex", scope: !3224, file: !3215, line: 120, baseType: !742, size: 256, offset: 832)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fs_lock", scope: !3224, file: !3215, line: 121, baseType: !710, size: 32, offset: 1088)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !3224, file: !3215, line: 122, baseType: !3242, size: 64, offset: 1152)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_wait_queue", file: !3215, line: 82, size: 768, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3243, file: !3215, line: 83, baseType: !791, size: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3243, file: !3215, line: 84, baseType: !3242, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !3243, file: !3215, line: 85, baseType: !3248, size: 32, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_wqt_t", file: !57, line: 38, baseType: !13)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3243, file: !3215, line: 87, baseType: !850, size: 128, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3243, file: !3215, line: 88, baseType: !233, size: 32, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3243, file: !3215, line: 89, baseType: !233, size: 32, offset: 480)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3243, file: !3215, line: 90, baseType: !127, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3243, file: !3215, line: 91, baseType: !99, size: 32, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3243, file: !3215, line: 92, baseType: !108, size: 32, offset: 608)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3243, file: !3215, line: 93, baseType: !2375, size: 32, offset: 640)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3243, file: !3215, line: 94, baseType: !2375, size: 32, offset: 672)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3243, file: !3215, line: 96, baseType: !151, size: 32, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_ctr", scope: !3243, file: !3215, line: 97, baseType: !13, size: 32, offset: 736)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_lock", scope: !3224, file: !3215, line: 123, baseType: !710, size: 32, offset: 1216)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3224, file: !3215, line: 124, baseType: !161, size: 128, offset: 1280)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "expiring_list", scope: !3224, file: !3215, line: 125, baseType: !161, size: 128, offset: 1408)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3224, file: !3215, line: 126, baseType: !267, size: 128, align: 64, offset: 1536)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !3214, file: !3215, line: 63, baseType: !171, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3214, file: !3215, line: 64, baseType: !151, size: 32, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3214, file: !3215, line: 66, baseType: !99, size: 32, offset: 800)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3214, file: !3215, line: 67, baseType: !108, size: 32, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3214, file: !3215, line: 68, baseType: !267, size: 128, align: 64, offset: 896)
!3268 = !{!0, !3269, !3317, !3322, !7, !3327, !3332, !3335}
!3269 = !DIGlobalVariableExpression(var: !3270, expr: !DIExpression())
!3270 = distinct !DIGlobalVariable(name: "__key", scope: !3271, file: !2, line: 391, type: !1116, isLocal: true, isDefinition: true)
!3271 = distinct !DISubprogram(name: "autofs_wait", scope: !2, file: !2, line: 303, type: !3272, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!151, !3223, !988, !56}
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3291, !3293, !3307, !3308, !3312, !3313, !3316}
!3275 = !DILocalVariable(name: "sbi", arg: 1, scope: !3271, file: !2, line: 303, type: !3223)
!3276 = !DILocalVariable(name: "path", arg: 2, scope: !3271, file: !2, line: 304, type: !988)
!3277 = !DILocalVariable(name: "notify", arg: 3, scope: !3271, file: !2, line: 304, type: !56)
!3278 = !DILocalVariable(name: "dentry", scope: !3271, file: !2, line: 306, type: !830)
!3279 = !DILocalVariable(name: "wq", scope: !3271, file: !2, line: 307, type: !3242)
!3280 = !DILocalVariable(name: "qstr", scope: !3271, file: !2, line: 308, type: !850)
!3281 = !DILocalVariable(name: "name", scope: !3271, file: !2, line: 309, type: !290)
!3282 = !DILocalVariable(name: "status", scope: !3271, file: !2, line: 310, type: !151)
!3283 = !DILocalVariable(name: "ret", scope: !3271, file: !2, line: 310, type: !151)
!3284 = !DILocalVariable(name: "type", scope: !3271, file: !2, line: 310, type: !151)
!3285 = !DILocalVariable(name: "offset", scope: !3271, file: !2, line: 311, type: !13)
!3286 = !DILocalVariable(name: "pid", scope: !3271, file: !2, line: 312, type: !2375)
!3287 = !DILocalVariable(name: "tgid", scope: !3271, file: !2, line: 313, type: !2375)
!3288 = !DILocalVariable(name: "p", scope: !3289, file: !2, line: 353, type: !290)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 352, column: 9)
!3290 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 349, column: 6)
!3291 = !DILocalVariable(name: "__ret", scope: !3292, file: !2, line: 440, type: !151)
!3292 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 440, column: 2)
!3293 = !DILocalVariable(name: "__wq_entry", scope: !3294, file: !2, line: 440, type: !3296)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !2, line: 440, column: 2)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !2, line: 440, column: 2)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !792, line: 30, size: 320, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3306}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3296, file: !792, line: 31, baseType: !13, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3296, file: !792, line: 32, baseType: !78, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3296, file: !792, line: 33, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !792, line: 16, baseType: !3302)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!151, !3305, !13, !151, !78}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3296, file: !792, line: 34, baseType: !161, size: 128, offset: 192)
!3307 = !DILocalVariable(name: "__ret", scope: !3294, file: !2, line: 440, type: !980)
!3308 = !DILocalVariable(name: "__int", scope: !3309, file: !2, line: 440, type: !980)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !2, line: 440, column: 2)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !2, line: 440, column: 2)
!3311 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 440, column: 2)
!3312 = !DILabel(scope: !3294, name: "__out", file: !2, line: 440)
!3313 = !DILocalVariable(name: "ino", scope: !3314, file: !2, line: 453, type: !3213)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !2, line: 452, column: 15)
!3315 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 452, column: 6)
!3316 = !DILocalVariable(name: "de", scope: !3314, file: !2, line: 454, type: !830)
!3317 = !DIGlobalVariableExpression(var: !3318, expr: !DIExpression())
!3318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !3319, isLocal: true, isDefinition: true)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !3320)
!3320 = !{!3321}
!3321 = !DISubrange(count: 11)
!3322 = !DIGlobalVariableExpression(var: !3323, expr: !DIExpression())
!3323 = distinct !DIGlobalVariable(scope: null, file: !68, line: 480, type: !3324, isLocal: true, isDefinition: true)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 21)
!3327 = !DIGlobalVariableExpression(var: !3328, expr: !DIExpression())
!3328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !3329, isLocal: true, isDefinition: true)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !3330)
!3330 = !{!3331}
!3331 = !DISubrange(count: 35)
!3332 = !DIGlobalVariableExpression(var: !3333, expr: !DIExpression())
!3333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !3334, isLocal: true, isDefinition: true)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 168, elements: !3325)
!3335 = !DIGlobalVariableExpression(var: !3336, expr: !DIExpression())
!3336 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched37", scope: !3337, file: !3338, line: 112, type: !78, isLocal: true, isDefinition: true)
!3337 = distinct !DISubprogram(name: "might_resched", scope: !3338, file: !3338, line: 110, type: !2638, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!3338 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!3339 = !{i32 7, !"Dwarf Version", i32 5}
!3340 = !{i32 2, !"Debug Info Version", i32 3}
!3341 = !{i32 1, !"wchar_size", i32 2}
!3342 = !{i32 8, !"cf-protection-branch", i32 1}
!3343 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3344 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3345 = !{i32 1, !"Code Model", i32 2}
!3346 = !{i32 1, !"override-stack-alignment", i32 8}
!3347 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3348 = distinct !DISubprogram(name: "autofs_catatonic_mode", scope: !2, file: !2, line: 15, type: !3349, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{null, !3223}
!3351 = !{!3352, !3353, !3354}
!3352 = !DILocalVariable(name: "sbi", arg: 1, scope: !3348, file: !2, line: 15, type: !3223)
!3353 = !DILocalVariable(name: "wq", scope: !3348, file: !2, line: 17, type: !3242)
!3354 = !DILocalVariable(name: "nwq", scope: !3348, file: !2, line: 17, type: !3242)
!3355 = !DILocation(line: 15, column: 51, scope: !3348)
!3356 = !DILocation(line: 17, column: 2, scope: !3348)
!3357 = !DILocation(line: 17, column: 28, scope: !3348)
!3358 = !DILocation(line: 17, column: 33, scope: !3348)
!3359 = !DILocation(line: 19, column: 14, scope: !3348)
!3360 = !DILocation(line: 19, column: 19, scope: !3348)
!3361 = !DILocation(line: 19, column: 2, scope: !3348)
!3362 = !DILocation(line: 20, column: 6, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3348, file: !2, line: 20, column: 6)
!3364 = !DILocation(line: 20, column: 11, scope: !3363)
!3365 = !DILocation(line: 20, column: 17, scope: !3363)
!3366 = !DILocation(line: 20, column: 6, scope: !3348)
!3367 = !DILocation(line: 21, column: 17, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3363, file: !2, line: 20, column: 41)
!3369 = !DILocation(line: 21, column: 22, scope: !3368)
!3370 = !DILocation(line: 21, column: 3, scope: !3368)
!3371 = !DILocation(line: 22, column: 3, scope: !3368)
!3372 = !DILocation(line: 25, column: 2, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 25, column: 2)
!3374 = distinct !DILexicalBlock(scope: !3348, file: !2, line: 25, column: 2)
!3375 = !DILocation(line: 25, column: 2, scope: !3374)
!3376 = !DILocation(line: 27, column: 2, scope: !3348)
!3377 = !DILocation(line: 27, column: 7, scope: !3348)
!3378 = !DILocation(line: 27, column: 13, scope: !3348)
!3379 = !DILocation(line: 28, column: 7, scope: !3348)
!3380 = !DILocation(line: 28, column: 12, scope: !3348)
!3381 = !DILocation(line: 28, column: 5, scope: !3348)
!3382 = !DILocation(line: 29, column: 2, scope: !3348)
!3383 = !DILocation(line: 29, column: 7, scope: !3348)
!3384 = !DILocation(line: 29, column: 14, scope: !3348)
!3385 = !DILocation(line: 30, column: 2, scope: !3348)
!3386 = !DILocation(line: 30, column: 9, scope: !3348)
!3387 = !DILocation(line: 31, column: 9, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3348, file: !2, line: 30, column: 13)
!3389 = !DILocation(line: 31, column: 13, scope: !3388)
!3390 = !DILocation(line: 31, column: 7, scope: !3388)
!3391 = !DILocation(line: 32, column: 3, scope: !3388)
!3392 = !DILocation(line: 32, column: 7, scope: !3388)
!3393 = !DILocation(line: 32, column: 14, scope: !3388)
!3394 = !DILocation(line: 33, column: 9, scope: !3388)
!3395 = !DILocation(line: 33, column: 13, scope: !3388)
!3396 = !DILocation(line: 33, column: 18, scope: !3388)
!3397 = !DILocation(line: 33, column: 25, scope: !3388)
!3398 = !DILocation(line: 33, column: 29, scope: !3388)
!3399 = !DILocation(line: 33, column: 23, scope: !3388)
!3400 = !DILocation(line: 33, column: 3, scope: !3388)
!3401 = !DILocation(line: 34, column: 3, scope: !3388)
!3402 = !DILocation(line: 34, column: 7, scope: !3388)
!3403 = !DILocation(line: 34, column: 12, scope: !3388)
!3404 = !DILocation(line: 34, column: 17, scope: !3388)
!3405 = !DILocation(line: 35, column: 3, scope: !3388)
!3406 = !DILocation(line: 36, column: 10, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 36, column: 7)
!3408 = !DILocation(line: 36, column: 14, scope: !3407)
!3409 = !DILocation(line: 36, column: 8, scope: !3407)
!3410 = !DILocation(line: 36, column: 7, scope: !3388)
!3411 = !DILocation(line: 37, column: 10, scope: !3407)
!3412 = !DILocation(line: 37, column: 4, scope: !3407)
!3413 = !DILocation(line: 38, column: 8, scope: !3388)
!3414 = !DILocation(line: 38, column: 6, scope: !3388)
!3415 = distinct !{!3415, !3385, !3416, !3417, !3418}
!3416 = !DILocation(line: 39, column: 2, scope: !3348)
!3417 = !{!"llvm.loop.mustprogress"}
!3418 = !{!"llvm.loop.unroll.disable"}
!3419 = !DILocation(line: 40, column: 7, scope: !3348)
!3420 = !DILocation(line: 40, column: 12, scope: !3348)
!3421 = !DILocation(line: 40, column: 2, scope: !3348)
!3422 = !DILocation(line: 41, column: 2, scope: !3348)
!3423 = !DILocation(line: 41, column: 7, scope: !3348)
!3424 = !DILocation(line: 41, column: 12, scope: !3348)
!3425 = !DILocation(line: 42, column: 2, scope: !3348)
!3426 = !DILocation(line: 42, column: 7, scope: !3348)
!3427 = !DILocation(line: 42, column: 14, scope: !3348)
!3428 = !DILocation(line: 43, column: 16, scope: !3348)
!3429 = !DILocation(line: 43, column: 21, scope: !3348)
!3430 = !DILocation(line: 43, column: 2, scope: !3348)
!3431 = !DILocation(line: 44, column: 1, scope: !3348)
!3432 = !DISubprogram(name: "mutex_lock", scope: !743, file: !743, line: 227, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3435}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!3436 = !DISubprogram(name: "mutex_unlock", scope: !743, file: !743, line: 246, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3437 = !DISubprogram(name: "kfree", scope: !68, file: !68, line: 227, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3442 = !DISubprogram(name: "__wake_up", scope: !792, file: !792, line: 212, type: !3443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!151, !3445, !13, !151, !78}
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!3446 = !DISubprogram(name: "fput", scope: !3447, file: !3447, line: 17, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3447 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!3448 = !DILocation(line: 303, column: 40, scope: !3271)
!3449 = !DILocation(line: 304, column: 23, scope: !3271)
!3450 = !DILocation(line: 304, column: 48, scope: !3271)
!3451 = !DILocation(line: 306, column: 2, scope: !3271)
!3452 = !DILocation(line: 306, column: 17, scope: !3271)
!3453 = !DILocation(line: 306, column: 26, scope: !3271)
!3454 = !DILocation(line: 306, column: 32, scope: !3271)
!3455 = !DILocation(line: 307, column: 2, scope: !3271)
!3456 = !DILocation(line: 307, column: 28, scope: !3271)
!3457 = !DILocation(line: 308, column: 2, scope: !3271)
!3458 = !DILocation(line: 308, column: 14, scope: !3271)
!3459 = !DILocation(line: 309, column: 2, scope: !3271)
!3460 = !DILocation(line: 309, column: 8, scope: !3271)
!3461 = !DILocation(line: 310, column: 2, scope: !3271)
!3462 = !DILocation(line: 310, column: 6, scope: !3271)
!3463 = !DILocation(line: 310, column: 14, scope: !3271)
!3464 = !DILocation(line: 310, column: 19, scope: !3271)
!3465 = !DILocation(line: 311, column: 2, scope: !3271)
!3466 = !DILocation(line: 311, column: 15, scope: !3271)
!3467 = !DILocation(line: 312, column: 2, scope: !3271)
!3468 = !DILocation(line: 312, column: 8, scope: !3271)
!3469 = !DILocation(line: 313, column: 2, scope: !3271)
!3470 = !DILocation(line: 313, column: 8, scope: !3271)
!3471 = !DILocation(line: 316, column: 6, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 316, column: 6)
!3473 = !DILocation(line: 316, column: 11, scope: !3472)
!3474 = !DILocation(line: 316, column: 17, scope: !3472)
!3475 = !DILocation(line: 316, column: 6, scope: !3271)
!3476 = !DILocation(line: 317, column: 3, scope: !3472)
!3477 = !DILocation(line: 324, column: 23, scope: !3271)
!3478 = !DILocation(line: 324, column: 42, scope: !3271)
!3479 = !DILocation(line: 324, column: 47, scope: !3271)
!3480 = !DILocation(line: 324, column: 32, scope: !3271)
!3481 = !DILocation(line: 324, column: 8, scope: !3271)
!3482 = !DILocation(line: 324, column: 6, scope: !3271)
!3483 = !DILocation(line: 325, column: 25, scope: !3271)
!3484 = !DILocation(line: 325, column: 44, scope: !3271)
!3485 = !DILocation(line: 325, column: 49, scope: !3271)
!3486 = !DILocation(line: 325, column: 34, scope: !3271)
!3487 = !DILocation(line: 325, column: 9, scope: !3271)
!3488 = !DILocation(line: 325, column: 7, scope: !3271)
!3489 = !DILocation(line: 326, column: 6, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 326, column: 6)
!3491 = !DILocation(line: 326, column: 10, scope: !3490)
!3492 = !DILocation(line: 326, column: 15, scope: !3490)
!3493 = !DILocation(line: 326, column: 18, scope: !3490)
!3494 = !DILocation(line: 326, column: 23, scope: !3490)
!3495 = !DILocation(line: 326, column: 6, scope: !3271)
!3496 = !DILocation(line: 327, column: 3, scope: !3490)
!3497 = !DILocation(line: 329, column: 27, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 329, column: 6)
!3499 = !DILocation(line: 329, column: 6, scope: !3498)
!3500 = !DILocation(line: 329, column: 6, scope: !3271)
!3501 = !DILocation(line: 338, column: 27, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !2, line: 338, column: 7)
!3503 = distinct !DILexicalBlock(scope: !3498, file: !2, line: 329, column: 36)
!3504 = !DILocation(line: 338, column: 32, scope: !3502)
!3505 = !DILocation(line: 338, column: 7, scope: !3502)
!3506 = !DILocation(line: 338, column: 7, scope: !3503)
!3507 = !DILocation(line: 339, column: 4, scope: !3502)
!3508 = !DILocation(line: 340, column: 13, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3502, file: !2, line: 340, column: 12)
!3510 = !DILocation(line: 340, column: 12, scope: !3502)
!3511 = !DILocation(line: 341, column: 4, scope: !3509)
!3512 = !DILocation(line: 342, column: 2, scope: !3503)
!3513 = !DILocation(line: 344, column: 9, scope: !3271)
!3514 = !DILocation(line: 344, column: 7, scope: !3271)
!3515 = !DILocation(line: 345, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 345, column: 6)
!3517 = !DILocation(line: 345, column: 6, scope: !3271)
!3518 = !DILocation(line: 346, column: 3, scope: !3516)
!3519 = !DILocation(line: 349, column: 6, scope: !3290)
!3520 = !DILocation(line: 349, column: 22, scope: !3290)
!3521 = !DILocation(line: 349, column: 45, scope: !3290)
!3522 = !DILocation(line: 349, column: 50, scope: !3290)
!3523 = !DILocation(line: 349, column: 25, scope: !3290)
!3524 = !DILocation(line: 349, column: 6, scope: !3271)
!3525 = !DILocation(line: 350, column: 15, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 349, column: 57)
!3527 = !DILocation(line: 350, column: 8, scope: !3526)
!3528 = !DILocation(line: 350, column: 13, scope: !3526)
!3529 = !DILocation(line: 351, column: 22, scope: !3526)
!3530 = !DILocation(line: 351, column: 34, scope: !3526)
!3531 = !DILocation(line: 351, column: 14, scope: !3526)
!3532 = !DILocation(line: 351, column: 8, scope: !3526)
!3533 = !DILocation(line: 351, column: 12, scope: !3526)
!3534 = !DILocation(line: 352, column: 2, scope: !3526)
!3535 = !DILocation(line: 353, column: 3, scope: !3289)
!3536 = !DILocation(line: 353, column: 9, scope: !3289)
!3537 = !DILocation(line: 353, column: 29, scope: !3289)
!3538 = !DILocation(line: 353, column: 37, scope: !3289)
!3539 = !DILocation(line: 353, column: 13, scope: !3289)
!3540 = !DILocation(line: 354, column: 14, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3289, file: !2, line: 354, column: 7)
!3542 = !DILocation(line: 354, column: 7, scope: !3541)
!3543 = !DILocation(line: 354, column: 7, scope: !3289)
!3544 = !DILocation(line: 355, column: 10, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !2, line: 354, column: 18)
!3546 = !DILocation(line: 355, column: 4, scope: !3545)
!3547 = !DILocation(line: 356, column: 4, scope: !3545)
!3548 = !DILocation(line: 358, column: 15, scope: !3289)
!3549 = !DILocation(line: 358, column: 8, scope: !3289)
!3550 = !DILocation(line: 358, column: 13, scope: !3289)
!3551 = !DILocation(line: 359, column: 21, scope: !3289)
!3552 = !DILocation(line: 359, column: 14, scope: !3289)
!3553 = !DILocation(line: 359, column: 8, scope: !3289)
!3554 = !DILocation(line: 359, column: 12, scope: !3289)
!3555 = !DILocation(line: 360, column: 12, scope: !3289)
!3556 = !DILocation(line: 360, column: 16, scope: !3289)
!3557 = !DILocation(line: 360, column: 14, scope: !3289)
!3558 = !DILocation(line: 360, column: 10, scope: !3289)
!3559 = !DILocation(line: 361, column: 2, scope: !3290)
!3560 = !DILocation(line: 362, column: 29, scope: !3271)
!3561 = !DILocation(line: 362, column: 42, scope: !3271)
!3562 = !DILocation(line: 362, column: 53, scope: !3271)
!3563 = !DILocation(line: 362, column: 14, scope: !3271)
!3564 = !DILocation(line: 362, column: 7, scope: !3271)
!3565 = !DILocation(line: 362, column: 12, scope: !3271)
!3566 = !DILocation(line: 364, column: 32, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 364, column: 6)
!3568 = !DILocation(line: 364, column: 37, scope: !3567)
!3569 = !DILocation(line: 364, column: 6, scope: !3567)
!3570 = !DILocation(line: 364, column: 6, scope: !3271)
!3571 = !DILocation(line: 365, column: 9, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3567, file: !2, line: 364, column: 48)
!3573 = !DILocation(line: 365, column: 3, scope: !3572)
!3574 = !DILocation(line: 366, column: 3, scope: !3572)
!3575 = !DILocation(line: 369, column: 30, scope: !3271)
!3576 = !DILocation(line: 369, column: 42, scope: !3271)
!3577 = !DILocation(line: 369, column: 48, scope: !3271)
!3578 = !DILocation(line: 369, column: 8, scope: !3271)
!3579 = !DILocation(line: 369, column: 6, scope: !3271)
!3580 = !DILocation(line: 370, column: 6, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 370, column: 6)
!3582 = !DILocation(line: 370, column: 10, scope: !3581)
!3583 = !DILocation(line: 370, column: 6, scope: !3271)
!3584 = !DILocation(line: 371, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !2, line: 371, column: 7)
!3586 = distinct !DILexicalBlock(scope: !3581, file: !2, line: 370, column: 16)
!3587 = !DILocation(line: 371, column: 11, scope: !3585)
!3588 = !DILocation(line: 371, column: 7, scope: !3586)
!3589 = !DILocation(line: 372, column: 18, scope: !3585)
!3590 = !DILocation(line: 372, column: 23, scope: !3585)
!3591 = !DILocation(line: 372, column: 4, scope: !3585)
!3592 = !DILocation(line: 373, column: 9, scope: !3586)
!3593 = !DILocation(line: 373, column: 3, scope: !3586)
!3594 = !DILocation(line: 374, column: 10, scope: !3586)
!3595 = !DILocation(line: 374, column: 3, scope: !3586)
!3596 = !DILocation(line: 377, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 377, column: 6)
!3598 = !DILocation(line: 377, column: 6, scope: !3271)
!3599 = !DILocation(line: 379, column: 8, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 377, column: 11)
!3601 = !DILocation(line: 379, column: 6, scope: !3600)
!3602 = !DILocation(line: 380, column: 8, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 380, column: 7)
!3604 = !DILocation(line: 380, column: 7, scope: !3600)
!3605 = !DILocation(line: 381, column: 10, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !2, line: 380, column: 12)
!3607 = !DILocation(line: 381, column: 4, scope: !3606)
!3608 = !DILocation(line: 382, column: 18, scope: !3606)
!3609 = !DILocation(line: 382, column: 23, scope: !3606)
!3610 = !DILocation(line: 382, column: 4, scope: !3606)
!3611 = !DILocation(line: 383, column: 4, scope: !3606)
!3612 = !DILocation(line: 386, column: 26, scope: !3600)
!3613 = !DILocation(line: 386, column: 3, scope: !3600)
!3614 = !DILocation(line: 386, column: 7, scope: !3600)
!3615 = !DILocation(line: 386, column: 24, scope: !3600)
!3616 = !DILocation(line: 387, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 387, column: 7)
!3618 = !DILocation(line: 387, column: 32, scope: !3617)
!3619 = !DILocation(line: 387, column: 7, scope: !3600)
!3620 = !DILocation(line: 388, column: 27, scope: !3617)
!3621 = !DILocation(line: 388, column: 4, scope: !3617)
!3622 = !DILocation(line: 389, column: 14, scope: !3600)
!3623 = !DILocation(line: 389, column: 19, scope: !3600)
!3624 = !DILocation(line: 389, column: 3, scope: !3600)
!3625 = !DILocation(line: 389, column: 7, scope: !3600)
!3626 = !DILocation(line: 389, column: 12, scope: !3600)
!3627 = !DILocation(line: 390, column: 17, scope: !3600)
!3628 = !DILocation(line: 390, column: 3, scope: !3600)
!3629 = !DILocation(line: 390, column: 8, scope: !3600)
!3630 = !DILocation(line: 390, column: 15, scope: !3600)
!3631 = !DILocation(line: 391, column: 3, scope: !3600)
!3632 = !DILocation(line: 391, column: 3, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 391, column: 3)
!3634 = !DILocation(line: 392, column: 11, scope: !3600)
!3635 = !DILocation(line: 392, column: 15, scope: !3600)
!3636 = !DILocation(line: 392, column: 3, scope: !3600)
!3637 = !DILocation(line: 393, column: 16, scope: !3600)
!3638 = !DILocation(line: 393, column: 3, scope: !3600)
!3639 = !DILocation(line: 393, column: 7, scope: !3600)
!3640 = !DILocation(line: 393, column: 14, scope: !3600)
!3641 = !DILocation(line: 394, column: 28, scope: !3600)
!3642 = !DILocation(line: 394, column: 13, scope: !3600)
!3643 = !DILocation(line: 394, column: 3, scope: !3600)
!3644 = !DILocation(line: 394, column: 7, scope: !3600)
!3645 = !DILocation(line: 394, column: 11, scope: !3600)
!3646 = !DILocation(line: 395, column: 28, scope: !3600)
!3647 = !DILocation(line: 395, column: 13, scope: !3600)
!3648 = !DILocation(line: 395, column: 3, scope: !3600)
!3649 = !DILocation(line: 395, column: 7, scope: !3600)
!3650 = !DILocation(line: 395, column: 11, scope: !3600)
!3651 = !DILocation(line: 396, column: 3, scope: !3600)
!3652 = !DILocation(line: 396, column: 7, scope: !3600)
!3653 = !DILocation(line: 396, column: 13, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !2, line: 396, column: 13)
!3655 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 396, column: 13)
!3656 = !DILocation(line: 396, column: 13, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !2, line: 396, column: 13)
!3658 = !DILocation(line: 396, column: 13, scope: !3655)
!3659 = !DILocation(line: 397, column: 3, scope: !3600)
!3660 = !DILocation(line: 397, column: 7, scope: !3600)
!3661 = !DILocation(line: 397, column: 13, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !2, line: 397, column: 13)
!3663 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 397, column: 13)
!3664 = !DILocation(line: 397, column: 13, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 397, column: 13)
!3666 = !DILocation(line: 397, column: 13, scope: !3663)
!3667 = !DILocation(line: 398, column: 13, scope: !3600)
!3668 = !DILocation(line: 398, column: 3, scope: !3600)
!3669 = !DILocation(line: 398, column: 7, scope: !3600)
!3670 = !DILocation(line: 398, column: 11, scope: !3600)
!3671 = !DILocation(line: 399, column: 14, scope: !3600)
!3672 = !DILocation(line: 399, column: 3, scope: !3600)
!3673 = !DILocation(line: 399, column: 7, scope: !3600)
!3674 = !DILocation(line: 399, column: 12, scope: !3600)
!3675 = !DILocation(line: 400, column: 3, scope: !3600)
!3676 = !DILocation(line: 400, column: 7, scope: !3600)
!3677 = !DILocation(line: 400, column: 14, scope: !3600)
!3678 = !DILocation(line: 401, column: 3, scope: !3600)
!3679 = !DILocation(line: 401, column: 7, scope: !3600)
!3680 = !DILocation(line: 401, column: 16, scope: !3600)
!3681 = !DILocation(line: 403, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 403, column: 7)
!3683 = !DILocation(line: 403, column: 12, scope: !3682)
!3684 = !DILocation(line: 403, column: 20, scope: !3682)
!3685 = !DILocation(line: 403, column: 7, scope: !3600)
!3686 = !DILocation(line: 404, column: 8, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 404, column: 8)
!3688 = distinct !DILexicalBlock(scope: !3682, file: !2, line: 403, column: 25)
!3689 = !DILocation(line: 404, column: 15, scope: !3687)
!3690 = !DILocation(line: 404, column: 8, scope: !3688)
!3691 = !DILocation(line: 405, column: 10, scope: !3687)
!3692 = !DILocation(line: 405, column: 5, scope: !3687)
!3693 = !DILocation(line: 407, column: 10, scope: !3687)
!3694 = !DILocation(line: 408, column: 3, scope: !3688)
!3695 = !DILocation(line: 409, column: 8, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !2, line: 409, column: 8)
!3697 = distinct !DILexicalBlock(scope: !3682, file: !2, line: 408, column: 10)
!3698 = !DILocation(line: 409, column: 15, scope: !3696)
!3699 = !DILocation(line: 409, column: 8, scope: !3697)
!3700 = !DILocation(line: 410, column: 32, scope: !3696)
!3701 = !DILocation(line: 410, column: 37, scope: !3696)
!3702 = !DILocation(line: 410, column: 12, scope: !3696)
!3703 = !DILocation(line: 410, column: 10, scope: !3696)
!3704 = !DILocation(line: 410, column: 5, scope: !3696)
!3705 = !DILocation(line: 414, column: 32, scope: !3696)
!3706 = !DILocation(line: 414, column: 37, scope: !3696)
!3707 = !DILocation(line: 414, column: 12, scope: !3696)
!3708 = !DILocation(line: 414, column: 10, scope: !3696)
!3709 = !DILocation(line: 419, column: 3, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !2, line: 419, column: 3)
!3711 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 419, column: 3)
!3712 = !DILocation(line: 419, column: 3, scope: !3711)
!3713 = !DILocation(line: 426, column: 24, scope: !3600)
!3714 = !DILocation(line: 426, column: 29, scope: !3600)
!3715 = !DILocation(line: 426, column: 33, scope: !3600)
!3716 = !DILocation(line: 426, column: 3, scope: !3600)
!3717 = !DILocation(line: 427, column: 2, scope: !3600)
!3718 = !DILocation(line: 428, column: 3, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 427, column: 9)
!3720 = !DILocation(line: 428, column: 7, scope: !3719)
!3721 = !DILocation(line: 428, column: 15, scope: !3719)
!3722 = !DILocation(line: 429, column: 3, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !2, line: 429, column: 3)
!3724 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 429, column: 3)
!3725 = !DILocation(line: 429, column: 3, scope: !3724)
!3726 = !DILocation(line: 432, column: 17, scope: !3719)
!3727 = !DILocation(line: 432, column: 22, scope: !3719)
!3728 = !DILocation(line: 432, column: 3, scope: !3719)
!3729 = !DILocation(line: 433, column: 9, scope: !3719)
!3730 = !DILocation(line: 433, column: 3, scope: !3719)
!3731 = !DILocation(line: 440, column: 2, scope: !3292)
!3732 = !DILocation(line: 440, column: 2, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3292, file: !2, line: 440, column: 2)
!3734 = !DILocation(line: 440, column: 2, scope: !3295)
!3735 = !DILocation(line: 440, column: 2, scope: !3294)
!3736 = !DILocation(line: 440, column: 2, scope: !3309)
!3737 = !DILocation(line: 440, column: 2, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3309, file: !2, line: 440, column: 2)
!3739 = !DILocation(line: 440, column: 2, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3309, file: !2, line: 440, column: 2)
!3741 = !DILocation(line: 440, column: 2, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3740, file: !2, line: 440, column: 2)
!3743 = !DILocation(line: 440, column: 2, scope: !3310)
!3744 = distinct !{!3744, !3745, !3745, !3418}
!3745 = !DILocation(line: 440, column: 2, scope: !3311)
!3746 = !DILocation(line: 440, column: 2, scope: !3271)
!3747 = !DILocation(line: 441, column: 11, scope: !3271)
!3748 = !DILocation(line: 441, column: 15, scope: !3271)
!3749 = !DILocation(line: 441, column: 9, scope: !3271)
!3750 = !DILocation(line: 452, column: 7, scope: !3315)
!3751 = !DILocation(line: 452, column: 6, scope: !3271)
!3752 = !DILocation(line: 453, column: 3, scope: !3314)
!3753 = !DILocation(line: 453, column: 23, scope: !3314)
!3754 = !DILocation(line: 454, column: 3, scope: !3314)
!3755 = !DILocation(line: 454, column: 18, scope: !3314)
!3756 = !DILocation(line: 457, column: 27, scope: !3314)
!3757 = !DILocation(line: 457, column: 9, scope: !3314)
!3758 = !DILocation(line: 457, column: 7, scope: !3314)
!3759 = !DILocation(line: 458, column: 8, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3314, file: !2, line: 458, column: 7)
!3761 = !DILocation(line: 458, column: 7, scope: !3314)
!3762 = !DILocation(line: 460, column: 18, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !2, line: 458, column: 13)
!3764 = !DILocation(line: 460, column: 26, scope: !3763)
!3765 = !DILocation(line: 460, column: 37, scope: !3763)
!3766 = !DILocation(line: 460, column: 45, scope: !3763)
!3767 = !DILocation(line: 460, column: 9, scope: !3763)
!3768 = !DILocation(line: 460, column: 7, scope: !3763)
!3769 = !DILocation(line: 461, column: 8, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3763, file: !2, line: 461, column: 8)
!3771 = !DILocation(line: 461, column: 8, scope: !3763)
!3772 = !DILocation(line: 462, column: 29, scope: !3770)
!3773 = !DILocation(line: 462, column: 11, scope: !3770)
!3774 = !DILocation(line: 462, column: 9, scope: !3770)
!3775 = !DILocation(line: 462, column: 5, scope: !3770)
!3776 = !DILocation(line: 463, column: 3, scope: !3763)
!3777 = !DILocation(line: 466, column: 7, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3314, file: !2, line: 466, column: 7)
!3779 = !DILocation(line: 466, column: 7, scope: !3314)
!3780 = !DILocation(line: 467, column: 15, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3778, file: !2, line: 466, column: 12)
!3782 = !DILocation(line: 467, column: 20, scope: !3781)
!3783 = !DILocation(line: 467, column: 4, scope: !3781)
!3784 = !DILocation(line: 468, column: 4, scope: !3781)
!3785 = !DILocation(line: 468, column: 9, scope: !3781)
!3786 = !DILocation(line: 468, column: 15, scope: !3781)
!3787 = !DILocation(line: 468, column: 19, scope: !3781)
!3788 = !DILocation(line: 469, column: 4, scope: !3781)
!3789 = !DILocation(line: 469, column: 9, scope: !3781)
!3790 = !DILocation(line: 469, column: 15, scope: !3781)
!3791 = !DILocation(line: 469, column: 19, scope: !3781)
!3792 = !DILocation(line: 470, column: 17, scope: !3781)
!3793 = !DILocation(line: 470, column: 22, scope: !3781)
!3794 = !DILocation(line: 470, column: 4, scope: !3781)
!3795 = !DILocation(line: 471, column: 3, scope: !3781)
!3796 = !DILocation(line: 473, column: 7, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3314, file: !2, line: 473, column: 7)
!3798 = !DILocation(line: 473, column: 7, scope: !3314)
!3799 = !DILocation(line: 474, column: 9, scope: !3797)
!3800 = !DILocation(line: 474, column: 4, scope: !3797)
!3801 = !DILocation(line: 475, column: 2, scope: !3315)
!3802 = !DILocation(line: 475, column: 2, scope: !3314)
!3803 = !DILocation(line: 478, column: 14, scope: !3271)
!3804 = !DILocation(line: 478, column: 19, scope: !3271)
!3805 = !DILocation(line: 478, column: 2, scope: !3271)
!3806 = !DILocation(line: 479, column: 9, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 479, column: 6)
!3808 = !DILocation(line: 479, column: 13, scope: !3807)
!3809 = !DILocation(line: 479, column: 7, scope: !3807)
!3810 = !DILocation(line: 479, column: 6, scope: !3271)
!3811 = !DILocation(line: 480, column: 9, scope: !3807)
!3812 = !DILocation(line: 480, column: 3, scope: !3807)
!3813 = !DILocation(line: 481, column: 16, scope: !3271)
!3814 = !DILocation(line: 481, column: 21, scope: !3271)
!3815 = !DILocation(line: 481, column: 2, scope: !3271)
!3816 = !DILocation(line: 483, column: 9, scope: !3271)
!3817 = !DILocation(line: 483, column: 2, scope: !3271)
!3818 = !DILocation(line: 484, column: 1, scope: !3271)
!3819 = distinct !DISubprogram(name: "task_pid_nr_ns", scope: !395, file: !395, line: 1585, type: !3820, scopeLine: 1586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!2375, !393, !804}
!3822 = !{!3823, !3824}
!3823 = !DILocalVariable(name: "tsk", arg: 1, scope: !3819, file: !395, line: 1585, type: !393)
!3824 = !DILocalVariable(name: "ns", arg: 2, scope: !3819, file: !395, line: 1585, type: !804)
!3825 = !DILocation(line: 1585, column: 56, scope: !3819)
!3826 = !DILocation(line: 1585, column: 83, scope: !3819)
!3827 = !DILocation(line: 1587, column: 26, scope: !3819)
!3828 = !DILocation(line: 1587, column: 44, scope: !3819)
!3829 = !DILocation(line: 1587, column: 9, scope: !3819)
!3830 = !DILocation(line: 1587, column: 2, scope: !3819)
!3831 = distinct !DISubprogram(name: "get_current", scope: !3832, file: !3832, line: 39, type: !3833, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3835)
!3832 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!393}
!3835 = !{!3836, !3838, !3840}
!3836 = !DILocalVariable(name: "pscr_ret__", scope: !3837, file: !3832, line: 41, type: !393)
!3837 = distinct !DILexicalBlock(scope: !3831, file: !3832, line: 41, column: 9)
!3838 = !DILocalVariable(name: "__vpp_verify", scope: !3839, file: !3832, line: 41, type: !3440)
!3839 = distinct !DILexicalBlock(scope: !3837, file: !3832, line: 41, column: 9)
!3840 = !DILocalVariable(name: "pfo_val__", scope: !3841, file: !3832, line: 41, type: !127)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !3832, line: 41, column: 9)
!3842 = !DILocation(line: 41, column: 9, scope: !3837)
!3843 = !DILocation(line: 41, column: 9, scope: !3839)
!3844 = !DILocation(line: 41, column: 9, scope: !3841)
!3845 = !{i64 2148974857}
!3846 = !DILocation(line: 41, column: 9, scope: !3831)
!3847 = !DILocation(line: 41, column: 2, scope: !3831)
!3848 = distinct !DISubprogram(name: "ns_of_pid", scope: !12, file: !12, line: 152, type: !3849, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!804, !778}
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "pid", arg: 1, scope: !3848, file: !12, line: 152, type: !778)
!3853 = !DILocalVariable(name: "ns", scope: !3848, file: !12, line: 154, type: !804)
!3854 = !DILocation(line: 152, column: 59, scope: !3848)
!3855 = !DILocation(line: 154, column: 2, scope: !3848)
!3856 = !DILocation(line: 154, column: 24, scope: !3848)
!3857 = !DILocation(line: 155, column: 6, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3848, file: !12, line: 155, column: 6)
!3859 = !DILocation(line: 155, column: 6, scope: !3848)
!3860 = !DILocation(line: 156, column: 8, scope: !3858)
!3861 = !DILocation(line: 156, column: 13, scope: !3858)
!3862 = !DILocation(line: 156, column: 21, scope: !3858)
!3863 = !DILocation(line: 156, column: 26, scope: !3858)
!3864 = !DILocation(line: 156, column: 33, scope: !3858)
!3865 = !DILocation(line: 156, column: 6, scope: !3858)
!3866 = !DILocation(line: 156, column: 3, scope: !3858)
!3867 = !DILocation(line: 157, column: 9, scope: !3848)
!3868 = !DILocation(line: 158, column: 1, scope: !3848)
!3869 = !DILocation(line: 157, column: 2, scope: !3848)
!3870 = distinct !DISubprogram(name: "task_tgid_nr_ns", scope: !395, file: !395, line: 1637, type: !3820, scopeLine: 1638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3871)
!3871 = !{!3872, !3873}
!3872 = !DILocalVariable(name: "tsk", arg: 1, scope: !3870, file: !395, line: 1637, type: !393)
!3873 = !DILocalVariable(name: "ns", arg: 2, scope: !3870, file: !395, line: 1637, type: !804)
!3874 = !DILocation(line: 1637, column: 57, scope: !3870)
!3875 = !DILocation(line: 1637, column: 84, scope: !3870)
!3876 = !DILocation(line: 1639, column: 26, scope: !3870)
!3877 = !DILocation(line: 1639, column: 45, scope: !3870)
!3878 = !DILocation(line: 1639, column: 9, scope: !3870)
!3879 = !DILocation(line: 1639, column: 2, scope: !3870)
!3880 = distinct !DISubprogram(name: "d_really_is_negative", scope: !832, file: !832, line: 464, type: !3881, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!277, !1529}
!3883 = !{!3884}
!3884 = !DILocalVariable(name: "dentry", arg: 1, scope: !3880, file: !832, line: 464, type: !1529)
!3885 = !DILocation(line: 464, column: 62, scope: !3880)
!3886 = !DILocation(line: 466, column: 9, scope: !3880)
!3887 = !DILocation(line: 466, column: 17, scope: !3880)
!3888 = !DILocation(line: 466, column: 25, scope: !3880)
!3889 = !DILocation(line: 466, column: 2, scope: !3880)
!3890 = distinct !DISubprogram(name: "autofs_type_trigger", scope: !57, file: !57, line: 133, type: !3891, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!13, !13}
!3893 = !{!3894}
!3894 = !DILocalVariable(name: "type", arg: 1, scope: !3890, file: !57, line: 133, type: !13)
!3895 = !DILocation(line: 133, column: 61, scope: !3890)
!3896 = !DILocation(line: 135, column: 10, scope: !3890)
!3897 = !DILocation(line: 135, column: 15, scope: !3890)
!3898 = !DILocation(line: 135, column: 37, scope: !3890)
!3899 = !DILocation(line: 135, column: 40, scope: !3890)
!3900 = !DILocation(line: 135, column: 45, scope: !3890)
!3901 = !DILocation(line: 135, column: 2, scope: !3890)
!3902 = distinct !DISubprogram(name: "kmalloc", scope: !68, file: !68, line: 591, type: !3903, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!78, !1022, !79}
!3905 = !{!3906, !3907, !3908}
!3906 = !DILocalVariable(name: "size", arg: 1, scope: !3902, file: !68, line: 591, type: !1022)
!3907 = !DILocalVariable(name: "flags", arg: 2, scope: !3902, file: !68, line: 591, type: !79)
!3908 = !DILocalVariable(name: "index", scope: !3909, file: !68, line: 594, type: !13)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !68, line: 593, column: 42)
!3910 = distinct !DILexicalBlock(scope: !3902, file: !68, line: 593, column: 6)
!3911 = !DILocation(line: 591, column: 61, scope: !3902)
!3912 = !DILocation(line: 591, column: 73, scope: !3902)
!3913 = !DILocation(line: 593, column: 27, scope: !3910)
!3914 = !DILocation(line: 593, column: 6, scope: !3910)
!3915 = !DILocation(line: 593, column: 33, scope: !3910)
!3916 = !DILocation(line: 593, column: 36, scope: !3910)
!3917 = !DILocation(line: 593, column: 6, scope: !3902)
!3918 = !DILocation(line: 594, column: 3, scope: !3909)
!3919 = !DILocation(line: 594, column: 16, scope: !3909)
!3920 = !DILocation(line: 596, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3909, file: !68, line: 596, column: 7)
!3922 = !DILocation(line: 596, column: 12, scope: !3921)
!3923 = !DILocation(line: 596, column: 7, scope: !3909)
!3924 = !DILocation(line: 597, column: 25, scope: !3921)
!3925 = !DILocation(line: 597, column: 31, scope: !3921)
!3926 = !DILocation(line: 597, column: 11, scope: !3921)
!3927 = !DILocation(line: 597, column: 4, scope: !3921)
!3928 = !DILocation(line: 599, column: 11, scope: !3909)
!3929 = !DILocation(line: 599, column: 9, scope: !3909)
!3930 = !DILocation(line: 601, column: 33, scope: !3909)
!3931 = !DILocation(line: 601, column: 40, scope: !3909)
!3932 = !DILocation(line: 601, column: 20, scope: !3909)
!3933 = !DILocation(line: 601, column: 5, scope: !3909)
!3934 = !DILocation(line: 601, column: 51, scope: !3909)
!3935 = !DILocation(line: 602, column: 5, scope: !3909)
!3936 = !DILocation(line: 602, column: 12, scope: !3909)
!3937 = !DILocation(line: 600, column: 10, scope: !3909)
!3938 = !DILocation(line: 600, column: 3, scope: !3909)
!3939 = !DILocation(line: 603, column: 2, scope: !3910)
!3940 = !DILocation(line: 604, column: 19, scope: !3902)
!3941 = !DILocation(line: 604, column: 25, scope: !3902)
!3942 = !DILocation(line: 604, column: 9, scope: !3902)
!3943 = !DILocation(line: 604, column: 2, scope: !3902)
!3944 = !DILocation(line: 605, column: 1, scope: !3902)
!3945 = !DISubprogram(name: "sprintf", scope: !3946, file: !3946, line: 10, type: !3947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!151, !290, !280, null}
!3949 = !DISubprogram(name: "dentry_path_raw", scope: !832, file: !832, line: 297, type: !3950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!290, !1529, !290, !151}
!3952 = distinct !DISubprogram(name: "IS_ERR", scope: !3953, file: !3953, line: 59, type: !3954, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3956)
!3953 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!277, !3440}
!3956 = !{!3957}
!3957 = !DILocalVariable(name: "ptr", arg: 1, scope: !3952, file: !3953, line: 59, type: !3440)
!3958 = !DILocation(line: 59, column: 60, scope: !3952)
!3959 = !DILocation(line: 61, column: 9, scope: !3952)
!3960 = !DILocation(line: 61, column: 2, scope: !3952)
!3961 = !DISubprogram(name: "strlen", scope: !3962, file: !3962, line: 128, type: !3963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3962 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!171, !280}
!3965 = !DISubprogram(name: "full_name_hash", scope: !3966, file: !3966, line: 66, type: !3967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3966 = !DIFile(filename: "./include/linux/stringhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7b260b93de90497fc2d684369b4dec9")
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!13, !3440, !280, !13}
!3969 = !DISubprogram(name: "mutex_lock_interruptible", scope: !743, file: !743, line: 228, type: !3970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!151, !3435}
!3972 = distinct !DISubprogram(name: "validate_request", scope: !2, file: !2, line: 202, type: !3973, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3976)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!151, !3975, !3223, !1536, !988, !56}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3988, !3989, !3990}
!3977 = !DILocalVariable(name: "wait", arg: 1, scope: !3972, file: !2, line: 202, type: !3975)
!3978 = !DILocalVariable(name: "sbi", arg: 2, scope: !3972, file: !2, line: 203, type: !3223)
!3979 = !DILocalVariable(name: "qstr", arg: 3, scope: !3972, file: !2, line: 204, type: !1536)
!3980 = !DILocalVariable(name: "path", arg: 4, scope: !3972, file: !2, line: 205, type: !988)
!3981 = !DILocalVariable(name: "notify", arg: 5, scope: !3972, file: !2, line: 205, type: !56)
!3982 = !DILocalVariable(name: "dentry", scope: !3972, file: !2, line: 207, type: !830)
!3983 = !DILocalVariable(name: "wq", scope: !3972, file: !2, line: 208, type: !3242)
!3984 = !DILocalVariable(name: "ino", scope: !3972, file: !2, line: 209, type: !3213)
!3985 = !DILocalVariable(name: "new", scope: !3986, file: !2, line: 269, type: !830)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !2, line: 268, column: 27)
!3987 = distinct !DILexicalBlock(scope: !3972, file: !2, line: 268, column: 6)
!3988 = !DILocalVariable(name: "this", scope: !3986, file: !2, line: 270, type: !821)
!3989 = !DILocalVariable(name: "valid", scope: !3986, file: !2, line: 271, type: !151)
!3990 = !DILocalVariable(name: "parent", scope: !3991, file: !2, line: 283, type: !830)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !2, line: 282, column: 38)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 281, column: 8)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !2, line: 280, column: 25)
!3994 = distinct !DILexicalBlock(scope: !3986, file: !2, line: 280, column: 7)
!3995 = !DILocation(line: 202, column: 56, scope: !3972)
!3996 = !DILocation(line: 203, column: 31, scope: !3972)
!3997 = !DILocation(line: 204, column: 27, scope: !3972)
!3998 = !DILocation(line: 205, column: 27, scope: !3972)
!3999 = !DILocation(line: 205, column: 52, scope: !3972)
!4000 = !DILocation(line: 207, column: 2, scope: !3972)
!4001 = !DILocation(line: 207, column: 17, scope: !3972)
!4002 = !DILocation(line: 207, column: 26, scope: !3972)
!4003 = !DILocation(line: 207, column: 32, scope: !3972)
!4004 = !DILocation(line: 208, column: 2, scope: !3972)
!4005 = !DILocation(line: 208, column: 28, scope: !3972)
!4006 = !DILocation(line: 209, column: 2, scope: !3972)
!4007 = !DILocation(line: 209, column: 22, scope: !3972)
!4008 = !DILocation(line: 211, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3972, file: !2, line: 211, column: 6)
!4010 = !DILocation(line: 211, column: 11, scope: !4009)
!4011 = !DILocation(line: 211, column: 17, scope: !4009)
!4012 = !DILocation(line: 211, column: 6, scope: !3972)
!4013 = !DILocation(line: 212, column: 3, scope: !4009)
!4014 = !DILocation(line: 215, column: 24, scope: !3972)
!4015 = !DILocation(line: 215, column: 29, scope: !3972)
!4016 = !DILocation(line: 215, column: 7, scope: !3972)
!4017 = !DILocation(line: 215, column: 5, scope: !3972)
!4018 = !DILocation(line: 216, column: 6, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3972, file: !2, line: 216, column: 6)
!4020 = !DILocation(line: 216, column: 6, scope: !3972)
!4021 = !DILocation(line: 217, column: 11, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4019, file: !2, line: 216, column: 10)
!4023 = !DILocation(line: 217, column: 4, scope: !4022)
!4024 = !DILocation(line: 217, column: 9, scope: !4022)
!4025 = !DILocation(line: 218, column: 3, scope: !4022)
!4026 = !DILocation(line: 221, column: 3, scope: !3972)
!4027 = !DILocation(line: 221, column: 8, scope: !3972)
!4028 = !DILocation(line: 224, column: 26, scope: !3972)
!4029 = !DILocation(line: 224, column: 8, scope: !3972)
!4030 = !DILocation(line: 224, column: 6, scope: !3972)
!4031 = !DILocation(line: 225, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3972, file: !2, line: 225, column: 6)
!4033 = !DILocation(line: 225, column: 6, scope: !3972)
!4034 = !DILocation(line: 226, column: 3, scope: !4032)
!4035 = !DILocation(line: 232, column: 6, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3972, file: !2, line: 232, column: 6)
!4037 = !DILocation(line: 232, column: 13, scope: !4036)
!4038 = !DILocation(line: 232, column: 6, scope: !3972)
!4039 = !DILocation(line: 240, column: 3, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4036, file: !2, line: 232, column: 26)
!4041 = !DILocation(line: 240, column: 10, scope: !4040)
!4042 = !DILocation(line: 240, column: 15, scope: !4040)
!4043 = !DILocation(line: 240, column: 21, scope: !4040)
!4044 = !DILocation(line: 241, column: 18, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4040, file: !2, line: 240, column: 44)
!4046 = !DILocation(line: 241, column: 23, scope: !4045)
!4047 = !DILocation(line: 241, column: 4, scope: !4045)
!4048 = !DILocation(line: 242, column: 4, scope: !4045)
!4049 = !DILocation(line: 243, column: 34, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4045, file: !2, line: 243, column: 8)
!4051 = !DILocation(line: 243, column: 39, scope: !4050)
!4052 = !DILocation(line: 243, column: 8, scope: !4050)
!4053 = !DILocation(line: 243, column: 8, scope: !4045)
!4054 = !DILocation(line: 244, column: 5, scope: !4050)
!4055 = !DILocation(line: 246, column: 8, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4045, file: !2, line: 246, column: 8)
!4057 = !DILocation(line: 246, column: 13, scope: !4056)
!4058 = !DILocation(line: 246, column: 19, scope: !4056)
!4059 = !DILocation(line: 246, column: 8, scope: !4045)
!4060 = !DILocation(line: 247, column: 5, scope: !4056)
!4061 = !DILocation(line: 249, column: 26, scope: !4045)
!4062 = !DILocation(line: 249, column: 31, scope: !4045)
!4063 = !DILocation(line: 249, column: 9, scope: !4045)
!4064 = !DILocation(line: 249, column: 7, scope: !4045)
!4065 = !DILocation(line: 250, column: 8, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4045, file: !2, line: 250, column: 8)
!4067 = !DILocation(line: 250, column: 8, scope: !4045)
!4068 = !DILocation(line: 251, column: 13, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !2, line: 250, column: 12)
!4070 = !DILocation(line: 251, column: 6, scope: !4069)
!4071 = !DILocation(line: 251, column: 11, scope: !4069)
!4072 = !DILocation(line: 252, column: 5, scope: !4069)
!4073 = distinct !{!4073, !4039, !4074, !3417, !3418}
!4074 = !DILocation(line: 254, column: 3, scope: !4040)
!4075 = !DILocation(line: 261, column: 3, scope: !4040)
!4076 = !DILocation(line: 268, column: 6, scope: !3987)
!4077 = !DILocation(line: 268, column: 13, scope: !3987)
!4078 = !DILocation(line: 268, column: 6, scope: !3972)
!4079 = !DILocation(line: 269, column: 3, scope: !3986)
!4080 = !DILocation(line: 269, column: 18, scope: !3986)
!4081 = !DILocation(line: 270, column: 3, scope: !3986)
!4082 = !DILocation(line: 270, column: 15, scope: !3986)
!4083 = !DILocation(line: 271, column: 3, scope: !3986)
!4084 = !DILocation(line: 271, column: 7, scope: !3986)
!4085 = !DILocation(line: 280, column: 8, scope: !3994)
!4086 = !DILocation(line: 280, column: 7, scope: !3986)
!4087 = !DILocation(line: 281, column: 19, scope: !3992)
!4088 = !DILocation(line: 281, column: 8, scope: !3992)
!4089 = !DILocation(line: 281, column: 27, scope: !3992)
!4090 = !DILocation(line: 282, column: 29, scope: !3992)
!4091 = !DILocation(line: 282, column: 8, scope: !3992)
!4092 = !DILocation(line: 281, column: 8, scope: !3993)
!4093 = !DILocation(line: 283, column: 5, scope: !3991)
!4094 = !DILocation(line: 283, column: 20, scope: !3991)
!4095 = !DILocation(line: 283, column: 29, scope: !3991)
!4096 = !DILocation(line: 283, column: 37, scope: !3991)
!4097 = !DILocation(line: 285, column: 20, scope: !3991)
!4098 = !DILocation(line: 285, column: 29, scope: !3991)
!4099 = !DILocation(line: 285, column: 37, scope: !3991)
!4100 = !DILocation(line: 285, column: 11, scope: !3991)
!4101 = !DILocation(line: 285, column: 9, scope: !3991)
!4102 = !DILocation(line: 286, column: 9, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !3991, file: !2, line: 286, column: 9)
!4104 = !DILocation(line: 286, column: 9, scope: !3991)
!4105 = !DILocation(line: 287, column: 15, scope: !4103)
!4106 = !DILocation(line: 287, column: 13, scope: !4103)
!4107 = !DILocation(line: 287, column: 6, scope: !4103)
!4108 = !DILocation(line: 288, column: 4, scope: !3992)
!4109 = !DILocation(line: 288, column: 4, scope: !3991)
!4110 = !DILocation(line: 289, column: 3, scope: !3993)
!4111 = !DILocation(line: 290, column: 14, scope: !3986)
!4112 = !DILocation(line: 290, column: 20, scope: !3986)
!4113 = !DILocation(line: 290, column: 8, scope: !3986)
!4114 = !DILocation(line: 290, column: 12, scope: !3986)
!4115 = !DILocation(line: 291, column: 17, scope: !3986)
!4116 = !DILocation(line: 291, column: 8, scope: !3986)
!4117 = !DILocation(line: 291, column: 15, scope: !3986)
!4118 = !DILocation(line: 292, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !3986, file: !2, line: 292, column: 7)
!4120 = !DILocation(line: 292, column: 7, scope: !3986)
!4121 = !DILocation(line: 293, column: 10, scope: !4119)
!4122 = !DILocation(line: 293, column: 4, scope: !4119)
!4123 = !DILocation(line: 295, column: 7, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !3986, file: !2, line: 295, column: 7)
!4125 = !DILocation(line: 295, column: 7, scope: !3986)
!4126 = !DILocation(line: 296, column: 9, scope: !4124)
!4127 = !DILocation(line: 296, column: 4, scope: !4124)
!4128 = !DILocation(line: 297, column: 10, scope: !3986)
!4129 = !DILocation(line: 297, column: 3, scope: !3986)
!4130 = !DILocation(line: 298, column: 2, scope: !3987)
!4131 = !DILocation(line: 300, column: 2, scope: !3972)
!4132 = !DILocation(line: 301, column: 1, scope: !3972)
!4133 = !DISubprogram(name: "__init_waitqueue_head", scope: !792, file: !792, line: 64, type: !4134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !3445, !280, !4136}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!4137 = distinct !DISubprogram(name: "autofs_get_dev", scope: !3215, file: !3215, line: 232, type: !4138, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!233, !3223}
!4140 = !{!4141}
!4141 = !DILocalVariable(name: "sbi", arg: 1, scope: !4137, file: !3215, line: 232, type: !3223)
!4142 = !DILocation(line: 232, column: 57, scope: !4137)
!4143 = !DILocation(line: 234, column: 24, scope: !4137)
!4144 = !DILocation(line: 234, column: 29, scope: !4137)
!4145 = !DILocation(line: 234, column: 33, scope: !4137)
!4146 = !DILocation(line: 234, column: 9, scope: !4137)
!4147 = !DILocation(line: 234, column: 2, scope: !4137)
!4148 = distinct !DISubprogram(name: "autofs_get_ino", scope: !3215, file: !3215, line: 237, type: !4149, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!127, !3223}
!4151 = !{!4152}
!4152 = !DILocalVariable(name: "sbi", arg: 1, scope: !4148, file: !3215, line: 237, type: !3223)
!4153 = !DILocation(line: 237, column: 57, scope: !4148)
!4154 = !DILocation(line: 239, column: 17, scope: !4148)
!4155 = !DILocation(line: 239, column: 22, scope: !4148)
!4156 = !DILocation(line: 239, column: 26, scope: !4148)
!4157 = !DILocation(line: 239, column: 9, scope: !4148)
!4158 = !DILocation(line: 239, column: 35, scope: !4148)
!4159 = !DILocation(line: 239, column: 2, scope: !4148)
!4160 = distinct !DISubprogram(name: "autofs_notify_daemon", scope: !2, file: !2, line: 79, type: !4161, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !3223, !3242, !151}
!4163 = !{!4164, !4165, !4166, !4167, !4227, !4228, !4229, !4230, !4234, !4237, !4240}
!4164 = !DILocalVariable(name: "sbi", arg: 1, scope: !4160, file: !2, line: 79, type: !3223)
!4165 = !DILocalVariable(name: "wq", arg: 2, scope: !4160, file: !2, line: 80, type: !3242)
!4166 = !DILocalVariable(name: "type", arg: 3, scope: !4160, file: !2, line: 81, type: !151)
!4167 = !DILocalVariable(name: "pkt", scope: !4160, file: !2, line: 87, type: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4160, file: !2, line: 83, size: 2432, elements: !4169)
!4169 = !{!4170, !4175, !4202}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4168, file: !2, line: 84, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_hdr", file: !57, line: 45, size: 64, elements: !4172)
!4172 = !{!4173, !4174}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !4171, file: !57, line: 46, baseType: !151, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4171, file: !57, line: 47, baseType: !151, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "v4_pkt", scope: !4168, file: !2, line: 85, baseType: !4176, size: 2176)
!4176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "autofs_packet_union", file: !57, line: 183, size: 2176, elements: !4177)
!4177 = !{!4178, !4179, !4189, !4195}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4176, file: !57, line: 184, baseType: !4171, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "missing", scope: !4176, file: !57, line: 185, baseType: !4180, size: 2176)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_missing", file: !57, line: 50, size: 2176, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4180, file: !57, line: 51, baseType: !4171, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !4180, file: !57, line: 52, baseType: !3248, size: 32, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4180, file: !57, line: 53, baseType: !151, size: 32, offset: 96)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4180, file: !57, line: 54, baseType: !4186, size: 2048, offset: 128)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !4187)
!4187 = !{!4188}
!4188 = !DISubrange(count: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !4176, file: !57, line: 186, baseType: !4190, size: 2144)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_expire", file: !57, line: 58, size: 2144, elements: !4191)
!4191 = !{!4192, !4193, !4194}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4190, file: !57, line: 59, baseType: !4171, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4190, file: !57, line: 60, baseType: !151, size: 32, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4190, file: !57, line: 61, baseType: !4186, size: 2048, offset: 96)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "expire_multi", scope: !4176, file: !57, line: 187, baseType: !4196, size: 2176)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_expire_multi", file: !57, line: 176, size: 2176, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4196, file: !57, line: 177, baseType: !4171, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !4196, file: !57, line: 178, baseType: !3248, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4196, file: !57, line: 179, baseType: !151, size: 32, offset: 96)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4196, file: !57, line: 180, baseType: !4186, size: 2048, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "v5_pkt", scope: !4168, file: !2, line: 86, baseType: !4203, size: 2432)
!4203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "autofs_v5_packet_union", file: !57, line: 209, size: 2432, elements: !4204)
!4204 = !{!4205, !4206, !4219, !4221, !4223, !4225}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4203, file: !57, line: 210, baseType: !4171, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "v5_packet", scope: !4203, file: !57, line: 211, baseType: !4207, size: 2432)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_v5_packet", file: !57, line: 191, size: 2432, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4207, file: !57, line: 192, baseType: !4171, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !4207, file: !57, line: 193, baseType: !3248, size: 32, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4207, file: !57, line: 194, baseType: !234, size: 32, offset: 96)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4207, file: !57, line: 195, baseType: !128, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4207, file: !57, line: 196, baseType: !234, size: 32, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4207, file: !57, line: 197, baseType: !234, size: 32, offset: 224)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4207, file: !57, line: 198, baseType: !234, size: 32, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !4207, file: !57, line: 199, baseType: !234, size: 32, offset: 288)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4207, file: !57, line: 200, baseType: !234, size: 32, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4207, file: !57, line: 201, baseType: !4186, size: 2048, offset: 352)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "missing_indirect", scope: !4203, file: !57, line: 212, baseType: !4220, size: 2432)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_packet_missing_indirect_t", file: !57, line: 204, baseType: !4207)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "expire_indirect", scope: !4203, file: !57, line: 213, baseType: !4222, size: 2432)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_packet_expire_indirect_t", file: !57, line: 205, baseType: !4207)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "missing_direct", scope: !4203, file: !57, line: 214, baseType: !4224, size: 2432)
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_packet_missing_direct_t", file: !57, line: 206, baseType: !4207)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "expire_direct", scope: !4203, file: !57, line: 215, baseType: !4226, size: 2432)
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_packet_expire_direct_t", file: !57, line: 207, baseType: !4207)
!4227 = !DILocalVariable(name: "pipe", scope: !4160, file: !2, line: 88, type: !728)
!4228 = !DILocalVariable(name: "pktsz", scope: !4160, file: !2, line: 89, type: !1022)
!4229 = !DILocalVariable(name: "ret", scope: !4160, file: !2, line: 90, type: !151)
!4230 = !DILocalVariable(name: "mp", scope: !4231, file: !2, line: 105, type: !4233)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 104, column: 2)
!4232 = distinct !DILexicalBlock(scope: !4160, file: !2, line: 101, column: 16)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4234 = !DILocalVariable(name: "ep", scope: !4235, file: !2, line: 117, type: !4236)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 116, column: 2)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4237 = !DILocalVariable(name: "packet", scope: !4238, file: !2, line: 137, type: !4239)
!4238 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 136, column: 2)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4240 = !DILocalVariable(name: "user_ns", scope: !4238, file: !2, line: 138, type: !371)
!4241 = !DILocation(line: 79, column: 57, scope: !4160)
!4242 = !DILocation(line: 80, column: 32, scope: !4160)
!4243 = !DILocation(line: 81, column: 10, scope: !4160)
!4244 = !DILocation(line: 83, column: 2, scope: !4160)
!4245 = !DILocation(line: 87, column: 4, scope: !4160)
!4246 = !DILocation(line: 88, column: 2, scope: !4160)
!4247 = !DILocation(line: 88, column: 15, scope: !4160)
!4248 = !DILocation(line: 89, column: 2, scope: !4160)
!4249 = !DILocation(line: 89, column: 9, scope: !4160)
!4250 = !DILocation(line: 90, column: 2, scope: !4160)
!4251 = !DILocation(line: 90, column: 6, scope: !4160)
!4252 = !DILocation(line: 92, column: 2, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !2, line: 92, column: 2)
!4254 = distinct !DILexicalBlock(scope: !4160, file: !2, line: 92, column: 2)
!4255 = !DILocation(line: 92, column: 2, scope: !4254)
!4256 = !DILocation(line: 96, column: 2, scope: !4160)
!4257 = !DILocation(line: 98, column: 26, scope: !4160)
!4258 = !DILocation(line: 98, column: 31, scope: !4160)
!4259 = !DILocation(line: 98, column: 10, scope: !4160)
!4260 = !DILocation(line: 98, column: 24, scope: !4160)
!4261 = !DILocation(line: 99, column: 17, scope: !4160)
!4262 = !DILocation(line: 99, column: 10, scope: !4160)
!4263 = !DILocation(line: 99, column: 15, scope: !4160)
!4264 = !DILocation(line: 101, column: 10, scope: !4160)
!4265 = !DILocation(line: 101, column: 2, scope: !4160)
!4266 = !DILocation(line: 105, column: 3, scope: !4231)
!4267 = !DILocation(line: 105, column: 33, scope: !4231)
!4268 = !DILocation(line: 107, column: 9, scope: !4231)
!4269 = !DILocation(line: 109, column: 26, scope: !4231)
!4270 = !DILocation(line: 109, column: 30, scope: !4231)
!4271 = !DILocation(line: 109, column: 3, scope: !4231)
!4272 = !DILocation(line: 109, column: 7, scope: !4231)
!4273 = !DILocation(line: 109, column: 24, scope: !4231)
!4274 = !DILocation(line: 110, column: 13, scope: !4231)
!4275 = !DILocation(line: 110, column: 17, scope: !4231)
!4276 = !DILocation(line: 110, column: 22, scope: !4231)
!4277 = !DILocation(line: 110, column: 3, scope: !4231)
!4278 = !DILocation(line: 110, column: 7, scope: !4231)
!4279 = !DILocation(line: 110, column: 11, scope: !4231)
!4280 = !DILocation(line: 111, column: 10, scope: !4231)
!4281 = !DILocation(line: 111, column: 14, scope: !4231)
!4282 = !DILocation(line: 111, column: 3, scope: !4231)
!4283 = !DILocation(line: 111, column: 20, scope: !4231)
!4284 = !DILocation(line: 111, column: 24, scope: !4231)
!4285 = !DILocation(line: 111, column: 29, scope: !4231)
!4286 = !DILocation(line: 111, column: 35, scope: !4231)
!4287 = !DILocation(line: 111, column: 39, scope: !4231)
!4288 = !DILocation(line: 111, column: 44, scope: !4231)
!4289 = !DILocation(line: 112, column: 3, scope: !4231)
!4290 = !DILocation(line: 112, column: 7, scope: !4231)
!4291 = !DILocation(line: 112, column: 12, scope: !4231)
!4292 = !DILocation(line: 112, column: 16, scope: !4231)
!4293 = !DILocation(line: 112, column: 21, scope: !4231)
!4294 = !DILocation(line: 112, column: 26, scope: !4231)
!4295 = !DILocation(line: 114, column: 2, scope: !4232)
!4296 = !DILocation(line: 117, column: 3, scope: !4235)
!4297 = !DILocation(line: 117, column: 38, scope: !4235)
!4298 = !DILocation(line: 120, column: 9, scope: !4235)
!4299 = !DILocation(line: 122, column: 26, scope: !4235)
!4300 = !DILocation(line: 122, column: 30, scope: !4235)
!4301 = !DILocation(line: 122, column: 3, scope: !4235)
!4302 = !DILocation(line: 122, column: 7, scope: !4235)
!4303 = !DILocation(line: 122, column: 24, scope: !4235)
!4304 = !DILocation(line: 123, column: 13, scope: !4235)
!4305 = !DILocation(line: 123, column: 17, scope: !4235)
!4306 = !DILocation(line: 123, column: 22, scope: !4235)
!4307 = !DILocation(line: 123, column: 3, scope: !4235)
!4308 = !DILocation(line: 123, column: 7, scope: !4235)
!4309 = !DILocation(line: 123, column: 11, scope: !4235)
!4310 = !DILocation(line: 124, column: 10, scope: !4235)
!4311 = !DILocation(line: 124, column: 14, scope: !4235)
!4312 = !DILocation(line: 124, column: 3, scope: !4235)
!4313 = !DILocation(line: 124, column: 20, scope: !4235)
!4314 = !DILocation(line: 124, column: 24, scope: !4235)
!4315 = !DILocation(line: 124, column: 29, scope: !4235)
!4316 = !DILocation(line: 124, column: 35, scope: !4235)
!4317 = !DILocation(line: 124, column: 39, scope: !4235)
!4318 = !DILocation(line: 124, column: 44, scope: !4235)
!4319 = !DILocation(line: 125, column: 3, scope: !4235)
!4320 = !DILocation(line: 125, column: 7, scope: !4235)
!4321 = !DILocation(line: 125, column: 12, scope: !4235)
!4322 = !DILocation(line: 125, column: 16, scope: !4235)
!4323 = !DILocation(line: 125, column: 21, scope: !4235)
!4324 = !DILocation(line: 125, column: 26, scope: !4235)
!4325 = !DILocation(line: 127, column: 2, scope: !4232)
!4326 = !DILocation(line: 137, column: 3, scope: !4238)
!4327 = !DILocation(line: 137, column: 28, scope: !4238)
!4328 = !DILocation(line: 138, column: 3, scope: !4238)
!4329 = !DILocation(line: 138, column: 26, scope: !4238)
!4330 = !DILocation(line: 138, column: 36, scope: !4238)
!4331 = !DILocation(line: 138, column: 41, scope: !4238)
!4332 = !DILocation(line: 138, column: 47, scope: !4238)
!4333 = !DILocation(line: 138, column: 55, scope: !4238)
!4334 = !DILocation(line: 140, column: 9, scope: !4238)
!4335 = !DILocation(line: 142, column: 30, scope: !4238)
!4336 = !DILocation(line: 142, column: 34, scope: !4238)
!4337 = !DILocation(line: 142, column: 3, scope: !4238)
!4338 = !DILocation(line: 142, column: 11, scope: !4238)
!4339 = !DILocation(line: 142, column: 28, scope: !4238)
!4340 = !DILocation(line: 143, column: 17, scope: !4238)
!4341 = !DILocation(line: 143, column: 21, scope: !4238)
!4342 = !DILocation(line: 143, column: 26, scope: !4238)
!4343 = !DILocation(line: 143, column: 3, scope: !4238)
!4344 = !DILocation(line: 143, column: 11, scope: !4238)
!4345 = !DILocation(line: 143, column: 15, scope: !4238)
!4346 = !DILocation(line: 144, column: 10, scope: !4238)
!4347 = !DILocation(line: 144, column: 18, scope: !4238)
!4348 = !DILocation(line: 144, column: 3, scope: !4238)
!4349 = !DILocation(line: 144, column: 24, scope: !4238)
!4350 = !DILocation(line: 144, column: 28, scope: !4238)
!4351 = !DILocation(line: 144, column: 33, scope: !4238)
!4352 = !DILocation(line: 144, column: 39, scope: !4238)
!4353 = !DILocation(line: 144, column: 43, scope: !4238)
!4354 = !DILocation(line: 144, column: 48, scope: !4238)
!4355 = !DILocation(line: 145, column: 3, scope: !4238)
!4356 = !DILocation(line: 145, column: 11, scope: !4238)
!4357 = !DILocation(line: 145, column: 16, scope: !4238)
!4358 = !DILocation(line: 145, column: 20, scope: !4238)
!4359 = !DILocation(line: 145, column: 25, scope: !4238)
!4360 = !DILocation(line: 145, column: 30, scope: !4238)
!4361 = !DILocation(line: 146, column: 17, scope: !4238)
!4362 = !DILocation(line: 146, column: 21, scope: !4238)
!4363 = !DILocation(line: 146, column: 3, scope: !4238)
!4364 = !DILocation(line: 146, column: 11, scope: !4238)
!4365 = !DILocation(line: 146, column: 15, scope: !4238)
!4366 = !DILocation(line: 147, column: 17, scope: !4238)
!4367 = !DILocation(line: 147, column: 21, scope: !4238)
!4368 = !DILocation(line: 147, column: 3, scope: !4238)
!4369 = !DILocation(line: 147, column: 11, scope: !4238)
!4370 = !DILocation(line: 147, column: 15, scope: !4238)
!4371 = !DILocation(line: 148, column: 34, scope: !4238)
!4372 = !DILocation(line: 148, column: 43, scope: !4238)
!4373 = !DILocation(line: 148, column: 47, scope: !4238)
!4374 = !DILocation(line: 148, column: 17, scope: !4238)
!4375 = !DILocation(line: 148, column: 3, scope: !4238)
!4376 = !DILocation(line: 148, column: 11, scope: !4238)
!4377 = !DILocation(line: 148, column: 15, scope: !4238)
!4378 = !DILocation(line: 149, column: 34, scope: !4238)
!4379 = !DILocation(line: 149, column: 43, scope: !4238)
!4380 = !DILocation(line: 149, column: 47, scope: !4238)
!4381 = !DILocation(line: 149, column: 17, scope: !4238)
!4382 = !DILocation(line: 149, column: 3, scope: !4238)
!4383 = !DILocation(line: 149, column: 11, scope: !4238)
!4384 = !DILocation(line: 149, column: 15, scope: !4238)
!4385 = !DILocation(line: 150, column: 17, scope: !4238)
!4386 = !DILocation(line: 150, column: 21, scope: !4238)
!4387 = !DILocation(line: 150, column: 3, scope: !4238)
!4388 = !DILocation(line: 150, column: 11, scope: !4238)
!4389 = !DILocation(line: 150, column: 15, scope: !4238)
!4390 = !DILocation(line: 151, column: 18, scope: !4238)
!4391 = !DILocation(line: 151, column: 22, scope: !4238)
!4392 = !DILocation(line: 151, column: 3, scope: !4238)
!4393 = !DILocation(line: 151, column: 11, scope: !4238)
!4394 = !DILocation(line: 151, column: 16, scope: !4238)
!4395 = !DILocation(line: 153, column: 2, scope: !4232)
!4396 = !DILocation(line: 155, column: 3, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 155, column: 3)
!4398 = !DILocation(line: 155, column: 3, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 155, column: 3)
!4400 = !DILocation(line: 156, column: 17, scope: !4232)
!4401 = !DILocation(line: 156, column: 22, scope: !4232)
!4402 = !DILocation(line: 156, column: 3, scope: !4232)
!4403 = !DILocation(line: 157, column: 3, scope: !4232)
!4404 = !DILocation(line: 160, column: 18, scope: !4160)
!4405 = !DILocation(line: 160, column: 23, scope: !4160)
!4406 = !DILocation(line: 160, column: 9, scope: !4160)
!4407 = !DILocation(line: 160, column: 7, scope: !4160)
!4408 = !DILocation(line: 162, column: 16, scope: !4160)
!4409 = !DILocation(line: 162, column: 21, scope: !4160)
!4410 = !DILocation(line: 162, column: 2, scope: !4160)
!4411 = !DILocation(line: 164, column: 29, scope: !4160)
!4412 = !DILocation(line: 164, column: 34, scope: !4160)
!4413 = !DILocation(line: 164, column: 46, scope: !4160)
!4414 = !DILocation(line: 164, column: 16, scope: !4160)
!4415 = !DILocation(line: 164, column: 14, scope: !4160)
!4416 = !DILocation(line: 164, column: 2, scope: !4160)
!4417 = !DILocation(line: 170, column: 23, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4160, file: !2, line: 164, column: 54)
!4419 = !DILocation(line: 170, column: 28, scope: !4418)
!4420 = !DILocation(line: 170, column: 32, scope: !4418)
!4421 = !DILocation(line: 170, column: 50, scope: !4418)
!4422 = !DILocation(line: 170, column: 3, scope: !4418)
!4423 = !DILocation(line: 171, column: 3, scope: !4418)
!4424 = !DILocation(line: 173, column: 25, scope: !4418)
!4425 = !DILocation(line: 173, column: 3, scope: !4418)
!4426 = !DILocation(line: 174, column: 3, scope: !4418)
!4427 = !DILocation(line: 176, column: 7, scope: !4160)
!4428 = !DILocation(line: 176, column: 2, scope: !4160)
!4429 = !DILocation(line: 177, column: 1, scope: !4160)
!4430 = !DILocation(line: 112, column: 2, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !3337, file: !3338, line: 112, column: 2)
!4432 = !DILocation(line: 112, column: 2, scope: !3337)
!4433 = !DILocation(line: 113, column: 1, scope: !3337)
!4434 = !DISubprogram(name: "init_wait_entry", scope: !792, file: !792, line: 290, type: !4435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !3305, !151}
!4437 = !DISubprogram(name: "prepare_to_wait_event", scope: !792, file: !792, line: 1199, type: !4438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!980, !3445, !3305, !151}
!4440 = !DISubprogram(name: "schedule", scope: !395, file: !395, line: 303, type: !2638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4441 = !DISubprogram(name: "finish_wait", scope: !792, file: !792, line: 1200, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !3445, !3305}
!4444 = distinct !DISubprogram(name: "autofs_dentry_ino", scope: !3215, file: !3215, line: 134, type: !4445, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!3213, !830}
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "dentry", arg: 1, scope: !4444, file: !3215, line: 134, type: !830)
!4449 = !DILocation(line: 134, column: 68, scope: !4444)
!4450 = !DILocation(line: 136, column: 32, scope: !4444)
!4451 = !DILocation(line: 136, column: 40, scope: !4444)
!4452 = !DILocation(line: 136, column: 2, scope: !4444)
!4453 = !DISubprogram(name: "d_lookup", scope: !832, file: !832, line: 277, type: !4454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!830, !1529, !1536}
!4456 = distinct !DISubprogram(name: "spin_lock", scope: !4457, file: !4457, line: 349, type: !4458, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4461)
!4457 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4460}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!4461 = !{!4462}
!4462 = !DILocalVariable(name: "lock", arg: 1, scope: !4456, file: !4457, line: 349, type: !4460)
!4463 = !DILocation(line: 349, column: 51, scope: !4456)
!4464 = !DILocation(line: 351, column: 2, scope: !4456)
!4465 = !DILocation(line: 352, column: 1, scope: !4456)
!4466 = distinct !DISubprogram(name: "spin_unlock", scope: !4457, file: !4457, line: 389, type: !4458, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4467)
!4467 = !{!4468}
!4468 = !DILocalVariable(name: "lock", arg: 1, scope: !4466, file: !4457, line: 389, type: !4460)
!4469 = !DILocation(line: 389, column: 53, scope: !4466)
!4470 = !DILocation(line: 391, column: 2, scope: !4466)
!4471 = !DILocation(line: 392, column: 1, scope: !4466)
!4472 = !DISubprogram(name: "dput", scope: !832, file: !832, line: 368, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4473 = distinct !DISubprogram(name: "autofs_wait_release", scope: !2, file: !2, line: 487, type: !4474, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!151, !3223, !3248, !151}
!4476 = !{!4477, !4478, !4479, !4480, !4481}
!4477 = !DILocalVariable(name: "sbi", arg: 1, scope: !4473, file: !2, line: 487, type: !3223)
!4478 = !DILocalVariable(name: "wait_queue_token", arg: 2, scope: !4473, file: !2, line: 488, type: !3248)
!4479 = !DILocalVariable(name: "status", arg: 3, scope: !4473, file: !2, line: 488, type: !151)
!4480 = !DILocalVariable(name: "wq", scope: !4473, file: !2, line: 490, type: !3242)
!4481 = !DILocalVariable(name: "wql", scope: !4473, file: !2, line: 490, type: !3975)
!4482 = !DILocation(line: 487, column: 48, scope: !4473)
!4483 = !DILocation(line: 488, column: 17, scope: !4473)
!4484 = !DILocation(line: 488, column: 39, scope: !4473)
!4485 = !DILocation(line: 490, column: 2, scope: !4473)
!4486 = !DILocation(line: 490, column: 28, scope: !4473)
!4487 = !DILocation(line: 490, column: 34, scope: !4473)
!4488 = !DILocation(line: 492, column: 14, scope: !4473)
!4489 = !DILocation(line: 492, column: 19, scope: !4473)
!4490 = !DILocation(line: 492, column: 2, scope: !4473)
!4491 = !DILocation(line: 493, column: 14, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 493, column: 2)
!4493 = !DILocation(line: 493, column: 19, scope: !4492)
!4494 = !DILocation(line: 493, column: 11, scope: !4492)
!4495 = !DILocation(line: 493, column: 7, scope: !4492)
!4496 = !DILocation(line: 493, column: 34, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !2, line: 493, column: 2)
!4498 = !DILocation(line: 493, column: 33, scope: !4497)
!4499 = !DILocation(line: 493, column: 31, scope: !4497)
!4500 = !DILocation(line: 493, column: 39, scope: !4497)
!4501 = !DILocation(line: 493, column: 2, scope: !4492)
!4502 = !DILocation(line: 494, column: 7, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 494, column: 7)
!4504 = distinct !DILexicalBlock(scope: !4497, file: !2, line: 493, column: 65)
!4505 = !DILocation(line: 494, column: 11, scope: !4503)
!4506 = !DILocation(line: 494, column: 31, scope: !4503)
!4507 = !DILocation(line: 494, column: 28, scope: !4503)
!4508 = !DILocation(line: 494, column: 7, scope: !4504)
!4509 = !DILocation(line: 495, column: 4, scope: !4503)
!4510 = !DILocation(line: 496, column: 2, scope: !4504)
!4511 = !DILocation(line: 493, column: 55, scope: !4497)
!4512 = !DILocation(line: 493, column: 59, scope: !4497)
!4513 = !DILocation(line: 493, column: 52, scope: !4497)
!4514 = !DILocation(line: 493, column: 2, scope: !4497)
!4515 = distinct !{!4515, !4501, !4516, !3417, !3418}
!4516 = !DILocation(line: 496, column: 2, scope: !4492)
!4517 = !DILocation(line: 498, column: 7, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 498, column: 6)
!4519 = !DILocation(line: 498, column: 6, scope: !4473)
!4520 = !DILocation(line: 499, column: 17, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4518, file: !2, line: 498, column: 11)
!4522 = !DILocation(line: 499, column: 22, scope: !4521)
!4523 = !DILocation(line: 499, column: 3, scope: !4521)
!4524 = !DILocation(line: 500, column: 3, scope: !4521)
!4525 = !DILocation(line: 503, column: 9, scope: !4473)
!4526 = !DILocation(line: 503, column: 13, scope: !4473)
!4527 = !DILocation(line: 503, column: 3, scope: !4473)
!4528 = !DILocation(line: 503, column: 7, scope: !4473)
!4529 = !DILocation(line: 504, column: 8, scope: !4473)
!4530 = !DILocation(line: 504, column: 12, scope: !4473)
!4531 = !DILocation(line: 504, column: 17, scope: !4473)
!4532 = !DILocation(line: 504, column: 24, scope: !4473)
!4533 = !DILocation(line: 504, column: 28, scope: !4473)
!4534 = !DILocation(line: 504, column: 22, scope: !4473)
!4535 = !DILocation(line: 504, column: 2, scope: !4473)
!4536 = !DILocation(line: 505, column: 2, scope: !4473)
!4537 = !DILocation(line: 505, column: 6, scope: !4473)
!4538 = !DILocation(line: 505, column: 11, scope: !4473)
!4539 = !DILocation(line: 505, column: 16, scope: !4473)
!4540 = !DILocation(line: 506, column: 15, scope: !4473)
!4541 = !DILocation(line: 506, column: 2, scope: !4473)
!4542 = !DILocation(line: 506, column: 6, scope: !4473)
!4543 = !DILocation(line: 506, column: 13, scope: !4473)
!4544 = !DILocation(line: 507, column: 2, scope: !4473)
!4545 = !DILocation(line: 508, column: 9, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 508, column: 6)
!4547 = !DILocation(line: 508, column: 13, scope: !4546)
!4548 = !DILocation(line: 508, column: 7, scope: !4546)
!4549 = !DILocation(line: 508, column: 6, scope: !4473)
!4550 = !DILocation(line: 509, column: 9, scope: !4546)
!4551 = !DILocation(line: 509, column: 3, scope: !4546)
!4552 = !DILocation(line: 510, column: 16, scope: !4473)
!4553 = !DILocation(line: 510, column: 21, scope: !4473)
!4554 = !DILocation(line: 510, column: 2, scope: !4473)
!4555 = !DILocation(line: 512, column: 2, scope: !4473)
!4556 = !DILocation(line: 513, column: 1, scope: !4473)
!4557 = !DISubprogram(name: "__task_pid_nr_ns", scope: !395, file: !395, line: 1578, type: !4558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!2375, !393, !11, !804}
!4560 = !DISubprogram(name: "kmalloc_large", scope: !68, file: !68, line: 531, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4561 = distinct !DISubprogram(name: "__kmalloc_index", scope: !68, file: !68, line: 444, type: !4562, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4564)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!13, !1022, !277}
!4564 = !{!4565, !4566}
!4565 = !DILocalVariable(name: "size", arg: 1, scope: !4561, file: !68, line: 444, type: !1022)
!4566 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4561, file: !68, line: 445, type: !277)
!4567 = !DILocation(line: 444, column: 60, scope: !4561)
!4568 = !DILocation(line: 445, column: 16, scope: !4561)
!4569 = !DILocation(line: 447, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 447, column: 6)
!4571 = !DILocation(line: 447, column: 6, scope: !4561)
!4572 = !DILocation(line: 448, column: 3, scope: !4570)
!4573 = !DILocation(line: 450, column: 6, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 450, column: 6)
!4575 = !DILocation(line: 450, column: 11, scope: !4574)
!4576 = !DILocation(line: 450, column: 6, scope: !4561)
!4577 = !DILocation(line: 451, column: 3, scope: !4574)
!4578 = !DILocation(line: 453, column: 32, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 453, column: 6)
!4580 = !DILocation(line: 453, column: 37, scope: !4579)
!4581 = !DILocation(line: 453, column: 42, scope: !4579)
!4582 = !DILocation(line: 453, column: 45, scope: !4579)
!4583 = !DILocation(line: 453, column: 50, scope: !4579)
!4584 = !DILocation(line: 453, column: 6, scope: !4561)
!4585 = !DILocation(line: 454, column: 3, scope: !4579)
!4586 = !DILocation(line: 455, column: 32, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 455, column: 6)
!4588 = !DILocation(line: 455, column: 37, scope: !4587)
!4589 = !DILocation(line: 455, column: 43, scope: !4587)
!4590 = !DILocation(line: 455, column: 46, scope: !4587)
!4591 = !DILocation(line: 455, column: 51, scope: !4587)
!4592 = !DILocation(line: 455, column: 6, scope: !4561)
!4593 = !DILocation(line: 456, column: 3, scope: !4587)
!4594 = !DILocation(line: 457, column: 6, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 457, column: 6)
!4596 = !DILocation(line: 457, column: 11, scope: !4595)
!4597 = !DILocation(line: 457, column: 6, scope: !4561)
!4598 = !DILocation(line: 457, column: 26, scope: !4595)
!4599 = !DILocation(line: 458, column: 6, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 458, column: 6)
!4601 = !DILocation(line: 458, column: 11, scope: !4600)
!4602 = !DILocation(line: 458, column: 6, scope: !4561)
!4603 = !DILocation(line: 458, column: 26, scope: !4600)
!4604 = !DILocation(line: 459, column: 6, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 459, column: 6)
!4606 = !DILocation(line: 459, column: 11, scope: !4605)
!4607 = !DILocation(line: 459, column: 6, scope: !4561)
!4608 = !DILocation(line: 459, column: 26, scope: !4605)
!4609 = !DILocation(line: 460, column: 6, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 460, column: 6)
!4611 = !DILocation(line: 460, column: 11, scope: !4610)
!4612 = !DILocation(line: 460, column: 6, scope: !4561)
!4613 = !DILocation(line: 460, column: 26, scope: !4610)
!4614 = !DILocation(line: 461, column: 6, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 461, column: 6)
!4616 = !DILocation(line: 461, column: 11, scope: !4615)
!4617 = !DILocation(line: 461, column: 6, scope: !4561)
!4618 = !DILocation(line: 461, column: 26, scope: !4615)
!4619 = !DILocation(line: 462, column: 6, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 462, column: 6)
!4621 = !DILocation(line: 462, column: 11, scope: !4620)
!4622 = !DILocation(line: 462, column: 6, scope: !4561)
!4623 = !DILocation(line: 462, column: 26, scope: !4620)
!4624 = !DILocation(line: 463, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 463, column: 6)
!4626 = !DILocation(line: 463, column: 11, scope: !4625)
!4627 = !DILocation(line: 463, column: 6, scope: !4561)
!4628 = !DILocation(line: 463, column: 26, scope: !4625)
!4629 = !DILocation(line: 464, column: 6, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 464, column: 6)
!4631 = !DILocation(line: 464, column: 11, scope: !4630)
!4632 = !DILocation(line: 464, column: 6, scope: !4561)
!4633 = !DILocation(line: 464, column: 26, scope: !4630)
!4634 = !DILocation(line: 465, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 465, column: 6)
!4636 = !DILocation(line: 465, column: 11, scope: !4635)
!4637 = !DILocation(line: 465, column: 6, scope: !4561)
!4638 = !DILocation(line: 465, column: 26, scope: !4635)
!4639 = !DILocation(line: 466, column: 6, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 466, column: 6)
!4641 = !DILocation(line: 466, column: 11, scope: !4640)
!4642 = !DILocation(line: 466, column: 6, scope: !4561)
!4643 = !DILocation(line: 466, column: 26, scope: !4640)
!4644 = !DILocation(line: 467, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 467, column: 6)
!4646 = !DILocation(line: 467, column: 11, scope: !4645)
!4647 = !DILocation(line: 467, column: 6, scope: !4561)
!4648 = !DILocation(line: 467, column: 26, scope: !4645)
!4649 = !DILocation(line: 468, column: 6, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 468, column: 6)
!4651 = !DILocation(line: 468, column: 11, scope: !4650)
!4652 = !DILocation(line: 468, column: 6, scope: !4561)
!4653 = !DILocation(line: 468, column: 26, scope: !4650)
!4654 = !DILocation(line: 469, column: 6, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 469, column: 6)
!4656 = !DILocation(line: 469, column: 11, scope: !4655)
!4657 = !DILocation(line: 469, column: 6, scope: !4561)
!4658 = !DILocation(line: 469, column: 26, scope: !4655)
!4659 = !DILocation(line: 470, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 470, column: 6)
!4661 = !DILocation(line: 470, column: 11, scope: !4660)
!4662 = !DILocation(line: 470, column: 6, scope: !4561)
!4663 = !DILocation(line: 470, column: 26, scope: !4660)
!4664 = !DILocation(line: 471, column: 6, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 471, column: 6)
!4666 = !DILocation(line: 471, column: 11, scope: !4665)
!4667 = !DILocation(line: 471, column: 6, scope: !4561)
!4668 = !DILocation(line: 471, column: 26, scope: !4665)
!4669 = !DILocation(line: 472, column: 6, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 472, column: 6)
!4671 = !DILocation(line: 472, column: 11, scope: !4670)
!4672 = !DILocation(line: 472, column: 6, scope: !4561)
!4673 = !DILocation(line: 472, column: 26, scope: !4670)
!4674 = !DILocation(line: 473, column: 6, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 473, column: 6)
!4676 = !DILocation(line: 473, column: 11, scope: !4675)
!4677 = !DILocation(line: 473, column: 6, scope: !4561)
!4678 = !DILocation(line: 473, column: 26, scope: !4675)
!4679 = !DILocation(line: 474, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 474, column: 6)
!4681 = !DILocation(line: 474, column: 11, scope: !4680)
!4682 = !DILocation(line: 474, column: 6, scope: !4561)
!4683 = !DILocation(line: 474, column: 27, scope: !4680)
!4684 = !DILocation(line: 475, column: 6, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 475, column: 6)
!4686 = !DILocation(line: 475, column: 11, scope: !4685)
!4687 = !DILocation(line: 475, column: 6, scope: !4561)
!4688 = !DILocation(line: 475, column: 32, scope: !4685)
!4689 = !DILocation(line: 477, column: 50, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4561, file: !68, line: 477, column: 6)
!4691 = !{i8 0, i8 2}
!4692 = !DILocation(line: 477, column: 6, scope: !4561)
!4693 = !DILocation(line: 478, column: 3, scope: !4690)
!4694 = !DILocation(line: 478, column: 3, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !68, line: 478, column: 3)
!4696 = distinct !DILexicalBlock(scope: !4690, file: !68, line: 478, column: 3)
!4697 = !{i32 -2141701753}
!4698 = !DILocation(line: 478, column: 3, scope: !4696)
!4699 = !DILocation(line: 480, column: 3, scope: !4690)
!4700 = !DILocation(line: 480, column: 3, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4690, file: !68, line: 480, column: 3)
!4702 = !DILocation(line: 480, column: 3, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4701, file: !68, line: 480, column: 3)
!4704 = !DILocation(line: 480, column: 3, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !68, line: 480, column: 3)
!4706 = !{i64 2153265746, i64 2153265775, i64 2153265821, i64 2153265879, i64 2153265933, i64 2153265987, i64 2153266042, i64 2153266073}
!4707 = !DILocation(line: 483, column: 2, scope: !4561)
!4708 = !DILocation(line: 484, column: 1, scope: !4561)
!4709 = !DISubprogram(name: "kmalloc_trace", scope: !68, file: !68, line: 525, type: !4710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!78, !4712, !79, !1022}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1188, line: 325, flags: DIFlagFwdDecl)
!4714 = distinct !DISubprogram(name: "kmalloc_type", scope: !68, file: !68, line: 401, type: !4715, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4717)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!67, !79, !171}
!4717 = !{!4718, !4719}
!4718 = !DILocalVariable(name: "flags", arg: 1, scope: !4714, file: !68, line: 401, type: !79)
!4719 = !DILocalVariable(name: "caller", arg: 2, scope: !4714, file: !68, line: 401, type: !171)
!4720 = !DILocation(line: 401, column: 67, scope: !4714)
!4721 = !DILocation(line: 401, column: 88, scope: !4714)
!4722 = !DILocation(line: 407, column: 6, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4714, file: !68, line: 407, column: 6)
!4724 = !DILocation(line: 407, column: 6, scope: !4714)
!4725 = !DILocation(line: 413, column: 3, scope: !4723)
!4726 = !DILocation(line: 423, column: 38, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4714, file: !68, line: 423, column: 6)
!4728 = !DILocation(line: 423, column: 44, scope: !4727)
!4729 = !DILocation(line: 423, column: 6, scope: !4714)
!4730 = !DILocation(line: 424, column: 3, scope: !4727)
!4731 = !DILocation(line: 426, column: 3, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4714, file: !68, line: 425, column: 6)
!4733 = !DILocation(line: 429, column: 1, scope: !4714)
!4734 = !DISubprogram(name: "__kmalloc", scope: !68, file: !68, line: 488, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4735 = !DISubprogram(name: "__compiletime_assert_245", scope: !68, file: !68, line: 478, type: !2638, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4736 = distinct !DISubprogram(name: "autofs_find_wait", scope: !2, file: !2, line: 180, type: !4737, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4739)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!3242, !3223, !1536}
!4739 = !{!4740, !4741, !4742}
!4740 = !DILocalVariable(name: "sbi", arg: 1, scope: !4736, file: !2, line: 180, type: !3223)
!4741 = !DILocalVariable(name: "qstr", arg: 2, scope: !4736, file: !2, line: 180, type: !1536)
!4742 = !DILocalVariable(name: "wq", scope: !4736, file: !2, line: 182, type: !3242)
!4743 = !DILocation(line: 180, column: 41, scope: !4736)
!4744 = !DILocation(line: 180, column: 65, scope: !4736)
!4745 = !DILocation(line: 182, column: 2, scope: !4736)
!4746 = !DILocation(line: 182, column: 28, scope: !4736)
!4747 = !DILocation(line: 184, column: 12, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4736, file: !2, line: 184, column: 2)
!4749 = !DILocation(line: 184, column: 17, scope: !4748)
!4750 = !DILocation(line: 184, column: 10, scope: !4748)
!4751 = !DILocation(line: 184, column: 7, scope: !4748)
!4752 = !DILocation(line: 184, column: 25, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4748, file: !2, line: 184, column: 2)
!4754 = !DILocation(line: 184, column: 2, scope: !4748)
!4755 = !DILocation(line: 185, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !2, line: 185, column: 7)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !2, line: 184, column: 44)
!4758 = !DILocation(line: 185, column: 11, scope: !4756)
!4759 = !DILocation(line: 185, column: 16, scope: !4756)
!4760 = !DILocation(line: 185, column: 24, scope: !4756)
!4761 = !DILocation(line: 185, column: 30, scope: !4756)
!4762 = !DILocation(line: 185, column: 21, scope: !4756)
!4763 = !DILocation(line: 185, column: 35, scope: !4756)
!4764 = !DILocation(line: 186, column: 7, scope: !4756)
!4765 = !DILocation(line: 186, column: 11, scope: !4756)
!4766 = !DILocation(line: 186, column: 16, scope: !4756)
!4767 = !DILocation(line: 186, column: 23, scope: !4756)
!4768 = !DILocation(line: 186, column: 29, scope: !4756)
!4769 = !DILocation(line: 186, column: 20, scope: !4756)
!4770 = !DILocation(line: 186, column: 33, scope: !4756)
!4771 = !DILocation(line: 187, column: 7, scope: !4756)
!4772 = !DILocation(line: 187, column: 11, scope: !4756)
!4773 = !DILocation(line: 187, column: 16, scope: !4756)
!4774 = !DILocation(line: 187, column: 21, scope: !4756)
!4775 = !DILocation(line: 188, column: 15, scope: !4756)
!4776 = !DILocation(line: 188, column: 19, scope: !4756)
!4777 = !DILocation(line: 188, column: 24, scope: !4756)
!4778 = !DILocation(line: 188, column: 30, scope: !4756)
!4779 = !DILocation(line: 188, column: 36, scope: !4756)
!4780 = !DILocation(line: 188, column: 42, scope: !4756)
!4781 = !DILocation(line: 188, column: 48, scope: !4756)
!4782 = !DILocation(line: 188, column: 8, scope: !4756)
!4783 = !DILocation(line: 185, column: 7, scope: !4757)
!4784 = !DILocation(line: 189, column: 4, scope: !4756)
!4785 = !DILocation(line: 190, column: 2, scope: !4757)
!4786 = !DILocation(line: 184, column: 34, scope: !4753)
!4787 = !DILocation(line: 184, column: 38, scope: !4753)
!4788 = !DILocation(line: 184, column: 32, scope: !4753)
!4789 = !DILocation(line: 184, column: 2, scope: !4753)
!4790 = distinct !{!4790, !4754, !4791, !3417, !3418}
!4791 = !DILocation(line: 190, column: 2, scope: !4748)
!4792 = !DILocation(line: 191, column: 9, scope: !4736)
!4793 = !DILocation(line: 192, column: 1, scope: !4736)
!4794 = !DILocation(line: 191, column: 2, scope: !4736)
!4795 = !DISubprogram(name: "schedule_timeout_interruptible", scope: !395, file: !395, line: 299, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!980, !980}
!4798 = distinct !DISubprogram(name: "d_unhashed", scope: !832, file: !832, line: 333, type: !1540, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4799)
!4799 = !{!4800}
!4800 = !DILocalVariable(name: "dentry", arg: 1, scope: !4798, file: !832, line: 333, type: !1529)
!4801 = !DILocation(line: 333, column: 51, scope: !4798)
!4802 = !DILocation(line: 335, column: 28, scope: !4798)
!4803 = !DILocation(line: 335, column: 36, scope: !4798)
!4804 = !DILocation(line: 335, column: 9, scope: !4798)
!4805 = !DILocation(line: 335, column: 2, scope: !4798)
!4806 = distinct !DISubprogram(name: "d_really_is_positive", scope: !832, file: !832, line: 482, type: !3881, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4807)
!4807 = !{!4808}
!4808 = !DILocalVariable(name: "dentry", arg: 1, scope: !4806, file: !832, line: 482, type: !1529)
!4809 = !DILocation(line: 482, column: 62, scope: !4806)
!4810 = !DILocation(line: 484, column: 9, scope: !4806)
!4811 = !DILocation(line: 484, column: 17, scope: !4806)
!4812 = !DILocation(line: 484, column: 25, scope: !4806)
!4813 = !DILocation(line: 484, column: 2, scope: !4806)
!4814 = !DISubprogram(name: "path_has_submounts", scope: !832, file: !832, line: 262, type: !4815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!151, !988}
!4817 = !DISubprogram(name: "memcmp", scope: !3962, file: !3962, line: 196, type: !4818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!151, !3440, !3440, !1023}
!4820 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !842, file: !842, line: 52, type: !4821, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4825)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!277, !4823}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!4825 = !{!4826}
!4826 = !DILocalVariable(name: "h", arg: 1, scope: !4820, file: !842, line: 52, type: !4823)
!4827 = !DILocation(line: 52, column: 67, scope: !4820)
!4828 = !DILocation(line: 54, column: 10, scope: !4820)
!4829 = !DILocation(line: 54, column: 13, scope: !4820)
!4830 = !DILocation(line: 54, column: 9, scope: !4820)
!4831 = !DILocation(line: 54, column: 2, scope: !4820)
!4832 = distinct !DISubprogram(name: "new_encode_dev", scope: !4833, file: !4833, line: 39, type: !4834, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4836)
!4833 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!233, !940}
!4836 = !{!4837, !4838, !4839}
!4837 = !DILocalVariable(name: "dev", arg: 1, scope: !4832, file: !4833, line: 39, type: !940)
!4838 = !DILocalVariable(name: "major", scope: !4832, file: !4833, line: 41, type: !13)
!4839 = !DILocalVariable(name: "minor", scope: !4832, file: !4833, line: 42, type: !13)
!4840 = !DILocation(line: 39, column: 49, scope: !4832)
!4841 = !DILocation(line: 41, column: 2, scope: !4832)
!4842 = !DILocation(line: 41, column: 11, scope: !4832)
!4843 = !DILocation(line: 41, column: 19, scope: !4832)
!4844 = !DILocation(line: 42, column: 2, scope: !4832)
!4845 = !DILocation(line: 42, column: 11, scope: !4832)
!4846 = !DILocation(line: 42, column: 19, scope: !4832)
!4847 = !DILocation(line: 43, column: 10, scope: !4832)
!4848 = !DILocation(line: 43, column: 16, scope: !4832)
!4849 = !DILocation(line: 43, column: 27, scope: !4832)
!4850 = !DILocation(line: 43, column: 33, scope: !4832)
!4851 = !DILocation(line: 43, column: 24, scope: !4832)
!4852 = !DILocation(line: 43, column: 43, scope: !4832)
!4853 = !DILocation(line: 43, column: 49, scope: !4832)
!4854 = !DILocation(line: 43, column: 58, scope: !4832)
!4855 = !DILocation(line: 43, column: 39, scope: !4832)
!4856 = !DILocation(line: 44, column: 1, scope: !4832)
!4857 = !DILocation(line: 43, column: 2, scope: !4832)
!4858 = distinct !DISubprogram(name: "d_inode", scope: !832, file: !832, line: 514, type: !4859, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4861)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!865, !1529}
!4861 = !{!4862}
!4862 = !DILocalVariable(name: "dentry", arg: 1, scope: !4858, file: !832, line: 514, type: !1529)
!4863 = !DILocation(line: 514, column: 58, scope: !4858)
!4864 = !DILocation(line: 516, column: 9, scope: !4858)
!4865 = !DILocation(line: 516, column: 17, scope: !4858)
!4866 = !DILocation(line: 516, column: 2, scope: !4858)
!4867 = distinct !DISubprogram(name: "from_kuid_munged", scope: !100, file: !100, line: 163, type: !4868, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4870)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!104, !371, !99}
!4870 = !{!4871, !4872, !4873}
!4871 = !DILocalVariable(name: "to", arg: 1, scope: !4867, file: !100, line: 163, type: !371)
!4872 = !DILocalVariable(name: "kuid", arg: 2, scope: !4867, file: !100, line: 163, type: !99)
!4873 = !DILocalVariable(name: "uid", scope: !4867, file: !100, line: 165, type: !104)
!4874 = !DILocation(line: 163, column: 61, scope: !4867)
!4875 = !DILocation(line: 163, column: 72, scope: !4867)
!4876 = !DILocation(line: 165, column: 2, scope: !4867)
!4877 = !DILocation(line: 165, column: 8, scope: !4867)
!4878 = !DILocation(line: 165, column: 24, scope: !4867)
!4879 = !DILocation(line: 165, column: 14, scope: !4867)
!4880 = !DILocation(line: 166, column: 6, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4867, file: !100, line: 166, column: 6)
!4882 = !DILocation(line: 166, column: 10, scope: !4881)
!4883 = !DILocation(line: 166, column: 6, scope: !4867)
!4884 = !DILocation(line: 167, column: 9, scope: !4881)
!4885 = !DILocation(line: 167, column: 7, scope: !4881)
!4886 = !DILocation(line: 167, column: 3, scope: !4881)
!4887 = !DILocation(line: 168, column: 9, scope: !4867)
!4888 = !DILocation(line: 169, column: 1, scope: !4867)
!4889 = !DILocation(line: 168, column: 2, scope: !4867)
!4890 = distinct !DISubprogram(name: "from_kgid_munged", scope: !100, file: !100, line: 171, type: !4891, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4893)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!112, !371, !108}
!4893 = !{!4894, !4895, !4896}
!4894 = !DILocalVariable(name: "to", arg: 1, scope: !4890, file: !100, line: 171, type: !371)
!4895 = !DILocalVariable(name: "kgid", arg: 2, scope: !4890, file: !100, line: 171, type: !108)
!4896 = !DILocalVariable(name: "gid", scope: !4890, file: !100, line: 173, type: !112)
!4897 = !DILocation(line: 171, column: 61, scope: !4890)
!4898 = !DILocation(line: 171, column: 72, scope: !4890)
!4899 = !DILocation(line: 173, column: 2, scope: !4890)
!4900 = !DILocation(line: 173, column: 8, scope: !4890)
!4901 = !DILocation(line: 173, column: 24, scope: !4890)
!4902 = !DILocation(line: 173, column: 14, scope: !4890)
!4903 = !DILocation(line: 174, column: 6, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4890, file: !100, line: 174, column: 6)
!4905 = !DILocation(line: 174, column: 10, scope: !4904)
!4906 = !DILocation(line: 174, column: 6, scope: !4890)
!4907 = !DILocation(line: 175, column: 9, scope: !4904)
!4908 = !DILocation(line: 175, column: 7, scope: !4904)
!4909 = !DILocation(line: 175, column: 3, scope: !4904)
!4910 = !DILocation(line: 176, column: 9, scope: !4890)
!4911 = !DILocation(line: 177, column: 1, scope: !4890)
!4912 = !DILocation(line: 176, column: 2, scope: !4890)
!4913 = !DISubprogram(name: "_printk", scope: !4914, file: !4914, line: 153, type: !4915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4914 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!151, !280, null}
!4917 = distinct !DISubprogram(name: "get_file", scope: !21, file: !21, line: 1042, type: !4918, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4920)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!728, !728}
!4920 = !{!4921}
!4921 = !DILocalVariable(name: "f", arg: 1, scope: !4917, file: !21, line: 1042, type: !728)
!4922 = !DILocation(line: 1042, column: 50, scope: !4917)
!4923 = !DILocation(line: 1044, column: 19, scope: !4917)
!4924 = !DILocation(line: 1044, column: 22, scope: !4917)
!4925 = !DILocation(line: 1044, column: 2, scope: !4917)
!4926 = !DILocation(line: 1045, column: 9, scope: !4917)
!4927 = !DILocation(line: 1045, column: 2, scope: !4917)
!4928 = distinct !DISubprogram(name: "autofs_write", scope: !2, file: !2, line: 46, type: !4929, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!151, !3223, !728, !3440, !151}
!4931 = !{!4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4946}
!4932 = !DILocalVariable(name: "sbi", arg: 1, scope: !4928, file: !2, line: 46, type: !3223)
!4933 = !DILocalVariable(name: "file", arg: 2, scope: !4928, file: !2, line: 47, type: !728)
!4934 = !DILocalVariable(name: "addr", arg: 3, scope: !4928, file: !2, line: 47, type: !3440)
!4935 = !DILocalVariable(name: "bytes", arg: 4, scope: !4928, file: !2, line: 47, type: !151)
!4936 = !DILocalVariable(name: "sigpipe", scope: !4928, file: !2, line: 49, type: !171)
!4937 = !DILocalVariable(name: "flags", scope: !4928, file: !2, line: 49, type: !171)
!4938 = !DILocalVariable(name: "data", scope: !4928, file: !2, line: 50, type: !280)
!4939 = !DILocalVariable(name: "wr", scope: !4928, file: !2, line: 51, type: !1019)
!4940 = !DILocalVariable(name: "__dummy", scope: !4941, file: !2, line: 69, type: !171)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !2, line: 69, column: 3)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !2, line: 69, column: 3)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !2, line: 69, column: 3)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !2, line: 68, column: 32)
!4945 = distinct !DILexicalBlock(scope: !4928, file: !2, line: 68, column: 6)
!4946 = !DILocalVariable(name: "__dummy2", scope: !4941, file: !2, line: 69, type: !171)
!4947 = !DILocation(line: 46, column: 48, scope: !4928)
!4948 = !DILocation(line: 47, column: 17, scope: !4928)
!4949 = !DILocation(line: 47, column: 35, scope: !4928)
!4950 = !DILocation(line: 47, column: 45, scope: !4928)
!4951 = !DILocation(line: 49, column: 2, scope: !4928)
!4952 = !DILocation(line: 49, column: 16, scope: !4928)
!4953 = !DILocation(line: 49, column: 25, scope: !4928)
!4954 = !DILocation(line: 50, column: 2, scope: !4928)
!4955 = !DILocation(line: 50, column: 14, scope: !4928)
!4956 = !DILocation(line: 50, column: 35, scope: !4928)
!4957 = !DILocation(line: 51, column: 2, scope: !4928)
!4958 = !DILocation(line: 51, column: 10, scope: !4928)
!4959 = !DILocation(line: 53, column: 25, scope: !4928)
!4960 = !DILocation(line: 53, column: 34, scope: !4928)
!4961 = !DILocation(line: 53, column: 42, scope: !4928)
!4962 = !DILocation(line: 53, column: 12, scope: !4928)
!4963 = !DILocation(line: 53, column: 10, scope: !4928)
!4964 = !DILocation(line: 55, column: 14, scope: !4928)
!4965 = !DILocation(line: 55, column: 19, scope: !4928)
!4966 = !DILocation(line: 55, column: 2, scope: !4928)
!4967 = !DILocation(line: 56, column: 2, scope: !4928)
!4968 = !DILocation(line: 56, column: 9, scope: !4928)
!4969 = !DILocation(line: 57, column: 23, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4928, file: !2, line: 56, column: 16)
!4971 = !DILocation(line: 57, column: 29, scope: !4970)
!4972 = !DILocation(line: 57, column: 35, scope: !4970)
!4973 = !DILocation(line: 57, column: 8, scope: !4970)
!4974 = !DILocation(line: 57, column: 6, scope: !4970)
!4975 = !DILocation(line: 58, column: 7, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4970, file: !2, line: 58, column: 7)
!4977 = !DILocation(line: 58, column: 10, scope: !4976)
!4978 = !DILocation(line: 58, column: 7, scope: !4970)
!4979 = !DILocation(line: 59, column: 4, scope: !4976)
!4980 = !DILocation(line: 60, column: 11, scope: !4970)
!4981 = !DILocation(line: 60, column: 8, scope: !4970)
!4982 = !DILocation(line: 61, column: 12, scope: !4970)
!4983 = !DILocation(line: 61, column: 9, scope: !4970)
!4984 = distinct !{!4984, !4967, !4985, !3417, !3418}
!4985 = !DILocation(line: 62, column: 2, scope: !4928)
!4986 = !DILocation(line: 63, column: 16, scope: !4928)
!4987 = !DILocation(line: 63, column: 21, scope: !4928)
!4988 = !DILocation(line: 63, column: 2, scope: !4928)
!4989 = !DILocation(line: 68, column: 6, scope: !4945)
!4990 = !DILocation(line: 68, column: 9, scope: !4945)
!4991 = !DILocation(line: 68, column: 19, scope: !4945)
!4992 = !DILocation(line: 68, column: 23, scope: !4945)
!4993 = !DILocation(line: 68, column: 6, scope: !4928)
!4994 = !DILocation(line: 69, column: 3, scope: !4944)
!4995 = !DILocation(line: 69, column: 3, scope: !4943)
!4996 = !DILocation(line: 69, column: 3, scope: !4941)
!4997 = !DILocation(line: 69, column: 3, scope: !4942)
!4998 = !DILocation(line: 70, column: 14, scope: !4944)
!4999 = !DILocation(line: 70, column: 23, scope: !4944)
!5000 = !DILocation(line: 70, column: 31, scope: !4944)
!5001 = !DILocation(line: 70, column: 3, scope: !4944)
!5002 = !DILocation(line: 71, column: 3, scope: !4944)
!5003 = !DILocation(line: 72, column: 27, scope: !4944)
!5004 = !DILocation(line: 72, column: 36, scope: !4944)
!5005 = !DILocation(line: 72, column: 45, scope: !4944)
!5006 = !DILocation(line: 72, column: 54, scope: !4944)
!5007 = !DILocation(line: 72, column: 3, scope: !4944)
!5008 = !DILocation(line: 73, column: 2, scope: !4944)
!5009 = !DILocation(line: 76, column: 9, scope: !4928)
!5010 = !DILocation(line: 76, column: 15, scope: !4928)
!5011 = !DILocation(line: 76, column: 26, scope: !4928)
!5012 = !DILocation(line: 76, column: 29, scope: !4928)
!5013 = !DILocation(line: 76, column: 35, scope: !4928)
!5014 = !DILocation(line: 77, column: 1, scope: !4928)
!5015 = !DILocation(line: 76, column: 2, scope: !4928)
!5016 = distinct !DISubprogram(name: "from_kuid", scope: !100, file: !100, line: 153, type: !4868, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5017)
!5017 = !{!5018, !5019}
!5018 = !DILocalVariable(name: "to", arg: 1, scope: !5016, file: !100, line: 153, type: !371)
!5019 = !DILocalVariable(name: "kuid", arg: 2, scope: !5016, file: !100, line: 153, type: !99)
!5020 = !DILocation(line: 153, column: 54, scope: !5016)
!5021 = !DILocation(line: 153, column: 65, scope: !5016)
!5022 = !DILocation(line: 155, column: 9, scope: !5016)
!5023 = !DILocation(line: 155, column: 2, scope: !5016)
!5024 = distinct !DISubprogram(name: "__kuid_val", scope: !100, file: !100, line: 34, type: !5025, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!104, !99}
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "uid", arg: 1, scope: !5024, file: !100, line: 34, type: !99)
!5029 = !DILocation(line: 34, column: 39, scope: !5024)
!5030 = !DILocation(line: 36, column: 13, scope: !5024)
!5031 = !DILocation(line: 36, column: 2, scope: !5024)
!5032 = distinct !DISubprogram(name: "from_kgid", scope: !100, file: !100, line: 158, type: !4891, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5033)
!5033 = !{!5034, !5035}
!5034 = !DILocalVariable(name: "to", arg: 1, scope: !5032, file: !100, line: 158, type: !371)
!5035 = !DILocalVariable(name: "kgid", arg: 2, scope: !5032, file: !100, line: 158, type: !108)
!5036 = !DILocation(line: 158, column: 54, scope: !5032)
!5037 = !DILocation(line: 158, column: 65, scope: !5032)
!5038 = !DILocation(line: 160, column: 9, scope: !5032)
!5039 = !DILocation(line: 160, column: 2, scope: !5032)
!5040 = distinct !DISubprogram(name: "__kgid_val", scope: !100, file: !100, line: 39, type: !5041, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!112, !108}
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "gid", arg: 1, scope: !5040, file: !100, line: 39, type: !108)
!5045 = !DILocation(line: 39, column: 39, scope: !5040)
!5046 = !DILocation(line: 41, column: 13, scope: !5040)
!5047 = !DILocation(line: 41, column: 2, scope: !5040)
!5048 = distinct !DISubprogram(name: "atomic_long_inc", scope: !5049, file: !5049, line: 3561, type: !5050, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5052)
!5049 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !1588}
!5052 = !{!5053}
!5053 = !DILocalVariable(name: "v", arg: 1, scope: !5048, file: !5049, line: 3561, type: !1588)
!5054 = !DILocation(line: 3561, column: 32, scope: !5048)
!5055 = !DILocation(line: 3563, column: 31, scope: !5048)
!5056 = !DILocation(line: 3563, column: 2, scope: !5048)
!5057 = !DILocation(line: 3564, column: 22, scope: !5048)
!5058 = !DILocation(line: 3564, column: 2, scope: !5048)
!5059 = !DILocation(line: 3565, column: 1, scope: !5048)
!5060 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5061, file: !5061, line: 94, type: !5062, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5067)
!5061 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !5064, !1022}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5066)
!5066 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5067 = !{!5068, !5069}
!5068 = !DILocalVariable(name: "v", arg: 1, scope: !5060, file: !5061, line: 94, type: !5064)
!5069 = !DILocalVariable(name: "size", arg: 2, scope: !5060, file: !5061, line: 94, type: !1022)
!5070 = !DILocation(line: 94, column: 79, scope: !5060)
!5071 = !DILocation(line: 94, column: 89, scope: !5060)
!5072 = !DILocation(line: 96, column: 20, scope: !5060)
!5073 = !DILocation(line: 96, column: 23, scope: !5060)
!5074 = !DILocation(line: 96, column: 2, scope: !5060)
!5075 = !DILocation(line: 97, column: 2, scope: !5060)
!5076 = !DILocation(line: 98, column: 1, scope: !5060)
!5077 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !88, file: !88, line: 495, type: !5050, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5078)
!5078 = !{!5079}
!5079 = !DILocalVariable(name: "v", arg: 1, scope: !5077, file: !88, line: 495, type: !1588)
!5080 = !DILocation(line: 495, column: 36, scope: !5077)
!5081 = !DILocation(line: 498, column: 19, scope: !5077)
!5082 = !DILocation(line: 498, column: 2, scope: !5077)
!5083 = !DILocation(line: 502, column: 1, scope: !5077)
!5084 = distinct !DISubprogram(name: "kasan_check_write", scope: !5085, file: !5085, line: 44, type: !5086, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5088)
!5085 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!277, !5064, !13}
!5088 = !{!5089, !5090}
!5089 = !DILocalVariable(name: "p", arg: 1, scope: !5084, file: !5085, line: 44, type: !5064)
!5090 = !DILocalVariable(name: "size", arg: 2, scope: !5084, file: !5085, line: 44, type: !13)
!5091 = !DILocation(line: 44, column: 59, scope: !5084)
!5092 = !DILocation(line: 44, column: 75, scope: !5084)
!5093 = !DILocation(line: 46, column: 2, scope: !5084)
!5094 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5095, file: !5095, line: 229, type: !5096, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5098)
!5095 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !5064, !1022, !151}
!5098 = !{!5099, !5100, !5101}
!5099 = !DILocalVariable(name: "ptr", arg: 1, scope: !5094, file: !5095, line: 229, type: !5064)
!5100 = !DILocalVariable(name: "size", arg: 2, scope: !5094, file: !5095, line: 229, type: !1022)
!5101 = !DILocalVariable(name: "type", arg: 3, scope: !5094, file: !5095, line: 230, type: !151)
!5102 = !DILocation(line: 229, column: 60, scope: !5094)
!5103 = !DILocation(line: 229, column: 72, scope: !5094)
!5104 = !DILocation(line: 230, column: 15, scope: !5094)
!5105 = !DILocation(line: 230, column: 23, scope: !5094)
!5106 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !5107, file: !5107, line: 3088, type: !5108, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5111)
!5107 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!5111 = !{!5112}
!5112 = !DILocalVariable(name: "v", arg: 1, scope: !5106, file: !5107, line: 3088, type: !5110)
!5113 = !DILocation(line: 3088, column: 30, scope: !5106)
!5114 = !DILocation(line: 3091, column: 20, scope: !5106)
!5115 = !DILocation(line: 3091, column: 2, scope: !5106)
!5116 = !DILocation(line: 3095, column: 1, scope: !5106)
!5117 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !5118, file: !5118, line: 43, type: !5108, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5119)
!5118 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5119 = !{!5120}
!5120 = !DILocalVariable(name: "v", arg: 1, scope: !5117, file: !5118, line: 43, type: !5110)
!5121 = !DILocation(line: 43, column: 59, scope: !5117)
!5122 = !DILocation(line: 46, column: 16, scope: !5117)
!5123 = !DILocation(line: 46, column: 19, scope: !5117)
!5124 = !DILocation(line: 47, column: 15, scope: !5117)
!5125 = !DILocation(line: 47, column: 18, scope: !5117)
!5126 = !DILocation(line: 45, column: 2, scope: !5117)
!5127 = !{i64 2148007877, i64 2148007916, i64 2148007937, i64 2148007974, i64 2148007997, i64 2148007867}
!5128 = !DILocation(line: 48, column: 1, scope: !5117)
!5129 = distinct !DISubprogram(name: "sigismember", scope: !1188, file: !1188, line: 82, type: !5130, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5133)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!151, !5132, !151}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!5133 = !{!5134, !5135, !5136}
!5134 = !DILocalVariable(name: "set", arg: 1, scope: !5129, file: !1188, line: 82, type: !5132)
!5135 = !DILocalVariable(name: "_sig", arg: 2, scope: !5129, file: !1188, line: 82, type: !151)
!5136 = !DILocalVariable(name: "sig", scope: !5129, file: !1188, line: 84, type: !171)
!5137 = !DILocation(line: 82, column: 41, scope: !5129)
!5138 = !DILocation(line: 82, column: 50, scope: !5129)
!5139 = !DILocation(line: 84, column: 2, scope: !5129)
!5140 = !DILocation(line: 84, column: 16, scope: !5129)
!5141 = !DILocation(line: 84, column: 22, scope: !5129)
!5142 = !DILocation(line: 84, column: 27, scope: !5129)
!5143 = !DILocation(line: 86, column: 15, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5129, file: !1188, line: 85, column: 6)
!5145 = !DILocation(line: 86, column: 20, scope: !5144)
!5146 = !DILocation(line: 86, column: 30, scope: !5144)
!5147 = !DILocation(line: 86, column: 27, scope: !5144)
!5148 = !DILocation(line: 86, column: 12, scope: !5144)
!5149 = !DILocation(line: 86, column: 10, scope: !5144)
!5150 = !DILocation(line: 89, column: 1, scope: !5129)
!5151 = !DILocation(line: 86, column: 3, scope: !5144)
!5152 = !DISubprogram(name: "__kernel_write", scope: !21, file: !21, line: 2838, type: !5153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!1019, !728, !3440, !1022, !1951}
!5155 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5156, file: !5156, line: 32, type: !5157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5156 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!171, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!5160 = distinct !DISubprogram(name: "spinlock_check", scope: !4457, file: !4457, line: 324, type: !5161, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5163)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!5159, !4460}
!5163 = !{!5164}
!5164 = !DILocalVariable(name: "lock", arg: 1, scope: !5160, file: !4457, line: 324, type: !4460)
!5165 = !DILocation(line: 324, column: 67, scope: !5160)
!5166 = !DILocation(line: 326, column: 10, scope: !5160)
!5167 = !DILocation(line: 326, column: 16, scope: !5160)
!5168 = !DILocation(line: 326, column: 2, scope: !5160)
!5169 = distinct !DISubprogram(name: "sigdelset", scope: !1188, file: !1188, line: 73, type: !5170, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !5132, !151}
!5172 = !{!5173, !5174, !5175}
!5173 = !DILocalVariable(name: "set", arg: 1, scope: !5169, file: !1188, line: 73, type: !5132)
!5174 = !DILocalVariable(name: "_sig", arg: 2, scope: !5169, file: !1188, line: 73, type: !151)
!5175 = !DILocalVariable(name: "sig", scope: !5169, file: !1188, line: 75, type: !171)
!5176 = !DILocation(line: 73, column: 40, scope: !5169)
!5177 = !DILocation(line: 73, column: 49, scope: !5169)
!5178 = !DILocation(line: 75, column: 2, scope: !5169)
!5179 = !DILocation(line: 75, column: 16, scope: !5169)
!5180 = !DILocation(line: 75, column: 22, scope: !5169)
!5181 = !DILocation(line: 75, column: 27, scope: !5169)
!5182 = !DILocation(line: 77, column: 27, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5169, file: !1188, line: 76, column: 6)
!5184 = !DILocation(line: 77, column: 24, scope: !5183)
!5185 = !DILocation(line: 77, column: 18, scope: !5183)
!5186 = !DILocation(line: 77, column: 3, scope: !5183)
!5187 = !DILocation(line: 77, column: 8, scope: !5183)
!5188 = !DILocation(line: 77, column: 15, scope: !5183)
!5189 = !DILocation(line: 80, column: 1, scope: !5169)
!5190 = !DISubprogram(name: "recalc_sigpending", scope: !2475, file: !2475, line: 445, type: !2638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5191 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4457, file: !4457, line: 404, type: !5192, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5194)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !4460, !171}
!5194 = !{!5195, !5196, !5197, !5200}
!5195 = !DILocalVariable(name: "lock", arg: 1, scope: !5191, file: !4457, line: 404, type: !4460)
!5196 = !DILocalVariable(name: "flags", arg: 2, scope: !5191, file: !4457, line: 404, type: !171)
!5197 = !DILocalVariable(name: "__dummy", scope: !5198, file: !4457, line: 406, type: !171)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !4457, line: 406, column: 2)
!5199 = distinct !DILexicalBlock(scope: !5191, file: !4457, line: 406, column: 2)
!5200 = !DILocalVariable(name: "__dummy2", scope: !5198, file: !4457, line: 406, type: !171)
!5201 = !DILocation(line: 404, column: 64, scope: !5191)
!5202 = !DILocation(line: 404, column: 84, scope: !5191)
!5203 = !DILocation(line: 406, column: 2, scope: !5191)
!5204 = !DILocation(line: 406, column: 2, scope: !5198)
!5205 = !DILocation(line: 406, column: 2, scope: !5199)
!5206 = !DILocation(line: 407, column: 1, scope: !5191)
!5207 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5156, file: !5156, line: 43, type: !5208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{null, !5159, !171}
!5210 = !DISubprogram(name: "_raw_spin_lock", scope: !5156, file: !5156, line: 22, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !5159}
!5213 = !DISubprogram(name: "_raw_spin_unlock", scope: !5156, file: !5156, line: 39, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
