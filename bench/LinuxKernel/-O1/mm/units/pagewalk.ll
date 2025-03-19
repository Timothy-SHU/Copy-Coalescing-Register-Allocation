; ModuleID = 'mm/pagewalk.c'
source_filename = "mm/pagewalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon.27, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.29, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.27 = type { i32 }
%union.anon.29 = type { i64, [88 x i8] }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.anon.18, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.18 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.19, i32, ptr }
%union.anon.19 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.pcpu_hot = type { %union.anon.30 }
%union.anon.30 = type { %struct.anon.31, [16 x i8] }
%struct.anon.31 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { %union.anon.13, ptr, %struct.pgprot, %union.anon.15, i32, ptr, i8, %struct.anon.16, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.15 = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.vma_lock = type { %struct.rw_semaphore }
%struct.hstate = type { %struct.mutex, %struct.lock_class_key, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, [64 x %struct.list_head], [64 x i32], [64 x i32], [64 x i32], [64 x i32], [8 x %struct.cftype], [10 x %struct.cftype], [32 x i8] }
%struct.lock_class_key = type {}
%struct.cftype = type { [64 x i8], i64, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.20, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.21, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.22, ptr, %struct.address_space, %struct.list_head, %union.anon.23, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.20 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.22 = type { ptr }
%union.anon.23 = type { ptr }
%struct.hugetlbfs_sb_info = type { i64, i64, %struct.spinlock, ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16 }
%struct.file = type { %union.anon.24, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.25, %struct.qspinlock }
%union.anon.25 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
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
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.pte_t = type { i64 }

@pgdir_shift = external dso_local global i32, align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@ptrs_per_p4d = external dso_local global i32, align 4
@page_offset_base = external dso_local global i64, align 8
@init_mm = external dso_local global %struct.mm_struct, align 64
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @walk_page_range(ptr noundef %mm, i64 noundef %start, i64 noundef %end, ptr noundef %ops, ptr noundef %private) #0 align 16 !dbg !5204 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %private.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %next = alloca i64, align 8
  %vma = alloca ptr, align 8
  %walk = alloca %struct.mm_walk, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x336 = alloca i64, align 8
  %__UNIQUE_ID___y337 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x338 = alloca i64, align 8
  %__UNIQUE_ID___y339 = alloca i64, align 8
  %tmp32 = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5260, metadata !DIExpression()), !dbg !5280
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5261, metadata !DIExpression()), !dbg !5281
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5262, metadata !DIExpression()), !dbg !5282
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5263, metadata !DIExpression()), !dbg !5283
  store ptr %private, ptr %private.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private.addr, metadata !5264, metadata !DIExpression()), !dbg !5284
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5265, metadata !DIExpression()), !dbg !5286
  store i32 0, ptr %err, align 4, !dbg !5286
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !5287
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5266, metadata !DIExpression()), !dbg !5288
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5267, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #9, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5268, metadata !DIExpression()), !dbg !5292
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 0, !dbg !5293
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5294
  store ptr %0, ptr %ops1, align 8, !dbg !5293
  %mm2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5293
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5295
  store ptr %1, ptr %mm2, align 8, !dbg !5293
  %pgd = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2, !dbg !5293
  store ptr null, ptr %pgd, align 8, !dbg !5293
  %vma3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5293
  store ptr null, ptr %vma3, align 8, !dbg !5293
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4, !dbg !5293
  store i32 0, ptr %action, align 8, !dbg !5293
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5, !dbg !5293
  store i8 0, ptr %no_vma, align 4, !dbg !5293
  %private4 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6, !dbg !5293
  %2 = load ptr, ptr %private.addr, align 8, !dbg !5296
  store ptr %2, ptr %private4, align 8, !dbg !5293
  %3 = load i64, ptr %start.addr, align 8, !dbg !5297
  %4 = load i64, ptr %end.addr, align 8, !dbg !5299
  %cmp = icmp uge i64 %3, %4, !dbg !5300
  br i1 %cmp, label %if.then, label %if.end, !dbg !5301

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

if.end:                                           ; preds = %entry
  %mm5 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5303
  %5 = load ptr, ptr %mm5, align 8, !dbg !5303
  %tobool = icmp ne ptr %5, null, !dbg !5305
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !5306

if.then6:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5307

if.end7:                                          ; preds = %if.end
  %mm8 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5308
  %6 = load ptr, ptr %mm8, align 8, !dbg !5308
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !5309
  %walk_lock = getelementptr inbounds %struct.mm_walk_ops, ptr %7, i32 0, i32 10, !dbg !5310
  %8 = load i32, ptr %walk_lock, align 8, !dbg !5310
  call void @process_mm_walk_lock(ptr noundef %6, i32 noundef %8) #10, !dbg !5311
  %mm9 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5312
  %9 = load ptr, ptr %mm9, align 8, !dbg !5312
  %10 = load i64, ptr %start.addr, align 8, !dbg !5313
  %call = call ptr @find_vma(ptr noundef %9, i64 noundef %10) #10, !dbg !5314
  store ptr %call, ptr %vma, align 8, !dbg !5315
  br label %do.body, !dbg !5316

do.body:                                          ; preds = %do.cond, %if.end7
  %11 = load ptr, ptr %vma, align 8, !dbg !5317
  %tobool10 = icmp ne ptr %11, null, !dbg !5317
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !5318

if.then11:                                        ; preds = %do.body
  %vma12 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5319
  store ptr null, ptr %vma12, align 8, !dbg !5321
  %12 = load i64, ptr %end.addr, align 8, !dbg !5322
  store i64 %12, ptr %next, align 8, !dbg !5323
  %13 = load ptr, ptr %ops.addr, align 8, !dbg !5324
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %13, i32 0, i32 5, !dbg !5326
  %14 = load ptr, ptr %pte_hole, align 8, !dbg !5326
  %tobool13 = icmp ne ptr %14, null, !dbg !5324
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5327

if.then14:                                        ; preds = %if.then11
  %15 = load ptr, ptr %ops.addr, align 8, !dbg !5328
  %pte_hole15 = getelementptr inbounds %struct.mm_walk_ops, ptr %15, i32 0, i32 5, !dbg !5329
  %16 = load ptr, ptr %pte_hole15, align 8, !dbg !5329
  %17 = load i64, ptr %start.addr, align 8, !dbg !5330
  %18 = load i64, ptr %next, align 8, !dbg !5331
  %call16 = call i32 %16(i64 noundef %17, i64 noundef %18, i32 noundef -1, ptr noundef %walk) #10, !dbg !5328
  store i32 %call16, ptr %err, align 4, !dbg !5332
  br label %if.end17, !dbg !5333

if.end17:                                         ; preds = %if.then14, %if.then11
  br label %if.end49, !dbg !5334

if.else:                                          ; preds = %do.body
  %19 = load i64, ptr %start.addr, align 8, !dbg !5335
  %20 = load ptr, ptr %vma, align 8, !dbg !5336
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 0, !dbg !5337
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %21, i32 0, i32 0, !dbg !5337
  %22 = load i64, ptr %vm_start, align 8, !dbg !5337
  %cmp18 = icmp ult i64 %19, %22, !dbg !5338
  br i1 %cmp18, label %if.then19, label %if.else29, !dbg !5339

if.then19:                                        ; preds = %if.else
  %vma20 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5340
  store ptr null, ptr %vma20, align 8, !dbg !5341
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x336) #9, !dbg !5342
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x336, metadata !5269, metadata !DIExpression()), !dbg !5342
  %23 = load i64, ptr %end.addr, align 8, !dbg !5342
  store i64 %23, ptr %__UNIQUE_ID___x336, align 8, !dbg !5342
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y337) #9, !dbg !5342
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y337, metadata !5275, metadata !DIExpression()), !dbg !5342
  %24 = load ptr, ptr %vma, align 8, !dbg !5342
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 0, !dbg !5342
  %vm_start21 = getelementptr inbounds %struct.anon.14, ptr %25, i32 0, i32 0, !dbg !5342
  %26 = load i64, ptr %vm_start21, align 8, !dbg !5342
  store i64 %26, ptr %__UNIQUE_ID___y337, align 8, !dbg !5342
  %27 = load i64, ptr %__UNIQUE_ID___x336, align 8, !dbg !5342
  %28 = load i64, ptr %__UNIQUE_ID___y337, align 8, !dbg !5342
  %cmp22 = icmp ult i64 %27, %28, !dbg !5342
  br i1 %cmp22, label %cond.true, label %cond.false, !dbg !5342

cond.true:                                        ; preds = %if.then19
  %29 = load i64, ptr %__UNIQUE_ID___x336, align 8, !dbg !5342
  br label %cond.end, !dbg !5342

cond.false:                                       ; preds = %if.then19
  %30 = load i64, ptr %__UNIQUE_ID___y337, align 8, !dbg !5342
  br label %cond.end, !dbg !5342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !5342
  store i64 %cond, ptr %tmp, align 8, !dbg !5342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y337) #9, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x336) #9, !dbg !5343
  %31 = load i64, ptr %tmp, align 8, !dbg !5342
  store i64 %31, ptr %next, align 8, !dbg !5344
  %32 = load ptr, ptr %ops.addr, align 8, !dbg !5345
  %pte_hole23 = getelementptr inbounds %struct.mm_walk_ops, ptr %32, i32 0, i32 5, !dbg !5347
  %33 = load ptr, ptr %pte_hole23, align 8, !dbg !5347
  %tobool24 = icmp ne ptr %33, null, !dbg !5345
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !5348

if.then25:                                        ; preds = %cond.end
  %34 = load ptr, ptr %ops.addr, align 8, !dbg !5349
  %pte_hole26 = getelementptr inbounds %struct.mm_walk_ops, ptr %34, i32 0, i32 5, !dbg !5350
  %35 = load ptr, ptr %pte_hole26, align 8, !dbg !5350
  %36 = load i64, ptr %start.addr, align 8, !dbg !5351
  %37 = load i64, ptr %next, align 8, !dbg !5352
  %call27 = call i32 %35(i64 noundef %36, i64 noundef %37, i32 noundef -1, ptr noundef %walk) #10, !dbg !5349
  store i32 %call27, ptr %err, align 4, !dbg !5353
  br label %if.end28, !dbg !5354

if.end28:                                         ; preds = %if.then25, %cond.end
  br label %if.end48, !dbg !5355

if.else29:                                        ; preds = %if.else
  %38 = load ptr, ptr %vma, align 8, !dbg !5356
  %39 = load ptr, ptr %ops.addr, align 8, !dbg !5357
  %walk_lock30 = getelementptr inbounds %struct.mm_walk_ops, ptr %39, i32 0, i32 10, !dbg !5358
  %40 = load i32, ptr %walk_lock30, align 8, !dbg !5358
  call void @process_vma_walk_lock(ptr noundef %38, i32 noundef %40) #10, !dbg !5359
  %41 = load ptr, ptr %vma, align 8, !dbg !5360
  %vma31 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5361
  store ptr %41, ptr %vma31, align 8, !dbg !5362
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x338) #9, !dbg !5363
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x338, metadata !5276, metadata !DIExpression()), !dbg !5363
  %42 = load i64, ptr %end.addr, align 8, !dbg !5363
  store i64 %42, ptr %__UNIQUE_ID___x338, align 8, !dbg !5363
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y339) #9, !dbg !5363
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y339, metadata !5279, metadata !DIExpression()), !dbg !5363
  %43 = load ptr, ptr %vma, align 8, !dbg !5363
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %43, i32 0, i32 0, !dbg !5363
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %44, i32 0, i32 1, !dbg !5363
  %45 = load i64, ptr %vm_end, align 8, !dbg !5363
  store i64 %45, ptr %__UNIQUE_ID___y339, align 8, !dbg !5363
  %46 = load i64, ptr %__UNIQUE_ID___x338, align 8, !dbg !5363
  %47 = load i64, ptr %__UNIQUE_ID___y339, align 8, !dbg !5363
  %cmp33 = icmp ult i64 %46, %47, !dbg !5363
  br i1 %cmp33, label %cond.true34, label %cond.false35, !dbg !5363

cond.true34:                                      ; preds = %if.else29
  %48 = load i64, ptr %__UNIQUE_ID___x338, align 8, !dbg !5363
  br label %cond.end36, !dbg !5363

cond.false35:                                     ; preds = %if.else29
  %49 = load i64, ptr %__UNIQUE_ID___y339, align 8, !dbg !5363
  br label %cond.end36, !dbg !5363

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i64 [ %48, %cond.true34 ], [ %49, %cond.false35 ], !dbg !5363
  store i64 %cond37, ptr %tmp32, align 8, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y339) #9, !dbg !5364
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x338) #9, !dbg !5364
  %50 = load i64, ptr %tmp32, align 8, !dbg !5363
  store i64 %50, ptr %next, align 8, !dbg !5365
  %51 = load ptr, ptr %mm.addr, align 8, !dbg !5366
  %52 = load ptr, ptr %vma, align 8, !dbg !5367
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %52, i32 0, i32 0, !dbg !5368
  %vm_end38 = getelementptr inbounds %struct.anon.14, ptr %53, i32 0, i32 1, !dbg !5368
  %54 = load i64, ptr %vm_end38, align 8, !dbg !5368
  %call39 = call ptr @find_vma(ptr noundef %51, i64 noundef %54) #10, !dbg !5369
  store ptr %call39, ptr %vma, align 8, !dbg !5370
  %55 = load i64, ptr %start.addr, align 8, !dbg !5371
  %56 = load i64, ptr %next, align 8, !dbg !5372
  %call40 = call i32 @walk_page_test(i64 noundef %55, i64 noundef %56, ptr noundef %walk) #10, !dbg !5373
  store i32 %call40, ptr %err, align 4, !dbg !5374
  %57 = load i32, ptr %err, align 4, !dbg !5375
  %cmp41 = icmp sgt i32 %57, 0, !dbg !5377
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !5378

if.then42:                                        ; preds = %cond.end36
  store i32 0, ptr %err, align 4, !dbg !5379
  br label %do.cond, !dbg !5381

if.end43:                                         ; preds = %cond.end36
  %58 = load i32, ptr %err, align 4, !dbg !5382
  %cmp44 = icmp slt i32 %58, 0, !dbg !5384
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !5385

if.then45:                                        ; preds = %if.end43
  br label %do.end, !dbg !5386

if.end46:                                         ; preds = %if.end43
  %59 = load i64, ptr %start.addr, align 8, !dbg !5387
  %60 = load i64, ptr %next, align 8, !dbg !5388
  %call47 = call i32 @__walk_page_range(i64 noundef %59, i64 noundef %60, ptr noundef %walk) #10, !dbg !5389
  store i32 %call47, ptr %err, align 4, !dbg !5390
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end28
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end17
  %61 = load i32, ptr %err, align 4, !dbg !5391
  %tobool50 = icmp ne i32 %61, 0, !dbg !5391
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5393

if.then51:                                        ; preds = %if.end49
  br label %do.end, !dbg !5394

if.end52:                                         ; preds = %if.end49
  br label %do.cond, !dbg !5395

do.cond:                                          ; preds = %if.end52, %if.then42
  %62 = load i64, ptr %next, align 8, !dbg !5396
  store i64 %62, ptr %start.addr, align 8, !dbg !5397
  %63 = load i64, ptr %start.addr, align 8, !dbg !5398
  %64 = load i64, ptr %end.addr, align 8, !dbg !5399
  %cmp53 = icmp ult i64 %63, %64, !dbg !5400
  br i1 %cmp53, label %do.body, label %do.end, !dbg !5395, !llvm.loop !5401

do.end:                                           ; preds = %do.cond, %if.then51, %if.then45
  %65 = load i32, ptr %err, align 4, !dbg !5405
  store i32 %65, ptr %retval, align 4, !dbg !5406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5406

cleanup:                                          ; preds = %do.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #9, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5407
  %66 = load i32, ptr %retval, align 4, !dbg !5407
  ret i32 %66, !dbg !5407
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @process_mm_walk_lock(ptr noundef %mm, i32 noundef %walk_lock) #3 align 16 !dbg !5408 {
entry:
  %mm.addr = alloca ptr, align 8
  %walk_lock.addr = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5412, metadata !DIExpression()), !dbg !5414
  store i32 %walk_lock, ptr %walk_lock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %walk_lock.addr, metadata !5413, metadata !DIExpression()), !dbg !5415
  %0 = load i32, ptr %walk_lock.addr, align 4, !dbg !5416
  %cmp = icmp eq i32 %0, 0, !dbg !5418
  br i1 %cmp, label %if.then, label %if.else, !dbg !5419

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5420
  call void @mmap_assert_locked(ptr noundef %1) #10, !dbg !5421
  br label %if.end, !dbg !5421

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !5422
  call void @mmap_assert_write_locked(ptr noundef %2) #10, !dbg !5423
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5424
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5425 dso_local ptr @find_vma(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @process_vma_walk_lock(ptr noundef %vma, i32 noundef %walk_lock) #3 align 16 !dbg !5428 {
entry:
  %vma.addr = alloca ptr, align 8
  %walk_lock.addr = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5432, metadata !DIExpression()), !dbg !5434
  store i32 %walk_lock, ptr %walk_lock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %walk_lock.addr, metadata !5433, metadata !DIExpression()), !dbg !5435
  %0 = load i32, ptr %walk_lock.addr, align 4, !dbg !5436
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.epilog
  ], !dbg !5437

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5438
  call void @vma_start_write(ptr noundef %1) #10, !dbg !5440
  br label %sw.epilog, !dbg !5441

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !5442
  call void @vma_assert_write_locked(ptr noundef %2) #10, !dbg !5443
  br label %sw.epilog, !dbg !5444

sw.epilog:                                        ; preds = %entry, %entry, %sw.bb1, %sw.bb
  ret void, !dbg !5445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_page_test(i64 noundef %start, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !5446 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5448, metadata !DIExpression()), !dbg !5456
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5449, metadata !DIExpression()), !dbg !5457
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !5450, metadata !DIExpression()), !dbg !5458
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !5459
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5451, metadata !DIExpression()), !dbg !5460
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !5461
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 3, !dbg !5462
  %1 = load ptr, ptr %vma1, align 8, !dbg !5462
  store ptr %1, ptr %vma, align 8, !dbg !5460
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5452, metadata !DIExpression()), !dbg !5464
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !5465
  %ops2 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 0, !dbg !5466
  %3 = load ptr, ptr %ops2, align 8, !dbg !5466
  store ptr %3, ptr %ops, align 8, !dbg !5464
  %4 = load ptr, ptr %ops, align 8, !dbg !5467
  %test_walk = getelementptr inbounds %struct.mm_walk_ops, ptr %4, i32 0, i32 7, !dbg !5469
  %5 = load ptr, ptr %test_walk, align 8, !dbg !5469
  %tobool = icmp ne ptr %5, null, !dbg !5467
  br i1 %tobool, label %if.then, label %if.end, !dbg !5470

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ops, align 8, !dbg !5471
  %test_walk3 = getelementptr inbounds %struct.mm_walk_ops, ptr %6, i32 0, i32 7, !dbg !5472
  %7 = load ptr, ptr %test_walk3, align 8, !dbg !5472
  %8 = load i64, ptr %start.addr, align 8, !dbg !5473
  %9 = load i64, ptr %end.addr, align 8, !dbg !5474
  %10 = load ptr, ptr %walk.addr, align 8, !dbg !5475
  %call = call i32 %7(i64 noundef %8, i64 noundef %9, ptr noundef %10) #10, !dbg !5471
  store i32 %call, ptr %retval, align 4, !dbg !5476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5476

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %vma, align 8, !dbg !5477
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 3, !dbg !5478
  %13 = load i64, ptr %12, align 8, !dbg !5478
  %and = and i64 %13, 1024, !dbg !5479
  %tobool4 = icmp ne i64 %and, 0, !dbg !5479
  br i1 %tobool4, label %if.then5, label %if.end12, !dbg !5480

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5453, metadata !DIExpression()), !dbg !5482
  store i32 1, ptr %err, align 4, !dbg !5482
  %14 = load ptr, ptr %ops, align 8, !dbg !5483
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %14, i32 0, i32 5, !dbg !5485
  %15 = load ptr, ptr %pte_hole, align 8, !dbg !5485
  %tobool6 = icmp ne ptr %15, null, !dbg !5483
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5486

if.then7:                                         ; preds = %if.then5
  %16 = load ptr, ptr %ops, align 8, !dbg !5487
  %pte_hole8 = getelementptr inbounds %struct.mm_walk_ops, ptr %16, i32 0, i32 5, !dbg !5488
  %17 = load ptr, ptr %pte_hole8, align 8, !dbg !5488
  %18 = load i64, ptr %start.addr, align 8, !dbg !5489
  %19 = load i64, ptr %end.addr, align 8, !dbg !5490
  %20 = load ptr, ptr %walk.addr, align 8, !dbg !5491
  %call9 = call i32 %17(i64 noundef %18, i64 noundef %19, i32 noundef -1, ptr noundef %20) #10, !dbg !5487
  store i32 %call9, ptr %err, align 4, !dbg !5492
  br label %if.end10, !dbg !5493

if.end10:                                         ; preds = %if.then7, %if.then5
  %21 = load i32, ptr %err, align 4, !dbg !5494
  %tobool11 = icmp ne i32 %21, 0, !dbg !5494
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !5494

cond.true:                                        ; preds = %if.end10
  %22 = load i32, ptr %err, align 4, !dbg !5495
  br label %cond.end, !dbg !5494

cond.false:                                       ; preds = %if.end10
  br label %cond.end, !dbg !5494

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ 1, %cond.false ], !dbg !5494
  store i32 %cond, ptr %retval, align 4, !dbg !5496
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5497
  br label %cleanup

if.end12:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5498

cleanup:                                          ; preds = %if.end12, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !5499
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !5499
  %23 = load i32, ptr %retval, align 4, !dbg !5499
  ret i32 %23, !dbg !5499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__walk_page_range(i64 noundef %start, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !5500 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %vma = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5502, metadata !DIExpression()), !dbg !5508
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5503, metadata !DIExpression()), !dbg !5509
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !5504, metadata !DIExpression()), !dbg !5510
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5505, metadata !DIExpression()), !dbg !5512
  store i32 0, ptr %err, align 4, !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !5513
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5506, metadata !DIExpression()), !dbg !5514
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !5515
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 3, !dbg !5516
  %1 = load ptr, ptr %vma1, align 8, !dbg !5516
  store ptr %1, ptr %vma, align 8, !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5507, metadata !DIExpression()), !dbg !5518
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !5519
  %ops2 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 0, !dbg !5520
  %3 = load ptr, ptr %ops2, align 8, !dbg !5520
  store ptr %3, ptr %ops, align 8, !dbg !5518
  %4 = load ptr, ptr %ops, align 8, !dbg !5521
  %pre_vma = getelementptr inbounds %struct.mm_walk_ops, ptr %4, i32 0, i32 8, !dbg !5523
  %5 = load ptr, ptr %pre_vma, align 8, !dbg !5523
  %tobool = icmp ne ptr %5, null, !dbg !5521
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5524

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ops, align 8, !dbg !5525
  %pre_vma3 = getelementptr inbounds %struct.mm_walk_ops, ptr %6, i32 0, i32 8, !dbg !5527
  %7 = load ptr, ptr %pre_vma3, align 8, !dbg !5527
  %8 = load i64, ptr %start.addr, align 8, !dbg !5528
  %9 = load i64, ptr %end.addr, align 8, !dbg !5529
  %10 = load ptr, ptr %walk.addr, align 8, !dbg !5530
  %call = call i32 %7(i64 noundef %8, i64 noundef %9, ptr noundef %10) #10, !dbg !5525
  store i32 %call, ptr %err, align 4, !dbg !5531
  %11 = load i32, ptr %err, align 4, !dbg !5532
  %tobool4 = icmp ne i32 %11, 0, !dbg !5532
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5534

if.then5:                                         ; preds = %if.then
  %12 = load i32, ptr %err, align 4, !dbg !5535
  store i32 %12, ptr %retval, align 4, !dbg !5536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5536

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5537

if.end6:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %vma, align 8, !dbg !5538
  %call7 = call zeroext i1 @is_vm_hugetlb_page(ptr noundef %13) #10, !dbg !5540
  br i1 %call7, label %if.then8, label %if.else, !dbg !5541

if.then8:                                         ; preds = %if.end6
  %14 = load ptr, ptr %ops, align 8, !dbg !5542
  %hugetlb_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %14, i32 0, i32 6, !dbg !5545
  %15 = load ptr, ptr %hugetlb_entry, align 8, !dbg !5545
  %tobool9 = icmp ne ptr %15, null, !dbg !5542
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5546

if.then10:                                        ; preds = %if.then8
  %16 = load i64, ptr %start.addr, align 8, !dbg !5547
  %17 = load i64, ptr %end.addr, align 8, !dbg !5548
  %18 = load ptr, ptr %walk.addr, align 8, !dbg !5549
  %call11 = call i32 @walk_hugetlb_range(i64 noundef %16, i64 noundef %17, ptr noundef %18) #10, !dbg !5550
  store i32 %call11, ptr %err, align 4, !dbg !5551
  br label %if.end12, !dbg !5552

if.end12:                                         ; preds = %if.then10, %if.then8
  br label %if.end14, !dbg !5553

if.else:                                          ; preds = %if.end6
  %19 = load i64, ptr %start.addr, align 8, !dbg !5554
  %20 = load i64, ptr %end.addr, align 8, !dbg !5555
  %21 = load ptr, ptr %walk.addr, align 8, !dbg !5556
  %call13 = call i32 @walk_pgd_range(i64 noundef %19, i64 noundef %20, ptr noundef %21) #10, !dbg !5557
  store i32 %call13, ptr %err, align 4, !dbg !5558
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end12
  %22 = load ptr, ptr %ops, align 8, !dbg !5559
  %post_vma = getelementptr inbounds %struct.mm_walk_ops, ptr %22, i32 0, i32 9, !dbg !5561
  %23 = load ptr, ptr %post_vma, align 8, !dbg !5561
  %tobool15 = icmp ne ptr %23, null, !dbg !5559
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5562

if.then16:                                        ; preds = %if.end14
  %24 = load ptr, ptr %ops, align 8, !dbg !5563
  %post_vma17 = getelementptr inbounds %struct.mm_walk_ops, ptr %24, i32 0, i32 9, !dbg !5564
  %25 = load ptr, ptr %post_vma17, align 8, !dbg !5564
  %26 = load ptr, ptr %walk.addr, align 8, !dbg !5565
  call void %25(ptr noundef %26) #10, !dbg !5563
  br label %if.end18, !dbg !5563

if.end18:                                         ; preds = %if.then16, %if.end14
  %27 = load i32, ptr %err, align 4, !dbg !5566
  store i32 %27, ptr %retval, align 4, !dbg !5567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5567

cleanup:                                          ; preds = %if.end18, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5568
  %28 = load i32, ptr %retval, align 4, !dbg !5568
  ret i32 %28, !dbg !5568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @walk_page_range_novma(ptr noundef %mm, i64 noundef %start, i64 noundef %end, ptr noundef %ops, ptr noundef %pgd, ptr noundef %private) #0 align 16 !dbg !5569 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %private.addr = alloca ptr, align 8
  %walk = alloca %struct.mm_walk, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5573, metadata !DIExpression()), !dbg !5580
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5574, metadata !DIExpression()), !dbg !5581
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5575, metadata !DIExpression()), !dbg !5582
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5576, metadata !DIExpression()), !dbg !5583
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !5577, metadata !DIExpression()), !dbg !5584
  store ptr %private, ptr %private.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private.addr, metadata !5578, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #9, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5579, metadata !DIExpression()), !dbg !5587
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 0, !dbg !5588
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5589
  store ptr %0, ptr %ops1, align 8, !dbg !5588
  %mm2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5588
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5590
  store ptr %1, ptr %mm2, align 8, !dbg !5588
  %pgd3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2, !dbg !5588
  %2 = load ptr, ptr %pgd.addr, align 8, !dbg !5591
  store ptr %2, ptr %pgd3, align 8, !dbg !5588
  %vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5588
  store ptr null, ptr %vma, align 8, !dbg !5588
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4, !dbg !5588
  store i32 0, ptr %action, align 8, !dbg !5588
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5, !dbg !5588
  store i8 1, ptr %no_vma, align 4, !dbg !5588
  %private4 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6, !dbg !5588
  %3 = load ptr, ptr %private.addr, align 8, !dbg !5592
  store ptr %3, ptr %private4, align 8, !dbg !5588
  %4 = load i64, ptr %start.addr, align 8, !dbg !5593
  %5 = load i64, ptr %end.addr, align 8, !dbg !5595
  %cmp = icmp uge i64 %4, %5, !dbg !5596
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5597

lor.lhs.false:                                    ; preds = %entry
  %mm5 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5598
  %6 = load ptr, ptr %mm5, align 8, !dbg !5598
  %tobool = icmp ne ptr %6, null, !dbg !5599
  br i1 %tobool, label %if.end, label %if.then, !dbg !5600

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5601

if.end:                                           ; preds = %lor.lhs.false
  %mm6 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5602
  %7 = load ptr, ptr %mm6, align 8, !dbg !5602
  call void @mmap_assert_write_locked(ptr noundef %7) #10, !dbg !5603
  %8 = load i64, ptr %start.addr, align 8, !dbg !5604
  %9 = load i64, ptr %end.addr, align 8, !dbg !5605
  %call = call i32 @walk_pgd_range(i64 noundef %8, i64 noundef %9, ptr noundef %walk) #10, !dbg !5606
  store i32 %call, ptr %retval, align 4, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #9, !dbg !5608
  %10 = load i32, ptr %retval, align 4, !dbg !5608
  ret i32 %10, !dbg !5608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #3 align 16 !dbg !5609 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  br label %do.body, !dbg !5616

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5617
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5617
  %mmap_lock = getelementptr inbounds %struct.anon.17, ptr %1, i32 0, i32 16, !dbg !5617
  br label %do.end, !dbg !5617

do.end:                                           ; preds = %do.body
  ret void, !dbg !5619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_pgd_range(i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !5620 {
entry:
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %next = alloca i64, align 8
  %ops = alloca ptr, align 8
  %err = alloca i32, align 4
  %__boundary = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5622, metadata !DIExpression()), !dbg !5632
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5623, metadata !DIExpression()), !dbg !5633
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !5624, metadata !DIExpression()), !dbg !5634
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #9, !dbg !5635
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5625, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5626, metadata !DIExpression()), !dbg !5638
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5627, metadata !DIExpression()), !dbg !5640
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !5641
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 0, !dbg !5642
  %1 = load ptr, ptr %ops1, align 8, !dbg !5642
  store ptr %1, ptr %ops, align 8, !dbg !5640
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5628, metadata !DIExpression()), !dbg !5644
  store i32 0, ptr %err, align 4, !dbg !5644
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !5645
  %pgd2 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 2, !dbg !5647
  %3 = load ptr, ptr %pgd2, align 8, !dbg !5647
  %tobool = icmp ne ptr %3, null, !dbg !5645
  br i1 %tobool, label %if.then, label %if.else, !dbg !5648

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %walk.addr, align 8, !dbg !5649
  %pgd3 = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 2, !dbg !5650
  %5 = load ptr, ptr %pgd3, align 8, !dbg !5650
  %6 = load i64, ptr %addr.addr, align 8, !dbg !5651
  %7 = load i32, ptr @pgdir_shift, align 4, !dbg !5651
  %sh_prom = zext i32 %7 to i64, !dbg !5651
  %shr = lshr i64 %6, %sh_prom, !dbg !5651
  %and = and i64 %shr, 511, !dbg !5651
  %add.ptr = getelementptr %struct.pgd_t, ptr %5, i64 %and, !dbg !5652
  store ptr %add.ptr, ptr %pgd, align 8, !dbg !5653
  br label %if.end, !dbg !5654

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %walk.addr, align 8, !dbg !5655
  %mm = getelementptr inbounds %struct.mm_walk, ptr %8, i32 0, i32 1, !dbg !5655
  %9 = load ptr, ptr %mm, align 8, !dbg !5655
  %10 = getelementptr inbounds %struct.mm_struct, ptr %9, i32 0, i32 0, !dbg !5655
  %pgd4 = getelementptr inbounds %struct.anon.17, ptr %10, i32 0, i32 8, !dbg !5655
  %11 = load ptr, ptr %pgd4, align 64, !dbg !5655
  %12 = load i64, ptr %addr.addr, align 8, !dbg !5655
  %call = call ptr @pgd_offset_pgd(ptr noundef %11, i64 noundef %12) #10, !dbg !5655
  store ptr %call, ptr %pgd, align 8, !dbg !5656
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body, !dbg !5657

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__boundary) #9, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %__boundary, metadata !5629, metadata !DIExpression()), !dbg !5658
  %13 = load i64, ptr %addr.addr, align 8, !dbg !5658
  %14 = load i32, ptr @pgdir_shift, align 4, !dbg !5658
  %sh_prom5 = zext i32 %14 to i64, !dbg !5658
  %shl = shl i64 1, %sh_prom5, !dbg !5658
  %add = add i64 %13, %shl, !dbg !5658
  %15 = load i32, ptr @pgdir_shift, align 4, !dbg !5658
  %sh_prom6 = zext i32 %15 to i64, !dbg !5658
  %shl7 = shl i64 1, %sh_prom6, !dbg !5658
  %sub = sub i64 %shl7, 1, !dbg !5658
  %not = xor i64 %sub, -1, !dbg !5658
  %and8 = and i64 %add, %not, !dbg !5658
  store i64 %and8, ptr %__boundary, align 8, !dbg !5658
  %16 = load i64, ptr %__boundary, align 8, !dbg !5658
  %sub9 = sub i64 %16, 1, !dbg !5658
  %17 = load i64, ptr %end.addr, align 8, !dbg !5658
  %sub10 = sub i64 %17, 1, !dbg !5658
  %cmp = icmp ult i64 %sub9, %sub10, !dbg !5658
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5658

cond.true:                                        ; preds = %do.body
  %18 = load i64, ptr %__boundary, align 8, !dbg !5658
  br label %cond.end, !dbg !5658

cond.false:                                       ; preds = %do.body
  %19 = load i64, ptr %end.addr, align 8, !dbg !5658
  br label %cond.end, !dbg !5658

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !5658
  store i64 %cond, ptr %tmp, align 8, !dbg !5658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__boundary) #9, !dbg !5659
  %20 = load i64, ptr %tmp, align 8, !dbg !5658
  store i64 %20, ptr %next, align 8, !dbg !5660
  %21 = load ptr, ptr %pgd, align 8, !dbg !5661
  %call11 = call i32 @pgd_none_or_clear_bad(ptr noundef %21) #10, !dbg !5663
  %tobool12 = icmp ne i32 %call11, 0, !dbg !5663
  br i1 %tobool12, label %if.then13, label %if.end22, !dbg !5664

if.then13:                                        ; preds = %cond.end
  %22 = load ptr, ptr %ops, align 8, !dbg !5665
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %22, i32 0, i32 5, !dbg !5668
  %23 = load ptr, ptr %pte_hole, align 8, !dbg !5668
  %tobool14 = icmp ne ptr %23, null, !dbg !5665
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !5669

if.then15:                                        ; preds = %if.then13
  %24 = load ptr, ptr %ops, align 8, !dbg !5670
  %pte_hole16 = getelementptr inbounds %struct.mm_walk_ops, ptr %24, i32 0, i32 5, !dbg !5671
  %25 = load ptr, ptr %pte_hole16, align 8, !dbg !5671
  %26 = load i64, ptr %addr.addr, align 8, !dbg !5672
  %27 = load i64, ptr %next, align 8, !dbg !5673
  %28 = load ptr, ptr %walk.addr, align 8, !dbg !5674
  %call17 = call i32 %25(i64 noundef %26, i64 noundef %27, i32 noundef 0, ptr noundef %28) #10, !dbg !5670
  store i32 %call17, ptr %err, align 4, !dbg !5675
  br label %if.end18, !dbg !5676

if.end18:                                         ; preds = %if.then15, %if.then13
  %29 = load i32, ptr %err, align 4, !dbg !5677
  %tobool19 = icmp ne i32 %29, 0, !dbg !5677
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5679

if.then20:                                        ; preds = %if.end18
  br label %do.end, !dbg !5680

if.end21:                                         ; preds = %if.end18
  br label %do.cond, !dbg !5681

if.end22:                                         ; preds = %cond.end
  %30 = load ptr, ptr %ops, align 8, !dbg !5682
  %pgd_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %30, i32 0, i32 0, !dbg !5684
  %31 = load ptr, ptr %pgd_entry, align 8, !dbg !5684
  %tobool23 = icmp ne ptr %31, null, !dbg !5682
  br i1 %tobool23, label %if.then24, label %if.end30, !dbg !5685

if.then24:                                        ; preds = %if.end22
  %32 = load ptr, ptr %ops, align 8, !dbg !5686
  %pgd_entry25 = getelementptr inbounds %struct.mm_walk_ops, ptr %32, i32 0, i32 0, !dbg !5688
  %33 = load ptr, ptr %pgd_entry25, align 8, !dbg !5688
  %34 = load ptr, ptr %pgd, align 8, !dbg !5689
  %35 = load i64, ptr %addr.addr, align 8, !dbg !5690
  %36 = load i64, ptr %next, align 8, !dbg !5691
  %37 = load ptr, ptr %walk.addr, align 8, !dbg !5692
  %call26 = call i32 %33(ptr noundef %34, i64 noundef %35, i64 noundef %36, ptr noundef %37) #10, !dbg !5686
  store i32 %call26, ptr %err, align 4, !dbg !5693
  %38 = load i32, ptr %err, align 4, !dbg !5694
  %tobool27 = icmp ne i32 %38, 0, !dbg !5694
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5696

if.then28:                                        ; preds = %if.then24
  br label %do.end, !dbg !5697

if.end29:                                         ; preds = %if.then24
  br label %if.end30, !dbg !5698

if.end30:                                         ; preds = %if.end29, %if.end22
  %39 = load ptr, ptr %ops, align 8, !dbg !5699
  %p4d_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %39, i32 0, i32 1, !dbg !5702
  %40 = load ptr, ptr %p4d_entry, align 8, !dbg !5702
  %tobool31 = icmp ne ptr %40, null, !dbg !5699
  br i1 %tobool31, label %if.then37, label %lor.lhs.false, !dbg !5703

lor.lhs.false:                                    ; preds = %if.end30
  %41 = load ptr, ptr %ops, align 8, !dbg !5704
  %pud_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %41, i32 0, i32 2, !dbg !5705
  %42 = load ptr, ptr %pud_entry, align 8, !dbg !5705
  %tobool32 = icmp ne ptr %42, null, !dbg !5704
  br i1 %tobool32, label %if.then37, label %lor.lhs.false33, !dbg !5706

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %43 = load ptr, ptr %ops, align 8, !dbg !5707
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %43, i32 0, i32 3, !dbg !5708
  %44 = load ptr, ptr %pmd_entry, align 8, !dbg !5708
  %tobool34 = icmp ne ptr %44, null, !dbg !5707
  br i1 %tobool34, label %if.then37, label %lor.lhs.false35, !dbg !5709

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %45 = load ptr, ptr %ops, align 8, !dbg !5710
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %45, i32 0, i32 4, !dbg !5711
  %46 = load ptr, ptr %pte_entry, align 8, !dbg !5711
  %tobool36 = icmp ne ptr %46, null, !dbg !5710
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !5712

if.then37:                                        ; preds = %lor.lhs.false35, %lor.lhs.false33, %lor.lhs.false, %if.end30
  %47 = load ptr, ptr %pgd, align 8, !dbg !5713
  %48 = load i64, ptr %addr.addr, align 8, !dbg !5714
  %49 = load i64, ptr %next, align 8, !dbg !5715
  %50 = load ptr, ptr %walk.addr, align 8, !dbg !5716
  %call38 = call i32 @walk_p4d_range(ptr noundef %47, i64 noundef %48, i64 noundef %49, ptr noundef %50) #10, !dbg !5717
  store i32 %call38, ptr %err, align 4, !dbg !5718
  br label %if.end39, !dbg !5719

if.end39:                                         ; preds = %if.then37, %lor.lhs.false35
  %51 = load i32, ptr %err, align 4, !dbg !5720
  %tobool40 = icmp ne i32 %51, 0, !dbg !5720
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5722

if.then41:                                        ; preds = %if.end39
  br label %do.end, !dbg !5723

if.end42:                                         ; preds = %if.end39
  br label %do.cond, !dbg !5724

do.cond:                                          ; preds = %if.end42, %if.end21
  %52 = load ptr, ptr %pgd, align 8, !dbg !5725
  %incdec.ptr = getelementptr %struct.pgd_t, ptr %52, i32 1, !dbg !5725
  store ptr %incdec.ptr, ptr %pgd, align 8, !dbg !5725
  %53 = load i64, ptr %next, align 8, !dbg !5726
  store i64 %53, ptr %addr.addr, align 8, !dbg !5727
  %54 = load i64, ptr %addr.addr, align 8, !dbg !5728
  %55 = load i64, ptr %end.addr, align 8, !dbg !5729
  %cmp43 = icmp ne i64 %54, %55, !dbg !5730
  br i1 %cmp43, label %do.body, label %do.end, !dbg !5724, !llvm.loop !5731

do.end:                                           ; preds = %do.cond, %if.then41, %if.then28, %if.then20
  %56 = load i32, ptr %err, align 4, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #9, !dbg !5734
  ret i32 %56, !dbg !5735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @walk_page_range_vma(ptr noundef %vma, i64 noundef %start, i64 noundef %end, ptr noundef %ops, ptr noundef %private) #0 align 16 !dbg !5736 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %private.addr = alloca ptr, align 8
  %walk = alloca %struct.mm_walk, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5740, metadata !DIExpression()), !dbg !5746
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5741, metadata !DIExpression()), !dbg !5747
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5742, metadata !DIExpression()), !dbg !5748
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5743, metadata !DIExpression()), !dbg !5749
  store ptr %private, ptr %private.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private.addr, metadata !5744, metadata !DIExpression()), !dbg !5750
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #9, !dbg !5751
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5745, metadata !DIExpression()), !dbg !5752
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 0, !dbg !5753
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5754
  store ptr %0, ptr %ops1, align 8, !dbg !5753
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5753
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5755
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1, !dbg !5756
  %2 = load ptr, ptr %vm_mm, align 8, !dbg !5756
  store ptr %2, ptr %mm, align 8, !dbg !5753
  %pgd = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2, !dbg !5753
  store ptr null, ptr %pgd, align 8, !dbg !5753
  %vma2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5753
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5757
  store ptr %3, ptr %vma2, align 8, !dbg !5753
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4, !dbg !5753
  store i32 0, ptr %action, align 8, !dbg !5753
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5, !dbg !5753
  store i8 0, ptr %no_vma, align 4, !dbg !5753
  %private3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6, !dbg !5753
  %4 = load ptr, ptr %private.addr, align 8, !dbg !5758
  store ptr %4, ptr %private3, align 8, !dbg !5753
  %5 = load i64, ptr %start.addr, align 8, !dbg !5759
  %6 = load i64, ptr %end.addr, align 8, !dbg !5761
  %cmp = icmp uge i64 %5, %6, !dbg !5762
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5763

lor.lhs.false:                                    ; preds = %entry
  %mm4 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5764
  %7 = load ptr, ptr %mm4, align 8, !dbg !5764
  %tobool = icmp ne ptr %7, null, !dbg !5765
  br i1 %tobool, label %if.end, label %if.then, !dbg !5766

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5767

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i64, ptr %start.addr, align 8, !dbg !5768
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !5770
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 0, !dbg !5771
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %10, i32 0, i32 0, !dbg !5771
  %11 = load i64, ptr %vm_start, align 8, !dbg !5771
  %cmp5 = icmp ult i64 %8, %11, !dbg !5772
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6, !dbg !5773

lor.lhs.false6:                                   ; preds = %if.end
  %12 = load i64, ptr %end.addr, align 8, !dbg !5774
  %13 = load ptr, ptr %vma.addr, align 8, !dbg !5775
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %13, i32 0, i32 0, !dbg !5776
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %14, i32 0, i32 1, !dbg !5776
  %15 = load i64, ptr %vm_end, align 8, !dbg !5776
  %cmp7 = icmp ugt i64 %12, %15, !dbg !5777
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5778

if.then8:                                         ; preds = %lor.lhs.false6, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5779

if.end9:                                          ; preds = %lor.lhs.false6
  %mm10 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5780
  %16 = load ptr, ptr %mm10, align 8, !dbg !5780
  %17 = load ptr, ptr %ops.addr, align 8, !dbg !5781
  %walk_lock = getelementptr inbounds %struct.mm_walk_ops, ptr %17, i32 0, i32 10, !dbg !5782
  %18 = load i32, ptr %walk_lock, align 8, !dbg !5782
  call void @process_mm_walk_lock(ptr noundef %16, i32 noundef %18) #10, !dbg !5783
  %19 = load ptr, ptr %vma.addr, align 8, !dbg !5784
  %20 = load ptr, ptr %ops.addr, align 8, !dbg !5785
  %walk_lock11 = getelementptr inbounds %struct.mm_walk_ops, ptr %20, i32 0, i32 10, !dbg !5786
  %21 = load i32, ptr %walk_lock11, align 8, !dbg !5786
  call void @process_vma_walk_lock(ptr noundef %19, i32 noundef %21) #10, !dbg !5787
  %22 = load i64, ptr %start.addr, align 8, !dbg !5788
  %23 = load i64, ptr %end.addr, align 8, !dbg !5789
  %call = call i32 @__walk_page_range(i64 noundef %22, i64 noundef %23, ptr noundef %walk) #10, !dbg !5790
  store i32 %call, ptr %retval, align 4, !dbg !5791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5791

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #9, !dbg !5792
  %24 = load i32, ptr %retval, align 4, !dbg !5792
  ret i32 %24, !dbg !5792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @walk_page_vma(ptr noundef %vma, ptr noundef %ops, ptr noundef %private) #0 align 16 !dbg !5793 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %private.addr = alloca ptr, align 8
  %walk = alloca %struct.mm_walk, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5797, metadata !DIExpression()), !dbg !5801
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5798, metadata !DIExpression()), !dbg !5802
  store ptr %private, ptr %private.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private.addr, metadata !5799, metadata !DIExpression()), !dbg !5803
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #9, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5800, metadata !DIExpression()), !dbg !5805
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 0, !dbg !5806
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5807
  store ptr %0, ptr %ops1, align 8, !dbg !5806
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5806
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5808
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1, !dbg !5809
  %2 = load ptr, ptr %vm_mm, align 8, !dbg !5809
  store ptr %2, ptr %mm, align 8, !dbg !5806
  %pgd = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2, !dbg !5806
  store ptr null, ptr %pgd, align 8, !dbg !5806
  %vma2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5806
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5810
  store ptr %3, ptr %vma2, align 8, !dbg !5806
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4, !dbg !5806
  store i32 0, ptr %action, align 8, !dbg !5806
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5, !dbg !5806
  store i8 0, ptr %no_vma, align 4, !dbg !5806
  %private3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6, !dbg !5806
  %4 = load ptr, ptr %private.addr, align 8, !dbg !5811
  store ptr %4, ptr %private3, align 8, !dbg !5806
  %mm4 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5812
  %5 = load ptr, ptr %mm4, align 8, !dbg !5812
  %tobool = icmp ne ptr %5, null, !dbg !5814
  br i1 %tobool, label %if.end, label %if.then, !dbg !5815

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5816

if.end:                                           ; preds = %entry
  %mm5 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5817
  %6 = load ptr, ptr %mm5, align 8, !dbg !5817
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !5818
  %walk_lock = getelementptr inbounds %struct.mm_walk_ops, ptr %7, i32 0, i32 10, !dbg !5819
  %8 = load i32, ptr %walk_lock, align 8, !dbg !5819
  call void @process_mm_walk_lock(ptr noundef %6, i32 noundef %8) #10, !dbg !5820
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !5821
  %10 = load ptr, ptr %ops.addr, align 8, !dbg !5822
  %walk_lock6 = getelementptr inbounds %struct.mm_walk_ops, ptr %10, i32 0, i32 10, !dbg !5823
  %11 = load i32, ptr %walk_lock6, align 8, !dbg !5823
  call void @process_vma_walk_lock(ptr noundef %9, i32 noundef %11) #10, !dbg !5824
  %12 = load ptr, ptr %vma.addr, align 8, !dbg !5825
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 0, !dbg !5826
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %13, i32 0, i32 0, !dbg !5826
  %14 = load i64, ptr %vm_start, align 8, !dbg !5826
  %15 = load ptr, ptr %vma.addr, align 8, !dbg !5827
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 0, !dbg !5828
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %16, i32 0, i32 1, !dbg !5828
  %17 = load i64, ptr %vm_end, align 8, !dbg !5828
  %call = call i32 @__walk_page_range(i64 noundef %14, i64 noundef %17, ptr noundef %walk) #10, !dbg !5829
  store i32 %call, ptr %retval, align 4, !dbg !5830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5830

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #9, !dbg !5831
  %18 = load i32, ptr %retval, align 4, !dbg !5831
  ret i32 %18, !dbg !5831
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @walk_page_mapping(ptr noundef %mapping, i64 noundef %first_index, i64 noundef %nr, ptr noundef %ops, ptr noundef %private) #0 align 16 !dbg !5832 {
entry:
  %mapping.addr = alloca ptr, align 8
  %first_index.addr = alloca i64, align 8
  %nr.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %private.addr = alloca ptr, align 8
  %walk = alloca %struct.mm_walk, align 8
  %vma3 = alloca ptr, align 8
  %vba = alloca i64, align 8
  %vea = alloca i64, align 8
  %cba = alloca i64, align 8
  %cea = alloca i64, align 8
  %start_addr = alloca i64, align 8
  %end_addr = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x340 = alloca i64, align 8
  %__UNIQUE_ID___y341 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x342 = alloca i64, align 8
  %__UNIQUE_ID___y343 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5836, metadata !DIExpression()), !dbg !5859
  store i64 %first_index, ptr %first_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_index.addr, metadata !5837, metadata !DIExpression()), !dbg !5860
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5838, metadata !DIExpression()), !dbg !5861
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5839, metadata !DIExpression()), !dbg !5862
  store ptr %private, ptr %private.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private.addr, metadata !5840, metadata !DIExpression()), !dbg !5863
  call void @llvm.lifetime.start.p0(i64 48, ptr %walk) #9, !dbg !5864
  call void @llvm.dbg.declare(metadata ptr %walk, metadata !5841, metadata !DIExpression()), !dbg !5865
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 0, !dbg !5866
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5867
  store ptr %0, ptr %ops1, align 8, !dbg !5866
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5866
  store ptr null, ptr %mm, align 8, !dbg !5866
  %pgd = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2, !dbg !5866
  store ptr null, ptr %pgd, align 8, !dbg !5866
  %vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5866
  store ptr null, ptr %vma, align 8, !dbg !5866
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4, !dbg !5866
  store i32 0, ptr %action, align 8, !dbg !5866
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5, !dbg !5866
  store i8 0, ptr %no_vma, align 4, !dbg !5866
  %private2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6, !dbg !5866
  %1 = load ptr, ptr %private.addr, align 8, !dbg !5868
  store ptr %1, ptr %private2, align 8, !dbg !5866
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma3) #9, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %vma3, metadata !5842, metadata !DIExpression()), !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %vba) #9, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %vba, metadata !5843, metadata !DIExpression()), !dbg !5872
  call void @llvm.lifetime.start.p0(i64 8, ptr %vea) #9, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %vea, metadata !5844, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 8, ptr %cba) #9, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %cba, metadata !5845, metadata !DIExpression()), !dbg !5874
  call void @llvm.lifetime.start.p0(i64 8, ptr %cea) #9, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %cea, metadata !5846, metadata !DIExpression()), !dbg !5875
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_addr) #9, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %start_addr, metadata !5847, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_addr) #9, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %end_addr, metadata !5848, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5849, metadata !DIExpression()), !dbg !5880
  store i32 0, ptr %err, align 4, !dbg !5880
  br label %do.body, !dbg !5881

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %mapping.addr, align 8, !dbg !5882
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 10, !dbg !5882
  br label %do.cond, !dbg !5882

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5882

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %mapping.addr, align 8, !dbg !5884
  %i_mmap = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 5, !dbg !5884
  %4 = load i64, ptr %first_index.addr, align 8, !dbg !5884
  %5 = load i64, ptr %first_index.addr, align 8, !dbg !5884
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5884
  %add = add i64 %5, %6, !dbg !5884
  %sub = sub i64 %add, 1, !dbg !5884
  %call = call ptr @vma_interval_tree_iter_first(ptr noundef %i_mmap, i64 noundef %4, i64 noundef %sub) #10, !dbg !5884
  store ptr %call, ptr %vma3, align 8, !dbg !5884
  br label %for.cond, !dbg !5884

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load ptr, ptr %vma3, align 8, !dbg !5885
  %tobool = icmp ne ptr %7, null, !dbg !5884
  br i1 %tobool, label %for.body, label %for.end, !dbg !5884

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %vma3, align 8, !dbg !5886
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 11, !dbg !5887
  %9 = load i64, ptr %vm_pgoff, align 8, !dbg !5887
  store i64 %9, ptr %vba, align 8, !dbg !5888
  %10 = load i64, ptr %vba, align 8, !dbg !5889
  %11 = load ptr, ptr %vma3, align 8, !dbg !5890
  %call4 = call i64 @vma_pages(ptr noundef %11) #10, !dbg !5891
  %add5 = add i64 %10, %call4, !dbg !5892
  store i64 %add5, ptr %vea, align 8, !dbg !5893
  %12 = load i64, ptr %first_index.addr, align 8, !dbg !5894
  store i64 %12, ptr %cba, align 8, !dbg !5895
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x340) #9, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x340, metadata !5850, metadata !DIExpression()), !dbg !5896
  %13 = load i64, ptr %cba, align 8, !dbg !5896
  store i64 %13, ptr %__UNIQUE_ID___x340, align 8, !dbg !5896
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y341) #9, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y341, metadata !5855, metadata !DIExpression()), !dbg !5896
  %14 = load i64, ptr %vba, align 8, !dbg !5896
  store i64 %14, ptr %__UNIQUE_ID___y341, align 8, !dbg !5896
  %15 = load i64, ptr %__UNIQUE_ID___x340, align 8, !dbg !5896
  %16 = load i64, ptr %__UNIQUE_ID___y341, align 8, !dbg !5896
  %cmp = icmp ugt i64 %15, %16, !dbg !5896
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5896

cond.true:                                        ; preds = %for.body
  %17 = load i64, ptr %__UNIQUE_ID___x340, align 8, !dbg !5896
  br label %cond.end, !dbg !5896

cond.false:                                       ; preds = %for.body
  %18 = load i64, ptr %__UNIQUE_ID___y341, align 8, !dbg !5896
  br label %cond.end, !dbg !5896

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !5896
  store i64 %cond, ptr %tmp, align 8, !dbg !5896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y341) #9, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x340) #9, !dbg !5897
  %19 = load i64, ptr %tmp, align 8, !dbg !5896
  store i64 %19, ptr %cba, align 8, !dbg !5898
  %20 = load i64, ptr %first_index.addr, align 8, !dbg !5899
  %21 = load i64, ptr %nr.addr, align 8, !dbg !5900
  %add6 = add i64 %20, %21, !dbg !5901
  store i64 %add6, ptr %cea, align 8, !dbg !5902
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x342) #9, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x342, metadata !5856, metadata !DIExpression()), !dbg !5903
  %22 = load i64, ptr %cea, align 8, !dbg !5903
  store i64 %22, ptr %__UNIQUE_ID___x342, align 8, !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y343) #9, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y343, metadata !5858, metadata !DIExpression()), !dbg !5903
  %23 = load i64, ptr %vea, align 8, !dbg !5903
  store i64 %23, ptr %__UNIQUE_ID___y343, align 8, !dbg !5903
  %24 = load i64, ptr %__UNIQUE_ID___x342, align 8, !dbg !5903
  %25 = load i64, ptr %__UNIQUE_ID___y343, align 8, !dbg !5903
  %cmp8 = icmp ult i64 %24, %25, !dbg !5903
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !5903

cond.true9:                                       ; preds = %cond.end
  %26 = load i64, ptr %__UNIQUE_ID___x342, align 8, !dbg !5903
  br label %cond.end11, !dbg !5903

cond.false10:                                     ; preds = %cond.end
  %27 = load i64, ptr %__UNIQUE_ID___y343, align 8, !dbg !5903
  br label %cond.end11, !dbg !5903

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i64 [ %26, %cond.true9 ], [ %27, %cond.false10 ], !dbg !5903
  store i64 %cond12, ptr %tmp7, align 8, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y343) #9, !dbg !5904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x342) #9, !dbg !5904
  %28 = load i64, ptr %tmp7, align 8, !dbg !5903
  store i64 %28, ptr %cea, align 8, !dbg !5905
  %29 = load i64, ptr %cba, align 8, !dbg !5906
  %30 = load i64, ptr %vba, align 8, !dbg !5907
  %sub13 = sub i64 %29, %30, !dbg !5908
  %shl = shl i64 %sub13, 12, !dbg !5909
  %31 = load ptr, ptr %vma3, align 8, !dbg !5910
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %31, i32 0, i32 0, !dbg !5911
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %32, i32 0, i32 0, !dbg !5911
  %33 = load i64, ptr %vm_start, align 8, !dbg !5911
  %add14 = add i64 %shl, %33, !dbg !5912
  store i64 %add14, ptr %start_addr, align 8, !dbg !5913
  %34 = load i64, ptr %cea, align 8, !dbg !5914
  %35 = load i64, ptr %vba, align 8, !dbg !5915
  %sub15 = sub i64 %34, %35, !dbg !5916
  %shl16 = shl i64 %sub15, 12, !dbg !5917
  %36 = load ptr, ptr %vma3, align 8, !dbg !5918
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 0, !dbg !5919
  %vm_start17 = getelementptr inbounds %struct.anon.14, ptr %37, i32 0, i32 0, !dbg !5919
  %38 = load i64, ptr %vm_start17, align 8, !dbg !5919
  %add18 = add i64 %shl16, %38, !dbg !5920
  store i64 %add18, ptr %end_addr, align 8, !dbg !5921
  %39 = load i64, ptr %start_addr, align 8, !dbg !5922
  %40 = load i64, ptr %end_addr, align 8, !dbg !5924
  %cmp19 = icmp uge i64 %39, %40, !dbg !5925
  br i1 %cmp19, label %if.then, label %if.end, !dbg !5926

if.then:                                          ; preds = %cond.end11
  br label %for.inc, !dbg !5927

if.end:                                           ; preds = %cond.end11
  %41 = load ptr, ptr %vma3, align 8, !dbg !5928
  %vma20 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3, !dbg !5929
  store ptr %41, ptr %vma20, align 8, !dbg !5930
  %42 = load ptr, ptr %vma3, align 8, !dbg !5931
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 1, !dbg !5932
  %43 = load ptr, ptr %vm_mm, align 8, !dbg !5932
  %mm21 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1, !dbg !5933
  store ptr %43, ptr %mm21, align 8, !dbg !5934
  %44 = load ptr, ptr %vma3, align 8, !dbg !5935
  %45 = getelementptr inbounds %struct.vm_area_struct, ptr %44, i32 0, i32 0, !dbg !5936
  %vm_start22 = getelementptr inbounds %struct.anon.14, ptr %45, i32 0, i32 0, !dbg !5936
  %46 = load i64, ptr %vm_start22, align 8, !dbg !5936
  %47 = load ptr, ptr %vma3, align 8, !dbg !5937
  %48 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 0, !dbg !5938
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %48, i32 0, i32 1, !dbg !5938
  %49 = load i64, ptr %vm_end, align 8, !dbg !5938
  %call23 = call i32 @walk_page_test(i64 noundef %46, i64 noundef %49, ptr noundef %walk) #10, !dbg !5939
  store i32 %call23, ptr %err, align 4, !dbg !5940
  %50 = load i32, ptr %err, align 4, !dbg !5941
  %cmp24 = icmp sgt i32 %50, 0, !dbg !5943
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !5944

if.then25:                                        ; preds = %if.end
  store i32 0, ptr %err, align 4, !dbg !5945
  br label %for.end, !dbg !5947

if.else:                                          ; preds = %if.end
  %51 = load i32, ptr %err, align 4, !dbg !5948
  %cmp26 = icmp slt i32 %51, 0, !dbg !5950
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !5951

if.then27:                                        ; preds = %if.else
  br label %for.end, !dbg !5952

if.end28:                                         ; preds = %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  %52 = load i64, ptr %start_addr, align 8, !dbg !5953
  %53 = load i64, ptr %end_addr, align 8, !dbg !5954
  %call30 = call i32 @__walk_page_range(i64 noundef %52, i64 noundef %53, ptr noundef %walk) #10, !dbg !5955
  store i32 %call30, ptr %err, align 4, !dbg !5956
  %54 = load i32, ptr %err, align 4, !dbg !5957
  %tobool31 = icmp ne i32 %54, 0, !dbg !5957
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5959

if.then32:                                        ; preds = %if.end29
  br label %for.end, !dbg !5960

if.end33:                                         ; preds = %if.end29
  br label %for.inc, !dbg !5961

for.inc:                                          ; preds = %if.end33, %if.then
  %55 = load ptr, ptr %vma3, align 8, !dbg !5885
  %56 = load i64, ptr %first_index.addr, align 8, !dbg !5885
  %57 = load i64, ptr %first_index.addr, align 8, !dbg !5885
  %58 = load i64, ptr %nr.addr, align 8, !dbg !5885
  %add34 = add i64 %57, %58, !dbg !5885
  %sub35 = sub i64 %add34, 1, !dbg !5885
  %call36 = call ptr @vma_interval_tree_iter_next(ptr noundef %55, i64 noundef %56, i64 noundef %sub35) #10, !dbg !5885
  store ptr %call36, ptr %vma3, align 8, !dbg !5885
  br label %for.cond, !dbg !5885, !llvm.loop !5962

for.end:                                          ; preds = %if.then32, %if.then27, %if.then25, %for.cond
  %59 = load i32, ptr %err, align 4, !dbg !5964
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_addr) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_addr) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %cea) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %cba) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %vea) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %vba) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma3) #9, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 48, ptr %walk) #9, !dbg !5965
  ret i32 %59, !dbg !5966
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5967 dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_pages(ptr noundef %vma) #3 align 16 !dbg !5971 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5975
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 0, !dbg !5976
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1, !dbg !5976
  %2 = load i64, ptr %vm_end, align 8, !dbg !5976
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5977
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !5978
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 0, !dbg !5978
  %5 = load i64, ptr %vm_start, align 8, !dbg !5978
  %sub = sub i64 %2, %5, !dbg !5979
  %shr = lshr i64 %sub, 12, !dbg !5980
  ret i64 %shr, !dbg !5981
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5982 dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_locked(ptr noundef %mm) #3 align 16 !dbg !5985 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  br label %do.body, !dbg !5989

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5990
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5990
  %mmap_lock = getelementptr inbounds %struct.anon.17, ptr %1, i32 0, i32 16, !dbg !5990
  br label %do.end, !dbg !5990

do.end:                                           ; preds = %do.body
  ret void, !dbg !5992
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_start_write(ptr noundef %vma) #3 align 16 !dbg !5993 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5995, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm_lock_seq) #9, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq, metadata !5996, metadata !DIExpression()), !dbg !5999
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6000
  %call = call zeroext i1 @__is_vma_write_locked(ptr noundef %0, ptr noundef %mm_lock_seq) #10, !dbg !6002
  br i1 %call, label %if.then, label %if.end, !dbg !6003

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6004

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !6005
  %vm_lock = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 5, !dbg !6006
  %2 = load ptr, ptr %vm_lock, align 8, !dbg !6006
  %lock = getelementptr inbounds %struct.vma_lock, ptr %2, i32 0, i32 0, !dbg !6007
  call void @down_write(ptr noundef %lock) #10, !dbg !6008
  br label %do.body, !dbg !6009

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6010

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6012

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6012

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !6010

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %mm_lock_seq, align 4, !dbg !6014
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !6014
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 4, !dbg !6014
  store volatile i32 %3, ptr %vm_lock_seq, align 8, !dbg !6014
  br label %do.cond3, !dbg !6014

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6014

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !6010

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6010

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6016
  %vm_lock7 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 5, !dbg !6017
  %6 = load ptr, ptr %vm_lock7, align 8, !dbg !6017
  %lock8 = getelementptr inbounds %struct.vma_lock, ptr %6, i32 0, i32 0, !dbg !6018
  call void @up_write(ptr noundef %lock8) #10, !dbg !6019
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6020
  br label %cleanup, !dbg !6020

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm_lock_seq) #9, !dbg !6020
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6020

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_assert_write_locked(ptr noundef %vma) #3 align 16 !dbg !6021 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6023, metadata !DIExpression()), !dbg !6025
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm_lock_seq) #9, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq, metadata !6024, metadata !DIExpression()), !dbg !6027
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm_lock_seq) #9, !dbg !6028
  ret void, !dbg !6028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__is_vma_write_locked(ptr noundef %vma, ptr noundef %mm_lock_seq) #0 align 16 !dbg !6029 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6033, metadata !DIExpression()), !dbg !6035
  store ptr %mm_lock_seq, ptr %mm_lock_seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq.addr, metadata !6034, metadata !DIExpression()), !dbg !6036
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6037
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !6038
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !6038
  call void @mmap_assert_write_locked(ptr noundef %1) #10, !dbg !6039
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !6040
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1, !dbg !6041
  %3 = load ptr, ptr %vm_mm1, align 8, !dbg !6041
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !6042
  %mm_lock_seq2 = getelementptr inbounds %struct.anon.17, ptr %4, i32 0, i32 18, !dbg !6042
  %5 = load i32, ptr %mm_lock_seq2, align 8, !dbg !6042
  %6 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !6043
  store i32 %5, ptr %6, align 4, !dbg !6044
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !6045
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 4, !dbg !6046
  %8 = load i32, ptr %vm_lock_seq, align 8, !dbg !6046
  %9 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !6047
  %10 = load i32, ptr %9, align 4, !dbg !6048
  %cmp = icmp eq i32 %8, %10, !dbg !6049
  ret i1 %cmp, !dbg !6050
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6051 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6055 dso_local void @up_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_vm_hugetlb_page(ptr noundef %vma) #3 align 16 !dbg !6056 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6063
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3, !dbg !6064
  %2 = load i64, ptr %1, align 8, !dbg !6064
  %and = and i64 %2, 4194304, !dbg !6065
  %tobool = icmp ne i64 %and, 0, !dbg !6066
  %lnot = xor i1 %tobool, true, !dbg !6066
  %lnot1 = xor i1 %lnot, true, !dbg !6067
  ret i1 %lnot1, !dbg !6068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_hugetlb_range(i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !6069 {
entry:
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %h = alloca ptr, align 8
  %next = alloca i64, align 8
  %hmask = alloca i64, align 8
  %sz = alloca i64, align 8
  %pte = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %err = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6071, metadata !DIExpression()), !dbg !6112
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6072, metadata !DIExpression()), !dbg !6113
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6073, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #9, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6074, metadata !DIExpression()), !dbg !6116
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !6117
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 3, !dbg !6118
  %1 = load ptr, ptr %vma1, align 8, !dbg !6118
  store ptr %1, ptr %vma, align 8, !dbg !6116
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %h, metadata !6075, metadata !DIExpression()), !dbg !6120
  %2 = load ptr, ptr %vma, align 8, !dbg !6121
  %call = call ptr @hstate_vma(ptr noundef %2) #10, !dbg !6122
  store ptr %call, ptr %h, align 8, !dbg !6120
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !6123
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6106, metadata !DIExpression()), !dbg !6124
  call void @llvm.lifetime.start.p0(i64 8, ptr %hmask) #9, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !6107, metadata !DIExpression()), !dbg !6126
  %3 = load ptr, ptr %h, align 8, !dbg !6127
  %call2 = call i64 @huge_page_mask(ptr noundef %3) #10, !dbg !6128
  store i64 %call2, ptr %hmask, align 8, !dbg !6126
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #9, !dbg !6129
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6108, metadata !DIExpression()), !dbg !6130
  %4 = load ptr, ptr %h, align 8, !dbg !6131
  %call3 = call i64 @huge_page_size(ptr noundef %4) #10, !dbg !6132
  store i64 %call3, ptr %sz, align 8, !dbg !6130
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #9, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6109, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6110, metadata !DIExpression()), !dbg !6136
  %5 = load ptr, ptr %walk.addr, align 8, !dbg !6137
  %ops4 = getelementptr inbounds %struct.mm_walk, ptr %5, i32 0, i32 0, !dbg !6138
  %6 = load ptr, ptr %ops4, align 8, !dbg !6138
  store ptr %6, ptr %ops, align 8, !dbg !6136
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6111, metadata !DIExpression()), !dbg !6140
  store i32 0, ptr %err, align 4, !dbg !6140
  %7 = load ptr, ptr %vma, align 8, !dbg !6141
  call void @hugetlb_vma_lock_read(ptr noundef %7) #10, !dbg !6142
  br label %do.body, !dbg !6143

do.body:                                          ; preds = %do.cond, %entry
  %8 = load ptr, ptr %h, align 8, !dbg !6144
  %9 = load i64, ptr %addr.addr, align 8, !dbg !6146
  %10 = load i64, ptr %end.addr, align 8, !dbg !6147
  %call5 = call i64 @hugetlb_entry_end(ptr noundef %8, i64 noundef %9, i64 noundef %10) #10, !dbg !6148
  store i64 %call5, ptr %next, align 8, !dbg !6149
  %11 = load ptr, ptr %vma, align 8, !dbg !6150
  %12 = load i64, ptr %addr.addr, align 8, !dbg !6151
  %13 = load i64, ptr %hmask, align 8, !dbg !6152
  %and = and i64 %12, %13, !dbg !6153
  %14 = load i64, ptr %sz, align 8, !dbg !6154
  %call6 = call ptr @hugetlb_walk(ptr noundef %11, i64 noundef %and, i64 noundef %14) #10, !dbg !6155
  store ptr %call6, ptr %pte, align 8, !dbg !6156
  %15 = load ptr, ptr %pte, align 8, !dbg !6157
  %tobool = icmp ne ptr %15, null, !dbg !6157
  br i1 %tobool, label %if.then, label %if.else, !dbg !6159

if.then:                                          ; preds = %do.body
  %16 = load ptr, ptr %ops, align 8, !dbg !6160
  %hugetlb_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %16, i32 0, i32 6, !dbg !6161
  %17 = load ptr, ptr %hugetlb_entry, align 8, !dbg !6161
  %18 = load ptr, ptr %pte, align 8, !dbg !6162
  %19 = load i64, ptr %hmask, align 8, !dbg !6163
  %20 = load i64, ptr %addr.addr, align 8, !dbg !6164
  %21 = load i64, ptr %next, align 8, !dbg !6165
  %22 = load ptr, ptr %walk.addr, align 8, !dbg !6166
  %call7 = call i32 %17(ptr noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, ptr noundef %22) #10, !dbg !6160
  store i32 %call7, ptr %err, align 4, !dbg !6167
  br label %if.end12, !dbg !6168

if.else:                                          ; preds = %do.body
  %23 = load ptr, ptr %ops, align 8, !dbg !6169
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %23, i32 0, i32 5, !dbg !6171
  %24 = load ptr, ptr %pte_hole, align 8, !dbg !6171
  %tobool8 = icmp ne ptr %24, null, !dbg !6169
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !6172

if.then9:                                         ; preds = %if.else
  %25 = load ptr, ptr %ops, align 8, !dbg !6173
  %pte_hole10 = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 5, !dbg !6174
  %26 = load ptr, ptr %pte_hole10, align 8, !dbg !6174
  %27 = load i64, ptr %addr.addr, align 8, !dbg !6175
  %28 = load i64, ptr %next, align 8, !dbg !6176
  %29 = load ptr, ptr %walk.addr, align 8, !dbg !6177
  %call11 = call i32 %26(i64 noundef %27, i64 noundef %28, i32 noundef -1, ptr noundef %29) #10, !dbg !6173
  store i32 %call11, ptr %err, align 4, !dbg !6178
  br label %if.end, !dbg !6179

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %30 = load i32, ptr %err, align 4, !dbg !6180
  %tobool13 = icmp ne i32 %30, 0, !dbg !6180
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6182

if.then14:                                        ; preds = %if.end12
  br label %do.end, !dbg !6183

if.end15:                                         ; preds = %if.end12
  br label %do.cond, !dbg !6184

do.cond:                                          ; preds = %if.end15
  %31 = load i64, ptr %next, align 8, !dbg !6185
  store i64 %31, ptr %addr.addr, align 8, !dbg !6186
  %32 = load i64, ptr %addr.addr, align 8, !dbg !6187
  %33 = load i64, ptr %end.addr, align 8, !dbg !6188
  %cmp = icmp ne i64 %32, %33, !dbg !6189
  br i1 %cmp, label %do.body, label %do.end, !dbg !6184, !llvm.loop !6190

do.end:                                           ; preds = %do.cond, %if.then14
  %34 = load ptr, ptr %vma, align 8, !dbg !6192
  call void @hugetlb_vma_unlock_read(ptr noundef %34) #10, !dbg !6193
  %35 = load i32, ptr %err, align 4, !dbg !6194
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %hmask) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #9, !dbg !6195
  ret i32 %35, !dbg !6196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hstate_vma(ptr noundef %vma) #3 align 16 !dbg !6197 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6203
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !6204
  %1 = load ptr, ptr %vm_file, align 8, !dbg !6204
  %call = call ptr @hstate_file(ptr noundef %1) #10, !dbg !6205
  ret ptr %call, !dbg !6206
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @huge_page_mask(ptr noundef %h) #3 align 16 !dbg !6207 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6213
  %mask = getelementptr inbounds %struct.hstate, ptr %0, i32 0, i32 6, !dbg !6214
  %1 = load i64, ptr %mask, align 8, !dbg !6214
  ret i64 %1, !dbg !6215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @huge_page_size(ptr noundef %h) #3 align 16 !dbg !6216 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6222, metadata !DIExpression()), !dbg !6223
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6224
  %order = getelementptr inbounds %struct.hstate, ptr %0, i32 0, i32 4, !dbg !6225
  %1 = load i32, ptr %order, align 8, !dbg !6225
  %sh_prom = zext i32 %1 to i64, !dbg !6226
  %shl = shl i64 4096, %sh_prom, !dbg !6226
  ret i64 %shl, !dbg !6227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6228 dso_local void @hugetlb_vma_lock_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hugetlb_entry_end(ptr noundef %h, i64 noundef %addr, i64 noundef %end) #0 align 16 !dbg !6229 {
entry:
  %h.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %boundary = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6233, metadata !DIExpression()), !dbg !6237
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6234, metadata !DIExpression()), !dbg !6238
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6235, metadata !DIExpression()), !dbg !6239
  call void @llvm.lifetime.start.p0(i64 8, ptr %boundary) #9, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %boundary, metadata !6236, metadata !DIExpression()), !dbg !6241
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6242
  %1 = load ptr, ptr %h.addr, align 8, !dbg !6243
  %call = call i64 @huge_page_mask(ptr noundef %1) #10, !dbg !6244
  %and = and i64 %0, %call, !dbg !6245
  %2 = load ptr, ptr %h.addr, align 8, !dbg !6246
  %call1 = call i64 @huge_page_size(ptr noundef %2) #10, !dbg !6247
  %add = add i64 %and, %call1, !dbg !6248
  store i64 %add, ptr %boundary, align 8, !dbg !6241
  %3 = load i64, ptr %boundary, align 8, !dbg !6249
  %4 = load i64, ptr %end.addr, align 8, !dbg !6250
  %cmp = icmp ult i64 %3, %4, !dbg !6251
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6249

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %boundary, align 8, !dbg !6252
  br label %cond.end, !dbg !6249

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %end.addr, align 8, !dbg !6253
  br label %cond.end, !dbg !6249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %boundary) #9, !dbg !6254
  ret i64 %cond, !dbg !6255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hugetlb_walk(ptr noundef %vma, i64 noundef %addr, i64 noundef %sz) #3 align 16 !dbg !6256 {
entry:
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6260, metadata !DIExpression()), !dbg !6263
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6261, metadata !DIExpression()), !dbg !6264
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6262, metadata !DIExpression()), !dbg !6265
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6266
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !6267
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !6267
  %2 = load i64, ptr %addr.addr, align 8, !dbg !6268
  %3 = load i64, ptr %sz.addr, align 8, !dbg !6269
  %call = call ptr @huge_pte_offset(ptr noundef %1, i64 noundef %2, i64 noundef %3) #10, !dbg !6270
  ret ptr %call, !dbg !6271
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6272 dso_local void @hugetlb_vma_unlock_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hstate_file(ptr noundef %f) #3 align 16 !dbg !6273 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6277, metadata !DIExpression()), !dbg !6278
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6279
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6280
  %call1 = call ptr @hstate_inode(ptr noundef %call) #10, !dbg !6281
  ret ptr %call1, !dbg !6282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hstate_inode(ptr noundef %i) #3 align 16 !dbg !6283 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6289
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6290
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6290
  %call = call ptr @HUGETLBFS_SB(ptr noundef %1) #10, !dbg !6291
  %hstate = getelementptr inbounds %struct.hugetlbfs_sb_info, ptr %call, i32 0, i32 3, !dbg !6292
  %2 = load ptr, ptr %hstate, align 8, !dbg !6292
  ret ptr %2, !dbg !6293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6294 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6298, metadata !DIExpression()), !dbg !6299
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6300
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6301
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6301
  ret ptr %1, !dbg !6302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @HUGETLBFS_SB(ptr noundef %sb) #3 align 16 !dbg !6303 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6330
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6331
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6331
  ret ptr %1, !dbg !6332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6333 dso_local ptr @huge_pte_offset(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pgd_offset_pgd(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !6336 {
entry:
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6341, metadata !DIExpression()), !dbg !6343
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6342, metadata !DIExpression()), !dbg !6344
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6345
  %1 = load i64, ptr %address.addr, align 8, !dbg !6346
  %2 = load i32, ptr @pgdir_shift, align 4, !dbg !6346
  %sh_prom = zext i32 %2 to i64, !dbg !6346
  %shr = lshr i64 %1, %sh_prom, !dbg !6346
  %and = and i64 %shr, 511, !dbg !6346
  %add.ptr = getelementptr %struct.pgd_t, ptr %0, i64 %and, !dbg !6347
  ret ptr %add.ptr, !dbg !6348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_none_or_clear_bad(ptr noundef %pgd) #3 align 16 !dbg !6349 {
entry:
  %retval = alloca i32, align 4
  %pgd.addr = alloca ptr, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6353, metadata !DIExpression()), !dbg !6354
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6355
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %0, i32 0, i32 0, !dbg !6357
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6357
  %call = call i32 @pgd_none(i64 %1) #10, !dbg !6357
  %tobool = icmp ne i32 %call, 0, !dbg !6357
  br i1 %tobool, label %if.then, label %if.end, !dbg !6358

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6359
  br label %return, !dbg !6359

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pgd.addr, align 8, !dbg !6360
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %2, i32 0, i32 0, !dbg !6360
  %3 = load i64, ptr %coerce.dive1, align 8, !dbg !6360
  %call2 = call i32 @pgd_bad(i64 %3) #10, !dbg !6360
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6360
  %lnot = xor i1 %tobool3, true, !dbg !6360
  %lnot4 = xor i1 %lnot, true, !dbg !6360
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6360
  %conv = sext i32 %lnot.ext to i64, !dbg !6360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6360
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6360
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6362

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr %pgd.addr, align 8, !dbg !6363
  call void @pgd_clear_bad(ptr noundef %4) #10, !dbg !6365
  store i32 1, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6367
  br label %return, !dbg !6367

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6368
  ret i32 %5, !dbg !6368
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_p4d_range(ptr noundef %pgd, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !6369 {
entry:
  %pgd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %next = alloca i64, align 8
  %ops = alloca ptr, align 8
  %err = alloca i32, align 4
  %depth = alloca i32, align 4
  %__boundary = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6371, metadata !DIExpression()), !dbg !6383
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6372, metadata !DIExpression()), !dbg !6384
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6373, metadata !DIExpression()), !dbg !6385
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6374, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #9, !dbg !6387
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6375, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6376, metadata !DIExpression()), !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6377, metadata !DIExpression()), !dbg !6392
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !6393
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 0, !dbg !6394
  %1 = load ptr, ptr %ops1, align 8, !dbg !6394
  store ptr %1, ptr %ops, align 8, !dbg !6392
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6378, metadata !DIExpression()), !dbg !6396
  store i32 0, ptr %err, align 4, !dbg !6396
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #9, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !6379, metadata !DIExpression()), !dbg !6398
  %call = call i32 @real_depth(i32 noundef 1) #10, !dbg !6399
  store i32 %call, ptr %depth, align 4, !dbg !6398
  %2 = load ptr, ptr %pgd.addr, align 8, !dbg !6400
  %3 = load i64, ptr %addr.addr, align 8, !dbg !6401
  %call2 = call ptr @p4d_offset(ptr noundef %2, i64 noundef %3) #10, !dbg !6402
  store ptr %call2, ptr %p4d, align 8, !dbg !6403
  br label %do.body, !dbg !6404

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__boundary) #9, !dbg !6405
  call void @llvm.dbg.declare(metadata ptr %__boundary, metadata !6380, metadata !DIExpression()), !dbg !6405
  %4 = load i64, ptr %addr.addr, align 8, !dbg !6405
  %add = add i64 %4, 549755813888, !dbg !6405
  %and = and i64 %add, -549755813888, !dbg !6405
  store i64 %and, ptr %__boundary, align 8, !dbg !6405
  %5 = load i64, ptr %__boundary, align 8, !dbg !6405
  %sub = sub i64 %5, 1, !dbg !6405
  %6 = load i64, ptr %end.addr, align 8, !dbg !6405
  %sub3 = sub i64 %6, 1, !dbg !6405
  %cmp = icmp ult i64 %sub, %sub3, !dbg !6405
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6405

cond.true:                                        ; preds = %do.body
  %7 = load i64, ptr %__boundary, align 8, !dbg !6405
  br label %cond.end, !dbg !6405

cond.false:                                       ; preds = %do.body
  %8 = load i64, ptr %end.addr, align 8, !dbg !6405
  br label %cond.end, !dbg !6405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !6405
  store i64 %cond, ptr %tmp, align 8, !dbg !6405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__boundary) #9, !dbg !6406
  %9 = load i64, ptr %tmp, align 8, !dbg !6405
  store i64 %9, ptr %next, align 8, !dbg !6407
  %10 = load ptr, ptr %p4d, align 8, !dbg !6408
  %call4 = call i32 @p4d_none_or_clear_bad(ptr noundef %10) #10, !dbg !6410
  %tobool = icmp ne i32 %call4, 0, !dbg !6410
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6411

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %ops, align 8, !dbg !6412
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %11, i32 0, i32 5, !dbg !6415
  %12 = load ptr, ptr %pte_hole, align 8, !dbg !6415
  %tobool5 = icmp ne ptr %12, null, !dbg !6412
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6416

if.then6:                                         ; preds = %if.then
  %13 = load ptr, ptr %ops, align 8, !dbg !6417
  %pte_hole7 = getelementptr inbounds %struct.mm_walk_ops, ptr %13, i32 0, i32 5, !dbg !6418
  %14 = load ptr, ptr %pte_hole7, align 8, !dbg !6418
  %15 = load i64, ptr %addr.addr, align 8, !dbg !6419
  %16 = load i64, ptr %next, align 8, !dbg !6420
  %17 = load i32, ptr %depth, align 4, !dbg !6421
  %18 = load ptr, ptr %walk.addr, align 8, !dbg !6422
  %call8 = call i32 %14(i64 noundef %15, i64 noundef %16, i32 noundef %17, ptr noundef %18) #10, !dbg !6417
  store i32 %call8, ptr %err, align 4, !dbg !6423
  br label %if.end, !dbg !6424

if.end:                                           ; preds = %if.then6, %if.then
  %19 = load i32, ptr %err, align 4, !dbg !6425
  %tobool9 = icmp ne i32 %19, 0, !dbg !6425
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6427

if.then10:                                        ; preds = %if.end
  br label %do.end, !dbg !6428

if.end11:                                         ; preds = %if.end
  br label %do.cond, !dbg !6429

if.end12:                                         ; preds = %cond.end
  %20 = load ptr, ptr %ops, align 8, !dbg !6430
  %p4d_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %20, i32 0, i32 1, !dbg !6432
  %21 = load ptr, ptr %p4d_entry, align 8, !dbg !6432
  %tobool13 = icmp ne ptr %21, null, !dbg !6430
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !6433

if.then14:                                        ; preds = %if.end12
  %22 = load ptr, ptr %ops, align 8, !dbg !6434
  %p4d_entry15 = getelementptr inbounds %struct.mm_walk_ops, ptr %22, i32 0, i32 1, !dbg !6436
  %23 = load ptr, ptr %p4d_entry15, align 8, !dbg !6436
  %24 = load ptr, ptr %p4d, align 8, !dbg !6437
  %25 = load i64, ptr %addr.addr, align 8, !dbg !6438
  %26 = load i64, ptr %next, align 8, !dbg !6439
  %27 = load ptr, ptr %walk.addr, align 8, !dbg !6440
  %call16 = call i32 %23(ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27) #10, !dbg !6434
  store i32 %call16, ptr %err, align 4, !dbg !6441
  %28 = load i32, ptr %err, align 4, !dbg !6442
  %tobool17 = icmp ne i32 %28, 0, !dbg !6442
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6444

if.then18:                                        ; preds = %if.then14
  br label %do.end, !dbg !6445

if.end19:                                         ; preds = %if.then14
  br label %if.end20, !dbg !6446

if.end20:                                         ; preds = %if.end19, %if.end12
  %29 = load ptr, ptr %ops, align 8, !dbg !6447
  %pud_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %29, i32 0, i32 2, !dbg !6450
  %30 = load ptr, ptr %pud_entry, align 8, !dbg !6450
  %tobool21 = icmp ne ptr %30, null, !dbg !6447
  br i1 %tobool21, label %if.then25, label %lor.lhs.false, !dbg !6451

lor.lhs.false:                                    ; preds = %if.end20
  %31 = load ptr, ptr %ops, align 8, !dbg !6452
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %31, i32 0, i32 3, !dbg !6453
  %32 = load ptr, ptr %pmd_entry, align 8, !dbg !6453
  %tobool22 = icmp ne ptr %32, null, !dbg !6452
  br i1 %tobool22, label %if.then25, label %lor.lhs.false23, !dbg !6454

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %33 = load ptr, ptr %ops, align 8, !dbg !6455
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %33, i32 0, i32 4, !dbg !6456
  %34 = load ptr, ptr %pte_entry, align 8, !dbg !6456
  %tobool24 = icmp ne ptr %34, null, !dbg !6455
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !6457

if.then25:                                        ; preds = %lor.lhs.false23, %lor.lhs.false, %if.end20
  %35 = load ptr, ptr %p4d, align 8, !dbg !6458
  %36 = load i64, ptr %addr.addr, align 8, !dbg !6459
  %37 = load i64, ptr %next, align 8, !dbg !6460
  %38 = load ptr, ptr %walk.addr, align 8, !dbg !6461
  %call26 = call i32 @walk_pud_range(ptr noundef %35, i64 noundef %36, i64 noundef %37, ptr noundef %38) #10, !dbg !6462
  store i32 %call26, ptr %err, align 4, !dbg !6463
  br label %if.end27, !dbg !6464

if.end27:                                         ; preds = %if.then25, %lor.lhs.false23
  %39 = load i32, ptr %err, align 4, !dbg !6465
  %tobool28 = icmp ne i32 %39, 0, !dbg !6465
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6467

if.then29:                                        ; preds = %if.end27
  br label %do.end, !dbg !6468

if.end30:                                         ; preds = %if.end27
  br label %do.cond, !dbg !6469

do.cond:                                          ; preds = %if.end30, %if.end11
  %40 = load ptr, ptr %p4d, align 8, !dbg !6470
  %incdec.ptr = getelementptr %struct.p4d_t, ptr %40, i32 1, !dbg !6470
  store ptr %incdec.ptr, ptr %p4d, align 8, !dbg !6470
  %41 = load i64, ptr %next, align 8, !dbg !6471
  store i64 %41, ptr %addr.addr, align 8, !dbg !6472
  %42 = load i64, ptr %addr.addr, align 8, !dbg !6473
  %43 = load i64, ptr %end.addr, align 8, !dbg !6474
  %cmp31 = icmp ne i64 %42, %43, !dbg !6475
  br i1 %cmp31, label %do.body, label %do.end, !dbg !6469, !llvm.loop !6476

do.end:                                           ; preds = %do.cond, %if.then29, %if.then18, %if.then10
  %44 = load i32, ptr %err, align 4, !dbg !6478
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #9, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #9, !dbg !6479
  ret i32 %44, !dbg !6480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_none(i64 %pgd.coerce) #3 align 16 !dbg !6481 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6486, metadata !DIExpression()), !dbg !6487
  br i1 false, label %cond.true, label %cond.false, !dbg !6488

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6489

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6488

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6489

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6489

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !6489
  br i1 %call, label %if.end, label %if.then, !dbg !6489

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #10, !dbg !6489
  br i1 %call5, label %if.end, label %if.then, !dbg !6488

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !6491
  br label %return, !dbg !6491

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6492
  %0 = load i64, ptr %coerce.dive6, align 8, !dbg !6492
  %call7 = call i64 @native_pgd_val(i64 %0) #10, !dbg !6492
  %tobool = icmp ne i64 %call7, 0, !dbg !6493
  %lnot = xor i1 %tobool, true, !dbg !6493
  %lnot.ext = zext i1 %lnot to i32, !dbg !6493
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !6494
  br label %return, !dbg !6494

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6495
  ret i32 %1, !dbg !6495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_bad(i64 %pgd.coerce) #3 align 16 !dbg !6496 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %ignore_flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6498, metadata !DIExpression()), !dbg !6500
  call void @llvm.lifetime.start.p0(i64 8, ptr %ignore_flags) #9, !dbg !6501
  call void @llvm.dbg.declare(metadata ptr %ignore_flags, metadata !6499, metadata !DIExpression()), !dbg !6502
  store i64 4, ptr %ignore_flags, align 8, !dbg !6502
  br i1 false, label %cond.true, label %cond.false, !dbg !6503

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6504

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6503

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6504

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6504

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !6504
  br i1 %call, label %if.end, label %if.then, !dbg !6504

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #10, !dbg !6504
  br i1 %call5, label %if.end, label %if.then, !dbg !6503

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !6506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6506

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load i64, ptr %ignore_flags, align 8, !dbg !6507
  %or = or i64 %0, -9223372036854775808, !dbg !6507
  store i64 %or, ptr %ignore_flags, align 8, !dbg !6507
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6509
  %1 = load i64, ptr %coerce.dive6, align 8, !dbg !6509
  %call7 = call i64 @pgd_flags(i64 %1) #10, !dbg !6509
  %2 = load i64, ptr %ignore_flags, align 8, !dbg !6510
  %not = xor i64 %2, -1, !dbg !6511
  %and = and i64 %call7, %not, !dbg !6512
  %cmp = icmp ne i64 %and, 99, !dbg !6513
  %conv = zext i1 %cmp to i32, !dbg !6513
  store i32 %conv, ptr %retval, align 4, !dbg !6514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6514

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ignore_flags) #9, !dbg !6515
  %3 = load i32, ptr %retval, align 4, !dbg !6515
  ret i32 %3, !dbg !6515
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6516 dso_local void @pgd_clear_bad(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6519 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6531
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6532
  br i1 %1, label %cond.true, label %cond.false, !dbg !6532

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6533
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6534
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !6535
  %conv = zext i1 %call to i32, !dbg !6535
  br label %cond.end, !dbg !6532

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6536
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6537
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !6538
  %conv2 = zext i1 %call1 to i32, !dbg !6538
  br label %cond.end, !dbg !6532

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6532
  %tobool = icmp ne i32 %cond, 0, !dbg !6532
  ret i1 %tobool, !dbg !6539
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #6 align 16 !dbg !6540 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6545, metadata !DIExpression()), !dbg !6548
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6549
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6550
  %conv = zext i16 %1 to i32, !dbg !6550
  %and = and i32 %conv, 7, !dbg !6551
  %shl = shl i32 1, %and, !dbg !6552
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6553
  %conv1 = zext i16 %2 to i32, !dbg !6553
  %shr = ashr i32 %conv1, 3, !dbg !6554
  %idxprom = sext i32 %shr to i64, !dbg !6555
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6555
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #9
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6556, !srcloc !6557

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6556

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6546), !dbg !6558
  store i1 true, ptr %retval, align 1, !dbg !6559
  br label %return, !dbg !6559

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6547), !dbg !6560
  store i1 false, ptr %retval, align 1, !dbg !6561
  br label %return, !dbg !6561

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6562
  ret i1 %3, !dbg !6562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !6563 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6567, metadata !DIExpression()), !dbg !6568
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6569
  %0 = load i64, ptr %pgd1, align 8, !dbg !6569
  %and = and i64 %0, -1, !dbg !6570
  ret i64 %and, !dbg !6571
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6572 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6576, metadata !DIExpression()), !dbg !6578
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6577, metadata !DIExpression()), !dbg !6579
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6580
  %and = and i64 %0, 63, !dbg !6581
  %shl = shl i64 1, %and, !dbg !6582
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6583
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6584
  %shr = ashr i64 %2, 6, !dbg !6585
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6583
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6583
  %and1 = and i64 %shl, %3, !dbg !6586
  %cmp = icmp ne i64 %and1, 0, !dbg !6587
  ret i1 %cmp, !dbg !6588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6589 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6591, metadata !DIExpression()), !dbg !6594
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6592, metadata !DIExpression()), !dbg !6595
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !6596
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6593, metadata !DIExpression()), !dbg !6597
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6598
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6599
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !6600, !srcloc !6601
  %3 = icmp ult i8 %2, 2, !dbg !6600
  call void @llvm.assume(i1 %3), !dbg !6600
  store i8 %2, ptr %oldbit, align 1, !dbg !6600
  %4 = load i8, ptr %oldbit, align 1, !dbg !6602, !range !6603, !noundef !652
  %tobool = trunc i8 %4 to i1, !dbg !6602
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !6604
  ret i1 %tobool, !dbg !6605
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_flags(i64 %pgd.coerce) #3 align 16 !dbg !6606 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6608, metadata !DIExpression()), !dbg !6609
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6610
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6610
  %call = call i64 @native_pgd_val(i64 %0) #10, !dbg !6610
  %and = and i64 %call, -4503599627366401, !dbg !6611
  ret i64 %and, !dbg !6612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @real_depth(i32 noundef %depth) #0 align 16 !dbg !6613 {
entry:
  %depth.addr = alloca i32, align 4
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !6615, metadata !DIExpression()), !dbg !6616
  %0 = load i32, ptr %depth.addr, align 4, !dbg !6617
  %cmp = icmp eq i32 %0, 3, !dbg !6619
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6620

land.lhs.true:                                    ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !6621

if.then:                                          ; preds = %land.lhs.true
  store i32 2, ptr %depth.addr, align 4, !dbg !6622
  br label %if.end, !dbg !6623

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %1 = load i32, ptr %depth.addr, align 4, !dbg !6624
  %cmp1 = icmp eq i32 %1, 2, !dbg !6626
  br i1 %cmp1, label %land.lhs.true2, label %if.end4, !dbg !6627

land.lhs.true2:                                   ; preds = %if.end
  br i1 false, label %if.then3, label %if.end4, !dbg !6628

if.then3:                                         ; preds = %land.lhs.true2
  store i32 1, ptr %depth.addr, align 4, !dbg !6629
  br label %if.end4, !dbg !6630

if.end4:                                          ; preds = %if.then3, %land.lhs.true2, %if.end
  %2 = load i32, ptr %depth.addr, align 4, !dbg !6631
  %cmp5 = icmp eq i32 %2, 1, !dbg !6633
  br i1 %cmp5, label %land.lhs.true6, label %if.end9, !dbg !6634

land.lhs.true6:                                   ; preds = %if.end4
  %3 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !6635
  %cmp7 = icmp eq i32 %3, 1, !dbg !6636
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6637

if.then8:                                         ; preds = %land.lhs.true6
  store i32 0, ptr %depth.addr, align 4, !dbg !6638
  br label %if.end9, !dbg !6639

if.end9:                                          ; preds = %if.then8, %land.lhs.true6, %if.end4
  %4 = load i32, ptr %depth.addr, align 4, !dbg !6640
  ret i32 %4, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !6642 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  br i1 false, label %cond.true, label %cond.false, !dbg !6650

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6651

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6650

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6651

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6651

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !6651
  br i1 %call, label %if.end, label %if.then, !dbg !6651

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #10, !dbg !6651
  br i1 %call5, label %if.end, label %if.then, !dbg !6650

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6653
  store ptr %0, ptr %retval, align 8, !dbg !6654
  br label %return, !dbg !6654

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !6655
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !6656
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6656
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #10, !dbg !6656
  %3 = inttoptr i64 %call6 to ptr, !dbg !6657
  %4 = load i64, ptr %address.addr, align 8, !dbg !6658
  %call7 = call i64 @p4d_index(i64 noundef %4) #10, !dbg !6659
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !6660
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6661
  br label %return, !dbg !6661

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6662
  ret ptr %5, !dbg !6662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_none_or_clear_bad(ptr noundef %p4d) #3 align 16 !dbg !6663 {
entry:
  %retval = alloca i32, align 4
  %p4d.addr = alloca ptr, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !6669
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !6671
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6671
  %call = call i32 @p4d_none(i64 %1) #10, !dbg !6671
  %tobool = icmp ne i32 %call, 0, !dbg !6671
  br i1 %tobool, label %if.then, label %if.end, !dbg !6672

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6673
  br label %return, !dbg !6673

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p4d.addr, align 8, !dbg !6674
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %2, i32 0, i32 0, !dbg !6674
  %3 = load i64, ptr %coerce.dive1, align 8, !dbg !6674
  %call2 = call i32 @p4d_bad(i64 %3) #10, !dbg !6674
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6674
  %lnot = xor i1 %tobool3, true, !dbg !6674
  %lnot4 = xor i1 %lnot, true, !dbg !6674
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6674
  %conv = sext i32 %lnot.ext to i64, !dbg !6674
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6674
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6674
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6676

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr %p4d.addr, align 8, !dbg !6677
  call void @p4d_clear_bad(ptr noundef %4) #10, !dbg !6679
  store i32 1, ptr %retval, align 4, !dbg !6680
  br label %return, !dbg !6680

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6682
  ret i32 %5, !dbg !6682
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_pud_range(ptr noundef %p4d, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !6683 {
entry:
  %p4d.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %next = alloca i64, align 8
  %ops = alloca ptr, align 8
  %err = alloca i32, align 4
  %depth = alloca i32, align 4
  %__boundary = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !6685, metadata !DIExpression()), !dbg !6698
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6686, metadata !DIExpression()), !dbg !6699
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6687, metadata !DIExpression()), !dbg !6700
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6688, metadata !DIExpression()), !dbg !6701
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #9, !dbg !6702
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6689, metadata !DIExpression()), !dbg !6703
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !6704
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6690, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6691, metadata !DIExpression()), !dbg !6707
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !6708
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 0, !dbg !6709
  %1 = load ptr, ptr %ops1, align 8, !dbg !6709
  store ptr %1, ptr %ops, align 8, !dbg !6707
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6692, metadata !DIExpression()), !dbg !6711
  store i32 0, ptr %err, align 4, !dbg !6711
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #9, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !6693, metadata !DIExpression()), !dbg !6713
  %call = call i32 @real_depth(i32 noundef 2) #10, !dbg !6714
  store i32 %call, ptr %depth, align 4, !dbg !6713
  %2 = load ptr, ptr %p4d.addr, align 8, !dbg !6715
  %3 = load i64, ptr %addr.addr, align 8, !dbg !6716
  %call2 = call ptr @pud_offset(ptr noundef %2, i64 noundef %3) #10, !dbg !6717
  store ptr %call2, ptr %pud, align 8, !dbg !6718
  br label %do.body, !dbg !6719

do.body:                                          ; preds = %do.cond55, %entry
  br label %again, !dbg !6720

again:                                            ; preds = %if.then49, %if.then23, %do.body
  call void @llvm.dbg.label(metadata !6694), !dbg !6721
  call void @llvm.lifetime.start.p0(i64 8, ptr %__boundary) #9, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %__boundary, metadata !6696, metadata !DIExpression()), !dbg !6722
  %4 = load i64, ptr %addr.addr, align 8, !dbg !6722
  %add = add i64 %4, 1073741824, !dbg !6722
  %and = and i64 %add, -1073741824, !dbg !6722
  store i64 %and, ptr %__boundary, align 8, !dbg !6722
  %5 = load i64, ptr %__boundary, align 8, !dbg !6722
  %sub = sub i64 %5, 1, !dbg !6722
  %6 = load i64, ptr %end.addr, align 8, !dbg !6722
  %sub3 = sub i64 %6, 1, !dbg !6722
  %cmp = icmp ult i64 %sub, %sub3, !dbg !6722
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6722

cond.true:                                        ; preds = %again
  %7 = load i64, ptr %__boundary, align 8, !dbg !6722
  br label %cond.end, !dbg !6722

cond.false:                                       ; preds = %again
  %8 = load i64, ptr %end.addr, align 8, !dbg !6722
  br label %cond.end, !dbg !6722

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !6722
  store i64 %cond, ptr %tmp, align 8, !dbg !6722
  call void @llvm.lifetime.end.p0(i64 8, ptr %__boundary) #9, !dbg !6723
  %9 = load i64, ptr %tmp, align 8, !dbg !6722
  store i64 %9, ptr %next, align 8, !dbg !6724
  %10 = load ptr, ptr %pud, align 8, !dbg !6725
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %10, i32 0, i32 0, !dbg !6727
  %11 = load i64, ptr %coerce.dive, align 8, !dbg !6727
  %call4 = call i32 @pud_none(i64 %11) #10, !dbg !6727
  %tobool = icmp ne i32 %call4, 0, !dbg !6727
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6728

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %ops, align 8, !dbg !6729
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %12, i32 0, i32 5, !dbg !6732
  %13 = load ptr, ptr %pte_hole, align 8, !dbg !6732
  %tobool5 = icmp ne ptr %13, null, !dbg !6729
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6733

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %ops, align 8, !dbg !6734
  %pte_hole7 = getelementptr inbounds %struct.mm_walk_ops, ptr %14, i32 0, i32 5, !dbg !6735
  %15 = load ptr, ptr %pte_hole7, align 8, !dbg !6735
  %16 = load i64, ptr %addr.addr, align 8, !dbg !6736
  %17 = load i64, ptr %next, align 8, !dbg !6737
  %18 = load i32, ptr %depth, align 4, !dbg !6738
  %19 = load ptr, ptr %walk.addr, align 8, !dbg !6739
  %call8 = call i32 %15(i64 noundef %16, i64 noundef %17, i32 noundef %18, ptr noundef %19) #10, !dbg !6734
  store i32 %call8, ptr %err, align 4, !dbg !6740
  br label %if.end, !dbg !6741

if.end:                                           ; preds = %if.then6, %if.then
  %20 = load i32, ptr %err, align 4, !dbg !6742
  %tobool9 = icmp ne i32 %20, 0, !dbg !6742
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6744

if.then10:                                        ; preds = %if.end
  br label %do.end57, !dbg !6745

if.end11:                                         ; preds = %if.end
  br label %do.cond55, !dbg !6746

if.end12:                                         ; preds = %cond.end
  %21 = load ptr, ptr %walk.addr, align 8, !dbg !6747
  %action = getelementptr inbounds %struct.mm_walk, ptr %21, i32 0, i32 4, !dbg !6748
  store i32 0, ptr %action, align 8, !dbg !6749
  %22 = load ptr, ptr %ops, align 8, !dbg !6750
  %pud_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %22, i32 0, i32 2, !dbg !6752
  %23 = load ptr, ptr %pud_entry, align 8, !dbg !6752
  %tobool13 = icmp ne ptr %23, null, !dbg !6750
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !6753

if.then14:                                        ; preds = %if.end12
  %24 = load ptr, ptr %ops, align 8, !dbg !6754
  %pud_entry15 = getelementptr inbounds %struct.mm_walk_ops, ptr %24, i32 0, i32 2, !dbg !6755
  %25 = load ptr, ptr %pud_entry15, align 8, !dbg !6755
  %26 = load ptr, ptr %pud, align 8, !dbg !6756
  %27 = load i64, ptr %addr.addr, align 8, !dbg !6757
  %28 = load i64, ptr %next, align 8, !dbg !6758
  %29 = load ptr, ptr %walk.addr, align 8, !dbg !6759
  %call16 = call i32 %25(ptr noundef %26, i64 noundef %27, i64 noundef %28, ptr noundef %29) #10, !dbg !6754
  store i32 %call16, ptr %err, align 4, !dbg !6760
  br label %if.end17, !dbg !6761

if.end17:                                         ; preds = %if.then14, %if.end12
  %30 = load i32, ptr %err, align 4, !dbg !6762
  %tobool18 = icmp ne i32 %30, 0, !dbg !6762
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !6764

if.then19:                                        ; preds = %if.end17
  br label %do.end57, !dbg !6765

if.end20:                                         ; preds = %if.end17
  %31 = load ptr, ptr %walk.addr, align 8, !dbg !6766
  %action21 = getelementptr inbounds %struct.mm_walk, ptr %31, i32 0, i32 4, !dbg !6768
  %32 = load i32, ptr %action21, align 8, !dbg !6768
  %cmp22 = icmp eq i32 %32, 2, !dbg !6769
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !6770

if.then23:                                        ; preds = %if.end20
  br label %again, !dbg !6771

if.end24:                                         ; preds = %if.end20
  %33 = load ptr, ptr %walk.addr, align 8, !dbg !6772
  %vma = getelementptr inbounds %struct.mm_walk, ptr %33, i32 0, i32 3, !dbg !6774
  %34 = load ptr, ptr %vma, align 8, !dbg !6774
  %tobool25 = icmp ne ptr %34, null, !dbg !6772
  br i1 %tobool25, label %lor.lhs.false32, label %land.lhs.true, !dbg !6775

land.lhs.true:                                    ; preds = %if.end24
  %35 = load ptr, ptr %pud, align 8, !dbg !6776
  %coerce.dive26 = getelementptr inbounds %struct.pud_t, ptr %35, i32 0, i32 0, !dbg !6777
  %36 = load i64, ptr %coerce.dive26, align 8, !dbg !6777
  %call27 = call i32 @pud_large(i64 %36) #10, !dbg !6777
  %tobool28 = icmp ne i32 %call27, 0, !dbg !6777
  br i1 %tobool28, label %if.then39, label %lor.lhs.false, !dbg !6778

lor.lhs.false:                                    ; preds = %land.lhs.true
  %37 = load ptr, ptr %pud, align 8, !dbg !6779
  %coerce.dive29 = getelementptr inbounds %struct.pud_t, ptr %37, i32 0, i32 0, !dbg !6780
  %38 = load i64, ptr %coerce.dive29, align 8, !dbg !6780
  %call30 = call i32 @pud_present(i64 %38) #10, !dbg !6780
  %tobool31 = icmp ne i32 %call30, 0, !dbg !6780
  br i1 %tobool31, label %lor.lhs.false32, label %if.then39, !dbg !6781

lor.lhs.false32:                                  ; preds = %lor.lhs.false, %if.end24
  %39 = load ptr, ptr %walk.addr, align 8, !dbg !6782
  %action33 = getelementptr inbounds %struct.mm_walk, ptr %39, i32 0, i32 4, !dbg !6783
  %40 = load i32, ptr %action33, align 8, !dbg !6783
  %cmp34 = icmp eq i32 %40, 1, !dbg !6784
  br i1 %cmp34, label %if.then39, label %lor.lhs.false35, !dbg !6785

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %41 = load ptr, ptr %ops, align 8, !dbg !6786
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %41, i32 0, i32 3, !dbg !6787
  %42 = load ptr, ptr %pmd_entry, align 8, !dbg !6787
  %tobool36 = icmp ne ptr %42, null, !dbg !6786
  br i1 %tobool36, label %if.end40, label %lor.lhs.false37, !dbg !6788

lor.lhs.false37:                                  ; preds = %lor.lhs.false35
  %43 = load ptr, ptr %ops, align 8, !dbg !6789
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %43, i32 0, i32 4, !dbg !6790
  %44 = load ptr, ptr %pte_entry, align 8, !dbg !6790
  %tobool38 = icmp ne ptr %44, null, !dbg !6789
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !6791

if.then39:                                        ; preds = %lor.lhs.false37, %lor.lhs.false32, %lor.lhs.false, %land.lhs.true
  br label %do.cond55, !dbg !6792

if.end40:                                         ; preds = %lor.lhs.false37, %lor.lhs.false35
  %45 = load ptr, ptr %walk.addr, align 8, !dbg !6793
  %vma41 = getelementptr inbounds %struct.mm_walk, ptr %45, i32 0, i32 3, !dbg !6795
  %46 = load ptr, ptr %vma41, align 8, !dbg !6795
  %tobool42 = icmp ne ptr %46, null, !dbg !6793
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !6796

if.then43:                                        ; preds = %if.end40
  br label %do.body44, !dbg !6797

do.body44:                                        ; preds = %if.then43
  br label %do.cond, !dbg !6798

do.cond:                                          ; preds = %do.body44
  br label %do.end, !dbg !6798

do.end:                                           ; preds = %do.cond
  br label %if.end45, !dbg !6798

if.end45:                                         ; preds = %do.end, %if.end40
  %47 = load ptr, ptr %pud, align 8, !dbg !6800
  %coerce.dive46 = getelementptr inbounds %struct.pud_t, ptr %47, i32 0, i32 0, !dbg !6802
  %48 = load i64, ptr %coerce.dive46, align 8, !dbg !6802
  %call47 = call i32 @pud_none(i64 %48) #10, !dbg !6802
  %tobool48 = icmp ne i32 %call47, 0, !dbg !6802
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !6803

if.then49:                                        ; preds = %if.end45
  br label %again, !dbg !6804

if.end50:                                         ; preds = %if.end45
  %49 = load ptr, ptr %pud, align 8, !dbg !6805
  %50 = load i64, ptr %addr.addr, align 8, !dbg !6807
  %51 = load i64, ptr %next, align 8, !dbg !6808
  %52 = load ptr, ptr %walk.addr, align 8, !dbg !6809
  %call51 = call i32 @walk_pmd_range(ptr noundef %49, i64 noundef %50, i64 noundef %51, ptr noundef %52) #10, !dbg !6810
  store i32 %call51, ptr %err, align 4, !dbg !6811
  %53 = load i32, ptr %err, align 4, !dbg !6812
  %tobool52 = icmp ne i32 %53, 0, !dbg !6812
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !6814

if.then53:                                        ; preds = %if.end50
  br label %do.end57, !dbg !6815

if.end54:                                         ; preds = %if.end50
  br label %do.cond55, !dbg !6816

do.cond55:                                        ; preds = %if.end54, %if.then39, %if.end11
  %54 = load ptr, ptr %pud, align 8, !dbg !6817
  %incdec.ptr = getelementptr %struct.pud_t, ptr %54, i32 1, !dbg !6817
  store ptr %incdec.ptr, ptr %pud, align 8, !dbg !6817
  %55 = load i64, ptr %next, align 8, !dbg !6818
  store i64 %55, ptr %addr.addr, align 8, !dbg !6819
  %56 = load i64, ptr %addr.addr, align 8, !dbg !6820
  %57 = load i64, ptr %end.addr, align 8, !dbg !6821
  %cmp56 = icmp ne i64 %56, %57, !dbg !6822
  br i1 %cmp56, label %do.body, label %do.end57, !dbg !6816, !llvm.loop !6823

do.end57:                                         ; preds = %do.cond55, %if.then53, %if.then19, %if.then10
  %58 = load i32, ptr %err, align 4, !dbg !6825
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #9, !dbg !6826
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !6826
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !6826
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !6826
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #9, !dbg !6826
  ret i32 %58, !dbg !6827
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 align 16 !dbg !6828 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6832, metadata !DIExpression()), !dbg !6833
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6834
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6834
  %call = call i64 @native_pgd_val(i64 %0) #10, !dbg !6834
  %and = and i64 %call, 4503599627366400, !dbg !6834
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6834
  %add = add i64 %and, %1, !dbg !6834
  %2 = inttoptr i64 %add to ptr, !dbg !6834
  %3 = ptrtoint ptr %2 to i64, !dbg !6835
  ret i64 %3, !dbg !6836
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !6837 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6841, metadata !DIExpression()), !dbg !6842
  %0 = load i64, ptr %address.addr, align 8, !dbg !6843
  %shr = lshr i64 %0, 39, !dbg !6844
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !6845
  %sub = sub i32 %1, 1, !dbg !6846
  %conv = zext i32 %sub to i64, !dbg !6847
  %and = and i64 %shr, %conv, !dbg !6848
  ret i64 %and, !dbg !6849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_none(i64 %p4d.coerce) #3 align 16 !dbg !6850 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6854, metadata !DIExpression()), !dbg !6855
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6856
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6856
  %call = call i64 @native_p4d_val(i64 %0) #10, !dbg !6856
  %and = and i64 %call, -97, !dbg !6857
  %cmp = icmp eq i64 %and, 0, !dbg !6858
  %conv = zext i1 %cmp to i32, !dbg !6858
  ret i32 %conv, !dbg !6859
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_bad(i64 %p4d.coerce) #3 align 16 !dbg !6860 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %ignore_flags = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6862, metadata !DIExpression()), !dbg !6864
  call void @llvm.lifetime.start.p0(i64 8, ptr %ignore_flags) #9, !dbg !6865
  call void @llvm.dbg.declare(metadata ptr %ignore_flags, metadata !6863, metadata !DIExpression()), !dbg !6866
  store i64 103, ptr %ignore_flags, align 8, !dbg !6866
  %0 = load i64, ptr %ignore_flags, align 8, !dbg !6867
  %or = or i64 %0, -9223372036854775808, !dbg !6867
  store i64 %or, ptr %ignore_flags, align 8, !dbg !6867
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6869
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !6869
  %call = call i64 @p4d_flags(i64 %1) #10, !dbg !6869
  %2 = load i64, ptr %ignore_flags, align 8, !dbg !6870
  %not = xor i64 %2, -1, !dbg !6871
  %and = and i64 %call, %not, !dbg !6872
  %cmp = icmp ne i64 %and, 0, !dbg !6873
  %conv = zext i1 %cmp to i32, !dbg !6873
  call void @llvm.lifetime.end.p0(i64 8, ptr %ignore_flags) #9, !dbg !6874
  ret i32 %conv, !dbg !6875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6876 dso_local void @p4d_clear_bad(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !6879 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6883, metadata !DIExpression()), !dbg !6884
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6885
  %0 = load i64, ptr %p4d1, align 8, !dbg !6885
  ret i64 %0, !dbg !6886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_flags(i64 %p4d.coerce) #3 align 16 !dbg !6887 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6889, metadata !DIExpression()), !dbg !6890
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6891
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6891
  %call = call i64 @native_p4d_val(i64 %0) #10, !dbg !6891
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6892
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6892
  %call3 = call i64 @p4d_flags_mask(i64 %1) #10, !dbg !6892
  %and = and i64 %call, %call3, !dbg !6893
  ret i64 %and, !dbg !6894
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_flags_mask(i64 %p4d.coerce) #3 align 16 !dbg !6895 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6897, metadata !DIExpression()), !dbg !6898
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6899
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6899
  %call = call i64 @p4d_pfn_mask(i64 %0) #10, !dbg !6899
  %not = xor i64 %call, -1, !dbg !6900
  ret i64 %not, !dbg !6901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #3 align 16 !dbg !6902 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6904, metadata !DIExpression()), !dbg !6905
  ret i64 4503599627366400, !dbg !6906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #3 align 16 !dbg !6907 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !6911, metadata !DIExpression()), !dbg !6913
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6912, metadata !DIExpression()), !dbg !6914
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !6915
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !6916
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6916
  %call = call ptr @p4d_pgtable(i64 %1) #10, !dbg !6916
  %2 = load i64, ptr %address.addr, align 8, !dbg !6917
  %call1 = call i64 @pud_index(i64 noundef %2) #10, !dbg !6918
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !6919
  ret ptr %add.ptr, !dbg !6920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_none(i64 %pud.coerce) #3 align 16 !dbg !6921 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6925, metadata !DIExpression()), !dbg !6926
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6927
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6927
  %call = call i64 @native_pud_val(i64 %0) #10, !dbg !6927
  %and = and i64 %call, -97, !dbg !6928
  %cmp = icmp eq i64 %and, 0, !dbg !6929
  %conv = zext i1 %cmp to i32, !dbg !6929
  ret i32 %conv, !dbg !6930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_large(i64 %pud.coerce) #3 align 16 !dbg !6931 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6933, metadata !DIExpression()), !dbg !6934
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6935
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6935
  %call = call i64 @native_pud_val(i64 %0) #10, !dbg !6935
  %and = and i64 %call, 129, !dbg !6936
  %cmp = icmp eq i64 %and, 129, !dbg !6937
  %conv = zext i1 %cmp to i32, !dbg !6937
  ret i32 %conv, !dbg !6938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_present(i64 %pud.coerce) #3 align 16 !dbg !6939 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6941, metadata !DIExpression()), !dbg !6942
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6943
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6943
  %call = call i64 @pud_flags(i64 %0) #10, !dbg !6943
  %and = and i64 %call, 1, !dbg !6944
  %conv = trunc i64 %and to i32, !dbg !6943
  ret i32 %conv, !dbg !6945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_pmd_range(ptr noundef %pud, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !6946 {
entry:
  %pud.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %next = alloca i64, align 8
  %ops = alloca ptr, align 8
  %err = alloca i32, align 4
  %depth = alloca i32, align 4
  %__boundary = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !6948, metadata !DIExpression()), !dbg !6961
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6949, metadata !DIExpression()), !dbg !6962
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6950, metadata !DIExpression()), !dbg !6963
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6951, metadata !DIExpression()), !dbg !6964
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #9, !dbg !6965
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6952, metadata !DIExpression()), !dbg !6966
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6953, metadata !DIExpression()), !dbg !6968
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !6969
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6954, metadata !DIExpression()), !dbg !6970
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !6971
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 0, !dbg !6972
  %1 = load ptr, ptr %ops1, align 8, !dbg !6972
  store ptr %1, ptr %ops, align 8, !dbg !6970
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !6973
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6955, metadata !DIExpression()), !dbg !6974
  store i32 0, ptr %err, align 4, !dbg !6974
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #9, !dbg !6975
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !6956, metadata !DIExpression()), !dbg !6976
  %call = call i32 @real_depth(i32 noundef 3) #10, !dbg !6977
  store i32 %call, ptr %depth, align 4, !dbg !6976
  %2 = load ptr, ptr %pud.addr, align 8, !dbg !6978
  %3 = load i64, ptr %addr.addr, align 8, !dbg !6979
  %call2 = call ptr @pmd_offset(ptr noundef %2, i64 noundef %3) #10, !dbg !6980
  store ptr %call2, ptr %pmd, align 8, !dbg !6981
  br label %do.body, !dbg !6982

do.body:                                          ; preds = %do.cond52, %entry
  br label %again, !dbg !6983

again:                                            ; preds = %if.then50, %if.then23, %do.body
  call void @llvm.dbg.label(metadata !6957), !dbg !6984
  call void @llvm.lifetime.start.p0(i64 8, ptr %__boundary) #9, !dbg !6985
  call void @llvm.dbg.declare(metadata ptr %__boundary, metadata !6959, metadata !DIExpression()), !dbg !6985
  %4 = load i64, ptr %addr.addr, align 8, !dbg !6985
  %add = add i64 %4, 2097152, !dbg !6985
  %and = and i64 %add, -2097152, !dbg !6985
  store i64 %and, ptr %__boundary, align 8, !dbg !6985
  %5 = load i64, ptr %__boundary, align 8, !dbg !6985
  %sub = sub i64 %5, 1, !dbg !6985
  %6 = load i64, ptr %end.addr, align 8, !dbg !6985
  %sub3 = sub i64 %6, 1, !dbg !6985
  %cmp = icmp ult i64 %sub, %sub3, !dbg !6985
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6985

cond.true:                                        ; preds = %again
  %7 = load i64, ptr %__boundary, align 8, !dbg !6985
  br label %cond.end, !dbg !6985

cond.false:                                       ; preds = %again
  %8 = load i64, ptr %end.addr, align 8, !dbg !6985
  br label %cond.end, !dbg !6985

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !6985
  store i64 %cond, ptr %tmp, align 8, !dbg !6985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__boundary) #9, !dbg !6986
  %9 = load i64, ptr %tmp, align 8, !dbg !6985
  store i64 %9, ptr %next, align 8, !dbg !6987
  %10 = load ptr, ptr %pmd, align 8, !dbg !6988
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %10, i32 0, i32 0, !dbg !6990
  %11 = load i64, ptr %coerce.dive, align 8, !dbg !6990
  %call4 = call i32 @pmd_none(i64 %11) #10, !dbg !6990
  %tobool = icmp ne i32 %call4, 0, !dbg !6990
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6991

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %ops, align 8, !dbg !6992
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %12, i32 0, i32 5, !dbg !6995
  %13 = load ptr, ptr %pte_hole, align 8, !dbg !6995
  %tobool5 = icmp ne ptr %13, null, !dbg !6992
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6996

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %ops, align 8, !dbg !6997
  %pte_hole7 = getelementptr inbounds %struct.mm_walk_ops, ptr %14, i32 0, i32 5, !dbg !6998
  %15 = load ptr, ptr %pte_hole7, align 8, !dbg !6998
  %16 = load i64, ptr %addr.addr, align 8, !dbg !6999
  %17 = load i64, ptr %next, align 8, !dbg !7000
  %18 = load i32, ptr %depth, align 4, !dbg !7001
  %19 = load ptr, ptr %walk.addr, align 8, !dbg !7002
  %call8 = call i32 %15(i64 noundef %16, i64 noundef %17, i32 noundef %18, ptr noundef %19) #10, !dbg !6997
  store i32 %call8, ptr %err, align 4, !dbg !7003
  br label %if.end, !dbg !7004

if.end:                                           ; preds = %if.then6, %if.then
  %20 = load i32, ptr %err, align 4, !dbg !7005
  %tobool9 = icmp ne i32 %20, 0, !dbg !7005
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !7007

if.then10:                                        ; preds = %if.end
  br label %do.end54, !dbg !7008

if.end11:                                         ; preds = %if.end
  br label %do.cond52, !dbg !7009

if.end12:                                         ; preds = %cond.end
  %21 = load ptr, ptr %walk.addr, align 8, !dbg !7010
  %action = getelementptr inbounds %struct.mm_walk, ptr %21, i32 0, i32 4, !dbg !7011
  store i32 0, ptr %action, align 8, !dbg !7012
  %22 = load ptr, ptr %ops, align 8, !dbg !7013
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %22, i32 0, i32 3, !dbg !7015
  %23 = load ptr, ptr %pmd_entry, align 8, !dbg !7015
  %tobool13 = icmp ne ptr %23, null, !dbg !7013
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !7016

if.then14:                                        ; preds = %if.end12
  %24 = load ptr, ptr %ops, align 8, !dbg !7017
  %pmd_entry15 = getelementptr inbounds %struct.mm_walk_ops, ptr %24, i32 0, i32 3, !dbg !7018
  %25 = load ptr, ptr %pmd_entry15, align 8, !dbg !7018
  %26 = load ptr, ptr %pmd, align 8, !dbg !7019
  %27 = load i64, ptr %addr.addr, align 8, !dbg !7020
  %28 = load i64, ptr %next, align 8, !dbg !7021
  %29 = load ptr, ptr %walk.addr, align 8, !dbg !7022
  %call16 = call i32 %25(ptr noundef %26, i64 noundef %27, i64 noundef %28, ptr noundef %29) #10, !dbg !7017
  store i32 %call16, ptr %err, align 4, !dbg !7023
  br label %if.end17, !dbg !7024

if.end17:                                         ; preds = %if.then14, %if.end12
  %30 = load i32, ptr %err, align 4, !dbg !7025
  %tobool18 = icmp ne i32 %30, 0, !dbg !7025
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !7027

if.then19:                                        ; preds = %if.end17
  br label %do.end54, !dbg !7028

if.end20:                                         ; preds = %if.end17
  %31 = load ptr, ptr %walk.addr, align 8, !dbg !7029
  %action21 = getelementptr inbounds %struct.mm_walk, ptr %31, i32 0, i32 4, !dbg !7031
  %32 = load i32, ptr %action21, align 8, !dbg !7031
  %cmp22 = icmp eq i32 %32, 2, !dbg !7032
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !7033

if.then23:                                        ; preds = %if.end20
  br label %again, !dbg !7034

if.end24:                                         ; preds = %if.end20
  %33 = load ptr, ptr %walk.addr, align 8, !dbg !7035
  %vma = getelementptr inbounds %struct.mm_walk, ptr %33, i32 0, i32 3, !dbg !7037
  %34 = load ptr, ptr %vma, align 8, !dbg !7037
  %tobool25 = icmp ne ptr %34, null, !dbg !7035
  br i1 %tobool25, label %lor.lhs.false32, label %land.lhs.true, !dbg !7038

land.lhs.true:                                    ; preds = %if.end24
  %35 = load ptr, ptr %pmd, align 8, !dbg !7039
  %coerce.dive26 = getelementptr inbounds %struct.pmd_t, ptr %35, i32 0, i32 0, !dbg !7040
  %36 = load i64, ptr %coerce.dive26, align 8, !dbg !7040
  %call27 = call i32 @pmd_large(i64 %36) #10, !dbg !7040
  %tobool28 = icmp ne i32 %call27, 0, !dbg !7040
  br i1 %tobool28, label %if.then37, label %lor.lhs.false, !dbg !7041

lor.lhs.false:                                    ; preds = %land.lhs.true
  %37 = load ptr, ptr %pmd, align 8, !dbg !7042
  %coerce.dive29 = getelementptr inbounds %struct.pmd_t, ptr %37, i32 0, i32 0, !dbg !7043
  %38 = load i64, ptr %coerce.dive29, align 8, !dbg !7043
  %call30 = call i32 @pmd_present(i64 %38) #10, !dbg !7043
  %tobool31 = icmp ne i32 %call30, 0, !dbg !7043
  br i1 %tobool31, label %lor.lhs.false32, label %if.then37, !dbg !7044

lor.lhs.false32:                                  ; preds = %lor.lhs.false, %if.end24
  %39 = load ptr, ptr %walk.addr, align 8, !dbg !7045
  %action33 = getelementptr inbounds %struct.mm_walk, ptr %39, i32 0, i32 4, !dbg !7046
  %40 = load i32, ptr %action33, align 8, !dbg !7046
  %cmp34 = icmp eq i32 %40, 1, !dbg !7047
  br i1 %cmp34, label %if.then37, label %lor.lhs.false35, !dbg !7048

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %41 = load ptr, ptr %ops, align 8, !dbg !7049
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %41, i32 0, i32 4, !dbg !7050
  %42 = load ptr, ptr %pte_entry, align 8, !dbg !7050
  %tobool36 = icmp ne ptr %42, null, !dbg !7051
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !7052

if.then37:                                        ; preds = %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false, %land.lhs.true
  br label %do.cond52, !dbg !7053

if.end38:                                         ; preds = %lor.lhs.false35
  %43 = load ptr, ptr %walk.addr, align 8, !dbg !7054
  %vma39 = getelementptr inbounds %struct.mm_walk, ptr %43, i32 0, i32 3, !dbg !7056
  %44 = load ptr, ptr %vma39, align 8, !dbg !7056
  %tobool40 = icmp ne ptr %44, null, !dbg !7054
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !7057

if.then41:                                        ; preds = %if.end38
  br label %do.body42, !dbg !7058

do.body42:                                        ; preds = %if.then41
  br label %do.cond, !dbg !7059

do.cond:                                          ; preds = %do.body42
  br label %do.end, !dbg !7059

do.end:                                           ; preds = %do.cond
  br label %if.end43, !dbg !7059

if.end43:                                         ; preds = %do.end, %if.end38
  %45 = load ptr, ptr %pmd, align 8, !dbg !7061
  %46 = load i64, ptr %addr.addr, align 8, !dbg !7063
  %47 = load i64, ptr %next, align 8, !dbg !7064
  %48 = load ptr, ptr %walk.addr, align 8, !dbg !7065
  %call44 = call i32 @walk_pte_range(ptr noundef %45, i64 noundef %46, i64 noundef %47, ptr noundef %48) #10, !dbg !7066
  store i32 %call44, ptr %err, align 4, !dbg !7067
  %49 = load i32, ptr %err, align 4, !dbg !7068
  %tobool45 = icmp ne i32 %49, 0, !dbg !7068
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7070

if.then46:                                        ; preds = %if.end43
  br label %do.end54, !dbg !7071

if.end47:                                         ; preds = %if.end43
  %50 = load ptr, ptr %walk.addr, align 8, !dbg !7072
  %action48 = getelementptr inbounds %struct.mm_walk, ptr %50, i32 0, i32 4, !dbg !7074
  %51 = load i32, ptr %action48, align 8, !dbg !7074
  %cmp49 = icmp eq i32 %51, 2, !dbg !7075
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !7076

if.then50:                                        ; preds = %if.end47
  br label %again, !dbg !7077

if.end51:                                         ; preds = %if.end47
  br label %do.cond52, !dbg !7078

do.cond52:                                        ; preds = %if.end51, %if.then37, %if.end11
  %52 = load ptr, ptr %pmd, align 8, !dbg !7079
  %incdec.ptr = getelementptr %struct.pmd_t, ptr %52, i32 1, !dbg !7079
  store ptr %incdec.ptr, ptr %pmd, align 8, !dbg !7079
  %53 = load i64, ptr %next, align 8, !dbg !7080
  store i64 %53, ptr %addr.addr, align 8, !dbg !7081
  %54 = load i64, ptr %addr.addr, align 8, !dbg !7082
  %55 = load i64, ptr %end.addr, align 8, !dbg !7083
  %cmp53 = icmp ne i64 %54, %55, !dbg !7084
  br i1 %cmp53, label %do.body, label %do.end54, !dbg !7078, !llvm.loop !7085

do.end54:                                         ; preds = %do.cond52, %if.then46, %if.then19, %if.then10
  %56 = load i32, ptr %err, align 4, !dbg !7087
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #9, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #9, !dbg !7088
  ret i32 %56, !dbg !7089
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #3 align 16 !dbg !7090 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7094, metadata !DIExpression()), !dbg !7095
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7096
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7096
  %call = call i64 @native_p4d_val(i64 %0) #10, !dbg !7096
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7096
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7096
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #10, !dbg !7096
  %and = and i64 %call, %call3, !dbg !7096
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7096
  %add = add i64 %and, %2, !dbg !7096
  %3 = inttoptr i64 %add to ptr, !dbg !7096
  ret ptr %3, !dbg !7097
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !7098 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7100, metadata !DIExpression()), !dbg !7101
  %0 = load i64, ptr %address.addr, align 8, !dbg !7102
  %shr = lshr i64 %0, 30, !dbg !7103
  %and = and i64 %shr, 511, !dbg !7104
  ret i64 %and, !dbg !7105
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !7106 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7110, metadata !DIExpression()), !dbg !7111
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7112
  %0 = load i64, ptr %pud1, align 8, !dbg !7112
  ret i64 %0, !dbg !7113
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags(i64 %pud.coerce) #3 align 16 !dbg !7114 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7116, metadata !DIExpression()), !dbg !7117
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7118
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7118
  %call = call i64 @native_pud_val(i64 %0) #10, !dbg !7118
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7119
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7119
  %call3 = call i64 @pud_flags_mask(i64 %1) #10, !dbg !7119
  %and = and i64 %call, %call3, !dbg !7120
  ret i64 %and, !dbg !7121
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags_mask(i64 %pud.coerce) #3 align 16 !dbg !7122 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7124, metadata !DIExpression()), !dbg !7125
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7126
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7126
  %call = call i64 @pud_pfn_mask(i64 %0) #10, !dbg !7126
  %not = xor i64 %call, -1, !dbg !7127
  ret i64 %not, !dbg !7128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 align 16 !dbg !7129 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7131, metadata !DIExpression()), !dbg !7132
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7133
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7133
  %call = call i64 @native_pud_val(i64 %0) #10, !dbg !7133
  %and = and i64 %call, 128, !dbg !7135
  %tobool = icmp ne i64 %and, 0, !dbg !7135
  br i1 %tobool, label %if.then, label %if.else, !dbg !7136

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !7137
  br label %return, !dbg !7137

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7138
  br label %return, !dbg !7138

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7139
  ret i64 %1, !dbg !7139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 align 16 !dbg !7140 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !7144, metadata !DIExpression()), !dbg !7146
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7145, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !7148
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !7149
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7149
  %call = call ptr @pud_pgtable(i64 %1) #10, !dbg !7149
  %2 = load i64, ptr %address.addr, align 8, !dbg !7150
  %call1 = call i64 @pmd_index(i64 noundef %2) #10, !dbg !7151
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !7152
  ret ptr %add.ptr, !dbg !7153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_none(i64 %pmd.coerce) #3 align 16 !dbg !7154 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7158, metadata !DIExpression()), !dbg !7160
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !7161
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7159, metadata !DIExpression()), !dbg !7162
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7163
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7163
  %call = call i64 @native_pmd_val(i64 %0) #10, !dbg !7163
  store i64 %call, ptr %val, align 8, !dbg !7162
  %1 = load i64, ptr %val, align 8, !dbg !7164
  %and = and i64 %1, -97, !dbg !7165
  %cmp = icmp eq i64 %and, 0, !dbg !7166
  %conv = zext i1 %cmp to i32, !dbg !7166
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !7167
  ret i32 %conv, !dbg !7168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_large(i64 %pte.coerce) #3 align 16 !dbg !7169 {
entry:
  %pte = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7171, metadata !DIExpression()), !dbg !7172
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0, !dbg !7173
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7173
  %call = call i64 @pmd_flags(i64 %0) #10, !dbg !7173
  %and = and i64 %call, 128, !dbg !7174
  %conv = trunc i64 %and to i32, !dbg !7173
  ret i32 %conv, !dbg !7175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_present(i64 %pmd.coerce) #3 align 16 !dbg !7176 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7178, metadata !DIExpression()), !dbg !7179
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7180
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7180
  %call = call i64 @pmd_flags(i64 %0) #10, !dbg !7180
  %and = and i64 %call, 385, !dbg !7181
  %conv = trunc i64 %and to i32, !dbg !7180
  ret i32 %conv, !dbg !7182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_pte_range(ptr noundef %pmd, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !7183 {
entry:
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %err = alloca i32, align 4
  %ptl = alloca ptr, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !7185, metadata !DIExpression()), !dbg !7192
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7186, metadata !DIExpression()), !dbg !7193
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7187, metadata !DIExpression()), !dbg !7194
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !7188, metadata !DIExpression()), !dbg !7195
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #9, !dbg !7196
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7189, metadata !DIExpression()), !dbg !7197
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !7198
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7190, metadata !DIExpression()), !dbg !7199
  store i32 0, ptr %err, align 4, !dbg !7199
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl) #9, !dbg !7200
  call void @llvm.dbg.declare(metadata ptr %ptl, metadata !7191, metadata !DIExpression()), !dbg !7201
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !7202
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 5, !dbg !7204
  %1 = load i8, ptr %no_vma, align 4, !dbg !7204, !range !6603, !noundef !652
  %tobool = trunc i8 %1 to i1, !dbg !7204
  br i1 %tobool, label %if.then, label %if.else37, !dbg !7205

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !7206
  %mm = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 1, !dbg !7209
  %3 = load ptr, ptr %mm, align 8, !dbg !7209
  %cmp = icmp eq ptr %3, @init_mm, !dbg !7210
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !7211

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i64, ptr %addr.addr, align 8, !dbg !7212
  %call = call ptr @get_current() #10, !dbg !7213
  %call1 = call i32 @test_ti_thread_flag(ptr noundef %call, i32 noundef 29) #10, !dbg !7213
  %tobool2 = icmp ne i32 %call1, 0, !dbg !7213
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !7213

cond.true:                                        ; preds = %lor.lhs.false
  %call3 = call ptr @get_current() #10, !dbg !7213
  %personality = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 56, !dbg !7213
  %5 = load i32, ptr %personality, align 8, !dbg !7213
  %and = and i32 %5, 134217728, !dbg !7213
  %tobool4 = icmp ne i32 %and, 0, !dbg !7213
  %6 = zext i1 %tobool4 to i64, !dbg !7213
  %cond = select i1 %tobool4, i32 -1073741824, i32 -8192, !dbg !7213
  %conv = zext i32 %cond to i64, !dbg !7213
  br label %cond.end, !dbg !7213

cond.false:                                       ; preds = %lor.lhs.false
  %call5 = call i64 @task_size_max() #10, !dbg !7213
  br label %cond.end, !dbg !7213

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i64 [ %conv, %cond.true ], [ %call5, %cond.false ], !dbg !7213
  %cmp7 = icmp uge i64 %4, %cond6, !dbg !7214
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !7215

if.then9:                                         ; preds = %cond.end, %if.then
  %7 = load ptr, ptr %pmd.addr, align 8, !dbg !7216
  %8 = load i64, ptr %addr.addr, align 8, !dbg !7217
  %call10 = call ptr @pte_offset_kernel(ptr noundef %7, i64 noundef %8) #10, !dbg !7218
  store ptr %call10, ptr %pte, align 8, !dbg !7219
  br label %if.end, !dbg !7220

if.else:                                          ; preds = %cond.end
  %9 = load ptr, ptr %pmd.addr, align 8, !dbg !7221
  %10 = load i64, ptr %addr.addr, align 8, !dbg !7222
  %call11 = call ptr @pte_offset_map(ptr noundef %9, i64 noundef %10) #10, !dbg !7223
  store ptr %call11, ptr %pte, align 8, !dbg !7224
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %11 = load ptr, ptr %pte, align 8, !dbg !7225
  %tobool12 = icmp ne ptr %11, null, !dbg !7225
  br i1 %tobool12, label %if.then13, label %if.end36, !dbg !7227

if.then13:                                        ; preds = %if.end
  %12 = load ptr, ptr %pte, align 8, !dbg !7228
  %13 = load i64, ptr %addr.addr, align 8, !dbg !7230
  %14 = load i64, ptr %end.addr, align 8, !dbg !7231
  %15 = load ptr, ptr %walk.addr, align 8, !dbg !7232
  %call14 = call i32 @walk_pte_range_inner(ptr noundef %12, i64 noundef %13, i64 noundef %14, ptr noundef %15) #10, !dbg !7233
  store i32 %call14, ptr %err, align 4, !dbg !7234
  %16 = load ptr, ptr %walk.addr, align 8, !dbg !7235
  %mm15 = getelementptr inbounds %struct.mm_walk, ptr %16, i32 0, i32 1, !dbg !7237
  %17 = load ptr, ptr %mm15, align 8, !dbg !7237
  %cmp16 = icmp ne ptr %17, @init_mm, !dbg !7238
  br i1 %cmp16, label %land.lhs.true, label %if.end35, !dbg !7239

land.lhs.true:                                    ; preds = %if.then13
  %18 = load i64, ptr %addr.addr, align 8, !dbg !7240
  %call18 = call ptr @get_current() #10, !dbg !7241
  %call19 = call i32 @test_ti_thread_flag(ptr noundef %call18, i32 noundef 29) #10, !dbg !7241
  %tobool20 = icmp ne i32 %call19, 0, !dbg !7241
  br i1 %tobool20, label %cond.true21, label %cond.false28, !dbg !7241

cond.true21:                                      ; preds = %land.lhs.true
  %call22 = call ptr @get_current() #10, !dbg !7241
  %personality23 = getelementptr inbounds %struct.task_struct, ptr %call22, i32 0, i32 56, !dbg !7241
  %19 = load i32, ptr %personality23, align 8, !dbg !7241
  %and24 = and i32 %19, 134217728, !dbg !7241
  %tobool25 = icmp ne i32 %and24, 0, !dbg !7241
  %20 = zext i1 %tobool25 to i64, !dbg !7241
  %cond26 = select i1 %tobool25, i32 -1073741824, i32 -8192, !dbg !7241
  %conv27 = zext i32 %cond26 to i64, !dbg !7241
  br label %cond.end30, !dbg !7241

cond.false28:                                     ; preds = %land.lhs.true
  %call29 = call i64 @task_size_max() #10, !dbg !7241
  br label %cond.end30, !dbg !7241

cond.end30:                                       ; preds = %cond.false28, %cond.true21
  %cond31 = phi i64 [ %conv27, %cond.true21 ], [ %call29, %cond.false28 ], !dbg !7241
  %cmp32 = icmp ult i64 %18, %cond31, !dbg !7242
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !7243

if.then34:                                        ; preds = %cond.end30
  %21 = load ptr, ptr %pte, align 8, !dbg !7244
  call void @pte_unmap(ptr noundef %21) #10, !dbg !7245
  br label %if.end35, !dbg !7245

if.end35:                                         ; preds = %if.then34, %cond.end30, %if.then13
  br label %if.end36, !dbg !7246

if.end36:                                         ; preds = %if.end35, %if.end
  br label %if.end44, !dbg !7247

if.else37:                                        ; preds = %entry
  %22 = load ptr, ptr %walk.addr, align 8, !dbg !7248
  %mm38 = getelementptr inbounds %struct.mm_walk, ptr %22, i32 0, i32 1, !dbg !7250
  %23 = load ptr, ptr %mm38, align 8, !dbg !7250
  %24 = load ptr, ptr %pmd.addr, align 8, !dbg !7251
  %25 = load i64, ptr %addr.addr, align 8, !dbg !7252
  %call39 = call ptr @pte_offset_map_lock(ptr noundef %23, ptr noundef %24, i64 noundef %25, ptr noundef %ptl) #10, !dbg !7253
  store ptr %call39, ptr %pte, align 8, !dbg !7254
  %26 = load ptr, ptr %pte, align 8, !dbg !7255
  %tobool40 = icmp ne ptr %26, null, !dbg !7255
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !7257

if.then41:                                        ; preds = %if.else37
  %27 = load ptr, ptr %pte, align 8, !dbg !7258
  %28 = load i64, ptr %addr.addr, align 8, !dbg !7260
  %29 = load i64, ptr %end.addr, align 8, !dbg !7261
  %30 = load ptr, ptr %walk.addr, align 8, !dbg !7262
  %call42 = call i32 @walk_pte_range_inner(ptr noundef %27, i64 noundef %28, i64 noundef %29, ptr noundef %30) #10, !dbg !7263
  store i32 %call42, ptr %err, align 4, !dbg !7264
  br label %do.body, !dbg !7265

do.body:                                          ; preds = %if.then41
  %31 = load ptr, ptr %ptl, align 8, !dbg !7266
  call void @spin_unlock(ptr noundef %31) #10, !dbg !7266
  %32 = load ptr, ptr %pte, align 8, !dbg !7266
  call void @pte_unmap(ptr noundef %32) #10, !dbg !7266
  br label %do.cond, !dbg !7266

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7266

do.end:                                           ; preds = %do.cond
  br label %if.end43, !dbg !7268

if.end43:                                         ; preds = %do.end, %if.else37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end36
  %33 = load ptr, ptr %pte, align 8, !dbg !7269
  %tobool45 = icmp ne ptr %33, null, !dbg !7269
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !7271

if.then46:                                        ; preds = %if.end44
  %34 = load ptr, ptr %walk.addr, align 8, !dbg !7272
  %action = getelementptr inbounds %struct.mm_walk, ptr %34, i32 0, i32 4, !dbg !7273
  store i32 2, ptr %action, align 8, !dbg !7274
  br label %if.end47, !dbg !7272

if.end47:                                         ; preds = %if.then46, %if.end44
  %35 = load i32, ptr %err, align 4, !dbg !7275
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl) #9, !dbg !7276
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !7276
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #9, !dbg !7276
  ret i32 %35, !dbg !7277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 align 16 !dbg !7278 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7282, metadata !DIExpression()), !dbg !7283
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7284
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7284
  %call = call i64 @native_pud_val(i64 %0) #10, !dbg !7284
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7284
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7284
  %call3 = call i64 @pud_pfn_mask(i64 %1) #10, !dbg !7284
  %and = and i64 %call, %call3, !dbg !7284
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7284
  %add = add i64 %and, %2, !dbg !7284
  %3 = inttoptr i64 %add to ptr, !dbg !7284
  ret ptr %3, !dbg !7285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !7286 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7288, metadata !DIExpression()), !dbg !7289
  %0 = load i64, ptr %address.addr, align 8, !dbg !7290
  %shr = lshr i64 %0, 21, !dbg !7291
  %and = and i64 %shr, 511, !dbg !7292
  ret i64 %and, !dbg !7293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !7294 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7298, metadata !DIExpression()), !dbg !7299
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7300
  %0 = load i64, ptr %pmd1, align 8, !dbg !7300
  ret i64 %0, !dbg !7301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !7302 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7304, metadata !DIExpression()), !dbg !7305
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7306
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7306
  %call = call i64 @native_pmd_val(i64 %0) #10, !dbg !7306
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7307
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7307
  %call3 = call i64 @pmd_flags_mask(i64 %1) #10, !dbg !7307
  %and = and i64 %call, %call3, !dbg !7308
  ret i64 %and, !dbg !7309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !7310 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7312, metadata !DIExpression()), !dbg !7313
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7314
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7314
  %call = call i64 @pmd_pfn_mask(i64 %0) #10, !dbg !7314
  %not = xor i64 %call, -1, !dbg !7315
  ret i64 %not, !dbg !7316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !7317 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7319, metadata !DIExpression()), !dbg !7320
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7321
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7321
  %call = call i64 @native_pmd_val(i64 %0) #10, !dbg !7321
  %and = and i64 %call, 128, !dbg !7323
  %tobool = icmp ne i64 %and, 0, !dbg !7323
  br i1 %tobool, label %if.then, label %if.else, !dbg !7324

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !7325
  br label %return, !dbg !7325

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7326
  br label %return, !dbg !7326

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7327
  ret i64 %1, !dbg !7327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #3 align 16 !dbg !7328 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !7333, metadata !DIExpression()), !dbg !7335
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !7334, metadata !DIExpression()), !dbg !7336
  %0 = load i32, ptr %flag.addr, align 4, !dbg !7337
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7337
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7337

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !7337
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !7337
  %3 = ptrtoint ptr %flags to i64, !dbg !7337
  %cmp = icmp ne i64 %3, 0, !dbg !7337
  %conv = zext i1 %cmp to i32, !dbg !7337
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7337
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !7337

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !7337
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !7337
  %6 = ptrtoint ptr %flags2 to i64, !dbg !7337
  %cmp3 = icmp ne i64 %6, 0, !dbg !7337
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !7337

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !7337
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !7337
  %8 = load i64, ptr %flags6, align 8, !dbg !7337
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7337
  br i1 %9, label %cond.true, label %cond.false, !dbg !7337

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !7337
  %conv7 = sext i32 %10 to i64, !dbg !7337
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !7337
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !7337
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #10, !dbg !7337
  %conv9 = zext i1 %call to i32, !dbg !7337
  br label %cond.end, !dbg !7337

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !7337
  %conv10 = sext i32 %12 to i64, !dbg !7337
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !7337
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !7337
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #10, !dbg !7337
  %conv13 = zext i1 %call12 to i32, !dbg !7337
  br label %cond.end, !dbg !7337

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !7337
  ret i32 %cond, !dbg !7338
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !7339 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !7350
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7344, metadata !DIExpression()), !dbg !7350
  br label %do.body, !dbg !7350

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !7351
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7346, metadata !DIExpression()), !dbg !7351
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7351
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !7350
  br label %do.cond, !dbg !7351

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7351

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !7352
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7348, metadata !DIExpression()), !dbg !7352
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !7352, !srcloc !7353
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7352
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7352
  %3 = inttoptr i64 %2 to ptr, !dbg !7352
  store ptr %3, ptr %tmp, align 8, !dbg !7352
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !7350
  %4 = load ptr, ptr %tmp, align 8, !dbg !7352
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7350
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7350
  store ptr %5, ptr %tmp1, align 8, !dbg !7350
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !7354
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7350
  ret ptr %6, !dbg !7355
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_size_max() #6 align 16 !dbg !7356 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !7362
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7361, metadata !DIExpression()), !dbg !7363
  %0 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movq $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09movq $3,$0\0A6651:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #9, !dbg !7364, !srcloc !7365
  store i64 %0, ptr %ret, align 8, !dbg !7364
  %1 = load i64, ptr %ret, align 8, !dbg !7366
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !7367
  ret i64 %1, !dbg !7368
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !7369 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !7373, metadata !DIExpression()), !dbg !7375
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7374, metadata !DIExpression()), !dbg !7376
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !7377
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !7378
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7378
  %call = call i64 @pmd_page_vaddr(i64 %1) #10, !dbg !7378
  %2 = inttoptr i64 %call to ptr, !dbg !7379
  %3 = load i64, ptr %address.addr, align 8, !dbg !7380
  %call1 = call i64 @pte_index(i64 noundef %3) #10, !dbg !7381
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !7382
  ret ptr %add.ptr, !dbg !7383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_map(ptr noundef %pmd, i64 noundef %addr) #3 align 16 !dbg !7384 {
entry:
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !7386, metadata !DIExpression()), !dbg !7388
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7387, metadata !DIExpression()), !dbg !7389
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !7390
  %1 = load i64, ptr %addr.addr, align 8, !dbg !7391
  %call = call ptr @__pte_offset_map(ptr noundef %0, i64 noundef %1, ptr noundef null) #10, !dbg !7392
  ret ptr %call, !dbg !7393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @walk_pte_range_inner(ptr noundef %pte, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !7394 {
entry:
  %pte.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !7396, metadata !DIExpression()), !dbg !7402
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7397, metadata !DIExpression()), !dbg !7403
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7398, metadata !DIExpression()), !dbg !7404
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !7399, metadata !DIExpression()), !dbg !7405
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #9, !dbg !7406
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !7400, metadata !DIExpression()), !dbg !7407
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !7408
  %ops1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 0, !dbg !7409
  %1 = load ptr, ptr %ops1, align 8, !dbg !7409
  store ptr %1, ptr %ops, align 8, !dbg !7407
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !7410
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7401, metadata !DIExpression()), !dbg !7411
  store i32 0, ptr %err, align 4, !dbg !7411
  br label %for.cond, !dbg !7412

for.cond:                                         ; preds = %if.end3, %entry
  %2 = load ptr, ptr %ops, align 8, !dbg !7413
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, ptr %2, i32 0, i32 4, !dbg !7417
  %3 = load ptr, ptr %pte_entry, align 8, !dbg !7417
  %4 = load ptr, ptr %pte.addr, align 8, !dbg !7418
  %5 = load i64, ptr %addr.addr, align 8, !dbg !7419
  %6 = load i64, ptr %addr.addr, align 8, !dbg !7420
  %add = add i64 %6, 4096, !dbg !7421
  %7 = load ptr, ptr %walk.addr, align 8, !dbg !7422
  %call = call i32 %3(ptr noundef %4, i64 noundef %5, i64 noundef %add, ptr noundef %7) #10, !dbg !7413
  store i32 %call, ptr %err, align 4, !dbg !7423
  %8 = load i32, ptr %err, align 4, !dbg !7424
  %tobool = icmp ne i32 %8, 0, !dbg !7424
  br i1 %tobool, label %if.then, label %if.end, !dbg !7426

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !7427

if.end:                                           ; preds = %for.cond
  %9 = load i64, ptr %addr.addr, align 8, !dbg !7428
  %10 = load i64, ptr %end.addr, align 8, !dbg !7430
  %sub = sub i64 %10, 4096, !dbg !7431
  %cmp = icmp uge i64 %9, %sub, !dbg !7432
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !7433

if.then2:                                         ; preds = %if.end
  br label %for.end, !dbg !7434

if.end3:                                          ; preds = %if.end
  %11 = load i64, ptr %addr.addr, align 8, !dbg !7435
  %add4 = add i64 %11, 4096, !dbg !7435
  store i64 %add4, ptr %addr.addr, align 8, !dbg !7435
  %12 = load ptr, ptr %pte.addr, align 8, !dbg !7436
  %incdec.ptr = getelementptr %struct.pte_t, ptr %12, i32 1, !dbg !7436
  store ptr %incdec.ptr, ptr %pte.addr, align 8, !dbg !7436
  br label %for.cond, !dbg !7437, !llvm.loop !7438

for.end:                                          ; preds = %if.then2, %if.then
  %13 = load i32, ptr %err, align 4, !dbg !7441
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !7442
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #9, !dbg !7442
  ret i32 %13, !dbg !7443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pte_unmap(ptr noundef %pte) #3 align 16 !dbg !7444 {
entry:
  %pte.addr = alloca ptr, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !7448, metadata !DIExpression()), !dbg !7449
  call void @rcu_read_unlock() #10, !dbg !7450
  ret void, !dbg !7451
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_map_lock(ptr noundef %mm, ptr noundef %pmd, i64 noundef %addr, ptr noundef %ptlp) #3 align 16 !dbg !7452 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptlp.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7457, metadata !DIExpression()), !dbg !7462
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !7458, metadata !DIExpression()), !dbg !7463
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7459, metadata !DIExpression()), !dbg !7464
  store ptr %ptlp, ptr %ptlp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptlp.addr, metadata !7460, metadata !DIExpression()), !dbg !7465
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #9, !dbg !7466
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7461, metadata !DIExpression()), !dbg !7467
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7468
  %1 = load ptr, ptr %pmd.addr, align 8, !dbg !7468
  %2 = load i64, ptr %addr.addr, align 8, !dbg !7468
  %3 = load ptr, ptr %ptlp.addr, align 8, !dbg !7468
  %call = call ptr @__pte_offset_map_lock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #10, !dbg !7468
  store ptr %call, ptr %pte, align 8, !dbg !7468
  %4 = load ptr, ptr %pte, align 8, !dbg !7469
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #9, !dbg !7470
  ret ptr %4, !dbg !7471
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !7472 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7477, metadata !DIExpression()), !dbg !7478
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7479
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7479
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !7479
  ret void, !dbg !7480
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7481 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7484, metadata !DIExpression()), !dbg !7489
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7485, metadata !DIExpression()), !dbg !7490
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !7491
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7486, metadata !DIExpression()), !dbg !7492
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7493
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7494
  %div = udiv i64 %1, 64, !dbg !7494
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7495
  store ptr %add.ptr, ptr %p, align 8, !dbg !7492
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !7496
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7487, metadata !DIExpression()), !dbg !7497
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7498
  %rem = urem i64 %2, 64, !dbg !7498
  %shl = shl i64 1, %rem, !dbg !7498
  store i64 %shl, ptr %mask, align 8, !dbg !7497
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !7499
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7488, metadata !DIExpression()), !dbg !7500
  %3 = load ptr, ptr %p, align 8, !dbg !7501
  %4 = load i64, ptr %3, align 8, !dbg !7502
  store i64 %4, ptr %val, align 8, !dbg !7500
  %5 = load i64, ptr %val, align 8, !dbg !7503
  %6 = load i64, ptr %mask, align 8, !dbg !7504
  %and = and i64 %5, %6, !dbg !7505
  %tobool = icmp ne i64 %and, 0, !dbg !7506
  %lnot = xor i1 %tobool, true, !dbg !7506
  %lnot1 = xor i1 %lnot, true, !dbg !7507
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !7508
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !7508
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !7508
  ret i1 %lnot1, !dbg !7509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7510 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7513, metadata !DIExpression()), !dbg !7515
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7514, metadata !DIExpression()), !dbg !7516
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7517
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7518
  %div = udiv i64 %1, 64, !dbg !7518
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7519
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !7520
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7521
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7522
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !7523
  ret i1 %call, !dbg !7524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7525 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7533, metadata !DIExpression()), !dbg !7535
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7534, metadata !DIExpression()), !dbg !7536
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7537
  %1 = load i64, ptr %size.addr, align 8, !dbg !7538
  %conv = trunc i64 %1 to i32, !dbg !7538
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !7539
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7540
  %3 = load i64, ptr %size.addr, align 8, !dbg !7540
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !7540
  ret void, !dbg !7541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7542 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7547, metadata !DIExpression()), !dbg !7549
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7548, metadata !DIExpression()), !dbg !7550
  ret i1 true, !dbg !7551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7552 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7557, metadata !DIExpression()), !dbg !7560
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7558, metadata !DIExpression()), !dbg !7561
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7559, metadata !DIExpression()), !dbg !7562
  ret void, !dbg !7563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 align 16 !dbg !7564 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7568, metadata !DIExpression()), !dbg !7569
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7570
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7570
  %call = call i64 @native_pmd_val(i64 %0) #10, !dbg !7570
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7570
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7570
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #10, !dbg !7570
  %and = and i64 %call, %call3, !dbg !7570
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7570
  %add = add i64 %and, %2, !dbg !7570
  %3 = inttoptr i64 %add to ptr, !dbg !7570
  %4 = ptrtoint ptr %3 to i64, !dbg !7571
  ret i64 %4, !dbg !7572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #3 align 16 !dbg !7573 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7575, metadata !DIExpression()), !dbg !7576
  %0 = load i64, ptr %address.addr, align 8, !dbg !7577
  %shr = lshr i64 %0, 12, !dbg !7578
  %and = and i64 %shr, 511, !dbg !7579
  ret i64 %and, !dbg !7580
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7581 dso_local ptr @__pte_offset_map(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !7584 {
entry:
  br label %do.body, !dbg !7586

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7587

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #10, !dbg !7589
  br label %do.body1, !dbg !7590

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7591

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7593
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7594 dso_local void @__rcu_read_unlock() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7595 dso_local ptr @__pte_offset_map_lock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7596 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202}
!llvm.ident = !{!5203}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.pagewalk.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/pagewalk\22 -D KBUILD_BASENAME=\22pagewalk\22 -D KBUILD_MODNAME=\22pagewalk\22 -D __KBUILD_MODNAME=kmod_pagewalk -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/pagewalk.ll mm/pagewalk.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !281, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "mm/pagewalk.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a95428b8a66716ab124a59df669492b6")
!2 = !{!3, !12, !108, !115, !123, !139, !144, !151, !157, !164, !169, !177, !184, !190, !199, !204, !209, !215, !220, !226, !238, !244, !251, !257, !262, !267}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !4, line: 9, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!8 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!9 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!10 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!11 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !13, line: 147, baseType: !5, size: 32, elements: !105)
!13 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !13, line: 135, size: 512, elements: !15)
!15 = !{!16, !20, !22, !24, !28, !29, !45, !103, !104}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !14, file: !13, line: 136, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 137, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !14, file: !13, line: 138, baseType: !23, size: 32, offset: 128)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !14, file: !13, line: 139, baseType: !25, size: 16, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !26, line: 24, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !13, line: 150, baseType: !12, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !14, file: !13, line: 151, baseType: !30, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !13, line: 64, baseType: !32)
!32 = !DISubroutineType(types: !33)
!33 = !{!23, !34, !23, !21, !35, !41}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !38, line: 72, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !38, line: 16, baseType: !40)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !26, line: 52, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !38, line: 88, baseType: !44)
!44 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !14, file: !13, line: 152, baseType: !46, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !13, line: 117, size: 256, elements: !48)
!48 = !{!49, !54}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !13, line: 118, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !26, line: 174, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 172, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !51, file: !26, line: 173, baseType: !23, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !47, file: !13, line: 119, baseType: !55, size: 192, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !56, line: 41, baseType: !57)
!56 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !56, line: 37, size: 192, elements: !58)
!58 = !{!59, !97}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !57, file: !56, line: 38, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 29, baseType: !62)
!61 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !61, line: 17, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !61, line: 18, baseType: !65, size: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 18, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !65, file: !61, line: 19, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !69, line: 14, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !68, file: !69, line: 15, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !73, line: 44, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !73, line: 14, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 15, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 15, size: 32, elements: !78)
!78 = !{!79, !80, !90}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !73, line: 16, baseType: !50, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 24, baseType: !81, size: 16)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 24, size: 16, elements: !82)
!82 = !{!83, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !81, file: !73, line: 25, baseType: !84, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 17, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !87, line: 21, baseType: !88)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !81, file: !73, line: 26, baseType: !84, size: 8, offset: 8)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 28, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 28, size: 32, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !91, file: !73, line: 29, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !85, line: 19, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !87, line: 24, baseType: !27)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !91, file: !73, line: 30, baseType: !94, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !57, file: !56, line: 39, baseType: !98, size: 128, offset: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !26, line: 190, size: 128, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !26, line: 191, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !26, line: 191, baseType: !101, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !14, file: !13, line: 153, baseType: !21, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !14, file: !13, line: 154, baseType: !21, size: 64, offset: 448)
!105 = !{!106, !107}
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!107 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !109, line: 312, baseType: !5, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!112 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!113 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!114 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !116, line: 68, baseType: !5, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!117 = !{!118, !119, !120, !121, !122}
!118 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!119 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!120 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!121 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!122 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !124, line: 1325, baseType: !5, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!126 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!127 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!128 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!129 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!130 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!131 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!132 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!133 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!134 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!135 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!136 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!137 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!138 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !140, line: 32, baseType: !5, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!141 = !{!142, !143}
!142 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!143 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !145, line: 15, baseType: !5, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!148 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!149 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !152, line: 45, baseType: !5, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!155 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!156 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !158, line: 487, baseType: !5, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!161 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!162 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!163 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !165, line: 65, baseType: !5, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!168 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !170, line: 620, baseType: !5, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!171 = !{!172, !173, !174, !175, !176}
!172 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!173 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!174 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!175 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!176 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !170, line: 597, baseType: !23, size: 32, elements: !178)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!180 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!181 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!182 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!183 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !185, line: 26, baseType: !5, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!188 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!189 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !158, line: 547, baseType: !5, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198}
!192 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!193 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!194 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!195 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!196 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!197 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!198 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !158, line: 564, baseType: !5, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!202 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !158, line: 577, baseType: !5, size: 32, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!207 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !158, line: 503, baseType: !5, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!212 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!213 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !216, line: 2052, baseType: !5, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!217 = !{!218, !219}
!218 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!219 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !221, line: 54, baseType: !5, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "USRQUOTA", value: 0)
!224 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!225 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !227, line: 44, baseType: !5, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237}
!229 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!230 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!231 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!232 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!233 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!234 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!235 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!236 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!237 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !239, line: 16, baseType: !5, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "TT_NONE", value: 0)
!242 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!243 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !245, line: 51, baseType: !5, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!246 = !{!247, !248, !249, !250}
!247 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!248 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!249 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!250 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_walk_action", file: !252, line: 86, baseType: !5, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/pagewalk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0832a2ba9a444486d82c67d2c8dc1bb1")
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "ACTION_SUBTREE", value: 0)
!255 = !DIEnumerator(name: "ACTION_CONTINUE", value: 1)
!256 = !DIEnumerator(name: "ACTION_AGAIN", value: 2)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_walk_lock", file: !252, line: 10, baseType: !5, size: 32, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIEnumerator(name: "PGWALK_RDLOCK", value: 0)
!260 = !DIEnumerator(name: "PGWALK_WRLOCK", value: 1)
!261 = !DIEnumerator(name: "PGWALK_WRLOCK_VERIFY", value: 2)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 10, baseType: !5, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "false", value: 0)
!266 = !DIEnumerator(name: "true", value: 1)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 11, baseType: !5, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/uapi/linux/personality.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c91ab3d8e54e6839beaeedd575ef767")
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!270 = !DIEnumerator(name: "UNAME26", value: 131072)
!271 = !DIEnumerator(name: "ADDR_NO_RANDOMIZE", value: 262144)
!272 = !DIEnumerator(name: "FDPIC_FUNCPTRS", value: 524288)
!273 = !DIEnumerator(name: "MMAP_PAGE_ZERO", value: 1048576)
!274 = !DIEnumerator(name: "ADDR_COMPAT_LAYOUT", value: 2097152)
!275 = !DIEnumerator(name: "READ_IMPLIES_EXEC", value: 4194304)
!276 = !DIEnumerator(name: "ADDR_LIMIT_32BIT", value: 8388608)
!277 = !DIEnumerator(name: "SHORT_INODE", value: 16777216)
!278 = !DIEnumerator(name: "WHOLE_SECONDS", value: 33554432)
!279 = !DIEnumerator(name: "STICKY_TIMEOUTS", value: 67108864)
!280 = !DIEnumerator(name: "ADDR_LIMIT_3GB", value: 134217728)
!281 = !{!282, !40, !23, !284, !17, !285, !287, !288, !292, !21, !299, !305, !311, !321, !322, !324, !325, !1811}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !286, line: 14, baseType: !40)
!286 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!287 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !26, line: 159, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !85, line: 23, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !87, line: 31, baseType: !291)
!291 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !294, line: 346, baseType: !295)
!294 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 346, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !295, file: !294, line: 346, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !286, line: 17, baseType: !40)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !294, line: 372, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 372, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !301, file: !294, line: 372, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !286, line: 16, baseType: !40)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !286, line: 22, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 22, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !307, file: !286, line: 22, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !286, line: 15, baseType: !40)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !313, line: 56, size: 192, elements: !314)
!313 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!314 = !{!315, !316, !317, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !313, line: 57, baseType: !40, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !312, file: !313, line: 58, baseType: !40, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !312, file: !313, line: 59, baseType: !318, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 21, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !87, line: 27, baseType: !5)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !312, file: !313, line: 61, baseType: !318, size: 32, offset: 160)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 42, baseType: !40)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !327, line: 746, size: 58368, elements: !328)
!327 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!328 = !{!329, !330, !331, !332, !338, !339, !340, !341, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !421, !432, !533, !537, !540, !571, !572, !573, !574, !585, !587, !588, !589, !590, !591, !592, !603, !604, !607, !608, !609, !610, !611, !612, !613, !614, !621, !622, !629, !630, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !4045, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4093, !4099, !4100, !4101, !4102, !4103, !4105, !4108, !4115, !4120, !4123, !4126, !4129, !4421, !4619, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4657, !4658, !4659, !4668, !4676, !4677, !4678, !4679, !4680, !4685, !4686, !4687, !4690, !4691, !4694, !4697, !4702, !4709, !4712, !4713, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4812, !4815, !4816, !4819, !4820, !4821, !4824, !4825, !4826, !4827, !4828, !4829, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4861, !4862, !4868, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4950, !4952, !4953, !4954, !4955, !4956, !4957, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4974, !4975, !4976}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !326, file: !327, line: 752, baseType: !312, size: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !326, file: !327, line: 754, baseType: !5, size: 32, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !326, file: !327, line: 767, baseType: !21, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !326, file: !327, line: 768, baseType: !333, size: 32, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !334, line: 113, baseType: !335)
!334 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !334, line: 111, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !335, file: !334, line: 112, baseType: !50, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !327, line: 770, baseType: !5, size: 32, offset: 352)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !326, file: !327, line: 771, baseType: !5, size: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !326, file: !327, line: 774, baseType: !23, size: 32, offset: 416)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !326, file: !327, line: 775, baseType: !342, size: 128, offset: 448)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !343, line: 58, size: 128, elements: !344)
!343 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!344 = !{!345, !351, !356, !357}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !342, file: !343, line: 59, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !347, line: 60, size: 64, elements: !348)
!347 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !347, line: 61, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !343, line: 60, baseType: !352, size: 32, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !343, line: 60, size: 32, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !352, file: !343, line: 61, baseType: !5, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !352, file: !343, line: 62, baseType: !50, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !342, file: !343, line: 65, baseType: !94, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !342, file: !343, line: 65, baseType: !94, size: 16, offset: 112)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !326, file: !327, line: 776, baseType: !5, size: 32, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !326, file: !327, line: 777, baseType: !40, size: 64, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !326, file: !327, line: 778, baseType: !325, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !326, file: !327, line: 787, baseType: !23, size: 32, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !326, file: !327, line: 788, baseType: !23, size: 32, offset: 800)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !326, file: !327, line: 790, baseType: !23, size: 32, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !326, file: !327, line: 792, baseType: !23, size: 32, offset: 864)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !326, file: !327, line: 793, baseType: !23, size: 32, offset: 896)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !326, file: !327, line: 794, baseType: !23, size: 32, offset: 928)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !326, file: !327, line: 795, baseType: !5, size: 32, offset: 960)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !326, file: !327, line: 797, baseType: !369, size: 2048, offset: 1024)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !327, line: 551, size: 2048, elements: !370)
!370 = !{!371, !376, !384, !385, !386, !387, !388, !389, !390, !391, !392, !395, !396, !397, !398, !400, !403, !404, !405}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !369, file: !327, line: 553, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !327, line: 411, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !372, file: !327, line: 412, baseType: !40, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !372, file: !327, line: 413, baseType: !318, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !369, file: !327, line: 554, baseType: !377, size: 192, align: 64, offset: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !378, line: 5, size: 192, align: 64, elements: !379)
!378 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!379 = !{!380, !381, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !377, file: !378, line: 6, baseType: !40, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !377, file: !378, line: 7, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !377, file: !378, line: 8, baseType: !382, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !369, file: !327, line: 555, baseType: !289, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !369, file: !327, line: 556, baseType: !289, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !369, file: !327, line: 558, baseType: !98, size: 128, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !369, file: !327, line: 559, baseType: !5, size: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !369, file: !327, line: 561, baseType: !289, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !369, file: !327, line: 562, baseType: !289, size: 64, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !369, file: !327, line: 563, baseType: !289, size: 64, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !369, file: !327, line: 564, baseType: !289, size: 64, offset: 832)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !369, file: !327, line: 565, baseType: !393, size: 64, offset: 896)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !85, line: 22, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !87, line: 30, baseType: !44)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !369, file: !327, line: 566, baseType: !289, size: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !369, file: !327, line: 568, baseType: !289, size: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !369, file: !327, line: 571, baseType: !23, size: 32, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !369, file: !327, line: 572, baseType: !399, size: 64, offset: 1152)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !369, file: !327, line: 574, baseType: !401, size: 64, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !327, line: 49, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !369, file: !327, line: 576, baseType: !401, size: 64, offset: 1280)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !369, file: !327, line: 578, baseType: !40, size: 64, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !369, file: !327, line: 588, baseType: !406, size: 512, align: 512, offset: 1536)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !327, line: 497, size: 512, align: 512, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !406, file: !327, line: 498, baseType: !289, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !406, file: !327, line: 499, baseType: !289, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !406, file: !327, line: 500, baseType: !289, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !406, file: !327, line: 501, baseType: !318, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !406, file: !327, line: 502, baseType: !318, size: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !406, file: !327, line: 503, baseType: !40, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !406, file: !327, line: 504, baseType: !40, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !406, file: !327, line: 505, baseType: !40, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !406, file: !327, line: 506, baseType: !417, size: 64, align: 64, offset: 448)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !327, line: 445, size: 64, align: 64, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !417, file: !327, line: 446, baseType: !5, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !417, file: !327, line: 447, baseType: !5, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !326, file: !327, line: 798, baseType: !422, size: 384, offset: 3072)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !327, line: 592, size: 384, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !422, file: !327, line: 593, baseType: !98, size: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !422, file: !327, line: 594, baseType: !40, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !422, file: !327, line: 595, baseType: !40, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !422, file: !327, line: 596, baseType: !5, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !422, file: !327, line: 597, baseType: !27, size: 16, offset: 288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !422, file: !327, line: 598, baseType: !27, size: 16, offset: 304)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !422, file: !327, line: 600, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !326, file: !327, line: 799, baseType: !433, size: 1792, offset: 3456)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !327, line: 610, size: 1792, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !530, !531}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !433, file: !327, line: 611, baseType: !377, size: 192, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !433, file: !327, line: 618, baseType: !289, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !433, file: !327, line: 619, baseType: !289, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !433, file: !327, line: 620, baseType: !289, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !433, file: !327, line: 621, baseType: !289, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !433, file: !327, line: 622, baseType: !289, size: 64, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !433, file: !327, line: 629, baseType: !393, size: 64, offset: 512)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !433, file: !327, line: 630, baseType: !289, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !327, line: 631, baseType: !5, size: 32, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !433, file: !327, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !433, file: !327, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !433, file: !327, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !433, file: !327, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !433, file: !327, line: 662, baseType: !449, size: 512, offset: 704)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !165, line: 118, size: 512, elements: !450)
!450 = !{!451, !459, !460, !465, !526, !527, !528, !529}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !449, file: !165, line: 119, baseType: !452, size: 256)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !453, line: 9, size: 256, elements: !454)
!453 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !453, line: 10, baseType: !377, size: 192, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !452, file: !453, line: 11, baseType: !457, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !458, line: 29, baseType: !393)
!458 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !449, file: !165, line: 120, baseType: !457, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !449, file: !165, line: 121, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!164, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !449, file: !165, line: 122, baseType: !466, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !165, line: 159, size: 512, align: 512, elements: !468)
!468 = !{!469, !495, !496, !499, !509, !510, !521, !525}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !467, file: !165, line: 160, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !165, line: 215, size: 4608, align: 512, elements: !472)
!472 = !{!473, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !165, line: 216, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !69, line: 23, baseType: !68)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !471, file: !165, line: 217, baseType: !5, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !471, file: !165, line: 218, baseType: !5, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !471, file: !165, line: 219, baseType: !5, size: 32, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !471, file: !165, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !471, file: !165, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !471, file: !165, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !471, file: !165, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !471, file: !165, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !471, file: !165, line: 226, baseType: !5, size: 32, offset: 160)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !471, file: !165, line: 227, baseType: !27, size: 16, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !471, file: !165, line: 228, baseType: !27, size: 16, offset: 208)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !471, file: !165, line: 229, baseType: !5, size: 32, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !471, file: !165, line: 235, baseType: !457, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !471, file: !165, line: 236, baseType: !464, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !471, file: !165, line: 237, baseType: !457, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !471, file: !165, line: 238, baseType: !464, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !471, file: !165, line: 239, baseType: !492, size: 4096, align: 512, offset: 512)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 4096, align: 512, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 8)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !467, file: !165, line: 161, baseType: !5, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !467, file: !165, line: 162, baseType: !497, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !26, line: 32, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !38, line: 96, baseType: !23)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !467, file: !165, line: 163, baseType: !500, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !501, line: 274, baseType: !502)
!501 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !501, line: 274, size: 32, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !502, file: !501, line: 274, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !501, line: 69, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !501, line: 64, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !506, file: !501, line: 65, baseType: !5, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !467, file: !165, line: 164, baseType: !464, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !467, file: !165, line: 165, baseType: !511, size: 128, offset: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !453, line: 14, size: 128, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !511, file: !453, line: 15, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !378, line: 26, size: 128, elements: !515)
!515 = !{!516, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !514, file: !378, line: 27, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !378, line: 12, size: 64, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !517, file: !378, line: 13, baseType: !382, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !514, file: !378, line: 28, baseType: !382, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !467, file: !165, line: 166, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!457}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !467, file: !165, line: 167, baseType: !457, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !449, file: !165, line: 123, baseType: !84, size: 8, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !449, file: !165, line: 124, baseType: !84, size: 8, offset: 456)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !449, file: !165, line: 125, baseType: !84, size: 8, offset: 464)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !449, file: !165, line: 126, baseType: !84, size: 8, offset: 472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !433, file: !327, line: 671, baseType: !449, size: 512, offset: 1216)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !433, file: !327, line: 679, baseType: !532, size: 64, offset: 1728)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !326, file: !327, line: 800, baseType: !534, size: 64, offset: 5248)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !327, line: 800, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !326, file: !327, line: 809, baseType: !538, size: 64, offset: 5312)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !327, line: 70, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !326, file: !327, line: 825, baseType: !541, size: 2048, align: 512, offset: 5632)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !327, line: 509, size: 2048, align: 512, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !541, file: !327, line: 511, baseType: !289, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !541, file: !327, line: 512, baseType: !289, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !541, file: !327, line: 513, baseType: !289, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !541, file: !327, line: 514, baseType: !289, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !541, file: !327, line: 515, baseType: !289, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !541, file: !327, line: 516, baseType: !289, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !541, file: !327, line: 518, baseType: !289, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !541, file: !327, line: 519, baseType: !289, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !541, file: !327, line: 520, baseType: !393, size: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !541, file: !327, line: 522, baseType: !289, size: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !541, file: !327, line: 523, baseType: !289, size: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !541, file: !327, line: 524, baseType: !393, size: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !541, file: !327, line: 526, baseType: !393, size: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !541, file: !327, line: 527, baseType: !289, size: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !541, file: !327, line: 529, baseType: !289, size: 64, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !541, file: !327, line: 530, baseType: !289, size: 64, offset: 960)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !541, file: !327, line: 531, baseType: !289, size: 64, offset: 1024)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !541, file: !327, line: 532, baseType: !289, size: 64, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !541, file: !327, line: 533, baseType: !289, size: 64, offset: 1152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !541, file: !327, line: 535, baseType: !289, size: 64, offset: 1216)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !541, file: !327, line: 536, baseType: !289, size: 64, offset: 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !541, file: !327, line: 537, baseType: !289, size: 64, offset: 1344)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !541, file: !327, line: 538, baseType: !289, size: 64, offset: 1408)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !541, file: !327, line: 539, baseType: !289, size: 64, offset: 1472)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !541, file: !327, line: 540, baseType: !289, size: 64, offset: 1536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !541, file: !327, line: 541, baseType: !289, size: 64, offset: 1600)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !541, file: !327, line: 542, baseType: !289, size: 64, offset: 1664)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !541, file: !327, line: 543, baseType: !289, size: 64, offset: 1728)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !326, file: !327, line: 833, baseType: !5, size: 32, offset: 7680)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !326, file: !327, line: 836, baseType: !5, size: 32, offset: 7712)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !326, file: !327, line: 837, baseType: !23, size: 32, offset: 7744)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !326, file: !327, line: 838, baseType: !575, size: 64, offset: 7808)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !578, line: 19, baseType: !579)
!578 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !578, line: 19, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !579, file: !578, line: 19, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 1)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !326, file: !327, line: 839, baseType: !586, size: 64, offset: 7872)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !326, file: !327, line: 840, baseType: !577, size: 64, offset: 7936)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !326, file: !327, line: 841, baseType: !21, size: 64, offset: 8000)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !326, file: !327, line: 843, baseType: !27, size: 16, offset: 8064)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !326, file: !327, line: 845, baseType: !27, size: 16, offset: 8080)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !326, file: !327, line: 848, baseType: !23, size: 32, offset: 8096)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !326, file: !327, line: 849, baseType: !593, size: 32, offset: 8128)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !327, line: 718, size: 32, elements: !594)
!594 = !{!595, !602}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !593, file: !327, line: 724, baseType: !596, size: 32)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !327, line: 719, size: 32, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !596, file: !327, line: 720, baseType: !84, size: 8)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !596, file: !327, line: 721, baseType: !84, size: 8, offset: 8)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !596, file: !327, line: 722, baseType: !84, size: 8, offset: 16)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !596, file: !327, line: 723, baseType: !84, size: 8, offset: 24)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !593, file: !327, line: 725, baseType: !318, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !326, file: !327, line: 850, baseType: !98, size: 128, offset: 8192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !326, file: !327, line: 851, baseType: !605, size: 64, offset: 8320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !327, line: 60, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !326, file: !327, line: 855, baseType: !40, size: 64, offset: 8384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !326, file: !327, line: 856, baseType: !84, size: 8, offset: 8448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !326, file: !327, line: 857, baseType: !84, size: 8, offset: 8456)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !326, file: !327, line: 858, baseType: !23, size: 32, offset: 8480)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !326, file: !327, line: 859, baseType: !98, size: 128, offset: 8512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !326, file: !327, line: 860, baseType: !23, size: 32, offset: 8640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !326, file: !327, line: 861, baseType: !98, size: 128, offset: 8704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !326, file: !327, line: 873, baseType: !615, size: 256, offset: 8832)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !327, line: 376, size: 256, elements: !616)
!616 = !{!617, !618, !619, !620}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !615, file: !327, line: 381, baseType: !40, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !615, file: !327, line: 384, baseType: !291, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !615, file: !327, line: 389, baseType: !291, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !615, file: !327, line: 392, baseType: !291, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !326, file: !327, line: 875, baseType: !98, size: 128, offset: 9088)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !326, file: !327, line: 877, baseType: !623, size: 320, offset: 9216)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !624, line: 86, size: 320, elements: !625)
!624 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !623, file: !624, line: 87, baseType: !23, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !623, file: !624, line: 88, baseType: !98, size: 128, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !623, file: !624, line: 89, baseType: !98, size: 128, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !326, file: !327, line: 878, baseType: !377, size: 192, align: 64, offset: 9536)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !326, file: !327, line: 881, baseType: !631, size: 64, offset: 9728)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !124, line: 733, size: 10240, elements: !633)
!633 = !{!634, !3964}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !124, line: 734, baseType: !635, size: 10240)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !124, line: 734, size: 10240, elements: !636)
!636 = !{!637, !641, !655, !3844, !3845, !3846, !3847, !3848, !3849, !3856, !3857, !3858, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3897, !3898, !3901, !3944, !3945, !3946, !3949, !3950, !3951, !3954, !3955, !3956, !3962, !3963}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !124, line: 739, baseType: !638, size: 512, align: 512)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !124, line: 739, size: 512, align: 512, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !638, file: !124, line: 747, baseType: !50, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !635, file: !124, line: 750, baseType: !642, size: 128, offset: 512)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !643, line: 218, size: 128, elements: !644)
!643 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!644 = !{!645, !653, !654}
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !643, line: 219, baseType: !646, size: 32)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 219, size: 32, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !646, file: !643, line: 220, baseType: !60, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !646, file: !643, line: 221, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !643, line: 197, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !643, line: 197, elements: !652)
!652 = !{}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !642, file: !643, line: 223, baseType: !5, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !642, file: !643, line: 224, baseType: !21, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !635, file: !124, line: 752, baseType: !656, size: 64, offset: 640)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!40, !659, !40, !40, !40, !40}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !216, line: 994, size: 1856, align: 64, elements: !661)
!661 = !{!662, !676, !677, !679, !686, !698, !699, !700, !770, !1126, !1135, !3834, !3835, !3836, !3837, !3838, !3839, !3841, !3842, !3843}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !216, line: 995, baseType: !663, size: 128)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !216, line: 995, size: 128, elements: !664)
!664 = !{!665, !666, !675}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !663, file: !216, line: 996, baseType: !346, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !663, file: !216, line: 997, baseType: !667, size: 128, align: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !26, line: 232, size: 128, align: 64, elements: !668)
!668 = !{!669, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !26, line: 233, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !667, file: !26, line: 234, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !670}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !663, file: !216, line: 998, baseType: !5, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !660, file: !216, line: 1005, baseType: !60, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !660, file: !216, line: 1006, baseType: !678, size: 32, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !26, line: 156, baseType: !5)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !660, file: !216, line: 1007, baseType: !680, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !681, line: 13, baseType: !682)
!681 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !26, line: 181, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 179, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !683, file: !26, line: 180, baseType: !393, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !660, file: !216, line: 1008, baseType: !687, size: 256, offset: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !688, line: 66, size: 256, elements: !689)
!688 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!689 = !{!690, !691, !692, !697}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !687, file: !688, line: 67, baseType: !680, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !687, file: !688, line: 68, baseType: !474, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !687, file: !688, line: 70, baseType: !693, size: 32, offset: 96)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !694, line: 15, size: 32, elements: !695)
!694 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !693, file: !694, line: 20, baseType: !50, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !687, file: !688, line: 72, baseType: !98, size: 128, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !660, file: !216, line: 1009, baseType: !42, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !660, file: !216, line: 1010, baseType: !5, size: 32, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !660, file: !216, line: 1011, baseType: !701, size: 256, offset: 640)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !216, line: 948, size: 256, elements: !702)
!702 = !{!703, !726, !759, !760, !768, !769}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !216, line: 949, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !705, line: 34, baseType: !706)
!705 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 25, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !706, file: !705, line: 26, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !710, line: 27, baseType: !711)
!710 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !710, line: 13, size: 64, elements: !712)
!712 = !{!713, !725}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !710, line: 14, baseType: !714, size: 32)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !710, line: 14, size: 32, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !714, file: !710, line: 15, baseType: !50, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !714, file: !710, line: 16, baseType: !718, size: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !714, file: !710, line: 16, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !718, file: !710, line: 18, baseType: !84, size: 8)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !718, file: !710, line: 19, baseType: !722, size: 24, offset: 8)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 24, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 3)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !711, file: !710, line: 26, baseType: !72, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !701, file: !216, line: 950, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !4, line: 59, size: 768, elements: !729)
!729 = !{!730, !731, !732, !733, !746, !747, !748, !749}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !728, file: !4, line: 61, baseType: !333, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !728, file: !4, line: 62, baseType: !5, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !4, line: 63, baseType: !60, size: 32, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !728, file: !4, line: 65, baseType: !734, size: 256, offset: 128)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 256, elements: !744)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !26, line: 194, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !735, file: !26, line: 195, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !26, line: 198, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !26, line: 199, baseType: !738, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !739, file: !26, line: 199, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!744 = !{!745}
!745 = !DISubrange(count: 4)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !728, file: !4, line: 66, baseType: !735, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !728, file: !4, line: 68, baseType: !55, size: 192, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !728, file: !4, line: 69, baseType: !667, size: 128, align: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !728, file: !4, line: 70, baseType: !750, offset: 768)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, elements: !757)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !4, line: 54, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !751, file: !4, line: 55, baseType: !23, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !4, line: 56, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !4, line: 56, flags: DIFlagFwdDecl)
!757 = !{!758}
!758 = !DISubrange(count: -1)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !701, file: !216, line: 951, baseType: !3, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !701, file: !216, line: 952, baseType: !761, size: 32, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !762, line: 23, baseType: !763)
!762 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 21, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !763, file: !762, line: 22, baseType: !766, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !26, line: 37, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !38, line: 49, baseType: !5)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !701, file: !216, line: 952, baseType: !761, size: 32, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !701, file: !216, line: 953, baseType: !23, size: 32, offset: 224)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !660, file: !216, line: 1012, baseType: !771, size: 64, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !774, line: 110, size: 1472, elements: !775)
!774 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!775 = !{!776, !777, !778, !785, !786, !787, !788, !789, !790, !791, !792, !798, !799, !800, !801, !802, !803, !927, !928, !929, !930, !931, !962, !1112, !1113, !1121}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !773, file: !774, line: 111, baseType: !680, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !773, file: !774, line: 112, baseType: !761, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !773, file: !774, line: 113, baseType: !779, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !762, line: 28, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 26, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !762, line: 27, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !26, line: 38, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !38, line: 50, baseType: !5)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !773, file: !774, line: 114, baseType: !761, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !773, file: !774, line: 115, baseType: !779, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !773, file: !774, line: 116, baseType: !761, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !773, file: !774, line: 117, baseType: !779, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !773, file: !774, line: 118, baseType: !761, size: 32, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !773, file: !774, line: 119, baseType: !779, size: 32, offset: 288)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !773, file: !774, line: 120, baseType: !5, size: 32, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !773, file: !774, line: 121, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !794, line: 24, baseType: !795)
!794 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 24, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !795, file: !794, line: 24, baseType: !289, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !773, file: !774, line: 122, baseType: !793, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !773, file: !774, line: 123, baseType: !793, size: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !773, file: !774, line: 124, baseType: !793, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !773, file: !774, line: 125, baseType: !793, size: 64, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !773, file: !774, line: 127, baseType: !88, size: 8, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !773, file: !774, line: 129, baseType: !804, size: 64, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !806, line: 195, size: 1728, elements: !807)
!806 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!807 = !{!808, !809, !814, !819, !828, !831, !832, !839, !840, !841, !842, !845, !846, !847, !849, !850, !891, !912}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !805, file: !806, line: 196, baseType: !333, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !805, file: !806, line: 197, baseType: !810, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !806, line: 28, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 104, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !85, line: 20, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !87, line: 26, baseType: !23)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 198, baseType: !815, size: 192, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 198, size: 192, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !815, file: !806, line: 199, baseType: !98, size: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !815, file: !806, line: 200, baseType: !377, size: 192, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !805, file: !806, line: 205, baseType: !820, size: 320, offset: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !821, line: 48, size: 320, elements: !822)
!821 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!822 = !{!823, !824, !825, !826, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !821, line: 49, baseType: !680, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !821, line: 55, baseType: !680, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !820, file: !821, line: 57, baseType: !693, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !820, file: !821, line: 59, baseType: !474, size: 32, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !820, file: !821, line: 60, baseType: !98, size: 128, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !805, file: !806, line: 206, baseType: !829, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !806, line: 206, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !805, file: !806, line: 207, baseType: !21, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 208, baseType: !833, size: 64, offset: 704)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 208, size: 64, elements: !834)
!834 = !{!835, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !833, file: !806, line: 209, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !837, line: 8, baseType: !394)
!837 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!838 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !833, file: !806, line: 210, baseType: !836, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !805, file: !806, line: 212, baseType: !836, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !805, file: !806, line: 213, baseType: !761, size: 32, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !805, file: !806, line: 214, baseType: !779, size: 32, offset: 864)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !805, file: !806, line: 215, baseType: !843, size: 32, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !806, line: 31, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 110, baseType: !318)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !805, file: !806, line: 216, baseType: !27, size: 16, offset: 928)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !805, file: !806, line: 217, baseType: !27, size: 16, offset: 944)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !805, file: !806, line: 221, baseType: !848, size: 16, offset: 960)
!848 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 228, baseType: !40, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 245, baseType: !851, size: 320, offset: 1088)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 245, size: 320, elements: !852)
!852 = !{!853, !882}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !851, file: !806, line: 246, baseType: !854, size: 320)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !806, line: 114, size: 320, elements: !855)
!855 = !{!856, !857, !869, !872, !881}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !854, file: !806, line: 116, baseType: !40, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !806, line: 117, baseType: !858, size: 64, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !806, line: 117, size: 64, elements: !859)
!859 = !{!860, !868}
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !806, line: 118, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !806, line: 118, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !861, file: !806, line: 120, baseType: !94, size: 16)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !861, file: !806, line: 121, baseType: !865, size: 48, offset: 16)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 48, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 6)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !858, file: !806, line: 127, baseType: !40, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !854, file: !806, line: 129, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !806, line: 102, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !854, file: !806, line: 130, baseType: !873, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !806, line: 108, size: 192, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !874, file: !806, line: 109, baseType: !667, size: 128, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !874, file: !806, line: 110, baseType: !333, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !874, file: !806, line: 111, baseType: !879, size: 8, offset: 160)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !880)
!880 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !854, file: !806, line: 131, baseType: !17, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !806, line: 247, baseType: !883, size: 320)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !806, line: 247, size: 320, elements: !884)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !883, file: !806, line: 248, baseType: !40, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !883, file: !806, line: 249, baseType: !40, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !883, file: !806, line: 250, baseType: !870, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !883, file: !806, line: 251, baseType: !873, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !883, file: !806, line: 252, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 260, baseType: !892, size: 256, offset: 1408)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 260, size: 256, elements: !893)
!893 = !{!894, !900}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !892, file: !806, line: 261, baseType: !895, size: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !806, line: 134, size: 256, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !895, file: !806, line: 135, baseType: !21, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !895, file: !806, line: 136, baseType: !899, size: 256)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !744)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !806, line: 262, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !806, line: 262, size: 256, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !901, file: !806, line: 264, baseType: !98, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !901, file: !806, line: 265, baseType: !905, size: 128, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !906, line: 22, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!907 = !{!908, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !905, file: !906, line: 23, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !906, line: 23, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !905, file: !906, line: 24, baseType: !40, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !805, file: !806, line: 280, baseType: !913, size: 64, offset: 1664)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !806, line: 176, size: 192, elements: !915)
!915 = !{!916, !925, !926}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !914, file: !806, line: 177, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !806, line: 171, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!23, !804, !921, !923, !804}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !914, file: !806, line: 178, baseType: !804, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !914, file: !806, line: 179, baseType: !870, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !773, file: !774, line: 130, baseType: !804, size: 64, offset: 832)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !773, file: !774, line: 131, baseType: !804, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !773, file: !774, line: 132, baseType: !804, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !773, file: !774, line: 135, baseType: !21, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !773, file: !774, line: 137, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !934, line: 14, size: 1088, elements: !935)
!934 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!935 = !{!936, !937, !946, !947, !948, !949, !950, !951}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !933, file: !934, line: 15, baseType: !333, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !933, file: !934, line: 17, baseType: !938, size: 320, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !939, line: 22, size: 320, elements: !940)
!939 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!940 = !{!941, !942, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !939, line: 23, baseType: !474, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !938, file: !939, line: 24, baseType: !393, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !938, file: !939, line: 26, baseType: !98, size: 128, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !938, file: !939, line: 28, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !933, file: !934, line: 19, baseType: !40, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !933, file: !934, line: 20, baseType: !680, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !933, file: !934, line: 23, baseType: !739, size: 128, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !933, file: !934, line: 24, baseType: !761, size: 32, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !933, file: !934, line: 29, baseType: !680, size: 64, offset: 704)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !933, file: !934, line: 36, baseType: !952, size: 320, offset: 768)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !953, line: 15, size: 320, elements: !954)
!953 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!954 = !{!955, !956, !957, !958, !959, !960, !961}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !953, line: 16, baseType: !474, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !952, file: !953, line: 18, baseType: !23, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !952, file: !953, line: 19, baseType: !23, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !952, file: !953, line: 20, baseType: !23, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !952, file: !953, line: 21, baseType: !23, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !952, file: !953, line: 22, baseType: !40, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !953, line: 23, baseType: !40, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !773, file: !774, line: 138, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !965, line: 68, size: 4800, elements: !966)
!965 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!966 = !{!967, !989, !990, !991, !992, !993, !994, !995, !1006, !1007, !1008, !1009, !1010, !1011, !1023, !1093, !1094, !1108, !1110}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !964, file: !965, line: 69, baseType: !968, size: 576)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !965, line: 23, size: 576, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !968, file: !965, line: 24, baseType: !318, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !965, line: 25, baseType: !972, size: 512, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !965, line: 25, size: 512, elements: !973)
!973 = !{!974, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !972, file: !965, line: 26, baseType: !975, size: 480)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 480, elements: !981)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !965, line: 17, size: 96, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !976, file: !965, line: 18, baseType: !318, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !976, file: !965, line: 19, baseType: !318, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !976, file: !965, line: 20, baseType: !318, size: 32, offset: 64)
!981 = !{!982}
!982 = !DISubrange(count: 5)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !965, line: 27, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !965, line: 27, size: 128, elements: !985)
!985 = !{!986, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !984, file: !965, line: 28, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !984, file: !965, line: 29, baseType: !987, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !964, file: !965, line: 70, baseType: !968, size: 576, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !964, file: !965, line: 71, baseType: !968, size: 576, offset: 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !964, file: !965, line: 72, baseType: !963, size: 64, offset: 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !964, file: !965, line: 73, baseType: !23, size: 32, offset: 1792)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !964, file: !965, line: 74, baseType: !761, size: 32, offset: 1824)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !964, file: !965, line: 75, baseType: !779, size: 32, offset: 1856)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !964, file: !965, line: 76, baseType: !996, size: 192, offset: 1920)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !997, line: 9, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!998 = !{!999, !1000, !1004, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !996, file: !997, line: 10, baseType: !680, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !996, file: !997, line: 11, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !997, line: 7, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !996, file: !997, line: 12, baseType: !5, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !996, file: !997, line: 13, baseType: !333, size: 32, offset: 160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !965, line: 77, baseType: !40, size: 64, offset: 2112)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !964, file: !965, line: 80, baseType: !879, size: 8, offset: 2176)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !964, file: !965, line: 88, baseType: !98, size: 128, offset: 2240)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !964, file: !965, line: 89, baseType: !804, size: 64, offset: 2368)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !964, file: !965, line: 90, baseType: !820, size: 320, offset: 2432)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !964, file: !965, line: 97, baseType: !1012, size: 256, offset: 2752)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1013, line: 98, size: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1012, file: !1013, line: 99, baseType: !680, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1012, file: !1013, line: 100, baseType: !98, size: 128, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1012, file: !1013, line: 101, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1013, line: 21, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !964, file: !965, line: 99, baseType: !1024, size: 768, offset: 3008)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !13, line: 199, size: 768, elements: !1025)
!1025 = !{!1026, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1024, file: !13, line: 200, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!23, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1024, file: !13, line: 201, baseType: !1032, size: 704, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !13, line: 193, size: 704, elements: !1033)
!1033 = !{!1034, !1092}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1032, file: !13, line: 195, baseType: !1035, size: 640)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !13, line: 173, size: 640, elements: !1036)
!1036 = !{!1037, !1049, !1061, !1062, !1082, !1083, !1085, !1091}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !13, line: 174, baseType: !1038, size: 192)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !13, line: 174, size: 192, elements: !1039)
!1039 = !{!1040, !1048}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !13, line: 175, baseType: !1041, size: 192)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !13, line: 175, size: 192, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1041, file: !13, line: 176, baseType: !34, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1041, file: !13, line: 177, baseType: !23, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1041, file: !13, line: 178, baseType: !23, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1041, file: !13, line: 179, baseType: !23, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1041, file: !13, line: 180, baseType: !23, size: 32, offset: 160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1038, file: !13, line: 182, baseType: !667, size: 128, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1035, file: !13, line: 184, baseType: !1050, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1052, line: 26, size: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1051, file: !1052, line: 27, baseType: !5, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1051, file: !1052, line: 28, baseType: !1056, size: 192, offset: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1057, line: 43, size: 192, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1056, file: !1057, line: 44, baseType: !474, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1056, file: !1057, line: 45, baseType: !98, size: 128, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1035, file: !13, line: 185, baseType: !34, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1035, file: !13, line: 186, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !13, line: 204, size: 960, elements: !1065)
!1065 = !{!1066, !1067, !1071, !1078}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1064, file: !13, line: 205, baseType: !1024, size: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1064, file: !13, line: 206, baseType: !1068, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1030, !1063}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1064, file: !13, line: 207, baseType: !1072, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1064, file: !13, line: 209, baseType: !1079, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!23, !1075, !34}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1035, file: !13, line: 187, baseType: !1030, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1035, file: !13, line: 188, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1035, file: !13, line: 189, baseType: !1086, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !13, line: 157, size: 256, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1087, file: !13, line: 158, baseType: !377, size: 192, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1087, file: !13, line: 159, baseType: !1075, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1035, file: !13, line: 190, baseType: !735, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1032, file: !13, line: 196, baseType: !517, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !964, file: !965, line: 100, baseType: !1075, size: 64, offset: 3776)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !964, file: !965, line: 102, baseType: !1095, size: 64, offset: 3840)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !965, line: 107, size: 1152, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1106}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1096, file: !965, line: 108, baseType: !739, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1096, file: !965, line: 109, baseType: !963, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1096, file: !965, line: 110, baseType: !761, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1096, file: !965, line: 111, baseType: !50, size: 32, offset: 224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1096, file: !965, line: 112, baseType: !1103, size: 640, offset: 256)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 640, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 10)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1096, file: !965, line: 113, baseType: !1107, size: 256, offset: 896)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !744)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !964, file: !965, line: 103, baseType: !1109, size: 640, offset: 3904)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 640, elements: !1104)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !964, file: !965, line: 104, baseType: !1111, size: 256, offset: 4544)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !744)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !773, file: !774, line: 139, baseType: !1095, size: 64, offset: 1216)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !773, file: !774, line: 140, baseType: !1114, size: 64, offset: 1280)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !774, line: 25, size: 64, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1115, file: !774, line: 26, baseType: !50, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1115, file: !774, line: 27, baseType: !23, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1115, file: !774, line: 28, baseType: !1120, offset: 64)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, elements: !757)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !774, line: 142, baseType: !1122, size: 128, offset: 1344)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !773, file: !774, line: 142, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1122, file: !774, line: 143, baseType: !23, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1122, file: !774, line: 144, baseType: !667, size: 128, align: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !660, file: !216, line: 1013, baseType: !1127, size: 256, offset: 960)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !216, line: 970, size: 256, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1127, file: !216, line: 971, baseType: !40, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1127, file: !216, line: 972, baseType: !5, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1127, file: !216, line: 973, baseType: !5, size: 32, offset: 96)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1127, file: !216, line: 974, baseType: !5, size: 32, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1127, file: !216, line: 975, baseType: !5, size: 32, offset: 160)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1127, file: !216, line: 976, baseType: !42, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !660, file: !216, line: 1014, baseType: !1136, size: 128, offset: 1216)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1137, line: 8, size: 128, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1138 = !{!1139, !3833}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1136, file: !1137, line: 9, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1142, line: 70, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1143 = !{!1144, !3830, !3831, !3832}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1141, file: !1142, line: 71, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1147, line: 82, size: 1536, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1148 = !{!1149, !1150, !1155, !1163, !1164, !1179, !3797, !3799, !3812, !3813, !3814, !3815, !3816, !3822, !3823, !3824}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1146, file: !1147, line: 84, baseType: !5, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1146, file: !1147, line: 85, baseType: !1151, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !501, line: 275, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !501, line: 275, size: 32, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1152, file: !501, line: 275, baseType: !505, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1146, file: !1147, line: 86, baseType: !1156, size: 128, offset: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1157, line: 38, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1158 = !{!1159, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1156, file: !1157, line: 39, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1156, file: !1157, line: 39, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1146, file: !1147, line: 87, baseType: !1145, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1146, file: !1147, line: 88, baseType: !1165, size: 128, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1147, line: 49, size: 128, elements: !1166)
!1166 = !{!1167, !1176}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1147, line: 50, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1147, line: 50, size: 64, elements: !1169)
!1169 = !{!1170, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !1147, line: 51, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !1147, line: 51, size: 64, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1171, file: !1147, line: 52, baseType: !318, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1171, file: !1147, line: 52, baseType: !318, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1168, file: !1147, line: 54, baseType: !289, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1165, file: !1147, line: 56, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1146, file: !1147, line: 89, baseType: !1180, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !216, line: 641, size: 4800, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1192, !1193, !1387, !3611, !3612, !3613, !3614, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3779, !3782, !3783, !3784, !3793, !3794, !3795, !3796}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1181, file: !216, line: 642, baseType: !25, size: 16)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1181, file: !216, line: 643, baseType: !27, size: 16, offset: 16)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1181, file: !216, line: 644, baseType: !761, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1181, file: !216, line: 645, baseType: !98, size: 128, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1181, file: !216, line: 646, baseType: !779, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1181, file: !216, line: 647, baseType: !5, size: 32, offset: 224)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1181, file: !216, line: 650, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !216, line: 607, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1181, file: !216, line: 651, baseType: !1190, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1181, file: !216, line: 654, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !216, line: 1966, size: 2048, align: 512, elements: !1197)
!1197 = !{!1198, !1202, !1215, !1221, !1225, !1229, !1233, !1237, !1241, !1245, !1249, !1250, !1256, !1260, !1297, !1328, !1335, !1341, !1345, !1349, !1353, !1357, !1361, !1367, !1371}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1196, file: !216, line: 1967, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1145, !1180, !1145, !5}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1196, file: !216, line: 1968, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!17, !1145, !1180, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1208, line: 10, size: 128, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1209 = !{!1210, !1214}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1207, file: !1208, line: 11, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !21}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1207, file: !1208, line: 12, baseType: !21, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1196, file: !216, line: 1969, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!23, !1219, !1180, !23}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !794, line: 42, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1196, file: !216, line: 1970, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1190, !1180, !23, !879}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1196, file: !216, line: 1972, baseType: !1226, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!23, !1145, !890, !23}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1196, file: !216, line: 1974, baseType: !1230, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!23, !1219, !1180, !1145, !25, !879}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1196, file: !216, line: 1976, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!23, !1145, !1180, !1145}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1196, file: !216, line: 1977, baseType: !1238, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!23, !1180, !1145}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1196, file: !216, line: 1978, baseType: !1242, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!23, !1219, !1180, !1145, !17}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1196, file: !216, line: 1980, baseType: !1246, size: 64, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!23, !1219, !1180, !1145, !25}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1196, file: !216, line: 1982, baseType: !1238, size: 64, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1196, file: !216, line: 1983, baseType: !1251, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!23, !1219, !1180, !1145, !25, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !26, line: 21, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !26, line: 18, baseType: !318)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1196, file: !216, line: 1985, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!23, !1219, !1180, !1145, !1180, !1145, !5}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1196, file: !216, line: 1987, baseType: !1261, size: 64, offset: 832)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!23, !1219, !1145, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !216, line: 226, size: 640, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1279, !1288, !1289, !1294, !1295, !1296}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1265, file: !216, line: 227, baseType: !5, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1265, file: !216, line: 228, baseType: !25, size: 16, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !216, line: 241, baseType: !1270, size: 32, offset: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !216, line: 241, size: 32, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1270, file: !216, line: 242, baseType: !761, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1270, file: !216, line: 243, baseType: !1274, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1275, line: 16, baseType: !1276)
!1275 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 14, size: 32, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1276, file: !1275, line: 15, baseType: !766, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !216, line: 245, baseType: !1280, size: 32, offset: 96)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !216, line: 245, size: 32, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1280, file: !216, line: 246, baseType: !779, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1280, file: !216, line: 247, baseType: !1284, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1275, line: 20, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 18, size: 32, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1285, file: !1275, line: 19, baseType: !783, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1265, file: !216, line: 249, baseType: !42, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1265, file: !216, line: 250, baseType: !1290, size: 128, offset: 192)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !837, line: 13, size: 128, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1290, file: !837, line: 14, baseType: !836, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1290, file: !837, line: 15, baseType: !287, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1265, file: !216, line: 251, baseType: !1290, size: 128, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1265, file: !216, line: 252, baseType: !1290, size: 128, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1265, file: !216, line: 259, baseType: !659, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1196, file: !216, line: 1988, baseType: !1298, size: 64, offset: 896)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!23, !1219, !1301, !1303, !318, !5}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1305, line: 22, size: 1280, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1304, file: !1305, line: 23, baseType: !318, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1304, file: !1305, line: 24, baseType: !25, size: 16, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1304, file: !1305, line: 25, baseType: !5, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1304, file: !1305, line: 26, baseType: !844, size: 32, offset: 96)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1304, file: !1305, line: 27, baseType: !289, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1304, file: !1305, line: 28, baseType: !289, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1304, file: !1305, line: 41, baseType: !289, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1304, file: !1305, line: 42, baseType: !1254, size: 32, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1304, file: !1305, line: 43, baseType: !1254, size: 32, offset: 352)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1304, file: !1305, line: 44, baseType: !761, size: 32, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1304, file: !1305, line: 45, baseType: !779, size: 32, offset: 416)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1304, file: !1305, line: 46, baseType: !42, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1304, file: !1305, line: 47, baseType: !1290, size: 128, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1304, file: !1305, line: 48, baseType: !1290, size: 128, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1304, file: !1305, line: 49, baseType: !1290, size: 128, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1304, file: !1305, line: 50, baseType: !1290, size: 128, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1304, file: !1305, line: 51, baseType: !289, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1304, file: !1305, line: 52, baseType: !289, size: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1304, file: !1305, line: 53, baseType: !318, size: 32, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1304, file: !1305, line: 54, baseType: !318, size: 32, offset: 1184)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1304, file: !1305, line: 55, baseType: !289, size: 64, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1196, file: !216, line: 1990, baseType: !1329, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !1145, !890, !36}
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 66, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !38, line: 73, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !38, line: 15, baseType: !287)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1196, file: !216, line: 1991, baseType: !1336, size: 64, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!23, !1180, !1339, !289, !289}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !216, line: 55, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1196, file: !216, line: 1993, baseType: !1342, size: 64, offset: 1088)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!23, !1180, !23}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1196, file: !216, line: 1994, baseType: !1346, size: 64, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!23, !1180, !1145, !659, !5, !25}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1196, file: !216, line: 1997, baseType: !1350, size: 64, offset: 1216)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!23, !1219, !1180, !659, !25}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1196, file: !216, line: 1999, baseType: !1354, size: 64, offset: 1280)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1190, !1219, !1145, !23}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1196, file: !216, line: 2001, baseType: !1358, size: 64, offset: 1344)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!23, !1219, !1145, !1190, !23}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1196, file: !216, line: 2003, baseType: !1362, size: 64, offset: 1408)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!23, !1219, !1145, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !216, line: 76, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1196, file: !216, line: 2005, baseType: !1368, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!23, !1145, !1365}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1196, file: !216, line: 2006, baseType: !1372, size: 64, offset: 1536)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1375, !1180}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !216, line: 3192, size: 192, elements: !1377)
!1377 = !{!1378, !1386}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1376, file: !216, line: 3193, baseType: !1379, size: 128)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1380, line: 296, size: 128, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1381 = !{!1382, !1383, !1385}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1379, file: !1380, line: 297, baseType: !60, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1379, file: !1380, line: 299, baseType: !1384, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 154, baseType: !5)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1379, file: !1380, line: 300, baseType: !21, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1376, file: !216, line: 3194, baseType: !318, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1181, file: !216, line: 655, baseType: !1388, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !216, line: 1190, size: 10752, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !3070, !3202, !3242, !3325, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3342, !3346, !3347, !3348, !3351, !3410, !3413, !3414, !3415, !3456, !3482, !3483, !3484, !3485, !3486, !3487, !3490, !3494, !3503, !3504, !3505, !3506, !3565, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1389, file: !216, line: 1191, baseType: !98, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1389, file: !216, line: 1192, baseType: !1254, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1389, file: !216, line: 1193, baseType: !88, size: 8, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1389, file: !216, line: 1194, baseType: !40, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1389, file: !216, line: 1195, baseType: !42, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1389, file: !216, line: 1196, baseType: !1397, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !216, line: 2366, size: 576, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1408, !1412, !1416, !1420, !3058, !3059, !3060, !3062, !3063, !3064, !3066, !3067, !3068, !3069}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1398, file: !216, line: 2367, baseType: !17, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1398, file: !216, line: 2368, baseType: !23, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1398, file: !216, line: 2376, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!23, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1142, line: 21, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1398, file: !216, line: 2377, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !216, line: 75, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1398, file: !216, line: 2378, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1145, !1397, !23, !17, !21}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1398, file: !216, line: 2380, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1388}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1398, file: !216, line: 2381, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !109, line: 402, size: 9216, align: 512, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1430, !2727, !2753, !2754, !2755, !2756, !2760, !2763, !2764, !2765, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2831, !2835, !2855, !2875, !2876, !2877, !2878, !2887, !2910, !2911, !2914, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2928, !2929, !3017, !3025, !3026, !3027, !3029, !3033, !3034, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3051, !3052, !3053, !3057}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1422, file: !109, line: 403, baseType: !108, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1422, file: !109, line: 406, baseType: !98, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1422, file: !109, line: 409, baseType: !1427, size: 448, offset: 192)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 448, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 56)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1422, file: !109, line: 417, baseType: !1431, size: 768, offset: 640)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !109, line: 45, size: 768, elements: !1432)
!1432 = !{!1433, !2721, !2722, !2723, !2726}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1431, file: !109, line: 46, baseType: !1434, size: 512)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1435, line: 64, size: 512, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1436 = !{!1437, !1438, !1439, !1441, !1485, !2577, !2711, !2716, !2717, !2718, !2719, !2720}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1434, file: !1435, line: 65, baseType: !17, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1434, file: !1435, line: 66, baseType: !98, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1434, file: !1435, line: 67, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1434, file: !1435, line: 68, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1435, line: 168, size: 768, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1443, file: !1435, line: 169, baseType: !98, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1443, file: !1435, line: 170, baseType: !60, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1443, file: !1435, line: 171, baseType: !1434, size: 512, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1443, file: !1435, line: 172, baseType: !1449, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1435, line: 133, size: 192, elements: !1452)
!1452 = !{!1453, !1460, !1465}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1451, file: !1435, line: 134, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!23, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1451, file: !1435, line: 135, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!17, !1458}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1451, file: !1435, line: 136, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!23, !1458, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1435, line: 125, size: 20736, elements: !1472)
!1472 = !{!1473, !1475, !1479, !1480, !1484}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1471, file: !1435, line: 126, baseType: !1474, size: 192)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 192, elements: !723)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1471, file: !1435, line: 127, baseType: !1476, size: 4096, offset: 192)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 4096, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1471, file: !1435, line: 128, baseType: !23, size: 32, offset: 4288)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1471, file: !1435, line: 129, baseType: !1481, size: 16384, offset: 4320)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16384, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 2048)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1471, file: !1435, line: 130, baseType: !23, size: 32, offset: 20704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1434, file: !1435, line: 69, baseType: !1486, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1435, line: 116, size: 384, elements: !1489)
!1489 = !{!1490, !1494, !1513, !2565, !2569, !2573}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1488, file: !1435, line: 117, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1440}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1488, file: !1435, line: 118, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1498, line: 254, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1499 = !{!1500, !1509}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1497, file: !1498, line: 255, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1332, !1440, !1504, !890}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1498, line: 30, size: 128, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1505, file: !1498, line: 31, baseType: !17, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1505, file: !1498, line: 32, baseType: !25, size: 16, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1497, file: !1498, line: 256, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1332, !1440, !1504, !17, !36}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1488, file: !1435, line: 119, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1498, line: 84, size: 320, elements: !1518)
!1518 = !{!1519, !1520, !1524, !2561, !2563}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1517, file: !1498, line: 85, baseType: !17, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1517, file: !1498, line: 86, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!25, !1440, !1504, !23}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1517, file: !1498, line: 88, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!25, !1440, !1528, !23}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1498, line: 175, size: 512, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !2552, !2556, !2557}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1529, file: !1498, line: 176, baseType: !1505, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1529, file: !1498, line: 177, baseType: !36, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1529, file: !1498, line: 178, baseType: !21, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1529, file: !1498, line: 179, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !216, line: 472, size: 1536, align: 64, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !2544, !2545, !2546, !2549, !2550, !2551}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1539, file: !216, line: 473, baseType: !1180, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1539, file: !216, line: 474, baseType: !1379, size: 128, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1539, file: !216, line: 475, baseType: !820, size: 320, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1539, file: !216, line: 476, baseType: !1384, size: 32, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1539, file: !216, line: 477, baseType: !50, size: 32, offset: 544)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1539, file: !216, line: 482, baseType: !514, size: 128, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1539, file: !216, line: 483, baseType: !40, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1539, file: !216, line: 484, baseType: !40, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1539, file: !216, line: 485, baseType: !1550, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !216, line: 404, size: 1280, elements: !1553)
!1553 = !{!1554, !1866, !1936, !1940, !1944, !1961, !1967, !1971, !1976, !1980, !1984, !1988, !2032, !2036, !2040, !2044, !2049, !2053, !2536, !2540}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1552, file: !216, line: 405, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!23, !1558, !1846}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !124, line: 74, size: 512, align: 128, elements: !1560)
!1560 = !{!1561, !1562, !1840, !1845}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !124, line: 75, baseType: !40, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !124, line: 83, baseType: !1563, size: 320, offset: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !124, line: 83, size: 320, elements: !1564)
!1564 = !{!1565, !1586, !1600, !1604, !1839}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !124, line: 84, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !124, line: 84, size: 320, elements: !1567)
!1567 = !{!1568, !1579, !1580, !1585}
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !124, line: 90, baseType: !1569, size: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !124, line: 90, size: 128, elements: !1570)
!1570 = !{!1571, !1572, !1577, !1578}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1569, file: !124, line: 91, baseType: !98, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !124, line: 94, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !124, line: 94, size: 128, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1573, file: !124, line: 96, baseType: !21, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1573, file: !124, line: 98, baseType: !5, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1569, file: !124, line: 102, baseType: !98, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1569, file: !124, line: 103, baseType: !98, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1566, file: !124, line: 106, baseType: !1538, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !124, line: 107, baseType: !1581, size: 64, offset: 192)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !124, line: 107, size: 64, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1581, file: !124, line: 108, baseType: !40, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1581, file: !124, line: 109, baseType: !40, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1566, file: !124, line: 117, baseType: !40, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !124, line: 119, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !124, line: 119, size: 320, elements: !1588)
!1588 = !{!1589, !1590, !1593, !1594, !1595}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1587, file: !124, line: 124, baseType: !40, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1587, file: !124, line: 125, baseType: !1591, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !124, line: 125, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1587, file: !124, line: 126, baseType: !40, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1587, file: !124, line: 127, baseType: !40, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !124, line: 128, baseType: !1596, size: 64, offset: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !124, line: 128, size: 64, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1596, file: !124, line: 133, baseType: !40, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1596, file: !124, line: 138, baseType: !680, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !124, line: 141, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !124, line: 141, size: 64, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1601, file: !124, line: 142, baseType: !40, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !124, line: 144, baseType: !1605, size: 128)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !124, line: 144, size: 128, elements: !1606)
!1606 = !{!1607, !1838}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1605, file: !124, line: 146, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !116, line: 126, size: 1216, elements: !1610)
!1610 = !{!1611, !1620, !1641, !1642, !1643, !1644, !1645, !1820, !1821, !1822}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1609, file: !116, line: 127, baseType: !1612, size: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !116, line: 21, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1612, file: !116, line: 22, baseType: !40, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1612, file: !116, line: 23, baseType: !323, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1612, file: !116, line: 24, baseType: !323, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1612, file: !116, line: 25, baseType: !40, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1612, file: !116, line: 26, baseType: !40, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1612, file: !116, line: 27, baseType: !40, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1609, file: !116, line: 128, baseType: !1621, size: 128, offset: 384)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1622, line: 105, size: 128, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1621, file: !1622, line: 110, baseType: !40, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1621, file: !1622, line: 118, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1622, line: 95, size: 448, elements: !1628)
!1628 = !{!1629, !1630, !1636, !1637, !1638, !1639, !1640}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1627, file: !1622, line: 96, baseType: !680, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1627, file: !1622, line: 97, baseType: !1631, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1622, line: 60, baseType: !1633)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1627, file: !1622, line: 98, baseType: !1631, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1627, file: !1622, line: 99, baseType: !879, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1627, file: !1622, line: 100, baseType: !879, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1627, file: !1622, line: 101, baseType: !667, size: 128, align: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1627, file: !1622, line: 102, baseType: !1635, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1609, file: !116, line: 129, baseType: !1051, size: 256, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !116, line: 130, baseType: !115, size: 32, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1609, file: !116, line: 131, baseType: !5, size: 32, offset: 800)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1609, file: !116, line: 132, baseType: !40, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1609, file: !116, line: 133, baseType: !1646, size: 64, offset: 896)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !116, line: 77, size: 192, elements: !1649)
!1649 = !{!1650, !1654, !1816}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1648, file: !116, line: 83, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1558}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1648, file: !116, line: 89, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !124, line: 1184, baseType: !5)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1661, line: 512, size: 896, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1662 = !{!1663, !1796, !1797, !1798, !1799, !1808, !1809, !1810, !1812, !1814}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1661, line: 513, baseType: !1664, size: 320)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !1661, line: 513, size: 320, elements: !1665)
!1665 = !{!1666, !1792, !1793, !1794, !1795}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1664, file: !1661, line: 514, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !124, line: 625, size: 1344, elements: !1669)
!1669 = !{!1670, !1679, !1680, !1686, !1693, !1694, !1699, !1700, !1705, !1706, !1709, !1785, !1786, !1787, !1788, !1789, !1790}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !124, line: 628, baseType: !1671, size: 128)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !124, line: 628, size: 128, elements: !1672)
!1672 = !{!1673, !1678}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !124, line: 629, baseType: !1674, size: 128)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !124, line: 629, size: 128, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1674, file: !124, line: 631, baseType: !40, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1674, file: !124, line: 632, baseType: !40, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1671, file: !124, line: 635, baseType: !667, size: 128, align: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1668, file: !124, line: 639, baseType: !631, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1668, file: !124, line: 640, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !294, line: 297, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !294, line: 297, size: 64, elements: !1683)
!1683 = !{!1684}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1682, file: !294, line: 297, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !286, line: 19, baseType: !40)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !124, line: 646, baseType: !1687, size: 64, offset: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !124, line: 646, size: 64, elements: !1688)
!1688 = !{!1689, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1687, file: !124, line: 647, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !124, line: 542, baseType: !40)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1687, file: !124, line: 648, baseType: !1691, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1668, file: !124, line: 666, baseType: !23, size: 32, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1668, file: !124, line: 667, baseType: !1695, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !124, line: 579, size: 320, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1696, file: !124, line: 580, baseType: !820, size: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1668, file: !124, line: 670, baseType: !879, size: 8, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1668, file: !124, line: 681, baseType: !1701, size: 256, offset: 512)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !124, line: 678, size: 256, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1701, file: !124, line: 679, baseType: !377, size: 192, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1701, file: !124, line: 680, baseType: !40, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1668, file: !124, line: 689, baseType: !98, size: 128, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1668, file: !124, line: 691, baseType: !1707, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !124, line: 691, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1668, file: !124, line: 694, baseType: !1710, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1661, line: 563, size: 1024, elements: !1713)
!1713 = !{!1714, !1718, !1719, !1723, !1727, !1731, !1732, !1736, !1740, !1744, !1745, !1746, !1750, !1754, !1777, !1781}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1712, file: !1661, line: 564, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !1667}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1712, file: !1661, line: 569, baseType: !1715, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1712, file: !1661, line: 571, baseType: !1720, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!23, !1667, !40}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1712, file: !1661, line: 572, baseType: !1724, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!23, !1667}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1712, file: !1661, line: 578, baseType: !1728, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!23, !1667, !40, !40, !40}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1712, file: !1661, line: 580, baseType: !1655, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1712, file: !1661, line: 581, baseType: !1733, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1658, !1659, !5}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1712, file: !1661, line: 582, baseType: !1737, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1658, !1659, !40, !40}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1712, file: !1661, line: 584, baseType: !1741, size: 64, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!40, !1667}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1712, file: !1661, line: 588, baseType: !1655, size: 64, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1712, file: !1661, line: 591, baseType: !1655, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1712, file: !1661, line: 597, baseType: !1747, size: 64, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!23, !1667, !40, !21, !23, !23}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1712, file: !1661, line: 603, baseType: !1751, size: 64, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!17, !1667}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1712, file: !1661, line: 613, baseType: !1755, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!23, !1667, !1758}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1760, line: 44, size: 256, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1761 = !{!1762, !1763, !1764, !1765, !1771, !1772}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1759, file: !1760, line: 45, baseType: !50, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1759, file: !1760, line: 46, baseType: !27, size: 16, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 47, baseType: !27, size: 16, offset: 48)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1759, file: !1760, line: 48, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1767, line: 99, baseType: !1768)
!1767 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1767, line: 99, size: 64, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1768, file: !1767, line: 99, baseType: !582, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1759, file: !1760, line: 49, baseType: !23, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1759, file: !1760, line: 54, baseType: !1773, size: 64, offset: 192)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 51, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1773, file: !1760, line: 52, baseType: !1766, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1773, file: !1760, line: 53, baseType: !1766, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1712, file: !1661, line: 625, baseType: !1778, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1758, !1667, !40}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1712, file: !1661, line: 633, baseType: !1782, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1558, !1667, !40}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1668, file: !124, line: 697, baseType: !40, size: 64, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1668, file: !124, line: 699, baseType: !659, size: 64, offset: 1088)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1668, file: !124, line: 700, baseType: !21, size: 64, offset: 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1668, file: !124, line: 711, baseType: !680, size: 64, offset: 1216)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1668, file: !124, line: 717, baseType: !1758, size: 64, offset: 1280)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1668, file: !124, line: 722, baseType: !1791, offset: 1344)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !124, line: 570, elements: !652)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1664, file: !1661, line: 515, baseType: !1384, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1664, file: !1661, line: 516, baseType: !40, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1664, file: !1661, line: 517, baseType: !40, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1664, file: !1661, line: 518, baseType: !40, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1660, file: !1661, line: 520, baseType: !123, size: 32, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1660, file: !1661, line: 522, baseType: !305, size: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1660, file: !1661, line: 524, baseType: !299, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1661, line: 527, baseType: !1800, size: 64, offset: 512)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1660, file: !1661, line: 527, size: 64, elements: !1801)
!1801 = !{!1802, !1807}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1800, file: !1661, line: 528, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !286, line: 21, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 21, size: 64, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1804, file: !286, line: 21, baseType: !285, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1800, file: !1661, line: 529, baseType: !306, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1660, file: !1661, line: 534, baseType: !1558, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1660, file: !1661, line: 535, baseType: !1558, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1660, file: !1661, line: 541, baseType: !1811, size: 64, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1660, file: !1661, line: 545, baseType: !1813, size: 64, offset: 768)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1660, file: !1661, line: 549, baseType: !1815, size: 64, offset: 832)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !294, line: 520, baseType: !1558)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1648, file: !116, line: 100, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!23, !1608, !40, !40, !23}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1609, file: !116, line: 134, baseType: !21, size: 64, offset: 960)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1609, file: !116, line: 135, baseType: !23, size: 32, offset: 1024)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !116, line: 136, baseType: !1823, size: 128, offset: 1088)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !116, line: 136, size: 128, elements: !1824)
!1824 = !{!1825, !1831}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1823, file: !116, line: 137, baseType: !1826, size: 128)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1827, line: 6, size: 128, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1826, file: !1827, line: 7, baseType: !289, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1826, file: !1827, line: 8, baseType: !289, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !116, line: 138, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !116, line: 138, elements: !1833)
!1833 = !{!1834, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1832, file: !116, line: 138, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !116, line: 138, elements: !652)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1832, file: !116, line: 138, baseType: !1837)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, elements: !757)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1605, file: !124, line: 147, baseType: !21, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1563, file: !124, line: 161, baseType: !667, size: 128, align: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !124, line: 164, baseType: !1841, size: 32, offset: 384)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !124, line: 164, size: 32, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1841, file: !124, line: 169, baseType: !50, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1841, file: !124, line: 177, baseType: !5, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1559, file: !124, line: 181, baseType: !50, size: 32, offset: 416)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !140, line: 42, size: 384, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1847, file: !140, line: 43, baseType: !287, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1847, file: !140, line: 45, baseType: !287, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1847, file: !140, line: 52, baseType: !42, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1847, file: !140, line: 53, baseType: !42, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1847, file: !140, line: 55, baseType: !139, size: 32, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1847, file: !140, line: 57, baseType: !5, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1847, file: !140, line: 58, baseType: !5, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1847, file: !140, line: 59, baseType: !5, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1847, file: !140, line: 60, baseType: !5, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1847, file: !140, line: 61, baseType: !5, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1847, file: !140, line: 62, baseType: !5, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1847, file: !140, line: 63, baseType: !5, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1847, file: !140, line: 71, baseType: !5, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1847, file: !140, line: 78, baseType: !1863, size: 64, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !140, line: 78, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1552, file: !216, line: 406, baseType: !1867, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!23, !659, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !124, line: 293, size: 1536, elements: !1872)
!1872 = !{!1873, !1903, !1917}
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !124, line: 295, baseType: !1874, size: 512)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !124, line: 295, size: 512, elements: !1875)
!1875 = !{!1876, !1902}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !124, line: 296, baseType: !1877, size: 448)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !124, line: 296, size: 448, elements: !1878)
!1878 = !{!1879, !1880, !1889, !1890, !1891, !1900, !1901}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1877, file: !124, line: 298, baseType: !40, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !124, line: 299, baseType: !1881, size: 128, offset: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !124, line: 299, size: 128, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1881, file: !124, line: 300, baseType: !98, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !124, line: 302, baseType: !1885, size: 128)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !124, line: 302, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1885, file: !124, line: 303, baseType: !21, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1885, file: !124, line: 305, baseType: !5, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1877, file: !124, line: 310, baseType: !1538, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1877, file: !124, line: 311, baseType: !40, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !124, line: 312, baseType: !1892, size: 64, offset: 320)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !124, line: 312, size: 64, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1892, file: !124, line: 313, baseType: !21, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1892, file: !124, line: 314, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !124, line: 257, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 255, size: 64, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1897, file: !124, line: 256, baseType: !40, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1877, file: !124, line: 316, baseType: !50, size: 32, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1877, file: !124, line: 317, baseType: !50, size: 32, offset: 416)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1874, file: !124, line: 323, baseType: !1559, size: 512, align: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !124, line: 325, baseType: !1904, size: 512, offset: 512)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !124, line: 325, size: 512, elements: !1905)
!1905 = !{!1906, !1916}
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !124, line: 326, baseType: !1907, size: 320)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !124, line: 326, size: 320, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1907, file: !124, line: 327, baseType: !40, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1907, file: !124, line: 328, baseType: !40, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1907, file: !124, line: 329, baseType: !40, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1907, file: !124, line: 331, baseType: !50, size: 32, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1907, file: !124, line: 332, baseType: !50, size: 32, offset: 224)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1907, file: !124, line: 333, baseType: !50, size: 32, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1907, file: !124, line: 335, baseType: !5, size: 32, offset: 288)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1904, file: !124, line: 339, baseType: !1559, size: 512, align: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !124, line: 341, baseType: !1918, size: 512, offset: 1024)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !124, line: 341, size: 512, elements: !1919)
!1919 = !{!1920, !1929, !1935}
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !124, line: 342, baseType: !1921, size: 384)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !124, line: 342, size: 384, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1921, file: !124, line: 343, baseType: !40, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1921, file: !124, line: 344, baseType: !40, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1921, file: !124, line: 346, baseType: !21, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1921, file: !124, line: 347, baseType: !21, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1921, file: !124, line: 348, baseType: !21, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1921, file: !124, line: 349, baseType: !21, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !124, line: 352, baseType: !1930, size: 256)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !124, line: 352, size: 256, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1930, file: !124, line: 353, baseType: !40, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1930, file: !124, line: 354, baseType: !40, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1930, file: !124, line: 356, baseType: !98, size: 128, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1918, file: !124, line: 359, baseType: !1559, size: 512, align: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1552, file: !216, line: 409, baseType: !1937, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!23, !1538, !1846}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1552, file: !216, line: 412, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!879, !1538, !1870}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1552, file: !216, line: 414, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1950, line: 1276, size: 448, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1951 = !{!1952, !1953, !1954, !1956, !1957, !1958, !1959, !1960}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1949, file: !1950, line: 1277, baseType: !659, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1949, file: !1950, line: 1278, baseType: !1538, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1949, file: !1950, line: 1279, baseType: !1955, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1949, file: !1950, line: 1281, baseType: !40, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1949, file: !1950, line: 1282, baseType: !5, size: 32, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1949, file: !1950, line: 1283, baseType: !5, size: 32, offset: 288)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1949, file: !1950, line: 1284, baseType: !879, size: 8, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1949, file: !1950, line: 1285, baseType: !40, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1552, file: !216, line: 416, baseType: !1962, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!23, !659, !1538, !42, !5, !1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1552, file: !216, line: 419, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!23, !659, !1538, !42, !5, !5, !1558, !21}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1552, file: !216, line: 424, baseType: !1972, size: 64, offset: 448)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1975, !1538, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !26, line: 131, baseType: !289)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1552, file: !216, line: 425, baseType: !1977, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1870, !36, !36}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1552, file: !216, line: 426, baseType: !1981, size: 64, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!879, !1870, !1384}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1552, file: !216, line: 427, baseType: !1985, size: 64, offset: 640)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1870}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1552, file: !216, line: 428, baseType: !1989, size: 64, offset: 704)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!1332, !1992, !2030}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !216, line: 373, size: 384, elements: !1994)
!1994 = !{!1995, !1996, !1997, !2001, !2002, !2003, !2004}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1993, file: !216, line: 374, baseType: !659, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1993, file: !216, line: 375, baseType: !42, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1993, file: !216, line: 376, baseType: !1998, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1992, !287}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1993, file: !216, line: 377, baseType: !21, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1993, file: !216, line: 378, baseType: !23, size: 32, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1993, file: !216, line: 379, baseType: !94, size: 16, offset: 288)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !216, line: 380, baseType: !2005, size: 64, offset: 320)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !216, line: 380, size: 64, elements: !2006)
!2006 = !{!2007, !2026}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2005, file: !216, line: 386, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1950, line: 998, size: 448, elements: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2009, file: !1950, line: 999, baseType: !1870, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2009, file: !1950, line: 1000, baseType: !23, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2009, file: !1950, line: 1001, baseType: !2014, size: 320, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !56, line: 14, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !56, line: 30, size: 320, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2025}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !56, line: 31, baseType: !5, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2015, file: !56, line: 32, baseType: !21, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2015, file: !56, line: 33, baseType: !2020, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !56, line: 16, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!23, !2024, !5, !23, !21}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2015, file: !56, line: 34, baseType: !98, size: 128, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2005, file: !216, line: 395, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1332, !21}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !216, line: 69, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1552, file: !216, line: 433, baseType: !2033, size: 64, offset: 768)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!23, !1538, !1870, !1870, !144}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1552, file: !216, line: 435, baseType: !2037, size: 64, offset: 832)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!23, !1870}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1552, file: !216, line: 436, baseType: !2041, size: 64, offset: 896)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!879, !1870, !36, !36}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1552, file: !216, line: 438, baseType: !2045, size: 64, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !1870, !2048, !2048}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1552, file: !216, line: 439, baseType: !2050, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!23, !1538, !1558}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1552, file: !216, line: 442, baseType: !2054, size: 64, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!23, !2057, !659, !2535}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2059, line: 282, size: 2176, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2067, !2068, !2070, !2077, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2090, !2096, !2097, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2058, file: !2059, line: 283, baseType: !1621, size: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2058, file: !2059, line: 284, baseType: !40, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2058, file: !2059, line: 285, baseType: !848, size: 16, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2058, file: !2059, line: 286, baseType: !623, size: 320, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2058, file: !2059, line: 287, baseType: !2066, size: 8, offset: 576)
!2066 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2058, file: !2059, line: 288, baseType: !5, size: 32, offset: 608)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2058, file: !2059, line: 289, baseType: !2069, size: 64, offset: 640)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2058, file: !2059, line: 290, baseType: !2071, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2059, line: 250, size: 64, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2072, file: !2059, line: 251, baseType: !60, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2072, file: !2059, line: 257, baseType: !5, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2072, file: !2059, line: 258, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2058, file: !2059, line: 291, baseType: !2078, size: 128, offset: 768)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2059, line: 274, size: 128, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2078, file: !2059, line: 275, baseType: !2072, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2078, file: !2059, line: 276, baseType: !2072, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2058, file: !2059, line: 292, baseType: !5, size: 32, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2058, file: !2059, line: 293, baseType: !5, size: 32, offset: 928)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2058, file: !2059, line: 294, baseType: !5, size: 32, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2058, file: !2059, line: 295, baseType: !5, size: 32, offset: 992)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2058, file: !2059, line: 296, baseType: !5, size: 32, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2058, file: !2059, line: 297, baseType: !5, size: 32, offset: 1056)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2058, file: !2059, line: 298, baseType: !2089, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2058, file: !2059, line: 299, baseType: !2091, size: 64, offset: 1152)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2059, line: 269, size: 96, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2092, file: !2059, line: 270, baseType: !2072, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2092, file: !2059, line: 271, baseType: !5, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2058, file: !2059, line: 300, baseType: !517, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2058, file: !2059, line: 301, baseType: !2098, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2100, line: 40, size: 7424, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2101 = !{!2102, !2103, !2104, !2107, !2111, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2138, !2139}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2099, file: !2100, line: 41, baseType: !1975, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2099, file: !2100, line: 42, baseType: !1975, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2099, file: !2100, line: 43, baseType: !2105, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !327, line: 1453, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2099, file: !2100, line: 44, baseType: !2108, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2110, line: 74, flags: DIFlagFwdDecl)
!2110 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2099, file: !2100, line: 45, baseType: !2112, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2100, line: 45, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2099, file: !2100, line: 46, baseType: !40, size: 64, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2099, file: !2100, line: 47, baseType: !879, size: 8, offset: 384)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2099, file: !2100, line: 48, baseType: !84, size: 8, offset: 392)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2099, file: !2100, line: 49, baseType: !879, size: 8, offset: 400)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2099, file: !2100, line: 50, baseType: !879, size: 8, offset: 408)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2099, file: !2100, line: 51, baseType: !1254, size: 32, offset: 416)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2099, file: !2100, line: 52, baseType: !50, size: 32, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2099, file: !2100, line: 53, baseType: !60, size: 32, offset: 480)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2099, file: !2100, line: 54, baseType: !1180, size: 64, offset: 512)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2099, file: !2100, line: 55, baseType: !21, size: 64, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2099, file: !2100, line: 56, baseType: !21, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2099, file: !2100, line: 57, baseType: !2126, size: 64, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2100, line: 57, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2099, file: !2100, line: 58, baseType: !687, size: 256, offset: 768)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2099, file: !2100, line: 60, baseType: !23, size: 32, offset: 1024)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2099, file: !2100, line: 61, baseType: !23, size: 32, offset: 1056)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2099, file: !2100, line: 62, baseType: !1440, size: 64, offset: 1088)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2099, file: !2100, line: 65, baseType: !687, size: 256, offset: 1152)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2099, file: !2100, line: 66, baseType: !1388, size: 64, offset: 1408)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2099, file: !2100, line: 68, baseType: !2136, size: 64, offset: 1472)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2100, line: 68, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2099, file: !2100, line: 72, baseType: !879, size: 8, offset: 1536)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2099, file: !2100, line: 77, baseType: !2140, size: 5824, offset: 1600)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !158, line: 705, size: 5824, elements: !2141)
!2141 = !{!2142, !2143, !2145, !2148, !2149, !2202, !2272, !2273, !2274, !2275, !2276, !2283, !2386, !2399, !2409, !2413, !2415, !2416, !2417, !2421, !2428, !2429, !2432, !2435, !2439, !2442, !2443, !2444, !2445, !2446, !2447, !2503, !2504, !2505, !2508, !2511, !2520, !2521, !2522, !2523, !2524, !2525}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2140, file: !158, line: 706, baseType: !1434, size: 512)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2140, file: !158, line: 707, baseType: !2144, size: 64, offset: 512)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2140, file: !158, line: 709, baseType: !2146, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !158, line: 37, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2140, file: !158, line: 711, baseType: !17, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2140, file: !158, line: 712, baseType: !2150, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !158, line: 89, size: 384, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2162, !2167, !2171}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2152, file: !158, line: 90, baseType: !17, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2152, file: !158, line: 91, baseType: !1514, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2152, file: !158, line: 92, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!23, !2160, !1470}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2140)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2152, file: !158, line: 93, baseType: !2163, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!890, !2160, !2166, !1076, !1077}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2152, file: !158, line: 95, baseType: !2168, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2144}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2152, file: !158, line: 97, baseType: !2172, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !170, line: 286, size: 1472, elements: !2175)
!2175 = !{!2176, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2174, file: !170, line: 287, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!23, !2144}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2174, file: !170, line: 288, baseType: !2168, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2174, file: !170, line: 289, baseType: !2177, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2174, file: !170, line: 290, baseType: !2177, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2174, file: !170, line: 291, baseType: !2177, size: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2174, file: !170, line: 292, baseType: !2177, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2174, file: !170, line: 293, baseType: !2177, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2174, file: !170, line: 294, baseType: !2177, size: 64, offset: 448)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2174, file: !170, line: 295, baseType: !2177, size: 64, offset: 512)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2174, file: !170, line: 296, baseType: !2177, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2174, file: !170, line: 297, baseType: !2177, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2174, file: !170, line: 298, baseType: !2177, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2174, file: !170, line: 299, baseType: !2177, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2174, file: !170, line: 300, baseType: !2177, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2174, file: !170, line: 301, baseType: !2177, size: 64, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2174, file: !170, line: 302, baseType: !2177, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2174, file: !170, line: 303, baseType: !2177, size: 64, offset: 1024)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2174, file: !170, line: 304, baseType: !2177, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2174, file: !170, line: 305, baseType: !2177, size: 64, offset: 1152)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2174, file: !170, line: 306, baseType: !2177, size: 64, offset: 1216)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2174, file: !170, line: 307, baseType: !2177, size: 64, offset: 1280)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2174, file: !170, line: 308, baseType: !2177, size: 64, offset: 1344)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2174, file: !170, line: 309, baseType: !2177, size: 64, offset: 1408)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2140, file: !158, line: 714, baseType: !2203, size: 64, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2206, line: 80, size: 1344, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2271}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2205, file: !2206, line: 81, baseType: !17, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2205, file: !2206, line: 82, baseType: !17, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2205, file: !2206, line: 83, baseType: !1514, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2205, file: !2206, line: 84, baseType: !1514, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2205, file: !2206, line: 85, baseType: !1514, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2205, file: !2206, line: 87, baseType: !2214, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!23, !2144, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !152, line: 96, size: 1152, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2224, !2225, !2226, !2230, !2234, !2235, !2236, !2237, !2238, !2246, !2247, !2248, !2249, !2250, !2251}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2218, file: !152, line: 97, baseType: !17, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2218, file: !152, line: 98, baseType: !2203, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2218, file: !152, line: 100, baseType: !1421, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2218, file: !152, line: 101, baseType: !17, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2218, file: !152, line: 103, baseType: !879, size: 8, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2218, file: !152, line: 104, baseType: !151, size: 32, offset: 288)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2218, file: !152, line: 106, baseType: !2227, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !152, line: 106, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2218, file: !152, line: 107, baseType: !2231, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2233)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !152, line: 107, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2218, file: !152, line: 109, baseType: !2177, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2218, file: !152, line: 110, baseType: !2168, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2218, file: !152, line: 111, baseType: !2177, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2218, file: !152, line: 112, baseType: !2168, size: 64, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2218, file: !152, line: 113, baseType: !2239, size: 64, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!23, !2144, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !170, line: 60, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !170, line: 58, size: 32, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2243, file: !170, line: 59, baseType: !23, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2218, file: !152, line: 114, baseType: !2177, size: 64, offset: 768)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2218, file: !152, line: 115, baseType: !1514, size: 64, offset: 832)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2218, file: !152, line: 116, baseType: !1514, size: 64, offset: 896)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2218, file: !152, line: 118, baseType: !2172, size: 64, offset: 960)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2218, file: !152, line: 119, baseType: !2168, size: 64, offset: 1024)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2218, file: !152, line: 121, baseType: !2252, size: 64, offset: 1088)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !152, line: 121, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2205, file: !2206, line: 88, baseType: !2157, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2205, file: !2206, line: 89, baseType: !2177, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2205, file: !2206, line: 90, baseType: !2168, size: 64, offset: 512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2205, file: !2206, line: 91, baseType: !2168, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2205, file: !2206, line: 92, baseType: !2168, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2205, file: !2206, line: 94, baseType: !2177, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2205, file: !2206, line: 95, baseType: !2177, size: 64, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2205, file: !2206, line: 97, baseType: !2239, size: 64, offset: 832)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2205, file: !2206, line: 98, baseType: !2177, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2205, file: !2206, line: 100, baseType: !2177, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2205, file: !2206, line: 102, baseType: !2177, size: 64, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2205, file: !2206, line: 103, baseType: !2168, size: 64, offset: 1088)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2205, file: !2206, line: 105, baseType: !2172, size: 64, offset: 1152)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2205, file: !2206, line: 107, baseType: !2268, size: 64, offset: 1216)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2206, line: 107, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2205, file: !2206, line: 109, baseType: !879, size: 8, offset: 1280)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2140, file: !158, line: 715, baseType: !2217, size: 64, offset: 832)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2140, file: !158, line: 717, baseType: !21, size: 64, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2140, file: !158, line: 719, baseType: !21, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2140, file: !158, line: 721, baseType: !687, size: 256, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2140, file: !158, line: 725, baseType: !2277, size: 448, offset: 1280)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !158, line: 517, size: 448, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2277, file: !158, line: 518, baseType: !98, size: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2277, file: !158, line: 519, baseType: !98, size: 128, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2277, file: !158, line: 520, baseType: !98, size: 128, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2277, file: !158, line: 521, baseType: !157, size: 32, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2140, file: !158, line: 726, baseType: !2284, size: 2496, offset: 1728)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !170, line: 663, size: 2496, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2379, !2383}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2284, file: !170, line: 664, baseType: !2242, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2284, file: !170, line: 665, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2284, file: !170, line: 666, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2284, file: !170, line: 667, baseType: !879, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2284, file: !170, line: 668, baseType: !879, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2284, file: !170, line: 669, baseType: !879, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2284, file: !170, line: 670, baseType: !879, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2284, file: !170, line: 671, baseType: !879, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2284, file: !170, line: 672, baseType: !879, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2284, file: !170, line: 673, baseType: !879, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2284, file: !170, line: 674, baseType: !879, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2284, file: !170, line: 675, baseType: !318, size: 32, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2284, file: !170, line: 676, baseType: !60, size: 32, offset: 96)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2284, file: !170, line: 678, baseType: !98, size: 128, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2284, file: !170, line: 679, baseType: !1051, size: 256, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2284, file: !170, line: 680, baseType: !2302, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2304, line: 43, size: 1536, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2313, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2303, file: !2304, line: 44, baseType: !17, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2303, file: !2304, line: 45, baseType: !23, size: 32, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2303, file: !2304, line: 46, baseType: !98, size: 128, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2303, file: !2304, line: 47, baseType: !60, size: 32, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2303, file: !2304, line: 48, baseType: !2311, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !170, line: 629, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2303, file: !2304, line: 49, baseType: !2314, size: 320, offset: 384)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2315, line: 11, size: 320, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2316 = !{!2317, !2318, !2319, !2324}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2314, file: !2315, line: 16, baseType: !739, size: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2314, file: !2315, line: 17, baseType: !40, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2314, file: !2315, line: 18, baseType: !2320, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !2315, line: 19, baseType: !318, size: 32, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2303, file: !2304, line: 50, baseType: !40, size: 64, offset: 704)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2303, file: !2304, line: 51, baseType: !457, size: 64, offset: 768)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2303, file: !2304, line: 52, baseType: !457, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2303, file: !2304, line: 53, baseType: !457, size: 64, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2303, file: !2304, line: 54, baseType: !457, size: 64, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2303, file: !2304, line: 55, baseType: !457, size: 64, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2303, file: !2304, line: 56, baseType: !40, size: 64, offset: 1088)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2303, file: !2304, line: 57, baseType: !40, size: 64, offset: 1152)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2303, file: !2304, line: 58, baseType: !40, size: 64, offset: 1216)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2303, file: !2304, line: 59, baseType: !40, size: 64, offset: 1280)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2303, file: !2304, line: 60, baseType: !40, size: 64, offset: 1344)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2303, file: !2304, line: 61, baseType: !2144, size: 64, offset: 1408)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2303, file: !2304, line: 62, baseType: !879, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2303, file: !2304, line: 63, baseType: !879, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2284, file: !170, line: 681, baseType: !879, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2284, file: !170, line: 682, baseType: !879, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2284, file: !170, line: 683, baseType: !879, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2284, file: !170, line: 684, baseType: !5, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2284, file: !170, line: 685, baseType: !5, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2284, file: !170, line: 690, baseType: !449, size: 512, offset: 640)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2284, file: !170, line: 691, baseType: !289, size: 64, offset: 1152)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2284, file: !170, line: 692, baseType: !1012, size: 256, offset: 1216)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2284, file: !170, line: 693, baseType: !55, size: 192, offset: 1472)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2284, file: !170, line: 694, baseType: !2311, size: 64, offset: 1664)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2284, file: !170, line: 695, baseType: !50, size: 32, offset: 1728)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2284, file: !170, line: 696, baseType: !50, size: 32, offset: 1760)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2284, file: !170, line: 697, baseType: !5, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2284, file: !170, line: 698, baseType: !5, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2284, file: !170, line: 699, baseType: !5, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2284, file: !170, line: 700, baseType: !5, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2284, file: !170, line: 701, baseType: !5, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2284, file: !170, line: 702, baseType: !5, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2284, file: !170, line: 703, baseType: !879, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2284, file: !170, line: 704, baseType: !5, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2284, file: !170, line: 705, baseType: !5, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2284, file: !170, line: 706, baseType: !5, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2284, file: !170, line: 707, baseType: !5, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2284, file: !170, line: 708, baseType: !5, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2284, file: !170, line: 709, baseType: !5, size: 32, offset: 1824)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2284, file: !170, line: 710, baseType: !169, size: 32, offset: 1856)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2284, file: !170, line: 711, baseType: !177, size: 32, offset: 1888)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2284, file: !170, line: 712, baseType: !177, size: 32, offset: 1920)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2284, file: !170, line: 713, baseType: !23, size: 32, offset: 1952)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2284, file: !170, line: 714, baseType: !23, size: 32, offset: 1984)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2284, file: !170, line: 715, baseType: !289, size: 64, offset: 2048)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2284, file: !170, line: 716, baseType: !289, size: 64, offset: 2112)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2284, file: !170, line: 717, baseType: !289, size: 64, offset: 2176)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2284, file: !170, line: 718, baseType: !289, size: 64, offset: 2240)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2284, file: !170, line: 720, baseType: !2374, size: 64, offset: 2304)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !170, line: 632, size: 64, elements: !2376)
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2375, file: !170, line: 633, baseType: !60, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2375, file: !170, line: 634, baseType: !5, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2284, file: !170, line: 721, baseType: !2380, size: 64, offset: 2368)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2144, !812}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2284, file: !170, line: 722, baseType: !2384, size: 64, offset: 2432)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !170, line: 722, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2140, file: !158, line: 727, baseType: !2387, size: 64, offset: 4224)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !170, line: 742, size: 1792, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2396, !2397, !2398}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2388, file: !170, line: 743, baseType: !2174, size: 1472)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2388, file: !170, line: 744, baseType: !2177, size: 64, offset: 1472)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2388, file: !170, line: 745, baseType: !2393, size: 64, offset: 1536)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2144, !879}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2388, file: !170, line: 746, baseType: !2177, size: 64, offset: 1600)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2388, file: !170, line: 747, baseType: !2168, size: 64, offset: 1664)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2388, file: !170, line: 748, baseType: !2168, size: 64, offset: 1728)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2140, file: !158, line: 736, baseType: !2400, size: 128, offset: 4288)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !158, line: 529, size: 128, elements: !2401)
!2401 = !{!2402, !2406}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2400, file: !158, line: 531, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2405, line: 13, flags: DIFlagFwdDecl)
!2405 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2400, file: !158, line: 532, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !158, line: 49, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2140, file: !158, line: 738, baseType: !2410, size: 64, offset: 4416)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2412)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !158, line: 738, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2140, file: !158, line: 740, baseType: !2414, size: 64, offset: 4480)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2140, file: !158, line: 741, baseType: !289, size: 64, offset: 4544)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2140, file: !158, line: 746, baseType: !289, size: 64, offset: 4608)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2140, file: !158, line: 747, baseType: !2418, size: 64, offset: 4672)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !158, line: 747, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2140, file: !158, line: 749, baseType: !2422, size: 64, offset: 4736)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !158, line: 428, size: 128, elements: !2424)
!2424 = !{!2425, !2426, !2427}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2423, file: !158, line: 433, baseType: !5, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2423, file: !158, line: 434, baseType: !5, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2423, file: !158, line: 435, baseType: !40, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2140, file: !158, line: 751, baseType: !98, size: 128, offset: 4800)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2140, file: !158, line: 762, baseType: !2430, size: 64, offset: 4928)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !158, line: 762, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2140, file: !158, line: 770, baseType: !2433, offset: 4992)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2434, line: 5, elements: !652)
!2434 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2140, file: !158, line: 772, baseType: !2436, size: 64, offset: 4992)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2438, line: 18, flags: DIFlagFwdDecl)
!2438 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2140, file: !158, line: 773, baseType: !2440, size: 64, offset: 5056)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2206, line: 22, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2140, file: !158, line: 776, baseType: !23, size: 32, offset: 5120)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2140, file: !158, line: 778, baseType: !1254, size: 32, offset: 5152)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2140, file: !158, line: 779, baseType: !318, size: 32, offset: 5184)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2140, file: !158, line: 781, baseType: !60, size: 32, offset: 5216)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2140, file: !158, line: 782, baseType: !98, size: 128, offset: 5248)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2140, file: !158, line: 784, baseType: !2448, size: 64, offset: 5376)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2451, line: 52, size: 768, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2461, !2465, !2466, !2467, !2494, !2498, !2502}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2450, file: !2451, line: 53, baseType: !17, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2450, file: !2451, line: 55, baseType: !1514, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2450, file: !2451, line: 56, baseType: !1514, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2450, file: !2451, line: 58, baseType: !2157, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2450, file: !2451, line: 59, baseType: !2458, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!890, !2160, !2166}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2450, file: !2451, line: 61, baseType: !2462, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2448}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2450, file: !2451, line: 62, baseType: !2168, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2450, file: !2451, line: 64, baseType: !2177, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2450, file: !2451, line: 66, baseType: !2468, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !185, line: 39, size: 384, elements: !2471)
!2471 = !{!2472, !2473, !2477, !2481, !2489, !2493}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2470, file: !185, line: 40, baseType: !184, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2470, file: !185, line: 41, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!879}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2470, file: !185, line: 42, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!21}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2470, file: !185, line: 43, baseType: !2482, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!2485, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !185, line: 19, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2470, file: !185, line: 44, baseType: !2490, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2485}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2470, file: !185, line: 45, baseType: !1211, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2450, file: !2451, line: 67, baseType: !2495, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!2485, !2160}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2450, file: !2451, line: 69, baseType: !2499, size: 64, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !2160, !1076, !1077}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2450, file: !2451, line: 71, baseType: !2172, size: 64, offset: 704)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2140, file: !158, line: 785, baseType: !1514, size: 64, offset: 5440)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2140, file: !158, line: 787, baseType: !2168, size: 64, offset: 5504)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2140, file: !158, line: 788, baseType: !2506, size: 64, offset: 5568)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !158, line: 46, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2140, file: !158, line: 789, baseType: !2509, size: 64, offset: 5632)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !158, line: 48, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2140, file: !158, line: 791, baseType: !2512, size: 64, offset: 5696)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !158, line: 597, size: 128, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2518, !2519}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2513, file: !158, line: 598, baseType: !190, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2513, file: !158, line: 599, baseType: !199, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2513, file: !158, line: 600, baseType: !204, size: 32, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2513, file: !158, line: 601, baseType: !879, size: 8, offset: 96)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2513, file: !158, line: 602, baseType: !879, size: 8, offset: 104)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2140, file: !158, line: 793, baseType: !209, size: 32, offset: 5760)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2140, file: !158, line: 795, baseType: !879, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2140, file: !158, line: 796, baseType: !879, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2140, file: !158, line: 797, baseType: !879, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2140, file: !158, line: 798, baseType: !879, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2140, file: !158, line: 799, baseType: !879, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2058, file: !2059, line: 302, baseType: !659, size: 64, offset: 1344)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2058, file: !2059, line: 303, baseType: !5, size: 32, offset: 1408)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2058, file: !2059, line: 304, baseType: !1051, size: 256, offset: 1472)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2058, file: !2059, line: 305, baseType: !60, size: 32, offset: 1728)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2058, file: !2059, line: 318, baseType: !60, size: 32, offset: 1760)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2058, file: !2059, line: 322, baseType: !1012, size: 256, offset: 1792)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2058, file: !2059, line: 323, baseType: !2078, size: 128, offset: 2048)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2058, file: !2059, line: 324, baseType: !2534, offset: 2176)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, elements: !757)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1552, file: !216, line: 444, baseType: !2537, size: 64, offset: 1152)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !659}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1552, file: !216, line: 445, baseType: !2541, size: 64, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!23, !1992, !2030}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !216, line: 486, baseType: !40, size: 64, offset: 896)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1539, file: !216, line: 487, baseType: !820, size: 320, offset: 960)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1539, file: !216, line: 488, baseType: !2547, size: 32, offset: 1280)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2548, line: 8, baseType: !318)
!2548 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1539, file: !216, line: 489, baseType: !60, size: 32, offset: 1312)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1539, file: !216, line: 490, baseType: !98, size: 128, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1539, file: !216, line: 491, baseType: !21, size: 64, offset: 1472)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1529, file: !1498, line: 180, baseType: !2553, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!1332, !659, !1440, !1528, !890, !42, !36}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1529, file: !1498, line: 182, baseType: !2553, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1529, file: !1498, line: 184, baseType: !2558, size: 64, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!23, !659, !1440, !1528, !1667}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1517, file: !1498, line: 90, baseType: !2562, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1517, file: !1498, line: 91, baseType: !2564, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1488, file: !1435, line: 120, baseType: !2566, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2468, !1458}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1488, file: !1435, line: 121, baseType: !2570, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2485, !1458}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1488, file: !1435, line: 122, baseType: !2574, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !1458, !1076, !1077}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1434, file: !1435, line: 70, baseType: !2578, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2580, line: 190, size: 1152, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2703, !2704, !2705, !2706, !2707, !2710}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2579, file: !2580, line: 191, baseType: !50, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2579, file: !2580, line: 192, baseType: !50, size: 32, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2579, file: !2580, line: 202, baseType: !2578, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2579, file: !2580, line: 203, baseType: !17, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2579, file: !2580, line: 205, baseType: !377, size: 192, align: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2579, file: !2580, line: 207, baseType: !2485, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2579, file: !2580, line: 208, baseType: !5, size: 32, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2579, file: !2580, line: 209, baseType: !2590, size: 256, offset: 512)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2579, file: !2580, line: 209, size: 256, elements: !2591)
!2591 = !{!2592, !2601, !2605}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2590, file: !2580, line: 210, baseType: !2593, size: 256)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2580, line: 153, size: 256, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2600}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2593, file: !2580, line: 154, baseType: !40, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2593, file: !2580, line: 156, baseType: !517, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2593, file: !2580, line: 162, baseType: !2598, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2580, line: 162, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2593, file: !2580, line: 167, baseType: !40, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2590, file: !2580, line: 211, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2580, line: 170, size: 64, elements: !2603)
!2603 = !{!2604}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2602, file: !2580, line: 171, baseType: !2578, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2590, file: !2580, line: 212, baseType: !2606, size: 256)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2580, line: 174, size: 256, elements: !2607)
!2607 = !{!2608, !2698, !2701, !2702}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2606, file: !2580, line: 175, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2611)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2580, line: 271, size: 768, elements: !2612)
!2612 = !{!2613, !2671, !2675, !2676, !2677, !2678, !2679, !2683, !2684, !2685, !2686, !2694}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2611, file: !2580, line: 276, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!23, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2580, line: 251, size: 1216, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2618, file: !2580, line: 253, baseType: !2578, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2618, file: !2580, line: 254, baseType: !659, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2618, file: !2580, line: 255, baseType: !2623, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2625, line: 17, size: 960, elements: !2626)
!2625 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2656, !2657, !2660}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2624, file: !2625, line: 18, baseType: !890, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2624, file: !2625, line: 19, baseType: !36, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2624, file: !2625, line: 20, baseType: !36, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2624, file: !2625, line: 21, baseType: !36, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2624, file: !2625, line: 22, baseType: !36, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2624, file: !2625, line: 23, baseType: !42, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2624, file: !2625, line: 24, baseType: !42, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2624, file: !2625, line: 25, baseType: !687, size: 256, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2624, file: !2625, line: 26, baseType: !2636, size: 64, offset: 704)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2638)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2625, line: 32, size: 256, elements: !2639)
!2639 = !{!2640, !2644, !2648, !2652}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2638, file: !2625, line: 33, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!21, !2623, !41}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2638, file: !2625, line: 34, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2623, !21}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2638, file: !2625, line: 35, baseType: !2649, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!21, !2623, !21, !41}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2638, file: !2625, line: 36, baseType: !2653, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!23, !2623, !21}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2624, file: !2625, line: 27, baseType: !23, size: 32, offset: 768)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2624, file: !2625, line: 28, baseType: !2658, size: 64, offset: 832)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2624, file: !2625, line: 29, baseType: !21, size: 64, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2618, file: !2580, line: 256, baseType: !21, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2618, file: !2580, line: 259, baseType: !687, size: 256, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2618, file: !2580, line: 260, baseType: !687, size: 256, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2618, file: !2580, line: 261, baseType: !23, size: 32, offset: 768)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2618, file: !2580, line: 262, baseType: !98, size: 128, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2618, file: !2580, line: 263, baseType: !890, size: 64, offset: 960)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2618, file: !2580, line: 265, baseType: !36, size: 64, offset: 1024)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2618, file: !2580, line: 266, baseType: !879, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2618, file: !2580, line: 267, baseType: !879, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2618, file: !2580, line: 268, baseType: !1710, size: 64, offset: 1152)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2611, file: !2580, line: 277, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !2617}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2611, file: !2580, line: 290, baseType: !2653, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2611, file: !2580, line: 292, baseType: !2641, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2611, file: !2580, line: 293, baseType: !2649, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2611, file: !2580, line: 294, baseType: !2645, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2611, file: !2580, line: 296, baseType: !2680, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!1332, !2617, !890, !36, !42}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2611, file: !2580, line: 306, baseType: !36, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2611, file: !2580, line: 313, baseType: !879, size: 8, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2611, file: !2580, line: 314, baseType: !2680, size: 64, offset: 576)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2611, file: !2580, line: 317, baseType: !2687, size: 64, offset: 640)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2690, !2617, !2692}
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2691, line: 59, baseType: !5)
!2691 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !216, line: 61, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2611, file: !2580, line: 320, baseType: !2695, size: 64, offset: 704)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!23, !2617, !1667}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2606, file: !2580, line: 176, baseType: !2699, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2580, line: 35, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2606, file: !2580, line: 177, baseType: !42, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2606, file: !2580, line: 178, baseType: !2578, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2579, file: !2580, line: 215, baseType: !21, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2579, file: !2580, line: 221, baseType: !289, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !2580, line: 223, baseType: !27, size: 16, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2579, file: !2580, line: 224, baseType: !25, size: 16, offset: 912)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2579, file: !2580, line: 225, baseType: !2708, size: 64, offset: 960)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2580, line: 36, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2579, file: !2580, line: 227, baseType: !667, size: 128, align: 64, offset: 1024)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1434, file: !1435, line: 71, baseType: !2712, size: 32, offset: 448)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2713, line: 19, size: 32, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2712, file: !2713, line: 20, baseType: !333, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1434, file: !1435, line: 73, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1434, file: !1435, line: 74, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1434, file: !1435, line: 75, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1434, file: !1435, line: 76, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1434, file: !1435, line: 77, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1431, file: !109, line: 47, baseType: !1421, size: 64, offset: 512)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1431, file: !109, line: 48, baseType: !1440, size: 64, offset: 576)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1431, file: !109, line: 49, baseType: !2724, size: 64, offset: 640)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !109, line: 49, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1431, file: !109, line: 50, baseType: !1050, size: 64, offset: 704)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1422, file: !109, line: 418, baseType: !2728, size: 64, offset: 1408)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !109, line: 53, size: 448, elements: !2730)
!2730 = !{!2731, !2732, !2737, !2741, !2745, !2749}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2729, file: !109, line: 54, baseType: !1505, size: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2729, file: !109, line: 55, baseType: !2733, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!1332, !2728, !2736, !890}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2729, file: !109, line: 57, baseType: !2738, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!1332, !2728, !2736, !17, !36}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2729, file: !109, line: 59, baseType: !2742, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !1421, !17}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2729, file: !109, line: 60, baseType: !2746, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!23, !1421}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2729, file: !109, line: 61, baseType: !2750, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !1421}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1422, file: !109, line: 419, baseType: !17, size: 64, offset: 1472)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1422, file: !109, line: 420, baseType: !17, size: 64, offset: 1536)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1422, file: !109, line: 421, baseType: !1440, size: 64, offset: 1600)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1422, file: !109, line: 424, baseType: !2757, size: 64, offset: 1664)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2759)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !109, line: 424, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1422, file: !109, line: 425, baseType: !2761, size: 64, offset: 1728)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1422, file: !109, line: 426, baseType: !5, size: 32, offset: 1792)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1422, file: !109, line: 435, baseType: !687, size: 256, offset: 1856)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1422, file: !109, line: 437, baseType: !2766, size: 64, offset: 2112)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2768, line: 69, size: 320, elements: !2769)
!2768 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2769 = !{!2770, !2771, !2772, !2789, !2791, !2794, !2795}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2767, file: !2768, line: 70, baseType: !17, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2767, file: !2768, line: 71, baseType: !1421, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2767, file: !2768, line: 72, baseType: !2773, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2768, line: 47, size: 256, elements: !2776)
!2776 = !{!2777, !2778, !2784, !2788}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2775, file: !2768, line: 49, baseType: !5, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2775, file: !2768, line: 51, baseType: !2779, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!23, !17, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2775, file: !2768, line: 53, baseType: !2785, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!23, !890, !2782}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2775, file: !2768, line: 55, baseType: !1211, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2767, file: !2768, line: 73, baseType: !2790, size: 16, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2767, file: !2768, line: 74, baseType: !2792, size: 8, offset: 208)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !85, line: 16, baseType: !2793)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !87, line: 20, baseType: !2066)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2767, file: !2768, line: 75, baseType: !84, size: 8, offset: 216)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !2767, file: !2768, line: 76, baseType: !2796, size: 64, offset: 256)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2767, file: !2768, line: 76, size: 64, elements: !2797)
!2797 = !{!2798, !2799, !2806}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2796, file: !2768, line: 77, baseType: !21, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2796, file: !2768, line: 78, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2802)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2768, line: 86, size: 128, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2802, file: !2768, line: 87, baseType: !5, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2802, file: !2768, line: 88, baseType: !890, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2796, file: !2768, line: 79, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2768, line: 92, size: 256, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814, !2815}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2809, file: !2768, line: 94, baseType: !5, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2809, file: !2768, line: 95, baseType: !5, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2809, file: !2768, line: 96, baseType: !2089, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2809, file: !2768, line: 97, baseType: !2773, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2809, file: !2768, line: 98, baseType: !21, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1422, file: !109, line: 438, baseType: !5, size: 32, offset: 2176)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1422, file: !109, line: 441, baseType: !5, size: 32, offset: 2208)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1422, file: !109, line: 442, baseType: !2757, size: 64, offset: 2240)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1422, file: !109, line: 443, baseType: !2761, size: 64, offset: 2304)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1422, file: !109, line: 444, baseType: !879, size: 8, offset: 2368)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1422, file: !109, line: 451, baseType: !879, size: 8, offset: 2376)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1422, file: !109, line: 454, baseType: !5, size: 32, offset: 2400)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1422, file: !109, line: 455, baseType: !2824, size: 64, offset: 2432)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2826, line: 23, size: 96, elements: !2827)
!2826 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2827 = !{!2828, !2829, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2825, file: !2826, line: 24, baseType: !23, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2825, file: !2826, line: 24, baseType: !23, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2825, file: !2826, line: 24, baseType: !23, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1422, file: !109, line: 458, baseType: !2832, size: 64, offset: 2496)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!23}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1422, file: !109, line: 460, baseType: !2836, size: 4032, align: 512, offset: 2560)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2837, size: 4032, elements: !2853)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !109, line: 362, size: 576, elements: !2838)
!2838 = !{!2839, !2840, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2837, file: !109, line: 363, baseType: !21, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2837, file: !109, line: 364, baseType: !5, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2837, file: !109, line: 367, baseType: !2842, size: 448, offset: 128)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !109, line: 319, size: 448, elements: !2843)
!2843 = !{!2844, !2845}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2842, file: !109, line: 320, baseType: !1421, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2842, file: !109, line: 321, baseType: !2846, size: 384, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2847, line: 40, size: 384, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2846, file: !2847, line: 41, baseType: !2850, size: 384, align: 64)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 384, align: 64, elements: !2851)
!2851 = !{!2852}
!2852 = !DISubrange(count: 2)
!2853 = !{!2854}
!2854 = !DISubrange(count: 7)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1422, file: !109, line: 463, baseType: !2856, size: 192, offset: 6592)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2857, line: 8, size: 192, elements: !2858)
!2857 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2858 = !{!2859, !2860, !2862}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2856, file: !2857, line: 10, baseType: !5, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2856, file: !2857, line: 11, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2856, file: !2857, line: 12, baseType: !2863, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2865, line: 59, size: 48, elements: !2866)
!2865 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2866 = !{!2867, !2870, !2871, !2872, !2873, !2874}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2864, file: !2865, line: 60, baseType: !2868, size: 16)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !85, line: 18, baseType: !2869)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !87, line: 23, baseType: !848)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2864, file: !2865, line: 61, baseType: !2868, size: 16, offset: 16)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2864, file: !2865, line: 63, baseType: !5, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2864, file: !2865, line: 64, baseType: !5, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2864, file: !2865, line: 65, baseType: !5, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2864, file: !2865, line: 66, baseType: !5, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1422, file: !109, line: 465, baseType: !40, size: 64, offset: 6784)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1422, file: !109, line: 469, baseType: !5, size: 32, offset: 6848)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1422, file: !109, line: 470, baseType: !98, size: 128, offset: 6912)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1422, file: !109, line: 471, baseType: !2879, size: 64, offset: 7040)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2881, line: 33, size: 96, elements: !2882)
!2881 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2882 = !{!2883, !2884, !2885, !2886}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2880, file: !2881, line: 37, baseType: !23, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2880, file: !2881, line: 43, baseType: !23, size: 32, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2880, file: !2881, line: 45, baseType: !27, size: 16, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2880, file: !2881, line: 47, baseType: !27, size: 16, offset: 80)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1422, file: !109, line: 476, baseType: !2888, size: 64, offset: 7104)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !109, line: 378, size: 256, elements: !2890)
!2890 = !{!2891, !2907, !2908, !2909}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2889, file: !109, line: 379, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2894, line: 204, baseType: !2895)
!2894 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2894, line: 197, size: 192, elements: !2896)
!2896 = !{!2897, !2899, !2900, !2901, !2903, !2905}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2895, file: !2894, line: 198, baseType: !2898, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2894, line: 21, baseType: !319)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2895, file: !2894, line: 199, baseType: !88, size: 8, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2895, file: !2894, line: 200, baseType: !88, size: 8, offset: 40)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2895, file: !2894, line: 201, baseType: !2902, size: 16, offset: 48)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2894, line: 17, baseType: !95)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2895, file: !2894, line: 202, baseType: !2904, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2894, line: 16, baseType: !290)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2895, file: !2894, line: 203, baseType: !2906, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2894, line: 22, baseType: !290)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2889, file: !109, line: 380, baseType: !5, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2889, file: !109, line: 381, baseType: !890, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2889, file: !109, line: 382, baseType: !890, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1422, file: !109, line: 477, baseType: !2889, size: 256, offset: 7168)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1422, file: !109, line: 480, baseType: !2912, size: 64, offset: 7424)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !109, line: 480, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1422, file: !109, line: 483, baseType: !2915, size: 64, offset: 7488)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !109, line: 483, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1422, file: !109, line: 488, baseType: !890, size: 64, offset: 7552)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1422, file: !109, line: 492, baseType: !21, size: 64, offset: 7616)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1422, file: !109, line: 493, baseType: !5, size: 32, offset: 7680)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1422, file: !109, line: 495, baseType: !21, size: 64, offset: 7744)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1422, file: !109, line: 496, baseType: !5, size: 32, offset: 7808)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1422, file: !109, line: 499, baseType: !5, size: 32, offset: 7840)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1422, file: !109, line: 500, baseType: !2924, size: 64, offset: 7872)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2926, line: 45, baseType: !2927)
!2926 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1422, file: !109, line: 503, baseType: !5, size: 32, offset: 7936)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1422, file: !109, line: 504, baseType: !2930, size: 64, offset: 8000)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2933, line: 96, size: 192, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2934 = !{!2935, !2936, !2978, !2981}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2932, file: !2933, line: 97, baseType: !5, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2932, file: !2933, line: 98, baseType: !2937, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2933, line: 24, size: 3072, elements: !2939)
!2939 = !{!2940, !2942, !2943, !2944, !2945, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2975, !2976, !2977}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2938, file: !2933, line: 26, baseType: !2941, size: 128)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 128, elements: !2851)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2938, file: !2933, line: 27, baseType: !2941, size: 128, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2938, file: !2933, line: 28, baseType: !23, size: 32, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2938, file: !2933, line: 31, baseType: !60, size: 32, align: 512, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2938, file: !2933, line: 32, baseType: !2946, size: 960, offset: 576)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2947, line: 206, size: 960, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2948 = !{!2949, !2950, !2953, !2955, !2956, !2957}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2946, file: !2947, line: 207, baseType: !670, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2946, file: !2947, line: 208, baseType: !2951, size: 256, offset: 64)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2952, size: 256, elements: !744)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2946, file: !2947, line: 209, baseType: !2954, size: 256, offset: 320)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !744)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2946, file: !2947, line: 213, baseType: !287, size: 64, offset: 576)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2946, file: !2947, line: 215, baseType: !1111, size: 256, offset: 640)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2946, file: !2947, line: 216, baseType: !84, size: 8, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2938, file: !2933, line: 33, baseType: !40, size: 64, offset: 1536)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2938, file: !2933, line: 34, baseType: !40, size: 64, offset: 1600)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2938, file: !2933, line: 35, baseType: !879, size: 8, offset: 1664)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2938, file: !2933, line: 36, baseType: !2314, size: 320, offset: 1728)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2938, file: !2933, line: 37, baseType: !1012, size: 256, offset: 2048)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2938, file: !2933, line: 38, baseType: !667, size: 128, align: 64, offset: 2304)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2938, file: !2933, line: 39, baseType: !2965, size: 64, offset: 2432)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2933, line: 49, size: 768, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2966, file: !2933, line: 50, baseType: !60, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2966, file: !2933, line: 51, baseType: !2954, size: 256, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2966, file: !2933, line: 53, baseType: !2954, size: 256, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2966, file: !2933, line: 54, baseType: !40, size: 64, offset: 576)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2966, file: !2933, line: 55, baseType: !2965, size: 64, offset: 640)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2966, file: !2933, line: 56, baseType: !23, size: 32, offset: 704)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2966, file: !2933, line: 57, baseType: !23, size: 32, offset: 736)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2938, file: !2933, line: 40, baseType: !40, size: 64, offset: 2496)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2938, file: !2933, line: 42, baseType: !23, size: 32, offset: 2560)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2938, file: !2933, line: 43, baseType: !2931, size: 64, offset: 2624)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2932, file: !2933, line: 99, baseType: !2979, offset: 128)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2980, line: 211, elements: !652)
!2980 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2932, file: !2933, line: 100, baseType: !2982, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2933, line: 63, size: 3008, elements: !2984)
!2984 = !{!2985, !2986, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3016}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2983, file: !2933, line: 64, baseType: !2965, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2983, file: !2933, line: 65, baseType: !2987, size: 192, offset: 64)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2965, size: 192, elements: !723)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2983, file: !2933, line: 67, baseType: !23, size: 32, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2983, file: !2933, line: 68, baseType: !687, size: 256, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2983, file: !2933, line: 69, baseType: !60, size: 32, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2983, file: !2933, line: 70, baseType: !687, size: 256, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2983, file: !2933, line: 71, baseType: !40, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2983, file: !2933, line: 72, baseType: !40, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2983, file: !2933, line: 73, baseType: !40, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2983, file: !2933, line: 74, baseType: !40, size: 64, offset: 1088)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2983, file: !2933, line: 75, baseType: !40, size: 64, offset: 1152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2983, file: !2933, line: 76, baseType: !40, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2983, file: !2933, line: 77, baseType: !40, size: 64, offset: 1280)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2983, file: !2933, line: 78, baseType: !40, size: 64, offset: 1344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2983, file: !2933, line: 79, baseType: !879, size: 8, offset: 1408)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2983, file: !2933, line: 80, baseType: !40, size: 64, offset: 1472)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2983, file: !2933, line: 81, baseType: !687, size: 256, offset: 1536)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2983, file: !2933, line: 82, baseType: !1051, size: 256, offset: 1792)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2983, file: !2933, line: 84, baseType: !50, size: 32, offset: 2048)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2983, file: !2933, line: 87, baseType: !40, size: 64, offset: 2112)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2983, file: !2933, line: 88, baseType: !40, size: 64, offset: 2176)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2983, file: !2933, line: 89, baseType: !3008, size: 704, offset: 2240)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1013, line: 111, size: 704, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3015}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3008, file: !1013, line: 112, baseType: !1012, size: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3008, file: !1013, line: 113, baseType: !2314, size: 320, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3008, file: !1013, line: 116, baseType: !3013, size: 64, offset: 576)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1013, line: 18, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3008, file: !1013, line: 117, baseType: !23, size: 32, offset: 640)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2983, file: !2933, line: 90, baseType: !2931, size: 64, offset: 2944)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1422, file: !109, line: 515, baseType: !3018, size: 64, offset: 8064)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3020, line: 117, size: 128, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3019, file: !3020, line: 118, baseType: !812, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3019, file: !3020, line: 119, baseType: !812, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3019, file: !3020, line: 120, baseType: !287, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1422, file: !109, line: 516, baseType: !5, size: 32, offset: 8128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1422, file: !109, line: 519, baseType: !5, size: 32, offset: 8160)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1422, file: !109, line: 520, baseType: !3028, size: 64, offset: 8192)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1422, file: !109, line: 523, baseType: !3030, size: 64, offset: 8256)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !109, line: 523, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1422, file: !109, line: 524, baseType: !5, size: 32, offset: 8320)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1422, file: !109, line: 525, baseType: !3035, size: 64, offset: 8384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !109, line: 525, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1422, file: !109, line: 526, baseType: !5, size: 32, offset: 8448)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1422, file: !109, line: 533, baseType: !21, size: 64, offset: 8512)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1422, file: !109, line: 534, baseType: !5, size: 32, offset: 8576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1422, file: !109, line: 535, baseType: !284, size: 64, offset: 8640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1422, file: !109, line: 536, baseType: !5, size: 32, offset: 8704)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1422, file: !109, line: 539, baseType: !23, size: 32, offset: 8736)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1422, file: !109, line: 540, baseType: !3045, size: 64, offset: 8768)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3047, line: 32, size: 64, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3046, file: !3047, line: 33, baseType: !812, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3046, file: !3047, line: 34, baseType: !812, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1422, file: !109, line: 563, baseType: !98, size: 128, offset: 8832)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1422, file: !109, line: 565, baseType: !98, size: 128, offset: 8960)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1422, file: !109, line: 568, baseType: !3054, size: 64, offset: 9088)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1422, file: !109, line: 570, baseType: !50, size: 32, offset: 9152)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1398, file: !216, line: 2382, baseType: !1397, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1398, file: !216, line: 2383, baseType: !735, size: 64, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1398, file: !216, line: 2385, baseType: !3061, offset: 576)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2980, line: 206, elements: !652)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1398, file: !216, line: 2386, baseType: !3061, offset: 576)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1398, file: !216, line: 2387, baseType: !3061, offset: 576)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1398, file: !216, line: 2388, baseType: !3065, offset: 576)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3061, elements: !723)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1398, file: !216, line: 2390, baseType: !3061, offset: 576)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1398, file: !216, line: 2391, baseType: !3061, offset: 576)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1398, file: !216, line: 2392, baseType: !3061, offset: 576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1398, file: !216, line: 2393, baseType: !3061, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1389, file: !216, line: 1197, baseType: !3071, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !216, line: 2057, size: 1664, elements: !3074)
!3074 = !{!3075, !3079, !3083, !3084, !3088, !3092, !3096, !3097, !3098, !3102, !3106, !3110, !3111, !3112, !3118, !3122, !3123, !3127, !3128, !3129, !3130, !3134, !3138, !3185, !3200, !3201}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3073, file: !216, line: 2058, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!1180, !1388}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3073, file: !216, line: 2059, baseType: !3080, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !1180}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3073, file: !216, line: 2060, baseType: !3080, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3073, file: !216, line: 2062, baseType: !3085, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !1180, !23}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3073, file: !216, line: 2063, baseType: !3089, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!23, !1180, !1846}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3073, file: !216, line: 2064, baseType: !3093, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!23, !1180}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3073, file: !216, line: 2065, baseType: !3080, size: 64, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3073, file: !216, line: 2066, baseType: !1417, size: 64, offset: 448)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3073, file: !216, line: 2067, baseType: !3099, size: 64, offset: 512)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!23, !1388, !23}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3073, file: !216, line: 2068, baseType: !3103, size: 64, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!23, !1388, !215}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3073, file: !216, line: 2069, baseType: !3107, size: 64, offset: 640)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!23, !1388}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3073, file: !216, line: 2070, baseType: !3103, size: 64, offset: 704)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3073, file: !216, line: 2071, baseType: !3107, size: 64, offset: 768)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3073, file: !216, line: 2072, baseType: !3113, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!23, !1145, !3116}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !216, line: 62, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3073, file: !216, line: 2073, baseType: !3119, size: 64, offset: 896)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!23, !1388, !2861, !890}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3073, file: !216, line: 2074, baseType: !1417, size: 64, offset: 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3073, file: !216, line: 2076, baseType: !3124, size: 64, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!23, !2623, !1145}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3073, file: !216, line: 2077, baseType: !3124, size: 64, offset: 1088)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3073, file: !216, line: 2078, baseType: !3124, size: 64, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3073, file: !216, line: 2079, baseType: !3124, size: 64, offset: 1216)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3073, file: !216, line: 2081, baseType: !3131, size: 64, offset: 1280)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!1332, !1388, !23, !890, !36, !42}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3073, file: !216, line: 2082, baseType: !3135, size: 64, offset: 1344)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!1332, !1388, !23, !17, !36, !42}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3073, file: !216, line: 2083, baseType: !3139, size: 64, offset: 1408)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!3142, !1180}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !221, line: 296, size: 1664, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3170, !3171, !3172}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3144, file: !221, line: 297, baseType: !739, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3144, file: !221, line: 298, baseType: !98, size: 128, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3144, file: !221, line: 299, baseType: !98, size: 128, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3144, file: !221, line: 300, baseType: !98, size: 128, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3144, file: !221, line: 301, baseType: !687, size: 256, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3144, file: !221, line: 302, baseType: !60, size: 32, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3144, file: !221, line: 303, baseType: !50, size: 32, offset: 800)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3144, file: !221, line: 304, baseType: !1388, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3144, file: !221, line: 305, baseType: !3155, size: 64, offset: 896)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !221, line: 68, size: 64, elements: !3156)
!3156 = !{!3157, !3169}
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !221, line: 69, baseType: !3158, size: 32)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3155, file: !221, line: 69, size: 32, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3158, file: !221, line: 70, baseType: !761, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3158, file: !221, line: 71, baseType: !779, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3158, file: !221, line: 72, baseType: !3163, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3164, line: 24, baseType: !3165)
!3164 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3164, line: 22, size: 32, elements: !3166)
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3165, file: !3164, line: 23, baseType: !3168, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3164, line: 20, baseType: !767)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3155, file: !221, line: 74, baseType: !220, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3144, file: !221, line: 306, baseType: !42, size: 64, offset: 960)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3144, file: !221, line: 307, baseType: !40, size: 64, offset: 1024)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3144, file: !221, line: 308, baseType: !3173, size: 576, offset: 1088)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !221, line: 205, size: 576, elements: !3174)
!3174 = !{!3175, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3173, file: !221, line: 206, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !221, line: 66, baseType: !44)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3173, file: !221, line: 207, baseType: !3176, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3173, file: !221, line: 208, baseType: !3176, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3173, file: !221, line: 209, baseType: !3176, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3173, file: !221, line: 210, baseType: !3176, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3173, file: !221, line: 211, baseType: !3176, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3173, file: !221, line: 212, baseType: !3176, size: 64, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3173, file: !221, line: 213, baseType: !836, size: 64, offset: 448)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3173, file: !221, line: 214, baseType: !836, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3073, file: !216, line: 2085, baseType: !3186, size: 64, offset: 1472)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!287, !1388, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3191, line: 15, size: 256, elements: !3192)
!3191 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3192 = !{!3193, !3194, !3195, !3196, !3197}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3190, file: !3191, line: 16, baseType: !1384, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3190, file: !3191, line: 19, baseType: !23, size: 32, offset: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3190, file: !3191, line: 26, baseType: !40, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3190, file: !3191, line: 33, baseType: !40, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3190, file: !3191, line: 36, baseType: !3198, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !124, line: 33, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3073, file: !216, line: 2087, baseType: !3186, size: 64, offset: 1536)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3073, file: !216, line: 2089, baseType: !1417, size: 64, offset: 1600)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1389, file: !216, line: 1198, baseType: !3203, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3205)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !221, line: 324, size: 704, elements: !3206)
!3206 = !{!3207, !3211, !3215, !3219, !3220, !3221, !3222, !3223, !3228, !3233, !3237}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3205, file: !221, line: 325, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!23, !3143}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3205, file: !221, line: 326, baseType: !3212, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3143, !1388, !23}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3205, file: !221, line: 327, baseType: !3216, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3143}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3205, file: !221, line: 328, baseType: !3208, size: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3205, file: !221, line: 329, baseType: !3208, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3205, file: !221, line: 330, baseType: !3208, size: 64, offset: 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3205, file: !221, line: 331, baseType: !3099, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3205, file: !221, line: 334, baseType: !3224, size: 64, offset: 448)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!3227, !1180}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3205, file: !221, line: 335, baseType: !3229, size: 64, offset: 512)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!23, !1180, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3205, file: !221, line: 337, baseType: !3234, size: 64, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!23, !1180, !3227}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3205, file: !221, line: 339, baseType: !3238, size: 64, offset: 640)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!23, !1388, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1389, file: !216, line: 1199, baseType: !3243, size: 64, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !221, line: 430, size: 704, elements: !3246)
!3246 = !{!3247, !3251, !3252, !3256, !3257, !3258, !3273, !3296, !3300, !3301, !3324}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3245, file: !221, line: 431, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!23, !1388, !23, !23, !1301}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3245, file: !221, line: 432, baseType: !3099, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3245, file: !221, line: 433, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!23, !1388, !5}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3245, file: !221, line: 434, baseType: !3253, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3245, file: !221, line: 435, baseType: !3099, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3245, file: !221, line: 436, baseType: !3259, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!23, !1388, !23, !3262}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !221, line: 417, size: 256, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3263, file: !221, line: 418, baseType: !23, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3263, file: !221, line: 419, baseType: !5, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3263, file: !221, line: 420, baseType: !5, size: 32, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3263, file: !221, line: 422, baseType: !5, size: 32, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3263, file: !221, line: 423, baseType: !5, size: 32, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3263, file: !221, line: 424, baseType: !5, size: 32, offset: 160)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3263, file: !221, line: 425, baseType: !5, size: 32, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3263, file: !221, line: 426, baseType: !5, size: 32, offset: 224)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3245, file: !221, line: 437, baseType: !3274, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!23, !1388, !3155, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !221, line: 345, size: 960, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3278, file: !221, line: 346, baseType: !23, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3278, file: !221, line: 347, baseType: !289, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3278, file: !221, line: 348, baseType: !289, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3278, file: !221, line: 349, baseType: !289, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3278, file: !221, line: 350, baseType: !289, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3278, file: !221, line: 351, baseType: !289, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3278, file: !221, line: 352, baseType: !289, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3278, file: !221, line: 353, baseType: !393, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3278, file: !221, line: 355, baseType: !393, size: 64, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3278, file: !221, line: 356, baseType: !23, size: 32, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3278, file: !221, line: 357, baseType: !23, size: 32, offset: 608)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3278, file: !221, line: 358, baseType: !289, size: 64, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3278, file: !221, line: 359, baseType: !289, size: 64, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3278, file: !221, line: 360, baseType: !289, size: 64, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3278, file: !221, line: 361, baseType: !393, size: 64, offset: 832)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3278, file: !221, line: 362, baseType: !23, size: 32, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3245, file: !221, line: 438, baseType: !3297, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!23, !1388, !3241, !3277}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3245, file: !221, line: 440, baseType: !3274, size: 64, offset: 512)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3245, file: !221, line: 441, baseType: !3302, size: 64, offset: 576)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!23, !1388, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !221, line: 411, size: 1408, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3306, file: !221, line: 412, baseType: !5, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3306, file: !221, line: 413, baseType: !3310, size: 1344, offset: 64)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3311, size: 1344, elements: !723)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !221, line: 397, size: 448, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3323}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !221, line: 398, baseType: !5, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3311, file: !221, line: 399, baseType: !5, size: 32, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3311, file: !221, line: 401, baseType: !5, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3311, file: !221, line: 402, baseType: !5, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3311, file: !221, line: 403, baseType: !5, size: 32, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3311, file: !221, line: 404, baseType: !5, size: 32, offset: 160)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3311, file: !221, line: 405, baseType: !5, size: 32, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3311, file: !221, line: 406, baseType: !291, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3311, file: !221, line: 407, baseType: !3322, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !26, line: 132, baseType: !289)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3311, file: !221, line: 408, baseType: !3322, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3245, file: !221, line: 442, baseType: !3253, size: 64, offset: 640)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1389, file: !216, line: 1200, baseType: !3326, size: 64, offset: 576)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !216, line: 54, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1389, file: !216, line: 1201, baseType: !40, size: 64, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1389, file: !216, line: 1202, baseType: !40, size: 64, offset: 704)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1389, file: !216, line: 1203, baseType: !40, size: 64, offset: 768)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1389, file: !216, line: 1204, baseType: !1145, size: 64, offset: 832)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1389, file: !216, line: 1205, baseType: !820, size: 320, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1389, file: !216, line: 1206, baseType: !23, size: 32, offset: 1216)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1389, file: !216, line: 1207, baseType: !50, size: 32, offset: 1248)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1389, file: !216, line: 1209, baseType: !21, size: 64, offset: 1280)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1389, file: !216, line: 1211, baseType: !3338, size: 64, offset: 1344)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3341)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !216, line: 1211, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1389, file: !216, line: 1223, baseType: !3343, size: 64, offset: 1408)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1157, line: 34, size: 64, elements: !3344)
!3344 = !{!3345}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3343, file: !1157, line: 35, baseType: !1160, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1389, file: !216, line: 1224, baseType: !98, size: 128, offset: 1472)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1389, file: !216, line: 1225, baseType: !2098, size: 64, offset: 1600)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1389, file: !216, line: 1226, baseType: !3349, size: 64, offset: 1664)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !216, line: 1226, flags: DIFlagFwdDecl)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1389, file: !216, line: 1227, baseType: !3352, size: 64, offset: 1728)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !227, line: 163, size: 6848, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3402, !3403, !3404, !3405, !3407, !3408, !3409}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3353, file: !227, line: 164, baseType: !289, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3353, file: !227, line: 165, baseType: !377, size: 192, align: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3353, file: !227, line: 166, baseType: !98, size: 128, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3353, file: !227, line: 167, baseType: !40, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3353, file: !227, line: 168, baseType: !40, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3353, file: !227, line: 170, baseType: !2712, size: 32, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3353, file: !227, line: 171, baseType: !5, size: 32, offset: 544)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3353, file: !227, line: 172, baseType: !5, size: 32, offset: 576)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3353, file: !227, line: 173, baseType: !5, size: 32, offset: 608)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3353, file: !227, line: 173, baseType: !5, size: 32, offset: 640)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3353, file: !227, line: 179, baseType: !680, size: 64, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3353, file: !227, line: 184, baseType: !40, size: 64, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3353, file: !227, line: 186, baseType: !3368, size: 4672, offset: 832)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !227, line: 105, size: 4672, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3368, file: !227, line: 106, baseType: !3352, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3368, file: !227, line: 108, baseType: !40, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3368, file: !227, line: 109, baseType: !40, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3368, file: !227, line: 111, baseType: !98, size: 128, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3368, file: !227, line: 112, baseType: !98, size: 128, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3368, file: !227, line: 113, baseType: !98, size: 128, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3368, file: !227, line: 114, baseType: !98, size: 128, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3368, file: !227, line: 115, baseType: !60, size: 32, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3368, file: !227, line: 117, baseType: !50, size: 32, offset: 736)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3368, file: !227, line: 118, baseType: !3380, size: 1280, offset: 768)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 1280, elements: !744)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3368, file: !227, line: 120, baseType: !40, size: 64, offset: 2048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3368, file: !227, line: 121, baseType: !40, size: 64, offset: 2112)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3368, file: !227, line: 122, baseType: !40, size: 64, offset: 2176)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3368, file: !227, line: 123, baseType: !40, size: 64, offset: 2240)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3368, file: !227, line: 124, baseType: !40, size: 64, offset: 2304)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3368, file: !227, line: 132, baseType: !40, size: 64, offset: 2368)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3368, file: !227, line: 133, baseType: !40, size: 64, offset: 2432)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3368, file: !227, line: 135, baseType: !3389, size: 384, offset: 2496)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3390, line: 76, size: 384, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3389, file: !3390, line: 78, baseType: !938, size: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3389, file: !3390, line: 80, baseType: !5, size: 32, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3389, file: !3390, line: 81, baseType: !474, size: 32, offset: 352)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3368, file: !227, line: 136, baseType: !23, size: 32, offset: 2880)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3368, file: !227, line: 137, baseType: !226, size: 32, offset: 2912)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3368, file: !227, line: 139, baseType: !60, size: 32, offset: 2944)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3368, file: !227, line: 140, baseType: !98, size: 128, offset: 3008)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3368, file: !227, line: 141, baseType: !3008, size: 704, offset: 3136)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3368, file: !227, line: 142, baseType: !3008, size: 704, offset: 3840)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3368, file: !227, line: 144, baseType: !98, size: 128, offset: 4544)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3353, file: !227, line: 187, baseType: !98, size: 128, offset: 5504)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3353, file: !227, line: 193, baseType: !55, size: 192, offset: 5632)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3353, file: !227, line: 195, baseType: !2144, size: 64, offset: 5824)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3353, file: !227, line: 196, baseType: !3406, size: 512, offset: 5888)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !1477)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3353, file: !227, line: 197, baseType: !2144, size: 64, offset: 6400)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3353, file: !227, line: 199, baseType: !2314, size: 320, offset: 6464)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3353, file: !227, line: 202, baseType: !1145, size: 64, offset: 6784)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1389, file: !216, line: 1228, baseType: !3411, size: 64, offset: 1792)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !216, line: 1228, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1389, file: !216, line: 1229, baseType: !739, size: 128, offset: 1856)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1389, file: !216, line: 1230, baseType: !5, size: 32, offset: 1984)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1389, file: !216, line: 1231, baseType: !3416, size: 2496, offset: 2048)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !221, line: 521, size: 2496, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3422, !3454}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3416, file: !221, line: 522, baseType: !5, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3416, file: !221, line: 523, baseType: !820, size: 320, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3416, file: !221, line: 524, baseType: !3421, size: 192, offset: 384)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 192, elements: !723)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3416, file: !221, line: 525, baseType: !3423, size: 1728, offset: 576)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3424, size: 1728, elements: !723)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !221, line: 222, size: 576, elements: !3425)
!3425 = !{!3426, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3424, file: !221, line: 223, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !221, line: 445, size: 256, elements: !3429)
!3429 = !{!3430, !3431, !3444, !3445}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3428, file: !221, line: 446, baseType: !23, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3428, file: !221, line: 447, baseType: !3432, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !221, line: 312, size: 512, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3434, file: !221, line: 313, baseType: !3099, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3434, file: !221, line: 314, baseType: !3099, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3434, file: !221, line: 315, baseType: !3099, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3434, file: !221, line: 316, baseType: !3099, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3434, file: !221, line: 317, baseType: !3208, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3434, file: !221, line: 318, baseType: !3208, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3434, file: !221, line: 319, baseType: !3208, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3434, file: !221, line: 320, baseType: !3238, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3428, file: !221, line: 448, baseType: !1421, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3428, file: !221, line: 449, baseType: !3427, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3424, file: !221, line: 224, baseType: !23, size: 32, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3424, file: !221, line: 226, baseType: !98, size: 128, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3424, file: !221, line: 227, baseType: !40, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3424, file: !221, line: 228, baseType: !5, size: 32, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3424, file: !221, line: 229, baseType: !5, size: 32, offset: 352)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3424, file: !221, line: 230, baseType: !3176, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3424, file: !221, line: 231, baseType: !3176, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3424, file: !221, line: 232, baseType: !21, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3416, file: !221, line: 526, baseType: !3455, size: 192, offset: 2304)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3432, size: 192, elements: !723)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1389, file: !216, line: 1233, baseType: !3457, size: 2368, offset: 4544)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !216, line: 1184, size: 2368, elements: !3458)
!3458 = !{!3459, !3460, !3461}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3457, file: !216, line: 1185, baseType: !27, size: 16)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3457, file: !216, line: 1186, baseType: !27, size: 16, offset: 16)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3457, file: !216, line: 1187, baseType: !3462, size: 2304, offset: 64)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3463, size: 2304, elements: !723)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3464, line: 12, size: 768, elements: !3465)
!3464 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3465 = !{!3466, !3474, !3475, !3480, !3481}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3463, file: !3464, line: 13, baseType: !3467, size: 384)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3468, line: 17, size: 384, elements: !3469)
!3468 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3469 = !{!3470, !3471, !3472, !3473}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3467, file: !3468, line: 18, baseType: !23, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3467, file: !3468, line: 19, baseType: !23, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3467, file: !3468, line: 20, baseType: !55, size: 192, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3467, file: !3468, line: 22, baseType: !667, size: 128, align: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3463, file: !3464, line: 14, baseType: !2089, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3463, file: !3464, line: 15, baseType: !3476, size: 64, offset: 448)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3477, line: 16, size: 64, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3478 = !{!3479}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3476, file: !3477, line: 17, baseType: !325, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3463, file: !3464, line: 16, baseType: !55, size: 192, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3463, file: !3464, line: 17, baseType: !50, size: 32, offset: 704)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1389, file: !216, line: 1240, baseType: !21, size: 64, offset: 6912)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1389, file: !216, line: 1243, baseType: !318, size: 32, offset: 6976)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1389, file: !216, line: 1245, baseType: !836, size: 64, offset: 7040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1389, file: !216, line: 1246, baseType: !836, size: 64, offset: 7104)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1389, file: !216, line: 1248, baseType: !319, size: 32, offset: 7168)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1389, file: !216, line: 1249, baseType: !3488, size: 64, offset: 7232)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !216, line: 634, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1389, file: !216, line: 1252, baseType: !3491, size: 256, offset: 7296)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !3492)
!3492 = !{!3493}
!3493 = !DISubrange(count: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1389, file: !216, line: 1253, baseType: !3495, size: 128, offset: 7552)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3496, line: 21, baseType: !3497)
!3496 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3496, line: 19, size: 128, elements: !3498)
!3498 = !{!3499}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3497, file: !3496, line: 20, baseType: !3500, size: 128)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !3501)
!3501 = !{!3502}
!3502 = !DISubrange(count: 16)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1389, file: !216, line: 1255, baseType: !5, size: 32, offset: 7680)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1389, file: !216, line: 1261, baseType: !687, size: 256, offset: 7744)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1389, file: !216, line: 1267, baseType: !17, size: 64, offset: 8000)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1389, file: !216, line: 1269, baseType: !3507, size: 64, offset: 8064)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1147, line: 128, size: 1024, align: 512, elements: !3510)
!3510 = !{!3511, !3515, !3516, !3523, !3529, !3533, !3537, !3541, !3542, !3546, !3550, !3555, !3559}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3509, file: !1147, line: 129, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!23, !1145, !5}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3509, file: !1147, line: 130, baseType: !3512, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3509, file: !1147, line: 131, baseType: !3517, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!23, !3520, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3509, file: !1147, line: 132, baseType: !3524, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!23, !3520, !5, !17, !3527}
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3509, file: !1147, line: 134, baseType: !3530, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!23, !3520}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3509, file: !1147, line: 135, baseType: !3534, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!23, !1145}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3509, file: !1147, line: 136, baseType: !3538, size: 64, offset: 384)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !1145}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3509, file: !1147, line: 137, baseType: !3538, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3509, file: !1147, line: 138, baseType: !3543, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !1145, !1180}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3509, file: !1147, line: 139, baseType: !3547, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!890, !1145, !890, !23}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3509, file: !1147, line: 140, baseType: !3551, size: 64, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!1140, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3509, file: !1147, line: 141, baseType: !3556, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!23, !1301, !879}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3509, file: !1147, line: 142, baseType: !3560, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!1145, !1145, !3563}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1389, file: !216, line: 1271, baseType: !3566, size: 448, offset: 8128)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3191, line: 63, size: 448, elements: !3567)
!3567 = !{!3568, !3573, !3574, !3575, !3576, !3577, !3578}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3566, file: !3191, line: 64, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!40, !3572, !3189}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3566, file: !3191, line: 66, baseType: !3569, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3566, file: !3191, line: 69, baseType: !287, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3566, file: !3191, line: 70, baseType: !23, size: 32, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3566, file: !3191, line: 71, baseType: !5, size: 32, offset: 224)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3566, file: !3191, line: 74, baseType: !98, size: 128, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3566, file: !3191, line: 85, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1389, file: !216, line: 1274, baseType: !680, size: 64, offset: 8576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1389, file: !216, line: 1280, baseType: !680, size: 64, offset: 8640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1389, file: !216, line: 1283, baseType: !23, size: 32, offset: 8704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1389, file: !216, line: 1286, baseType: !2547, size: 32, offset: 8736)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1389, file: !216, line: 1289, baseType: !3013, size: 64, offset: 8768)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1389, file: !216, line: 1290, baseType: !735, size: 64, offset: 8832)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1389, file: !216, line: 1297, baseType: !963, size: 64, offset: 8896)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1389, file: !216, line: 1304, baseType: !3588, size: 64, offset: 8960)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3589, line: 49, size: 64, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3590 = !{!3591}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3588, file: !3589, line: 50, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3589, line: 41, size: 512, align: 512, elements: !3594)
!3594 = !{!3595, !3596, !3601}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3593, file: !3589, line: 43, baseType: !60, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3593, file: !3589, line: 45, baseType: !3597, size: 192, offset: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3589, line: 29, size: 192, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3597, file: !3589, line: 30, baseType: !98, size: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3597, file: !3589, line: 32, baseType: !287, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3593, file: !3589, line: 46, baseType: !287, size: 64, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1389, file: !216, line: 1305, baseType: !3588, size: 64, offset: 9024)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1389, file: !216, line: 1306, baseType: !667, size: 128, align: 64, offset: 9088)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1389, file: !216, line: 1307, baseType: !1012, size: 256, offset: 9216)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1389, file: !216, line: 1309, baseType: !687, size: 256, offset: 9472)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1389, file: !216, line: 1314, baseType: !23, size: 32, offset: 9728)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1389, file: !216, line: 1317, baseType: !60, size: 32, align: 512, offset: 10240)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1389, file: !216, line: 1318, baseType: !98, size: 128, offset: 10304)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1389, file: !216, line: 1320, baseType: !60, size: 32, offset: 10432)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1389, file: !216, line: 1321, baseType: !98, size: 128, offset: 10496)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1181, file: !216, line: 656, baseType: !1538, size: 64, offset: 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1181, file: !216, line: 659, baseType: !21, size: 64, offset: 576)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1181, file: !216, line: 663, baseType: !40, size: 64, offset: 640)
!3614 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !216, line: 671, baseType: !3615, size: 32, offset: 704)
!3615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !216, line: 671, size: 32, elements: !3616)
!3616 = !{!3617, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3615, file: !216, line: 672, baseType: !3618, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3615, file: !216, line: 673, baseType: !5, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1181, file: !216, line: 675, baseType: !1254, size: 32, offset: 736)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1181, file: !216, line: 676, baseType: !42, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1181, file: !216, line: 677, baseType: !1290, size: 128, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1181, file: !216, line: 678, baseType: !1290, size: 128, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1181, file: !216, line: 679, baseType: !1290, size: 128, offset: 1088)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1181, file: !216, line: 680, baseType: !60, size: 32, offset: 1216)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1181, file: !216, line: 681, baseType: !27, size: 16, offset: 1248)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1181, file: !216, line: 682, baseType: !84, size: 8, offset: 1264)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1181, file: !216, line: 683, baseType: !84, size: 8, offset: 1272)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1181, file: !216, line: 684, baseType: !3322, size: 64, offset: 1280)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1181, file: !216, line: 691, baseType: !40, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1181, file: !216, line: 692, baseType: !820, size: 320, offset: 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1181, file: !216, line: 694, baseType: !40, size: 64, offset: 1728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1181, file: !216, line: 695, baseType: !40, size: 64, offset: 1792)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1181, file: !216, line: 697, baseType: !739, size: 128, offset: 1856)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1181, file: !216, line: 698, baseType: !98, size: 128, offset: 1984)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1181, file: !216, line: 707, baseType: !98, size: 128, offset: 2112)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1181, file: !216, line: 708, baseType: !98, size: 128, offset: 2240)
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !216, line: 709, baseType: !3639, size: 128, offset: 2368)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !216, line: 709, size: 128, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3639, file: !216, line: 710, baseType: !735, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3639, file: !216, line: 711, baseType: !667, size: 128, align: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1181, file: !216, line: 713, baseType: !682, size: 64, offset: 2496)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1181, file: !216, line: 714, baseType: !682, size: 64, offset: 2560)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1181, file: !216, line: 715, baseType: !50, size: 32, offset: 2624)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1181, file: !216, line: 716, baseType: !50, size: 32, offset: 2656)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1181, file: !216, line: 717, baseType: !50, size: 32, offset: 2688)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1181, file: !216, line: 719, baseType: !50, size: 32, offset: 2720)
!3649 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !216, line: 721, baseType: !3650, size: 64, offset: 2752)
!3650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !216, line: 721, size: 64, elements: !3651)
!3651 = !{!3652, !3778}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3650, file: !216, line: 722, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3655)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !216, line: 1914, size: 2112, elements: !3656)
!3656 = !{!3657, !3658, !3662, !3666, !3670, !3671, !3672, !3678, !3691, !3695, !3699, !3700, !3704, !3705, !3709, !3714, !3715, !3719, !3723, !3729, !3730, !3734, !3735, !3741, !3745, !3746, !3751, !3755, !3759, !3763, !3767, !3768, !3774}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3655, file: !216, line: 1915, baseType: !1421, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3655, file: !216, line: 1916, baseType: !3659, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!42, !659, !42, !23}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3655, file: !216, line: 1917, baseType: !3663, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!1332, !659, !890, !36, !41}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3655, file: !216, line: 1918, baseType: !3667, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!1332, !659, !17, !36, !41}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3655, file: !216, line: 1919, baseType: !1989, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3655, file: !216, line: 1920, baseType: !1989, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3655, file: !216, line: 1921, baseType: !3673, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!23, !1992, !3676, !5}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !216, line: 53, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3655, file: !216, line: 1923, baseType: !3679, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!23, !659, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !216, line: 1858, size: 128, elements: !3684)
!3684 = !{!3685, !3690}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3683, file: !216, line: 1859, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !216, line: 1855, baseType: !3687)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!879, !3682, !17, !23, !42, !289, !5}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3683, file: !216, line: 1860, baseType: !42, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3655, file: !216, line: 1924, baseType: !3692, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!2690, !659, !2692}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3655, file: !216, line: 1925, baseType: !3696, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!287, !659, !5, !40}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3655, file: !216, line: 1926, baseType: !3696, size: 64, offset: 640)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3655, file: !216, line: 1927, baseType: !3701, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!23, !659, !1667}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3655, file: !216, line: 1928, baseType: !40, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3655, file: !216, line: 1929, baseType: !3706, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!23, !1180, !659}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3655, file: !216, line: 1930, baseType: !3710, size: 64, offset: 896)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!23, !659, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !216, line: 1061, baseType: !21)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3655, file: !216, line: 1931, baseType: !3706, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3655, file: !216, line: 1932, baseType: !3716, size: 64, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!23, !659, !42, !42, !23}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3655, file: !216, line: 1933, baseType: !3720, size: 64, offset: 1088)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!23, !23, !659, !23}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3655, file: !216, line: 1934, baseType: !3724, size: 64, offset: 1152)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!23, !659, !23, !3727}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !216, line: 1063, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3655, file: !216, line: 1935, baseType: !656, size: 64, offset: 1216)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3655, file: !216, line: 1936, baseType: !3731, size: 64, offset: 1280)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!23, !23}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3655, file: !216, line: 1937, baseType: !3724, size: 64, offset: 1344)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3655, file: !216, line: 1938, baseType: !3736, size: 64, offset: 1408)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!1332, !3739, !659, !41, !36, !5}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !327, line: 59, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3655, file: !216, line: 1939, baseType: !3742, size: 64, offset: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!1332, !659, !41, !3739, !36, !5}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3655, file: !216, line: 1940, baseType: !2537, size: 64, offset: 1536)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3655, file: !216, line: 1941, baseType: !3747, size: 64, offset: 1600)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!23, !659, !23, !3750, !1966}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3655, file: !216, line: 1942, baseType: !3752, size: 64, offset: 1664)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!287, !659, !23, !42, !42}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3655, file: !216, line: 1944, baseType: !3756, size: 64, offset: 1728)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !2623, !659}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3655, file: !216, line: 1948, baseType: !3760, size: 64, offset: 1792)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!1332, !659, !42, !659, !42, !36, !5}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3655, file: !216, line: 1950, baseType: !3764, size: 64, offset: 1856)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!42, !659, !42, !659, !42, !42, !5}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3655, file: !216, line: 1953, baseType: !3716, size: 64, offset: 1920)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3655, file: !216, line: 1954, baseType: !3769, size: 64, offset: 1984)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!23, !3772, !5}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !216, line: 1911, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3655, file: !216, line: 1955, baseType: !3775, size: 64, offset: 2048)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!23, !3772, !3676, !5}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3650, file: !216, line: 723, baseType: !3080, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1181, file: !216, line: 725, baseType: !3780, size: 64, offset: 2816)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !216, line: 725, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1181, file: !216, line: 726, baseType: !1539, size: 1536, align: 64, offset: 2880)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1181, file: !216, line: 727, baseType: !98, size: 128, offset: 4416)
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !216, line: 728, baseType: !3785, size: 64, offset: 4544)
!3785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !216, line: 728, size: 64, elements: !3786)
!3786 = !{!3787, !3788, !3791, !3792}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3785, file: !216, line: 729, baseType: !3739, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3785, file: !216, line: 730, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !216, line: 730, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3785, file: !216, line: 731, baseType: !890, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3785, file: !216, line: 732, baseType: !5, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1181, file: !216, line: 735, baseType: !319, size: 32, offset: 4608)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1181, file: !216, line: 738, baseType: !319, size: 32, offset: 4640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1181, file: !216, line: 739, baseType: !3488, size: 64, offset: 4672)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1181, file: !216, line: 750, baseType: !21, size: 64, offset: 4736)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1146, file: !1147, line: 91, baseType: !3798, size: 256, offset: 448)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !3492)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1146, file: !1147, line: 94, baseType: !3800, size: 64, offset: 704)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3801, line: 25, size: 64, elements: !3802)
!3801 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3802 = !{!3803}
!3803 = !DIDerivedType(tag: DW_TAG_member, scope: !3800, file: !3801, line: 26, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3800, file: !3801, line: 26, size: 64, elements: !3805)
!3805 = !{!3806, !3807}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3804, file: !3801, line: 28, baseType: !290, size: 64, align: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3804, file: !3801, line: 30, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3804, file: !3801, line: 30, size: 64, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3808, file: !3801, line: 31, baseType: !60, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3808, file: !3801, line: 32, baseType: !23, size: 32, offset: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1146, file: !1147, line: 95, baseType: !3507, size: 64, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1146, file: !1147, line: 96, baseType: !1388, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1146, file: !1147, line: 97, baseType: !40, size: 64, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1146, file: !1147, line: 98, baseType: !21, size: 64, offset: 960)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 100, baseType: !3817, size: 128, offset: 1024)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 100, size: 128, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3817, file: !1147, line: 101, baseType: !98, size: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3817, file: !1147, line: 102, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1146, file: !1147, line: 104, baseType: !98, size: 128, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1146, file: !1147, line: 105, baseType: !98, size: 128, offset: 1280)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1146, file: !1147, line: 113, baseType: !3825, size: 128, offset: 1408)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 109, size: 128, elements: !3826)
!3826 = !{!3827, !3828, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3825, file: !1147, line: 110, baseType: !739, size: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3825, file: !1147, line: 111, baseType: !1156, size: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3825, file: !1147, line: 112, baseType: !667, size: 128, align: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1141, file: !1142, line: 72, baseType: !1388, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1141, file: !1142, line: 73, baseType: !23, size: 32, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1141, file: !1142, line: 74, baseType: !1219, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1136, file: !1137, line: 10, baseType: !1145, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !660, file: !216, line: 1015, baseType: !1180, size: 64, offset: 1344)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !660, file: !216, line: 1016, baseType: !3653, size: 64, offset: 1408)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !660, file: !216, line: 1018, baseType: !289, size: 64, offset: 1472)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !660, file: !216, line: 1020, baseType: !21, size: 64, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !660, file: !216, line: 1023, baseType: !21, size: 64, offset: 1600)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !660, file: !216, line: 1027, baseType: !3840, size: 64, offset: 1664)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !660, file: !216, line: 1029, baseType: !1538, size: 64, offset: 1728)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !660, file: !216, line: 1030, baseType: !2547, size: 32, offset: 1792)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !660, file: !216, line: 1031, baseType: !2547, size: 32, offset: 1824)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !635, file: !124, line: 756, baseType: !40, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !635, file: !124, line: 757, baseType: !40, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !635, file: !124, line: 760, baseType: !40, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !635, file: !124, line: 761, baseType: !40, size: 64, offset: 896)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !635, file: !124, line: 763, baseType: !40, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !635, file: !124, line: 764, baseType: !3850, size: 64, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !294, line: 299, baseType: !3852)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 299, size: 64, elements: !3853)
!3853 = !{!3854}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3852, file: !294, line: 299, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !286, line: 18, baseType: !40)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !635, file: !124, line: 773, baseType: !50, size: 32, offset: 1088)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !635, file: !124, line: 785, baseType: !50, size: 32, offset: 1120)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !635, file: !124, line: 795, baseType: !3859, size: 64, offset: 1152)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !124, line: 726, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3860, file: !124, line: 727, baseType: !289, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3860, file: !124, line: 728, baseType: !23, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !635, file: !124, line: 801, baseType: !40, size: 64, offset: 1216)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !635, file: !124, line: 804, baseType: !680, size: 64, offset: 1280)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !635, file: !124, line: 806, baseType: !23, size: 32, offset: 1344)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !635, file: !124, line: 808, baseType: !60, size: 32, offset: 1376)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !635, file: !124, line: 823, baseType: !820, size: 320, offset: 1408)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !635, file: !124, line: 825, baseType: !98, size: 128, offset: 1728)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !635, file: !124, line: 845, baseType: !23, size: 32, offset: 1856)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !635, file: !124, line: 849, baseType: !40, size: 64, offset: 1920)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !635, file: !124, line: 850, baseType: !40, size: 64, offset: 1984)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !635, file: !124, line: 852, baseType: !40, size: 64, offset: 2048)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !635, file: !124, line: 853, baseType: !40, size: 64, offset: 2112)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !635, file: !124, line: 854, baseType: !682, size: 64, offset: 2176)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !635, file: !124, line: 855, baseType: !40, size: 64, offset: 2240)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !635, file: !124, line: 856, baseType: !40, size: 64, offset: 2304)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !635, file: !124, line: 857, baseType: !40, size: 64, offset: 2368)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !635, file: !124, line: 858, baseType: !40, size: 64, offset: 2432)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !635, file: !124, line: 865, baseType: !505, size: 32, offset: 2496)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !635, file: !124, line: 867, baseType: !60, size: 32, offset: 2528)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !635, file: !124, line: 869, baseType: !40, size: 64, offset: 2560)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !635, file: !124, line: 869, baseType: !40, size: 64, offset: 2624)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !635, file: !124, line: 869, baseType: !40, size: 64, offset: 2688)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !635, file: !124, line: 869, baseType: !40, size: 64, offset: 2752)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !635, file: !124, line: 870, baseType: !40, size: 64, offset: 2816)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !635, file: !124, line: 870, baseType: !40, size: 64, offset: 2880)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !635, file: !124, line: 870, baseType: !40, size: 64, offset: 2944)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !635, file: !124, line: 871, baseType: !40, size: 64, offset: 3008)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !635, file: !124, line: 871, baseType: !40, size: 64, offset: 3072)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !635, file: !124, line: 871, baseType: !40, size: 64, offset: 3136)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !635, file: !124, line: 871, baseType: !40, size: 64, offset: 3200)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !635, file: !124, line: 873, baseType: !3894, size: 3328, offset: 3264)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3328, elements: !3895)
!3895 = !{!3896}
!3896 = !DISubrange(count: 52)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !635, file: !124, line: 875, baseType: !3380, size: 1280, offset: 6592)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !635, file: !124, line: 877, baseType: !3899, size: 64, offset: 7872)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !124, line: 877, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !635, file: !124, line: 880, baseType: !3902, size: 1088, offset: 7936)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3903, line: 72, baseType: !3904)
!3903 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3903, line: 23, size: 1088, elements: !3905)
!3905 = !{!3906, !3907, !3908, !3909, !3910, !3913, !3914, !3915, !3916, !3941, !3942, !3943}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3904, file: !3903, line: 28, baseType: !289, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3904, file: !3903, line: 38, baseType: !682, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3904, file: !3903, line: 40, baseType: !40, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3904, file: !3903, line: 43, baseType: !820, size: 320, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3904, file: !3903, line: 44, baseType: !3911, size: 64, offset: 512)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3903, line: 44, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3904, file: !3903, line: 48, baseType: !40, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3904, file: !3903, line: 59, baseType: !687, size: 256, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3904, file: !3903, line: 60, baseType: !21, size: 64, offset: 896)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3904, file: !3903, line: 61, baseType: !3917, size: 64, offset: 960)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3920, line: 13, size: 1216, elements: !3921)
!3920 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3919, file: !3920, line: 14, baseType: !21, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3919, file: !3920, line: 15, baseType: !40, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3919, file: !3920, line: 17, baseType: !40, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3919, file: !3920, line: 17, baseType: !40, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3919, file: !3920, line: 18, baseType: !40, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3919, file: !3920, line: 18, baseType: !40, size: 64, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3919, file: !3920, line: 19, baseType: !2485, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3919, file: !3920, line: 21, baseType: !287, size: 64, offset: 448)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3919, file: !3920, line: 23, baseType: !287, size: 64, offset: 512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3919, file: !3920, line: 24, baseType: !287, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3919, file: !3920, line: 25, baseType: !287, size: 64, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3919, file: !3920, line: 26, baseType: !287, size: 64, offset: 704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3919, file: !3920, line: 27, baseType: !287, size: 64, offset: 768)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3919, file: !3920, line: 28, baseType: !287, size: 64, offset: 832)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3919, file: !3920, line: 29, baseType: !287, size: 64, offset: 896)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3919, file: !3920, line: 30, baseType: !287, size: 64, offset: 960)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3919, file: !3920, line: 31, baseType: !287, size: 64, offset: 1024)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3919, file: !3920, line: 32, baseType: !287, size: 64, offset: 1088)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3919, file: !3920, line: 33, baseType: !287, size: 64, offset: 1152)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3904, file: !3903, line: 63, baseType: !50, size: 32, offset: 1024)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3904, file: !3903, line: 69, baseType: !94, size: 16, offset: 1056)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3904, file: !3903, line: 70, baseType: !2868, size: 16, offset: 1072)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !124, line: 882, baseType: !40, size: 64, offset: 9024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !635, file: !124, line: 885, baseType: !60, size: 32, offset: 9088)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !635, file: !124, line: 886, baseType: !3947, size: 64, offset: 9152)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !124, line: 732, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !635, file: !124, line: 901, baseType: !963, size: 64, offset: 9216)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !635, file: !124, line: 904, baseType: !659, size: 64, offset: 9280)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !635, file: !124, line: 906, baseType: !3952, size: 64, offset: 9344)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !124, line: 906, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !635, file: !124, line: 930, baseType: !50, size: 32, offset: 9408)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !635, file: !124, line: 933, baseType: !50, size: 32, offset: 9440)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !635, file: !124, line: 935, baseType: !3957, size: 64, offset: 9472)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !245, line: 103, size: 64, elements: !3958)
!3958 = !{!3959}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3957, file: !245, line: 104, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !245, line: 101, flags: DIFlagFwdDecl)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !635, file: !124, line: 940, baseType: !680, size: 64, offset: 9536)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !635, file: !124, line: 942, baseType: !1012, size: 256, offset: 9600)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !632, file: !124, line: 986, baseType: !3965, offset: 10240)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !757)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !326, file: !327, line: 882, baseType: !631, size: 64, offset: 9792)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !326, file: !327, line: 884, baseType: !23, size: 32, offset: 9856)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !326, file: !327, line: 885, baseType: !23, size: 32, offset: 9888)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !326, file: !327, line: 886, baseType: !23, size: 32, offset: 9920)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !326, file: !327, line: 888, baseType: !23, size: 32, offset: 9952)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !326, file: !327, line: 890, baseType: !40, size: 64, offset: 9984)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !326, file: !327, line: 893, baseType: !5, size: 32, offset: 10048)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !326, file: !327, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !326, file: !327, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !326, file: !327, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !326, file: !327, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !326, file: !327, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !326, file: !327, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !326, file: !327, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !326, file: !327, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !326, file: !327, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !326, file: !327, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !326, file: !327, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !326, file: !327, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !326, file: !327, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !326, file: !327, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !326, file: !327, line: 969, baseType: !40, size: 64, offset: 10176)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !326, file: !327, line: 971, baseType: !3989, size: 448, offset: 10240)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !239, line: 25, size: 448, elements: !3990)
!3990 = !{!3991, !3992, !3997}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3989, file: !239, line: 26, baseType: !40, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3989, file: !239, line: 27, baseType: !3993, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!287, !3996}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !3989, file: !239, line: 28, baseType: !3998, size: 320, offset: 128)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3989, file: !239, line: 28, size: 320, elements: !3999)
!3999 = !{!4000, !4010, !4035}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3998, file: !239, line: 37, baseType: !4001, size: 320)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3998, file: !239, line: 30, size: 320, elements: !4002)
!4002 = !{!4003, !4005, !4006, !4007, !4008, !4009}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4001, file: !239, line: 31, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4001, file: !239, line: 32, baseType: !318, size: 32, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4001, file: !239, line: 33, baseType: !318, size: 32, offset: 96)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4001, file: !239, line: 34, baseType: !318, size: 32, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4001, file: !239, line: 35, baseType: !289, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4001, file: !239, line: 36, baseType: !4004, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3998, file: !239, line: 47, baseType: !4011, size: 192)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3998, file: !239, line: 39, size: 192, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4034}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4011, file: !239, line: 40, baseType: !497, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4011, file: !239, line: 41, baseType: !238, size: 32, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !239, line: 42, baseType: !4016, size: 64, offset: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !239, line: 42, size: 64, elements: !4017)
!4017 = !{!4018, !4026}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4016, file: !239, line: 43, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4021, line: 7, size: 128, elements: !4022)
!4021 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4022 = !{!4023, !4025}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4020, file: !4021, line: 8, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !38, line: 93, baseType: !44)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4020, file: !4021, line: 9, baseType: !44, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4016, file: !239, line: 44, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4029, line: 7, size: 64, elements: !4030)
!4029 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4030 = !{!4031, !4033}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4028, file: !4029, line: 8, baseType: !4032, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4029, line: 5, baseType: !812)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4028, file: !4029, line: 9, baseType: !812, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4011, file: !239, line: 46, baseType: !289, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3998, file: !239, line: 55, baseType: !4036, size: 256)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3998, file: !239, line: 49, size: 256, elements: !4037)
!4037 = !{!4038, !4041, !4042, !4043, !4044}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4036, file: !239, line: 50, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !239, line: 14, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4036, file: !239, line: 51, baseType: !23, size: 32, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4036, file: !239, line: 52, baseType: !23, size: 32, offset: 96)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4036, file: !239, line: 53, baseType: !40, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4036, file: !239, line: 54, baseType: !40, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !326, file: !327, line: 973, baseType: !4046, size: 32, offset: 10688)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !26, line: 27, baseType: !4047)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !38, line: 28, baseType: !23)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !326, file: !327, line: 974, baseType: !4046, size: 32, offset: 10720)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !326, file: !327, line: 978, baseType: !40, size: 64, offset: 10752)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !326, file: !327, line: 987, baseType: !325, size: 64, offset: 10816)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !326, file: !327, line: 990, baseType: !325, size: 64, offset: 10880)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !326, file: !327, line: 995, baseType: !98, size: 128, offset: 10944)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !326, file: !327, line: 996, baseType: !98, size: 128, offset: 11072)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !326, file: !327, line: 997, baseType: !325, size: 64, offset: 11200)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !326, file: !327, line: 1005, baseType: !98, size: 128, offset: 11264)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !326, file: !327, line: 1006, baseType: !98, size: 128, offset: 11392)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !326, file: !327, line: 1009, baseType: !727, size: 64, offset: 11520)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !326, file: !327, line: 1010, baseType: !4059, size: 512, offset: 11584)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 512, elements: !744)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !326, file: !327, line: 1011, baseType: !98, size: 128, offset: 12096)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !326, file: !327, line: 1012, baseType: !98, size: 128, offset: 12224)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !326, file: !327, line: 1014, baseType: !1050, size: 64, offset: 12352)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !326, file: !327, line: 1017, baseType: !2861, size: 64, offset: 12416)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !326, file: !327, line: 1020, baseType: !2861, size: 64, offset: 12480)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !326, file: !327, line: 1023, baseType: !21, size: 64, offset: 12544)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !326, file: !327, line: 1025, baseType: !289, size: 64, offset: 12608)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !326, file: !327, line: 1026, baseType: !289, size: 64, offset: 12672)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !326, file: !327, line: 1031, baseType: !289, size: 64, offset: 12736)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !326, file: !327, line: 1032, baseType: !4070, size: 192, offset: 12800)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !327, line: 324, size: 192, elements: !4071)
!4071 = !{!4072, !4073, !4074}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4070, file: !327, line: 326, baseType: !289, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4070, file: !327, line: 327, baseType: !289, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4070, file: !327, line: 328, baseType: !474, size: 32, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !326, file: !327, line: 1041, baseType: !40, size: 64, offset: 12992)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !326, file: !327, line: 1042, baseType: !40, size: 64, offset: 13056)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !326, file: !327, line: 1045, baseType: !289, size: 64, offset: 13120)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !326, file: !327, line: 1048, baseType: !289, size: 64, offset: 13184)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !326, file: !327, line: 1051, baseType: !40, size: 64, offset: 13248)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !326, file: !327, line: 1052, baseType: !40, size: 64, offset: 13312)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !326, file: !327, line: 1055, baseType: !4082, size: 640, offset: 13376)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4083, line: 132, size: 640, elements: !4084)
!4083 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4084 = !{!4085, !4091, !4092}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4082, file: !4083, line: 133, baseType: !4086, size: 576)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 576, elements: !723)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4083, line: 117, size: 192, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4087, file: !4083, line: 118, baseType: !289, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4087, file: !4083, line: 119, baseType: !511, size: 128, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4082, file: !4083, line: 134, baseType: !5, size: 32, offset: 576)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4082, file: !4083, line: 135, baseType: !5, size: 32, offset: 608)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !326, file: !327, line: 1058, baseType: !4094, size: 448, offset: 14016)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4083, line: 144, size: 448, elements: !4095)
!4095 = !{!4096, !4097, !4098}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4094, file: !4083, line: 145, baseType: !667, size: 128, align: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4094, file: !4083, line: 146, baseType: !687, size: 256, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4094, file: !4083, line: 147, baseType: !5, size: 32, offset: 384)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !326, file: !327, line: 1064, baseType: !771, size: 64, offset: 14464)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !326, file: !327, line: 1067, baseType: !771, size: 64, offset: 14528)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !326, file: !327, line: 1070, baseType: !771, size: 64, offset: 14592)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !326, file: !327, line: 1074, baseType: !804, size: 64, offset: 14656)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !326, file: !327, line: 1084, baseType: !4104, size: 128, offset: 14720)
!4104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !3501)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !326, file: !327, line: 1086, baseType: !4106, size: 64, offset: 14848)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !327, line: 55, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !326, file: !327, line: 1089, baseType: !4109, size: 64, offset: 14912)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4110, line: 12, size: 64, elements: !4111)
!4110 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4111 = !{!4112}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4109, file: !4110, line: 13, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4110, line: 8, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !326, file: !327, line: 1090, baseType: !4116, size: 128, offset: 14976)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4117, line: 13, size: 128, elements: !4118)
!4117 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4118 = !{!4119}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4116, file: !4117, line: 14, baseType: !98, size: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !326, file: !327, line: 1097, baseType: !4121, size: 64, offset: 15104)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !327, line: 50, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !326, file: !327, line: 1100, baseType: !4124, size: 64, offset: 15168)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !327, line: 1100, flags: DIFlagFwdDecl)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !326, file: !327, line: 1103, baseType: !4127, size: 64, offset: 15232)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !327, line: 53, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !326, file: !327, line: 1107, baseType: !4130, size: 64, offset: 15296)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4132, line: 31, size: 576, elements: !4133)
!4132 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4133 = !{!4134, !4135, !4138, !4141, !4144, !4145, !4148, !4151, !4152}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4131, file: !4132, line: 32, baseType: !333, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4131, file: !4132, line: 33, baseType: !4136, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4132, line: 9, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4131, file: !4132, line: 34, baseType: !4139, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4132, line: 10, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4131, file: !4132, line: 35, baseType: !4142, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4132, line: 8, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4131, file: !4132, line: 36, baseType: !755, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4131, file: !4132, line: 37, baseType: !4146, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !806, line: 34, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4131, file: !4132, line: 38, baseType: !4149, size: 64, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4132, line: 38, flags: DIFlagFwdDecl)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4131, file: !4132, line: 39, baseType: !4149, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4131, file: !4132, line: 40, baseType: !4153, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4155, line: 771, size: 384, elements: !4156)
!4155 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4156 = !{!4157, !4158, !4159, !4160}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4154, file: !4155, line: 772, baseType: !996, size: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4154, file: !4155, line: 773, baseType: !963, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4154, file: !4155, line: 774, baseType: !1095, size: 64, offset: 256)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4154, file: !4155, line: 775, baseType: !4161, size: 64, offset: 320)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4163, line: 209, size: 4736, elements: !4164)
!4163 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4164 = !{!4165, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4162, file: !4163, line: 215, baseType: !4166, size: 896)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4167, size: 896, elements: !4224)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4163, line: 152, size: 1600, elements: !4169)
!4169 = !{!4170, !4275, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4399}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4168, file: !4163, line: 154, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4163, line: 389, size: 7872, elements: !4173)
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4193, !4194, !4198, !4199, !4200, !4201, !4202, !4203, !4221, !4222, !4226, !4227, !4228, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4262, !4265, !4266, !4273}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4172, file: !4163, line: 391, baseType: !4168, size: 1600)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4172, file: !4163, line: 393, baseType: !40, size: 64, offset: 1600)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4172, file: !4163, line: 401, baseType: !23, size: 32, offset: 1664)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4172, file: !4163, line: 404, baseType: !23, size: 32, offset: 1696)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4172, file: !4163, line: 417, baseType: !23, size: 32, offset: 1728)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4172, file: !4163, line: 418, baseType: !23, size: 32, offset: 1760)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4172, file: !4163, line: 419, baseType: !23, size: 32, offset: 1792)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4172, file: !4163, line: 432, baseType: !23, size: 32, offset: 1824)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4172, file: !4163, line: 433, baseType: !23, size: 32, offset: 1856)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4172, file: !4163, line: 434, baseType: !23, size: 32, offset: 1888)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4172, file: !4163, line: 436, baseType: !23, size: 32, offset: 1920)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4172, file: !4163, line: 439, baseType: !5, size: 32, offset: 1952)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4172, file: !4163, line: 441, baseType: !2578, size: 64, offset: 1984)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4172, file: !4163, line: 442, baseType: !4188, size: 448, offset: 2048)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4163, line: 138, size: 448, elements: !4189)
!4189 = !{!4190, !4191, !4192}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4188, file: !4163, line: 140, baseType: !2578, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4188, file: !4163, line: 141, baseType: !40, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4188, file: !4163, line: 142, baseType: !2314, size: 320, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4172, file: !4163, line: 443, baseType: !4188, size: 448, offset: 2496)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4172, file: !4163, line: 446, baseType: !4195, offset: 2944)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4188, elements: !4196)
!4196 = !{!4197}
!4197 = !DISubrange(count: 0)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4172, file: !4163, line: 455, baseType: !94, size: 16, offset: 2944)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4172, file: !4163, line: 456, baseType: !94, size: 16, offset: 2960)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4172, file: !4163, line: 457, baseType: !94, size: 16, offset: 2976)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4172, file: !4163, line: 458, baseType: !94, size: 16, offset: 2992)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4172, file: !4163, line: 461, baseType: !4166, size: 896, offset: 3008)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4172, file: !4163, line: 463, baseType: !4204, size: 64, offset: 3904)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4163, line: 537, size: 41664, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4220}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4205, file: !4163, line: 538, baseType: !2598, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4205, file: !4163, line: 541, baseType: !5, size: 32, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4205, file: !4163, line: 544, baseType: !23, size: 32, offset: 96)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4205, file: !4163, line: 547, baseType: !98, size: 128, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4205, file: !4163, line: 548, baseType: !667, size: 128, align: 64, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4205, file: !4163, line: 555, baseType: !4172, size: 7872, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4205, file: !4163, line: 558, baseType: !4171, size: 64, offset: 8256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4205, file: !4163, line: 561, baseType: !50, size: 32, offset: 8320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4205, file: !4163, line: 564, baseType: !5, size: 32, offset: 8352)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4205, file: !4163, line: 567, baseType: !4217, size: 32768, offset: 8384)
!4217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !4218)
!4218 = !{!4219}
!4219 = !DISubrange(count: 4096)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !4163, line: 570, baseType: !3406, size: 512, offset: 41152)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4172, file: !4163, line: 469, baseType: !98, size: 128, offset: 3968)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4172, file: !4163, line: 478, baseType: !4223, size: 1792, offset: 4096)
!4223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1792, elements: !4224)
!4224 = !{!4225}
!4225 = !DISubrange(count: 14)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4172, file: !4163, line: 487, baseType: !4171, size: 64, offset: 5888)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4172, file: !4163, line: 488, baseType: !4171, size: 64, offset: 5952)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4172, file: !4163, line: 491, baseType: !4229, size: 64, offset: 6016)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4163, line: 327, size: 896, elements: !4231)
!4231 = !{!4232, !4235, !4245, !4246, !4247, !4248, !4249}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4230, file: !4163, line: 332, baseType: !4233)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4234, line: 64, elements: !652)
!4234 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4230, file: !4163, line: 333, baseType: !4236, size: 192)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4163, line: 299, size: 192, elements: !4237)
!4237 = !{!4238}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4236, file: !4163, line: 300, baseType: !4239, size: 192)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4240, line: 17, size: 192, elements: !4241)
!4240 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4241 = !{!4242, !4243, !4244}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4239, file: !4240, line: 18, baseType: !289, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4239, file: !4240, line: 19, baseType: !289, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4239, file: !4240, line: 20, baseType: !291, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4230, file: !4163, line: 339, baseType: !4236, size: 192, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4230, file: !4163, line: 347, baseType: !4236, size: 192, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4230, file: !4163, line: 353, baseType: !4236, size: 192, offset: 576)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4230, file: !4163, line: 366, baseType: !4171, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4230, file: !4163, line: 367, baseType: !4171, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4172, file: !4163, line: 492, baseType: !98, size: 128, offset: 6080)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4172, file: !4163, line: 495, baseType: !4236, size: 192, offset: 6208)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4172, file: !4163, line: 496, baseType: !4236, size: 192, offset: 6400)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4172, file: !4163, line: 497, baseType: !4070, size: 192, offset: 6592)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4172, file: !4163, line: 503, baseType: !98, size: 128, offset: 6784)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4172, file: !4163, line: 504, baseType: !687, size: 256, offset: 6912)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4172, file: !4163, line: 507, baseType: !55, size: 192, offset: 7168)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4172, file: !4163, line: 510, baseType: !1012, size: 256, offset: 7360)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4172, file: !4163, line: 513, baseType: !4259, size: 64, offset: 7616)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4261, line: 214, elements: !652)
!4261 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4172, file: !4163, line: 516, baseType: !4263, offset: 7680)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4264, line: 76, elements: !652)
!4264 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4172, file: !4163, line: 519, baseType: !50, size: 32, offset: 7680)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4172, file: !4163, line: 522, baseType: !4267, size: 128, offset: 7712)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4163, line: 370, size: 128, elements: !4268)
!4268 = !{!4269, !4270, !4271, !4272}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4267, file: !4163, line: 372, baseType: !879, size: 8)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4267, file: !4163, line: 375, baseType: !23, size: 32, offset: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4267, file: !4163, line: 380, baseType: !23, size: 32, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4267, file: !4163, line: 386, baseType: !23, size: 32, offset: 96)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4172, file: !4163, line: 529, baseType: !4274, offset: 7872)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4171, elements: !757)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4168, file: !4163, line: 157, baseType: !4276, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4163, line: 669, size: 1984, elements: !4278)
!4278 = !{!4279, !4283, !4287, !4291, !4292, !4293, !4294, !4298, !4302, !4303, !4309, !4313, !4314, !4315, !4319, !4323, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4344, !4345, !4382, !4383}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4277, file: !4163, line: 670, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!4167, !4167}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4277, file: !4163, line: 671, baseType: !4284, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!23, !4167}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4277, file: !4163, line: 672, baseType: !4288, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !4167}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4277, file: !4163, line: 673, baseType: !4288, size: 64, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4277, file: !4163, line: 674, baseType: !4288, size: 64, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4277, file: !4163, line: 675, baseType: !4288, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4277, file: !4163, line: 676, baseType: !4295, size: 64, offset: 384)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !4167, !23}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4277, file: !4163, line: 677, baseType: !4299, size: 64, offset: 448)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!23, !2623, !4167}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4277, file: !4163, line: 679, baseType: !4299, size: 64, offset: 512)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4277, file: !4163, line: 682, baseType: !4304, size: 64, offset: 576)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!23, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4163, line: 30, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4277, file: !4163, line: 683, baseType: !4310, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !4307}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4277, file: !4163, line: 684, baseType: !4310, size: 64, offset: 704)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4277, file: !4163, line: 685, baseType: !3054, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4277, file: !4163, line: 686, baseType: !4316, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!23, !325, !4161}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4277, file: !4163, line: 688, baseType: !4320, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !325, !4161}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4277, file: !4163, line: 689, baseType: !4324, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !325}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4277, file: !4163, line: 690, baseType: !4324, size: 64, offset: 1024)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4277, file: !4163, line: 691, baseType: !4324, size: 64, offset: 1088)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4277, file: !4163, line: 692, baseType: !4288, size: 64, offset: 1152)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4277, file: !4163, line: 694, baseType: !879, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4277, file: !4163, line: 707, baseType: !879, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4277, file: !4163, line: 719, baseType: !879, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4277, file: !4163, line: 722, baseType: !23, size: 32, offset: 1248)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4277, file: !4163, line: 723, baseType: !17, size: 64, offset: 1280)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4277, file: !4163, line: 726, baseType: !17, size: 64, offset: 1344)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4277, file: !4163, line: 729, baseType: !4204, size: 64, offset: 1408)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4277, file: !4163, line: 732, baseType: !4338, size: 192, offset: 1472)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4339, line: 19, size: 192, elements: !4340)
!4339 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4340 = !{!4341, !4342, !4343}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4338, file: !4339, line: 20, baseType: !1379, size: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4338, file: !4339, line: 21, baseType: !5, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4338, file: !4339, line: 22, baseType: !5, size: 32, offset: 160)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4277, file: !4163, line: 738, baseType: !98, size: 128, offset: 1664)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4277, file: !4163, line: 744, baseType: !4346, size: 64, offset: 1792)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4163, line: 580, size: 1728, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4358, !4359, !4360, !4364, !4368, !4369, !4370, !4371, !4372, !4376, !4380, !4381}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4347, file: !4163, line: 586, baseType: !3406, size: 512)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4347, file: !4163, line: 587, baseType: !40, size: 64, offset: 512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4347, file: !4163, line: 593, baseType: !36, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4347, file: !4163, line: 596, baseType: !5, size: 32, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4347, file: !4163, line: 604, baseType: !5, size: 32, offset: 672)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4347, file: !4163, line: 610, baseType: !4276, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4347, file: !4163, line: 611, baseType: !98, size: 128, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4347, file: !4163, line: 612, baseType: !4357, size: 64, offset: 896)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4347, file: !4163, line: 614, baseType: !2614, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4347, file: !4163, line: 615, baseType: !2672, size: 64, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4347, file: !4163, line: 621, baseType: !4361, size: 64, offset: 1088)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!289, !4167, !4346}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4347, file: !4163, line: 625, baseType: !4365, size: 64, offset: 1152)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!393, !4167, !4346}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4347, file: !4163, line: 628, baseType: !2653, size: 64, offset: 1216)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4347, file: !4163, line: 631, baseType: !2641, size: 64, offset: 1280)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4347, file: !4163, line: 632, baseType: !2649, size: 64, offset: 1344)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4347, file: !4163, line: 633, baseType: !2645, size: 64, offset: 1408)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4347, file: !4163, line: 640, baseType: !4373, size: 64, offset: 1472)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!23, !4167, !4346, !289}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4347, file: !4163, line: 645, baseType: !4377, size: 64, offset: 1536)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!23, !4167, !4346, !393}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4347, file: !4163, line: 654, baseType: !2680, size: 64, offset: 1600)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4347, file: !4163, line: 657, baseType: !2687, size: 64, offset: 1664)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4277, file: !4163, line: 745, baseType: !4346, size: 64, offset: 1856)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4277, file: !4163, line: 754, baseType: !5, size: 32, offset: 1920)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4168, file: !4163, line: 160, baseType: !1621, size: 128, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4168, file: !4163, line: 163, baseType: !98, size: 128, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4168, file: !4163, line: 164, baseType: !98, size: 128, offset: 384)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4168, file: !4163, line: 167, baseType: !98, size: 128, offset: 512)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4168, file: !4163, line: 173, baseType: !23, size: 32, offset: 640)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4168, file: !4163, line: 175, baseType: !5, size: 32, offset: 672)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4168, file: !4163, line: 183, baseType: !289, size: 64, offset: 704)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4168, file: !4163, line: 189, baseType: !50, size: 32, offset: 768)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4168, file: !4163, line: 192, baseType: !1012, size: 256, offset: 832)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4168, file: !4163, line: 193, baseType: !4394, size: 448, offset: 1088)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1013, line: 120, size: 448, elements: !4395)
!4395 = !{!4396, !4397, !4398}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4394, file: !1013, line: 121, baseType: !1012, size: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4394, file: !1013, line: 122, baseType: !667, size: 128, align: 64, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4394, file: !1013, line: 125, baseType: !3013, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4168, file: !4163, line: 199, baseType: !4167, size: 64, offset: 1536)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4162, file: !4163, line: 218, baseType: !333, size: 32, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4162, file: !4163, line: 226, baseType: !4161, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4162, file: !4163, line: 229, baseType: !4171, size: 64, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4162, file: !4163, line: 232, baseType: !23, size: 32, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4162, file: !4163, line: 241, baseType: !98, size: 128, offset: 1152)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4162, file: !4163, line: 242, baseType: !98, size: 128, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4162, file: !4163, line: 243, baseType: !98, size: 128, offset: 1408)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4162, file: !4163, line: 246, baseType: !98, size: 128, offset: 1536)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4162, file: !4163, line: 255, baseType: !4223, size: 1792, offset: 1664)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4162, file: !4163, line: 258, baseType: !98, size: 128, offset: 3456)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4162, file: !4163, line: 259, baseType: !98, size: 128, offset: 3584)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4162, file: !4163, line: 265, baseType: !739, size: 128, offset: 3712)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4162, file: !4163, line: 271, baseType: !98, size: 128, offset: 3840)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4162, file: !4163, line: 277, baseType: !98, size: 128, offset: 3968)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4162, file: !4163, line: 278, baseType: !98, size: 128, offset: 4096)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4162, file: !4163, line: 279, baseType: !98, size: 128, offset: 4224)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4162, file: !4163, line: 288, baseType: !4171, size: 64, offset: 4352)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4162, file: !4163, line: 289, baseType: !4171, size: 64, offset: 4416)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4162, file: !4163, line: 290, baseType: !4161, size: 64, offset: 4480)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4162, file: !4163, line: 293, baseType: !879, size: 8, offset: 4544)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4162, file: !4163, line: 296, baseType: !667, size: 128, align: 64, offset: 4608)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !326, file: !327, line: 1110, baseType: !4422, size: 64, offset: 15360)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4424, line: 93, size: 8768, elements: !4425)
!4424 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4474, !4483, !4484, !4486, !4487, !4488, !4491, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4529, !4530, !4537, !4547, !4609, !4610, !4613, !4614, !4615, !4616, !4617, !4618}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4423, file: !4424, line: 94, baseType: !333, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4423, file: !4424, line: 95, baseType: !50, size: 32, offset: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4423, file: !4424, line: 96, baseType: !23, size: 32, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4423, file: !4424, line: 97, baseType: !23, size: 32, offset: 96)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4423, file: !4424, line: 98, baseType: !98, size: 128, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4423, file: !4424, line: 100, baseType: !55, size: 192, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4423, file: !4424, line: 103, baseType: !325, size: 64, offset: 448)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4423, file: !4424, line: 106, baseType: !4434, size: 192, offset: 512)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4435, line: 32, size: 192, elements: !4436)
!4435 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4436 = !{!4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4434, file: !4435, line: 33, baseType: !98, size: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4434, file: !4435, line: 34, baseType: !4439, size: 64, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4440, line: 25, baseType: !4441)
!4440 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4440, line: 23, size: 64, elements: !4442)
!4442 = !{!4443}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4441, file: !4440, line: 24, baseType: !582, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4423, file: !4424, line: 109, baseType: !735, size: 64, offset: 704)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4423, file: !4424, line: 112, baseType: !23, size: 32, offset: 768)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4423, file: !4424, line: 114, baseType: !23, size: 32, offset: 800)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4423, file: !4424, line: 115, baseType: !325, size: 64, offset: 832)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4423, file: !4424, line: 118, baseType: !23, size: 32, offset: 896)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4423, file: !4424, line: 119, baseType: !5, size: 32, offset: 928)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4423, file: !4424, line: 121, baseType: !4451, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4424, line: 80, size: 448, elements: !4453)
!4453 = !{!4454, !4455, !4461}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4452, file: !4424, line: 81, baseType: !50, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4452, file: !4424, line: 82, baseType: !4456, size: 128, offset: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4424, line: 75, size: 128, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4456, file: !4424, line: 76, baseType: !325, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4456, file: !4424, line: 77, baseType: !4460, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4452, file: !4424, line: 83, baseType: !1051, size: 256, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4423, file: !4424, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4423, file: !4424, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4423, file: !4424, line: 138, baseType: !5, size: 32, offset: 1056)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4423, file: !4424, line: 139, baseType: !98, size: 128, offset: 1088)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4423, file: !4424, line: 142, baseType: !449, size: 512, offset: 1216)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4423, file: !4424, line: 143, baseType: !457, size: 64, offset: 1728)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4423, file: !4424, line: 150, baseType: !4469, size: 256, offset: 1792)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4470, size: 256, elements: !2851)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4424, line: 38, size: 128, elements: !4471)
!4471 = !{!4472, !4473}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4470, file: !4424, line: 39, baseType: !289, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4470, file: !4424, line: 40, baseType: !289, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4423, file: !4424, line: 156, baseType: !4475, size: 192, offset: 2048)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4424, line: 66, size: 192, elements: !4476)
!4476 = !{!4477}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4475, file: !4424, line: 67, baseType: !4478, size: 192)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4424, line: 47, size: 192, elements: !4479)
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4478, file: !4424, line: 48, baseType: !682, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4478, file: !4424, line: 49, baseType: !682, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4478, file: !4424, line: 50, baseType: !682, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4423, file: !4424, line: 160, baseType: !4082, size: 640, offset: 2240)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4423, file: !4424, line: 163, baseType: !4485, size: 256, offset: 2880)
!4485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 256, elements: !744)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4423, file: !4424, line: 169, baseType: !727, size: 64, offset: 3136)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4423, file: !4424, line: 172, baseType: !23, size: 32, offset: 3200)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4423, file: !4424, line: 174, baseType: !4489, size: 64, offset: 3264)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4424, line: 174, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4423, file: !4424, line: 185, baseType: !4492, size: 64, offset: 3328)
!4492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !501, line: 860, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 853, size: 64, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4493, file: !501, line: 858, baseType: !1151, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4493, file: !501, line: 859, baseType: !60, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4423, file: !4424, line: 186, baseType: !289, size: 64, offset: 3392)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4423, file: !4424, line: 186, baseType: !289, size: 64, offset: 3456)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4423, file: !4424, line: 186, baseType: !289, size: 64, offset: 3520)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4423, file: !4424, line: 186, baseType: !289, size: 64, offset: 3584)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4423, file: !4424, line: 187, baseType: !289, size: 64, offset: 3648)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4423, file: !4424, line: 188, baseType: !289, size: 64, offset: 3712)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4423, file: !4424, line: 189, baseType: !4070, size: 192, offset: 3776)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4423, file: !4424, line: 190, baseType: !40, size: 64, offset: 3968)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4423, file: !4424, line: 190, baseType: !40, size: 64, offset: 4032)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4423, file: !4424, line: 190, baseType: !40, size: 64, offset: 4096)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4423, file: !4424, line: 190, baseType: !40, size: 64, offset: 4160)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4423, file: !4424, line: 191, baseType: !40, size: 64, offset: 4224)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4423, file: !4424, line: 191, baseType: !40, size: 64, offset: 4288)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4423, file: !4424, line: 191, baseType: !40, size: 64, offset: 4352)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4423, file: !4424, line: 191, baseType: !40, size: 64, offset: 4416)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4423, file: !4424, line: 192, baseType: !40, size: 64, offset: 4480)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4423, file: !4424, line: 192, baseType: !40, size: 64, offset: 4544)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4423, file: !4424, line: 192, baseType: !40, size: 64, offset: 4608)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4423, file: !4424, line: 192, baseType: !40, size: 64, offset: 4672)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4423, file: !4424, line: 193, baseType: !40, size: 64, offset: 4736)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4423, file: !4424, line: 193, baseType: !40, size: 64, offset: 4800)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4423, file: !4424, line: 194, baseType: !4519, size: 448, offset: 4864)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4520, line: 12, size: 448, elements: !4521)
!4520 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527, !4528}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4519, file: !4520, line: 15, baseType: !289, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4519, file: !4520, line: 17, baseType: !289, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4519, file: !4520, line: 19, baseType: !289, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4519, file: !4520, line: 21, baseType: !289, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4519, file: !4520, line: 29, baseType: !289, size: 64, offset: 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4519, file: !4520, line: 35, baseType: !289, size: 64, offset: 320)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4519, file: !4520, line: 44, baseType: !289, size: 64, offset: 384)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4423, file: !4424, line: 202, baseType: !291, size: 64, offset: 5312)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4423, file: !4424, line: 213, baseType: !4531, size: 2048, offset: 5376)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4532, size: 2048, elements: !3501)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4533, line: 43, size: 128, elements: !4534)
!4533 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4534 = !{!4535, !4536}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4532, file: !4533, line: 44, baseType: !39, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4532, file: !4533, line: 45, baseType: !39, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4423, file: !4424, line: 216, baseType: !4538, size: 448, offset: 7424)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4424, line: 30, size: 448, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4538, file: !4424, line: 31, baseType: !23, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4538, file: !4424, line: 32, baseType: !287, size: 64, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4538, file: !4424, line: 33, baseType: !40, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4538, file: !4424, line: 34, baseType: !289, size: 64, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4538, file: !4424, line: 34, baseType: !289, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4538, file: !4424, line: 35, baseType: !40, size: 64, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4538, file: !4424, line: 35, baseType: !40, size: 64, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4423, file: !4424, line: 219, baseType: !4548, size: 64, offset: 7872)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4550, line: 41, size: 3456, elements: !4551)
!4550 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4549, file: !4550, line: 47, baseType: !95, size: 16)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4549, file: !4550, line: 48, baseType: !319, size: 32, offset: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4549, file: !4550, line: 54, baseType: !86, size: 8, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4549, file: !4550, line: 55, baseType: !86, size: 8, offset: 72)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4549, file: !4550, line: 73, baseType: !290, size: 64, align: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4549, file: !4550, line: 74, baseType: !290, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4549, file: !4550, line: 81, baseType: !290, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4549, file: !4550, line: 82, baseType: !290, size: 64, offset: 320)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4549, file: !4550, line: 85, baseType: !290, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4549, file: !4550, line: 86, baseType: !290, size: 64, offset: 448)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4549, file: !4550, line: 94, baseType: !290, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4549, file: !4550, line: 102, baseType: !290, size: 64, offset: 576)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4549, file: !4550, line: 107, baseType: !3491, size: 256, offset: 640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4549, file: !4550, line: 108, baseType: !86, size: 8, align: 64, offset: 896)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4549, file: !4550, line: 110, baseType: !4567, size: 24, offset: 904)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !723)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4549, file: !4550, line: 111, baseType: !319, size: 32, align: 64, offset: 960)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4549, file: !4550, line: 113, baseType: !319, size: 32, offset: 992)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4549, file: !4550, line: 114, baseType: !319, size: 32, offset: 1024)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4549, file: !4550, line: 115, baseType: !319, size: 32, offset: 1056)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4549, file: !4550, line: 117, baseType: !319, size: 32, offset: 1088)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4549, file: !4550, line: 118, baseType: !290, size: 64, align: 64, offset: 1152)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4549, file: !4550, line: 120, baseType: !290, size: 64, offset: 1216)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4549, file: !4550, line: 121, baseType: !290, size: 64, offset: 1280)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4549, file: !4550, line: 122, baseType: !290, size: 64, offset: 1344)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4549, file: !4550, line: 123, baseType: !290, size: 64, offset: 1408)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4549, file: !4550, line: 133, baseType: !290, size: 64, offset: 1472)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4549, file: !4550, line: 137, baseType: !290, size: 64, offset: 1536)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4549, file: !4550, line: 142, baseType: !290, size: 64, offset: 1600)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4549, file: !4550, line: 143, baseType: !290, size: 64, offset: 1664)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4549, file: !4550, line: 146, baseType: !290, size: 64, offset: 1728)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4549, file: !4550, line: 147, baseType: !290, size: 64, offset: 1792)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4549, file: !4550, line: 148, baseType: !290, size: 64, offset: 1856)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4549, file: !4550, line: 149, baseType: !290, size: 64, offset: 1920)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4549, file: !4550, line: 154, baseType: !290, size: 64, offset: 1984)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4549, file: !4550, line: 155, baseType: !290, size: 64, offset: 2048)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4549, file: !4550, line: 156, baseType: !290, size: 64, offset: 2112)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4549, file: !4550, line: 158, baseType: !290, size: 64, offset: 2176)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4549, file: !4550, line: 159, baseType: !290, size: 64, offset: 2240)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4549, file: !4550, line: 162, baseType: !290, size: 64, offset: 2304)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4549, file: !4550, line: 163, baseType: !290, size: 64, offset: 2368)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4549, file: !4550, line: 164, baseType: !290, size: 64, offset: 2432)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4549, file: !4550, line: 167, baseType: !290, size: 64, offset: 2496)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4549, file: !4550, line: 168, baseType: !290, size: 64, offset: 2560)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4549, file: !4550, line: 171, baseType: !290, size: 64, offset: 2624)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4549, file: !4550, line: 172, baseType: !290, size: 64, offset: 2688)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4549, file: !4550, line: 175, baseType: !290, size: 64, offset: 2752)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4549, file: !4550, line: 178, baseType: !290, size: 64, offset: 2816)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4549, file: !4550, line: 179, baseType: !290, size: 64, offset: 2880)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4549, file: !4550, line: 182, baseType: !319, size: 32, offset: 2944)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4549, file: !4550, line: 186, baseType: !290, size: 64, align: 64, offset: 3008)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4549, file: !4550, line: 194, baseType: !290, size: 64, offset: 3072)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4549, file: !4550, line: 195, baseType: !290, size: 64, offset: 3136)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4549, file: !4550, line: 199, baseType: !290, size: 64, offset: 3200)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4549, file: !4550, line: 200, baseType: !290, size: 64, offset: 3264)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4549, file: !4550, line: 203, baseType: !290, size: 64, offset: 3328)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4549, file: !4550, line: 204, baseType: !290, size: 64, offset: 3392)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4423, file: !4424, line: 222, baseType: !5, size: 32, offset: 7936)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4423, file: !4424, line: 223, baseType: !4611, size: 64, offset: 8000)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4424, line: 223, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4423, file: !4424, line: 230, baseType: !879, size: 8, offset: 8064)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4423, file: !4424, line: 231, baseType: !848, size: 16, offset: 8080)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4423, file: !4424, line: 232, baseType: !848, size: 16, offset: 8096)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4423, file: !4424, line: 234, baseType: !631, size: 64, offset: 8128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4423, file: !4424, line: 237, baseType: !687, size: 256, offset: 8192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4423, file: !4424, line: 243, baseType: !820, size: 320, offset: 8448)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !326, file: !327, line: 1111, baseType: !4620, size: 64, offset: 15424)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4424, line: 20, size: 16640, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4621, file: !4424, line: 21, baseType: !60, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4621, file: !4424, line: 22, baseType: !333, size: 32, offset: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4621, file: !4424, line: 23, baseType: !55, size: 192, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4621, file: !4424, line: 24, baseType: !4627, size: 16384, offset: 256)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4628, size: 16384, elements: !1477)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4435, line: 51, size: 256, elements: !4629)
!4629 = !{!4630}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4628, file: !4435, line: 52, baseType: !4631, size: 256)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4435, line: 37, size: 256, elements: !4632)
!4632 = !{!4633, !4640, !4641, !4645}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4631, file: !4435, line: 39, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4635, line: 83, baseType: !4636)
!4635 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4635, line: 82, baseType: !4638)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !23}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4631, file: !4435, line: 40, baseType: !40, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4631, file: !4435, line: 46, baseType: !4642, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4635, line: 86, baseType: !4643)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4635, line: 85, baseType: !3055)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4631, file: !4435, line: 48, baseType: !4439, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !326, file: !327, line: 1112, baseType: !4439, size: 64, offset: 15488)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !326, file: !327, line: 1113, baseType: !4439, size: 64, offset: 15552)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !326, file: !327, line: 1115, baseType: !4439, size: 64, offset: 15616)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !326, file: !327, line: 1116, baseType: !4434, size: 192, offset: 15680)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !326, file: !327, line: 1117, baseType: !40, size: 64, offset: 15872)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !326, file: !327, line: 1118, baseType: !36, size: 64, offset: 15936)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !326, file: !327, line: 1119, baseType: !5, size: 32, offset: 16000)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !326, file: !327, line: 1121, baseType: !670, size: 64, offset: 16064)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !326, file: !327, line: 1125, baseType: !4655, size: 64, offset: 16128)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !327, line: 43, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !326, file: !327, line: 1127, baseType: !761, size: 32, offset: 16192)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !326, file: !327, line: 1128, baseType: !5, size: 32, offset: 16224)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !326, file: !327, line: 1130, baseType: !4660, size: 128, offset: 16256)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4661, line: 37, size: 128, elements: !4662)
!4661 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4662 = !{!4663, !4664, !4665}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4660, file: !4661, line: 38, baseType: !23, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4660, file: !4661, line: 39, baseType: !50, size: 32, offset: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4660, file: !4661, line: 40, baseType: !4666, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4661, line: 24, flags: DIFlagFwdDecl)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !326, file: !327, line: 1131, baseType: !4669, size: 256, offset: 16384)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4670, line: 12, size: 256, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4671 = !{!4672, !4673, !4674, !4675}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4669, file: !4670, line: 13, baseType: !890, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4669, file: !4670, line: 14, baseType: !40, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4669, file: !4670, line: 15, baseType: !40, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4669, file: !4670, line: 16, baseType: !879, size: 8, offset: 192)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !326, file: !327, line: 1134, baseType: !289, size: 64, offset: 16640)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !326, file: !327, line: 1135, baseType: !289, size: 64, offset: 16704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !326, file: !327, line: 1138, baseType: !60, size: 32, offset: 16768)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !326, file: !327, line: 1141, baseType: !474, size: 32, offset: 16800)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !326, file: !327, line: 1143, baseType: !4681, size: 64, offset: 16832)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !327, line: 735, size: 64, elements: !4682)
!4682 = !{!4683}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4681, file: !327, line: 736, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !326, file: !327, line: 1147, baseType: !514, size: 128, offset: 16896)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !326, file: !327, line: 1149, baseType: !325, size: 64, offset: 17024)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !326, file: !327, line: 1151, baseType: !4688, size: 64, offset: 17088)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !327, line: 1151, flags: DIFlagFwdDecl)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !326, file: !327, line: 1188, baseType: !21, size: 64, offset: 17152)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !326, file: !327, line: 1191, baseType: !4692, size: 64, offset: 17216)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !327, line: 44, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !326, file: !327, line: 1194, baseType: !4695, size: 64, offset: 17280)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !327, line: 45, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !326, file: !327, line: 1197, baseType: !4698, size: 64, offset: 17344)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2059, line: 155, size: 64, elements: !4700)
!4700 = !{!4701}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4699, file: !2059, line: 157, baseType: !40, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !326, file: !327, line: 1199, baseType: !4703, size: 64, offset: 17408)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2110, line: 99, size: 128, elements: !4705)
!4705 = !{!4706, !4707, !4708}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4704, file: !2110, line: 100, baseType: !680, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4704, file: !2110, line: 101, baseType: !50, size: 32, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4704, file: !2110, line: 103, baseType: !27, size: 16, offset: 96)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !326, file: !327, line: 1202, baseType: !4710, size: 64, offset: 17472)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !327, line: 48, flags: DIFlagFwdDecl)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !326, file: !327, line: 1205, baseType: !40, size: 64, offset: 17536)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !326, file: !327, line: 1206, baseType: !4714, size: 64, offset: 17600)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4435, line: 14, baseType: !4716)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4435, line: 12, size: 384, elements: !4717)
!4717 = !{!4718}
!4718 = !DIDerivedType(tag: DW_TAG_member, scope: !4716, file: !4435, line: 13, baseType: !4719, size: 384)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4716, file: !4435, line: 13, size: 384, elements: !4720)
!4720 = !{!4721, !4722, !4723, !4724}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4719, file: !4435, line: 13, baseType: !23, size: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4719, file: !4435, line: 13, baseType: !23, size: 32, offset: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4719, file: !4435, line: 13, baseType: !23, size: 32, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4719, file: !4435, line: 13, baseType: !4725, size: 256, offset: 128)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4726, line: 37, size: 256, elements: !4727)
!4726 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4727 = !{!4728, !4733, !4746, !4752, !4761, !4788, !4793}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4725, file: !4726, line: 42, baseType: !4729, size: 64)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 39, size: 64, elements: !4730)
!4730 = !{!4731, !4732}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4729, file: !4726, line: 40, baseType: !4047, size: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4729, file: !4726, line: 41, baseType: !767, size: 32, offset: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4725, file: !4726, line: 50, baseType: !4734, size: 192)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 45, size: 192, elements: !4735)
!4735 = !{!4736, !4738, !4739, !4745}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4734, file: !4726, line: 46, baseType: !4737, size: 32)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !38, line: 95, baseType: !23)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4734, file: !4726, line: 47, baseType: !23, size: 32, offset: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4734, file: !4726, line: 48, baseType: !4740, size: 64, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4726, line: 11, baseType: !4741)
!4741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4726, line: 8, size: 64, elements: !4742)
!4742 = !{!4743, !4744}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4741, file: !4726, line: 9, baseType: !23, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4741, file: !4726, line: 10, baseType: !21, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4734, file: !4726, line: 49, baseType: !23, size: 32, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4725, file: !4726, line: 57, baseType: !4747, size: 128)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 53, size: 128, elements: !4748)
!4748 = !{!4749, !4750, !4751}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4747, file: !4726, line: 54, baseType: !4047, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4747, file: !4726, line: 55, baseType: !767, size: 32, offset: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4747, file: !4726, line: 56, baseType: !4740, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4725, file: !4726, line: 66, baseType: !4753, size: 256)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 60, size: 256, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4760}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4753, file: !4726, line: 61, baseType: !4047, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4753, file: !4726, line: 62, baseType: !767, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4753, file: !4726, line: 63, baseType: !23, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4753, file: !4726, line: 64, baseType: !4759, size: 64, offset: 128)
!4759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !38, line: 94, baseType: !1334)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4753, file: !4726, line: 65, baseType: !4759, size: 64, offset: 192)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4725, file: !4726, line: 105, baseType: !4762, size: 256)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 69, size: 256, elements: !4763)
!4763 = !{!4764, !4765}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4762, file: !4726, line: 70, baseType: !21, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !4726, line: 79, baseType: !4766, size: 192, offset: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4762, file: !4726, line: 79, size: 192, elements: !4767)
!4767 = !{!4768, !4769, !4770, !4777, !4782}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4766, file: !4726, line: 81, baseType: !23, size: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4766, file: !4726, line: 86, baseType: !848, size: 16)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4766, file: !4726, line: 92, baseType: !4771, size: 192)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4766, file: !4726, line: 88, size: 192, elements: !4772)
!4772 = !{!4773, !4775, !4776}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4771, file: !4726, line: 89, baseType: !4774, size: 64)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !493)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4771, file: !4726, line: 90, baseType: !21, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4771, file: !4726, line: 91, baseType: !21, size: 64, offset: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4766, file: !4726, line: 97, baseType: !4778, size: 96)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4766, file: !4726, line: 94, size: 96, elements: !4779)
!4779 = !{!4780, !4781}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4778, file: !4726, line: 95, baseType: !4774, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4778, file: !4726, line: 96, baseType: !319, size: 32, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4766, file: !4726, line: 103, baseType: !4783, size: 128)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4766, file: !4726, line: 99, size: 128, elements: !4784)
!4784 = !{!4785, !4786, !4787}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4783, file: !4726, line: 100, baseType: !40, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4783, file: !4726, line: 101, baseType: !319, size: 32, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4783, file: !4726, line: 102, baseType: !319, size: 32, offset: 96)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4725, file: !4726, line: 111, baseType: !4789, size: 128)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 108, size: 128, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4789, file: !4726, line: 109, baseType: !287, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4789, file: !4726, line: 110, baseType: !23, size: 32, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4725, file: !4726, line: 118, baseType: !4794, size: 128)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !4726, line: 114, size: 128, elements: !4795)
!4795 = !{!4796, !4797, !4798}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4794, file: !4726, line: 115, baseType: !21, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4794, file: !4726, line: 116, baseType: !23, size: 32, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4794, file: !4726, line: 117, baseType: !5, size: 32, offset: 96)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !326, file: !327, line: 1208, baseType: !4519, size: 448, offset: 17664)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !326, file: !327, line: 1215, baseType: !289, size: 64, offset: 18112)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !326, file: !327, line: 1217, baseType: !289, size: 64, offset: 18176)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !326, file: !327, line: 1219, baseType: !289, size: 64, offset: 18240)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !326, file: !327, line: 1223, baseType: !1766, size: 64, offset: 18304)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !326, file: !327, line: 1225, baseType: !1151, size: 32, offset: 18368)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !326, file: !327, line: 1226, baseType: !23, size: 32, offset: 18400)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !326, file: !327, line: 1227, baseType: !23, size: 32, offset: 18432)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !326, file: !327, line: 1231, baseType: !4161, size: 64, offset: 18496)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !326, file: !327, line: 1233, baseType: !98, size: 128, offset: 18560)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !326, file: !327, line: 1240, baseType: !4810, size: 64, offset: 18688)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !327, line: 62, flags: DIFlagFwdDecl)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !326, file: !327, line: 1242, baseType: !4813, size: 64, offset: 18752)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !327, line: 1242, flags: DIFlagFwdDecl)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !326, file: !327, line: 1244, baseType: !98, size: 128, offset: 18816)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !326, file: !327, line: 1245, baseType: !4817, size: 64, offset: 18944)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !327, line: 51, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !326, file: !327, line: 1246, baseType: !687, size: 256, offset: 19008)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !326, file: !327, line: 1247, baseType: !5, size: 32, offset: 19264)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !326, file: !327, line: 1250, baseType: !4822, size: 64, offset: 19328)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !327, line: 57, flags: DIFlagFwdDecl)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !326, file: !327, line: 1251, baseType: !687, size: 256, offset: 19392)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !326, file: !327, line: 1252, baseType: !98, size: 128, offset: 19648)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !326, file: !327, line: 1259, baseType: !1758, size: 64, offset: 19776)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !326, file: !327, line: 1260, baseType: !848, size: 16, offset: 19840)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !326, file: !327, line: 1261, baseType: !848, size: 16, offset: 19856)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !326, file: !327, line: 1314, baseType: !4830, size: 64, offset: 19904)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4832, line: 62, size: 256, align: 256, elements: !4833)
!4832 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839, !4840}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4831, file: !4832, line: 75, baseType: !319, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4831, file: !4832, line: 90, baseType: !319, size: 32, offset: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4831, file: !4832, line: 112, baseType: !290, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4831, file: !4832, line: 132, baseType: !319, size: 32, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4831, file: !4832, line: 140, baseType: !319, size: 32, offset: 160)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4831, file: !4832, line: 149, baseType: !319, size: 32, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4831, file: !4832, line: 154, baseType: !4841, offset: 224)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !757)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !326, file: !327, line: 1315, baseType: !318, size: 32, offset: 19968)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !326, file: !327, line: 1316, baseType: !318, size: 32, offset: 20000)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !326, file: !327, line: 1321, baseType: !40, size: 64, offset: 20032)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !326, file: !327, line: 1325, baseType: !23, size: 32, offset: 20096)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !326, file: !327, line: 1326, baseType: !23, size: 32, offset: 20128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !326, file: !327, line: 1327, baseType: !23, size: 32, offset: 20160)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !326, file: !327, line: 1328, baseType: !23, size: 32, offset: 20192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !326, file: !327, line: 1329, baseType: !667, size: 128, align: 64, offset: 20224)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !326, file: !327, line: 1332, baseType: !4851, size: 128, offset: 20352)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4852, line: 51, size: 128, elements: !4853)
!4852 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4853 = !{!4854, !4859, !4860}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4851, file: !4852, line: 60, baseType: !4855, size: 64)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4856, line: 7, size: 64, elements: !4857)
!4856 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4857 = !{!4858}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4855, file: !4856, line: 12, baseType: !579, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4851, file: !4852, line: 63, baseType: !879, size: 8, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4851, file: !4852, line: 70, baseType: !879, size: 8, offset: 72)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !326, file: !327, line: 1335, baseType: !3739, size: 64, offset: 20480)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !326, file: !327, line: 1337, baseType: !4863, size: 128, offset: 20544)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4852, line: 39, size: 128, elements: !4864)
!4864 = !{!4865, !4866, !4867}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4863, file: !4852, line: 40, baseType: !1558, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4863, file: !4852, line: 42, baseType: !319, size: 32, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4863, file: !4852, line: 43, baseType: !319, size: 32, offset: 96)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !326, file: !327, line: 1340, baseType: !4869, size: 64, offset: 20672)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !327, line: 69, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !326, file: !327, line: 1351, baseType: !23, size: 32, offset: 20736)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !326, file: !327, line: 1352, baseType: !23, size: 32, offset: 20768)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !326, file: !327, line: 1354, baseType: !40, size: 64, offset: 20800)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !326, file: !327, line: 1364, baseType: !289, size: 64, offset: 20864)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !326, file: !327, line: 1365, baseType: !289, size: 64, offset: 20928)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !326, file: !327, line: 1412, baseType: !40, size: 64, offset: 20992)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !326, file: !327, line: 1453, baseType: !2105, size: 64, offset: 21056)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !326, file: !327, line: 1457, baseType: !4879, size: 64, offset: 21120)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !245, line: 61, size: 576, elements: !4881)
!4881 = !{!4882, !4883, !4902, !4905, !4906, !4939, !4949}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4880, file: !245, line: 62, baseType: !244, size: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, scope: !4880, file: !245, line: 64, baseType: !4884, size: 192, offset: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4880, file: !245, line: 64, size: 192, elements: !4885)
!4885 = !{!4886, !4897}
!4886 = !DIDerivedType(tag: DW_TAG_member, scope: !4884, file: !245, line: 65, baseType: !4887, size: 192)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4884, file: !245, line: 65, size: 192, elements: !4888)
!4888 = !{!4889, !4896}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4887, file: !245, line: 66, baseType: !4890, size: 128)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4891, line: 50, size: 128, elements: !4892)
!4891 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4892 = !{!4893, !4894, !4895}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4890, file: !4891, line: 52, baseType: !40, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4890, file: !4891, line: 54, baseType: !5, size: 32, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4890, file: !4891, line: 55, baseType: !5, size: 32, offset: 96)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4887, file: !245, line: 67, baseType: !40, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, scope: !4884, file: !245, line: 70, baseType: !4898, size: 192)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4884, file: !245, line: 70, size: 192, elements: !4899)
!4899 = !{!4900, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4898, file: !245, line: 71, baseType: !667, size: 128, align: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4898, file: !245, line: 72, baseType: !40, size: 64, offset: 128)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4880, file: !245, line: 76, baseType: !4903, size: 64, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !245, line: 76, flags: DIFlagFwdDecl)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4880, file: !245, line: 77, baseType: !40, size: 64, offset: 320)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4880, file: !245, line: 79, baseType: !4907, size: 64, offset: 384)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4891, line: 25, size: 256, elements: !4909)
!4909 = !{!4910, !4916, !4920}
!4910 = !DIDerivedType(tag: DW_TAG_member, scope: !4908, file: !4891, line: 26, baseType: !4911, size: 128)
!4911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4908, file: !4891, line: 26, size: 128, elements: !4912)
!4912 = !{!4913, !4915}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4911, file: !4891, line: 27, baseType: !4914, size: 128)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !3501)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4911, file: !4891, line: 28, baseType: !4914, size: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4908, file: !4891, line: 31, baseType: !4917, size: 64, offset: 128)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4919)
!4919 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4891, line: 23, flags: DIFlagFwdDecl)
!4920 = !DIDerivedType(tag: DW_TAG_member, scope: !4908, file: !4891, line: 33, baseType: !4921, size: 64, offset: 192)
!4921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4908, file: !4891, line: 33, size: 64, elements: !4922)
!4922 = !{!4923, !4929, !4934}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4921, file: !4891, line: 38, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4921, file: !4891, line: 34, size: 64, elements: !4925)
!4925 = !{!4926, !4927, !4928}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4924, file: !4891, line: 35, baseType: !812, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4924, file: !4891, line: 36, baseType: !84, size: 8, offset: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4924, file: !4891, line: 37, baseType: !84, size: 8, offset: 40)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4921, file: !4891, line: 42, baseType: !4930, size: 16)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4921, file: !4891, line: 39, size: 16, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4930, file: !4891, line: 40, baseType: !84, size: 8)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4930, file: !4891, line: 41, baseType: !84, size: 8, offset: 8)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4921, file: !4891, line: 46, baseType: !4935, size: 16)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4921, file: !4891, line: 43, size: 16, elements: !4936)
!4936 = !{!4937, !4938}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4935, file: !4891, line: 44, baseType: !84, size: 8)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4935, file: !4891, line: 45, baseType: !84, size: 8, offset: 8)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4880, file: !245, line: 81, baseType: !4940, size: 64, offset: 448)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !245, line: 85, size: 384, elements: !4942)
!4942 = !{!4943, !4944, !4945, !4946, !4947, !4948}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4941, file: !245, line: 86, baseType: !4903, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4941, file: !245, line: 87, baseType: !40, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4941, file: !245, line: 88, baseType: !40, size: 64, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4941, file: !245, line: 89, baseType: !40, size: 64, offset: 192)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4941, file: !245, line: 90, baseType: !879, size: 8, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4941, file: !245, line: 92, baseType: !4940, size: 64, offset: 320)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4880, file: !245, line: 82, baseType: !5, size: 32, offset: 512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !326, file: !327, line: 1463, baseType: !4951, offset: 21184)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !327, line: 739, elements: !652)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !326, file: !327, line: 1470, baseType: !667, size: 128, align: 64, offset: 21184)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !326, file: !327, line: 1471, baseType: !333, size: 32, offset: 21312)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !326, file: !327, line: 1472, baseType: !23, size: 32, offset: 21344)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !326, file: !327, line: 1474, baseType: !325, size: 64, offset: 21376)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !326, file: !327, line: 1475, baseType: !2314, size: 320, offset: 21440)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !326, file: !327, line: 1478, baseType: !4958, size: 64, offset: 21760)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !327, line: 1478, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !326, file: !327, line: 1482, baseType: !333, size: 32, offset: 21824)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !326, file: !327, line: 1489, baseType: !21, size: 64, offset: 21888)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !326, file: !327, line: 1504, baseType: !21, size: 64, offset: 21952)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !326, file: !327, line: 1505, baseType: !290, size: 64, offset: 22016)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !326, file: !327, line: 1506, baseType: !289, size: 64, offset: 22080)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !326, file: !327, line: 1507, baseType: !290, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !326, file: !327, line: 1508, baseType: !290, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !326, file: !327, line: 1509, baseType: !290, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !326, file: !327, line: 1510, baseType: !667, size: 128, align: 64, offset: 22208)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !326, file: !327, line: 1511, baseType: !23, size: 32, offset: 22336)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !326, file: !327, line: 1515, baseType: !4971, size: 64, offset: 22400)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !347, line: 56, size: 64, elements: !4972)
!4972 = !{!4973}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4971, file: !347, line: 57, baseType: !350, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !326, file: !327, line: 1518, baseType: !4971, size: 64, offset: 22464)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !326, file: !327, line: 1528, baseType: !667, size: 128, align: 64, offset: 22528)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !326, file: !327, line: 1552, baseType: !4977, size: 35328, offset: 23040)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4978, line: 430, size: 35328, elements: !4979)
!4978 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4979 = !{!4980, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5009, !5010, !5011, !5012, !5013, !5014, !5017, !5018, !5019, !5020}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4977, file: !4978, line: 432, baseType: !4981, size: 192)
!4981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4982, size: 192, elements: !723)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4983, line: 16, size: 64, elements: !4984)
!4983 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4984 = !{!4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4982, file: !4983, line: 17, baseType: !94, size: 16)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4982, file: !4983, line: 18, baseType: !94, size: 16, offset: 16)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4982, file: !4983, line: 19, baseType: !94, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4982, file: !4983, line: 19, baseType: !94, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4982, file: !4983, line: 19, baseType: !94, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4982, file: !4983, line: 19, baseType: !94, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4982, file: !4983, line: 19, baseType: !94, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4982, file: !4983, line: 20, baseType: !94, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4982, file: !4983, line: 20, baseType: !94, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4982, file: !4983, line: 20, baseType: !94, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4982, file: !4983, line: 20, baseType: !94, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4982, file: !4983, line: 20, baseType: !94, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4982, file: !4983, line: 20, baseType: !94, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4977, file: !4978, line: 436, baseType: !40, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4977, file: !4978, line: 440, baseType: !27, size: 16, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4977, file: !4978, line: 441, baseType: !27, size: 16, offset: 272)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4977, file: !4978, line: 442, baseType: !27, size: 16, offset: 288)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4977, file: !4978, line: 443, baseType: !27, size: 16, offset: 304)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4977, file: !4978, line: 447, baseType: !40, size: 64, offset: 320)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4977, file: !4978, line: 448, baseType: !40, size: 64, offset: 384)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4977, file: !4978, line: 459, baseType: !5006, size: 256, offset: 448)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5007, size: 256, elements: !744)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4978, line: 428, flags: DIFlagFwdDecl)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4977, file: !4978, line: 461, baseType: !40, size: 64, offset: 704)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4977, file: !4978, line: 463, baseType: !40, size: 64, offset: 768)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4977, file: !4978, line: 465, baseType: !40, size: 64, offset: 832)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4977, file: !4978, line: 466, baseType: !40, size: 64, offset: 896)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4977, file: !4978, line: 467, baseType: !40, size: 64, offset: 960)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4977, file: !4978, line: 473, baseType: !5015, size: 64, offset: 1024)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4978, line: 10, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4977, file: !4978, line: 480, baseType: !40, size: 64, offset: 1088)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4977, file: !4978, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4977, file: !4978, line: 491, baseType: !318, size: 32, offset: 1184)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4977, file: !4978, line: 501, baseType: !5021, size: 33792, offset: 1536)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5022, line: 448, size: 33792, elements: !5023)
!5022 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5023 = !{!5024, !5025, !5026, !5186, !5187, !5193, !5194}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5021, file: !5022, line: 461, baseType: !5, size: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5021, file: !5022, line: 468, baseType: !40, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5021, file: !5022, line: 476, baseType: !5027, size: 64, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5022, line: 356, size: 33280, align: 512, elements: !5029)
!5029 = !{!5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5028, file: !5022, line: 358, baseType: !5, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5028, file: !5022, line: 361, baseType: !5, size: 32, offset: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5028, file: !5022, line: 364, baseType: !289, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5028, file: !5022, line: 367, baseType: !289, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5028, file: !5022, line: 370, baseType: !289, size: 64, offset: 192)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5028, file: !5022, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5028, file: !5022, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5028, file: !5022, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5028, file: !5022, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5028, file: !5022, line: 397, baseType: !5040, size: 32768, offset: 512)
!5040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5022, line: 348, size: 32768, elements: !5041)
!5041 = !{!5042, !5057, !5094, !5171, !5184}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5040, file: !5022, line: 349, baseType: !5043, size: 896)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5022, line: 12, size: 896, elements: !5044)
!5044 = !{!5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5056}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5043, file: !5022, line: 13, baseType: !318, size: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5043, file: !5022, line: 14, baseType: !318, size: 32, offset: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5043, file: !5022, line: 15, baseType: !318, size: 32, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5043, file: !5022, line: 16, baseType: !318, size: 32, offset: 96)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5043, file: !5022, line: 17, baseType: !318, size: 32, offset: 128)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5043, file: !5022, line: 18, baseType: !318, size: 32, offset: 160)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5043, file: !5022, line: 19, baseType: !318, size: 32, offset: 192)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5043, file: !5022, line: 22, baseType: !5053, size: 640, offset: 224)
!5053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 640, elements: !5054)
!5054 = !{!5055}
!5055 = !DISubrange(count: 20)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5043, file: !5022, line: 25, baseType: !318, size: 32, offset: 864)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5040, file: !5022, line: 350, baseType: !5058, size: 4096, align: 128)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5022, line: 34, size: 4096, align: 128, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5079, !5080, !5081, !5083, !5085, !5089}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5058, file: !5022, line: 35, baseType: !94, size: 16)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5058, file: !5022, line: 36, baseType: !94, size: 16, offset: 16)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5058, file: !5022, line: 37, baseType: !94, size: 16, offset: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5058, file: !5022, line: 38, baseType: !94, size: 16, offset: 48)
!5064 = !DIDerivedType(tag: DW_TAG_member, scope: !5058, file: !5022, line: 39, baseType: !5065, size: 128, offset: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5058, file: !5022, line: 39, size: 128, elements: !5066)
!5066 = !{!5067, !5072}
!5067 = !DIDerivedType(tag: DW_TAG_member, scope: !5065, file: !5022, line: 40, baseType: !5068, size: 128)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5065, file: !5022, line: 40, size: 128, elements: !5069)
!5069 = !{!5070, !5071}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5068, file: !5022, line: 41, baseType: !289, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5068, file: !5022, line: 42, baseType: !289, size: 64, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, scope: !5065, file: !5022, line: 44, baseType: !5073, size: 128)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5065, file: !5022, line: 44, size: 128, elements: !5074)
!5074 = !{!5075, !5076, !5077, !5078}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5073, file: !5022, line: 45, baseType: !318, size: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5073, file: !5022, line: 46, baseType: !318, size: 32, offset: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5073, file: !5022, line: 47, baseType: !318, size: 32, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5073, file: !5022, line: 48, baseType: !318, size: 32, offset: 96)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5058, file: !5022, line: 51, baseType: !318, size: 32, offset: 192)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5058, file: !5022, line: 52, baseType: !318, size: 32, offset: 224)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5058, file: !5022, line: 55, baseType: !5082, size: 1024, offset: 256)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 1024, elements: !3492)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5058, file: !5022, line: 58, baseType: !5084, size: 2048, offset: 1280)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 2048, elements: !1477)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5058, file: !5022, line: 60, baseType: !5086, size: 384, offset: 3328)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !5087)
!5087 = !{!5088}
!5088 = !DISubrange(count: 12)
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5058, file: !5022, line: 62, baseType: !5090, size: 384, offset: 3712)
!5090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5058, file: !5022, line: 62, size: 384, elements: !5091)
!5091 = !{!5092, !5093}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5090, file: !5022, line: 63, baseType: !5086, size: 384)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5090, file: !5022, line: 64, baseType: !5086, size: 384)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5040, file: !5022, line: 351, baseType: !5095, size: 1088)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5022, line: 79, size: 1088, elements: !5096)
!5096 = !{!5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5170}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5095, file: !5022, line: 80, baseType: !318, size: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5095, file: !5022, line: 81, baseType: !318, size: 32, offset: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5095, file: !5022, line: 82, baseType: !318, size: 32, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5095, file: !5022, line: 83, baseType: !318, size: 32, offset: 96)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5095, file: !5022, line: 84, baseType: !318, size: 32, offset: 128)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5095, file: !5022, line: 85, baseType: !318, size: 32, offset: 160)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5095, file: !5022, line: 86, baseType: !318, size: 32, offset: 192)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5095, file: !5022, line: 88, baseType: !5053, size: 640, offset: 224)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5095, file: !5022, line: 89, baseType: !84, size: 8, offset: 864)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5095, file: !5022, line: 90, baseType: !84, size: 8, offset: 872)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5095, file: !5022, line: 91, baseType: !84, size: 8, offset: 880)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5095, file: !5022, line: 92, baseType: !84, size: 8, offset: 888)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5095, file: !5022, line: 93, baseType: !84, size: 8, offset: 896)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5095, file: !5022, line: 94, baseType: !84, size: 8, offset: 904)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5095, file: !5022, line: 95, baseType: !5112, size: 64, offset: 960)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5114, line: 11, size: 128, elements: !5115)
!5114 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5115 = !{!5116, !5117}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5113, file: !5114, line: 12, baseType: !287, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5113, file: !5114, line: 13, baseType: !5118, size: 64, offset: 64)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5120, line: 103, size: 1344, elements: !5121)
!5120 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5121 = !{!5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5150, !5151, !5152}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5119, file: !5120, line: 109, baseType: !40, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5119, file: !5120, line: 110, baseType: !40, size: 64, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5119, file: !5120, line: 111, baseType: !40, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5119, file: !5120, line: 112, baseType: !40, size: 64, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5119, file: !5120, line: 113, baseType: !40, size: 64, offset: 256)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5119, file: !5120, line: 114, baseType: !40, size: 64, offset: 320)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5119, file: !5120, line: 117, baseType: !40, size: 64, offset: 384)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5119, file: !5120, line: 118, baseType: !40, size: 64, offset: 448)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5119, file: !5120, line: 119, baseType: !40, size: 64, offset: 512)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5119, file: !5120, line: 120, baseType: !40, size: 64, offset: 576)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5119, file: !5120, line: 121, baseType: !40, size: 64, offset: 640)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5119, file: !5120, line: 122, baseType: !40, size: 64, offset: 704)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5119, file: !5120, line: 123, baseType: !40, size: 64, offset: 768)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5119, file: !5120, line: 124, baseType: !40, size: 64, offset: 832)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5119, file: !5120, line: 125, baseType: !40, size: 64, offset: 896)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5119, file: !5120, line: 139, baseType: !40, size: 64, offset: 960)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5119, file: !5120, line: 142, baseType: !40, size: 64, offset: 1024)
!5139 = !DIDerivedType(tag: DW_TAG_member, scope: !5119, file: !5120, line: 144, baseType: !5140, size: 64, offset: 1088)
!5140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5119, file: !5120, line: 144, size: 64, elements: !5141)
!5141 = !{!5142, !5143, !5144}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5140, file: !5120, line: 146, baseType: !94, size: 16)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5140, file: !5120, line: 148, baseType: !289, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5140, file: !5120, line: 150, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5120, line: 59, size: 64, elements: !5146)
!5146 = !{!5147, !5148, !5149}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5145, file: !5120, line: 61, baseType: !289, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5145, file: !5120, line: 63, baseType: !289, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5145, file: !5120, line: 65, baseType: !289, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5119, file: !5120, line: 153, baseType: !40, size: 64, offset: 1152)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5119, file: !5120, line: 154, baseType: !40, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_member, scope: !5119, file: !5120, line: 156, baseType: !5153, size: 64, offset: 1280)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5119, file: !5120, line: 156, size: 64, elements: !5154)
!5154 = !{!5155, !5156, !5157}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5153, file: !5120, line: 158, baseType: !94, size: 16)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5153, file: !5120, line: 160, baseType: !289, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5153, file: !5120, line: 162, baseType: !5158, size: 64)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5120, line: 69, size: 64, elements: !5159)
!5159 = !{!5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5158, file: !5120, line: 71, baseType: !289, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5158, file: !5120, line: 73, baseType: !289, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5158, file: !5120, line: 75, baseType: !289, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5158, file: !5120, line: 77, baseType: !289, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5158, file: !5120, line: 80, baseType: !289, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5158, file: !5120, line: 83, baseType: !289, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5158, file: !5120, line: 86, baseType: !289, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5158, file: !5120, line: 88, baseType: !289, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5158, file: !5120, line: 93, baseType: !289, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5158, file: !5120, line: 100, baseType: !289, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5095, file: !5022, line: 96, baseType: !318, size: 32, offset: 1024)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5040, file: !5022, line: 352, baseType: !5172, size: 4608, align: 512)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5022, line: 333, size: 4608, align: 512, elements: !5173)
!5173 = !{!5174, !5175, !5182}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5172, file: !5022, line: 334, baseType: !5058, size: 4096, align: 128)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5172, file: !5022, line: 335, baseType: !5176, size: 512, offset: 4096)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5022, line: 312, size: 512, elements: !5177)
!5177 = !{!5178, !5179, !5180}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5176, file: !5022, line: 313, baseType: !289, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5176, file: !5022, line: 314, baseType: !289, size: 64, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5176, file: !5022, line: 315, baseType: !5181, size: 384, offset: 128)
!5181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 384, elements: !866)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5172, file: !5022, line: 336, baseType: !5183, offset: 4608)
!5183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !757)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5040, file: !5022, line: 353, baseType: !5185, size: 32768)
!5185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32768, elements: !4218)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5021, file: !5022, line: 484, baseType: !5027, size: 64, offset: 192)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5021, file: !5022, line: 491, baseType: !5188, size: 128, offset: 256)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5022, line: 404, size: 128, elements: !5189)
!5189 = !{!5190, !5191, !5192}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5188, file: !5022, line: 424, baseType: !289, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5188, file: !5022, line: 432, baseType: !5, size: 32, offset: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5188, file: !5022, line: 440, baseType: !5, size: 32, offset: 96)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5021, file: !5022, line: 498, baseType: !5188, size: 128, offset: 384)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5021, file: !5022, line: 508, baseType: !5028, size: 33280, align: 512, offset: 512)
!5195 = !{i32 7, !"Dwarf Version", i32 5}
!5196 = !{i32 2, !"Debug Info Version", i32 3}
!5197 = !{i32 1, !"wchar_size", i32 2}
!5198 = !{i32 8, !"cf-protection-branch", i32 1}
!5199 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5200 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5201 = !{i32 1, !"Code Model", i32 2}
!5202 = !{i32 1, !"override-stack-alignment", i32 8}
!5203 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5204 = distinct !DISubprogram(name: "walk_page_range", scope: !1, file: !1, line: 470, type: !5205, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5259)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!23, !631, !40, !40, !5207, !21}
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5209)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_walk_ops", file: !252, line: 58, size: 704, elements: !5210)
!5210 = !{!5211, !5225, !5229, !5233, !5237, !5241, !5245, !5249, !5253, !5254, !5258}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_entry", scope: !5209, file: !252, line: 59, baseType: !5212, size: 64)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!23, !3850, !40, !40, !5215}
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_walk", file: !252, line: 107, size: 384, elements: !5217)
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5223, !5224}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5216, file: !252, line: 108, baseType: !5207, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5216, file: !252, line: 109, baseType: !631, size: 64, offset: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5216, file: !252, line: 110, baseType: !3850, size: 64, offset: 128)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !5216, file: !252, line: 111, baseType: !1667, size: 64, offset: 192)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5216, file: !252, line: 112, baseType: !251, size: 32, offset: 256)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "no_vma", scope: !5216, file: !252, line: 113, baseType: !879, size: 8, offset: 288)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5216, file: !252, line: 114, baseType: !21, size: 64, offset: 320)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "p4d_entry", scope: !5209, file: !252, line: 61, baseType: !5226, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!23, !292, !40, !40, !5215}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "pud_entry", scope: !5209, file: !252, line: 63, baseType: !5230, size: 64, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!23, !299, !40, !40, !5215}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_entry", scope: !5209, file: !252, line: 65, baseType: !5234, size: 64, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!23, !305, !40, !40, !5215}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "pte_entry", scope: !5209, file: !252, line: 67, baseType: !5238, size: 64, offset: 256)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!23, !1811, !40, !40, !5215}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "pte_hole", scope: !5209, file: !252, line: 69, baseType: !5242, size: 64, offset: 320)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!23, !40, !40, !23, !5215}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_entry", scope: !5209, file: !252, line: 71, baseType: !5246, size: 64, offset: 384)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!23, !1811, !40, !40, !40, !5215}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "test_walk", scope: !5209, file: !252, line: 74, baseType: !5250, size: 64, offset: 448)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!23, !40, !40, !5215}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vma", scope: !5209, file: !252, line: 76, baseType: !5250, size: 64, offset: 512)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "post_vma", scope: !5209, file: !252, line: 78, baseType: !5255, size: 64, offset: 576)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !5215}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "walk_lock", scope: !5209, file: !252, line: 79, baseType: !257, size: 32, offset: 640)
!5259 = !{!5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5275, !5276, !5279}
!5260 = !DILocalVariable(name: "mm", arg: 1, scope: !5204, file: !1, line: 470, type: !631)
!5261 = !DILocalVariable(name: "start", arg: 2, scope: !5204, file: !1, line: 470, type: !40)
!5262 = !DILocalVariable(name: "end", arg: 3, scope: !5204, file: !1, line: 471, type: !40)
!5263 = !DILocalVariable(name: "ops", arg: 4, scope: !5204, file: !1, line: 471, type: !5207)
!5264 = !DILocalVariable(name: "private", arg: 5, scope: !5204, file: !1, line: 472, type: !21)
!5265 = !DILocalVariable(name: "err", scope: !5204, file: !1, line: 474, type: !23)
!5266 = !DILocalVariable(name: "next", scope: !5204, file: !1, line: 475, type: !40)
!5267 = !DILocalVariable(name: "vma", scope: !5204, file: !1, line: 476, type: !1667)
!5268 = !DILocalVariable(name: "walk", scope: !5204, file: !1, line: 477, type: !5216)
!5269 = !DILocalVariable(name: "__UNIQUE_ID___x336", scope: !5270, file: !1, line: 500, type: !40)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !1, line: 500, column: 11)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !1, line: 498, column: 37)
!5272 = distinct !DILexicalBlock(scope: !5273, file: !1, line: 498, column: 14)
!5273 = distinct !DILexicalBlock(scope: !5274, file: !1, line: 493, column: 7)
!5274 = distinct !DILexicalBlock(scope: !5204, file: !1, line: 492, column: 5)
!5275 = !DILocalVariable(name: "__UNIQUE_ID___y337", scope: !5270, file: !1, line: 500, type: !40)
!5276 = !DILocalVariable(name: "__UNIQUE_ID___x338", scope: !5277, file: !1, line: 506, type: !40)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !1, line: 506, column: 11)
!5278 = distinct !DILexicalBlock(scope: !5272, file: !1, line: 503, column: 10)
!5279 = !DILocalVariable(name: "__UNIQUE_ID___y339", scope: !5277, file: !1, line: 506, type: !40)
!5280 = !DILocation(line: 470, column: 39, scope: !5204)
!5281 = !DILocation(line: 470, column: 57, scope: !5204)
!5282 = !DILocation(line: 471, column: 17, scope: !5204)
!5283 = !DILocation(line: 471, column: 48, scope: !5204)
!5284 = !DILocation(line: 472, column: 9, scope: !5204)
!5285 = !DILocation(line: 474, column: 2, scope: !5204)
!5286 = !DILocation(line: 474, column: 6, scope: !5204)
!5287 = !DILocation(line: 475, column: 2, scope: !5204)
!5288 = !DILocation(line: 475, column: 16, scope: !5204)
!5289 = !DILocation(line: 476, column: 2, scope: !5204)
!5290 = !DILocation(line: 476, column: 25, scope: !5204)
!5291 = !DILocation(line: 477, column: 2, scope: !5204)
!5292 = !DILocation(line: 477, column: 17, scope: !5204)
!5293 = !DILocation(line: 477, column: 24, scope: !5204)
!5294 = !DILocation(line: 478, column: 11, scope: !5204)
!5295 = !DILocation(line: 479, column: 10, scope: !5204)
!5296 = !DILocation(line: 480, column: 14, scope: !5204)
!5297 = !DILocation(line: 483, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5204, file: !1, line: 483, column: 6)
!5299 = !DILocation(line: 483, column: 15, scope: !5298)
!5300 = !DILocation(line: 483, column: 12, scope: !5298)
!5301 = !DILocation(line: 483, column: 6, scope: !5204)
!5302 = !DILocation(line: 484, column: 3, scope: !5298)
!5303 = !DILocation(line: 486, column: 12, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5204, file: !1, line: 486, column: 6)
!5305 = !DILocation(line: 486, column: 7, scope: !5304)
!5306 = !DILocation(line: 486, column: 6, scope: !5204)
!5307 = !DILocation(line: 487, column: 3, scope: !5304)
!5308 = !DILocation(line: 489, column: 28, scope: !5204)
!5309 = !DILocation(line: 489, column: 32, scope: !5204)
!5310 = !DILocation(line: 489, column: 37, scope: !5204)
!5311 = !DILocation(line: 489, column: 2, scope: !5204)
!5312 = !DILocation(line: 491, column: 22, scope: !5204)
!5313 = !DILocation(line: 491, column: 26, scope: !5204)
!5314 = !DILocation(line: 491, column: 8, scope: !5204)
!5315 = !DILocation(line: 491, column: 6, scope: !5204)
!5316 = !DILocation(line: 492, column: 2, scope: !5204)
!5317 = !DILocation(line: 493, column: 8, scope: !5273)
!5318 = !DILocation(line: 493, column: 7, scope: !5274)
!5319 = !DILocation(line: 494, column: 9, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5273, file: !1, line: 493, column: 13)
!5321 = !DILocation(line: 494, column: 13, scope: !5320)
!5322 = !DILocation(line: 495, column: 11, scope: !5320)
!5323 = !DILocation(line: 495, column: 9, scope: !5320)
!5324 = !DILocation(line: 496, column: 8, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5320, file: !1, line: 496, column: 8)
!5326 = !DILocation(line: 496, column: 13, scope: !5325)
!5327 = !DILocation(line: 496, column: 8, scope: !5320)
!5328 = !DILocation(line: 497, column: 11, scope: !5325)
!5329 = !DILocation(line: 497, column: 16, scope: !5325)
!5330 = !DILocation(line: 497, column: 25, scope: !5325)
!5331 = !DILocation(line: 497, column: 32, scope: !5325)
!5332 = !DILocation(line: 497, column: 9, scope: !5325)
!5333 = !DILocation(line: 497, column: 5, scope: !5325)
!5334 = !DILocation(line: 498, column: 3, scope: !5320)
!5335 = !DILocation(line: 498, column: 14, scope: !5272)
!5336 = !DILocation(line: 498, column: 22, scope: !5272)
!5337 = !DILocation(line: 498, column: 27, scope: !5272)
!5338 = !DILocation(line: 498, column: 20, scope: !5272)
!5339 = !DILocation(line: 498, column: 14, scope: !5273)
!5340 = !DILocation(line: 499, column: 9, scope: !5271)
!5341 = !DILocation(line: 499, column: 13, scope: !5271)
!5342 = !DILocation(line: 500, column: 11, scope: !5270)
!5343 = !DILocation(line: 500, column: 11, scope: !5271)
!5344 = !DILocation(line: 500, column: 9, scope: !5271)
!5345 = !DILocation(line: 501, column: 8, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5271, file: !1, line: 501, column: 8)
!5347 = !DILocation(line: 501, column: 13, scope: !5346)
!5348 = !DILocation(line: 501, column: 8, scope: !5271)
!5349 = !DILocation(line: 502, column: 11, scope: !5346)
!5350 = !DILocation(line: 502, column: 16, scope: !5346)
!5351 = !DILocation(line: 502, column: 25, scope: !5346)
!5352 = !DILocation(line: 502, column: 32, scope: !5346)
!5353 = !DILocation(line: 502, column: 9, scope: !5346)
!5354 = !DILocation(line: 502, column: 5, scope: !5346)
!5355 = !DILocation(line: 503, column: 3, scope: !5271)
!5356 = !DILocation(line: 504, column: 26, scope: !5278)
!5357 = !DILocation(line: 504, column: 31, scope: !5278)
!5358 = !DILocation(line: 504, column: 36, scope: !5278)
!5359 = !DILocation(line: 504, column: 4, scope: !5278)
!5360 = !DILocation(line: 505, column: 15, scope: !5278)
!5361 = !DILocation(line: 505, column: 9, scope: !5278)
!5362 = !DILocation(line: 505, column: 13, scope: !5278)
!5363 = !DILocation(line: 506, column: 11, scope: !5277)
!5364 = !DILocation(line: 506, column: 11, scope: !5278)
!5365 = !DILocation(line: 506, column: 9, scope: !5278)
!5366 = !DILocation(line: 507, column: 19, scope: !5278)
!5367 = !DILocation(line: 507, column: 23, scope: !5278)
!5368 = !DILocation(line: 507, column: 28, scope: !5278)
!5369 = !DILocation(line: 507, column: 10, scope: !5278)
!5370 = !DILocation(line: 507, column: 8, scope: !5278)
!5371 = !DILocation(line: 509, column: 25, scope: !5278)
!5372 = !DILocation(line: 509, column: 32, scope: !5278)
!5373 = !DILocation(line: 509, column: 10, scope: !5278)
!5374 = !DILocation(line: 509, column: 8, scope: !5278)
!5375 = !DILocation(line: 510, column: 8, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5278, file: !1, line: 510, column: 8)
!5377 = !DILocation(line: 510, column: 12, scope: !5376)
!5378 = !DILocation(line: 510, column: 8, scope: !5278)
!5379 = !DILocation(line: 516, column: 9, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5376, file: !1, line: 510, column: 17)
!5381 = !DILocation(line: 517, column: 5, scope: !5380)
!5382 = !DILocation(line: 519, column: 8, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5278, file: !1, line: 519, column: 8)
!5384 = !DILocation(line: 519, column: 12, scope: !5383)
!5385 = !DILocation(line: 519, column: 8, scope: !5278)
!5386 = !DILocation(line: 520, column: 5, scope: !5383)
!5387 = !DILocation(line: 521, column: 28, scope: !5278)
!5388 = !DILocation(line: 521, column: 35, scope: !5278)
!5389 = !DILocation(line: 521, column: 10, scope: !5278)
!5390 = !DILocation(line: 521, column: 8, scope: !5278)
!5391 = !DILocation(line: 523, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5274, file: !1, line: 523, column: 7)
!5393 = !DILocation(line: 523, column: 7, scope: !5274)
!5394 = !DILocation(line: 524, column: 4, scope: !5392)
!5395 = !DILocation(line: 525, column: 2, scope: !5274)
!5396 = !DILocation(line: 525, column: 19, scope: !5204)
!5397 = !DILocation(line: 525, column: 17, scope: !5204)
!5398 = !DILocation(line: 525, column: 25, scope: !5204)
!5399 = !DILocation(line: 525, column: 33, scope: !5204)
!5400 = !DILocation(line: 525, column: 31, scope: !5204)
!5401 = distinct !{!5401, !5316, !5402, !5403, !5404}
!5402 = !DILocation(line: 525, column: 36, scope: !5204)
!5403 = !{!"llvm.loop.mustprogress"}
!5404 = !{!"llvm.loop.unroll.disable"}
!5405 = !DILocation(line: 526, column: 9, scope: !5204)
!5406 = !DILocation(line: 526, column: 2, scope: !5204)
!5407 = !DILocation(line: 527, column: 1, scope: !5204)
!5408 = distinct !DISubprogram(name: "process_mm_walk_lock", scope: !1, file: !1, line: 403, type: !5409, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5411)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{null, !631, !257}
!5411 = !{!5412, !5413}
!5412 = !DILocalVariable(name: "mm", arg: 1, scope: !5408, file: !1, line: 403, type: !631)
!5413 = !DILocalVariable(name: "walk_lock", arg: 2, scope: !5408, file: !1, line: 404, type: !257)
!5414 = !DILocation(line: 403, column: 59, scope: !5408)
!5415 = !DILocation(line: 404, column: 26, scope: !5408)
!5416 = !DILocation(line: 406, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5408, file: !1, line: 406, column: 6)
!5418 = !DILocation(line: 406, column: 16, scope: !5417)
!5419 = !DILocation(line: 406, column: 6, scope: !5408)
!5420 = !DILocation(line: 407, column: 22, scope: !5417)
!5421 = !DILocation(line: 407, column: 3, scope: !5417)
!5422 = !DILocation(line: 409, column: 28, scope: !5417)
!5423 = !DILocation(line: 409, column: 3, scope: !5417)
!5424 = !DILocation(line: 410, column: 1, scope: !5408)
!5425 = !DISubprogram(name: "find_vma", scope: !1661, file: !1661, line: 3359, type: !5426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!1667, !631, !40}
!5428 = distinct !DISubprogram(name: "process_vma_walk_lock", scope: !1, file: !1, line: 412, type: !5429, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5431)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{null, !1667, !257}
!5431 = !{!5432, !5433}
!5432 = !DILocalVariable(name: "vma", arg: 1, scope: !5428, file: !1, line: 412, type: !1667)
!5433 = !DILocalVariable(name: "walk_lock", arg: 2, scope: !5428, file: !1, line: 413, type: !257)
!5434 = !DILocation(line: 412, column: 65, scope: !5428)
!5435 = !DILocation(line: 413, column: 27, scope: !5428)
!5436 = !DILocation(line: 416, column: 10, scope: !5428)
!5437 = !DILocation(line: 416, column: 2, scope: !5428)
!5438 = !DILocation(line: 418, column: 19, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5428, file: !1, line: 416, column: 21)
!5440 = !DILocation(line: 418, column: 3, scope: !5439)
!5441 = !DILocation(line: 419, column: 3, scope: !5439)
!5442 = !DILocation(line: 421, column: 27, scope: !5439)
!5443 = !DILocation(line: 421, column: 3, scope: !5439)
!5444 = !DILocation(line: 422, column: 3, scope: !5439)
!5445 = !DILocation(line: 428, column: 1, scope: !5428)
!5446 = distinct !DISubprogram(name: "walk_page_test", scope: !1, file: !1, line: 352, type: !5251, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5447)
!5447 = !{!5448, !5449, !5450, !5451, !5452, !5453}
!5448 = !DILocalVariable(name: "start", arg: 1, scope: !5446, file: !1, line: 352, type: !40)
!5449 = !DILocalVariable(name: "end", arg: 2, scope: !5446, file: !1, line: 352, type: !40)
!5450 = !DILocalVariable(name: "walk", arg: 3, scope: !5446, file: !1, line: 353, type: !5215)
!5451 = !DILocalVariable(name: "vma", scope: !5446, file: !1, line: 355, type: !1667)
!5452 = !DILocalVariable(name: "ops", scope: !5446, file: !1, line: 356, type: !5207)
!5453 = !DILocalVariable(name: "err", scope: !5454, file: !1, line: 370, type: !23)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !1, line: 369, column: 33)
!5455 = distinct !DILexicalBlock(scope: !5446, file: !1, line: 369, column: 6)
!5456 = !DILocation(line: 352, column: 41, scope: !5446)
!5457 = !DILocation(line: 352, column: 62, scope: !5446)
!5458 = !DILocation(line: 353, column: 20, scope: !5446)
!5459 = !DILocation(line: 355, column: 2, scope: !5446)
!5460 = !DILocation(line: 355, column: 25, scope: !5446)
!5461 = !DILocation(line: 355, column: 31, scope: !5446)
!5462 = !DILocation(line: 355, column: 37, scope: !5446)
!5463 = !DILocation(line: 356, column: 2, scope: !5446)
!5464 = !DILocation(line: 356, column: 28, scope: !5446)
!5465 = !DILocation(line: 356, column: 34, scope: !5446)
!5466 = !DILocation(line: 356, column: 40, scope: !5446)
!5467 = !DILocation(line: 358, column: 6, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5446, file: !1, line: 358, column: 6)
!5469 = !DILocation(line: 358, column: 11, scope: !5468)
!5470 = !DILocation(line: 358, column: 6, scope: !5446)
!5471 = !DILocation(line: 359, column: 10, scope: !5468)
!5472 = !DILocation(line: 359, column: 15, scope: !5468)
!5473 = !DILocation(line: 359, column: 25, scope: !5468)
!5474 = !DILocation(line: 359, column: 32, scope: !5468)
!5475 = !DILocation(line: 359, column: 37, scope: !5468)
!5476 = !DILocation(line: 359, column: 3, scope: !5468)
!5477 = !DILocation(line: 369, column: 6, scope: !5455)
!5478 = !DILocation(line: 369, column: 11, scope: !5455)
!5479 = !DILocation(line: 369, column: 20, scope: !5455)
!5480 = !DILocation(line: 369, column: 6, scope: !5446)
!5481 = !DILocation(line: 370, column: 3, scope: !5454)
!5482 = !DILocation(line: 370, column: 7, scope: !5454)
!5483 = !DILocation(line: 371, column: 7, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 371, column: 7)
!5485 = !DILocation(line: 371, column: 12, scope: !5484)
!5486 = !DILocation(line: 371, column: 7, scope: !5454)
!5487 = !DILocation(line: 372, column: 10, scope: !5484)
!5488 = !DILocation(line: 372, column: 15, scope: !5484)
!5489 = !DILocation(line: 372, column: 24, scope: !5484)
!5490 = !DILocation(line: 372, column: 31, scope: !5484)
!5491 = !DILocation(line: 372, column: 40, scope: !5484)
!5492 = !DILocation(line: 372, column: 8, scope: !5484)
!5493 = !DILocation(line: 372, column: 4, scope: !5484)
!5494 = !DILocation(line: 373, column: 10, scope: !5454)
!5495 = !DILocation(line: 373, column: 16, scope: !5454)
!5496 = !DILocation(line: 373, column: 3, scope: !5454)
!5497 = !DILocation(line: 374, column: 2, scope: !5455)
!5498 = !DILocation(line: 375, column: 2, scope: !5446)
!5499 = !DILocation(line: 376, column: 1, scope: !5446)
!5500 = distinct !DISubprogram(name: "__walk_page_range", scope: !1, file: !1, line: 378, type: !5251, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5501)
!5501 = !{!5502, !5503, !5504, !5505, !5506, !5507}
!5502 = !DILocalVariable(name: "start", arg: 1, scope: !5500, file: !1, line: 378, type: !40)
!5503 = !DILocalVariable(name: "end", arg: 2, scope: !5500, file: !1, line: 378, type: !40)
!5504 = !DILocalVariable(name: "walk", arg: 3, scope: !5500, file: !1, line: 379, type: !5215)
!5505 = !DILocalVariable(name: "err", scope: !5500, file: !1, line: 381, type: !23)
!5506 = !DILocalVariable(name: "vma", scope: !5500, file: !1, line: 382, type: !1667)
!5507 = !DILocalVariable(name: "ops", scope: !5500, file: !1, line: 383, type: !5207)
!5508 = !DILocation(line: 378, column: 44, scope: !5500)
!5509 = !DILocation(line: 378, column: 65, scope: !5500)
!5510 = !DILocation(line: 379, column: 20, scope: !5500)
!5511 = !DILocation(line: 381, column: 2, scope: !5500)
!5512 = !DILocation(line: 381, column: 6, scope: !5500)
!5513 = !DILocation(line: 382, column: 2, scope: !5500)
!5514 = !DILocation(line: 382, column: 25, scope: !5500)
!5515 = !DILocation(line: 382, column: 31, scope: !5500)
!5516 = !DILocation(line: 382, column: 37, scope: !5500)
!5517 = !DILocation(line: 383, column: 2, scope: !5500)
!5518 = !DILocation(line: 383, column: 28, scope: !5500)
!5519 = !DILocation(line: 383, column: 34, scope: !5500)
!5520 = !DILocation(line: 383, column: 40, scope: !5500)
!5521 = !DILocation(line: 385, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5500, file: !1, line: 385, column: 6)
!5523 = !DILocation(line: 385, column: 11, scope: !5522)
!5524 = !DILocation(line: 385, column: 6, scope: !5500)
!5525 = !DILocation(line: 386, column: 9, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !1, line: 385, column: 20)
!5527 = !DILocation(line: 386, column: 14, scope: !5526)
!5528 = !DILocation(line: 386, column: 22, scope: !5526)
!5529 = !DILocation(line: 386, column: 29, scope: !5526)
!5530 = !DILocation(line: 386, column: 34, scope: !5526)
!5531 = !DILocation(line: 386, column: 7, scope: !5526)
!5532 = !DILocation(line: 387, column: 7, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5526, file: !1, line: 387, column: 7)
!5534 = !DILocation(line: 387, column: 7, scope: !5526)
!5535 = !DILocation(line: 388, column: 11, scope: !5533)
!5536 = !DILocation(line: 388, column: 4, scope: !5533)
!5537 = !DILocation(line: 389, column: 2, scope: !5526)
!5538 = !DILocation(line: 391, column: 25, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5500, file: !1, line: 391, column: 6)
!5540 = !DILocation(line: 391, column: 6, scope: !5539)
!5541 = !DILocation(line: 391, column: 6, scope: !5500)
!5542 = !DILocation(line: 392, column: 7, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5544, file: !1, line: 392, column: 7)
!5544 = distinct !DILexicalBlock(scope: !5539, file: !1, line: 391, column: 31)
!5545 = !DILocation(line: 392, column: 12, scope: !5543)
!5546 = !DILocation(line: 392, column: 7, scope: !5544)
!5547 = !DILocation(line: 393, column: 29, scope: !5543)
!5548 = !DILocation(line: 393, column: 36, scope: !5543)
!5549 = !DILocation(line: 393, column: 41, scope: !5543)
!5550 = !DILocation(line: 393, column: 10, scope: !5543)
!5551 = !DILocation(line: 393, column: 8, scope: !5543)
!5552 = !DILocation(line: 393, column: 4, scope: !5543)
!5553 = !DILocation(line: 394, column: 2, scope: !5544)
!5554 = !DILocation(line: 395, column: 24, scope: !5539)
!5555 = !DILocation(line: 395, column: 31, scope: !5539)
!5556 = !DILocation(line: 395, column: 36, scope: !5539)
!5557 = !DILocation(line: 395, column: 9, scope: !5539)
!5558 = !DILocation(line: 395, column: 7, scope: !5539)
!5559 = !DILocation(line: 397, column: 6, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5500, file: !1, line: 397, column: 6)
!5561 = !DILocation(line: 397, column: 11, scope: !5560)
!5562 = !DILocation(line: 397, column: 6, scope: !5500)
!5563 = !DILocation(line: 398, column: 3, scope: !5560)
!5564 = !DILocation(line: 398, column: 8, scope: !5560)
!5565 = !DILocation(line: 398, column: 17, scope: !5560)
!5566 = !DILocation(line: 400, column: 9, scope: !5500)
!5567 = !DILocation(line: 400, column: 2, scope: !5500)
!5568 = !DILocation(line: 401, column: 1, scope: !5500)
!5569 = distinct !DISubprogram(name: "walk_page_range_novma", scope: !1, file: !1, line: 543, type: !5570, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5572)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!23, !631, !40, !40, !5207, !3850, !21}
!5572 = !{!5573, !5574, !5575, !5576, !5577, !5578, !5579}
!5573 = !DILocalVariable(name: "mm", arg: 1, scope: !5569, file: !1, line: 543, type: !631)
!5574 = !DILocalVariable(name: "start", arg: 2, scope: !5569, file: !1, line: 543, type: !40)
!5575 = !DILocalVariable(name: "end", arg: 3, scope: !5569, file: !1, line: 544, type: !40)
!5576 = !DILocalVariable(name: "ops", arg: 4, scope: !5569, file: !1, line: 544, type: !5207)
!5577 = !DILocalVariable(name: "pgd", arg: 5, scope: !5569, file: !1, line: 545, type: !3850)
!5578 = !DILocalVariable(name: "private", arg: 6, scope: !5569, file: !1, line: 546, type: !21)
!5579 = !DILocalVariable(name: "walk", scope: !5569, file: !1, line: 548, type: !5216)
!5580 = !DILocation(line: 543, column: 45, scope: !5569)
!5581 = !DILocation(line: 543, column: 63, scope: !5569)
!5582 = !DILocation(line: 544, column: 20, scope: !5569)
!5583 = !DILocation(line: 544, column: 51, scope: !5569)
!5584 = !DILocation(line: 545, column: 13, scope: !5569)
!5585 = !DILocation(line: 546, column: 12, scope: !5569)
!5586 = !DILocation(line: 548, column: 2, scope: !5569)
!5587 = !DILocation(line: 548, column: 17, scope: !5569)
!5588 = !DILocation(line: 548, column: 24, scope: !5569)
!5589 = !DILocation(line: 549, column: 11, scope: !5569)
!5590 = !DILocation(line: 550, column: 10, scope: !5569)
!5591 = !DILocation(line: 551, column: 11, scope: !5569)
!5592 = !DILocation(line: 552, column: 14, scope: !5569)
!5593 = !DILocation(line: 556, column: 6, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5569, file: !1, line: 556, column: 6)
!5595 = !DILocation(line: 556, column: 15, scope: !5594)
!5596 = !DILocation(line: 556, column: 12, scope: !5594)
!5597 = !DILocation(line: 556, column: 19, scope: !5594)
!5598 = !DILocation(line: 556, column: 28, scope: !5594)
!5599 = !DILocation(line: 556, column: 23, scope: !5594)
!5600 = !DILocation(line: 556, column: 6, scope: !5569)
!5601 = !DILocation(line: 557, column: 3, scope: !5594)
!5602 = !DILocation(line: 559, column: 32, scope: !5569)
!5603 = !DILocation(line: 559, column: 2, scope: !5569)
!5604 = !DILocation(line: 561, column: 24, scope: !5569)
!5605 = !DILocation(line: 561, column: 31, scope: !5569)
!5606 = !DILocation(line: 561, column: 9, scope: !5569)
!5607 = !DILocation(line: 561, column: 2, scope: !5569)
!5608 = !DILocation(line: 562, column: 1, scope: !5569)
!5609 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !5610, file: !5610, line: 69, type: !5611, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5613)
!5610 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !631}
!5613 = !{!5614}
!5614 = !DILocalVariable(name: "mm", arg: 1, scope: !5609, file: !5610, line: 69, type: !631)
!5615 = !DILocation(line: 69, column: 63, scope: !5609)
!5616 = !DILocation(line: 71, column: 2, scope: !5609)
!5617 = !DILocation(line: 71, column: 2, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5609, file: !5610, line: 71, column: 2)
!5619 = !DILocation(line: 73, column: 1, scope: !5609)
!5620 = distinct !DISubprogram(name: "walk_pgd_range", scope: !1, file: !1, line: 264, type: !5251, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5621)
!5621 = !{!5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629}
!5622 = !DILocalVariable(name: "addr", arg: 1, scope: !5620, file: !1, line: 264, type: !40)
!5623 = !DILocalVariable(name: "end", arg: 2, scope: !5620, file: !1, line: 264, type: !40)
!5624 = !DILocalVariable(name: "walk", arg: 3, scope: !5620, file: !1, line: 265, type: !5215)
!5625 = !DILocalVariable(name: "pgd", scope: !5620, file: !1, line: 267, type: !3850)
!5626 = !DILocalVariable(name: "next", scope: !5620, file: !1, line: 268, type: !40)
!5627 = !DILocalVariable(name: "ops", scope: !5620, file: !1, line: 269, type: !5207)
!5628 = !DILocalVariable(name: "err", scope: !5620, file: !1, line: 270, type: !23)
!5629 = !DILocalVariable(name: "__boundary", scope: !5630, file: !1, line: 277, type: !40)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 277, column: 10)
!5631 = distinct !DILexicalBlock(scope: !5620, file: !1, line: 276, column: 5)
!5632 = !DILocation(line: 264, column: 41, scope: !5620)
!5633 = !DILocation(line: 264, column: 61, scope: !5620)
!5634 = !DILocation(line: 265, column: 22, scope: !5620)
!5635 = !DILocation(line: 267, column: 2, scope: !5620)
!5636 = !DILocation(line: 267, column: 9, scope: !5620)
!5637 = !DILocation(line: 268, column: 2, scope: !5620)
!5638 = !DILocation(line: 268, column: 16, scope: !5620)
!5639 = !DILocation(line: 269, column: 2, scope: !5620)
!5640 = !DILocation(line: 269, column: 28, scope: !5620)
!5641 = !DILocation(line: 269, column: 34, scope: !5620)
!5642 = !DILocation(line: 269, column: 40, scope: !5620)
!5643 = !DILocation(line: 270, column: 2, scope: !5620)
!5644 = !DILocation(line: 270, column: 6, scope: !5620)
!5645 = !DILocation(line: 272, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5620, file: !1, line: 272, column: 6)
!5647 = !DILocation(line: 272, column: 12, scope: !5646)
!5648 = !DILocation(line: 272, column: 6, scope: !5620)
!5649 = !DILocation(line: 273, column: 9, scope: !5646)
!5650 = !DILocation(line: 273, column: 15, scope: !5646)
!5651 = !DILocation(line: 273, column: 21, scope: !5646)
!5652 = !DILocation(line: 273, column: 19, scope: !5646)
!5653 = !DILocation(line: 273, column: 7, scope: !5646)
!5654 = !DILocation(line: 273, column: 3, scope: !5646)
!5655 = !DILocation(line: 275, column: 9, scope: !5646)
!5656 = !DILocation(line: 275, column: 7, scope: !5646)
!5657 = !DILocation(line: 276, column: 2, scope: !5620)
!5658 = !DILocation(line: 277, column: 10, scope: !5630)
!5659 = !DILocation(line: 277, column: 10, scope: !5631)
!5660 = !DILocation(line: 277, column: 8, scope: !5631)
!5661 = !DILocation(line: 278, column: 29, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 278, column: 7)
!5663 = !DILocation(line: 278, column: 7, scope: !5662)
!5664 = !DILocation(line: 278, column: 7, scope: !5631)
!5665 = !DILocation(line: 279, column: 8, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !1, line: 279, column: 8)
!5667 = distinct !DILexicalBlock(scope: !5662, file: !1, line: 278, column: 35)
!5668 = !DILocation(line: 279, column: 13, scope: !5666)
!5669 = !DILocation(line: 279, column: 8, scope: !5667)
!5670 = !DILocation(line: 280, column: 11, scope: !5666)
!5671 = !DILocation(line: 280, column: 16, scope: !5666)
!5672 = !DILocation(line: 280, column: 25, scope: !5666)
!5673 = !DILocation(line: 280, column: 31, scope: !5666)
!5674 = !DILocation(line: 280, column: 40, scope: !5666)
!5675 = !DILocation(line: 280, column: 9, scope: !5666)
!5676 = !DILocation(line: 280, column: 5, scope: !5666)
!5677 = !DILocation(line: 281, column: 8, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5667, file: !1, line: 281, column: 8)
!5679 = !DILocation(line: 281, column: 8, scope: !5667)
!5680 = !DILocation(line: 282, column: 5, scope: !5678)
!5681 = !DILocation(line: 283, column: 4, scope: !5667)
!5682 = !DILocation(line: 285, column: 7, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 285, column: 7)
!5684 = !DILocation(line: 285, column: 12, scope: !5683)
!5685 = !DILocation(line: 285, column: 7, scope: !5631)
!5686 = !DILocation(line: 286, column: 10, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !1, line: 285, column: 23)
!5688 = !DILocation(line: 286, column: 15, scope: !5687)
!5689 = !DILocation(line: 286, column: 25, scope: !5687)
!5690 = !DILocation(line: 286, column: 30, scope: !5687)
!5691 = !DILocation(line: 286, column: 36, scope: !5687)
!5692 = !DILocation(line: 286, column: 42, scope: !5687)
!5693 = !DILocation(line: 286, column: 8, scope: !5687)
!5694 = !DILocation(line: 287, column: 8, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5687, file: !1, line: 287, column: 8)
!5696 = !DILocation(line: 287, column: 8, scope: !5687)
!5697 = !DILocation(line: 288, column: 5, scope: !5695)
!5698 = !DILocation(line: 289, column: 3, scope: !5687)
!5699 = !DILocation(line: 292, column: 12, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5701, file: !1, line: 292, column: 12)
!5701 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 290, column: 7)
!5702 = !DILocation(line: 292, column: 17, scope: !5700)
!5703 = !DILocation(line: 292, column: 27, scope: !5700)
!5704 = !DILocation(line: 292, column: 30, scope: !5700)
!5705 = !DILocation(line: 292, column: 35, scope: !5700)
!5706 = !DILocation(line: 292, column: 45, scope: !5700)
!5707 = !DILocation(line: 292, column: 48, scope: !5700)
!5708 = !DILocation(line: 292, column: 53, scope: !5700)
!5709 = !DILocation(line: 292, column: 63, scope: !5700)
!5710 = !DILocation(line: 292, column: 66, scope: !5700)
!5711 = !DILocation(line: 292, column: 71, scope: !5700)
!5712 = !DILocation(line: 292, column: 12, scope: !5701)
!5713 = !DILocation(line: 293, column: 25, scope: !5700)
!5714 = !DILocation(line: 293, column: 30, scope: !5700)
!5715 = !DILocation(line: 293, column: 36, scope: !5700)
!5716 = !DILocation(line: 293, column: 42, scope: !5700)
!5717 = !DILocation(line: 293, column: 10, scope: !5700)
!5718 = !DILocation(line: 293, column: 8, scope: !5700)
!5719 = !DILocation(line: 293, column: 4, scope: !5700)
!5720 = !DILocation(line: 294, column: 7, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 294, column: 7)
!5722 = !DILocation(line: 294, column: 7, scope: !5631)
!5723 = !DILocation(line: 295, column: 4, scope: !5721)
!5724 = !DILocation(line: 296, column: 2, scope: !5631)
!5725 = !DILocation(line: 296, column: 14, scope: !5620)
!5726 = !DILocation(line: 296, column: 25, scope: !5620)
!5727 = !DILocation(line: 296, column: 23, scope: !5620)
!5728 = !DILocation(line: 296, column: 31, scope: !5620)
!5729 = !DILocation(line: 296, column: 39, scope: !5620)
!5730 = !DILocation(line: 296, column: 36, scope: !5620)
!5731 = distinct !{!5731, !5657, !5732, !5403, !5404}
!5732 = !DILocation(line: 296, column: 42, scope: !5620)
!5733 = !DILocation(line: 298, column: 9, scope: !5620)
!5734 = !DILocation(line: 299, column: 1, scope: !5620)
!5735 = !DILocation(line: 298, column: 2, scope: !5620)
!5736 = distinct !DISubprogram(name: "walk_page_range_vma", scope: !1, file: !1, line: 564, type: !5737, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5739)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{!23, !1667, !40, !40, !5207, !21}
!5739 = !{!5740, !5741, !5742, !5743, !5744, !5745}
!5740 = !DILocalVariable(name: "vma", arg: 1, scope: !5736, file: !1, line: 564, type: !1667)
!5741 = !DILocalVariable(name: "start", arg: 2, scope: !5736, file: !1, line: 564, type: !40)
!5742 = !DILocalVariable(name: "end", arg: 3, scope: !5736, file: !1, line: 565, type: !40)
!5743 = !DILocalVariable(name: "ops", arg: 4, scope: !5736, file: !1, line: 565, type: !5207)
!5744 = !DILocalVariable(name: "private", arg: 5, scope: !5736, file: !1, line: 566, type: !21)
!5745 = !DILocalVariable(name: "walk", scope: !5736, file: !1, line: 568, type: !5216)
!5746 = !DILocation(line: 564, column: 48, scope: !5736)
!5747 = !DILocation(line: 564, column: 67, scope: !5736)
!5748 = !DILocation(line: 565, column: 18, scope: !5736)
!5749 = !DILocation(line: 565, column: 49, scope: !5736)
!5750 = !DILocation(line: 566, column: 10, scope: !5736)
!5751 = !DILocation(line: 568, column: 2, scope: !5736)
!5752 = !DILocation(line: 568, column: 17, scope: !5736)
!5753 = !DILocation(line: 568, column: 24, scope: !5736)
!5754 = !DILocation(line: 569, column: 11, scope: !5736)
!5755 = !DILocation(line: 570, column: 10, scope: !5736)
!5756 = !DILocation(line: 570, column: 15, scope: !5736)
!5757 = !DILocation(line: 571, column: 11, scope: !5736)
!5758 = !DILocation(line: 572, column: 14, scope: !5736)
!5759 = !DILocation(line: 575, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5736, file: !1, line: 575, column: 6)
!5761 = !DILocation(line: 575, column: 15, scope: !5760)
!5762 = !DILocation(line: 575, column: 12, scope: !5760)
!5763 = !DILocation(line: 575, column: 19, scope: !5760)
!5764 = !DILocation(line: 575, column: 28, scope: !5760)
!5765 = !DILocation(line: 575, column: 23, scope: !5760)
!5766 = !DILocation(line: 575, column: 6, scope: !5736)
!5767 = !DILocation(line: 576, column: 3, scope: !5760)
!5768 = !DILocation(line: 577, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5736, file: !1, line: 577, column: 6)
!5770 = !DILocation(line: 577, column: 14, scope: !5769)
!5771 = !DILocation(line: 577, column: 19, scope: !5769)
!5772 = !DILocation(line: 577, column: 12, scope: !5769)
!5773 = !DILocation(line: 577, column: 28, scope: !5769)
!5774 = !DILocation(line: 577, column: 31, scope: !5769)
!5775 = !DILocation(line: 577, column: 37, scope: !5769)
!5776 = !DILocation(line: 577, column: 42, scope: !5769)
!5777 = !DILocation(line: 577, column: 35, scope: !5769)
!5778 = !DILocation(line: 577, column: 6, scope: !5736)
!5779 = !DILocation(line: 578, column: 3, scope: !5769)
!5780 = !DILocation(line: 580, column: 28, scope: !5736)
!5781 = !DILocation(line: 580, column: 32, scope: !5736)
!5782 = !DILocation(line: 580, column: 37, scope: !5736)
!5783 = !DILocation(line: 580, column: 2, scope: !5736)
!5784 = !DILocation(line: 581, column: 24, scope: !5736)
!5785 = !DILocation(line: 581, column: 29, scope: !5736)
!5786 = !DILocation(line: 581, column: 34, scope: !5736)
!5787 = !DILocation(line: 581, column: 2, scope: !5736)
!5788 = !DILocation(line: 582, column: 27, scope: !5736)
!5789 = !DILocation(line: 582, column: 34, scope: !5736)
!5790 = !DILocation(line: 582, column: 9, scope: !5736)
!5791 = !DILocation(line: 582, column: 2, scope: !5736)
!5792 = !DILocation(line: 583, column: 1, scope: !5736)
!5793 = distinct !DISubprogram(name: "walk_page_vma", scope: !1, file: !1, line: 585, type: !5794, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5796)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!23, !1667, !5207, !21}
!5796 = !{!5797, !5798, !5799, !5800}
!5797 = !DILocalVariable(name: "vma", arg: 1, scope: !5793, file: !1, line: 585, type: !1667)
!5798 = !DILocalVariable(name: "ops", arg: 2, scope: !5793, file: !1, line: 585, type: !5207)
!5799 = !DILocalVariable(name: "private", arg: 3, scope: !5793, file: !1, line: 586, type: !21)
!5800 = !DILocalVariable(name: "walk", scope: !5793, file: !1, line: 588, type: !5216)
!5801 = !DILocation(line: 585, column: 42, scope: !5793)
!5802 = !DILocation(line: 585, column: 73, scope: !5793)
!5803 = !DILocation(line: 586, column: 9, scope: !5793)
!5804 = !DILocation(line: 588, column: 2, scope: !5793)
!5805 = !DILocation(line: 588, column: 17, scope: !5793)
!5806 = !DILocation(line: 588, column: 24, scope: !5793)
!5807 = !DILocation(line: 589, column: 11, scope: !5793)
!5808 = !DILocation(line: 590, column: 10, scope: !5793)
!5809 = !DILocation(line: 590, column: 15, scope: !5793)
!5810 = !DILocation(line: 591, column: 11, scope: !5793)
!5811 = !DILocation(line: 592, column: 14, scope: !5793)
!5812 = !DILocation(line: 595, column: 12, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5793, file: !1, line: 595, column: 6)
!5814 = !DILocation(line: 595, column: 7, scope: !5813)
!5815 = !DILocation(line: 595, column: 6, scope: !5793)
!5816 = !DILocation(line: 596, column: 3, scope: !5813)
!5817 = !DILocation(line: 598, column: 28, scope: !5793)
!5818 = !DILocation(line: 598, column: 32, scope: !5793)
!5819 = !DILocation(line: 598, column: 37, scope: !5793)
!5820 = !DILocation(line: 598, column: 2, scope: !5793)
!5821 = !DILocation(line: 599, column: 24, scope: !5793)
!5822 = !DILocation(line: 599, column: 29, scope: !5793)
!5823 = !DILocation(line: 599, column: 34, scope: !5793)
!5824 = !DILocation(line: 599, column: 2, scope: !5793)
!5825 = !DILocation(line: 600, column: 27, scope: !5793)
!5826 = !DILocation(line: 600, column: 32, scope: !5793)
!5827 = !DILocation(line: 600, column: 42, scope: !5793)
!5828 = !DILocation(line: 600, column: 47, scope: !5793)
!5829 = !DILocation(line: 600, column: 9, scope: !5793)
!5830 = !DILocation(line: 600, column: 2, scope: !5793)
!5831 = !DILocation(line: 601, column: 1, scope: !5793)
!5832 = distinct !DISubprogram(name: "walk_page_mapping", scope: !1, file: !1, line: 633, type: !5833, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5835)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{!23, !1538, !40, !40, !5207, !21}
!5835 = !{!5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5855, !5856, !5858}
!5836 = !DILocalVariable(name: "mapping", arg: 1, scope: !5832, file: !1, line: 633, type: !1538)
!5837 = !DILocalVariable(name: "first_index", arg: 2, scope: !5832, file: !1, line: 633, type: !40)
!5838 = !DILocalVariable(name: "nr", arg: 3, scope: !5832, file: !1, line: 634, type: !40)
!5839 = !DILocalVariable(name: "ops", arg: 4, scope: !5832, file: !1, line: 634, type: !5207)
!5840 = !DILocalVariable(name: "private", arg: 5, scope: !5832, file: !1, line: 635, type: !21)
!5841 = !DILocalVariable(name: "walk", scope: !5832, file: !1, line: 637, type: !5216)
!5842 = !DILocalVariable(name: "vma", scope: !5832, file: !1, line: 641, type: !1667)
!5843 = !DILocalVariable(name: "vba", scope: !5832, file: !1, line: 642, type: !40)
!5844 = !DILocalVariable(name: "vea", scope: !5832, file: !1, line: 642, type: !40)
!5845 = !DILocalVariable(name: "cba", scope: !5832, file: !1, line: 642, type: !40)
!5846 = !DILocalVariable(name: "cea", scope: !5832, file: !1, line: 642, type: !40)
!5847 = !DILocalVariable(name: "start_addr", scope: !5832, file: !1, line: 643, type: !40)
!5848 = !DILocalVariable(name: "end_addr", scope: !5832, file: !1, line: 643, type: !40)
!5849 = !DILocalVariable(name: "err", scope: !5832, file: !1, line: 644, type: !23)
!5850 = !DILocalVariable(name: "__UNIQUE_ID___x340", scope: !5851, file: !1, line: 653, type: !40)
!5851 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 653, column: 9)
!5852 = distinct !DILexicalBlock(scope: !5853, file: !1, line: 648, column: 29)
!5853 = distinct !DILexicalBlock(scope: !5854, file: !1, line: 647, column: 2)
!5854 = distinct !DILexicalBlock(scope: !5832, file: !1, line: 647, column: 2)
!5855 = !DILocalVariable(name: "__UNIQUE_ID___y341", scope: !5851, file: !1, line: 653, type: !40)
!5856 = !DILocalVariable(name: "__UNIQUE_ID___x342", scope: !5857, file: !1, line: 655, type: !40)
!5857 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 655, column: 9)
!5858 = !DILocalVariable(name: "__UNIQUE_ID___y343", scope: !5857, file: !1, line: 655, type: !40)
!5859 = !DILocation(line: 633, column: 45, scope: !5832)
!5860 = !DILocation(line: 633, column: 62, scope: !5832)
!5861 = !DILocation(line: 634, column: 17, scope: !5832)
!5862 = !DILocation(line: 634, column: 47, scope: !5832)
!5863 = !DILocation(line: 635, column: 15, scope: !5832)
!5864 = !DILocation(line: 637, column: 2, scope: !5832)
!5865 = !DILocation(line: 637, column: 17, scope: !5832)
!5866 = !DILocation(line: 637, column: 24, scope: !5832)
!5867 = !DILocation(line: 638, column: 11, scope: !5832)
!5868 = !DILocation(line: 639, column: 14, scope: !5832)
!5869 = !DILocation(line: 641, column: 2, scope: !5832)
!5870 = !DILocation(line: 641, column: 25, scope: !5832)
!5871 = !DILocation(line: 642, column: 2, scope: !5832)
!5872 = !DILocation(line: 642, column: 10, scope: !5832)
!5873 = !DILocation(line: 642, column: 15, scope: !5832)
!5874 = !DILocation(line: 642, column: 20, scope: !5832)
!5875 = !DILocation(line: 642, column: 25, scope: !5832)
!5876 = !DILocation(line: 643, column: 2, scope: !5832)
!5877 = !DILocation(line: 643, column: 16, scope: !5832)
!5878 = !DILocation(line: 643, column: 28, scope: !5832)
!5879 = !DILocation(line: 644, column: 2, scope: !5832)
!5880 = !DILocation(line: 644, column: 6, scope: !5832)
!5881 = !DILocation(line: 646, column: 2, scope: !5832)
!5882 = !DILocation(line: 646, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5832, file: !1, line: 646, column: 2)
!5884 = !DILocation(line: 647, column: 2, scope: !5854)
!5885 = !DILocation(line: 647, column: 2, scope: !5853)
!5886 = !DILocation(line: 650, column: 9, scope: !5852)
!5887 = !DILocation(line: 650, column: 14, scope: !5852)
!5888 = !DILocation(line: 650, column: 7, scope: !5852)
!5889 = !DILocation(line: 651, column: 9, scope: !5852)
!5890 = !DILocation(line: 651, column: 25, scope: !5852)
!5891 = !DILocation(line: 651, column: 15, scope: !5852)
!5892 = !DILocation(line: 651, column: 13, scope: !5852)
!5893 = !DILocation(line: 651, column: 7, scope: !5852)
!5894 = !DILocation(line: 652, column: 9, scope: !5852)
!5895 = !DILocation(line: 652, column: 7, scope: !5852)
!5896 = !DILocation(line: 653, column: 9, scope: !5851)
!5897 = !DILocation(line: 653, column: 9, scope: !5852)
!5898 = !DILocation(line: 653, column: 7, scope: !5852)
!5899 = !DILocation(line: 654, column: 9, scope: !5852)
!5900 = !DILocation(line: 654, column: 23, scope: !5852)
!5901 = !DILocation(line: 654, column: 21, scope: !5852)
!5902 = !DILocation(line: 654, column: 7, scope: !5852)
!5903 = !DILocation(line: 655, column: 9, scope: !5857)
!5904 = !DILocation(line: 655, column: 9, scope: !5852)
!5905 = !DILocation(line: 655, column: 7, scope: !5852)
!5906 = !DILocation(line: 657, column: 18, scope: !5852)
!5907 = !DILocation(line: 657, column: 24, scope: !5852)
!5908 = !DILocation(line: 657, column: 22, scope: !5852)
!5909 = !DILocation(line: 657, column: 29, scope: !5852)
!5910 = !DILocation(line: 657, column: 46, scope: !5852)
!5911 = !DILocation(line: 657, column: 51, scope: !5852)
!5912 = !DILocation(line: 657, column: 44, scope: !5852)
!5913 = !DILocation(line: 657, column: 14, scope: !5852)
!5914 = !DILocation(line: 658, column: 16, scope: !5852)
!5915 = !DILocation(line: 658, column: 22, scope: !5852)
!5916 = !DILocation(line: 658, column: 20, scope: !5852)
!5917 = !DILocation(line: 658, column: 27, scope: !5852)
!5918 = !DILocation(line: 658, column: 44, scope: !5852)
!5919 = !DILocation(line: 658, column: 49, scope: !5852)
!5920 = !DILocation(line: 658, column: 42, scope: !5852)
!5921 = !DILocation(line: 658, column: 12, scope: !5852)
!5922 = !DILocation(line: 659, column: 7, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 659, column: 7)
!5924 = !DILocation(line: 659, column: 21, scope: !5923)
!5925 = !DILocation(line: 659, column: 18, scope: !5923)
!5926 = !DILocation(line: 659, column: 7, scope: !5852)
!5927 = !DILocation(line: 660, column: 4, scope: !5923)
!5928 = !DILocation(line: 662, column: 14, scope: !5852)
!5929 = !DILocation(line: 662, column: 8, scope: !5852)
!5930 = !DILocation(line: 662, column: 12, scope: !5852)
!5931 = !DILocation(line: 663, column: 13, scope: !5852)
!5932 = !DILocation(line: 663, column: 18, scope: !5852)
!5933 = !DILocation(line: 663, column: 8, scope: !5852)
!5934 = !DILocation(line: 663, column: 11, scope: !5852)
!5935 = !DILocation(line: 665, column: 24, scope: !5852)
!5936 = !DILocation(line: 665, column: 29, scope: !5852)
!5937 = !DILocation(line: 665, column: 39, scope: !5852)
!5938 = !DILocation(line: 665, column: 44, scope: !5852)
!5939 = !DILocation(line: 665, column: 9, scope: !5852)
!5940 = !DILocation(line: 665, column: 7, scope: !5852)
!5941 = !DILocation(line: 666, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 666, column: 7)
!5943 = !DILocation(line: 666, column: 11, scope: !5942)
!5944 = !DILocation(line: 666, column: 7, scope: !5852)
!5945 = !DILocation(line: 667, column: 8, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5942, file: !1, line: 666, column: 16)
!5947 = !DILocation(line: 668, column: 4, scope: !5946)
!5948 = !DILocation(line: 669, column: 14, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5942, file: !1, line: 669, column: 14)
!5950 = !DILocation(line: 669, column: 18, scope: !5949)
!5951 = !DILocation(line: 669, column: 14, scope: !5942)
!5952 = !DILocation(line: 670, column: 4, scope: !5949)
!5953 = !DILocation(line: 672, column: 27, scope: !5852)
!5954 = !DILocation(line: 672, column: 39, scope: !5852)
!5955 = !DILocation(line: 672, column: 9, scope: !5852)
!5956 = !DILocation(line: 672, column: 7, scope: !5852)
!5957 = !DILocation(line: 673, column: 7, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 673, column: 7)
!5959 = !DILocation(line: 673, column: 7, scope: !5852)
!5960 = !DILocation(line: 674, column: 4, scope: !5958)
!5961 = !DILocation(line: 675, column: 2, scope: !5852)
!5962 = distinct !{!5962, !5884, !5963, !5403, !5404}
!5963 = !DILocation(line: 675, column: 2, scope: !5854)
!5964 = !DILocation(line: 677, column: 9, scope: !5832)
!5965 = !DILocation(line: 678, column: 1, scope: !5832)
!5966 = !DILocation(line: 677, column: 2, scope: !5832)
!5967 = !DISubprogram(name: "vma_interval_tree_iter_first", scope: !1661, file: !1661, line: 3198, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!1667, !5970, !40, !40}
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!5971 = distinct !DISubprogram(name: "vma_pages", scope: !1661, file: !1661, line: 3418, type: !1742, scopeLine: 3419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5972)
!5972 = !{!5973}
!5973 = !DILocalVariable(name: "vma", arg: 1, scope: !5971, file: !1661, line: 3418, type: !1667)
!5974 = !DILocation(line: 3418, column: 62, scope: !5971)
!5975 = !DILocation(line: 3420, column: 10, scope: !5971)
!5976 = !DILocation(line: 3420, column: 15, scope: !5971)
!5977 = !DILocation(line: 3420, column: 24, scope: !5971)
!5978 = !DILocation(line: 3420, column: 29, scope: !5971)
!5979 = !DILocation(line: 3420, column: 22, scope: !5971)
!5980 = !DILocation(line: 3420, column: 39, scope: !5971)
!5981 = !DILocation(line: 3420, column: 2, scope: !5971)
!5982 = !DISubprogram(name: "vma_interval_tree_iter_next", scope: !1661, file: !1661, line: 3200, type: !5983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!1667, !1667, !40, !40}
!5985 = distinct !DISubprogram(name: "mmap_assert_locked", scope: !5610, file: !5610, line: 63, type: !5611, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5986)
!5986 = !{!5987}
!5987 = !DILocalVariable(name: "mm", arg: 1, scope: !5985, file: !5610, line: 63, type: !631)
!5988 = !DILocation(line: 63, column: 57, scope: !5985)
!5989 = !DILocation(line: 65, column: 2, scope: !5985)
!5990 = !DILocation(line: 65, column: 2, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5985, file: !5610, line: 65, column: 2)
!5992 = !DILocation(line: 67, column: 1, scope: !5985)
!5993 = distinct !DISubprogram(name: "vma_start_write", scope: !1661, file: !1661, line: 715, type: !1716, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5994)
!5994 = !{!5995, !5996}
!5995 = !DILocalVariable(name: "vma", arg: 1, scope: !5993, file: !1661, line: 715, type: !1667)
!5996 = !DILocalVariable(name: "mm_lock_seq", scope: !5993, file: !1661, line: 717, type: !23)
!5997 = !DILocation(line: 715, column: 59, scope: !5993)
!5998 = !DILocation(line: 717, column: 2, scope: !5993)
!5999 = !DILocation(line: 717, column: 6, scope: !5993)
!6000 = !DILocation(line: 719, column: 28, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5993, file: !1661, line: 719, column: 6)
!6002 = !DILocation(line: 719, column: 6, scope: !6001)
!6003 = !DILocation(line: 719, column: 6, scope: !5993)
!6004 = !DILocation(line: 720, column: 3, scope: !6001)
!6005 = !DILocation(line: 722, column: 14, scope: !5993)
!6006 = !DILocation(line: 722, column: 19, scope: !5993)
!6007 = !DILocation(line: 722, column: 28, scope: !5993)
!6008 = !DILocation(line: 722, column: 2, scope: !5993)
!6009 = !DILocation(line: 729, column: 2, scope: !5993)
!6010 = !DILocation(line: 729, column: 2, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5993, file: !1661, line: 729, column: 2)
!6012 = !DILocation(line: 729, column: 2, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6011, file: !1661, line: 729, column: 2)
!6014 = !DILocation(line: 729, column: 2, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6011, file: !1661, line: 729, column: 2)
!6016 = !DILocation(line: 730, column: 12, scope: !5993)
!6017 = !DILocation(line: 730, column: 17, scope: !5993)
!6018 = !DILocation(line: 730, column: 26, scope: !5993)
!6019 = !DILocation(line: 730, column: 2, scope: !5993)
!6020 = !DILocation(line: 731, column: 1, scope: !5993)
!6021 = distinct !DISubprogram(name: "vma_assert_write_locked", scope: !1661, file: !1661, line: 733, type: !1716, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6022)
!6022 = !{!6023, !6024}
!6023 = !DILocalVariable(name: "vma", arg: 1, scope: !6021, file: !1661, line: 733, type: !1667)
!6024 = !DILocalVariable(name: "mm_lock_seq", scope: !6021, file: !1661, line: 735, type: !23)
!6025 = !DILocation(line: 733, column: 67, scope: !6021)
!6026 = !DILocation(line: 735, column: 2, scope: !6021)
!6027 = !DILocation(line: 735, column: 6, scope: !6021)
!6028 = !DILocation(line: 738, column: 1, scope: !6021)
!6029 = distinct !DISubprogram(name: "__is_vma_write_locked", scope: !1661, file: !1661, line: 698, type: !6030, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!879, !1667, !2861}
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "vma", arg: 1, scope: !6029, file: !1661, line: 698, type: !1667)
!6034 = !DILocalVariable(name: "mm_lock_seq", arg: 2, scope: !6029, file: !1661, line: 698, type: !2861)
!6035 = !DILocation(line: 698, column: 58, scope: !6029)
!6036 = !DILocation(line: 698, column: 68, scope: !6029)
!6037 = !DILocation(line: 700, column: 27, scope: !6029)
!6038 = !DILocation(line: 700, column: 32, scope: !6029)
!6039 = !DILocation(line: 700, column: 2, scope: !6029)
!6040 = !DILocation(line: 706, column: 17, scope: !6029)
!6041 = !DILocation(line: 706, column: 22, scope: !6029)
!6042 = !DILocation(line: 706, column: 29, scope: !6029)
!6043 = !DILocation(line: 706, column: 3, scope: !6029)
!6044 = !DILocation(line: 706, column: 15, scope: !6029)
!6045 = !DILocation(line: 707, column: 10, scope: !6029)
!6046 = !DILocation(line: 707, column: 15, scope: !6029)
!6047 = !DILocation(line: 707, column: 31, scope: !6029)
!6048 = !DILocation(line: 707, column: 30, scope: !6029)
!6049 = !DILocation(line: 707, column: 27, scope: !6029)
!6050 = !DILocation(line: 707, column: 2, scope: !6029)
!6051 = !DISubprogram(name: "down_write", scope: !821, file: !821, line: 187, type: !6052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !6054}
!6054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!6055 = !DISubprogram(name: "up_write", scope: !821, file: !821, line: 203, type: !6052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6056 = distinct !DISubprogram(name: "is_vm_hugetlb_page", scope: !6057, file: !6057, line: 9, type: !6058, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6060)
!6057 = !DIFile(filename: "./include/linux/hugetlb_inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a0f0e65915fb82cb2c0852c7ba29cf8a")
!6058 = !DISubroutineType(types: !6059)
!6059 = !{!879, !1667}
!6060 = !{!6061}
!6061 = !DILocalVariable(name: "vma", arg: 1, scope: !6056, file: !6057, line: 9, type: !1667)
!6062 = !DILocation(line: 9, column: 62, scope: !6056)
!6063 = !DILocation(line: 11, column: 12, scope: !6056)
!6064 = !DILocation(line: 11, column: 17, scope: !6056)
!6065 = !DILocation(line: 11, column: 26, scope: !6056)
!6066 = !DILocation(line: 11, column: 10, scope: !6056)
!6067 = !DILocation(line: 11, column: 9, scope: !6056)
!6068 = !DILocation(line: 11, column: 2, scope: !6056)
!6069 = distinct !DISubprogram(name: "walk_hugetlb_range", scope: !1, file: !1, line: 309, type: !5251, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6070)
!6070 = !{!6071, !6072, !6073, !6074, !6075, !6106, !6107, !6108, !6109, !6110, !6111}
!6071 = !DILocalVariable(name: "addr", arg: 1, scope: !6069, file: !1, line: 309, type: !40)
!6072 = !DILocalVariable(name: "end", arg: 2, scope: !6069, file: !1, line: 309, type: !40)
!6073 = !DILocalVariable(name: "walk", arg: 3, scope: !6069, file: !1, line: 310, type: !5215)
!6074 = !DILocalVariable(name: "vma", scope: !6069, file: !1, line: 312, type: !1667)
!6075 = !DILocalVariable(name: "h", scope: !6069, file: !1, line: 313, type: !6076)
!6076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6077, size: 64)
!6077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hstate", file: !6078, line: 714, size: 48704, elements: !6079)
!6078 = !DIFile(filename: "./include/linux/hugetlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb3875c3ba49a7a26cb8998ef59b94dc")
!6079 = !{!6080, !6081, !6082, !6083, !6084, !6085, !6086, !6087, !6088, !6089, !6090, !6091, !6092, !6093, !6094, !6096, !6098, !6099, !6100, !6101, !6103, !6105}
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "resize_lock", scope: !6077, file: !6078, line: 715, baseType: !687, size: 256)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "resize_key", scope: !6077, file: !6078, line: 716, baseType: !3061, offset: 256)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "next_nid_to_alloc", scope: !6077, file: !6078, line: 717, baseType: !23, size: 32, offset: 256)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "next_nid_to_free", scope: !6077, file: !6078, line: 718, baseType: !23, size: 32, offset: 288)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !6077, file: !6078, line: 719, baseType: !5, size: 32, offset: 320)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "demote_order", scope: !6077, file: !6078, line: 720, baseType: !5, size: 32, offset: 352)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !6077, file: !6078, line: 721, baseType: !40, size: 64, offset: 384)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "max_huge_pages", scope: !6077, file: !6078, line: 722, baseType: !40, size: 64, offset: 448)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_huge_pages", scope: !6077, file: !6078, line: 723, baseType: !40, size: 64, offset: 512)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "free_huge_pages", scope: !6077, file: !6078, line: 724, baseType: !40, size: 64, offset: 576)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "resv_huge_pages", scope: !6077, file: !6078, line: 725, baseType: !40, size: 64, offset: 640)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "surplus_huge_pages", scope: !6077, file: !6078, line: 726, baseType: !40, size: 64, offset: 704)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_overcommit_huge_pages", scope: !6077, file: !6078, line: 727, baseType: !40, size: 64, offset: 768)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "hugepage_activelist", scope: !6077, file: !6078, line: 728, baseType: !98, size: 128, offset: 832)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "hugepage_freelists", scope: !6077, file: !6078, line: 729, baseType: !6095, size: 8192, offset: 960)
!6095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8192, elements: !1477)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "max_huge_pages_node", scope: !6077, file: !6078, line: 730, baseType: !6097, size: 2048, offset: 9152)
!6097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !1477)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_huge_pages_node", scope: !6077, file: !6078, line: 731, baseType: !6097, size: 2048, offset: 11200)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "free_huge_pages_node", scope: !6077, file: !6078, line: 732, baseType: !6097, size: 2048, offset: 13248)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "surplus_huge_pages_node", scope: !6077, file: !6078, line: 733, baseType: !6097, size: 2048, offset: 15296)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_files_dfl", scope: !6077, file: !6078, line: 736, baseType: !6102, size: 13824, offset: 17344)
!6102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4347, size: 13824, elements: !493)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_files_legacy", scope: !6077, file: !6078, line: 737, baseType: !6104, size: 17280, offset: 31168)
!6104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4347, size: 17280, elements: !1104)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6077, file: !6078, line: 739, baseType: !3491, size: 256, offset: 48448)
!6106 = !DILocalVariable(name: "next", scope: !6069, file: !1, line: 314, type: !40)
!6107 = !DILocalVariable(name: "hmask", scope: !6069, file: !1, line: 315, type: !40)
!6108 = !DILocalVariable(name: "sz", scope: !6069, file: !1, line: 316, type: !40)
!6109 = !DILocalVariable(name: "pte", scope: !6069, file: !1, line: 317, type: !1811)
!6110 = !DILocalVariable(name: "ops", scope: !6069, file: !1, line: 318, type: !5207)
!6111 = !DILocalVariable(name: "err", scope: !6069, file: !1, line: 319, type: !23)
!6112 = !DILocation(line: 309, column: 45, scope: !6069)
!6113 = !DILocation(line: 309, column: 65, scope: !6069)
!6114 = !DILocation(line: 310, column: 26, scope: !6069)
!6115 = !DILocation(line: 312, column: 2, scope: !6069)
!6116 = !DILocation(line: 312, column: 25, scope: !6069)
!6117 = !DILocation(line: 312, column: 31, scope: !6069)
!6118 = !DILocation(line: 312, column: 37, scope: !6069)
!6119 = !DILocation(line: 313, column: 2, scope: !6069)
!6120 = !DILocation(line: 313, column: 17, scope: !6069)
!6121 = !DILocation(line: 313, column: 32, scope: !6069)
!6122 = !DILocation(line: 313, column: 21, scope: !6069)
!6123 = !DILocation(line: 314, column: 2, scope: !6069)
!6124 = !DILocation(line: 314, column: 16, scope: !6069)
!6125 = !DILocation(line: 315, column: 2, scope: !6069)
!6126 = !DILocation(line: 315, column: 16, scope: !6069)
!6127 = !DILocation(line: 315, column: 39, scope: !6069)
!6128 = !DILocation(line: 315, column: 24, scope: !6069)
!6129 = !DILocation(line: 316, column: 2, scope: !6069)
!6130 = !DILocation(line: 316, column: 16, scope: !6069)
!6131 = !DILocation(line: 316, column: 36, scope: !6069)
!6132 = !DILocation(line: 316, column: 21, scope: !6069)
!6133 = !DILocation(line: 317, column: 2, scope: !6069)
!6134 = !DILocation(line: 317, column: 9, scope: !6069)
!6135 = !DILocation(line: 318, column: 2, scope: !6069)
!6136 = !DILocation(line: 318, column: 28, scope: !6069)
!6137 = !DILocation(line: 318, column: 34, scope: !6069)
!6138 = !DILocation(line: 318, column: 40, scope: !6069)
!6139 = !DILocation(line: 319, column: 2, scope: !6069)
!6140 = !DILocation(line: 319, column: 6, scope: !6069)
!6141 = !DILocation(line: 321, column: 24, scope: !6069)
!6142 = !DILocation(line: 321, column: 2, scope: !6069)
!6143 = !DILocation(line: 322, column: 2, scope: !6069)
!6144 = !DILocation(line: 323, column: 28, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6069, file: !1, line: 322, column: 5)
!6146 = !DILocation(line: 323, column: 31, scope: !6145)
!6147 = !DILocation(line: 323, column: 37, scope: !6145)
!6148 = !DILocation(line: 323, column: 10, scope: !6145)
!6149 = !DILocation(line: 323, column: 8, scope: !6145)
!6150 = !DILocation(line: 324, column: 22, scope: !6145)
!6151 = !DILocation(line: 324, column: 27, scope: !6145)
!6152 = !DILocation(line: 324, column: 34, scope: !6145)
!6153 = !DILocation(line: 324, column: 32, scope: !6145)
!6154 = !DILocation(line: 324, column: 41, scope: !6145)
!6155 = !DILocation(line: 324, column: 9, scope: !6145)
!6156 = !DILocation(line: 324, column: 7, scope: !6145)
!6157 = !DILocation(line: 325, column: 7, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6145, file: !1, line: 325, column: 7)
!6159 = !DILocation(line: 325, column: 7, scope: !6145)
!6160 = !DILocation(line: 326, column: 10, scope: !6158)
!6161 = !DILocation(line: 326, column: 15, scope: !6158)
!6162 = !DILocation(line: 326, column: 29, scope: !6158)
!6163 = !DILocation(line: 326, column: 34, scope: !6158)
!6164 = !DILocation(line: 326, column: 41, scope: !6158)
!6165 = !DILocation(line: 326, column: 47, scope: !6158)
!6166 = !DILocation(line: 326, column: 53, scope: !6158)
!6167 = !DILocation(line: 326, column: 8, scope: !6158)
!6168 = !DILocation(line: 326, column: 4, scope: !6158)
!6169 = !DILocation(line: 327, column: 12, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6158, file: !1, line: 327, column: 12)
!6171 = !DILocation(line: 327, column: 17, scope: !6170)
!6172 = !DILocation(line: 327, column: 12, scope: !6158)
!6173 = !DILocation(line: 328, column: 10, scope: !6170)
!6174 = !DILocation(line: 328, column: 15, scope: !6170)
!6175 = !DILocation(line: 328, column: 24, scope: !6170)
!6176 = !DILocation(line: 328, column: 30, scope: !6170)
!6177 = !DILocation(line: 328, column: 40, scope: !6170)
!6178 = !DILocation(line: 328, column: 8, scope: !6170)
!6179 = !DILocation(line: 328, column: 4, scope: !6170)
!6180 = !DILocation(line: 329, column: 7, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6145, file: !1, line: 329, column: 7)
!6182 = !DILocation(line: 329, column: 7, scope: !6145)
!6183 = !DILocation(line: 330, column: 4, scope: !6181)
!6184 = !DILocation(line: 331, column: 2, scope: !6145)
!6185 = !DILocation(line: 331, column: 18, scope: !6069)
!6186 = !DILocation(line: 331, column: 16, scope: !6069)
!6187 = !DILocation(line: 331, column: 24, scope: !6069)
!6188 = !DILocation(line: 331, column: 32, scope: !6069)
!6189 = !DILocation(line: 331, column: 29, scope: !6069)
!6190 = distinct !{!6190, !6143, !6191, !5403, !5404}
!6191 = !DILocation(line: 331, column: 35, scope: !6069)
!6192 = !DILocation(line: 332, column: 26, scope: !6069)
!6193 = !DILocation(line: 332, column: 2, scope: !6069)
!6194 = !DILocation(line: 334, column: 9, scope: !6069)
!6195 = !DILocation(line: 335, column: 1, scope: !6069)
!6196 = !DILocation(line: 334, column: 2, scope: !6069)
!6197 = distinct !DISubprogram(name: "hstate_vma", scope: !6078, file: !6078, line: 804, type: !6198, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6200)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!6076, !1667}
!6200 = !{!6201}
!6201 = !DILocalVariable(name: "vma", arg: 1, scope: !6197, file: !6078, line: 804, type: !1667)
!6202 = !DILocation(line: 804, column: 64, scope: !6197)
!6203 = !DILocation(line: 806, column: 21, scope: !6197)
!6204 = !DILocation(line: 806, column: 26, scope: !6197)
!6205 = !DILocation(line: 806, column: 9, scope: !6197)
!6206 = !DILocation(line: 806, column: 2, scope: !6197)
!6207 = distinct !DISubprogram(name: "huge_page_mask", scope: !6078, file: !6078, line: 818, type: !6208, scopeLine: 819, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6210)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!40, !6076}
!6210 = !{!6211}
!6211 = !DILocalVariable(name: "h", arg: 1, scope: !6207, file: !6078, line: 818, type: !6076)
!6212 = !DILocation(line: 818, column: 59, scope: !6207)
!6213 = !DILocation(line: 820, column: 9, scope: !6207)
!6214 = !DILocation(line: 820, column: 12, scope: !6207)
!6215 = !DILocation(line: 820, column: 2, scope: !6207)
!6216 = distinct !DISubprogram(name: "huge_page_size", scope: !6078, file: !6078, line: 809, type: !6217, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6221)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!40, !6219}
!6219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6220, size: 64)
!6220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6077)
!6221 = !{!6222}
!6222 = !DILocalVariable(name: "h", arg: 1, scope: !6216, file: !6078, line: 809, type: !6219)
!6223 = !DILocation(line: 809, column: 65, scope: !6216)
!6224 = !DILocation(line: 811, column: 37, scope: !6216)
!6225 = !DILocation(line: 811, column: 40, scope: !6216)
!6226 = !DILocation(line: 811, column: 34, scope: !6216)
!6227 = !DILocation(line: 811, column: 2, scope: !6216)
!6228 = !DISubprogram(name: "hugetlb_vma_lock_read", scope: !6078, file: !6078, line: 268, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6229 = distinct !DISubprogram(name: "hugetlb_entry_end", scope: !1, file: !1, line: 302, type: !6230, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6232)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{!40, !6076, !40, !40}
!6232 = !{!6233, !6234, !6235, !6236}
!6233 = !DILocalVariable(name: "h", arg: 1, scope: !6229, file: !1, line: 302, type: !6076)
!6234 = !DILocalVariable(name: "addr", arg: 2, scope: !6229, file: !1, line: 302, type: !40)
!6235 = !DILocalVariable(name: "end", arg: 3, scope: !6229, file: !1, line: 303, type: !40)
!6236 = !DILocalVariable(name: "boundary", scope: !6229, file: !1, line: 305, type: !40)
!6237 = !DILocation(line: 302, column: 55, scope: !6229)
!6238 = !DILocation(line: 302, column: 72, scope: !6229)
!6239 = !DILocation(line: 303, column: 26, scope: !6229)
!6240 = !DILocation(line: 305, column: 2, scope: !6229)
!6241 = !DILocation(line: 305, column: 16, scope: !6229)
!6242 = !DILocation(line: 305, column: 28, scope: !6229)
!6243 = !DILocation(line: 305, column: 50, scope: !6229)
!6244 = !DILocation(line: 305, column: 35, scope: !6229)
!6245 = !DILocation(line: 305, column: 33, scope: !6229)
!6246 = !DILocation(line: 305, column: 71, scope: !6229)
!6247 = !DILocation(line: 305, column: 56, scope: !6229)
!6248 = !DILocation(line: 305, column: 54, scope: !6229)
!6249 = !DILocation(line: 306, column: 9, scope: !6229)
!6250 = !DILocation(line: 306, column: 20, scope: !6229)
!6251 = !DILocation(line: 306, column: 18, scope: !6229)
!6252 = !DILocation(line: 306, column: 26, scope: !6229)
!6253 = !DILocation(line: 306, column: 37, scope: !6229)
!6254 = !DILocation(line: 307, column: 1, scope: !6229)
!6255 = !DILocation(line: 306, column: 2, scope: !6229)
!6256 = distinct !DISubprogram(name: "hugetlb_walk", scope: !6078, file: !6078, line: 1278, type: !6257, scopeLine: 1279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6259)
!6257 = !DISubroutineType(types: !6258)
!6258 = !{!1811, !1667, !40, !40}
!6259 = !{!6260, !6261, !6262}
!6260 = !DILocalVariable(name: "vma", arg: 1, scope: !6256, file: !6078, line: 1278, type: !1667)
!6261 = !DILocalVariable(name: "addr", arg: 2, scope: !6256, file: !6078, line: 1278, type: !40)
!6262 = !DILocalVariable(name: "sz", arg: 3, scope: !6256, file: !6078, line: 1278, type: !40)
!6263 = !DILocation(line: 1278, column: 37, scope: !6256)
!6264 = !DILocation(line: 1278, column: 56, scope: !6256)
!6265 = !DILocation(line: 1278, column: 76, scope: !6256)
!6266 = !DILocation(line: 1295, column: 25, scope: !6256)
!6267 = !DILocation(line: 1295, column: 30, scope: !6256)
!6268 = !DILocation(line: 1295, column: 37, scope: !6256)
!6269 = !DILocation(line: 1295, column: 43, scope: !6256)
!6270 = !DILocation(line: 1295, column: 9, scope: !6256)
!6271 = !DILocation(line: 1295, column: 2, scope: !6256)
!6272 = !DISubprogram(name: "hugetlb_vma_unlock_read", scope: !6078, file: !6078, line: 269, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6273 = distinct !DISubprogram(name: "hstate_file", scope: !6078, file: !6078, line: 788, type: !6274, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6276)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!6076, !659}
!6276 = !{!6277}
!6277 = !DILocalVariable(name: "f", arg: 1, scope: !6273, file: !6078, line: 788, type: !659)
!6278 = !DILocation(line: 788, column: 55, scope: !6273)
!6279 = !DILocation(line: 790, column: 33, scope: !6273)
!6280 = !DILocation(line: 790, column: 22, scope: !6273)
!6281 = !DILocation(line: 790, column: 9, scope: !6273)
!6282 = !DILocation(line: 790, column: 2, scope: !6273)
!6283 = distinct !DISubprogram(name: "hstate_inode", scope: !6078, file: !6078, line: 570, type: !6284, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6286)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!6076, !1180}
!6286 = !{!6287}
!6287 = !DILocalVariable(name: "i", arg: 1, scope: !6283, file: !6078, line: 570, type: !1180)
!6288 = !DILocation(line: 570, column: 57, scope: !6283)
!6289 = !DILocation(line: 572, column: 22, scope: !6283)
!6290 = !DILocation(line: 572, column: 25, scope: !6283)
!6291 = !DILocation(line: 572, column: 9, scope: !6283)
!6292 = !DILocation(line: 572, column: 32, scope: !6283)
!6293 = !DILocation(line: 572, column: 2, scope: !6283)
!6294 = distinct !DISubprogram(name: "file_inode", scope: !216, file: !216, line: 1073, type: !6295, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6297)
!6295 = !DISubroutineType(types: !6296)
!6296 = !{!1180, !2658}
!6297 = !{!6298}
!6298 = !DILocalVariable(name: "f", arg: 1, scope: !6294, file: !216, line: 1073, type: !2658)
!6299 = !DILocation(line: 1073, column: 59, scope: !6294)
!6300 = !DILocation(line: 1075, column: 9, scope: !6294)
!6301 = !DILocation(line: 1075, column: 12, scope: !6294)
!6302 = !DILocation(line: 1075, column: 2, scope: !6294)
!6303 = distinct !DISubprogram(name: "HUGETLBFS_SB", scope: !6078, file: !6078, line: 541, type: !6304, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6327)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{!6306, !1388}
!6306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6307, size: 64)
!6307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hugetlbfs_sb_info", file: !6078, line: 530, size: 448, elements: !6308)
!6308 = !{!6309, !6310, !6311, !6312, !6313, !6324, !6325, !6326}
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "max_inodes", scope: !6307, file: !6078, line: 531, baseType: !287, size: 64)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "free_inodes", scope: !6307, file: !6078, line: 532, baseType: !287, size: 64, offset: 64)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "stat_lock", scope: !6307, file: !6078, line: 533, baseType: !60, size: 32, offset: 128)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "hstate", scope: !6307, file: !6078, line: 534, baseType: !6076, size: 64, offset: 192)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "spool", scope: !6307, file: !6078, line: 535, baseType: !6314, size: 64, offset: 256)
!6314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6315, size: 64)
!6315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hugepage_subpool", file: !6078, line: 44, size: 448, elements: !6316)
!6316 = !{!6317, !6318, !6319, !6320, !6321, !6322, !6323}
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6315, file: !6078, line: 45, baseType: !60, size: 32)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6315, file: !6078, line: 46, baseType: !287, size: 64, offset: 64)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "max_hpages", scope: !6315, file: !6078, line: 47, baseType: !287, size: 64, offset: 128)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "used_hpages", scope: !6315, file: !6078, line: 48, baseType: !287, size: 64, offset: 192)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "hstate", scope: !6315, file: !6078, line: 50, baseType: !6076, size: 64, offset: 256)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "min_hpages", scope: !6315, file: !6078, line: 51, baseType: !287, size: 64, offset: 320)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "rsv_hpages", scope: !6315, file: !6078, line: 52, baseType: !287, size: 64, offset: 384)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !6307, file: !6078, line: 536, baseType: !761, size: 32, offset: 320)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !6307, file: !6078, line: 537, baseType: !779, size: 32, offset: 352)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6307, file: !6078, line: 538, baseType: !25, size: 16, offset: 384)
!6327 = !{!6328}
!6328 = !DILocalVariable(name: "sb", arg: 1, scope: !6303, file: !6078, line: 541, type: !1388)
!6329 = !DILocation(line: 541, column: 74, scope: !6303)
!6330 = !DILocation(line: 543, column: 9, scope: !6303)
!6331 = !DILocation(line: 543, column: 13, scope: !6303)
!6332 = !DILocation(line: 543, column: 2, scope: !6303)
!6333 = !DISubprogram(name: "huge_pte_offset", scope: !6078, file: !6078, line: 241, type: !6334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6334 = !DISubroutineType(types: !6335)
!6335 = !{!1811, !631, !40, !40}
!6336 = distinct !DISubprogram(name: "pgd_offset_pgd", scope: !6337, file: !6337, line: 136, type: !6338, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6340)
!6337 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!6338 = !DISubroutineType(types: !6339)
!6339 = !{!3850, !3850, !40}
!6340 = !{!6341, !6342}
!6341 = !DILocalVariable(name: "pgd", arg: 1, scope: !6336, file: !6337, line: 136, type: !3850)
!6342 = !DILocalVariable(name: "address", arg: 2, scope: !6336, file: !6337, line: 136, type: !40)
!6343 = !DILocation(line: 136, column: 44, scope: !6336)
!6344 = !DILocation(line: 136, column: 63, scope: !6336)
!6345 = !DILocation(line: 138, column: 10, scope: !6336)
!6346 = !DILocation(line: 138, column: 16, scope: !6336)
!6347 = !DILocation(line: 138, column: 14, scope: !6336)
!6348 = !DILocation(line: 138, column: 2, scope: !6336)
!6349 = distinct !DISubprogram(name: "pgd_none_or_clear_bad", scope: !6337, file: !6337, line: 1012, type: !6350, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6352)
!6350 = !DISubroutineType(types: !6351)
!6351 = !{!23, !3850}
!6352 = !{!6353}
!6353 = !DILocalVariable(name: "pgd", arg: 1, scope: !6349, file: !6337, line: 1012, type: !3850)
!6354 = !DILocation(line: 1012, column: 48, scope: !6349)
!6355 = !DILocation(line: 1014, column: 16, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6349, file: !6337, line: 1014, column: 6)
!6357 = !DILocation(line: 1014, column: 6, scope: !6356)
!6358 = !DILocation(line: 1014, column: 6, scope: !6349)
!6359 = !DILocation(line: 1015, column: 3, scope: !6356)
!6360 = !DILocation(line: 1016, column: 6, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6349, file: !6337, line: 1016, column: 6)
!6362 = !DILocation(line: 1016, column: 6, scope: !6349)
!6363 = !DILocation(line: 1017, column: 17, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6361, file: !6337, line: 1016, column: 31)
!6365 = !DILocation(line: 1017, column: 3, scope: !6364)
!6366 = !DILocation(line: 1018, column: 3, scope: !6364)
!6367 = !DILocation(line: 1020, column: 2, scope: !6349)
!6368 = !DILocation(line: 1021, column: 1, scope: !6349)
!6369 = distinct !DISubprogram(name: "walk_p4d_range", scope: !1, file: !1, line: 229, type: !5213, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6370)
!6370 = !{!6371, !6372, !6373, !6374, !6375, !6376, !6377, !6378, !6379, !6380}
!6371 = !DILocalVariable(name: "pgd", arg: 1, scope: !6369, file: !1, line: 229, type: !3850)
!6372 = !DILocalVariable(name: "addr", arg: 2, scope: !6369, file: !1, line: 229, type: !40)
!6373 = !DILocalVariable(name: "end", arg: 3, scope: !6369, file: !1, line: 229, type: !40)
!6374 = !DILocalVariable(name: "walk", arg: 4, scope: !6369, file: !1, line: 230, type: !5215)
!6375 = !DILocalVariable(name: "p4d", scope: !6369, file: !1, line: 232, type: !292)
!6376 = !DILocalVariable(name: "next", scope: !6369, file: !1, line: 233, type: !40)
!6377 = !DILocalVariable(name: "ops", scope: !6369, file: !1, line: 234, type: !5207)
!6378 = !DILocalVariable(name: "err", scope: !6369, file: !1, line: 235, type: !23)
!6379 = !DILocalVariable(name: "depth", scope: !6369, file: !1, line: 236, type: !23)
!6380 = !DILocalVariable(name: "__boundary", scope: !6381, file: !1, line: 240, type: !40)
!6381 = distinct !DILexicalBlock(scope: !6382, file: !1, line: 240, column: 10)
!6382 = distinct !DILexicalBlock(scope: !6369, file: !1, line: 239, column: 5)
!6383 = !DILocation(line: 229, column: 34, scope: !6369)
!6384 = !DILocation(line: 229, column: 53, scope: !6369)
!6385 = !DILocation(line: 229, column: 73, scope: !6369)
!6386 = !DILocation(line: 230, column: 22, scope: !6369)
!6387 = !DILocation(line: 232, column: 2, scope: !6369)
!6388 = !DILocation(line: 232, column: 9, scope: !6369)
!6389 = !DILocation(line: 233, column: 2, scope: !6369)
!6390 = !DILocation(line: 233, column: 16, scope: !6369)
!6391 = !DILocation(line: 234, column: 2, scope: !6369)
!6392 = !DILocation(line: 234, column: 28, scope: !6369)
!6393 = !DILocation(line: 234, column: 34, scope: !6369)
!6394 = !DILocation(line: 234, column: 40, scope: !6369)
!6395 = !DILocation(line: 235, column: 2, scope: !6369)
!6396 = !DILocation(line: 235, column: 6, scope: !6369)
!6397 = !DILocation(line: 236, column: 2, scope: !6369)
!6398 = !DILocation(line: 236, column: 6, scope: !6369)
!6399 = !DILocation(line: 236, column: 14, scope: !6369)
!6400 = !DILocation(line: 238, column: 19, scope: !6369)
!6401 = !DILocation(line: 238, column: 24, scope: !6369)
!6402 = !DILocation(line: 238, column: 8, scope: !6369)
!6403 = !DILocation(line: 238, column: 6, scope: !6369)
!6404 = !DILocation(line: 239, column: 2, scope: !6369)
!6405 = !DILocation(line: 240, column: 10, scope: !6381)
!6406 = !DILocation(line: 240, column: 10, scope: !6382)
!6407 = !DILocation(line: 240, column: 8, scope: !6382)
!6408 = !DILocation(line: 241, column: 29, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6382, file: !1, line: 241, column: 7)
!6410 = !DILocation(line: 241, column: 7, scope: !6409)
!6411 = !DILocation(line: 241, column: 7, scope: !6382)
!6412 = !DILocation(line: 242, column: 8, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6414, file: !1, line: 242, column: 8)
!6414 = distinct !DILexicalBlock(scope: !6409, file: !1, line: 241, column: 35)
!6415 = !DILocation(line: 242, column: 13, scope: !6413)
!6416 = !DILocation(line: 242, column: 8, scope: !6414)
!6417 = !DILocation(line: 243, column: 11, scope: !6413)
!6418 = !DILocation(line: 243, column: 16, scope: !6413)
!6419 = !DILocation(line: 243, column: 25, scope: !6413)
!6420 = !DILocation(line: 243, column: 31, scope: !6413)
!6421 = !DILocation(line: 243, column: 37, scope: !6413)
!6422 = !DILocation(line: 243, column: 44, scope: !6413)
!6423 = !DILocation(line: 243, column: 9, scope: !6413)
!6424 = !DILocation(line: 243, column: 5, scope: !6413)
!6425 = !DILocation(line: 244, column: 8, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6414, file: !1, line: 244, column: 8)
!6427 = !DILocation(line: 244, column: 8, scope: !6414)
!6428 = !DILocation(line: 245, column: 5, scope: !6426)
!6429 = !DILocation(line: 246, column: 4, scope: !6414)
!6430 = !DILocation(line: 248, column: 7, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6382, file: !1, line: 248, column: 7)
!6432 = !DILocation(line: 248, column: 12, scope: !6431)
!6433 = !DILocation(line: 248, column: 7, scope: !6382)
!6434 = !DILocation(line: 249, column: 10, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6431, file: !1, line: 248, column: 23)
!6436 = !DILocation(line: 249, column: 15, scope: !6435)
!6437 = !DILocation(line: 249, column: 25, scope: !6435)
!6438 = !DILocation(line: 249, column: 30, scope: !6435)
!6439 = !DILocation(line: 249, column: 36, scope: !6435)
!6440 = !DILocation(line: 249, column: 42, scope: !6435)
!6441 = !DILocation(line: 249, column: 8, scope: !6435)
!6442 = !DILocation(line: 250, column: 8, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6435, file: !1, line: 250, column: 8)
!6444 = !DILocation(line: 250, column: 8, scope: !6435)
!6445 = !DILocation(line: 251, column: 5, scope: !6443)
!6446 = !DILocation(line: 252, column: 3, scope: !6435)
!6447 = !DILocation(line: 255, column: 12, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6449, file: !1, line: 255, column: 12)
!6449 = distinct !DILexicalBlock(scope: !6382, file: !1, line: 253, column: 7)
!6450 = !DILocation(line: 255, column: 17, scope: !6448)
!6451 = !DILocation(line: 255, column: 27, scope: !6448)
!6452 = !DILocation(line: 255, column: 30, scope: !6448)
!6453 = !DILocation(line: 255, column: 35, scope: !6448)
!6454 = !DILocation(line: 255, column: 45, scope: !6448)
!6455 = !DILocation(line: 255, column: 48, scope: !6448)
!6456 = !DILocation(line: 255, column: 53, scope: !6448)
!6457 = !DILocation(line: 255, column: 12, scope: !6449)
!6458 = !DILocation(line: 256, column: 25, scope: !6448)
!6459 = !DILocation(line: 256, column: 30, scope: !6448)
!6460 = !DILocation(line: 256, column: 36, scope: !6448)
!6461 = !DILocation(line: 256, column: 42, scope: !6448)
!6462 = !DILocation(line: 256, column: 10, scope: !6448)
!6463 = !DILocation(line: 256, column: 8, scope: !6448)
!6464 = !DILocation(line: 256, column: 4, scope: !6448)
!6465 = !DILocation(line: 257, column: 7, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6382, file: !1, line: 257, column: 7)
!6467 = !DILocation(line: 257, column: 7, scope: !6382)
!6468 = !DILocation(line: 258, column: 4, scope: !6466)
!6469 = !DILocation(line: 259, column: 2, scope: !6382)
!6470 = !DILocation(line: 259, column: 14, scope: !6369)
!6471 = !DILocation(line: 259, column: 25, scope: !6369)
!6472 = !DILocation(line: 259, column: 23, scope: !6369)
!6473 = !DILocation(line: 259, column: 31, scope: !6369)
!6474 = !DILocation(line: 259, column: 39, scope: !6369)
!6475 = !DILocation(line: 259, column: 36, scope: !6369)
!6476 = distinct !{!6476, !6404, !6477, !5403, !5404}
!6477 = !DILocation(line: 259, column: 42, scope: !6369)
!6478 = !DILocation(line: 261, column: 9, scope: !6369)
!6479 = !DILocation(line: 262, column: 1, scope: !6369)
!6480 = !DILocation(line: 261, column: 2, scope: !6369)
!6481 = distinct !DISubprogram(name: "pgd_none", scope: !6482, file: !6482, line: 1169, type: !6483, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6485)
!6482 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!23, !3851}
!6485 = !{!6486}
!6486 = !DILocalVariable(name: "pgd", arg: 1, scope: !6481, file: !6482, line: 1169, type: !3851)
!6487 = !DILocation(line: 1169, column: 34, scope: !6481)
!6488 = !DILocation(line: 1171, column: 6, scope: !6481)
!6489 = !DILocation(line: 1171, column: 7, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6481, file: !6482, line: 1171, column: 6)
!6491 = !DILocation(line: 1172, column: 3, scope: !6490)
!6492 = !DILocation(line: 1179, column: 10, scope: !6481)
!6493 = !DILocation(line: 1179, column: 9, scope: !6481)
!6494 = !DILocation(line: 1179, column: 2, scope: !6481)
!6495 = !DILocation(line: 1180, column: 1, scope: !6481)
!6496 = distinct !DISubprogram(name: "pgd_bad", scope: !6482, file: !6482, line: 1156, type: !6483, scopeLine: 1157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6497)
!6497 = !{!6498, !6499}
!6498 = !DILocalVariable(name: "pgd", arg: 1, scope: !6496, file: !6482, line: 1156, type: !3851)
!6499 = !DILocalVariable(name: "ignore_flags", scope: !6496, file: !6482, line: 1158, type: !40)
!6500 = !DILocation(line: 1156, column: 33, scope: !6496)
!6501 = !DILocation(line: 1158, column: 2, scope: !6496)
!6502 = !DILocation(line: 1158, column: 16, scope: !6496)
!6503 = !DILocation(line: 1160, column: 6, scope: !6496)
!6504 = !DILocation(line: 1160, column: 7, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6496, file: !6482, line: 1160, column: 6)
!6506 = !DILocation(line: 1161, column: 3, scope: !6505)
!6507 = !DILocation(line: 1164, column: 16, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6496, file: !6482, line: 1163, column: 6)
!6509 = !DILocation(line: 1166, column: 10, scope: !6496)
!6510 = !DILocation(line: 1166, column: 28, scope: !6496)
!6511 = !DILocation(line: 1166, column: 27, scope: !6496)
!6512 = !DILocation(line: 1166, column: 25, scope: !6496)
!6513 = !DILocation(line: 1166, column: 42, scope: !6496)
!6514 = !DILocation(line: 1166, column: 2, scope: !6496)
!6515 = !DILocation(line: 1167, column: 1, scope: !6496)
!6516 = !DISubprogram(name: "pgd_clear_bad", scope: !6337, file: !6337, line: 996, type: !6517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !3850}
!6519 = distinct !DISubprogram(name: "arch_test_bit", scope: !6520, file: !6520, line: 237, type: !6521, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6526)
!6520 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6521 = !DISubroutineType(types: !6522)
!6522 = !{!879, !40, !6523}
!6523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6524, size: 64)
!6524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6525)
!6525 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!6526 = !{!6527, !6528}
!6527 = !DILocalVariable(name: "nr", arg: 1, scope: !6519, file: !6520, line: 237, type: !40)
!6528 = !DILocalVariable(name: "addr", arg: 2, scope: !6519, file: !6520, line: 237, type: !6523)
!6529 = !DILocation(line: 237, column: 29, scope: !6519)
!6530 = !DILocation(line: 237, column: 63, scope: !6519)
!6531 = !DILocation(line: 239, column: 30, scope: !6519)
!6532 = !DILocation(line: 239, column: 9, scope: !6519)
!6533 = !DILocation(line: 239, column: 54, scope: !6519)
!6534 = !DILocation(line: 239, column: 58, scope: !6519)
!6535 = !DILocation(line: 239, column: 36, scope: !6519)
!6536 = !DILocation(line: 240, column: 26, scope: !6519)
!6537 = !DILocation(line: 240, column: 30, scope: !6519)
!6538 = !DILocation(line: 240, column: 8, scope: !6519)
!6539 = !DILocation(line: 239, column: 2, scope: !6519)
!6540 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6541, file: !6541, line: 173, type: !6542, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6544)
!6541 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6542 = !DISubroutineType(types: !6543)
!6543 = !{!879, !94}
!6544 = !{!6545, !6546, !6547}
!6545 = !DILocalVariable(name: "bit", arg: 1, scope: !6540, file: !6541, line: 173, type: !94)
!6546 = !DILabel(scope: !6540, name: "t_yes", file: !6541, line: 187)
!6547 = !DILabel(scope: !6540, name: "t_no", file: !6541, line: 189)
!6548 = !DILocation(line: 173, column: 49, scope: !6540)
!6549 = !DILocation(line: 183, column: 24, scope: !6540)
!6550 = !DILocation(line: 184, column: 30, scope: !6540)
!6551 = !DILocation(line: 184, column: 34, scope: !6540)
!6552 = !DILocation(line: 184, column: 26, scope: !6540)
!6553 = !DILocation(line: 185, column: 70, scope: !6540)
!6554 = !DILocation(line: 185, column: 74, scope: !6540)
!6555 = !DILocation(line: 185, column: 25, scope: !6540)
!6556 = !DILocation(line: 175, column: 2, scope: !6540)
!6557 = !{i64 2149657061, i64 2149657094, i64 2149657100, i64 2149657116, i64 2149657135, i64 2149657166, i64 2149658119, i64 2149656708, i64 2149658125, i64 2149658173, i64 2149658237, i64 2149658301, i64 2149658358, i64 2149658565, i64 2149658613, i64 2149658677, i64 2149658741, i64 2149658798, i64 2149656826, i64 2149656851, i64 2149659008, i64 2149659136, i64 2149659069, i64 2149659150, i64 2149659164, i64 2149659280, i64 2149659225, i64 2149659294, i64 2149656985, i64 1135898, i64 1135938, i64 1135947, i64 1135997, i64 1136018, i64 1136038}
!6558 = !DILocation(line: 187, column: 1, scope: !6540)
!6559 = !DILocation(line: 188, column: 2, scope: !6540)
!6560 = !DILocation(line: 189, column: 1, scope: !6540)
!6561 = !DILocation(line: 190, column: 2, scope: !6540)
!6562 = !DILocation(line: 191, column: 1, scope: !6540)
!6563 = distinct !DISubprogram(name: "native_pgd_val", scope: !294, file: !294, line: 335, type: !6564, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6566)
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!3855, !3851}
!6566 = !{!6567}
!6567 = !DILocalVariable(name: "pgd", arg: 1, scope: !6563, file: !294, line: 335, type: !3851)
!6568 = !DILocation(line: 335, column: 45, scope: !6563)
!6569 = !DILocation(line: 337, column: 13, scope: !6563)
!6570 = !DILocation(line: 337, column: 17, scope: !6563)
!6571 = !DILocation(line: 337, column: 2, scope: !6563)
!6572 = distinct !DISubprogram(name: "constant_test_bit", scope: !6520, file: !6520, line: 204, type: !6573, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6575)
!6573 = !DISubroutineType(types: !6574)
!6574 = !{!879, !287, !6523}
!6575 = !{!6576, !6577}
!6576 = !DILocalVariable(name: "nr", arg: 1, scope: !6572, file: !6520, line: 204, type: !287)
!6577 = !DILocalVariable(name: "addr", arg: 2, scope: !6572, file: !6520, line: 204, type: !6523)
!6578 = !DILocation(line: 204, column: 52, scope: !6572)
!6579 = !DILocation(line: 204, column: 86, scope: !6572)
!6580 = !DILocation(line: 206, column: 19, scope: !6572)
!6581 = !DILocation(line: 206, column: 22, scope: !6572)
!6582 = !DILocation(line: 206, column: 15, scope: !6572)
!6583 = !DILocation(line: 207, column: 4, scope: !6572)
!6584 = !DILocation(line: 207, column: 9, scope: !6572)
!6585 = !DILocation(line: 207, column: 12, scope: !6572)
!6586 = !DILocation(line: 206, column: 44, scope: !6572)
!6587 = !DILocation(line: 207, column: 37, scope: !6572)
!6588 = !DILocation(line: 206, column: 2, scope: !6572)
!6589 = distinct !DISubprogram(name: "variable_test_bit", scope: !6520, file: !6520, line: 224, type: !6573, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6590)
!6590 = !{!6591, !6592, !6593}
!6591 = !DILocalVariable(name: "nr", arg: 1, scope: !6589, file: !6520, line: 224, type: !287)
!6592 = !DILocalVariable(name: "addr", arg: 2, scope: !6589, file: !6520, line: 224, type: !6523)
!6593 = !DILocalVariable(name: "oldbit", scope: !6589, file: !6520, line: 226, type: !879)
!6594 = !DILocation(line: 224, column: 52, scope: !6589)
!6595 = !DILocation(line: 224, column: 86, scope: !6589)
!6596 = !DILocation(line: 226, column: 2, scope: !6589)
!6597 = !DILocation(line: 226, column: 7, scope: !6589)
!6598 = !DILocation(line: 231, column: 33, scope: !6589)
!6599 = !DILocation(line: 231, column: 46, scope: !6589)
!6600 = !DILocation(line: 228, column: 2, scope: !6589)
!6601 = !{i64 2148324745, i64 2148324819}
!6602 = !DILocation(line: 233, column: 9, scope: !6589)
!6603 = !{i8 0, i8 2}
!6604 = !DILocation(line: 234, column: 1, scope: !6589)
!6605 = !DILocation(line: 233, column: 2, scope: !6589)
!6606 = distinct !DISubprogram(name: "pgd_flags", scope: !294, file: !294, line: 340, type: !6564, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6607)
!6607 = !{!6608}
!6608 = !DILocalVariable(name: "pgd", arg: 1, scope: !6606, file: !294, line: 340, type: !3851)
!6609 = !DILocation(line: 340, column: 40, scope: !6606)
!6610 = !DILocation(line: 342, column: 9, scope: !6606)
!6611 = !DILocation(line: 342, column: 29, scope: !6606)
!6612 = !DILocation(line: 342, column: 2, scope: !6606)
!6613 = distinct !DISubprogram(name: "real_depth", scope: !1, file: !1, line: 12, type: !3732, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6614)
!6614 = !{!6615}
!6615 = !DILocalVariable(name: "depth", arg: 1, scope: !6613, file: !1, line: 12, type: !23)
!6616 = !DILocation(line: 12, column: 27, scope: !6613)
!6617 = !DILocation(line: 14, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6613, file: !1, line: 14, column: 6)
!6619 = !DILocation(line: 14, column: 12, scope: !6618)
!6620 = !DILocation(line: 14, column: 17, scope: !6618)
!6621 = !DILocation(line: 14, column: 6, scope: !6613)
!6622 = !DILocation(line: 15, column: 9, scope: !6618)
!6623 = !DILocation(line: 15, column: 3, scope: !6618)
!6624 = !DILocation(line: 16, column: 6, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6613, file: !1, line: 16, column: 6)
!6626 = !DILocation(line: 16, column: 12, scope: !6625)
!6627 = !DILocation(line: 16, column: 17, scope: !6625)
!6628 = !DILocation(line: 16, column: 6, scope: !6613)
!6629 = !DILocation(line: 17, column: 9, scope: !6625)
!6630 = !DILocation(line: 17, column: 3, scope: !6625)
!6631 = !DILocation(line: 18, column: 6, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6613, file: !1, line: 18, column: 6)
!6633 = !DILocation(line: 18, column: 12, scope: !6632)
!6634 = !DILocation(line: 18, column: 17, scope: !6632)
!6635 = !DILocation(line: 18, column: 20, scope: !6632)
!6636 = !DILocation(line: 18, column: 33, scope: !6632)
!6637 = !DILocation(line: 18, column: 6, scope: !6613)
!6638 = !DILocation(line: 19, column: 9, scope: !6632)
!6639 = !DILocation(line: 19, column: 3, scope: !6632)
!6640 = !DILocation(line: 20, column: 9, scope: !6613)
!6641 = !DILocation(line: 20, column: 2, scope: !6613)
!6642 = distinct !DISubprogram(name: "p4d_offset", scope: !6482, file: !6482, line: 1149, type: !6643, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6645)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!292, !3850, !40}
!6645 = !{!6646, !6647}
!6646 = !DILocalVariable(name: "pgd", arg: 1, scope: !6642, file: !6482, line: 1149, type: !3850)
!6647 = !DILocalVariable(name: "address", arg: 2, scope: !6642, file: !6482, line: 1149, type: !40)
!6648 = !DILocation(line: 1149, column: 40, scope: !6642)
!6649 = !DILocation(line: 1149, column: 59, scope: !6642)
!6650 = !DILocation(line: 1151, column: 6, scope: !6642)
!6651 = !DILocation(line: 1151, column: 7, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6642, file: !6482, line: 1151, column: 6)
!6653 = !DILocation(line: 1152, column: 19, scope: !6652)
!6654 = !DILocation(line: 1152, column: 3, scope: !6652)
!6655 = !DILocation(line: 1153, column: 34, scope: !6642)
!6656 = !DILocation(line: 1153, column: 18, scope: !6642)
!6657 = !DILocation(line: 1153, column: 9, scope: !6642)
!6658 = !DILocation(line: 1153, column: 51, scope: !6642)
!6659 = !DILocation(line: 1153, column: 41, scope: !6642)
!6660 = !DILocation(line: 1153, column: 39, scope: !6642)
!6661 = !DILocation(line: 1153, column: 2, scope: !6642)
!6662 = !DILocation(line: 1154, column: 1, scope: !6642)
!6663 = distinct !DISubprogram(name: "p4d_none_or_clear_bad", scope: !6337, file: !6337, line: 1023, type: !6664, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6666)
!6664 = !DISubroutineType(types: !6665)
!6665 = !{!23, !292}
!6666 = !{!6667}
!6667 = !DILocalVariable(name: "p4d", arg: 1, scope: !6663, file: !6337, line: 1023, type: !292)
!6668 = !DILocation(line: 1023, column: 48, scope: !6663)
!6669 = !DILocation(line: 1025, column: 16, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6663, file: !6337, line: 1025, column: 6)
!6671 = !DILocation(line: 1025, column: 6, scope: !6670)
!6672 = !DILocation(line: 1025, column: 6, scope: !6663)
!6673 = !DILocation(line: 1026, column: 3, scope: !6670)
!6674 = !DILocation(line: 1027, column: 6, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6663, file: !6337, line: 1027, column: 6)
!6676 = !DILocation(line: 1027, column: 6, scope: !6663)
!6677 = !DILocation(line: 1028, column: 17, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6675, file: !6337, line: 1027, column: 31)
!6679 = !DILocation(line: 1028, column: 3, scope: !6678)
!6680 = !DILocation(line: 1029, column: 3, scope: !6678)
!6681 = !DILocation(line: 1031, column: 2, scope: !6663)
!6682 = !DILocation(line: 1032, column: 1, scope: !6663)
!6683 = distinct !DISubprogram(name: "walk_pud_range", scope: !1, file: !1, line: 177, type: !5227, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6684)
!6684 = !{!6685, !6686, !6687, !6688, !6689, !6690, !6691, !6692, !6693, !6694, !6696}
!6685 = !DILocalVariable(name: "p4d", arg: 1, scope: !6683, file: !1, line: 177, type: !292)
!6686 = !DILocalVariable(name: "addr", arg: 2, scope: !6683, file: !1, line: 177, type: !40)
!6687 = !DILocalVariable(name: "end", arg: 3, scope: !6683, file: !1, line: 177, type: !40)
!6688 = !DILocalVariable(name: "walk", arg: 4, scope: !6683, file: !1, line: 178, type: !5215)
!6689 = !DILocalVariable(name: "pud", scope: !6683, file: !1, line: 180, type: !299)
!6690 = !DILocalVariable(name: "next", scope: !6683, file: !1, line: 181, type: !40)
!6691 = !DILocalVariable(name: "ops", scope: !6683, file: !1, line: 182, type: !5207)
!6692 = !DILocalVariable(name: "err", scope: !6683, file: !1, line: 183, type: !23)
!6693 = !DILocalVariable(name: "depth", scope: !6683, file: !1, line: 184, type: !23)
!6694 = !DILabel(scope: !6695, name: "again", file: !1, line: 188)
!6695 = distinct !DILexicalBlock(scope: !6683, file: !1, line: 187, column: 5)
!6696 = !DILocalVariable(name: "__boundary", scope: !6697, file: !1, line: 189, type: !40)
!6697 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 189, column: 10)
!6698 = !DILocation(line: 177, column: 34, scope: !6683)
!6699 = !DILocation(line: 177, column: 53, scope: !6683)
!6700 = !DILocation(line: 177, column: 73, scope: !6683)
!6701 = !DILocation(line: 178, column: 22, scope: !6683)
!6702 = !DILocation(line: 180, column: 2, scope: !6683)
!6703 = !DILocation(line: 180, column: 9, scope: !6683)
!6704 = !DILocation(line: 181, column: 2, scope: !6683)
!6705 = !DILocation(line: 181, column: 16, scope: !6683)
!6706 = !DILocation(line: 182, column: 2, scope: !6683)
!6707 = !DILocation(line: 182, column: 28, scope: !6683)
!6708 = !DILocation(line: 182, column: 34, scope: !6683)
!6709 = !DILocation(line: 182, column: 40, scope: !6683)
!6710 = !DILocation(line: 183, column: 2, scope: !6683)
!6711 = !DILocation(line: 183, column: 6, scope: !6683)
!6712 = !DILocation(line: 184, column: 2, scope: !6683)
!6713 = !DILocation(line: 184, column: 6, scope: !6683)
!6714 = !DILocation(line: 184, column: 14, scope: !6683)
!6715 = !DILocation(line: 186, column: 19, scope: !6683)
!6716 = !DILocation(line: 186, column: 24, scope: !6683)
!6717 = !DILocation(line: 186, column: 8, scope: !6683)
!6718 = !DILocation(line: 186, column: 6, scope: !6683)
!6719 = !DILocation(line: 187, column: 2, scope: !6683)
!6720 = !DILocation(line: 187, column: 5, scope: !6683)
!6721 = !DILocation(line: 188, column: 2, scope: !6695)
!6722 = !DILocation(line: 189, column: 10, scope: !6697)
!6723 = !DILocation(line: 189, column: 10, scope: !6695)
!6724 = !DILocation(line: 189, column: 8, scope: !6695)
!6725 = !DILocation(line: 190, column: 17, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 190, column: 7)
!6727 = !DILocation(line: 190, column: 7, scope: !6726)
!6728 = !DILocation(line: 190, column: 7, scope: !6695)
!6729 = !DILocation(line: 191, column: 8, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6731, file: !1, line: 191, column: 8)
!6731 = distinct !DILexicalBlock(scope: !6726, file: !1, line: 190, column: 23)
!6732 = !DILocation(line: 191, column: 13, scope: !6730)
!6733 = !DILocation(line: 191, column: 8, scope: !6731)
!6734 = !DILocation(line: 192, column: 11, scope: !6730)
!6735 = !DILocation(line: 192, column: 16, scope: !6730)
!6736 = !DILocation(line: 192, column: 25, scope: !6730)
!6737 = !DILocation(line: 192, column: 31, scope: !6730)
!6738 = !DILocation(line: 192, column: 37, scope: !6730)
!6739 = !DILocation(line: 192, column: 44, scope: !6730)
!6740 = !DILocation(line: 192, column: 9, scope: !6730)
!6741 = !DILocation(line: 192, column: 5, scope: !6730)
!6742 = !DILocation(line: 193, column: 8, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6731, file: !1, line: 193, column: 8)
!6744 = !DILocation(line: 193, column: 8, scope: !6731)
!6745 = !DILocation(line: 194, column: 5, scope: !6743)
!6746 = !DILocation(line: 195, column: 4, scope: !6731)
!6747 = !DILocation(line: 198, column: 3, scope: !6695)
!6748 = !DILocation(line: 198, column: 9, scope: !6695)
!6749 = !DILocation(line: 198, column: 16, scope: !6695)
!6750 = !DILocation(line: 200, column: 7, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 200, column: 7)
!6752 = !DILocation(line: 200, column: 12, scope: !6751)
!6753 = !DILocation(line: 200, column: 7, scope: !6695)
!6754 = !DILocation(line: 201, column: 10, scope: !6751)
!6755 = !DILocation(line: 201, column: 15, scope: !6751)
!6756 = !DILocation(line: 201, column: 25, scope: !6751)
!6757 = !DILocation(line: 201, column: 30, scope: !6751)
!6758 = !DILocation(line: 201, column: 36, scope: !6751)
!6759 = !DILocation(line: 201, column: 42, scope: !6751)
!6760 = !DILocation(line: 201, column: 8, scope: !6751)
!6761 = !DILocation(line: 201, column: 4, scope: !6751)
!6762 = !DILocation(line: 202, column: 7, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 202, column: 7)
!6764 = !DILocation(line: 202, column: 7, scope: !6695)
!6765 = !DILocation(line: 203, column: 4, scope: !6763)
!6766 = !DILocation(line: 205, column: 7, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 205, column: 7)
!6768 = !DILocation(line: 205, column: 13, scope: !6767)
!6769 = !DILocation(line: 205, column: 20, scope: !6767)
!6770 = !DILocation(line: 205, column: 7, scope: !6695)
!6771 = !DILocation(line: 206, column: 4, scope: !6767)
!6772 = !DILocation(line: 208, column: 9, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 208, column: 7)
!6774 = !DILocation(line: 208, column: 15, scope: !6773)
!6775 = !DILocation(line: 208, column: 19, scope: !6773)
!6776 = !DILocation(line: 208, column: 33, scope: !6773)
!6777 = !DILocation(line: 208, column: 23, scope: !6773)
!6778 = !DILocation(line: 208, column: 38, scope: !6773)
!6779 = !DILocation(line: 208, column: 55, scope: !6773)
!6780 = !DILocation(line: 208, column: 42, scope: !6773)
!6781 = !DILocation(line: 208, column: 62, scope: !6773)
!6782 = !DILocation(line: 209, column: 7, scope: !6773)
!6783 = !DILocation(line: 209, column: 13, scope: !6773)
!6784 = !DILocation(line: 209, column: 20, scope: !6773)
!6785 = !DILocation(line: 209, column: 39, scope: !6773)
!6786 = !DILocation(line: 210, column: 9, scope: !6773)
!6787 = !DILocation(line: 210, column: 14, scope: !6773)
!6788 = !DILocation(line: 210, column: 24, scope: !6773)
!6789 = !DILocation(line: 210, column: 27, scope: !6773)
!6790 = !DILocation(line: 210, column: 32, scope: !6773)
!6791 = !DILocation(line: 208, column: 7, scope: !6695)
!6792 = !DILocation(line: 211, column: 4, scope: !6773)
!6793 = !DILocation(line: 213, column: 7, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 213, column: 7)
!6795 = !DILocation(line: 213, column: 13, scope: !6794)
!6796 = !DILocation(line: 213, column: 7, scope: !6695)
!6797 = !DILocation(line: 214, column: 4, scope: !6794)
!6798 = !DILocation(line: 214, column: 4, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6794, file: !1, line: 214, column: 4)
!6800 = !DILocation(line: 215, column: 17, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 215, column: 7)
!6802 = !DILocation(line: 215, column: 7, scope: !6801)
!6803 = !DILocation(line: 215, column: 7, scope: !6695)
!6804 = !DILocation(line: 216, column: 4, scope: !6801)
!6805 = !DILocation(line: 221, column: 25, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 218, column: 7)
!6807 = !DILocation(line: 221, column: 30, scope: !6806)
!6808 = !DILocation(line: 221, column: 36, scope: !6806)
!6809 = !DILocation(line: 221, column: 42, scope: !6806)
!6810 = !DILocation(line: 221, column: 10, scope: !6806)
!6811 = !DILocation(line: 221, column: 8, scope: !6806)
!6812 = !DILocation(line: 222, column: 7, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6695, file: !1, line: 222, column: 7)
!6814 = !DILocation(line: 222, column: 7, scope: !6695)
!6815 = !DILocation(line: 223, column: 4, scope: !6813)
!6816 = !DILocation(line: 224, column: 2, scope: !6695)
!6817 = !DILocation(line: 224, column: 14, scope: !6683)
!6818 = !DILocation(line: 224, column: 25, scope: !6683)
!6819 = !DILocation(line: 224, column: 23, scope: !6683)
!6820 = !DILocation(line: 224, column: 31, scope: !6683)
!6821 = !DILocation(line: 224, column: 39, scope: !6683)
!6822 = !DILocation(line: 224, column: 36, scope: !6683)
!6823 = distinct !{!6823, !6719, !6824, !5403, !5404}
!6824 = !DILocation(line: 224, column: 42, scope: !6683)
!6825 = !DILocation(line: 226, column: 9, scope: !6683)
!6826 = !DILocation(line: 227, column: 1, scope: !6683)
!6827 = !DILocation(line: 226, column: 2, scope: !6683)
!6828 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !6482, file: !6482, line: 1137, type: !6829, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6831)
!6829 = !DISubroutineType(types: !6830)
!6830 = !{!40, !3851}
!6831 = !{!6832}
!6832 = !DILocalVariable(name: "pgd", arg: 1, scope: !6828, file: !6482, line: 1137, type: !3851)
!6833 = !DILocation(line: 1137, column: 50, scope: !6828)
!6834 = !DILocation(line: 1139, column: 24, scope: !6828)
!6835 = !DILocation(line: 1139, column: 9, scope: !6828)
!6836 = !DILocation(line: 1139, column: 2, scope: !6828)
!6837 = distinct !DISubprogram(name: "p4d_index", scope: !6482, file: !6482, line: 1124, type: !6838, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6840)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!40, !40}
!6840 = !{!6841}
!6841 = !DILocalVariable(name: "address", arg: 1, scope: !6837, file: !6482, line: 1124, type: !40)
!6842 = !DILocation(line: 1124, column: 53, scope: !6837)
!6843 = !DILocation(line: 1126, column: 10, scope: !6837)
!6844 = !DILocation(line: 1126, column: 18, scope: !6837)
!6845 = !DILocation(line: 1126, column: 35, scope: !6837)
!6846 = !DILocation(line: 1126, column: 48, scope: !6837)
!6847 = !DILocation(line: 1126, column: 34, scope: !6837)
!6848 = !DILocation(line: 1126, column: 32, scope: !6837)
!6849 = !DILocation(line: 1126, column: 2, scope: !6837)
!6850 = distinct !DISubprogram(name: "p4d_none", scope: !6482, file: !6482, line: 1092, type: !6851, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6853)
!6851 = !DISubroutineType(types: !6852)
!6852 = !{!23, !293}
!6853 = !{!6854}
!6854 = !DILocalVariable(name: "p4d", arg: 1, scope: !6850, file: !6482, line: 1092, type: !293)
!6855 = !DILocation(line: 1092, column: 34, scope: !6850)
!6856 = !DILocation(line: 1094, column: 10, scope: !6850)
!6857 = !DILocation(line: 1094, column: 30, scope: !6850)
!6858 = !DILocation(line: 1094, column: 59, scope: !6850)
!6859 = !DILocation(line: 1094, column: 2, scope: !6850)
!6860 = distinct !DISubprogram(name: "p4d_bad", scope: !6482, file: !6482, line: 1113, type: !6851, scopeLine: 1114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6861)
!6861 = !{!6862, !6863}
!6862 = !DILocalVariable(name: "p4d", arg: 1, scope: !6860, file: !6482, line: 1113, type: !293)
!6863 = !DILocalVariable(name: "ignore_flags", scope: !6860, file: !6482, line: 1115, type: !40)
!6864 = !DILocation(line: 1113, column: 33, scope: !6860)
!6865 = !DILocation(line: 1115, column: 2, scope: !6860)
!6866 = !DILocation(line: 1115, column: 16, scope: !6860)
!6867 = !DILocation(line: 1118, column: 16, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6860, file: !6482, line: 1117, column: 6)
!6869 = !DILocation(line: 1120, column: 10, scope: !6860)
!6870 = !DILocation(line: 1120, column: 28, scope: !6860)
!6871 = !DILocation(line: 1120, column: 27, scope: !6860)
!6872 = !DILocation(line: 1120, column: 25, scope: !6860)
!6873 = !DILocation(line: 1120, column: 42, scope: !6860)
!6874 = !DILocation(line: 1121, column: 1, scope: !6860)
!6875 = !DILocation(line: 1120, column: 2, scope: !6860)
!6876 = !DISubprogram(name: "p4d_clear_bad", scope: !6337, file: !6337, line: 999, type: !6877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6877 = !DISubroutineType(types: !6878)
!6878 = !{null, !292}
!6879 = distinct !DISubprogram(name: "native_p4d_val", scope: !294, file: !294, line: 353, type: !6880, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6882)
!6880 = !DISubroutineType(types: !6881)
!6881 = !{!298, !293}
!6882 = !{!6883}
!6883 = !DILocalVariable(name: "p4d", arg: 1, scope: !6879, file: !294, line: 353, type: !293)
!6884 = !DILocation(line: 353, column: 45, scope: !6879)
!6885 = !DILocation(line: 355, column: 13, scope: !6879)
!6886 = !DILocation(line: 355, column: 2, scope: !6879)
!6887 = distinct !DISubprogram(name: "p4d_flags", scope: !294, file: !294, line: 432, type: !6880, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6888)
!6888 = !{!6889}
!6889 = !DILocalVariable(name: "p4d", arg: 1, scope: !6887, file: !294, line: 432, type: !293)
!6890 = !DILocation(line: 432, column: 40, scope: !6887)
!6891 = !DILocation(line: 434, column: 9, scope: !6887)
!6892 = !DILocation(line: 434, column: 31, scope: !6887)
!6893 = !DILocation(line: 434, column: 29, scope: !6887)
!6894 = !DILocation(line: 434, column: 2, scope: !6887)
!6895 = distinct !DISubprogram(name: "p4d_flags_mask", scope: !294, file: !294, line: 427, type: !6880, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6896)
!6896 = !{!6897}
!6897 = !DILocalVariable(name: "p4d", arg: 1, scope: !6895, file: !294, line: 427, type: !293)
!6898 = !DILocation(line: 427, column: 45, scope: !6895)
!6899 = !DILocation(line: 429, column: 10, scope: !6895)
!6900 = !DILocation(line: 429, column: 9, scope: !6895)
!6901 = !DILocation(line: 429, column: 2, scope: !6895)
!6902 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !294, file: !294, line: 421, type: !6880, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6903)
!6903 = !{!6904}
!6904 = !DILocalVariable(name: "p4d", arg: 1, scope: !6902, file: !294, line: 421, type: !293)
!6905 = !DILocation(line: 421, column: 43, scope: !6902)
!6906 = !DILocation(line: 424, column: 2, scope: !6902)
!6907 = distinct !DISubprogram(name: "pud_offset", scope: !6337, file: !6337, line: 129, type: !6908, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6910)
!6908 = !DISubroutineType(types: !6909)
!6909 = !{!299, !292, !40}
!6910 = !{!6911, !6912}
!6911 = !DILocalVariable(name: "p4d", arg: 1, scope: !6907, file: !6337, line: 129, type: !292)
!6912 = !DILocalVariable(name: "address", arg: 2, scope: !6907, file: !6337, line: 129, type: !40)
!6913 = !DILocation(line: 129, column: 40, scope: !6907)
!6914 = !DILocation(line: 129, column: 59, scope: !6907)
!6915 = !DILocation(line: 131, column: 22, scope: !6907)
!6916 = !DILocation(line: 131, column: 9, scope: !6907)
!6917 = !DILocation(line: 131, column: 39, scope: !6907)
!6918 = !DILocation(line: 131, column: 29, scope: !6907)
!6919 = !DILocation(line: 131, column: 27, scope: !6907)
!6920 = !DILocation(line: 131, column: 2, scope: !6907)
!6921 = distinct !DISubprogram(name: "pud_none", scope: !6482, file: !6482, line: 1051, type: !6922, scopeLine: 1052, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6924)
!6922 = !DISubroutineType(types: !6923)
!6923 = !{!23, !300}
!6924 = !{!6925}
!6925 = !DILocalVariable(name: "pud", arg: 1, scope: !6921, file: !6482, line: 1051, type: !300)
!6926 = !DILocation(line: 1051, column: 34, scope: !6921)
!6927 = !DILocation(line: 1053, column: 10, scope: !6921)
!6928 = !DILocation(line: 1053, column: 30, scope: !6921)
!6929 = !DILocation(line: 1053, column: 59, scope: !6921)
!6930 = !DILocation(line: 1053, column: 2, scope: !6921)
!6931 = distinct !DISubprogram(name: "pud_large", scope: !6482, file: !6482, line: 1073, type: !6922, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6932)
!6932 = !{!6933}
!6933 = !DILocalVariable(name: "pud", arg: 1, scope: !6931, file: !6482, line: 1073, type: !300)
!6934 = !DILocation(line: 1073, column: 35, scope: !6931)
!6935 = !DILocation(line: 1075, column: 10, scope: !6931)
!6936 = !DILocation(line: 1075, column: 23, scope: !6931)
!6937 = !DILocation(line: 1075, column: 54, scope: !6931)
!6938 = !DILocation(line: 1075, column: 2, scope: !6931)
!6939 = distinct !DISubprogram(name: "pud_present", scope: !6482, file: !6482, line: 1056, type: !6922, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6940)
!6940 = !{!6941}
!6941 = !DILocalVariable(name: "pud", arg: 1, scope: !6939, file: !6482, line: 1056, type: !300)
!6942 = !DILocation(line: 1056, column: 37, scope: !6939)
!6943 = !DILocation(line: 1058, column: 9, scope: !6939)
!6944 = !DILocation(line: 1058, column: 24, scope: !6939)
!6945 = !DILocation(line: 1058, column: 2, scope: !6939)
!6946 = distinct !DISubprogram(name: "walk_pmd_range", scope: !1, file: !1, line: 115, type: !5231, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6947)
!6947 = !{!6948, !6949, !6950, !6951, !6952, !6953, !6954, !6955, !6956, !6957, !6959}
!6948 = !DILocalVariable(name: "pud", arg: 1, scope: !6946, file: !1, line: 115, type: !299)
!6949 = !DILocalVariable(name: "addr", arg: 2, scope: !6946, file: !1, line: 115, type: !40)
!6950 = !DILocalVariable(name: "end", arg: 3, scope: !6946, file: !1, line: 115, type: !40)
!6951 = !DILocalVariable(name: "walk", arg: 4, scope: !6946, file: !1, line: 116, type: !5215)
!6952 = !DILocalVariable(name: "pmd", scope: !6946, file: !1, line: 118, type: !305)
!6953 = !DILocalVariable(name: "next", scope: !6946, file: !1, line: 119, type: !40)
!6954 = !DILocalVariable(name: "ops", scope: !6946, file: !1, line: 120, type: !5207)
!6955 = !DILocalVariable(name: "err", scope: !6946, file: !1, line: 121, type: !23)
!6956 = !DILocalVariable(name: "depth", scope: !6946, file: !1, line: 122, type: !23)
!6957 = !DILabel(scope: !6958, name: "again", file: !1, line: 126)
!6958 = distinct !DILexicalBlock(scope: !6946, file: !1, line: 125, column: 5)
!6959 = !DILocalVariable(name: "__boundary", scope: !6960, file: !1, line: 127, type: !40)
!6960 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 127, column: 10)
!6961 = !DILocation(line: 115, column: 34, scope: !6946)
!6962 = !DILocation(line: 115, column: 53, scope: !6946)
!6963 = !DILocation(line: 115, column: 73, scope: !6946)
!6964 = !DILocation(line: 116, column: 22, scope: !6946)
!6965 = !DILocation(line: 118, column: 2, scope: !6946)
!6966 = !DILocation(line: 118, column: 9, scope: !6946)
!6967 = !DILocation(line: 119, column: 2, scope: !6946)
!6968 = !DILocation(line: 119, column: 16, scope: !6946)
!6969 = !DILocation(line: 120, column: 2, scope: !6946)
!6970 = !DILocation(line: 120, column: 28, scope: !6946)
!6971 = !DILocation(line: 120, column: 34, scope: !6946)
!6972 = !DILocation(line: 120, column: 40, scope: !6946)
!6973 = !DILocation(line: 121, column: 2, scope: !6946)
!6974 = !DILocation(line: 121, column: 6, scope: !6946)
!6975 = !DILocation(line: 122, column: 2, scope: !6946)
!6976 = !DILocation(line: 122, column: 6, scope: !6946)
!6977 = !DILocation(line: 122, column: 14, scope: !6946)
!6978 = !DILocation(line: 124, column: 19, scope: !6946)
!6979 = !DILocation(line: 124, column: 24, scope: !6946)
!6980 = !DILocation(line: 124, column: 8, scope: !6946)
!6981 = !DILocation(line: 124, column: 6, scope: !6946)
!6982 = !DILocation(line: 125, column: 2, scope: !6946)
!6983 = !DILocation(line: 125, column: 5, scope: !6946)
!6984 = !DILocation(line: 126, column: 1, scope: !6958)
!6985 = !DILocation(line: 127, column: 10, scope: !6960)
!6986 = !DILocation(line: 127, column: 10, scope: !6958)
!6987 = !DILocation(line: 127, column: 8, scope: !6958)
!6988 = !DILocation(line: 128, column: 17, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 128, column: 7)
!6990 = !DILocation(line: 128, column: 7, scope: !6989)
!6991 = !DILocation(line: 128, column: 7, scope: !6958)
!6992 = !DILocation(line: 129, column: 8, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6994, file: !1, line: 129, column: 8)
!6994 = distinct !DILexicalBlock(scope: !6989, file: !1, line: 128, column: 23)
!6995 = !DILocation(line: 129, column: 13, scope: !6993)
!6996 = !DILocation(line: 129, column: 8, scope: !6994)
!6997 = !DILocation(line: 130, column: 11, scope: !6993)
!6998 = !DILocation(line: 130, column: 16, scope: !6993)
!6999 = !DILocation(line: 130, column: 25, scope: !6993)
!7000 = !DILocation(line: 130, column: 31, scope: !6993)
!7001 = !DILocation(line: 130, column: 37, scope: !6993)
!7002 = !DILocation(line: 130, column: 44, scope: !6993)
!7003 = !DILocation(line: 130, column: 9, scope: !6993)
!7004 = !DILocation(line: 130, column: 5, scope: !6993)
!7005 = !DILocation(line: 131, column: 8, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !6994, file: !1, line: 131, column: 8)
!7007 = !DILocation(line: 131, column: 8, scope: !6994)
!7008 = !DILocation(line: 132, column: 5, scope: !7006)
!7009 = !DILocation(line: 133, column: 4, scope: !6994)
!7010 = !DILocation(line: 136, column: 3, scope: !6958)
!7011 = !DILocation(line: 136, column: 9, scope: !6958)
!7012 = !DILocation(line: 136, column: 16, scope: !6958)
!7013 = !DILocation(line: 142, column: 7, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 142, column: 7)
!7015 = !DILocation(line: 142, column: 12, scope: !7014)
!7016 = !DILocation(line: 142, column: 7, scope: !6958)
!7017 = !DILocation(line: 143, column: 10, scope: !7014)
!7018 = !DILocation(line: 143, column: 15, scope: !7014)
!7019 = !DILocation(line: 143, column: 25, scope: !7014)
!7020 = !DILocation(line: 143, column: 30, scope: !7014)
!7021 = !DILocation(line: 143, column: 36, scope: !7014)
!7022 = !DILocation(line: 143, column: 42, scope: !7014)
!7023 = !DILocation(line: 143, column: 8, scope: !7014)
!7024 = !DILocation(line: 143, column: 4, scope: !7014)
!7025 = !DILocation(line: 144, column: 7, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 144, column: 7)
!7027 = !DILocation(line: 144, column: 7, scope: !6958)
!7028 = !DILocation(line: 145, column: 4, scope: !7026)
!7029 = !DILocation(line: 147, column: 7, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 147, column: 7)
!7031 = !DILocation(line: 147, column: 13, scope: !7030)
!7032 = !DILocation(line: 147, column: 20, scope: !7030)
!7033 = !DILocation(line: 147, column: 7, scope: !6958)
!7034 = !DILocation(line: 148, column: 4, scope: !7030)
!7035 = !DILocation(line: 154, column: 9, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 154, column: 7)
!7037 = !DILocation(line: 154, column: 15, scope: !7036)
!7038 = !DILocation(line: 154, column: 19, scope: !7036)
!7039 = !DILocation(line: 154, column: 33, scope: !7036)
!7040 = !DILocation(line: 154, column: 23, scope: !7036)
!7041 = !DILocation(line: 154, column: 38, scope: !7036)
!7042 = !DILocation(line: 154, column: 55, scope: !7036)
!7043 = !DILocation(line: 154, column: 42, scope: !7036)
!7044 = !DILocation(line: 154, column: 62, scope: !7036)
!7045 = !DILocation(line: 155, column: 7, scope: !7036)
!7046 = !DILocation(line: 155, column: 13, scope: !7036)
!7047 = !DILocation(line: 155, column: 20, scope: !7036)
!7048 = !DILocation(line: 155, column: 39, scope: !7036)
!7049 = !DILocation(line: 156, column: 9, scope: !7036)
!7050 = !DILocation(line: 156, column: 14, scope: !7036)
!7051 = !DILocation(line: 156, column: 8, scope: !7036)
!7052 = !DILocation(line: 154, column: 7, scope: !6958)
!7053 = !DILocation(line: 157, column: 4, scope: !7036)
!7054 = !DILocation(line: 159, column: 7, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 159, column: 7)
!7056 = !DILocation(line: 159, column: 13, scope: !7055)
!7057 = !DILocation(line: 159, column: 7, scope: !6958)
!7058 = !DILocation(line: 160, column: 4, scope: !7055)
!7059 = !DILocation(line: 160, column: 4, scope: !7060)
!7060 = distinct !DILexicalBlock(scope: !7055, file: !1, line: 160, column: 4)
!7061 = !DILocation(line: 165, column: 25, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 162, column: 7)
!7063 = !DILocation(line: 165, column: 30, scope: !7062)
!7064 = !DILocation(line: 165, column: 36, scope: !7062)
!7065 = !DILocation(line: 165, column: 42, scope: !7062)
!7066 = !DILocation(line: 165, column: 10, scope: !7062)
!7067 = !DILocation(line: 165, column: 8, scope: !7062)
!7068 = !DILocation(line: 166, column: 7, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 166, column: 7)
!7070 = !DILocation(line: 166, column: 7, scope: !6958)
!7071 = !DILocation(line: 167, column: 4, scope: !7069)
!7072 = !DILocation(line: 169, column: 7, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !6958, file: !1, line: 169, column: 7)
!7074 = !DILocation(line: 169, column: 13, scope: !7073)
!7075 = !DILocation(line: 169, column: 20, scope: !7073)
!7076 = !DILocation(line: 169, column: 7, scope: !6958)
!7077 = !DILocation(line: 170, column: 4, scope: !7073)
!7078 = !DILocation(line: 172, column: 2, scope: !6958)
!7079 = !DILocation(line: 172, column: 14, scope: !6946)
!7080 = !DILocation(line: 172, column: 25, scope: !6946)
!7081 = !DILocation(line: 172, column: 23, scope: !6946)
!7082 = !DILocation(line: 172, column: 31, scope: !6946)
!7083 = !DILocation(line: 172, column: 39, scope: !6946)
!7084 = !DILocation(line: 172, column: 36, scope: !6946)
!7085 = distinct !{!7085, !6982, !7086, !5403, !5404}
!7086 = !DILocation(line: 172, column: 42, scope: !6946)
!7087 = !DILocation(line: 174, column: 9, scope: !6946)
!7088 = !DILocation(line: 175, column: 1, scope: !6946)
!7089 = !DILocation(line: 174, column: 2, scope: !6946)
!7090 = distinct !DISubprogram(name: "p4d_pgtable", scope: !6482, file: !6482, line: 1102, type: !7091, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7093)
!7091 = !DISubroutineType(types: !7092)
!7092 = !{!299, !293}
!7093 = !{!7094}
!7094 = !DILocalVariable(name: "p4d", arg: 1, scope: !7090, file: !6482, line: 1102, type: !293)
!7095 = !DILocation(line: 1102, column: 40, scope: !7090)
!7096 = !DILocation(line: 1104, column: 18, scope: !7090)
!7097 = !DILocation(line: 1104, column: 2, scope: !7090)
!7098 = distinct !DISubprogram(name: "pud_index", scope: !6337, file: !6337, line: 79, type: !6838, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7099)
!7099 = !{!7100}
!7100 = !DILocalVariable(name: "address", arg: 1, scope: !7098, file: !6337, line: 79, type: !40)
!7101 = !DILocation(line: 79, column: 53, scope: !7098)
!7102 = !DILocation(line: 81, column: 10, scope: !7098)
!7103 = !DILocation(line: 81, column: 18, scope: !7098)
!7104 = !DILocation(line: 81, column: 32, scope: !7098)
!7105 = !DILocation(line: 81, column: 2, scope: !7098)
!7106 = distinct !DISubprogram(name: "native_pud_val", scope: !294, file: !294, line: 379, type: !7107, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7109)
!7107 = !DISubroutineType(types: !7108)
!7108 = !{!304, !300}
!7109 = !{!7110}
!7110 = !DILocalVariable(name: "pud", arg: 1, scope: !7106, file: !294, line: 379, type: !300)
!7111 = !DILocation(line: 379, column: 45, scope: !7106)
!7112 = !DILocation(line: 381, column: 13, scope: !7106)
!7113 = !DILocation(line: 381, column: 2, scope: !7106)
!7114 = distinct !DISubprogram(name: "pud_flags", scope: !294, file: !294, line: 450, type: !7107, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7115)
!7115 = !{!7116}
!7116 = !DILocalVariable(name: "pud", arg: 1, scope: !7114, file: !294, line: 450, type: !300)
!7117 = !DILocation(line: 450, column: 40, scope: !7114)
!7118 = !DILocation(line: 452, column: 9, scope: !7114)
!7119 = !DILocation(line: 452, column: 31, scope: !7114)
!7120 = !DILocation(line: 452, column: 29, scope: !7114)
!7121 = !DILocation(line: 452, column: 2, scope: !7114)
!7122 = distinct !DISubprogram(name: "pud_flags_mask", scope: !294, file: !294, line: 445, type: !7107, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7123)
!7123 = !{!7124}
!7124 = !DILocalVariable(name: "pud", arg: 1, scope: !7122, file: !294, line: 445, type: !300)
!7125 = !DILocation(line: 445, column: 45, scope: !7122)
!7126 = !DILocation(line: 447, column: 10, scope: !7122)
!7127 = !DILocation(line: 447, column: 9, scope: !7122)
!7128 = !DILocation(line: 447, column: 2, scope: !7122)
!7129 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !294, file: !294, line: 437, type: !7107, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7130)
!7130 = !{!7131}
!7131 = !DILocalVariable(name: "pud", arg: 1, scope: !7129, file: !294, line: 437, type: !300)
!7132 = !DILocation(line: 437, column: 43, scope: !7129)
!7133 = !DILocation(line: 439, column: 6, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7129, file: !294, line: 439, column: 6)
!7135 = !DILocation(line: 439, column: 26, scope: !7134)
!7136 = !DILocation(line: 439, column: 6, scope: !7129)
!7137 = !DILocation(line: 440, column: 3, scope: !7134)
!7138 = !DILocation(line: 442, column: 3, scope: !7134)
!7139 = !DILocation(line: 443, column: 1, scope: !7129)
!7140 = distinct !DISubprogram(name: "pmd_offset", scope: !6337, file: !6337, line: 121, type: !7141, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7143)
!7141 = !DISubroutineType(types: !7142)
!7142 = !{!305, !299, !40}
!7143 = !{!7144, !7145}
!7144 = !DILocalVariable(name: "pud", arg: 1, scope: !7140, file: !6337, line: 121, type: !299)
!7145 = !DILocalVariable(name: "address", arg: 2, scope: !7140, file: !6337, line: 121, type: !40)
!7146 = !DILocation(line: 121, column: 40, scope: !7140)
!7147 = !DILocation(line: 121, column: 59, scope: !7140)
!7148 = !DILocation(line: 123, column: 22, scope: !7140)
!7149 = !DILocation(line: 123, column: 9, scope: !7140)
!7150 = !DILocation(line: 123, column: 39, scope: !7140)
!7151 = !DILocation(line: 123, column: 29, scope: !7140)
!7152 = !DILocation(line: 123, column: 27, scope: !7140)
!7153 = !DILocation(line: 123, column: 2, scope: !7140)
!7154 = distinct !DISubprogram(name: "pmd_none", scope: !6482, file: !6482, line: 1004, type: !7155, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7157)
!7155 = !DISubroutineType(types: !7156)
!7156 = !{!23, !306}
!7157 = !{!7158, !7159}
!7158 = !DILocalVariable(name: "pmd", arg: 1, scope: !7154, file: !6482, line: 1004, type: !306)
!7159 = !DILocalVariable(name: "val", scope: !7154, file: !6482, line: 1008, type: !40)
!7160 = !DILocation(line: 1004, column: 34, scope: !7154)
!7161 = !DILocation(line: 1008, column: 2, scope: !7154)
!7162 = !DILocation(line: 1008, column: 16, scope: !7154)
!7163 = !DILocation(line: 1008, column: 22, scope: !7154)
!7164 = !DILocation(line: 1009, column: 10, scope: !7154)
!7165 = !DILocation(line: 1009, column: 14, scope: !7154)
!7166 = !DILocation(line: 1009, column: 41, scope: !7154)
!7167 = !DILocation(line: 1010, column: 1, scope: !7154)
!7168 = !DILocation(line: 1009, column: 2, scope: !7154)
!7169 = distinct !DISubprogram(name: "pmd_large", scope: !6482, file: !6482, line: 264, type: !7155, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7170)
!7170 = !{!7171}
!7171 = !DILocalVariable(name: "pte", arg: 1, scope: !7169, file: !6482, line: 264, type: !306)
!7172 = !DILocation(line: 264, column: 35, scope: !7169)
!7173 = !DILocation(line: 266, column: 9, scope: !7169)
!7174 = !DILocation(line: 266, column: 24, scope: !7169)
!7175 = !DILocation(line: 266, column: 2, scope: !7169)
!7176 = distinct !DISubprogram(name: "pmd_present", scope: !6482, file: !6482, line: 975, type: !7155, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7177)
!7177 = !{!7178}
!7178 = !DILocalVariable(name: "pmd", arg: 1, scope: !7176, file: !6482, line: 975, type: !306)
!7179 = !DILocation(line: 975, column: 37, scope: !7176)
!7180 = !DILocation(line: 983, column: 9, scope: !7176)
!7181 = !DILocation(line: 983, column: 24, scope: !7176)
!7182 = !DILocation(line: 983, column: 2, scope: !7176)
!7183 = distinct !DISubprogram(name: "walk_pte_range", scope: !1, file: !1, line: 41, type: !5235, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7184)
!7184 = !{!7185, !7186, !7187, !7188, !7189, !7190, !7191}
!7185 = !DILocalVariable(name: "pmd", arg: 1, scope: !7183, file: !1, line: 41, type: !305)
!7186 = !DILocalVariable(name: "addr", arg: 2, scope: !7183, file: !1, line: 41, type: !40)
!7187 = !DILocalVariable(name: "end", arg: 3, scope: !7183, file: !1, line: 41, type: !40)
!7188 = !DILocalVariable(name: "walk", arg: 4, scope: !7183, file: !1, line: 42, type: !5215)
!7189 = !DILocalVariable(name: "pte", scope: !7183, file: !1, line: 44, type: !1811)
!7190 = !DILocalVariable(name: "err", scope: !7183, file: !1, line: 45, type: !23)
!7191 = !DILocalVariable(name: "ptl", scope: !7183, file: !1, line: 46, type: !1813)
!7192 = !DILocation(line: 41, column: 34, scope: !7183)
!7193 = !DILocation(line: 41, column: 53, scope: !7183)
!7194 = !DILocation(line: 41, column: 73, scope: !7183)
!7195 = !DILocation(line: 42, column: 22, scope: !7183)
!7196 = !DILocation(line: 44, column: 2, scope: !7183)
!7197 = !DILocation(line: 44, column: 9, scope: !7183)
!7198 = !DILocation(line: 45, column: 2, scope: !7183)
!7199 = !DILocation(line: 45, column: 6, scope: !7183)
!7200 = !DILocation(line: 46, column: 2, scope: !7183)
!7201 = !DILocation(line: 46, column: 14, scope: !7183)
!7202 = !DILocation(line: 48, column: 6, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7183, file: !1, line: 48, column: 6)
!7204 = !DILocation(line: 48, column: 12, scope: !7203)
!7205 = !DILocation(line: 48, column: 6, scope: !7183)
!7206 = !DILocation(line: 55, column: 7, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7208, file: !1, line: 55, column: 7)
!7208 = distinct !DILexicalBlock(scope: !7203, file: !1, line: 48, column: 20)
!7209 = !DILocation(line: 55, column: 13, scope: !7207)
!7210 = !DILocation(line: 55, column: 16, scope: !7207)
!7211 = !DILocation(line: 55, column: 28, scope: !7207)
!7212 = !DILocation(line: 55, column: 31, scope: !7207)
!7213 = !DILocation(line: 55, column: 39, scope: !7207)
!7214 = !DILocation(line: 55, column: 36, scope: !7207)
!7215 = !DILocation(line: 55, column: 7, scope: !7208)
!7216 = !DILocation(line: 56, column: 28, scope: !7207)
!7217 = !DILocation(line: 56, column: 33, scope: !7207)
!7218 = !DILocation(line: 56, column: 10, scope: !7207)
!7219 = !DILocation(line: 56, column: 8, scope: !7207)
!7220 = !DILocation(line: 56, column: 4, scope: !7207)
!7221 = !DILocation(line: 58, column: 25, scope: !7207)
!7222 = !DILocation(line: 58, column: 30, scope: !7207)
!7223 = !DILocation(line: 58, column: 10, scope: !7207)
!7224 = !DILocation(line: 58, column: 8, scope: !7207)
!7225 = !DILocation(line: 59, column: 7, scope: !7226)
!7226 = distinct !DILexicalBlock(scope: !7208, file: !1, line: 59, column: 7)
!7227 = !DILocation(line: 59, column: 7, scope: !7208)
!7228 = !DILocation(line: 60, column: 31, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7226, file: !1, line: 59, column: 12)
!7230 = !DILocation(line: 60, column: 36, scope: !7229)
!7231 = !DILocation(line: 60, column: 42, scope: !7229)
!7232 = !DILocation(line: 60, column: 47, scope: !7229)
!7233 = !DILocation(line: 60, column: 10, scope: !7229)
!7234 = !DILocation(line: 60, column: 8, scope: !7229)
!7235 = !DILocation(line: 61, column: 8, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7229, file: !1, line: 61, column: 8)
!7237 = !DILocation(line: 61, column: 14, scope: !7236)
!7238 = !DILocation(line: 61, column: 17, scope: !7236)
!7239 = !DILocation(line: 61, column: 29, scope: !7236)
!7240 = !DILocation(line: 61, column: 32, scope: !7236)
!7241 = !DILocation(line: 61, column: 39, scope: !7236)
!7242 = !DILocation(line: 61, column: 37, scope: !7236)
!7243 = !DILocation(line: 61, column: 8, scope: !7229)
!7244 = !DILocation(line: 62, column: 15, scope: !7236)
!7245 = !DILocation(line: 62, column: 5, scope: !7236)
!7246 = !DILocation(line: 63, column: 3, scope: !7229)
!7247 = !DILocation(line: 64, column: 2, scope: !7208)
!7248 = !DILocation(line: 65, column: 29, scope: !7249)
!7249 = distinct !DILexicalBlock(scope: !7203, file: !1, line: 64, column: 9)
!7250 = !DILocation(line: 65, column: 35, scope: !7249)
!7251 = !DILocation(line: 65, column: 39, scope: !7249)
!7252 = !DILocation(line: 65, column: 44, scope: !7249)
!7253 = !DILocation(line: 65, column: 9, scope: !7249)
!7254 = !DILocation(line: 65, column: 7, scope: !7249)
!7255 = !DILocation(line: 66, column: 7, scope: !7256)
!7256 = distinct !DILexicalBlock(scope: !7249, file: !1, line: 66, column: 7)
!7257 = !DILocation(line: 66, column: 7, scope: !7249)
!7258 = !DILocation(line: 67, column: 31, scope: !7259)
!7259 = distinct !DILexicalBlock(scope: !7256, file: !1, line: 66, column: 12)
!7260 = !DILocation(line: 67, column: 36, scope: !7259)
!7261 = !DILocation(line: 67, column: 42, scope: !7259)
!7262 = !DILocation(line: 67, column: 47, scope: !7259)
!7263 = !DILocation(line: 67, column: 10, scope: !7259)
!7264 = !DILocation(line: 67, column: 8, scope: !7259)
!7265 = !DILocation(line: 68, column: 4, scope: !7259)
!7266 = !DILocation(line: 68, column: 4, scope: !7267)
!7267 = distinct !DILexicalBlock(scope: !7259, file: !1, line: 68, column: 4)
!7268 = !DILocation(line: 69, column: 3, scope: !7259)
!7269 = !DILocation(line: 71, column: 7, scope: !7270)
!7270 = distinct !DILexicalBlock(scope: !7183, file: !1, line: 71, column: 6)
!7271 = !DILocation(line: 71, column: 6, scope: !7183)
!7272 = !DILocation(line: 72, column: 3, scope: !7270)
!7273 = !DILocation(line: 72, column: 9, scope: !7270)
!7274 = !DILocation(line: 72, column: 16, scope: !7270)
!7275 = !DILocation(line: 73, column: 9, scope: !7183)
!7276 = !DILocation(line: 74, column: 1, scope: !7183)
!7277 = !DILocation(line: 73, column: 2, scope: !7183)
!7278 = distinct !DISubprogram(name: "pud_pgtable", scope: !6482, file: !6482, line: 1061, type: !7279, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7281)
!7279 = !DISubroutineType(types: !7280)
!7280 = !{!305, !300}
!7281 = !{!7282}
!7282 = !DILocalVariable(name: "pud", arg: 1, scope: !7278, file: !6482, line: 1061, type: !300)
!7283 = !DILocation(line: 1061, column: 40, scope: !7278)
!7284 = !DILocation(line: 1063, column: 18, scope: !7278)
!7285 = !DILocation(line: 1063, column: 2, scope: !7278)
!7286 = distinct !DISubprogram(name: "pmd_index", scope: !6337, file: !6337, line: 71, type: !6838, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7287)
!7287 = !{!7288}
!7288 = !DILocalVariable(name: "address", arg: 1, scope: !7286, file: !6337, line: 71, type: !40)
!7289 = !DILocation(line: 71, column: 53, scope: !7286)
!7290 = !DILocation(line: 73, column: 10, scope: !7286)
!7291 = !DILocation(line: 73, column: 18, scope: !7286)
!7292 = !DILocation(line: 73, column: 32, scope: !7286)
!7293 = !DILocation(line: 73, column: 2, scope: !7286)
!7294 = distinct !DISubprogram(name: "native_pmd_val", scope: !294, file: !294, line: 403, type: !7295, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7297)
!7295 = !DISubroutineType(types: !7296)
!7296 = !{!310, !306}
!7297 = !{!7298}
!7298 = !DILocalVariable(name: "pmd", arg: 1, scope: !7294, file: !294, line: 403, type: !306)
!7299 = !DILocation(line: 403, column: 45, scope: !7294)
!7300 = !DILocation(line: 405, column: 13, scope: !7294)
!7301 = !DILocation(line: 405, column: 2, scope: !7294)
!7302 = distinct !DISubprogram(name: "pmd_flags", scope: !294, file: !294, line: 468, type: !7295, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7303)
!7303 = !{!7304}
!7304 = !DILocalVariable(name: "pmd", arg: 1, scope: !7302, file: !294, line: 468, type: !306)
!7305 = !DILocation(line: 468, column: 40, scope: !7302)
!7306 = !DILocation(line: 470, column: 9, scope: !7302)
!7307 = !DILocation(line: 470, column: 31, scope: !7302)
!7308 = !DILocation(line: 470, column: 29, scope: !7302)
!7309 = !DILocation(line: 470, column: 2, scope: !7302)
!7310 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !294, file: !294, line: 463, type: !7295, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7311)
!7311 = !{!7312}
!7312 = !DILocalVariable(name: "pmd", arg: 1, scope: !7310, file: !294, line: 463, type: !306)
!7313 = !DILocation(line: 463, column: 45, scope: !7310)
!7314 = !DILocation(line: 465, column: 10, scope: !7310)
!7315 = !DILocation(line: 465, column: 9, scope: !7310)
!7316 = !DILocation(line: 465, column: 2, scope: !7310)
!7317 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !294, file: !294, line: 455, type: !7295, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7318)
!7318 = !{!7319}
!7319 = !DILocalVariable(name: "pmd", arg: 1, scope: !7317, file: !294, line: 455, type: !306)
!7320 = !DILocation(line: 455, column: 43, scope: !7317)
!7321 = !DILocation(line: 457, column: 6, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7317, file: !294, line: 457, column: 6)
!7323 = !DILocation(line: 457, column: 26, scope: !7322)
!7324 = !DILocation(line: 457, column: 6, scope: !7317)
!7325 = !DILocation(line: 458, column: 3, scope: !7322)
!7326 = !DILocation(line: 460, column: 3, scope: !7322)
!7327 = !DILocation(line: 461, column: 1, scope: !7317)
!7328 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !7329, file: !7329, line: 116, type: !7330, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7332)
!7329 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!7330 = !DISubroutineType(types: !7331)
!7331 = !{!23, !311, !23}
!7332 = !{!7333, !7334}
!7333 = !DILocalVariable(name: "ti", arg: 1, scope: !7328, file: !7329, line: 116, type: !311)
!7334 = !DILocalVariable(name: "flag", arg: 2, scope: !7328, file: !7329, line: 116, type: !23)
!7335 = !DILocation(line: 116, column: 59, scope: !7328)
!7336 = !DILocation(line: 116, column: 67, scope: !7328)
!7337 = !DILocation(line: 118, column: 9, scope: !7328)
!7338 = !DILocation(line: 118, column: 2, scope: !7328)
!7339 = distinct !DISubprogram(name: "get_current", scope: !7340, file: !7340, line: 39, type: !7341, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7343)
!7340 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7341 = !DISubroutineType(types: !7342)
!7342 = !{!325}
!7343 = !{!7344, !7346, !7348}
!7344 = !DILocalVariable(name: "pscr_ret__", scope: !7345, file: !7340, line: 41, type: !325)
!7345 = distinct !DILexicalBlock(scope: !7339, file: !7340, line: 41, column: 9)
!7346 = !DILocalVariable(name: "__vpp_verify", scope: !7347, file: !7340, line: 41, type: !2485)
!7347 = distinct !DILexicalBlock(scope: !7345, file: !7340, line: 41, column: 9)
!7348 = !DILocalVariable(name: "pfo_val__", scope: !7349, file: !7340, line: 41, type: !289)
!7349 = distinct !DILexicalBlock(scope: !7345, file: !7340, line: 41, column: 9)
!7350 = !DILocation(line: 41, column: 9, scope: !7345)
!7351 = !DILocation(line: 41, column: 9, scope: !7347)
!7352 = !DILocation(line: 41, column: 9, scope: !7349)
!7353 = !{i64 2148535285}
!7354 = !DILocation(line: 41, column: 9, scope: !7339)
!7355 = !DILocation(line: 41, column: 2, scope: !7339)
!7356 = distinct !DISubprogram(name: "task_size_max", scope: !7357, file: !7357, line: 83, type: !7358, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7360)
!7357 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!7358 = !DISubroutineType(types: !7359)
!7359 = !{!40}
!7360 = !{!7361}
!7361 = !DILocalVariable(name: "ret", scope: !7356, file: !7357, line: 85, type: !40)
!7362 = !DILocation(line: 85, column: 2, scope: !7356)
!7363 = !DILocation(line: 85, column: 16, scope: !7356)
!7364 = !DILocation(line: 87, column: 2, scope: !7356)
!7365 = !{i64 2148605050, i64 2148605078, i64 2148605084, i64 2148605100, i64 2148605116, i64 2148605143, i64 2148605473, i64 2148604788, i64 2148605479, i64 2148605527, i64 2148605591, i64 2148605655, i64 2148605712, i64 2148604869, i64 2148604894, i64 2148605919, i64 2148606051, i64 2148605980, i64 2148606065, i64 2148604986}
!7366 = !DILocation(line: 93, column: 9, scope: !7356)
!7367 = !DILocation(line: 94, column: 1, scope: !7356)
!7368 = !DILocation(line: 93, column: 2, scope: !7356)
!7369 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !6337, file: !6337, line: 92, type: !7370, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7372)
!7370 = !DISubroutineType(types: !7371)
!7371 = !{!1811, !305, !40}
!7372 = !{!7373, !7374}
!7373 = !DILocalVariable(name: "pmd", arg: 1, scope: !7369, file: !6337, line: 92, type: !305)
!7374 = !DILocalVariable(name: "address", arg: 2, scope: !7369, file: !6337, line: 92, type: !40)
!7375 = !DILocation(line: 92, column: 47, scope: !7369)
!7376 = !DILocation(line: 92, column: 66, scope: !7369)
!7377 = !DILocation(line: 94, column: 34, scope: !7369)
!7378 = !DILocation(line: 94, column: 18, scope: !7369)
!7379 = !DILocation(line: 94, column: 9, scope: !7369)
!7380 = !DILocation(line: 94, column: 51, scope: !7369)
!7381 = !DILocation(line: 94, column: 41, scope: !7369)
!7382 = !DILocation(line: 94, column: 39, scope: !7369)
!7383 = !DILocation(line: 94, column: 2, scope: !7369)
!7384 = distinct !DISubprogram(name: "pte_offset_map", scope: !1661, file: !1661, line: 2933, type: !7370, scopeLine: 2934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7385)
!7385 = !{!7386, !7387}
!7386 = !DILocalVariable(name: "pmd", arg: 1, scope: !7384, file: !1661, line: 2933, type: !305)
!7387 = !DILocalVariable(name: "addr", arg: 2, scope: !7384, file: !1661, line: 2933, type: !40)
!7388 = !DILocation(line: 2933, column: 44, scope: !7384)
!7389 = !DILocation(line: 2933, column: 63, scope: !7384)
!7390 = !DILocation(line: 2935, column: 26, scope: !7384)
!7391 = !DILocation(line: 2935, column: 31, scope: !7384)
!7392 = !DILocation(line: 2935, column: 9, scope: !7384)
!7393 = !DILocation(line: 2935, column: 2, scope: !7384)
!7394 = distinct !DISubprogram(name: "walk_pte_range_inner", scope: !1, file: !1, line: 23, type: !5239, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7395)
!7395 = !{!7396, !7397, !7398, !7399, !7400, !7401}
!7396 = !DILocalVariable(name: "pte", arg: 1, scope: !7394, file: !1, line: 23, type: !1811)
!7397 = !DILocalVariable(name: "addr", arg: 2, scope: !7394, file: !1, line: 23, type: !40)
!7398 = !DILocalVariable(name: "end", arg: 3, scope: !7394, file: !1, line: 24, type: !40)
!7399 = !DILocalVariable(name: "walk", arg: 4, scope: !7394, file: !1, line: 24, type: !5215)
!7400 = !DILocalVariable(name: "ops", scope: !7394, file: !1, line: 26, type: !5207)
!7401 = !DILocalVariable(name: "err", scope: !7394, file: !1, line: 27, type: !23)
!7402 = !DILocation(line: 23, column: 40, scope: !7394)
!7403 = !DILocation(line: 23, column: 59, scope: !7394)
!7404 = !DILocation(line: 24, column: 19, scope: !7394)
!7405 = !DILocation(line: 24, column: 40, scope: !7394)
!7406 = !DILocation(line: 26, column: 2, scope: !7394)
!7407 = !DILocation(line: 26, column: 28, scope: !7394)
!7408 = !DILocation(line: 26, column: 34, scope: !7394)
!7409 = !DILocation(line: 26, column: 40, scope: !7394)
!7410 = !DILocation(line: 27, column: 2, scope: !7394)
!7411 = !DILocation(line: 27, column: 6, scope: !7394)
!7412 = !DILocation(line: 29, column: 2, scope: !7394)
!7413 = !DILocation(line: 30, column: 9, scope: !7414)
!7414 = distinct !DILexicalBlock(scope: !7415, file: !1, line: 29, column: 11)
!7415 = distinct !DILexicalBlock(scope: !7416, file: !1, line: 29, column: 2)
!7416 = distinct !DILexicalBlock(scope: !7394, file: !1, line: 29, column: 2)
!7417 = !DILocation(line: 30, column: 14, scope: !7414)
!7418 = !DILocation(line: 30, column: 24, scope: !7414)
!7419 = !DILocation(line: 30, column: 29, scope: !7414)
!7420 = !DILocation(line: 30, column: 35, scope: !7414)
!7421 = !DILocation(line: 30, column: 40, scope: !7414)
!7422 = !DILocation(line: 30, column: 53, scope: !7414)
!7423 = !DILocation(line: 30, column: 7, scope: !7414)
!7424 = !DILocation(line: 31, column: 7, scope: !7425)
!7425 = distinct !DILexicalBlock(scope: !7414, file: !1, line: 31, column: 7)
!7426 = !DILocation(line: 31, column: 7, scope: !7414)
!7427 = !DILocation(line: 32, column: 10, scope: !7425)
!7428 = !DILocation(line: 33, column: 7, scope: !7429)
!7429 = distinct !DILexicalBlock(scope: !7414, file: !1, line: 33, column: 7)
!7430 = !DILocation(line: 33, column: 15, scope: !7429)
!7431 = !DILocation(line: 33, column: 19, scope: !7429)
!7432 = !DILocation(line: 33, column: 12, scope: !7429)
!7433 = !DILocation(line: 33, column: 7, scope: !7414)
!7434 = !DILocation(line: 34, column: 4, scope: !7429)
!7435 = !DILocation(line: 35, column: 8, scope: !7414)
!7436 = !DILocation(line: 36, column: 6, scope: !7414)
!7437 = !DILocation(line: 29, column: 2, scope: !7415)
!7438 = distinct !{!7438, !7439, !7440, !5404}
!7439 = !DILocation(line: 29, column: 2, scope: !7416)
!7440 = !DILocation(line: 37, column: 2, scope: !7416)
!7441 = !DILocation(line: 38, column: 9, scope: !7394)
!7442 = !DILocation(line: 39, column: 1, scope: !7394)
!7443 = !DILocation(line: 38, column: 2, scope: !7394)
!7444 = distinct !DISubprogram(name: "pte_unmap", scope: !6337, file: !6337, line: 111, type: !7445, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7447)
!7445 = !DISubroutineType(types: !7446)
!7446 = !{null, !1811}
!7447 = !{!7448}
!7448 = !DILocalVariable(name: "pte", arg: 1, scope: !7444, file: !6337, line: 111, type: !1811)
!7449 = !DILocation(line: 111, column: 37, scope: !7444)
!7450 = !DILocation(line: 113, column: 2, scope: !7444)
!7451 = !DILocation(line: 114, column: 1, scope: !7444)
!7452 = distinct !DISubprogram(name: "pte_offset_map_lock", scope: !1661, file: !1661, line: 2940, type: !7453, scopeLine: 2942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7456)
!7453 = !DISubroutineType(types: !7454)
!7454 = !{!1811, !631, !305, !40, !7455}
!7455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!7456 = !{!7457, !7458, !7459, !7460, !7461}
!7457 = !DILocalVariable(name: "mm", arg: 1, scope: !7452, file: !1661, line: 2940, type: !631)
!7458 = !DILocalVariable(name: "pmd", arg: 2, scope: !7452, file: !1661, line: 2940, type: !305)
!7459 = !DILocalVariable(name: "addr", arg: 3, scope: !7452, file: !1661, line: 2941, type: !40)
!7460 = !DILocalVariable(name: "ptlp", arg: 4, scope: !7452, file: !1661, line: 2941, type: !7455)
!7461 = !DILocalVariable(name: "pte", scope: !7452, file: !1661, line: 2943, type: !1811)
!7462 = !DILocation(line: 2940, column: 60, scope: !7452)
!7463 = !DILocation(line: 2940, column: 71, scope: !7452)
!7464 = !DILocation(line: 2941, column: 18, scope: !7452)
!7465 = !DILocation(line: 2941, column: 37, scope: !7452)
!7466 = !DILocation(line: 2943, column: 2, scope: !7452)
!7467 = !DILocation(line: 2943, column: 9, scope: !7452)
!7468 = !DILocation(line: 2945, column: 2, scope: !7452)
!7469 = !DILocation(line: 2946, column: 9, scope: !7452)
!7470 = !DILocation(line: 2947, column: 1, scope: !7452)
!7471 = !DILocation(line: 2946, column: 2, scope: !7452)
!7472 = distinct !DISubprogram(name: "spin_unlock", scope: !7473, file: !7473, line: 389, type: !7474, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7476)
!7473 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7474 = !DISubroutineType(types: !7475)
!7475 = !{null, !1813}
!7476 = !{!7477}
!7477 = !DILocalVariable(name: "lock", arg: 1, scope: !7472, file: !7473, line: 389, type: !1813)
!7478 = !DILocation(line: 389, column: 53, scope: !7472)
!7479 = !DILocation(line: 391, column: 2, scope: !7472)
!7480 = !DILocation(line: 392, column: 1, scope: !7472)
!7481 = distinct !DISubprogram(name: "const_test_bit", scope: !7482, file: !7482, line: 166, type: !6521, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7483)
!7482 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7483 = !{!7484, !7485, !7486, !7487, !7488}
!7484 = !DILocalVariable(name: "nr", arg: 1, scope: !7481, file: !7482, line: 166, type: !40)
!7485 = !DILocalVariable(name: "addr", arg: 2, scope: !7481, file: !7482, line: 166, type: !6523)
!7486 = !DILocalVariable(name: "p", scope: !7481, file: !7482, line: 168, type: !322)
!7487 = !DILocalVariable(name: "mask", scope: !7481, file: !7482, line: 169, type: !40)
!7488 = !DILocalVariable(name: "val", scope: !7481, file: !7482, line: 170, type: !40)
!7489 = !DILocation(line: 166, column: 30, scope: !7481)
!7490 = !DILocation(line: 166, column: 64, scope: !7481)
!7491 = !DILocation(line: 168, column: 2, scope: !7481)
!7492 = !DILocation(line: 168, column: 23, scope: !7481)
!7493 = !DILocation(line: 168, column: 50, scope: !7481)
!7494 = !DILocation(line: 168, column: 57, scope: !7481)
!7495 = !DILocation(line: 168, column: 55, scope: !7481)
!7496 = !DILocation(line: 169, column: 2, scope: !7481)
!7497 = !DILocation(line: 169, column: 16, scope: !7481)
!7498 = !DILocation(line: 169, column: 23, scope: !7481)
!7499 = !DILocation(line: 170, column: 2, scope: !7481)
!7500 = !DILocation(line: 170, column: 16, scope: !7481)
!7501 = !DILocation(line: 170, column: 23, scope: !7481)
!7502 = !DILocation(line: 170, column: 22, scope: !7481)
!7503 = !DILocation(line: 172, column: 12, scope: !7481)
!7504 = !DILocation(line: 172, column: 18, scope: !7481)
!7505 = !DILocation(line: 172, column: 16, scope: !7481)
!7506 = !DILocation(line: 172, column: 10, scope: !7481)
!7507 = !DILocation(line: 172, column: 9, scope: !7481)
!7508 = !DILocation(line: 173, column: 1, scope: !7481)
!7509 = !DILocation(line: 172, column: 2, scope: !7481)
!7510 = distinct !DISubprogram(name: "_test_bit", scope: !7511, file: !7511, line: 139, type: !6521, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7512)
!7511 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7512 = !{!7513, !7514}
!7513 = !DILocalVariable(name: "nr", arg: 1, scope: !7510, file: !7511, line: 139, type: !40)
!7514 = !DILocalVariable(name: "addr", arg: 2, scope: !7510, file: !7511, line: 139, type: !6523)
!7515 = !DILocation(line: 139, column: 25, scope: !7510)
!7516 = !DILocation(line: 139, column: 59, scope: !7510)
!7517 = !DILocation(line: 141, column: 25, scope: !7510)
!7518 = !DILocation(line: 141, column: 32, scope: !7510)
!7519 = !DILocation(line: 141, column: 30, scope: !7510)
!7520 = !DILocation(line: 141, column: 2, scope: !7510)
!7521 = !DILocation(line: 142, column: 23, scope: !7510)
!7522 = !DILocation(line: 142, column: 27, scope: !7510)
!7523 = !DILocation(line: 142, column: 9, scope: !7510)
!7524 = !DILocation(line: 142, column: 2, scope: !7510)
!7525 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7526, file: !7526, line: 66, type: !7527, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7532)
!7526 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7527 = !DISubroutineType(types: !7528)
!7528 = !{null, !7529, !36}
!7529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7530, size: 64)
!7530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7531)
!7531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7532 = !{!7533, !7534}
!7533 = !DILocalVariable(name: "v", arg: 1, scope: !7525, file: !7526, line: 66, type: !7529)
!7534 = !DILocalVariable(name: "size", arg: 2, scope: !7525, file: !7526, line: 66, type: !36)
!7535 = !DILocation(line: 66, column: 73, scope: !7525)
!7536 = !DILocation(line: 66, column: 83, scope: !7525)
!7537 = !DILocation(line: 68, column: 19, scope: !7525)
!7538 = !DILocation(line: 68, column: 22, scope: !7525)
!7539 = !DILocation(line: 68, column: 2, scope: !7525)
!7540 = !DILocation(line: 69, column: 2, scope: !7525)
!7541 = !DILocation(line: 70, column: 1, scope: !7525)
!7542 = distinct !DISubprogram(name: "kasan_check_read", scope: !7543, file: !7543, line: 40, type: !7544, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7546)
!7543 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7544 = !DISubroutineType(types: !7545)
!7545 = !{!879, !7529, !5}
!7546 = !{!7547, !7548}
!7547 = !DILocalVariable(name: "p", arg: 1, scope: !7542, file: !7543, line: 40, type: !7529)
!7548 = !DILocalVariable(name: "size", arg: 2, scope: !7542, file: !7543, line: 40, type: !5)
!7549 = !DILocation(line: 40, column: 58, scope: !7542)
!7550 = !DILocation(line: 40, column: 74, scope: !7542)
!7551 = !DILocation(line: 42, column: 2, scope: !7542)
!7552 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7553, file: !7553, line: 229, type: !7554, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7556)
!7553 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7554 = !DISubroutineType(types: !7555)
!7555 = !{null, !7529, !36, !23}
!7556 = !{!7557, !7558, !7559}
!7557 = !DILocalVariable(name: "ptr", arg: 1, scope: !7552, file: !7553, line: 229, type: !7529)
!7558 = !DILocalVariable(name: "size", arg: 2, scope: !7552, file: !7553, line: 229, type: !36)
!7559 = !DILocalVariable(name: "type", arg: 3, scope: !7552, file: !7553, line: 230, type: !23)
!7560 = !DILocation(line: 229, column: 60, scope: !7552)
!7561 = !DILocation(line: 229, column: 72, scope: !7552)
!7562 = !DILocation(line: 230, column: 15, scope: !7552)
!7563 = !DILocation(line: 230, column: 23, scope: !7552)
!7564 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !6482, file: !6482, line: 1012, type: !7565, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7567)
!7565 = !DISubroutineType(types: !7566)
!7566 = !{!40, !306}
!7567 = !{!7568}
!7568 = !DILocalVariable(name: "pmd", arg: 1, scope: !7564, file: !6482, line: 1012, type: !306)
!7569 = !DILocation(line: 1012, column: 50, scope: !7564)
!7570 = !DILocation(line: 1014, column: 24, scope: !7564)
!7571 = !DILocation(line: 1014, column: 9, scope: !7564)
!7572 = !DILocation(line: 1014, column: 2, scope: !7564)
!7573 = distinct !DISubprogram(name: "pte_index", scope: !6337, file: !6337, line: 65, type: !6838, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !7574)
!7574 = !{!7575}
!7575 = !DILocalVariable(name: "address", arg: 1, scope: !7573, file: !6337, line: 65, type: !40)
!7576 = !DILocation(line: 65, column: 53, scope: !7573)
!7577 = !DILocation(line: 67, column: 10, scope: !7573)
!7578 = !DILocation(line: 67, column: 18, scope: !7573)
!7579 = !DILocation(line: 67, column: 33, scope: !7573)
!7580 = !DILocation(line: 67, column: 2, scope: !7573)
!7581 = !DISubprogram(name: "__pte_offset_map", scope: !1661, file: !1661, line: 2932, type: !7582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7582 = !DISubroutineType(types: !7583)
!7583 = !{!1811, !305, !40, !305}
!7584 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !7585, file: !7585, line: 813, type: !3055, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!7585 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7586 = !DILocation(line: 815, column: 2, scope: !7584)
!7587 = !DILocation(line: 815, column: 2, scope: !7588)
!7588 = distinct !DILexicalBlock(scope: !7584, file: !7585, line: 815, column: 2)
!7589 = !DILocation(line: 818, column: 2, scope: !7584)
!7590 = !DILocation(line: 819, column: 2, scope: !7584)
!7591 = !DILocation(line: 819, column: 2, scope: !7592)
!7592 = distinct !DILexicalBlock(scope: !7584, file: !7585, line: 819, column: 2)
!7593 = !DILocation(line: 820, column: 1, scope: !7584)
!7594 = !DISubprogram(name: "__rcu_read_unlock", scope: !7585, file: !7585, line: 75, type: !3055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7595 = !DISubprogram(name: "__pte_offset_map_lock", scope: !1661, file: !1661, line: 2938, type: !7453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7596 = !DISubprogram(name: "_raw_spin_unlock", scope: !7597, file: !7597, line: 39, type: !7598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7597 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7598 = !DISubroutineType(types: !7599)
!7599 = !{null, !7600}
!7600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
