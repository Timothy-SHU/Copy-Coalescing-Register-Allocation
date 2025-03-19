; ModuleID = 'mm/mincore.c'
source_filename = "mm/mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.25 }
%struct.atomic_t = type { i32 }
%union.anon.25 = type { i64 }
%struct.pcpu_hot = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27, [16 x i8] }
%struct.anon.27 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mnt_idmap = type opaque
%struct.static_call_key = type { ptr, %union.anon.55 }
%union.anon.55 = type { i64 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
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
%struct.restart_block = type { i64, ptr, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.11, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.14 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i64, i64 }
%union.anon.14 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.mm_struct = type { %struct.anon.22, [0 x i64] }
%struct.anon.22 = type { %struct.anon.23, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.23 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.24, i32, ptr }
%union.anon.24 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.vm_area_struct = type { %union.anon.28, ptr, %struct.pgprot, %union.anon.30, i32, ptr, i8, %struct.anon.31, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.30 = type { i64 }
%struct.anon.31 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.32, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.32 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.33, %struct.qspinlock }
%union.anon.33 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.pte_t = type { i64 }
%struct.swp_entry_t = type { i64 }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.folio = type { %union.anon.35, %union.anon.50, %union.anon.52 }
%union.anon.35 = type { %struct.page }
%struct.page = type { i64, %union.anon.40, %union.anon.49, %struct.atomic_t, [8 x i8] }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { %union.anon.42, ptr, %union.anon.44, i64 }
%union.anon.42 = type { %struct.list_head }
%union.anon.44 = type { i64 }
%union.anon.49 = type { %struct.atomic_t }
%union.anon.50 = type { %struct.page }
%union.anon.52 = type { %struct.page }

@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@mincore_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @mincore_pte_range, ptr null, ptr @mincore_unmapped_range, ptr @mincore_hugetlb, ptr null, ptr null, ptr null, i32 0 }, align 8, !dbg !0
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@swapper_spaces = external dso_local global [0 x ptr], align 8
@.str = private unnamed_addr constant [13 x i8] c"mm/mincore.c\00", align 1, !dbg !6203
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched175 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !6208
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !6211
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched175], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_mincore(ptr noundef %regs) #0 align 16 !dbg !6284 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6290, metadata !DIExpression()), !dbg !6291
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6291
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6291
  %1 = load i64, ptr %di, align 8, !dbg !6291
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6291
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6291
  %3 = load i64, ptr %si, align 8, !dbg !6291
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6291
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6291
  %5 = load i64, ptr %dx, align 8, !dbg !6291
  %call = call i64 @__se_sys_mincore(i64 noundef %1, i64 noundef %3, i64 noundef %5) #13, !dbg !6291
  ret i64 %call, !dbg !6291
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_mincore(i64 noundef %start, i64 noundef %len, i64 noundef %vec) #0 align 16 !dbg !6292 {
entry:
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %vec.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6296, metadata !DIExpression()), !dbg !6300
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6297, metadata !DIExpression()), !dbg !6300
  store i64 %vec, ptr %vec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !6298, metadata !DIExpression()), !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6299, metadata !DIExpression()), !dbg !6300
  %0 = load i64, ptr %start.addr, align 8, !dbg !6300
  %1 = load i64, ptr %len.addr, align 8, !dbg !6300
  %2 = load i64, ptr %vec.addr, align 8, !dbg !6300
  %3 = inttoptr i64 %2 to ptr, !dbg !6300
  %call = call i64 @__do_sys_mincore(i64 noundef %0, i64 noundef %1, ptr noundef %3) #13, !dbg !6300
  store i64 %call, ptr %ret, align 8, !dbg !6300
  br label %do.body, !dbg !6300

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6301

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6301

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !6300
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6300
  ret i64 %4, !dbg !6300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_mincore(ptr noundef %regs) #0 align 16 !dbg !6303 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6305, metadata !DIExpression()), !dbg !6306
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6306
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6306
  %1 = load i64, ptr %bx, align 8, !dbg !6306
  %conv = trunc i64 %1 to i32, !dbg !6306
  %conv1 = zext i32 %conv to i64, !dbg !6306
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6306
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6306
  %3 = load i64, ptr %cx, align 8, !dbg !6306
  %conv2 = trunc i64 %3 to i32, !dbg !6306
  %conv3 = zext i32 %conv2 to i64, !dbg !6306
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6306
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6306
  %5 = load i64, ptr %dx, align 8, !dbg !6306
  %conv4 = trunc i64 %5 to i32, !dbg !6306
  %conv5 = zext i32 %conv4 to i64, !dbg !6306
  %call = call i64 @__se_sys_mincore(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #13, !dbg !6306
  ret i64 %call, !dbg !6306
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_mincore(i64 noundef %start, i64 noundef %len, ptr noundef %vec) #3 align 16 !dbg !6307 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %vec.addr = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %pages = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x356 = alloca i64, align 8
  %__UNIQUE_ID___y357 = alloca i64, align 8
  %tmp25 = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6311, metadata !DIExpression()), !dbg !6321
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6312, metadata !DIExpression()), !dbg !6321
  store ptr %vec, ptr %vec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !6313, metadata !DIExpression()), !dbg !6321
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #14, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6314, metadata !DIExpression()), !dbg !6323
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #14, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !6315, metadata !DIExpression()), !dbg !6325
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6326
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6316, metadata !DIExpression()), !dbg !6327
  %0 = load i64, ptr %start.addr, align 8, !dbg !6328
  store i64 %0, ptr %start.addr, align 8, !dbg !6329
  %1 = load i64, ptr %start.addr, align 8, !dbg !6330
  %and = and i64 %1, 4095, !dbg !6332
  %tobool = icmp ne i64 %and, 0, !dbg !6332
  br i1 %tobool, label %if.then, label %if.end, !dbg !6333

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6334

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %start.addr, align 8, !dbg !6335
  %3 = inttoptr i64 %2 to ptr, !dbg !6335
  %4 = load i64, ptr %len.addr, align 8, !dbg !6335
  %call = call zeroext i1 @__access_ok(ptr noundef %3, i64 noundef %4) #13, !dbg !6335
  %lnot = xor i1 %call, true, !dbg !6335
  %lnot2 = xor i1 %lnot, true, !dbg !6335
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6335
  %conv = sext i32 %lnot.ext to i64, !dbg !6335
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6335
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6335
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6337

if.then4:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !6338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6338

if.end5:                                          ; preds = %if.end
  %5 = load i64, ptr %len.addr, align 8, !dbg !6339
  %shr = lshr i64 %5, 12, !dbg !6340
  store i64 %shr, ptr %pages, align 8, !dbg !6341
  %6 = load i64, ptr %len.addr, align 8, !dbg !6342
  %and6 = and i64 %6, 4095, !dbg !6342
  %cmp = icmp ne i64 %and6, 0, !dbg !6343
  %conv7 = zext i1 %cmp to i32, !dbg !6343
  %conv8 = sext i32 %conv7 to i64, !dbg !6344
  %7 = load i64, ptr %pages, align 8, !dbg !6345
  %add = add i64 %7, %conv8, !dbg !6345
  store i64 %add, ptr %pages, align 8, !dbg !6345
  %8 = load ptr, ptr %vec.addr, align 8, !dbg !6346
  %9 = load i64, ptr %pages, align 8, !dbg !6346
  %call9 = call zeroext i1 @__access_ok(ptr noundef %8, i64 noundef %9) #13, !dbg !6346
  %lnot10 = xor i1 %call9, true, !dbg !6346
  %lnot12 = xor i1 %lnot10, true, !dbg !6346
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6346
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !6346
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 1), !dbg !6346
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !6346
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6348

if.then17:                                        ; preds = %if.end5
  store i64 -14, ptr %retval, align 8, !dbg !6349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6349

if.end18:                                         ; preds = %if.end5
  %call19 = call i64 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #13, !dbg !6350
  %10 = inttoptr i64 %call19 to ptr, !dbg !6351
  store ptr %10, ptr %tmp, align 8, !dbg !6352
  %11 = load ptr, ptr %tmp, align 8, !dbg !6353
  %tobool20 = icmp ne ptr %11, null, !dbg !6353
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !6355

if.then21:                                        ; preds = %if.end18
  store i64 -11, ptr %retval, align 8, !dbg !6356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6356

if.end22:                                         ; preds = %if.end18
  store i64 0, ptr %retval1, align 8, !dbg !6357
  br label %while.cond, !dbg !6358

while.cond:                                       ; preds = %if.end38, %if.end22
  %12 = load i64, ptr %pages, align 8, !dbg !6359
  %tobool23 = icmp ne i64 %12, 0, !dbg !6358
  br i1 %tobool23, label %while.body, label %while.end, !dbg !6358

while.body:                                       ; preds = %while.cond
  %call24 = call ptr @get_current() #13, !dbg !6360
  %mm = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 49, !dbg !6361
  %13 = load ptr, ptr %mm, align 64, !dbg !6361
  call void @mmap_read_lock(ptr noundef %13) #13, !dbg !6362
  %14 = load i64, ptr %start.addr, align 8, !dbg !6363
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x356) #14, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x356, metadata !6317, metadata !DIExpression()), !dbg !6364
  %15 = load i64, ptr %pages, align 8, !dbg !6364
  store i64 %15, ptr %__UNIQUE_ID___x356, align 8, !dbg !6364
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y357) #14, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y357, metadata !6320, metadata !DIExpression()), !dbg !6364
  store i64 4096, ptr %__UNIQUE_ID___y357, align 8, !dbg !6364
  %16 = load i64, ptr %__UNIQUE_ID___x356, align 8, !dbg !6364
  %17 = load i64, ptr %__UNIQUE_ID___y357, align 8, !dbg !6364
  %cmp26 = icmp ult i64 %16, %17, !dbg !6364
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !6364

cond.true:                                        ; preds = %while.body
  %18 = load i64, ptr %__UNIQUE_ID___x356, align 8, !dbg !6364
  br label %cond.end, !dbg !6364

cond.false:                                       ; preds = %while.body
  %19 = load i64, ptr %__UNIQUE_ID___y357, align 8, !dbg !6364
  br label %cond.end, !dbg !6364

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !6364
  store i64 %cond, ptr %tmp25, align 8, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y357) #14, !dbg !6365
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x356) #14, !dbg !6365
  %20 = load i64, ptr %tmp25, align 8, !dbg !6364
  %21 = load ptr, ptr %tmp, align 8, !dbg !6366
  %call28 = call i64 @do_mincore(i64 noundef %14, i64 noundef %20, ptr noundef %21) #13, !dbg !6367
  store i64 %call28, ptr %retval1, align 8, !dbg !6368
  %call29 = call ptr @get_current() #13, !dbg !6369
  %mm30 = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 49, !dbg !6370
  %22 = load ptr, ptr %mm30, align 64, !dbg !6370
  call void @mmap_read_unlock(ptr noundef %22) #13, !dbg !6371
  %23 = load i64, ptr %retval1, align 8, !dbg !6372
  %cmp31 = icmp sle i64 %23, 0, !dbg !6374
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6375

if.then33:                                        ; preds = %cond.end
  br label %while.end, !dbg !6376

if.end34:                                         ; preds = %cond.end
  %24 = load ptr, ptr %vec.addr, align 8, !dbg !6377
  %25 = load ptr, ptr %tmp, align 8, !dbg !6379
  %26 = load i64, ptr %retval1, align 8, !dbg !6380
  %call35 = call i64 @copy_to_user(ptr noundef %24, ptr noundef %25, i64 noundef %26) #13, !dbg !6381
  %tobool36 = icmp ne i64 %call35, 0, !dbg !6381
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6382

if.then37:                                        ; preds = %if.end34
  store i64 -14, ptr %retval1, align 8, !dbg !6383
  br label %while.end, !dbg !6385

if.end38:                                         ; preds = %if.end34
  %27 = load i64, ptr %retval1, align 8, !dbg !6386
  %28 = load i64, ptr %pages, align 8, !dbg !6387
  %sub = sub i64 %28, %27, !dbg !6387
  store i64 %sub, ptr %pages, align 8, !dbg !6387
  %29 = load i64, ptr %retval1, align 8, !dbg !6388
  %30 = load ptr, ptr %vec.addr, align 8, !dbg !6389
  %add.ptr = getelementptr i8, ptr %30, i64 %29, !dbg !6389
  store ptr %add.ptr, ptr %vec.addr, align 8, !dbg !6389
  %31 = load i64, ptr %retval1, align 8, !dbg !6390
  %shl = shl i64 %31, 12, !dbg !6391
  %32 = load i64, ptr %start.addr, align 8, !dbg !6392
  %add39 = add i64 %32, %shl, !dbg !6392
  store i64 %add39, ptr %start.addr, align 8, !dbg !6392
  store i64 0, ptr %retval1, align 8, !dbg !6393
  br label %while.cond, !dbg !6358, !llvm.loop !6394

while.end:                                        ; preds = %if.then37, %if.then33, %while.cond
  %33 = load ptr, ptr %tmp, align 8, !dbg !6398
  %34 = ptrtoint ptr %33 to i64, !dbg !6398
  call void @free_pages(i64 noundef %34, i32 noundef 0) #13, !dbg !6398
  %35 = load i64, ptr %retval1, align 8, !dbg !6399
  store i64 %35, ptr %retval, align 8, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

cleanup:                                          ; preds = %while.end, %if.then21, %if.then17, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #14, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #14, !dbg !6401
  %36 = load i64, ptr %retval, align 8, !dbg !6401
  ret i64 %36, !dbg !6401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !6402 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6407, metadata !DIExpression()), !dbg !6412
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6408, metadata !DIExpression()), !dbg !6413
  %0 = load i64, ptr %size.addr, align 8, !dbg !6414
  %cmp = icmp ule i64 %0, 4096, !dbg !6415
  %conv = zext i1 %cmp to i32, !dbg !6415
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6416
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6417

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6418
  %cmp1 = icmp ule i64 %2, 4096, !dbg !6419
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6420

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !6421
  %4 = ptrtoint ptr %3 to i64, !dbg !6421
  %cmp3 = icmp sge i64 %4, 0, !dbg !6421
  store i1 %cmp3, ptr %retval, align 1, !dbg !6423
  br label %return, !dbg !6423

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #14, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !6409, metadata !DIExpression()), !dbg !6425
  %5 = load i64, ptr %size.addr, align 8, !dbg !6426
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !6427
  %7 = ptrtoint ptr %6 to i64, !dbg !6428
  %add = add i64 %5, %7, !dbg !6429
  store i64 %add, ptr %sum, align 8, !dbg !6425
  %8 = load i64, ptr %sum, align 8, !dbg !6430
  %cmp5 = icmp sge i64 %8, 0, !dbg !6430
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !6431

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !6432
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !6433
  %11 = ptrtoint ptr %10 to i64, !dbg !6434
  %cmp7 = icmp uge i64 %9, %11, !dbg !6435
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !6436
  store i1 %12, ptr %retval, align 1, !dbg !6437
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #14, !dbg !6438
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !6439
  ret i1 %13, !dbg !6439
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6440 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_lock(ptr noundef %mm) #3 align 16 !dbg !6444 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6449, metadata !DIExpression()), !dbg !6450
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6451
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !6452
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6453
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6454
  %mmap_lock = getelementptr inbounds %struct.anon.22, ptr %2, i32 0, i32 16, !dbg !6454
  call void @down_read(ptr noundef %mmap_lock) #13, !dbg !6455
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !6456
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #13, !dbg !6457
  ret void, !dbg !6458
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !6459 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6464, metadata !DIExpression()), !dbg !6470
  br label %do.body, !dbg !6470

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6471
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6466, metadata !DIExpression()), !dbg !6471
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6471
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6470
  br label %do.cond, !dbg !6471

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6471

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6472
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6468, metadata !DIExpression()), !dbg !6472
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !6472, !srcloc !6473
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6472
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6472
  %3 = inttoptr i64 %2 to ptr, !dbg !6472
  store ptr %3, ptr %tmp, align 8, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6470
  %4 = load ptr, ptr %tmp, align 8, !dbg !6472
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6470
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6470
  store ptr %5, ptr %tmp1, align 8, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6474
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6470
  ret ptr %6, !dbg !6475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @do_mincore(i64 noundef %addr, i64 noundef %pages, ptr noundef %vec) #0 align 16 !dbg !6476 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %pages.addr = alloca i64, align 8
  %vec.addr = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %end = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x354 = alloca i64, align 8
  %__UNIQUE_ID___y355 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %pages4 = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6480, metadata !DIExpression()), !dbg !6492
  store i64 %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !6481, metadata !DIExpression()), !dbg !6493
  store ptr %vec, ptr %vec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !6482, metadata !DIExpression()), !dbg !6494
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #14, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6483, metadata !DIExpression()), !dbg !6496
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #14, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6484, metadata !DIExpression()), !dbg !6498
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6485, metadata !DIExpression()), !dbg !6500
  %call = call ptr @get_current() #13, !dbg !6501
  %mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !6502
  %0 = load ptr, ptr %mm, align 64, !dbg !6502
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6503
  %call1 = call ptr @vma_lookup(ptr noundef %0, i64 noundef %1) #13, !dbg !6504
  store ptr %call1, ptr %vma, align 8, !dbg !6505
  %2 = load ptr, ptr %vma, align 8, !dbg !6506
  %tobool = icmp ne ptr %2, null, !dbg !6506
  br i1 %tobool, label %if.end, label %if.then, !dbg !6508

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6509

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x354) #14, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x354, metadata !6486, metadata !DIExpression()), !dbg !6510
  %3 = load ptr, ptr %vma, align 8, !dbg !6510
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !6510
  %vm_end = getelementptr inbounds %struct.anon.29, ptr %4, i32 0, i32 1, !dbg !6510
  %5 = load i64, ptr %vm_end, align 8, !dbg !6510
  store i64 %5, ptr %__UNIQUE_ID___x354, align 8, !dbg !6510
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y355) #14, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y355, metadata !6488, metadata !DIExpression()), !dbg !6510
  %6 = load i64, ptr %addr.addr, align 8, !dbg !6510
  %7 = load i64, ptr %pages.addr, align 8, !dbg !6510
  %shl = shl i64 %7, 12, !dbg !6510
  %add = add i64 %6, %shl, !dbg !6510
  store i64 %add, ptr %__UNIQUE_ID___y355, align 8, !dbg !6510
  %8 = load i64, ptr %__UNIQUE_ID___x354, align 8, !dbg !6510
  %9 = load i64, ptr %__UNIQUE_ID___y355, align 8, !dbg !6510
  %cmp = icmp ult i64 %8, %9, !dbg !6510
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6510

cond.true:                                        ; preds = %if.end
  %10 = load i64, ptr %__UNIQUE_ID___x354, align 8, !dbg !6510
  br label %cond.end, !dbg !6510

cond.false:                                       ; preds = %if.end
  %11 = load i64, ptr %__UNIQUE_ID___y355, align 8, !dbg !6510
  br label %cond.end, !dbg !6510

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !6510
  store i64 %cond, ptr %tmp, align 8, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y355) #14, !dbg !6511
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x354) #14, !dbg !6511
  %12 = load i64, ptr %tmp, align 8, !dbg !6510
  store i64 %12, ptr %end, align 8, !dbg !6512
  %13 = load ptr, ptr %vma, align 8, !dbg !6513
  %call2 = call zeroext i1 @can_do_mincore(ptr noundef %13) #13, !dbg !6514
  br i1 %call2, label %if.end7, label %if.then3, !dbg !6515

if.then3:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages4) #14, !dbg !6516
  call void @llvm.dbg.declare(metadata ptr %pages4, metadata !6489, metadata !DIExpression()), !dbg !6517
  %14 = load i64, ptr %end, align 8, !dbg !6518
  %15 = load i64, ptr %addr.addr, align 8, !dbg !6518
  %sub = sub i64 %14, %15, !dbg !6518
  %add5 = add i64 %sub, 4096, !dbg !6518
  %sub6 = sub i64 %add5, 1, !dbg !6518
  %div = udiv i64 %sub6, 4096, !dbg !6518
  store i64 %div, ptr %pages4, align 8, !dbg !6517
  %16 = load ptr, ptr %vec.addr, align 8, !dbg !6519
  %17 = load i64, ptr %pages4, align 8, !dbg !6520
  call void @llvm.memset.p0.i64(ptr align 1 %16, i8 1, i64 %17, i1 false), !dbg !6521
  %18 = load i64, ptr %pages4, align 8, !dbg !6522
  store i64 %18, ptr %retval, align 8, !dbg !6523
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages4) #14, !dbg !6524
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  %19 = load ptr, ptr %vma, align 8, !dbg !6525
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 1, !dbg !6526
  %20 = load ptr, ptr %vm_mm, align 8, !dbg !6526
  %21 = load i64, ptr %addr.addr, align 8, !dbg !6527
  %22 = load i64, ptr %end, align 8, !dbg !6528
  %23 = load ptr, ptr %vec.addr, align 8, !dbg !6529
  %call8 = call i32 @walk_page_range(ptr noundef %20, i64 noundef %21, i64 noundef %22, ptr noundef @mincore_walk_ops, ptr noundef %23) #13, !dbg !6530
  store i32 %call8, ptr %err, align 4, !dbg !6531
  %24 = load i32, ptr %err, align 4, !dbg !6532
  %cmp9 = icmp slt i32 %24, 0, !dbg !6534
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6535

if.then10:                                        ; preds = %if.end7
  %25 = load i32, ptr %err, align 4, !dbg !6536
  %conv = sext i32 %25 to i64, !dbg !6536
  store i64 %conv, ptr %retval, align 8, !dbg !6537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6537

if.end11:                                         ; preds = %if.end7
  %26 = load i64, ptr %end, align 8, !dbg !6538
  %27 = load i64, ptr %addr.addr, align 8, !dbg !6539
  %sub12 = sub i64 %26, %27, !dbg !6540
  %shr = lshr i64 %sub12, 12, !dbg !6541
  store i64 %shr, ptr %retval, align 8, !dbg !6542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6542

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6543
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #14, !dbg !6543
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #14, !dbg !6543
  %28 = load i64, ptr %retval, align 8, !dbg !6543
  ret i64 %28, !dbg !6543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_unlock(ptr noundef %mm) #3 align 16 !dbg !6544 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6546, metadata !DIExpression()), !dbg !6547
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6548
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !6549
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6550
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6551
  %mmap_lock = getelementptr inbounds %struct.anon.22, ptr %2, i32 0, i32 16, !dbg !6551
  call void @up_read(ptr noundef %mmap_lock) #13, !dbg !6552
  ret void, !dbg !6553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !6554 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6559, metadata !DIExpression()), !dbg !6562
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6560, metadata !DIExpression()), !dbg !6563
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6561, metadata !DIExpression()), !dbg !6564
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6565
  %1 = load i64, ptr %n.addr, align 8, !dbg !6567
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #13, !dbg !6568
  br i1 %call, label %if.then, label %if.end, !dbg !6569

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6570
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6571
  %4 = load i64, ptr %n.addr, align 8, !dbg !6572
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !6573
  store i64 %call1, ptr %n.addr, align 8, !dbg !6574
  br label %if.end, !dbg !6575

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6576
  ret i64 %5, !dbg !6577
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6578 dso_local void @free_pages(i64 noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #3 align 16 !dbg !6581 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6585, metadata !DIExpression()), !dbg !6587
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6586, metadata !DIExpression()), !dbg !6588
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1)) #13, !dbg !6589
  br i1 %call, label %if.then, label %if.end, !dbg !6591

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6592
  %1 = load i8, ptr %write.addr, align 1, !dbg !6593, !range !6594, !noundef !702
  %tobool = trunc i8 %1 to i1, !dbg !6593
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext %tobool) #13, !dbg !6595
  br label %if.end, !dbg !6595

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6597 dso_local void @down_read(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #3 align 16 !dbg !6601 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6605, metadata !DIExpression()), !dbg !6608
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6606, metadata !DIExpression()), !dbg !6609
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6607, metadata !DIExpression()), !dbg !6610
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1)) #13, !dbg !6611
  br i1 %call, label %if.then, label %if.end, !dbg !6613

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6614
  %1 = load i8, ptr %write.addr, align 1, !dbg !6615, !range !6594, !noundef !702
  %tobool = trunc i8 %1 to i1, !dbg !6615
  %2 = load i8, ptr %success.addr, align 1, !dbg !6616, !range !6594, !noundef !702
  %tobool2 = trunc i8 %2 to i1, !dbg !6616
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #13, !dbg !6617
  br label %if.end, !dbg !6617

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6618
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !6619 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6624, metadata !DIExpression()), !dbg !6625
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6626
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !6627
  ret i1 %call, !dbg !6628
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6629 dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !6630 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6635, metadata !DIExpression()), !dbg !6638
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6636, metadata !DIExpression()), !dbg !6639
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6640
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6641, !range !6594, !noundef !702
  %tobool = trunc i8 %1 to i1, !dbg !6641
  %conv = zext i1 %tobool to i32, !dbg !6641
  %or = or i32 2, %conv, !dbg !6642
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !6643, !srcloc !6644

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6645
  br label %return, !dbg !6645

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6637), !dbg !6646
  store i1 true, ptr %retval, align 1, !dbg !6647
  br label %return, !dbg !6647

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6648
  ret i1 %2, !dbg !6648
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6649 dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vma_lookup(ptr noundef %mm, i64 noundef %addr) #3 align 16 !dbg !6650 {
entry:
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6654, metadata !DIExpression()), !dbg !6656
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6655, metadata !DIExpression()), !dbg !6657
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6658
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !6659
  %mm_mt = getelementptr inbounds %struct.anon.22, ptr %1, i32 0, i32 1, !dbg !6659
  %2 = load i64, ptr %addr.addr, align 8, !dbg !6660
  %call = call ptr @mtree_load(ptr noundef %mm_mt, i64 noundef %2) #13, !dbg !6661
  ret ptr %call, !dbg !6662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @can_do_mincore(ptr noundef %vma) #3 align 16 !dbg !6663 {
entry:
  %retval = alloca i1, align 1
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6669
  %call = call zeroext i1 @vma_is_anonymous(ptr noundef %0) #13, !dbg !6671
  br i1 %call, label %if.then, label %if.end, !dbg !6672

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6673
  br label %return, !dbg !6673

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !6674
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12, !dbg !6676
  %2 = load ptr, ptr %vm_file, align 8, !dbg !6676
  %tobool = icmp ne ptr %2, null, !dbg !6674
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6677

if.then1:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6678
  br label %return, !dbg !6678

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !6679
  %vm_file3 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 12, !dbg !6680
  %4 = load ptr, ptr %vm_file3, align 8, !dbg !6680
  %call4 = call ptr @file_inode(ptr noundef %4) #13, !dbg !6681
  %call5 = call zeroext i1 @inode_owner_or_capable(ptr noundef @nop_mnt_idmap, ptr noundef %call4) #13, !dbg !6682
  br i1 %call5, label %lor.end, label %lor.rhs, !dbg !6683

lor.rhs:                                          ; preds = %if.end2
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6684
  %vm_file6 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 12, !dbg !6685
  %6 = load ptr, ptr %vm_file6, align 8, !dbg !6685
  %call7 = call i32 @file_permission(ptr noundef %6, i32 noundef 2) #13, !dbg !6686
  %cmp = icmp eq i32 %call7, 0, !dbg !6687
  br label %lor.end, !dbg !6683

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %7 = phi i1 [ true, %if.end2 ], [ %cmp, %lor.rhs ]
  store i1 %7, ptr %retval, align 1, !dbg !6688
  br label %return, !dbg !6688

return:                                           ; preds = %lor.end, %if.then1, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !6689
  ret i1 %8, !dbg !6689
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6690 dso_local i32 @walk_page_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6693 dso_local ptr @mtree_load(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vma_is_anonymous(ptr noundef %vma) #3 align 16 !dbg !6697 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6699, metadata !DIExpression()), !dbg !6700
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6701
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10, !dbg !6702
  %1 = load ptr, ptr %vm_ops, align 8, !dbg !6702
  %tobool = icmp ne ptr %1, null, !dbg !6703
  %lnot = xor i1 %tobool, true, !dbg !6703
  ret i1 %lnot, !dbg !6704
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6705 dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6708 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6712, metadata !DIExpression()), !dbg !6713
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6714
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6715
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6715
  ret ptr %1, !dbg !6716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @file_permission(ptr noundef %file, i32 noundef %mask) #3 align 16 !dbg !6717 {
entry:
  %file.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6721, metadata !DIExpression()), !dbg !6723
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6722, metadata !DIExpression()), !dbg !6724
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6725
  %call = call ptr @file_mnt_idmap(ptr noundef %0) #13, !dbg !6726
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6727
  %call1 = call ptr @file_inode(ptr noundef %1) #13, !dbg !6728
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6729
  %call2 = call i32 @inode_permission(ptr noundef %call, ptr noundef %call1, i32 noundef %2) #13, !dbg !6730
  ret i32 %call2, !dbg !6731
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6732 dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_mnt_idmap(ptr noundef %file) #3 align 16 !dbg !6733 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6737, metadata !DIExpression()), !dbg !6738
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6739
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !6740
  %mnt = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !6741
  %1 = load ptr, ptr %mnt, align 8, !dbg !6741
  %call = call ptr @mnt_idmap(ptr noundef %1) #13, !dbg !6742
  ret ptr %call, !dbg !6743
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mnt_idmap(ptr noundef %mnt) #3 align 16 !dbg !6744 {
entry:
  %mnt.addr = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !6750, metadata !DIExpression()), !dbg !6754
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #14, !dbg !6755
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6751, metadata !DIExpression()), !dbg !6755
  br label %do.body, !dbg !6756

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6758

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6758

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !6756
  %mnt_idmap = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 3, !dbg !6756
  %1 = load volatile ptr, ptr %mnt_idmap, align 8, !dbg !6756
  store ptr %1, ptr %tmp, align 8, !dbg !6758
  %2 = load ptr, ptr %tmp, align 8, !dbg !6756
  store ptr %2, ptr %___p1, align 8, !dbg !6755
  br label %do.body1, !dbg !6755

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6760

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6760

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6755, !srcloc !6762
  %3 = load ptr, ptr %___p1, align 8, !dbg !6755
  store ptr %3, ptr %tmp4, align 8, !dbg !6755
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #14, !dbg !6763
  %4 = load ptr, ptr %tmp4, align 8, !dbg !6755
  ret ptr %4, !dbg !6764
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mincore_pte_range(ptr noundef %pmd, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !6765 {
entry:
  %retval = alloca i32, align 4
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %ptl = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %ptep = alloca ptr, align 8
  %vec = alloca ptr, align 8
  %nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %pte = alloca %struct.pte_t, align 8
  %entry19 = alloca %struct.swp_entry_t, align 8
  %tmp = alloca i32, align 4
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6767, metadata !DIExpression()), !dbg !6785
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6768, metadata !DIExpression()), !dbg !6786
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6769, metadata !DIExpression()), !dbg !6787
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6770, metadata !DIExpression()), !dbg !6788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl) #14, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %ptl, metadata !6771, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #14, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6772, metadata !DIExpression()), !dbg !6792
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !6793
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 3, !dbg !6794
  %1 = load ptr, ptr %vma1, align 8, !dbg !6794
  store ptr %1, ptr %vma, align 8, !dbg !6792
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptep) #14, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %ptep, metadata !6773, metadata !DIExpression()), !dbg !6796
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #14, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %vec, metadata !6774, metadata !DIExpression()), !dbg !6798
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !6799
  %private = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 6, !dbg !6800
  %3 = load ptr, ptr %private, align 8, !dbg !6800
  store ptr %3, ptr %vec, align 8, !dbg !6798
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #14, !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6775, metadata !DIExpression()), !dbg !6802
  %4 = load i64, ptr %end.addr, align 8, !dbg !6803
  %5 = load i64, ptr %addr.addr, align 8, !dbg !6804
  %sub = sub i64 %4, %5, !dbg !6805
  %shr = lshr i64 %sub, 12, !dbg !6806
  %conv = trunc i64 %shr to i32, !dbg !6807
  store i32 %conv, ptr %nr, align 4, !dbg !6802
  %6 = load ptr, ptr %pmd.addr, align 8, !dbg !6808
  %7 = load ptr, ptr %vma, align 8, !dbg !6809
  %call = call ptr @pmd_trans_huge_lock(ptr noundef %6, ptr noundef %7) #13, !dbg !6810
  store ptr %call, ptr %ptl, align 8, !dbg !6811
  %8 = load ptr, ptr %ptl, align 8, !dbg !6812
  %tobool = icmp ne ptr %8, null, !dbg !6812
  br i1 %tobool, label %if.then, label %if.end, !dbg !6814

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %vec, align 8, !dbg !6815
  %10 = load i32, ptr %nr, align 4, !dbg !6817
  %conv2 = sext i32 %10 to i64, !dbg !6817
  call void @llvm.memset.p0.i64(ptr align 1 %9, i8 1, i64 %conv2, i1 false), !dbg !6818
  %11 = load ptr, ptr %ptl, align 8, !dbg !6819
  call void @spin_unlock(ptr noundef %11) #13, !dbg !6820
  br label %out, !dbg !6821

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %walk.addr, align 8, !dbg !6822
  %mm = getelementptr inbounds %struct.mm_walk, ptr %12, i32 0, i32 1, !dbg !6823
  %13 = load ptr, ptr %mm, align 8, !dbg !6823
  %14 = load ptr, ptr %pmd.addr, align 8, !dbg !6824
  %15 = load i64, ptr %addr.addr, align 8, !dbg !6825
  %call3 = call ptr @pte_offset_map_lock(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %ptl) #13, !dbg !6826
  store ptr %call3, ptr %ptep, align 8, !dbg !6827
  %16 = load ptr, ptr %ptep, align 8, !dbg !6828
  %tobool4 = icmp ne ptr %16, null, !dbg !6828
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6830

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %walk.addr, align 8, !dbg !6831
  %action = getelementptr inbounds %struct.mm_walk, ptr %17, i32 0, i32 4, !dbg !6833
  store i32 2, ptr %action, align 8, !dbg !6834
  store i32 0, ptr %retval, align 4, !dbg !6835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6835

if.end6:                                          ; preds = %if.end
  br label %for.cond, !dbg !6836

for.cond:                                         ; preds = %for.inc, %if.end6
  %18 = load i64, ptr %addr.addr, align 8, !dbg !6837
  %19 = load i64, ptr %end.addr, align 8, !dbg !6838
  %cmp = icmp ne i64 %18, %19, !dbg !6839
  br i1 %cmp, label %for.body, label %for.end, !dbg !6840

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !6841
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6776, metadata !DIExpression()), !dbg !6842
  %20 = load ptr, ptr %ptep, align 8, !dbg !6843
  %call8 = call i64 @ptep_get(ptr noundef %20) #13, !dbg !6844
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6844
  store i64 %call8, ptr %coerce.dive, align 8, !dbg !6844
  %coerce.dive9 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6845
  %21 = load i64, ptr %coerce.dive9, align 8, !dbg !6845
  %call10 = call i32 @pte_none_mostly(i64 %21) #13, !dbg !6845
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6845
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6846

if.then12:                                        ; preds = %for.body
  %22 = load i64, ptr %addr.addr, align 8, !dbg !6847
  %23 = load i64, ptr %addr.addr, align 8, !dbg !6848
  %add = add i64 %23, 4096, !dbg !6849
  %24 = load ptr, ptr %vma, align 8, !dbg !6850
  %25 = load ptr, ptr %vec, align 8, !dbg !6851
  %call13 = call i32 @__mincore_unmapped_range(i64 noundef %22, i64 noundef %add, ptr noundef %24, ptr noundef %25) #13, !dbg !6852
  br label %if.end39, !dbg !6852

if.else:                                          ; preds = %for.body
  %coerce.dive14 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6853
  %26 = load i64, ptr %coerce.dive14, align 8, !dbg !6853
  %call15 = call i32 @pte_present(i64 %26) #13, !dbg !6853
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6853
  br i1 %tobool16, label %if.then17, label %if.else18, !dbg !6854

if.then17:                                        ; preds = %if.else
  %27 = load ptr, ptr %vec, align 8, !dbg !6855
  store i8 1, ptr %27, align 1, !dbg !6856
  br label %if.end38, !dbg !6857

if.else18:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry19) #14, !dbg !6858
  call void @llvm.dbg.declare(metadata ptr %entry19, metadata !6780, metadata !DIExpression()), !dbg !6859
  %coerce.dive20 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6860
  %28 = load i64, ptr %coerce.dive20, align 8, !dbg !6860
  %call21 = call i64 @pte_to_swp_entry(i64 %28) #13, !dbg !6860
  %coerce.dive22 = getelementptr inbounds %struct.swp_entry_t, ptr %entry19, i32 0, i32 0, !dbg !6860
  store i64 %call21, ptr %coerce.dive22, align 8, !dbg !6860
  %coerce.dive23 = getelementptr inbounds %struct.swp_entry_t, ptr %entry19, i32 0, i32 0, !dbg !6861
  %29 = load i64, ptr %coerce.dive23, align 8, !dbg !6861
  %call24 = call i32 @non_swap_entry(i64 %29) #13, !dbg !6861
  %tobool25 = icmp ne i32 %call24, 0, !dbg !6861
  br i1 %tobool25, label %if.then26, label %if.else27, !dbg !6863

if.then26:                                        ; preds = %if.else18
  %30 = load ptr, ptr %vec, align 8, !dbg !6864
  store i8 1, ptr %30, align 1, !dbg !6866
  br label %if.end37, !dbg !6867

if.else27:                                        ; preds = %if.else18
  %coerce.dive28 = getelementptr inbounds %struct.swp_entry_t, ptr %entry19, i32 0, i32 0, !dbg !6868
  %31 = load i64, ptr %coerce.dive28, align 8, !dbg !6868
  %call29 = call i32 @swp_type(i64 %31) #13, !dbg !6868
  %idxprom = zext i32 %call29 to i64, !dbg !6868
  %arrayidx = getelementptr [0 x ptr], ptr @swapper_spaces, i64 0, i64 %idxprom, !dbg !6868
  %32 = load ptr, ptr %arrayidx, align 8, !dbg !6868
  %coerce.dive30 = getelementptr inbounds %struct.swp_entry_t, ptr %entry19, i32 0, i32 0, !dbg !6868
  %33 = load i64, ptr %coerce.dive30, align 8, !dbg !6868
  %call31 = call i64 @swp_offset(i64 %33) #13, !dbg !6868
  %shr32 = lshr i64 %call31, 14, !dbg !6868
  %arrayidx33 = getelementptr %struct.address_space, ptr %32, i64 %shr32, !dbg !6868
  %coerce.dive34 = getelementptr inbounds %struct.swp_entry_t, ptr %entry19, i32 0, i32 0, !dbg !6870
  %34 = load i64, ptr %coerce.dive34, align 8, !dbg !6870
  %call35 = call i64 @swp_offset(i64 %34) #13, !dbg !6870
  %call36 = call zeroext i8 @mincore_page(ptr noundef %arrayidx33, i64 noundef %call35) #13, !dbg !6871
  %35 = load ptr, ptr %vec, align 8, !dbg !6872
  store i8 %call36, ptr %35, align 1, !dbg !6873
  br label %if.end37

if.end37:                                         ; preds = %if.else27, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry19) #14, !dbg !6874
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then17
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then12
  %36 = load ptr, ptr %vec, align 8, !dbg !6875
  %incdec.ptr = getelementptr i8, ptr %36, i32 1, !dbg !6875
  store ptr %incdec.ptr, ptr %vec, align 8, !dbg !6875
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !6876
  br label %for.inc, !dbg !6877

for.inc:                                          ; preds = %if.end39
  %37 = load ptr, ptr %ptep, align 8, !dbg !6878
  %incdec.ptr40 = getelementptr %struct.pte_t, ptr %37, i32 1, !dbg !6878
  store ptr %incdec.ptr40, ptr %ptep, align 8, !dbg !6878
  %38 = load i64, ptr %addr.addr, align 8, !dbg !6879
  %add41 = add i64 %38, 4096, !dbg !6879
  store i64 %add41, ptr %addr.addr, align 8, !dbg !6879
  br label %for.cond, !dbg !6880, !llvm.loop !6881

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !6883

do.body:                                          ; preds = %for.end
  %39 = load ptr, ptr %ptl, align 8, !dbg !6884
  call void @spin_unlock(ptr noundef %39) #13, !dbg !6884
  %40 = load ptr, ptr %ptep, align 8, !dbg !6884
  %add.ptr = getelementptr %struct.pte_t, ptr %40, i64 -1, !dbg !6884
  call void @pte_unmap(ptr noundef %add.ptr) #13, !dbg !6884
  br label %do.cond, !dbg !6884

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6884

do.end:                                           ; preds = %do.cond
  br label %out, !dbg !6884

out:                                              ; preds = %do.end, %if.then
  call void @llvm.dbg.label(metadata !6784), !dbg !6886
  %41 = load i32, ptr %nr, align 4, !dbg !6887
  %42 = load ptr, ptr %walk.addr, align 8, !dbg !6888
  %private42 = getelementptr inbounds %struct.mm_walk, ptr %42, i32 0, i32 6, !dbg !6889
  %43 = load ptr, ptr %private42, align 8, !dbg !6890
  %idx.ext = sext i32 %41 to i64, !dbg !6890
  %add.ptr43 = getelementptr i8, ptr %43, i64 %idx.ext, !dbg !6890
  store ptr %add.ptr43, ptr %private42, align 8, !dbg !6890
  call void @__might_resched(ptr noundef @.str, i32 noundef 154, i32 noundef 0) #13, !dbg !6891
  %call44 = call i32 @_cond_resched() #13, !dbg !6891
  store i32 %call44, ptr %tmp, align 4, !dbg !6891
  %44 = load i32, ptr %tmp, align 4, !dbg !6891
  store i32 0, ptr %retval, align 4, !dbg !6893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6893

cleanup:                                          ; preds = %out, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #14, !dbg !6894
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #14, !dbg !6894
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptep) #14, !dbg !6894
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #14, !dbg !6894
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl) #14, !dbg !6894
  %45 = load i32, ptr %retval, align 4, !dbg !6894
  ret i32 %45, !dbg !6894
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mincore_unmapped_range(i64 noundef %addr, i64 noundef %end, i32 noundef %depth, ptr noundef %walk) #0 align 16 !dbg !6895 {
entry:
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %walk.addr = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6897, metadata !DIExpression()), !dbg !6901
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6898, metadata !DIExpression()), !dbg !6902
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !6899, metadata !DIExpression()), !dbg !6903
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6900, metadata !DIExpression()), !dbg !6904
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6905
  %1 = load i64, ptr %end.addr, align 8, !dbg !6906
  %2 = load ptr, ptr %walk.addr, align 8, !dbg !6907
  %vma = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 3, !dbg !6908
  %3 = load ptr, ptr %vma, align 8, !dbg !6908
  %4 = load ptr, ptr %walk.addr, align 8, !dbg !6909
  %private = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 6, !dbg !6910
  %5 = load ptr, ptr %private, align 8, !dbg !6910
  %call = call i32 @__mincore_unmapped_range(i64 noundef %0, i64 noundef %1, ptr noundef %3, ptr noundef %5) #13, !dbg !6911
  %6 = load ptr, ptr %walk.addr, align 8, !dbg !6912
  %private1 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 6, !dbg !6913
  %7 = load ptr, ptr %private1, align 8, !dbg !6914
  %idx.ext = sext i32 %call to i64, !dbg !6914
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !6914
  store ptr %add.ptr, ptr %private1, align 8, !dbg !6914
  ret i32 0, !dbg !6915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mincore_hugetlb(ptr noundef %pte, i64 noundef %hmask, i64 noundef %addr, i64 noundef %end, ptr noundef %walk) #0 align 16 !dbg !6916 {
entry:
  %pte.addr = alloca ptr, align 8
  %hmask.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %present = alloca i8, align 1
  %vec = alloca ptr, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6918, metadata !DIExpression()), !dbg !6925
  store i64 %hmask, ptr %hmask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hmask.addr, metadata !6919, metadata !DIExpression()), !dbg !6926
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6920, metadata !DIExpression()), !dbg !6927
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6921, metadata !DIExpression()), !dbg !6928
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !6922, metadata !DIExpression()), !dbg !6929
  call void @llvm.lifetime.start.p0(i64 1, ptr %present) #14, !dbg !6930
  call void @llvm.dbg.declare(metadata ptr %present, metadata !6923, metadata !DIExpression()), !dbg !6931
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #14, !dbg !6932
  call void @llvm.dbg.declare(metadata ptr %vec, metadata !6924, metadata !DIExpression()), !dbg !6933
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !6934
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !6935
  %1 = load ptr, ptr %private, align 8, !dbg !6935
  store ptr %1, ptr %vec, align 8, !dbg !6933
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !6936
  %tobool = icmp ne ptr %2, null, !dbg !6936
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6937

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %pte.addr, align 8, !dbg !6938
  %call = call i64 @huge_ptep_get(ptr noundef %3) #13, !dbg !6939
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6939
  store i64 %call, ptr %coerce.dive, align 8, !dbg !6939
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6940
  %4 = load i64, ptr %coerce.dive1, align 8, !dbg !6940
  %call2 = call i32 @huge_pte_none_mostly(i64 %4) #13, !dbg !6940
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6941
  %lnot = xor i1 %tobool3, true, !dbg !6941
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6942
  %land.ext = zext i1 %5 to i32, !dbg !6937
  %conv = trunc i32 %land.ext to i8, !dbg !6936
  store i8 %conv, ptr %present, align 1, !dbg !6943
  br label %for.cond, !dbg !6944

for.cond:                                         ; preds = %for.inc, %land.end
  %6 = load i64, ptr %addr.addr, align 8, !dbg !6945
  %7 = load i64, ptr %end.addr, align 8, !dbg !6948
  %cmp = icmp ne i64 %6, %7, !dbg !6949
  br i1 %cmp, label %for.body, label %for.end, !dbg !6950

for.body:                                         ; preds = %for.cond
  %8 = load i8, ptr %present, align 1, !dbg !6951
  %9 = load ptr, ptr %vec, align 8, !dbg !6952
  store i8 %8, ptr %9, align 1, !dbg !6953
  br label %for.inc, !dbg !6954

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %vec, align 8, !dbg !6955
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !6955
  store ptr %incdec.ptr, ptr %vec, align 8, !dbg !6955
  %11 = load i64, ptr %addr.addr, align 8, !dbg !6956
  %add = add i64 %11, 4096, !dbg !6956
  store i64 %add, ptr %addr.addr, align 8, !dbg !6956
  br label %for.cond, !dbg !6957, !llvm.loop !6958

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %vec, align 8, !dbg !6960
  %13 = load ptr, ptr %walk.addr, align 8, !dbg !6961
  %private5 = getelementptr inbounds %struct.mm_walk, ptr %13, i32 0, i32 6, !dbg !6962
  store ptr %12, ptr %private5, align 8, !dbg !6963
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #14, !dbg !6964
  call void @llvm.lifetime.end.p0(i64 1, ptr %present) #14, !dbg !6964
  ret i32 0, !dbg !6965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_trans_huge_lock(ptr noundef %pmd, ptr noundef %vma) #3 align 16 !dbg !6966 {
entry:
  %pmd.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6971, metadata !DIExpression()), !dbg !6973
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6972, metadata !DIExpression()), !dbg !6974
  ret ptr null, !dbg !6975
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !6976 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6981, metadata !DIExpression()), !dbg !6982
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6983
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6983
  call void @_raw_spin_unlock(ptr noundef %1) #13, !dbg !6983
  ret void, !dbg !6984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_map_lock(ptr noundef %mm, ptr noundef %pmd, i64 noundef %addr, ptr noundef %ptlp) #3 align 16 !dbg !6985 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptlp.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6990, metadata !DIExpression()), !dbg !6995
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6991, metadata !DIExpression()), !dbg !6996
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6992, metadata !DIExpression()), !dbg !6997
  store ptr %ptlp, ptr %ptlp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptlp.addr, metadata !6993, metadata !DIExpression()), !dbg !6998
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !6999
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6994, metadata !DIExpression()), !dbg !7000
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7001
  %1 = load ptr, ptr %pmd.addr, align 8, !dbg !7001
  %2 = load i64, ptr %addr.addr, align 8, !dbg !7001
  %3 = load ptr, ptr %ptlp.addr, align 8, !dbg !7001
  %call = call ptr @__pte_offset_map_lock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #13, !dbg !7001
  store ptr %call, ptr %pte, align 8, !dbg !7001
  %4 = load ptr, ptr %pte, align 8, !dbg !7002
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !7003
  ret ptr %4, !dbg !7004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptep_get(ptr noundef %ptep) #3 align 16 !dbg !7005 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !7010, metadata !DIExpression()), !dbg !7011
  br label %do.body, !dbg !7012

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7014

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !7012
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 8, i1 true), !dbg !7012
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7016
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7016
  ret i64 %1, !dbg !7016
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_none_mostly(i64 %pte.coerce) #3 align 16 !dbg !7017 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7022, metadata !DIExpression()), !dbg !7023
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7024
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7024
  %call = call i32 @pte_none(i64 %0) #13, !dbg !7024
  %tobool = icmp ne i32 %call, 0, !dbg !7024
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !7025

lor.rhs:                                          ; preds = %entry
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7026
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7026
  %call3 = call zeroext i1 @is_pte_marker(i64 %1) #13, !dbg !7026
  br label %lor.end, !dbg !7025

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call3, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !7025
  ret i32 %lor.ext, !dbg !7027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__mincore_unmapped_range(i64 noundef %addr, i64 noundef %end, ptr noundef %vma, ptr noundef %vec) #0 align 16 !dbg !7028 {
entry:
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %vma.addr = alloca ptr, align 8
  %vec.addr = alloca ptr, align 8
  %nr = alloca i64, align 8
  %i = alloca i32, align 4
  %pgoff = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7032, metadata !DIExpression()), !dbg !7041
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7033, metadata !DIExpression()), !dbg !7042
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7034, metadata !DIExpression()), !dbg !7043
  store ptr %vec, ptr %vec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !7035, metadata !DIExpression()), !dbg !7044
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #14, !dbg !7045
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !7036, metadata !DIExpression()), !dbg !7046
  %0 = load i64, ptr %end.addr, align 8, !dbg !7047
  %1 = load i64, ptr %addr.addr, align 8, !dbg !7048
  %sub = sub i64 %0, %1, !dbg !7049
  %shr = lshr i64 %sub, 12, !dbg !7050
  store i64 %shr, ptr %nr, align 8, !dbg !7046
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !7051
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7037, metadata !DIExpression()), !dbg !7052
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !7053
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12, !dbg !7054
  %3 = load ptr, ptr %vm_file, align 8, !dbg !7054
  %tobool = icmp ne ptr %3, null, !dbg !7053
  br i1 %tobool, label %if.then, label %if.else, !dbg !7055

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgoff) #14, !dbg !7056
  call void @llvm.dbg.declare(metadata ptr %pgoff, metadata !7038, metadata !DIExpression()), !dbg !7057
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !7058
  %5 = load i64, ptr %addr.addr, align 8, !dbg !7059
  %call = call i64 @linear_page_index(ptr noundef %4, i64 noundef %5) #13, !dbg !7060
  store i64 %call, ptr %pgoff, align 8, !dbg !7061
  store i32 0, ptr %i, align 4, !dbg !7062
  br label %for.cond, !dbg !7064

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4, !dbg !7065
  %conv = sext i32 %6 to i64, !dbg !7065
  %7 = load i64, ptr %nr, align 8, !dbg !7067
  %cmp = icmp ult i64 %conv, %7, !dbg !7068
  br i1 %cmp, label %for.body, label %for.end, !dbg !7069

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !7070
  %vm_file2 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 12, !dbg !7071
  %9 = load ptr, ptr %vm_file2, align 8, !dbg !7071
  %f_mapping = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 17, !dbg !7072
  %10 = load ptr, ptr %f_mapping, align 8, !dbg !7072
  %11 = load i64, ptr %pgoff, align 8, !dbg !7073
  %call3 = call zeroext i8 @mincore_page(ptr noundef %10, i64 noundef %11) #13, !dbg !7074
  %12 = load ptr, ptr %vec.addr, align 8, !dbg !7075
  %13 = load i32, ptr %i, align 4, !dbg !7076
  %idxprom = sext i32 %13 to i64, !dbg !7075
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !7075
  store i8 %call3, ptr %arrayidx, align 1, !dbg !7077
  br label %for.inc, !dbg !7075

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !7078
  %inc = add i32 %14, 1, !dbg !7078
  store i32 %inc, ptr %i, align 4, !dbg !7078
  %15 = load i64, ptr %pgoff, align 8, !dbg !7079
  %inc4 = add i64 %15, 1, !dbg !7079
  store i64 %inc4, ptr %pgoff, align 8, !dbg !7079
  br label %for.cond, !dbg !7080, !llvm.loop !7081

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgoff) #14, !dbg !7083
  br label %if.end, !dbg !7084

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !7085
  br label %for.cond5, !dbg !7088

for.cond5:                                        ; preds = %for.inc12, %if.else
  %16 = load i32, ptr %i, align 4, !dbg !7089
  %conv6 = sext i32 %16 to i64, !dbg !7089
  %17 = load i64, ptr %nr, align 8, !dbg !7091
  %cmp7 = icmp ult i64 %conv6, %17, !dbg !7092
  br i1 %cmp7, label %for.body9, label %for.end14, !dbg !7093

for.body9:                                        ; preds = %for.cond5
  %18 = load ptr, ptr %vec.addr, align 8, !dbg !7094
  %19 = load i32, ptr %i, align 4, !dbg !7095
  %idxprom10 = sext i32 %19 to i64, !dbg !7094
  %arrayidx11 = getelementptr i8, ptr %18, i64 %idxprom10, !dbg !7094
  store i8 0, ptr %arrayidx11, align 1, !dbg !7096
  br label %for.inc12, !dbg !7094

for.inc12:                                        ; preds = %for.body9
  %20 = load i32, ptr %i, align 4, !dbg !7097
  %inc13 = add i32 %20, 1, !dbg !7097
  store i32 %inc13, ptr %i, align 4, !dbg !7097
  br label %for.cond5, !dbg !7098, !llvm.loop !7099

for.end14:                                        ; preds = %for.cond5
  br label %if.end

if.end:                                           ; preds = %for.end14, %for.end
  %21 = load i64, ptr %nr, align 8, !dbg !7101
  %conv15 = trunc i64 %21 to i32, !dbg !7101
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !7102
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #14, !dbg !7102
  ret i32 %conv15, !dbg !7103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_present(i64 %a.coerce) #3 align 16 !dbg !7104 {
entry:
  %a = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0
  store i64 %a.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %a, metadata !7107, metadata !DIExpression()), !dbg !7108
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0, !dbg !7109
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7109
  %call = call i64 @pte_flags(i64 %0) #13, !dbg !7109
  %and = and i64 %call, 257, !dbg !7110
  %conv = trunc i64 %and to i32, !dbg !7109
  ret i32 %conv, !dbg !7111
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_to_swp_entry(i64 %pte.coerce) #3 align 16 !dbg !7112 {
entry:
  %retval = alloca %struct.swp_entry_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %arch_entry = alloca %struct.swp_entry_t, align 8
  %tmp = alloca %struct.pte_t, align 8
  %.compoundliteral = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7116, metadata !DIExpression()), !dbg !7118
  call void @llvm.lifetime.start.p0(i64 8, ptr %arch_entry) #14, !dbg !7119
  call void @llvm.dbg.declare(metadata ptr %arch_entry, metadata !7117, metadata !DIExpression()), !dbg !7120
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !7121
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7121
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7121
  %call = call i64 @pte_swp_clear_flags(i64 %0) #13, !dbg !7121
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !7121
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !7121
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !7121
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !7121
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !7122
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7122
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !7122
  %call4 = call i64 @native_pte_val(i64 %1) #13, !dbg !7122
  store i64 %call4, ptr %val, align 8, !dbg !7122
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arch_entry, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !7122
  %val5 = getelementptr inbounds %struct.swp_entry_t, ptr %arch_entry, i32 0, i32 0, !dbg !7123
  %2 = load i64, ptr %val5, align 8, !dbg !7123
  %shr = lshr i64 %2, 59, !dbg !7123
  %val6 = getelementptr inbounds %struct.swp_entry_t, ptr %arch_entry, i32 0, i32 0, !dbg !7124
  %3 = load i64, ptr %val6, align 8, !dbg !7124
  %not = xor i64 %3, -1, !dbg !7124
  %shl = shl i64 %not, 5, !dbg !7124
  %shr7 = lshr i64 %shl, 14, !dbg !7124
  %call8 = call i64 @swp_entry(i64 noundef %shr, i64 noundef %shr7) #13, !dbg !7125
  %coerce.dive9 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !7125
  store i64 %call8, ptr %coerce.dive9, align 8, !dbg !7125
  call void @llvm.lifetime.end.p0(i64 8, ptr %arch_entry) #14, !dbg !7126
  %coerce.dive10 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !7126
  %4 = load i64, ptr %coerce.dive10, align 8, !dbg !7126
  ret i64 %4, !dbg !7126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @non_swap_entry(i64 %entry.coerce) #3 align 16 !dbg !7127 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !7131, metadata !DIExpression()), !dbg !7132
  %coerce.dive3 = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !7133
  %0 = load i64, ptr %coerce.dive3, align 8, !dbg !7133
  %call = call i32 @swp_type(i64 %0) #13, !dbg !7133
  %cmp = icmp uge i32 %call, 28, !dbg !7134
  %conv = zext i1 %cmp to i32, !dbg !7134
  ret i32 %conv, !dbg !7135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @mincore_page(ptr noundef %mapping, i64 noundef %index) #0 align 16 !dbg !7136 {
entry:
  %mapping.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %present = alloca i8, align 1
  %folio = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7140, metadata !DIExpression()), !dbg !7144
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !7141, metadata !DIExpression()), !dbg !7145
  call void @llvm.lifetime.start.p0(i64 1, ptr %present) #14, !dbg !7146
  call void @llvm.dbg.declare(metadata ptr %present, metadata !7142, metadata !DIExpression()), !dbg !7147
  store i8 0, ptr %present, align 1, !dbg !7147
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #14, !dbg !7148
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !7143, metadata !DIExpression()), !dbg !7149
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7150
  %1 = load i64, ptr %index.addr, align 8, !dbg !7151
  %call = call ptr @filemap_get_incore_folio(ptr noundef %0, i64 noundef %1) #13, !dbg !7152
  store ptr %call, ptr %folio, align 8, !dbg !7153
  %2 = load ptr, ptr %folio, align 8, !dbg !7154
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #13, !dbg !7156
  br i1 %call1, label %if.end, label %if.then, !dbg !7157

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %folio, align 8, !dbg !7158
  %call2 = call zeroext i1 @folio_test_uptodate(ptr noundef %3) #13, !dbg !7160
  %conv = zext i1 %call2 to i8, !dbg !7160
  store i8 %conv, ptr %present, align 1, !dbg !7161
  %4 = load ptr, ptr %folio, align 8, !dbg !7162
  call void @folio_put(ptr noundef %4) #13, !dbg !7163
  br label %if.end, !dbg !7164

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr %present, align 1, !dbg !7165
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #14, !dbg !7166
  call void @llvm.lifetime.end.p0(i64 1, ptr %present) #14, !dbg !7166
  ret i8 %5, !dbg !7167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @swp_type(i64 %entry.coerce) #3 align 16 !dbg !7168 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !7172, metadata !DIExpression()), !dbg !7173
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !7174
  %0 = load i64, ptr %val, align 8, !dbg !7174
  %shr = lshr i64 %0, 58, !dbg !7175
  %conv = trunc i64 %shr to i32, !dbg !7176
  ret i32 %conv, !dbg !7177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @swp_offset(i64 %entry.coerce) #3 align 16 !dbg !7178 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !7182, metadata !DIExpression()), !dbg !7183
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !7184
  %0 = load i64, ptr %val, align 8, !dbg !7184
  %and = and i64 %0, 288230376151711743, !dbg !7185
  ret i64 %and, !dbg !7186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pte_unmap(ptr noundef %pte) #3 align 16 !dbg !7187 {
entry:
  %pte.addr = alloca ptr, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !7191, metadata !DIExpression()), !dbg !7192
  call void @rcu_read_unlock() #13, !dbg !7193
  ret void, !dbg !7194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !7195 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7200, metadata !DIExpression()), !dbg !7203
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !7201, metadata !DIExpression()), !dbg !7204
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !7202, metadata !DIExpression()), !dbg !7205
  ret void, !dbg !7206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #6 align 16 !dbg !6210 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !7207
  %0 = load ptr, ptr %tmp, align 8, !dbg !7207
  %call = call i32 %0() #13, !dbg !7209
  ret i32 %call, !dbg !7210
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7211 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7216 dso_local ptr @__pte_offset_map_lock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_none(i64 %pte.coerce) #3 align 16 !dbg !7217 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7219, metadata !DIExpression()), !dbg !7220
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7221
  %0 = load i64, ptr %pte1, align 8, !dbg !7221
  %and = and i64 %0, -97, !dbg !7222
  %tobool = icmp ne i64 %and, 0, !dbg !7223
  %lnot = xor i1 %tobool, true, !dbg !7223
  %lnot.ext = zext i1 %lnot to i32, !dbg !7223
  ret i32 %lnot.ext, !dbg !7224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_pte_marker(i64 %pte.coerce) #3 align 16 !dbg !7225 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %agg.tmp = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7229, metadata !DIExpression()), !dbg !7230
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7231
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7231
  %call = call i32 @is_swap_pte(i64 %0) #13, !dbg !7231
  %tobool = icmp ne i32 %call, 0, !dbg !7231
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7232

land.rhs:                                         ; preds = %entry
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7233
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7233
  %call3 = call i64 @pte_to_swp_entry(i64 %1) #13, !dbg !7233
  %coerce.dive4 = getelementptr inbounds %struct.swp_entry_t, ptr %agg.tmp, i32 0, i32 0, !dbg !7233
  store i64 %call3, ptr %coerce.dive4, align 8, !dbg !7233
  %coerce.dive5 = getelementptr inbounds %struct.swp_entry_t, ptr %agg.tmp, i32 0, i32 0, !dbg !7234
  %2 = load i64, ptr %coerce.dive5, align 8, !dbg !7234
  %call6 = call zeroext i1 @is_pte_marker_entry(i64 %2) #13, !dbg !7234
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %call6, %land.rhs ], !dbg !7235
  ret i1 %3, !dbg !7236
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_swap_pte(i64 %pte.coerce) #3 align 16 !dbg !7237 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7239, metadata !DIExpression()), !dbg !7240
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7241
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7241
  %call = call i32 @pte_none(i64 %0) #13, !dbg !7241
  %tobool = icmp ne i32 %call, 0, !dbg !7241
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !7242

land.rhs:                                         ; preds = %entry
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7243
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7243
  %call3 = call i32 @pte_present(i64 %1) #13, !dbg !7243
  %tobool4 = icmp ne i32 %call3, 0, !dbg !7244
  %lnot = xor i1 %tobool4, true, !dbg !7244
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !7245
  %land.ext = zext i1 %2 to i32, !dbg !7242
  ret i32 %land.ext, !dbg !7246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_pte_marker_entry(i64 %entry.coerce) #3 align 16 !dbg !7247 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !7251, metadata !DIExpression()), !dbg !7252
  %coerce.dive3 = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0, !dbg !7253
  %0 = load i64, ptr %coerce.dive3, align 8, !dbg !7253
  %call = call i32 @swp_type(i64 %0) #13, !dbg !7253
  %cmp = icmp eq i32 %call, 31, !dbg !7254
  ret i1 %cmp, !dbg !7255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @linear_page_index(ptr noundef %vma, i64 noundef %address) #3 align 16 !dbg !7256 {
entry:
  %retval = alloca i64, align 8
  %vma.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %pgoff = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7260, metadata !DIExpression()), !dbg !7263
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7261, metadata !DIExpression()), !dbg !7264
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgoff) #14, !dbg !7265
  call void @llvm.dbg.declare(metadata ptr %pgoff, metadata !7262, metadata !DIExpression()), !dbg !7266
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7267
  %call = call zeroext i1 @is_vm_hugetlb_page(ptr noundef %0) #13, !dbg !7267
  %lnot = xor i1 %call, true, !dbg !7267
  %lnot1 = xor i1 %lnot, true, !dbg !7267
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7267
  %conv = sext i32 %lnot.ext to i64, !dbg !7267
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7267
  %tobool = icmp ne i64 %expval, 0, !dbg !7267
  br i1 %tobool, label %if.then, label %if.end, !dbg !7269

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !7270
  %2 = load i64, ptr %address.addr, align 8, !dbg !7271
  %call2 = call i64 @linear_hugepage_index(ptr noundef %1, i64 noundef %2) #13, !dbg !7272
  store i64 %call2, ptr %retval, align 8, !dbg !7273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7273

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %address.addr, align 8, !dbg !7274
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !7275
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 0, !dbg !7276
  %vm_start = getelementptr inbounds %struct.anon.29, ptr %5, i32 0, i32 0, !dbg !7276
  %6 = load i64, ptr %vm_start, align 8, !dbg !7276
  %sub = sub i64 %3, %6, !dbg !7277
  %shr = lshr i64 %sub, 12, !dbg !7278
  store i64 %shr, ptr %pgoff, align 8, !dbg !7279
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !7280
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 11, !dbg !7281
  %8 = load i64, ptr %vm_pgoff, align 8, !dbg !7281
  %9 = load i64, ptr %pgoff, align 8, !dbg !7282
  %add = add i64 %9, %8, !dbg !7282
  store i64 %add, ptr %pgoff, align 8, !dbg !7282
  %10 = load i64, ptr %pgoff, align 8, !dbg !7283
  store i64 %10, ptr %retval, align 8, !dbg !7284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7284

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgoff) #14, !dbg !7285
  %11 = load i64, ptr %retval, align 8, !dbg !7285
  ret i64 %11, !dbg !7285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_vm_hugetlb_page(ptr noundef %vma) #3 align 16 !dbg !7286 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7289, metadata !DIExpression()), !dbg !7290
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7291
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3, !dbg !7292
  %2 = load i64, ptr %1, align 8, !dbg !7292
  %and = and i64 %2, 4194304, !dbg !7293
  %tobool = icmp ne i64 %and, 0, !dbg !7294
  %lnot = xor i1 %tobool, true, !dbg !7294
  %lnot1 = xor i1 %lnot, true, !dbg !7295
  ret i1 %lnot1, !dbg !7296
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7297 dso_local i64 @linear_hugepage_index(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_flags(i64 %pte.coerce) #3 align 16 !dbg !7298 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7302, metadata !DIExpression()), !dbg !7303
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7304
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7304
  %call = call i64 @native_pte_val(i64 %0) #13, !dbg !7304
  %and = and i64 %call, -4503599627366401, !dbg !7305
  ret i64 %and, !dbg !7306
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #3 align 16 !dbg !7307 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7309, metadata !DIExpression()), !dbg !7310
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7311
  %0 = load i64, ptr %pte1, align 8, !dbg !7311
  ret i64 %0, !dbg !7312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_flags(i64 %pte.coerce) #3 align 16 !dbg !7313 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %tmp = alloca %struct.pte_t, align 8
  %tmp9 = alloca %struct.pte_t, align 8
  %tmp18 = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7317, metadata !DIExpression()), !dbg !7318
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7319
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7319
  %call = call i32 @pte_swp_exclusive(i64 %0) #13, !dbg !7319
  %tobool = icmp ne i32 %call, 0, !dbg !7319
  br i1 %tobool, label %if.then, label %if.end, !dbg !7321

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !7322
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7322
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7322
  %call3 = call i64 @pte_swp_clear_exclusive(i64 %1) #13, !dbg !7322
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !7322
  store i64 %call3, ptr %coerce.dive4, align 8, !dbg !7322
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !7322
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !7322
  br label %if.end, !dbg !7323

if.end:                                           ; preds = %if.then, %entry
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7324
  %2 = load i64, ptr %coerce.dive5, align 8, !dbg !7324
  %call6 = call i32 @pte_swp_soft_dirty(i64 %2) #13, !dbg !7324
  %tobool7 = icmp ne i32 %call6, 0, !dbg !7324
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !7326

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp9) #14, !dbg !7327
  %coerce.dive10 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7327
  %3 = load i64, ptr %coerce.dive10, align 8, !dbg !7327
  %call11 = call i64 @pte_swp_clear_soft_dirty(i64 %3) #13, !dbg !7327
  %coerce.dive12 = getelementptr inbounds %struct.pte_t, ptr %tmp9, i32 0, i32 0, !dbg !7327
  store i64 %call11, ptr %coerce.dive12, align 8, !dbg !7327
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp9, i64 8, i1 false), !dbg !7327
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp9) #14, !dbg !7327
  br label %if.end13, !dbg !7328

if.end13:                                         ; preds = %if.then8, %if.end
  %coerce.dive14 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7329
  %4 = load i64, ptr %coerce.dive14, align 8, !dbg !7329
  %call15 = call i32 @pte_swp_uffd_wp(i64 %4) #13, !dbg !7329
  %tobool16 = icmp ne i32 %call15, 0, !dbg !7329
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !7331

if.then17:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp18) #14, !dbg !7332
  %coerce.dive19 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7332
  %5 = load i64, ptr %coerce.dive19, align 8, !dbg !7332
  %call20 = call i64 @pte_swp_clear_uffd_wp(i64 %5) #13, !dbg !7332
  %coerce.dive21 = getelementptr inbounds %struct.pte_t, ptr %tmp18, i32 0, i32 0, !dbg !7332
  store i64 %call20, ptr %coerce.dive21, align 8, !dbg !7332
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp18, i64 8, i1 false), !dbg !7332
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp18) #14, !dbg !7332
  br label %if.end22, !dbg !7333

if.end22:                                         ; preds = %if.then17, %if.end13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pte, i64 8, i1 false), !dbg !7334
  %coerce.dive23 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7335
  %6 = load i64, ptr %coerce.dive23, align 8, !dbg !7335
  ret i64 %6, !dbg !7335
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @swp_entry(i64 noundef %type, i64 noundef %offset) #3 align 16 !dbg !7336 {
entry:
  %retval = alloca %struct.swp_entry_t, align 8
  %type.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7340, metadata !DIExpression()), !dbg !7343
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7341, metadata !DIExpression()), !dbg !7344
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !7342, metadata !DIExpression()), !dbg !7345
  %0 = load i64, ptr %type.addr, align 8, !dbg !7346
  %shl = shl i64 %0, 58, !dbg !7347
  %1 = load i64, ptr %offset.addr, align 8, !dbg !7348
  %and = and i64 %1, 288230376151711743, !dbg !7349
  %or = or i64 %shl, %and, !dbg !7350
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !7351
  store i64 %or, ptr %val, align 8, !dbg !7352
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !7353
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !7353
  ret i64 %2, !dbg !7353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_swp_exclusive(i64 %pte.coerce) #3 align 16 !dbg !7354 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7356, metadata !DIExpression()), !dbg !7357
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7358
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7358
  %call = call i64 @pte_flags(i64 %0) #13, !dbg !7358
  %and = and i64 %call, 8, !dbg !7359
  %conv = trunc i64 %and to i32, !dbg !7358
  ret i32 %conv, !dbg !7360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_exclusive(i64 %pte.coerce) #3 align 16 !dbg !7361 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7363, metadata !DIExpression()), !dbg !7364
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7365
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7365
  %call = call i64 @pte_clear_flags(i64 %0, i64 noundef 8) #13, !dbg !7365
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7365
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !7365
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7366
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !7366
  ret i64 %1, !dbg !7366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_swp_soft_dirty(i64 %pte.coerce) #3 align 16 !dbg !7367 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7369, metadata !DIExpression()), !dbg !7370
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7371
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7371
  %call = call i64 @pte_flags(i64 %0) #13, !dbg !7371
  %and = and i64 %call, 0, !dbg !7372
  %conv = trunc i64 %and to i32, !dbg !7371
  ret i32 %conv, !dbg !7373
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_soft_dirty(i64 %pte.coerce) #3 align 16 !dbg !7374 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7376, metadata !DIExpression()), !dbg !7377
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7378
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7378
  %call = call i64 @pte_clear_flags(i64 %0, i64 noundef 0) #13, !dbg !7378
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7378
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !7378
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7379
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !7379
  ret i64 %1, !dbg !7379
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_swp_uffd_wp(i64 %pte.coerce) #6 align 16 !dbg !7380 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7383, metadata !DIExpression()), !dbg !7384
  ret i32 0, !dbg !7385
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_swp_clear_uffd_wp(i64 %pte.coerce) #6 align 16 !dbg !7386 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7388, metadata !DIExpression()), !dbg !7389
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pte, i64 8, i1 false), !dbg !7390
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7391
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7391
  ret i64 %0, !dbg !7391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_clear_flags(i64 %pte.coerce, i64 noundef %clear) #3 align 16 !dbg !7392 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %clear.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7396, metadata !DIExpression()), !dbg !7399
  store i64 %clear, ptr %clear.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !7397, metadata !DIExpression()), !dbg !7400
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #14, !dbg !7401
  call void @llvm.dbg.declare(metadata ptr %v, metadata !7398, metadata !DIExpression()), !dbg !7402
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7403
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7403
  %call = call i64 @native_pte_val(i64 %0) #13, !dbg !7403
  store i64 %call, ptr %v, align 8, !dbg !7402
  %1 = load i64, ptr %v, align 8, !dbg !7404
  %2 = load i64, ptr %clear.addr, align 8, !dbg !7405
  %not = xor i64 %2, -1, !dbg !7406
  %and = and i64 %1, %not, !dbg !7407
  %call2 = call i64 @native_make_pte(i64 noundef %and) #13, !dbg !7408
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7408
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !7408
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #14, !dbg !7409
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7409
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !7409
  ret i64 %3, !dbg !7409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !7410 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7414, metadata !DIExpression()), !dbg !7415
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7416
  %0 = load i64, ptr %val.addr, align 8, !dbg !7417
  store i64 %0, ptr %pte, align 8, !dbg !7416
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7418
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7418
  ret i64 %1, !dbg !7418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7419 dso_local ptr @filemap_get_incore_folio(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !7423 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7428, metadata !DIExpression()), !dbg !7429
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7430
  %1 = ptrtoint ptr %0 to i64, !dbg !7430
  %2 = inttoptr i64 %1 to ptr, !dbg !7430
  %3 = ptrtoint ptr %2 to i64, !dbg !7430
  %cmp = icmp uge i64 %3, -4095, !dbg !7430
  %lnot = xor i1 %cmp, true, !dbg !7430
  %lnot1 = xor i1 %lnot, true, !dbg !7430
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7430
  %conv = sext i32 %lnot.ext to i64, !dbg !7430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7430
  %tobool = icmp ne i64 %expval, 0, !dbg !7430
  ret i1 %tobool, !dbg !7431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_uptodate(ptr noundef %folio) #3 align 16 !dbg !7432 {
entry:
  %folio.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7436, metadata !DIExpression()), !dbg !7438
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !7439
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7437, metadata !DIExpression()), !dbg !7440
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7441
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !7441
  %call1 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %call) #13, !dbg !7441
  %frombool = zext i1 %call1 to i8, !dbg !7440
  store i8 %frombool, ptr %ret, align 1, !dbg !7440
  %1 = load i8, ptr %ret, align 1, !dbg !7442, !range !6594, !noundef !702
  %tobool = trunc i8 %1 to i1, !dbg !7442
  br i1 %tobool, label %if.then, label %if.end, !dbg !7444

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7445

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !7446

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7448

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7448

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7446

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7450

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7452

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7452

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !7450, !srcloc !7454
  br label %do.cond7, !dbg !7450

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7450

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7446

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7446

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !7446

if.end:                                           ; preds = %do.end10, %entry
  %2 = load i8, ptr %ret, align 1, !dbg !7455, !range !6594, !noundef !702
  %tobool11 = trunc i8 %2 to i1, !dbg !7455
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !7456
  ret i1 %tobool11, !dbg !7457
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #3 align 16 !dbg !7458 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7460, metadata !DIExpression()), !dbg !7461
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7462
  %call = call i32 @folio_put_testzero(ptr noundef %0) #13, !dbg !7464
  %tobool = icmp ne i32 %call, 0, !dbg !7464
  br i1 %tobool, label %if.then, label %if.end, !dbg !7465

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !7466
  call void @__folio_put(ptr noundef %1) #13, !dbg !7467
  br label %if.end, !dbg !7467

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7469 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7477, metadata !DIExpression()), !dbg !7479
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7478, metadata !DIExpression()), !dbg !7480
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7481
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7482
  %div = udiv i64 %1, 64, !dbg !7482
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7483
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7484
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7485
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7486
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7487
  ret i1 %call, !dbg !7488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !7489 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7493, metadata !DIExpression()), !dbg !7496
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7494, metadata !DIExpression()), !dbg !7497
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !7498
  call void @llvm.dbg.declare(metadata ptr %page, metadata !7495, metadata !DIExpression()), !dbg !7499
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7500
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !7501
  store ptr %1, ptr %page, align 8, !dbg !7499
  %2 = load ptr, ptr %page, align 8, !dbg !7502
  %3 = load i32, ptr %n.addr, align 4, !dbg !7503
  %idxprom = zext i32 %3 to i64, !dbg !7502
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !7502
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !7504
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !7505
  ret ptr %flags, !dbg !7506
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7507 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7515, metadata !DIExpression()), !dbg !7517
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7516, metadata !DIExpression()), !dbg !7518
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7519
  %1 = load i64, ptr %size.addr, align 8, !dbg !7520
  %conv = trunc i64 %1 to i32, !dbg !7520
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !7521
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7522
  %3 = load i64, ptr %size.addr, align 8, !dbg !7522
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !7522
  ret void, !dbg !7523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7524 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7527, metadata !DIExpression()), !dbg !7529
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7528, metadata !DIExpression()), !dbg !7530
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7531
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7532
  br i1 %1, label %cond.true, label %cond.false, !dbg !7532

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7533
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7534
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7535
  %conv = zext i1 %call to i32, !dbg !7535
  br label %cond.end, !dbg !7532

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7536
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7537
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !7538
  %conv2 = zext i1 %call1 to i32, !dbg !7538
  br label %cond.end, !dbg !7532

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7532
  %tobool = icmp ne i32 %cond, 0, !dbg !7532
  ret i1 %tobool, !dbg !7539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7540 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7545, metadata !DIExpression()), !dbg !7547
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7546, metadata !DIExpression()), !dbg !7548
  ret i1 true, !dbg !7549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7550 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7555, metadata !DIExpression()), !dbg !7558
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7556, metadata !DIExpression()), !dbg !7559
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7557, metadata !DIExpression()), !dbg !7560
  ret void, !dbg !7561
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7562 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7566, metadata !DIExpression()), !dbg !7568
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7567, metadata !DIExpression()), !dbg !7569
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7570
  %and = and i64 %0, 63, !dbg !7571
  %shl = shl i64 1, %and, !dbg !7572
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7573
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7574
  %shr = ashr i64 %2, 6, !dbg !7575
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7573
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7573
  %and1 = and i64 %shl, %3, !dbg !7576
  %cmp = icmp ne i64 %and1, 0, !dbg !7577
  ret i1 %cmp, !dbg !7578
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7579 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7581, metadata !DIExpression()), !dbg !7584
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7582, metadata !DIExpression()), !dbg !7585
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !7586
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7583, metadata !DIExpression()), !dbg !7587
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7588
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7589
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !7590, !srcloc !7591
  %3 = icmp ult i8 %2, 2, !dbg !7590
  call void @llvm.assume(i1 %3), !dbg !7590
  store i8 %2, ptr %oldbit, align 1, !dbg !7590
  %4 = load i8, ptr %oldbit, align 1, !dbg !7592, !range !6594, !noundef !702
  %tobool = trunc i8 %4 to i1, !dbg !7592
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !7593
  ret i1 %tobool, !dbg !7594
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #3 align 16 !dbg !7595 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7597, metadata !DIExpression()), !dbg !7598
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7599
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !7600
  %call = call i32 @put_page_testzero(ptr noundef %1) #13, !dbg !7601
  ret i32 %call, !dbg !7602
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7603 dso_local void @__folio_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #3 align 16 !dbg !7604 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7608, metadata !DIExpression()), !dbg !7609
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7610
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #13, !dbg !7611
  ret i32 %call, !dbg !7612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #3 align 16 !dbg !7613 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7616, metadata !DIExpression()), !dbg !7618
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7619
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7617, metadata !DIExpression()), !dbg !7620
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7621
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !7622
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #13, !dbg !7623
  %conv = zext i1 %call to i32, !dbg !7623
  store i32 %conv, ptr %ret, align 4, !dbg !7620
  %1 = load i32, ptr %ret, align 4, !dbg !7624
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7625
  ret i32 %1, !dbg !7626
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !7627 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7633, metadata !DIExpression()), !dbg !7634
  br label %do.body, !dbg !7635

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7636

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7638
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !7639
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7640
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #13, !dbg !7641
  ret i1 %call, !dbg !7642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7643 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7645, metadata !DIExpression()), !dbg !7647
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7646, metadata !DIExpression()), !dbg !7648
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7649
  %1 = load i64, ptr %size.addr, align 8, !dbg !7650
  %conv = trunc i64 %1 to i32, !dbg !7650
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !7651
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7652
  %3 = load i64, ptr %size.addr, align 8, !dbg !7652
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !7652
  ret void, !dbg !7653
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !7654 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7657, metadata !DIExpression()), !dbg !7658
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7659
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #13, !dbg !7660
  ret i1 %call, !dbg !7661
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7662 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7664, metadata !DIExpression()), !dbg !7666
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7665, metadata !DIExpression()), !dbg !7667
  ret i1 true, !dbg !7668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !7669 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7672, metadata !DIExpression()), !dbg !7675
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !7676
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7673, metadata !DIExpression()), !dbg !7676
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7676
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7676
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #14, !dbg !7676, !srcloc !7677
  %2 = icmp ult i8 %1, 2, !dbg !7676
  call void @llvm.assume(i1 %2), !dbg !7676
  store i8 %1, ptr %c, align 1, !dbg !7676
  %3 = load i8, ptr %c, align 1, !dbg !7676, !range !6594, !noundef !702
  %tobool = trunc i8 %3 to i1, !dbg !7676
  %frombool = zext i1 %tobool to i8, !dbg !7676
  store i8 %frombool, ptr %tmp, align 1, !dbg !7676
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !7678
  %4 = load i8, ptr %tmp, align 1, !dbg !7676, !range !6594, !noundef !702
  %tobool1 = trunc i8 %4 to i1, !dbg !7676
  ret i1 %tobool1, !dbg !7679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !7680 {
entry:
  br label %do.body, !dbg !7682

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7683

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #13, !dbg !7685
  br label %do.body1, !dbg !7686

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7687

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7690 dso_local void @__rcu_read_unlock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @huge_pte_none_mostly(i64 %pte.coerce) #3 align 16 !dbg !7691 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7694, metadata !DIExpression()), !dbg !7695
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7696
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7696
  %call = call i32 @huge_pte_none(i64 %0) #13, !dbg !7696
  %tobool = icmp ne i32 %call, 0, !dbg !7696
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !7697

lor.rhs:                                          ; preds = %entry
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7698
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7698
  %call3 = call zeroext i1 @is_pte_marker(i64 %1) #13, !dbg !7698
  br label %lor.end, !dbg !7697

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call3, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !7697
  ret i32 %lor.ext, !dbg !7699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @huge_ptep_get(ptr noundef %ptep) #3 align 16 !dbg !7700 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !7702, metadata !DIExpression()), !dbg !7703
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !7704
  %call = call i64 @ptep_get(ptr noundef %0) #13, !dbg !7705
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7705
  store i64 %call, ptr %coerce.dive, align 8, !dbg !7705
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7706
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !7706
  ret i64 %1, !dbg !7706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @huge_pte_none(i64 %pte.coerce) #3 align 16 !dbg !7707 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !7709, metadata !DIExpression()), !dbg !7710
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !7711
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7711
  %call = call i32 @pte_none(i64 %0) #13, !dbg !7711
  ret i32 %call, !dbg !7712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #3 align 16 !dbg !7713 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7715, metadata !DIExpression()), !dbg !7717
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !7716, metadata !DIExpression()), !dbg !7718
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #13, !dbg !7719
  br i1 %call, label %if.then, label %if.end, !dbg !7721

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7722
  %1 = load i8, ptr %write.addr, align 1, !dbg !7723, !range !6594, !noundef !702
  %tobool = trunc i8 %1 to i1, !dbg !7723
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %tobool) #13, !dbg !7724
  br label %if.end, !dbg !7724

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7726 dso_local void @up_read(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7727 dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !7728 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7732, metadata !DIExpression()), !dbg !7742
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7733, metadata !DIExpression()), !dbg !7743
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7734, metadata !DIExpression()), !dbg !7744
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !7745
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7735, metadata !DIExpression()), !dbg !7746
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7747
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7748
  %conv = trunc i64 %1 to i32, !dbg !7748
  store i32 %conv, ptr %sz, align 4, !dbg !7746
  %2 = load i32, ptr %sz, align 4, !dbg !7749
  %cmp = icmp sge i32 %2, 0, !dbg !7749
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7749

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7749
  %conv2 = sext i32 %3 to i64, !dbg !7749
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7749
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7749
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7751
  %lnot = xor i1 %5, true, !dbg !7749
  %lnot5 = xor i1 %lnot, true, !dbg !7749
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7749
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7749
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7749
  %tobool = icmp ne i64 %expval, 0, !dbg !7749
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7752

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7753
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7756
  br i1 %7, label %if.else, label %if.then7, !dbg !7757

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7758
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7759
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #13, !dbg !7760
  br label %if.end11, !dbg !7760

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7761, !range !6594, !noundef !702
  %tobool8 = trunc i8 %10 to i1, !dbg !7761
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7763

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #13, !dbg !7764, !srcloc !7765
  br label %if.end, !dbg !7764

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #13, !dbg !7766, !srcloc !7767
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7768

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !7769
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7736, metadata !DIExpression()), !dbg !7769
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7769
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7769
  %lnot15 = xor i1 %cmp13, true, !dbg !7769
  %lnot17 = xor i1 %lnot15, true, !dbg !7769
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7769
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7769
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7770
  %tobool19 = icmp ne i32 %12, 0, !dbg !7770
  %lnot20 = xor i1 %tobool19, true, !dbg !7770
  %lnot22 = xor i1 %lnot20, true, !dbg !7770
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7770
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7770
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7770
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7770
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7769

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7770

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !7771
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7739, metadata !DIExpression()), !dbg !7771
  store i32 2307, ptr %__flags, align 4, !dbg !7771
  br label %do.body28, !dbg !7771

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7772

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7772

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7771

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7774
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #14, !dbg !7774, !srcloc !7776
  br label %do.cond30, !dbg !7774

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7774

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7771

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7777

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7777

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !7770
  br label %do.cond35, !dbg !7771

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7771

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7771

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7769
  %tobool38 = icmp ne i32 %14, 0, !dbg !7769
  %lnot39 = xor i1 %tobool38, true, !dbg !7769
  %lnot41 = xor i1 %lnot39, true, !dbg !7769
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7769
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7769
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7769
  store i64 %expval44, ptr %tmp, align 8, !dbg !7770
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !7779
  %15 = load i64, ptr %tmp, align 8, !dbg !7769
  %tobool45 = icmp ne i64 %15, 0, !dbg !7779
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7780

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7781

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7782
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7783
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7784, !range !6594, !noundef !702
  %tobool48 = trunc i8 %18 to i1, !dbg !7784
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #13, !dbg !7785
  store i1 true, ptr %retval, align 1, !dbg !7786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7786

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !7787
  %19 = load i1, ptr %retval, align 1, !dbg !7787
  ret i1 %19, !dbg !7787
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7788 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !7789 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7793, metadata !DIExpression()), !dbg !7795
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7794, metadata !DIExpression()), !dbg !7796
  %0 = load i32, ptr %size.addr, align 4, !dbg !7797
  %1 = load i64, ptr %count.addr, align 8, !dbg !7799
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #13, !dbg !7800
  ret void, !dbg !7801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7802 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7803 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !7804 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7808, metadata !DIExpression()), !dbg !7811
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7809, metadata !DIExpression()), !dbg !7812
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7810, metadata !DIExpression()), !dbg !7813
  ret void, !dbg !7814
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7815 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6275, !6276, !6277, !6278, !6279, !6280, !6281, !6282}
!llvm.ident = !{!6283}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mincore_walk_ops", scope: !2, file: !3, line: 175, type: !6217, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.mincore.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/mincore\22 -D KBUILD_BASENAME=\22mincore\22 -D KBUILD_MODNAME=\22mincore\22 -D __KBUILD_MODNAME=kmod_mincore -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/mincore.ll mm/mincore.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !358, globals: !6202, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/mincore.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fdb4594aab9e526fd8c1cbef5555f4bf")
!4 = !{!5, !11, !17, !113, !129, !138, !145, !151, !162, !168, !174, !181, !189, !196, !205, !210, !215, !221, !230, !235, !244, !249, !254, !260, !272, !279, !287, !294, !302, !307, !313, !318}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 147, baseType: !7, size: 32, elements: !110)
!18 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !18, line: 135, size: 512, elements: !20)
!20 = !{!21, !25, !27, !29, !33, !34, !50, !108, !109}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !19, file: !18, line: 136, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 137, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !19, file: !18, line: 138, baseType: !28, size: 32, offset: 128)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !19, file: !18, line: 139, baseType: !30, size: 16, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !31, line: 24, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !18, line: 150, baseType: !17, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !19, file: !18, line: 151, baseType: !35, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !18, line: 64, baseType: !37)
!37 = !DISubroutineType(types: !38)
!38 = !{!28, !39, !28, !26, !40, !46}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 61, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !43, line: 16, baseType: !45)
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !31, line: 52, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !43, line: 88, baseType: !49)
!49 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !19, file: !18, line: 152, baseType: !51, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !18, line: 117, size: 256, elements: !53)
!53 = !{!54, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !18, line: 118, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !31, line: 174, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 172, size: 32, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !56, file: !31, line: 173, baseType: !28, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !52, file: !18, line: 119, baseType: !60, size: 192, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !61, line: 41, baseType: !62)
!61 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !61, line: 37, size: 192, elements: !63)
!63 = !{!64, !102}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !62, file: !61, line: 38, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !66, line: 29, baseType: !67)
!66 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !66, line: 17, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 18, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 18, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !70, file: !66, line: 19, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !74, line: 14, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !73, file: !74, line: 15, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !78, line: 44, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !78, line: 14, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !78, line: 15, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !78, line: 15, size: 32, elements: !83)
!83 = !{!84, !85, !95}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !78, line: 16, baseType: !55, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 24, baseType: !86, size: 16)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 24, size: 16, elements: !87)
!87 = !{!88, !94}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !86, file: !78, line: 25, baseType: !89, size: 8)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !90, line: 17, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !86, file: !78, line: 26, baseType: !89, size: 8, offset: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 28, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 28, size: 32, elements: !97)
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !96, file: !78, line: 29, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !90, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !96, file: !78, line: 30, baseType: !99, size: 16, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !62, file: !61, line: 39, baseType: !103, size: 128, offset: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !31, line: 190, size: 128, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !31, line: 191, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !31, line: 191, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !19, file: !18, line: 153, baseType: !26, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !19, file: !18, line: 154, baseType: !26, size: 64, offset: 448)
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!112 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !114, line: 1325, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!116 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!117 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!118 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!119 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!120 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!121 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!122 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!123 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!124 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!125 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!126 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!127 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!128 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !130, line: 51, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!133 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!134 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!135 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!136 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!137 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !139, line: 312, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!140 = !{!141, !142, !143, !144}
!141 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!142 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!143 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!144 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !146, line: 26, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!149 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!150 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !152, line: 253, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161}
!154 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!155 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!156 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!157 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!158 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!159 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!160 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!161 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !152, line: 158, baseType: !7, size: 32, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!165 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!166 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!167 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !169, line: 45, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!172 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!173 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !175, line: 487, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!178 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!179 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!180 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !182, line: 620, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!185 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!186 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!187 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!188 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !182, line: 597, baseType: !28, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!192 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!193 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!194 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!195 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !175, line: 547, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204}
!198 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!200 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!201 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!202 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!203 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!204 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !175, line: 564, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!208 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !175, line: 577, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!213 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !175, line: 503, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220}
!217 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!218 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!219 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!220 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !222, line: 593, baseType: !28, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!223 = !{!224, !225, !226, !227, !228, !229}
!224 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!225 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!226 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!227 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!228 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!229 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !130, line: 29, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!233 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!234 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !130, line: 38, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243}
!237 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!238 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!239 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!240 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!241 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!242 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!243 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !245, line: 32, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!246 = !{!247, !248}
!247 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!248 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !250, line: 2052, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!251 = !{!252, !253}
!252 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!253 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !255, line: 54, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "USRQUOTA", value: 0)
!258 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!259 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !261, line: 44, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271}
!263 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!264 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!265 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!266 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!267 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!268 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!269 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!270 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!271 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !273, line: 15, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!274 = !{!275, !276, !277, !278}
!275 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!276 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!277 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!278 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !280, line: 68, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!283 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!284 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!285 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!286 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !288, line: 51, baseType: !7, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!289 = !{!290, !291, !292, !293}
!290 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!291 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!292 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!293 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !295, line: 9, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!296 = !{!297, !298, !299, !300, !301}
!297 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!298 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!299 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!300 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!301 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 10, baseType: !7, size: 32, elements: !304)
!303 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!304 = !{!305, !306}
!305 = !DIEnumerator(name: "false", value: 0)
!306 = !DIEnumerator(name: "true", value: 1)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_walk_action", file: !308, line: 86, baseType: !7, size: 32, elements: !309)
!308 = !DIFile(filename: "./include/linux/pagewalk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0832a2ba9a444486d82c67d2c8dc1bb1")
!309 = !{!310, !311, !312}
!310 = !DIEnumerator(name: "ACTION_SUBTREE", value: 0)
!311 = !DIEnumerator(name: "ACTION_CONTINUE", value: 1)
!312 = !DIEnumerator(name: "ACTION_AGAIN", value: 2)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_walk_lock", file: !308, line: 10, baseType: !7, size: 32, elements: !314)
!314 = !{!315, !316, !317}
!315 = !DIEnumerator(name: "PGWALK_RDLOCK", value: 0)
!316 = !DIEnumerator(name: "PGWALK_WRLOCK", value: 1)
!317 = !DIEnumerator(name: "PGWALK_WRLOCK_VERIFY", value: 2)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !319, line: 100, baseType: !7, size: 32, elements: !320)
!319 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!321 = !DIEnumerator(name: "PG_locked", value: 0)
!322 = !DIEnumerator(name: "PG_writeback", value: 1)
!323 = !DIEnumerator(name: "PG_referenced", value: 2)
!324 = !DIEnumerator(name: "PG_uptodate", value: 3)
!325 = !DIEnumerator(name: "PG_dirty", value: 4)
!326 = !DIEnumerator(name: "PG_lru", value: 5)
!327 = !DIEnumerator(name: "PG_head", value: 6)
!328 = !DIEnumerator(name: "PG_waiters", value: 7)
!329 = !DIEnumerator(name: "PG_active", value: 8)
!330 = !DIEnumerator(name: "PG_workingset", value: 9)
!331 = !DIEnumerator(name: "PG_error", value: 10)
!332 = !DIEnumerator(name: "PG_slab", value: 11)
!333 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!334 = !DIEnumerator(name: "PG_arch_1", value: 13)
!335 = !DIEnumerator(name: "PG_reserved", value: 14)
!336 = !DIEnumerator(name: "PG_private", value: 15)
!337 = !DIEnumerator(name: "PG_private_2", value: 16)
!338 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!339 = !DIEnumerator(name: "PG_reclaim", value: 18)
!340 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!341 = !DIEnumerator(name: "PG_unevictable", value: 20)
!342 = !DIEnumerator(name: "PG_mlocked", value: 21)
!343 = !DIEnumerator(name: "PG_uncached", value: 22)
!344 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!345 = !DIEnumerator(name: "PG_readahead", value: 18)
!346 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!347 = !DIEnumerator(name: "PG_checked", value: 12)
!348 = !DIEnumerator(name: "PG_swapcache", value: 12)
!349 = !DIEnumerator(name: "PG_fscache", value: 16)
!350 = !DIEnumerator(name: "PG_pinned", value: 12)
!351 = !DIEnumerator(name: "PG_savepinned", value: 4)
!352 = !DIEnumerator(name: "PG_foreign", value: 12)
!353 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!354 = !DIEnumerator(name: "PG_isolated", value: 18)
!355 = !DIEnumerator(name: "PG_reported", value: 3)
!356 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!357 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!358 = !{!7, !45, !41, !359, !28, !26, !360, !361, !362, !363, !6195, !6198, !1956, !6201, !4309}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 154, baseType: !7)
!361 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !365, line: 746, size: 58368, elements: !366)
!365 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!366 = !{!367, !377, !378, !379, !385, !386, !387, !388, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !471, !482, !583, !587, !590, !621, !622, !623, !624, !635, !637, !638, !639, !640, !641, !642, !653, !654, !657, !658, !659, !660, !661, !662, !663, !664, !671, !672, !679, !680, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5368, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5411, !5417, !5418, !5419, !5420, !5421, !5423, !5426, !5433, !5438, !5441, !5444, !5447, !5477, !5675, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5713, !5714, !5715, !5724, !5732, !5733, !5734, !5735, !5736, !5741, !5742, !5743, !5746, !5747, !5750, !5753, !5758, !5765, !5768, !5769, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5868, !5871, !5872, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5915, !5916, !5922, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !6004, !6006, !6007, !6008, !6009, !6010, !6011, !6014, !6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6028, !6029, !6030}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !364, file: !365, line: 752, baseType: !368, size: 192)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !369, line: 56, size: 192, elements: !370)
!369 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!370 = !{!371, !372, !373, !376}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !369, line: 57, baseType: !45, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !368, file: !369, line: 58, baseType: !45, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !368, file: !369, line: 59, baseType: !374, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !90, line: 21, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !92, line: 27, baseType: !7)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !368, file: !369, line: 61, baseType: !374, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !364, file: !365, line: 754, baseType: !7, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !364, file: !365, line: 767, baseType: !26, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !364, file: !365, line: 768, baseType: !380, size: 32, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !381, line: 113, baseType: !382)
!381 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !381, line: 111, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !382, file: !381, line: 112, baseType: !55, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !365, line: 770, baseType: !7, size: 32, offset: 352)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !364, file: !365, line: 771, baseType: !7, size: 32, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !364, file: !365, line: 774, baseType: !28, size: 32, offset: 416)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !364, file: !365, line: 775, baseType: !389, size: 128, offset: 448)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !390, line: 58, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!391 = !{!392, !398, !403, !404}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !389, file: !390, line: 59, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !394, line: 60, size: 64, elements: !395)
!394 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !394, line: 61, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 60, baseType: !399, size: 32, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 60, size: 32, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !399, file: !390, line: 61, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !399, file: !390, line: 62, baseType: !55, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !389, file: !390, line: 65, baseType: !99, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !389, file: !390, line: 65, baseType: !99, size: 16, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !364, file: !365, line: 776, baseType: !7, size: 32, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !364, file: !365, line: 777, baseType: !45, size: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !364, file: !365, line: 778, baseType: !363, size: 64, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !364, file: !365, line: 787, baseType: !28, size: 32, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !364, file: !365, line: 788, baseType: !28, size: 32, offset: 800)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !364, file: !365, line: 790, baseType: !28, size: 32, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !364, file: !365, line: 792, baseType: !28, size: 32, offset: 864)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !364, file: !365, line: 793, baseType: !28, size: 32, offset: 896)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !364, file: !365, line: 794, baseType: !28, size: 32, offset: 928)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !364, file: !365, line: 795, baseType: !7, size: 32, offset: 960)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !364, file: !365, line: 797, baseType: !416, size: 2048, offset: 1024)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !365, line: 551, size: 2048, elements: !417)
!417 = !{!418, !423, !431, !435, !436, !437, !438, !439, !440, !441, !442, !445, !446, !447, !448, !450, !453, !454, !455}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !416, file: !365, line: 553, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !365, line: 411, size: 128, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !419, file: !365, line: 412, baseType: !45, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !419, file: !365, line: 413, baseType: !374, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !416, file: !365, line: 554, baseType: !424, size: 192, align: 64, offset: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !425, line: 5, size: 192, align: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!426 = !{!427, !428, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !424, file: !425, line: 6, baseType: !45, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !424, file: !425, line: 7, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !424, file: !425, line: 8, baseType: !429, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !416, file: !365, line: 555, baseType: !432, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !90, line: 23, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !434)
!434 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !416, file: !365, line: 556, baseType: !432, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !416, file: !365, line: 558, baseType: !103, size: 128, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !416, file: !365, line: 559, baseType: !7, size: 32, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !416, file: !365, line: 561, baseType: !432, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !416, file: !365, line: 562, baseType: !432, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !416, file: !365, line: 563, baseType: !432, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !416, file: !365, line: 564, baseType: !432, size: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !416, file: !365, line: 565, baseType: !443, size: 64, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !90, line: 22, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !92, line: 30, baseType: !49)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !416, file: !365, line: 566, baseType: !432, size: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !416, file: !365, line: 568, baseType: !432, size: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !416, file: !365, line: 571, baseType: !28, size: 32, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !416, file: !365, line: 572, baseType: !449, size: 64, offset: 1152)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !416, file: !365, line: 574, baseType: !451, size: 64, offset: 1216)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !365, line: 49, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !416, file: !365, line: 576, baseType: !451, size: 64, offset: 1280)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !416, file: !365, line: 578, baseType: !45, size: 64, offset: 1344)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !416, file: !365, line: 588, baseType: !456, size: 512, align: 512, offset: 1536)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !365, line: 497, size: 512, align: 512, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !456, file: !365, line: 498, baseType: !432, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !456, file: !365, line: 499, baseType: !432, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !456, file: !365, line: 500, baseType: !432, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !456, file: !365, line: 501, baseType: !374, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !456, file: !365, line: 502, baseType: !374, size: 32, offset: 224)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !456, file: !365, line: 503, baseType: !45, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !456, file: !365, line: 504, baseType: !45, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !456, file: !365, line: 505, baseType: !45, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !456, file: !365, line: 506, baseType: !467, size: 64, align: 64, offset: 448)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !365, line: 445, size: 64, align: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !467, file: !365, line: 446, baseType: !7, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !467, file: !365, line: 447, baseType: !7, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !364, file: !365, line: 798, baseType: !472, size: 384, offset: 3072)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !365, line: 592, size: 384, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !472, file: !365, line: 593, baseType: !103, size: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !472, file: !365, line: 594, baseType: !45, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !472, file: !365, line: 595, baseType: !45, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !472, file: !365, line: 596, baseType: !7, size: 32, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !472, file: !365, line: 597, baseType: !32, size: 16, offset: 288)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !472, file: !365, line: 598, baseType: !32, size: 16, offset: 304)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !472, file: !365, line: 600, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !364, file: !365, line: 799, baseType: !483, size: 1792, offset: 3456)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !365, line: 610, size: 1792, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !580, !581}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !483, file: !365, line: 611, baseType: !424, size: 192, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !483, file: !365, line: 618, baseType: !432, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !483, file: !365, line: 619, baseType: !432, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !483, file: !365, line: 620, baseType: !432, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !483, file: !365, line: 621, baseType: !432, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !483, file: !365, line: 622, baseType: !432, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !483, file: !365, line: 629, baseType: !443, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !483, file: !365, line: 630, baseType: !432, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !365, line: 631, baseType: !7, size: 32, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !483, file: !365, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !483, file: !365, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !483, file: !365, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !483, file: !365, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !483, file: !365, line: 662, baseType: !499, size: 512, offset: 704)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !500)
!500 = !{!501, !509, !510, !515, !576, !577, !578, !579}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !6, line: 119, baseType: !502, size: 256)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !503, line: 9, size: 256, elements: !504)
!503 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !503, line: 10, baseType: !424, size: 192, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !502, file: !503, line: 11, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !508, line: 29, baseType: !443)
!508 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !499, file: !6, line: 120, baseType: !507, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !499, file: !6, line: 121, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!5, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !499, file: !6, line: 122, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !518)
!518 = !{!519, !545, !546, !549, !559, !560, !571, !575}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !517, file: !6, line: 160, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !522)
!522 = !{!523, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !521, file: !6, line: 216, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !74, line: 23, baseType: !73)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !521, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !521, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !521, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !521, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !521, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !521, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !521, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !521, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !521, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !521, file: !6, line: 227, baseType: !32, size: 16, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !521, file: !6, line: 228, baseType: !32, size: 16, offset: 208)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !521, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !521, file: !6, line: 235, baseType: !507, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !521, file: !6, line: 236, baseType: !514, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !521, file: !6, line: 237, baseType: !507, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !521, file: !6, line: 238, baseType: !514, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !521, file: !6, line: 239, baseType: !542, size: 4096, align: 512, offset: 512)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 4096, align: 512, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !517, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !517, file: !6, line: 162, baseType: !547, size: 32, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !31, line: 32, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !43, line: 96, baseType: !28)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !517, file: !6, line: 163, baseType: !550, size: 32, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !551, line: 274, baseType: !552)
!551 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !551, line: 274, size: 32, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !552, file: !551, line: 274, baseType: !555, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !551, line: 69, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !551, line: 64, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !556, file: !551, line: 65, baseType: !7, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !517, file: !6, line: 164, baseType: !514, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !517, file: !6, line: 165, baseType: !561, size: 128, offset: 256)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !503, line: 14, size: 128, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !503, line: 15, baseType: !564, size: 128)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !425, line: 26, size: 128, elements: !565)
!565 = !{!566, !570}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !564, file: !425, line: 27, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !425, line: 12, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !567, file: !425, line: 13, baseType: !429, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !564, file: !425, line: 28, baseType: !429, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !517, file: !6, line: 166, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!507}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !517, file: !6, line: 167, baseType: !507, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !499, file: !6, line: 123, baseType: !89, size: 8, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !499, file: !6, line: 124, baseType: !89, size: 8, offset: 456)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !499, file: !6, line: 125, baseType: !89, size: 8, offset: 464)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !499, file: !6, line: 126, baseType: !89, size: 8, offset: 472)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !483, file: !365, line: 671, baseType: !499, size: 512, offset: 1216)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !483, file: !365, line: 679, baseType: !582, size: 64, offset: 1728)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !364, file: !365, line: 800, baseType: !584, size: 64, offset: 5248)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !365, line: 800, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !364, file: !365, line: 809, baseType: !588, size: 64, offset: 5312)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !365, line: 70, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !364, file: !365, line: 825, baseType: !591, size: 2048, align: 512, offset: 5632)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !365, line: 509, size: 2048, align: 512, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !591, file: !365, line: 511, baseType: !432, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !591, file: !365, line: 512, baseType: !432, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !591, file: !365, line: 513, baseType: !432, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !591, file: !365, line: 514, baseType: !432, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !591, file: !365, line: 515, baseType: !432, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !591, file: !365, line: 516, baseType: !432, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !591, file: !365, line: 518, baseType: !432, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !591, file: !365, line: 519, baseType: !432, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !591, file: !365, line: 520, baseType: !443, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !591, file: !365, line: 522, baseType: !432, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !591, file: !365, line: 523, baseType: !432, size: 64, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !591, file: !365, line: 524, baseType: !443, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !591, file: !365, line: 526, baseType: !443, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !591, file: !365, line: 527, baseType: !432, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !591, file: !365, line: 529, baseType: !432, size: 64, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !591, file: !365, line: 530, baseType: !432, size: 64, offset: 960)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !591, file: !365, line: 531, baseType: !432, size: 64, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !591, file: !365, line: 532, baseType: !432, size: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !591, file: !365, line: 533, baseType: !432, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !591, file: !365, line: 535, baseType: !432, size: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !591, file: !365, line: 536, baseType: !432, size: 64, offset: 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !591, file: !365, line: 537, baseType: !432, size: 64, offset: 1344)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !591, file: !365, line: 538, baseType: !432, size: 64, offset: 1408)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !591, file: !365, line: 539, baseType: !432, size: 64, offset: 1472)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !591, file: !365, line: 540, baseType: !432, size: 64, offset: 1536)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !591, file: !365, line: 541, baseType: !432, size: 64, offset: 1600)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !591, file: !365, line: 542, baseType: !432, size: 64, offset: 1664)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !591, file: !365, line: 543, baseType: !432, size: 64, offset: 1728)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !364, file: !365, line: 833, baseType: !7, size: 32, offset: 7680)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !364, file: !365, line: 836, baseType: !7, size: 32, offset: 7712)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !364, file: !365, line: 837, baseType: !28, size: 32, offset: 7744)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !364, file: !365, line: 838, baseType: !625, size: 64, offset: 7808)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !628, line: 19, baseType: !629)
!628 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !628, line: 19, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !629, file: !628, line: 19, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 1)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !364, file: !365, line: 839, baseType: !636, size: 64, offset: 7872)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !364, file: !365, line: 840, baseType: !627, size: 64, offset: 7936)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !364, file: !365, line: 841, baseType: !26, size: 64, offset: 8000)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !364, file: !365, line: 843, baseType: !32, size: 16, offset: 8064)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !364, file: !365, line: 845, baseType: !32, size: 16, offset: 8080)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !364, file: !365, line: 848, baseType: !28, size: 32, offset: 8096)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !364, file: !365, line: 849, baseType: !643, size: 32, offset: 8128)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !365, line: 718, size: 32, elements: !644)
!644 = !{!645, !652}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !643, file: !365, line: 724, baseType: !646, size: 32)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !365, line: 719, size: 32, elements: !647)
!647 = !{!648, !649, !650, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !646, file: !365, line: 720, baseType: !89, size: 8)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !646, file: !365, line: 721, baseType: !89, size: 8, offset: 8)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !646, file: !365, line: 722, baseType: !89, size: 8, offset: 16)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !646, file: !365, line: 723, baseType: !89, size: 8, offset: 24)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !643, file: !365, line: 725, baseType: !374, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !364, file: !365, line: 850, baseType: !103, size: 128, offset: 8192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !364, file: !365, line: 851, baseType: !655, size: 64, offset: 8320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !365, line: 60, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !364, file: !365, line: 855, baseType: !45, size: 64, offset: 8384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !364, file: !365, line: 856, baseType: !89, size: 8, offset: 8448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !364, file: !365, line: 857, baseType: !89, size: 8, offset: 8456)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !364, file: !365, line: 858, baseType: !28, size: 32, offset: 8480)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !364, file: !365, line: 859, baseType: !103, size: 128, offset: 8512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !364, file: !365, line: 860, baseType: !28, size: 32, offset: 8640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !364, file: !365, line: 861, baseType: !103, size: 128, offset: 8704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !364, file: !365, line: 873, baseType: !665, size: 256, offset: 8832)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !365, line: 376, size: 256, elements: !666)
!666 = !{!667, !668, !669, !670}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !665, file: !365, line: 381, baseType: !45, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !665, file: !365, line: 384, baseType: !434, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !665, file: !365, line: 389, baseType: !434, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !665, file: !365, line: 392, baseType: !434, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !364, file: !365, line: 875, baseType: !103, size: 128, offset: 9088)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !364, file: !365, line: 877, baseType: !673, size: 320, offset: 9216)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !674, line: 86, size: 320, elements: !675)
!674 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !673, file: !674, line: 87, baseType: !28, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !673, file: !674, line: 88, baseType: !103, size: 128, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !673, file: !674, line: 89, baseType: !103, size: 128, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !364, file: !365, line: 878, baseType: !424, size: 192, align: 64, offset: 9536)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !364, file: !365, line: 881, baseType: !681, size: 64, offset: 9728)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !114, line: 733, size: 10240, elements: !683)
!683 = !{!684, !5282}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !114, line: 734, baseType: !685, size: 10240)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !114, line: 734, size: 10240, elements: !686)
!686 = !{!687, !691, !705, !5162, !5163, !5164, !5165, !5166, !5167, !5174, !5175, !5176, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5215, !5216, !5219, !5262, !5263, !5264, !5267, !5268, !5269, !5272, !5273, !5274, !5280, !5281}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !114, line: 739, baseType: !688, size: 512, align: 512)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !114, line: 739, size: 512, align: 512, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !688, file: !114, line: 747, baseType: !55, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !685, file: !114, line: 750, baseType: !692, size: 128, offset: 512)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !693, line: 218, size: 128, elements: !694)
!693 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!694 = !{!695, !703, !704}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !693, line: 219, baseType: !696, size: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !693, line: 219, size: 32, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !696, file: !693, line: 220, baseType: !65, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !696, file: !693, line: 221, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !693, line: 197, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 197, elements: !702)
!702 = !{}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !692, file: !693, line: 223, baseType: !7, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !692, file: !693, line: 224, baseType: !26, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !685, file: !114, line: 752, baseType: !706, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!45, !709, !45, !45, !45, !45}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !250, line: 994, size: 1856, align: 64, elements: !711)
!711 = !{!712, !726, !727, !729, !736, !748, !749, !750, !1130, !1208, !1217, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161}
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !250, line: 995, baseType: !713, size: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !250, line: 995, size: 128, elements: !714)
!714 = !{!715, !716, !725}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !713, file: !250, line: 996, baseType: !393, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !713, file: !250, line: 997, baseType: !717, size: 128, align: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !31, line: 232, size: 128, align: 64, elements: !718)
!718 = !{!719, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !31, line: 233, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !717, file: !31, line: 234, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !720}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !713, file: !250, line: 998, baseType: !7, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !710, file: !250, line: 1005, baseType: !65, size: 32, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !710, file: !250, line: 1006, baseType: !728, size: 32, offset: 160)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !31, line: 156, baseType: !7)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !710, file: !250, line: 1007, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !731, line: 13, baseType: !732)
!731 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !31, line: 181, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 179, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !733, file: !31, line: 180, baseType: !443, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !710, file: !250, line: 1008, baseType: !737, size: 256, offset: 256)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !738, line: 66, size: 256, elements: !739)
!738 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!739 = !{!740, !741, !742, !747}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !737, file: !738, line: 67, baseType: !730, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !737, file: !738, line: 68, baseType: !524, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !737, file: !738, line: 70, baseType: !743, size: 32, offset: 96)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !744, line: 15, size: 32, elements: !745)
!744 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !743, file: !744, line: 20, baseType: !55, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !737, file: !738, line: 72, baseType: !103, size: 128, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !710, file: !250, line: 1009, baseType: !47, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !710, file: !250, line: 1010, baseType: !7, size: 32, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !710, file: !250, line: 1011, baseType: !751, size: 256, offset: 640)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !250, line: 948, size: 256, elements: !752)
!752 = !{!753, !776, !1126, !1127, !1128, !1129}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !751, file: !250, line: 949, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !755, line: 34, baseType: !756)
!755 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 25, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !756, file: !755, line: 26, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !760, line: 27, baseType: !761)
!760 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !760, line: 13, size: 64, elements: !762)
!762 = !{!763, !775}
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !760, line: 14, baseType: !764, size: 32)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !760, line: 14, size: 32, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !764, file: !760, line: 15, baseType: !55, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 16, baseType: !768, size: 32)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 16, size: 32, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !768, file: !760, line: 18, baseType: !89, size: 8)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !768, file: !760, line: 19, baseType: !772, size: 24, offset: 8)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 24, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 3)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !761, file: !760, line: 26, baseType: !77, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !751, file: !250, line: 950, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !295, line: 59, size: 768, elements: !779)
!779 = !{!780, !781, !782, !783, !796, !797, !798, !799}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !778, file: !295, line: 61, baseType: !380, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !778, file: !295, line: 62, baseType: !7, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !778, file: !295, line: 63, baseType: !65, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !778, file: !295, line: 65, baseType: !784, size: 256, offset: 128)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 256, elements: !794)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !31, line: 194, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !785, file: !31, line: 195, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !31, line: 198, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !31, line: 199, baseType: !788, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !789, file: !31, line: 199, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!794 = !{!795}
!795 = !DISubrange(count: 4)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !778, file: !295, line: 66, baseType: !785, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !778, file: !295, line: 68, baseType: !60, size: 192, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !778, file: !295, line: 69, baseType: !717, size: 128, align: 64, offset: 640)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !778, file: !295, line: 70, baseType: !800, offset: 768)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, elements: !1124)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !295, line: 54, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !801, file: !295, line: 55, baseType: !28, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !801, file: !295, line: 56, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !807, line: 26, size: 1152, elements: !808)
!807 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!808 = !{!809, !822, !823, !824, !825, !829, !830, !831, !834, !1120, !1121, !1122, !1123}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !806, file: !807, line: 27, baseType: !810, size: 192)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !811, line: 19, size: 192, elements: !812)
!811 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!812 = !{!813, !820, !821}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !810, file: !811, line: 20, baseType: !814, size: 128)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !815, line: 296, size: 128, elements: !816)
!815 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !814, file: !815, line: 297, baseType: !65, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !814, file: !815, line: 299, baseType: !360, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !814, file: !815, line: 300, baseType: !26, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !810, file: !811, line: 21, baseType: !7, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !810, file: !811, line: 22, baseType: !7, size: 32, offset: 160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !806, file: !807, line: 28, baseType: !717, size: 128, align: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !806, file: !807, line: 29, baseType: !7, size: 32, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !806, file: !807, line: 30, baseType: !363, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !806, file: !807, line: 31, baseType: !826, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !828, line: 11, flags: DIFlagFwdDecl)
!828 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !806, file: !807, line: 32, baseType: !7, size: 32, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !806, file: !807, line: 33, baseType: !805, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !806, file: !807, line: 35, baseType: !832, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !807, line: 17, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !806, file: !807, line: 37, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !837, line: 68, size: 4800, elements: !838)
!837 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!838 = !{!839, !861, !862, !863, !864, !865, !873, !880, !891, !892, !895, !896, !1018, !1019, !1031, !1101, !1102, !1116, !1118}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !836, file: !837, line: 69, baseType: !840, size: 576)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !837, line: 23, size: 576, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !840, file: !837, line: 24, baseType: !374, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !837, line: 25, baseType: !844, size: 512, offset: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !837, line: 25, size: 512, elements: !845)
!845 = !{!846, !855}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !844, file: !837, line: 26, baseType: !847, size: 480)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 480, elements: !853)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !837, line: 17, size: 96, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !848, file: !837, line: 18, baseType: !374, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !848, file: !837, line: 19, baseType: !374, size: 32, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !848, file: !837, line: 20, baseType: !374, size: 32, offset: 64)
!853 = !{!854}
!854 = !DISubrange(count: 5)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !837, line: 27, baseType: !856, size: 128)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !837, line: 27, size: 128, elements: !857)
!857 = !{!858, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !856, file: !837, line: 28, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !856, file: !837, line: 29, baseType: !859, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !836, file: !837, line: 70, baseType: !840, size: 576, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !836, file: !837, line: 71, baseType: !840, size: 576, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !836, file: !837, line: 72, baseType: !835, size: 64, offset: 1728)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !836, file: !837, line: 73, baseType: !28, size: 32, offset: 1792)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !836, file: !837, line: 74, baseType: !866, size: 32, offset: 1824)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !867, line: 23, baseType: !868)
!867 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !867, line: 21, size: 32, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !868, file: !867, line: 22, baseType: !871, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !31, line: 37, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !43, line: 49, baseType: !7)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !836, file: !837, line: 75, baseType: !874, size: 32, offset: 1856)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !867, line: 28, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !867, line: 26, size: 32, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !875, file: !867, line: 27, baseType: !878, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !31, line: 38, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !43, line: 50, baseType: !7)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !836, file: !837, line: 76, baseType: !881, size: 192, offset: 1920)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !882, line: 9, size: 192, elements: !883)
!882 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!883 = !{!884, !885, !889, !890}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !881, file: !882, line: 10, baseType: !730, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !881, file: !882, line: 11, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !882, line: 7, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !881, file: !882, line: 12, baseType: !7, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !881, file: !882, line: 13, baseType: !380, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !837, line: 77, baseType: !45, size: 64, offset: 2112)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !836, file: !837, line: 80, baseType: !893, size: 8, offset: 2176)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !894)
!894 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !836, file: !837, line: 88, baseType: !103, size: 128, offset: 2240)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !836, file: !837, line: 89, baseType: !897, size: 64, offset: 2368)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !899, line: 195, size: 1728, elements: !900)
!899 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!900 = !{!901, !902, !907, !912, !921, !924, !925, !932, !933, !934, !935, !938, !939, !940, !942, !943, !982, !1003}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !898, file: !899, line: 196, baseType: !380, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !898, file: !899, line: 197, baseType: !903, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !899, line: 28, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 104, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !90, line: 20, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !92, line: 26, baseType: !28)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 198, baseType: !908, size: 192, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 198, size: 192, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !908, file: !899, line: 199, baseType: !103, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !908, file: !899, line: 200, baseType: !424, size: 192, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !898, file: !899, line: 205, baseType: !913, size: 320, offset: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !914, line: 48, size: 320, elements: !915)
!914 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!915 = !{!916, !917, !918, !919, !920}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !913, file: !914, line: 49, baseType: !730, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !913, file: !914, line: 55, baseType: !730, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !913, file: !914, line: 57, baseType: !743, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !913, file: !914, line: 59, baseType: !524, size: 32, offset: 160)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !913, file: !914, line: 60, baseType: !103, size: 128, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !898, file: !899, line: 206, baseType: !922, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !899, line: 206, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !898, file: !899, line: 207, baseType: !26, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 208, baseType: !926, size: 64, offset: 704)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 208, size: 64, elements: !927)
!927 = !{!928, !931}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !926, file: !899, line: 209, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !930, line: 8, baseType: !444)
!930 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!931 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !926, file: !899, line: 210, baseType: !929, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !898, file: !899, line: 212, baseType: !929, size: 64, offset: 768)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !898, file: !899, line: 213, baseType: !866, size: 32, offset: 832)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !898, file: !899, line: 214, baseType: !874, size: 32, offset: 864)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !898, file: !899, line: 215, baseType: !936, size: 32, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !899, line: 31, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 110, baseType: !374)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !898, file: !899, line: 216, baseType: !32, size: 16, offset: 928)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !898, file: !899, line: 217, baseType: !32, size: 16, offset: 944)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !898, file: !899, line: 221, baseType: !941, size: 16, offset: 960)
!941 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !899, line: 228, baseType: !45, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 245, baseType: !944, size: 320, offset: 1088)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 245, size: 320, elements: !945)
!945 = !{!946, !973}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !944, file: !899, line: 246, baseType: !947, size: 320)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !899, line: 114, size: 320, elements: !948)
!948 = !{!949, !950, !962, !965, !972}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !947, file: !899, line: 116, baseType: !45, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !899, line: 117, baseType: !951, size: 64, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !899, line: 117, size: 64, elements: !952)
!952 = !{!953, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !899, line: 118, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !899, line: 118, size: 64, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !954, file: !899, line: 120, baseType: !99, size: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !954, file: !899, line: 121, baseType: !958, size: 48, offset: 16)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 48, elements: !959)
!959 = !{!960}
!960 = !DISubrange(count: 6)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !951, file: !899, line: 127, baseType: !45, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !947, file: !899, line: 129, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !899, line: 102, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !947, file: !899, line: 130, baseType: !966, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !899, line: 108, size: 192, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !967, file: !899, line: 109, baseType: !717, size: 128, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !967, file: !899, line: 110, baseType: !380, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !967, file: !899, line: 111, baseType: !893, size: 8, offset: 160)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !947, file: !899, line: 131, baseType: !22, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !899, line: 247, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !899, line: 247, size: 320, elements: !975)
!975 = !{!976, !977, !978, !979, !980}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !974, file: !899, line: 248, baseType: !45, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !974, file: !899, line: 249, baseType: !45, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !974, file: !899, line: 250, baseType: !963, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !974, file: !899, line: 251, baseType: !966, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !974, file: !899, line: 252, baseType: !981, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 260, baseType: !983, size: 256, offset: 1408)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 260, size: 256, elements: !984)
!984 = !{!985, !991}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !983, file: !899, line: 261, baseType: !986, size: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !899, line: 134, size: 256, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !986, file: !899, line: 135, baseType: !26, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !986, file: !899, line: 136, baseType: !990, size: 256)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !794)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !899, line: 262, baseType: !992, size: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !899, line: 262, size: 256, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !992, file: !899, line: 264, baseType: !103, size: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !992, file: !899, line: 265, baseType: !996, size: 128, offset: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !997, line: 22, size: 128, elements: !998)
!997 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!998 = !{!999, !1002}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !996, file: !997, line: 23, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !997, line: 23, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !996, file: !997, line: 24, baseType: !45, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !898, file: !899, line: 280, baseType: !1004, size: 64, offset: 1664)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !899, line: 176, size: 192, elements: !1006)
!1006 = !{!1007, !1016, !1017}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1005, file: !899, line: 177, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !899, line: 171, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!28, !897, !1012, !1014, !897}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1005, file: !899, line: 178, baseType: !897, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1005, file: !899, line: 179, baseType: !963, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !836, file: !837, line: 90, baseType: !913, size: 320, offset: 2432)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !836, file: !837, line: 97, baseType: !1020, size: 256, offset: 2752)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1021, line: 98, size: 256, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1020, file: !1021, line: 99, baseType: !730, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1020, file: !1021, line: 100, baseType: !103, size: 128, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1020, file: !1021, line: 101, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1021, line: 21, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !836, file: !837, line: 99, baseType: !1032, size: 768, offset: 3008)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !18, line: 199, size: 768, elements: !1033)
!1033 = !{!1034, !1039}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1032, file: !18, line: 200, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!28, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1032, file: !18, line: 201, baseType: !1040, size: 704, offset: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !18, line: 193, size: 704, elements: !1041)
!1041 = !{!1042, !1100}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1040, file: !18, line: 195, baseType: !1043, size: 640)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !18, line: 173, size: 640, elements: !1044)
!1044 = !{!1045, !1057, !1069, !1070, !1090, !1091, !1093, !1099}
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !18, line: 174, baseType: !1046, size: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !18, line: 174, size: 192, elements: !1047)
!1047 = !{!1048, !1056}
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !18, line: 175, baseType: !1049, size: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1046, file: !18, line: 175, size: 192, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1049, file: !18, line: 176, baseType: !39, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1049, file: !18, line: 177, baseType: !28, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1049, file: !18, line: 178, baseType: !28, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1049, file: !18, line: 179, baseType: !28, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1049, file: !18, line: 180, baseType: !28, size: 32, offset: 160)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1046, file: !18, line: 182, baseType: !717, size: 128, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1043, file: !18, line: 184, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1060, line: 26, size: 256, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1059, file: !1060, line: 27, baseType: !7, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1059, file: !1060, line: 28, baseType: !1064, size: 192, offset: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1065, line: 43, size: 192, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !1065, line: 44, baseType: !524, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1064, file: !1065, line: 45, baseType: !103, size: 128, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1043, file: !18, line: 185, baseType: !39, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1043, file: !18, line: 186, baseType: !1071, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !18, line: 204, size: 960, elements: !1073)
!1073 = !{!1074, !1075, !1079, !1086}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1072, file: !18, line: 205, baseType: !1032, size: 768)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1072, file: !18, line: 206, baseType: !1076, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1038, !1071}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1072, file: !18, line: 207, baseType: !1080, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1072, file: !18, line: 209, baseType: !1087, size: 64, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!28, !1083, !39}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1043, file: !18, line: 187, baseType: !1038, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1043, file: !18, line: 188, baseType: !1092, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1043, file: !18, line: 189, baseType: !1094, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !18, line: 157, size: 256, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1095, file: !18, line: 158, baseType: !424, size: 192, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1095, file: !18, line: 159, baseType: !1083, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1043, file: !18, line: 190, baseType: !785, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1040, file: !18, line: 196, baseType: !567, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !836, file: !837, line: 100, baseType: !1083, size: 64, offset: 3776)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !836, file: !837, line: 102, baseType: !1103, size: 64, offset: 3840)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !837, line: 107, size: 1152, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1114}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1104, file: !837, line: 108, baseType: !789, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1104, file: !837, line: 109, baseType: !835, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1104, file: !837, line: 110, baseType: !866, size: 32, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1104, file: !837, line: 111, baseType: !55, size: 32, offset: 224)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1104, file: !837, line: 112, baseType: !1111, size: 640, offset: 256)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 640, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 10)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1104, file: !837, line: 113, baseType: !1115, size: 256, offset: 896)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !794)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !836, file: !837, line: 103, baseType: !1117, size: 640, offset: 3904)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 640, elements: !1112)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !836, file: !837, line: 104, baseType: !1119, size: 256, offset: 4544)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 256, elements: !794)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !806, file: !807, line: 38, baseType: !1103, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !806, file: !807, line: 39, baseType: !28, size: 32, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !806, file: !807, line: 40, baseType: !881, size: 192, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !806, file: !807, line: 42, baseType: !28, size: 32, offset: 1088)
!1124 = !{!1125}
!1125 = !DISubrange(count: -1)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !751, file: !250, line: 951, baseType: !294, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !751, file: !250, line: 952, baseType: !866, size: 32, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !751, file: !250, line: 952, baseType: !866, size: 32, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !751, file: !250, line: 953, baseType: !28, size: 32, offset: 224)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !710, file: !250, line: 1012, baseType: !1131, size: 64, offset: 896)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1134, line: 110, size: 1472, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1193, !1194, !1195, !1203}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1133, file: !1134, line: 111, baseType: !730, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1133, file: !1134, line: 112, baseType: !866, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1133, file: !1134, line: 113, baseType: !874, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1133, file: !1134, line: 114, baseType: !866, size: 32, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1133, file: !1134, line: 115, baseType: !874, size: 32, offset: 160)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1133, file: !1134, line: 116, baseType: !866, size: 32, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1133, file: !1134, line: 117, baseType: !874, size: 32, offset: 224)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1133, file: !1134, line: 118, baseType: !866, size: 32, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1133, file: !1134, line: 119, baseType: !874, size: 32, offset: 288)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1133, file: !1134, line: 120, baseType: !7, size: 32, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1133, file: !1134, line: 121, baseType: !1147, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1148, line: 24, baseType: !1149)
!1148 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1148, line: 24, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1149, file: !1148, line: 24, baseType: !432, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1133, file: !1134, line: 122, baseType: !1147, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1133, file: !1134, line: 123, baseType: !1147, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1133, file: !1134, line: 124, baseType: !1147, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1133, file: !1134, line: 125, baseType: !1147, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1133, file: !1134, line: 127, baseType: !93, size: 8, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1133, file: !1134, line: 129, baseType: !897, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1133, file: !1134, line: 130, baseType: !897, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1133, file: !1134, line: 131, baseType: !897, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1133, file: !1134, line: 132, baseType: !897, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1133, file: !1134, line: 135, baseType: !26, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1133, file: !1134, line: 137, baseType: !1163, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1165, line: 14, size: 1088, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1166 = !{!1167, !1168, !1177, !1178, !1179, !1180, !1181, !1182}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1164, file: !1165, line: 15, baseType: !380, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1164, file: !1165, line: 17, baseType: !1169, size: 320, offset: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1170, line: 22, size: 320, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1171 = !{!1172, !1173, !1174, !1175}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1170, line: 23, baseType: !524, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1169, file: !1170, line: 24, baseType: !443, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1169, file: !1170, line: 26, baseType: !103, size: 128, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1169, file: !1170, line: 28, baseType: !1176, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1164, file: !1165, line: 19, baseType: !45, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1164, file: !1165, line: 20, baseType: !730, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1164, file: !1165, line: 23, baseType: !789, size: 128, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1164, file: !1165, line: 24, baseType: !866, size: 32, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1164, file: !1165, line: 29, baseType: !730, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1164, file: !1165, line: 36, baseType: !1183, size: 320, offset: 768)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1184, line: 15, size: 320, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !1184, line: 16, baseType: !524, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1183, file: !1184, line: 18, baseType: !28, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1183, file: !1184, line: 19, baseType: !28, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1183, file: !1184, line: 20, baseType: !28, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1183, file: !1184, line: 21, baseType: !28, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1183, file: !1184, line: 22, baseType: !45, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 23, baseType: !45, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1133, file: !1134, line: 138, baseType: !835, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1133, file: !1134, line: 139, baseType: !1103, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1133, file: !1134, line: 140, baseType: !1196, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1134, line: 25, size: 64, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1197, file: !1134, line: 26, baseType: !55, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1197, file: !1134, line: 27, baseType: !28, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1197, file: !1134, line: 28, baseType: !1202, offset: 64)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, elements: !1124)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !1134, line: 142, baseType: !1204, size: 128, offset: 1344)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !1134, line: 142, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1204, file: !1134, line: 143, baseType: !28, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1204, file: !1134, line: 144, baseType: !717, size: 128, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !710, file: !250, line: 1013, baseType: !1209, size: 256, offset: 960)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !250, line: 970, size: 256, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1209, file: !250, line: 971, baseType: !45, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1209, file: !250, line: 972, baseType: !7, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1209, file: !250, line: 973, baseType: !7, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1209, file: !250, line: 974, baseType: !7, size: 32, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1209, file: !250, line: 975, baseType: !7, size: 32, offset: 160)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1209, file: !250, line: 976, baseType: !47, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !710, file: !250, line: 1014, baseType: !1218, size: 128, offset: 1216)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1219, line: 8, size: 128, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1220 = !{!1221, !5152}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1218, file: !1219, line: 9, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1224, line: 70, size: 256, elements: !1225)
!1224 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1225 = !{!1226, !5149, !5150, !5151}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1223, file: !1224, line: 71, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1229, line: 82, size: 1536, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1230 = !{!1231, !1232, !1237, !1245, !1246, !1261, !5117, !5119, !5132, !5133, !5134, !5135, !5136, !5141, !5142, !5143}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1228, file: !1229, line: 84, baseType: !7, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1228, file: !1229, line: 85, baseType: !1233, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !551, line: 275, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !551, line: 275, size: 32, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1234, file: !551, line: 275, baseType: !555, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1228, file: !1229, line: 86, baseType: !1238, size: 128, offset: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1239, line: 38, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1240 = !{!1241, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1238, file: !1239, line: 39, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1238, file: !1239, line: 39, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1228, file: !1229, line: 87, baseType: !1227, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1228, file: !1229, line: 88, baseType: !1247, size: 128, offset: 256)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1229, line: 49, size: 128, elements: !1248)
!1248 = !{!1249, !1258}
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !1229, line: 50, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !1229, line: 50, size: 64, elements: !1251)
!1251 = !{!1252, !1257}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1229, line: 51, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1229, line: 51, size: 64, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1253, file: !1229, line: 52, baseType: !374, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1253, file: !1229, line: 52, baseType: !374, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1250, file: !1229, line: 54, baseType: !432, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1247, file: !1229, line: 56, baseType: !1259, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1228, file: !1229, line: 89, baseType: !1262, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !250, line: 641, size: 4800, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1274, !1275, !1462, !4932, !4933, !4934, !4935, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !5099, !5102, !5103, !5104, !5113, !5114, !5115, !5116}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1263, file: !250, line: 642, baseType: !30, size: 16)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1263, file: !250, line: 643, baseType: !32, size: 16, offset: 16)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1263, file: !250, line: 644, baseType: !866, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1263, file: !250, line: 645, baseType: !103, size: 128, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1263, file: !250, line: 646, baseType: !874, size: 32, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1263, file: !250, line: 647, baseType: !7, size: 32, offset: 224)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1263, file: !250, line: 650, baseType: !1272, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !250, line: 607, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1263, file: !250, line: 651, baseType: !1272, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1263, file: !250, line: 654, baseType: !1276, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !250, line: 1966, size: 2048, align: 512, elements: !1279)
!1279 = !{!1280, !1284, !1297, !1303, !1307, !1311, !1315, !1319, !1323, !1327, !1331, !1332, !1338, !1342, !1379, !1410, !1417, !1423, !1427, !1431, !1435, !1439, !1443, !1449, !1453}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1278, file: !250, line: 1967, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!1227, !1262, !1227, !7}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1278, file: !250, line: 1968, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!22, !1227, !1262, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1290, line: 10, size: 128, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1291 = !{!1292, !1296}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1289, file: !1290, line: 11, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !26}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1289, file: !1290, line: 12, baseType: !26, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1278, file: !250, line: 1969, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!28, !1301, !1262, !28}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1148, line: 42, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1278, file: !250, line: 1970, baseType: !1304, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1272, !1262, !28, !893}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1278, file: !250, line: 1972, baseType: !1308, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!28, !1227, !981, !28}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1278, file: !250, line: 1974, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!28, !1301, !1262, !1227, !30, !893}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1278, file: !250, line: 1976, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!28, !1227, !1262, !1227}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1278, file: !250, line: 1977, baseType: !1320, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!28, !1262, !1227}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1278, file: !250, line: 1978, baseType: !1324, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!28, !1301, !1262, !1227, !22}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1278, file: !250, line: 1980, baseType: !1328, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!28, !1301, !1262, !1227, !30}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1278, file: !250, line: 1982, baseType: !1320, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1278, file: !250, line: 1983, baseType: !1333, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!28, !1301, !1262, !1227, !30, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !31, line: 21, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !31, line: 18, baseType: !374)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1278, file: !250, line: 1985, baseType: !1339, size: 64, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!28, !1301, !1262, !1227, !1262, !1227, !7}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1278, file: !250, line: 1987, baseType: !1343, size: 64, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!28, !1301, !1227, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !250, line: 226, size: 640, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1361, !1370, !1371, !1376, !1377, !1378}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1347, file: !250, line: 227, baseType: !7, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1347, file: !250, line: 228, baseType: !30, size: 16, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !250, line: 241, baseType: !1352, size: 32, offset: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1347, file: !250, line: 241, size: 32, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1352, file: !250, line: 242, baseType: !866, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1352, file: !250, line: 243, baseType: !1356, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1357, line: 16, baseType: !1358)
!1357 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1357, line: 14, size: 32, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1358, file: !1357, line: 15, baseType: !871, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !250, line: 245, baseType: !1362, size: 32, offset: 96)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1347, file: !250, line: 245, size: 32, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1362, file: !250, line: 246, baseType: !874, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1362, file: !250, line: 247, baseType: !1366, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1357, line: 20, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1357, line: 18, size: 32, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1367, file: !1357, line: 19, baseType: !878, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1347, file: !250, line: 249, baseType: !47, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1347, file: !250, line: 250, baseType: !1372, size: 128, offset: 192)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !930, line: 13, size: 128, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1372, file: !930, line: 14, baseType: !929, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1372, file: !930, line: 15, baseType: !361, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1347, file: !250, line: 251, baseType: !1372, size: 128, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1347, file: !250, line: 252, baseType: !1372, size: 128, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1347, file: !250, line: 259, baseType: !709, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1278, file: !250, line: 1988, baseType: !1380, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!28, !1301, !1383, !1385, !374, !7}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1387, line: 22, size: 1280, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1386, file: !1387, line: 23, baseType: !374, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1386, file: !1387, line: 24, baseType: !30, size: 16, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1386, file: !1387, line: 25, baseType: !7, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1386, file: !1387, line: 26, baseType: !937, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1386, file: !1387, line: 27, baseType: !432, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1386, file: !1387, line: 28, baseType: !432, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1386, file: !1387, line: 41, baseType: !432, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1386, file: !1387, line: 42, baseType: !1336, size: 32, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1386, file: !1387, line: 43, baseType: !1336, size: 32, offset: 352)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1386, file: !1387, line: 44, baseType: !866, size: 32, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1386, file: !1387, line: 45, baseType: !874, size: 32, offset: 416)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1386, file: !1387, line: 46, baseType: !47, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1386, file: !1387, line: 47, baseType: !1372, size: 128, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1386, file: !1387, line: 48, baseType: !1372, size: 128, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1386, file: !1387, line: 49, baseType: !1372, size: 128, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1386, file: !1387, line: 50, baseType: !1372, size: 128, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1386, file: !1387, line: 51, baseType: !432, size: 64, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1386, file: !1387, line: 52, baseType: !432, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1386, file: !1387, line: 53, baseType: !374, size: 32, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1386, file: !1387, line: 54, baseType: !374, size: 32, offset: 1184)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1386, file: !1387, line: 55, baseType: !432, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1278, file: !250, line: 1990, baseType: !1411, size: 64, offset: 960)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !1227, !981, !41}
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !31, line: 66, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !43, line: 73, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !43, line: 15, baseType: !361)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1278, file: !250, line: 1991, baseType: !1418, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!28, !1262, !1421, !432, !432}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !250, line: 55, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1278, file: !250, line: 1993, baseType: !1424, size: 64, offset: 1088)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!28, !1262, !28}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1278, file: !250, line: 1994, baseType: !1428, size: 64, offset: 1152)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!28, !1262, !1227, !709, !7, !30}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1278, file: !250, line: 1997, baseType: !1432, size: 64, offset: 1216)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!28, !1301, !1262, !709, !30}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1278, file: !250, line: 1999, baseType: !1436, size: 64, offset: 1280)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1272, !1301, !1227, !28}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1278, file: !250, line: 2001, baseType: !1440, size: 64, offset: 1344)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!28, !1301, !1227, !1272, !28}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1278, file: !250, line: 2003, baseType: !1444, size: 64, offset: 1408)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!28, !1301, !1227, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !250, line: 76, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1278, file: !250, line: 2005, baseType: !1450, size: 64, offset: 1472)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!28, !1227, !1447}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1278, file: !250, line: 2006, baseType: !1454, size: 64, offset: 1536)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1457, !1262}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !250, line: 3192, size: 192, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1458, file: !250, line: 3193, baseType: !814, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1458, file: !250, line: 3194, baseType: !374, size: 32, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1263, file: !250, line: 655, baseType: !1463, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !250, line: 1190, size: 10752, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !4379, !4511, !4551, !4634, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4668, !4672, !4673, !4674, !4677, !4735, !4738, !4739, !4740, !4781, !4803, !4804, !4805, !4806, !4807, !4808, !4811, !4815, !4824, !4825, !4826, !4827, !4886, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1464, file: !250, line: 1191, baseType: !103, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1464, file: !250, line: 1192, baseType: !1336, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1464, file: !250, line: 1193, baseType: !93, size: 8, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1464, file: !250, line: 1194, baseType: !45, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1464, file: !250, line: 1195, baseType: !47, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1464, file: !250, line: 1196, baseType: !1472, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !250, line: 2366, size: 576, elements: !1474)
!1474 = !{!1475, !1476, !1477, !4331, !4358, !4362, !4366, !4367, !4368, !4369, !4371, !4372, !4373, !4375, !4376, !4377, !4378}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1473, file: !250, line: 2367, baseType: !22, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1473, file: !250, line: 2368, baseType: !28, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1473, file: !250, line: 2376, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!28, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !130, line: 90, size: 1216, elements: !1483)
!1483 = !{!1484, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1541, !1542, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1482, file: !130, line: 91, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !130, line: 115, size: 384, elements: !1488)
!1488 = !{!1489, !1493, !1497, !1526, !1530, !1531}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1487, file: !130, line: 116, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1481}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1487, file: !130, line: 117, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!28, !1481, !1481}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1487, file: !130, line: 118, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!28, !1481, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !130, line: 63, size: 320, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1524, !1525}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1502, file: !130, line: 64, baseType: !22, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1502, file: !130, line: 65, baseType: !129, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !130, line: 66, baseType: !1507, size: 64, offset: 128)
!1507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !130, line: 66, size: 64, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1523}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1507, file: !130, line: 67, baseType: !981, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1507, file: !130, line: 68, baseType: !26, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1507, file: !130, line: 69, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !250, line: 2470, size: 256, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1521}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1513, file: !250, line: 2471, baseType: !22, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1513, file: !250, line: 2472, baseType: !22, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1513, file: !250, line: 2473, baseType: !55, size: 32, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1513, file: !250, line: 2474, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !250, line: 2469, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1513, file: !250, line: 2475, baseType: !1522, offset: 256)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !1124)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1507, file: !130, line: 70, baseType: !709, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1502, file: !130, line: 72, baseType: !41, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1502, file: !130, line: 73, baseType: !28, size: 32, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1487, file: !130, line: 119, baseType: !1527, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!28, !1481, !26}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1487, file: !130, line: 120, baseType: !1478, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1487, file: !130, line: 121, baseType: !1478, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1482, file: !130, line: 92, baseType: !737, size: 256, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1482, file: !130, line: 93, baseType: !1472, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1482, file: !130, line: 94, baseType: !26, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1482, file: !130, line: 95, baseType: !26, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1482, file: !130, line: 96, baseType: !1227, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1482, file: !130, line: 97, baseType: !835, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1482, file: !130, line: 98, baseType: !1539, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !899, line: 34, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1482, file: !130, line: 99, baseType: !1131, size: 64, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1482, file: !130, line: 100, baseType: !1543, size: 128, offset: 768)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !130, line: 76, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1543, file: !130, line: 77, baseType: !22, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1543, file: !130, line: 78, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !130, line: 173, size: 640, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !4317}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1548, file: !130, line: 174, baseType: !380, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1548, file: !130, line: 175, baseType: !89, size: 8, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1548, file: !130, line: 176, baseType: !89, size: 8, offset: 40)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1548, file: !130, line: 177, baseType: !89, size: 8, offset: 48)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1548, file: !130, line: 178, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !139, line: 402, size: 9216, align: 512, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1564, !2885, !2911, !2912, !2913, !2914, !2918, !2921, !2922, !2923, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2989, !2993, !3013, !3033, !3034, !3035, !3036, !3045, !3068, !3069, !3072, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3086, !3087, !3175, !3183, !3184, !3185, !3187, !4295, !4296, !4305, !4306, !4307, !4308, !4310, !4311, !4312, !4313, !4314, !4315, !4316}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1556, file: !139, line: 403, baseType: !138, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1556, file: !139, line: 406, baseType: !103, size: 128, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1556, file: !139, line: 409, baseType: !1561, size: 448, offset: 192)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 448, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 56)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1556, file: !139, line: 417, baseType: !1565, size: 768, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !139, line: 45, size: 768, elements: !1566)
!1566 = !{!1567, !2879, !2880, !2881, !2884}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1565, file: !139, line: 46, baseType: !1568, size: 512)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1569, line: 64, size: 512, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1570 = !{!1571, !1572, !1573, !1575, !1619, !2726, !2869, !2874, !2875, !2876, !2877, !2878}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !1569, line: 65, baseType: !22, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1568, file: !1569, line: 66, baseType: !103, size: 128, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1568, file: !1569, line: 67, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1568, file: !1569, line: 68, baseType: !1576, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1569, line: 168, size: 768, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1577, file: !1569, line: 169, baseType: !103, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1577, file: !1569, line: 170, baseType: !65, size: 32, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1577, file: !1569, line: 171, baseType: !1568, size: 512, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1577, file: !1569, line: 172, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1569, line: 133, size: 192, elements: !1586)
!1586 = !{!1587, !1594, !1599}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1585, file: !1569, line: 134, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!28, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1585, file: !1569, line: 135, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!22, !1592}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1585, file: !1569, line: 136, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!28, !1592, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1569, line: 125, size: 20736, elements: !1606)
!1606 = !{!1607, !1609, !1613, !1614, !1618}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1605, file: !1569, line: 126, baseType: !1608, size: 192)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 192, elements: !773)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1605, file: !1569, line: 127, baseType: !1610, size: 4096, offset: 192)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 4096, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1605, file: !1569, line: 128, baseType: !28, size: 32, offset: 4288)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1605, file: !1569, line: 129, baseType: !1615, size: 16384, offset: 4320)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 16384, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 2048)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1605, file: !1569, line: 130, baseType: !28, size: 32, offset: 20704)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1568, file: !1569, line: 69, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1569, line: 116, size: 384, elements: !1623)
!1623 = !{!1624, !1628, !1647, !2714, !2718, !2722}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1622, file: !1569, line: 117, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1574}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1622, file: !1569, line: 118, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1632, line: 254, size: 128, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1633 = !{!1634, !1643}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1631, file: !1632, line: 255, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1414, !1574, !1638, !981}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1632, line: 30, size: 128, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1639, file: !1632, line: 31, baseType: !22, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1639, file: !1632, line: 32, baseType: !30, size: 16, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1631, file: !1632, line: 256, baseType: !1644, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1414, !1574, !1638, !22, !41}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1622, file: !1569, line: 119, baseType: !1648, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1632, line: 84, size: 320, elements: !1652)
!1652 = !{!1653, !1654, !1658, !2710, !2712}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1651, file: !1632, line: 85, baseType: !22, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1651, file: !1632, line: 86, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!30, !1574, !1638, !28}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1651, file: !1632, line: 88, baseType: !1659, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!30, !1574, !1662, !28}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1632, line: 175, size: 512, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !2701, !2705, !2706}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1663, file: !1632, line: 176, baseType: !1639, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1663, file: !1632, line: 177, baseType: !41, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1663, file: !1632, line: 178, baseType: !26, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1663, file: !1632, line: 179, baseType: !1669, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !250, line: 472, size: 1536, align: 64, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !2693, !2694, !2695, !2698, !2699, !2700}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1673, file: !250, line: 473, baseType: !1262, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1673, file: !250, line: 474, baseType: !814, size: 128, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1673, file: !250, line: 475, baseType: !913, size: 320, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1673, file: !250, line: 476, baseType: !360, size: 32, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1673, file: !250, line: 477, baseType: !55, size: 32, offset: 544)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1673, file: !250, line: 482, baseType: !564, size: 128, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1673, file: !250, line: 483, baseType: !45, size: 64, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1673, file: !250, line: 484, baseType: !45, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1673, file: !250, line: 485, baseType: !1684, size: 64, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !250, line: 404, size: 1280, elements: !1687)
!1687 = !{!1688, !2016, !2086, !2090, !2094, !2111, !2117, !2121, !2126, !2130, !2134, !2138, !2182, !2186, !2190, !2194, !2199, !2203, !2685, !2689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1686, file: !250, line: 405, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!28, !1692, !1996}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !114, line: 74, size: 512, align: 128, elements: !1694)
!1694 = !{!1695, !1696, !1990, !1995}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1693, file: !114, line: 75, baseType: !45, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !114, line: 83, baseType: !1697, size: 320, offset: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !114, line: 83, size: 320, elements: !1698)
!1698 = !{!1699, !1720, !1734, !1738, !1989}
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !114, line: 84, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !114, line: 84, size: 320, elements: !1701)
!1701 = !{!1702, !1713, !1714, !1719}
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !114, line: 90, baseType: !1703, size: 128)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !114, line: 90, size: 128, elements: !1704)
!1704 = !{!1705, !1706, !1711, !1712}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1703, file: !114, line: 91, baseType: !103, size: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !114, line: 94, baseType: !1707, size: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !114, line: 94, size: 128, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1707, file: !114, line: 96, baseType: !26, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1707, file: !114, line: 98, baseType: !7, size: 32, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1703, file: !114, line: 102, baseType: !103, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1703, file: !114, line: 103, baseType: !103, size: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1700, file: !114, line: 106, baseType: !1672, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !114, line: 107, baseType: !1715, size: 64, offset: 192)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !114, line: 107, size: 64, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1715, file: !114, line: 108, baseType: !45, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1715, file: !114, line: 109, baseType: !45, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1700, file: !114, line: 117, baseType: !45, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !114, line: 119, baseType: !1721, size: 320)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !114, line: 119, size: 320, elements: !1722)
!1722 = !{!1723, !1724, !1727, !1728, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1721, file: !114, line: 124, baseType: !45, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1721, file: !114, line: 125, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !114, line: 125, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1721, file: !114, line: 126, baseType: !45, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1721, file: !114, line: 127, baseType: !45, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !114, line: 128, baseType: !1730, size: 64, offset: 256)
!1730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !114, line: 128, size: 64, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1730, file: !114, line: 133, baseType: !45, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1730, file: !114, line: 138, baseType: !730, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !114, line: 141, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !114, line: 141, size: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1735, file: !114, line: 142, baseType: !45, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !114, line: 144, baseType: !1739, size: 128)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !114, line: 144, size: 128, elements: !1740)
!1740 = !{!1741, !1988}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1739, file: !114, line: 146, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !280, line: 126, size: 1216, elements: !1744)
!1744 = !{!1745, !1755, !1776, !1777, !1778, !1779, !1780, !1970, !1971, !1972}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1743, file: !280, line: 127, baseType: !1746, size: 384)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !280, line: 21, size: 384, elements: !1747)
!1747 = !{!1748, !1749, !1751, !1752, !1753, !1754}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1746, file: !280, line: 22, baseType: !45, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1746, file: !280, line: 23, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1746, file: !280, line: 24, baseType: !1750, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1746, file: !280, line: 25, baseType: !45, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1746, file: !280, line: 26, baseType: !45, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1746, file: !280, line: 27, baseType: !45, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1743, file: !280, line: 128, baseType: !1756, size: 128, offset: 384)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1757, line: 105, size: 128, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1756, file: !1757, line: 110, baseType: !45, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1756, file: !1757, line: 118, baseType: !1761, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1757, line: 95, size: 448, elements: !1763)
!1763 = !{!1764, !1765, !1771, !1772, !1773, !1774, !1775}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1762, file: !1757, line: 96, baseType: !730, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1762, file: !1757, line: 97, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1757, line: 60, baseType: !1768)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1762, file: !1757, line: 98, baseType: !1766, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1762, file: !1757, line: 99, baseType: !893, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1762, file: !1757, line: 100, baseType: !893, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1762, file: !1757, line: 101, baseType: !717, size: 128, align: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1762, file: !1757, line: 102, baseType: !1770, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1743, file: !280, line: 129, baseType: !1059, size: 256, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1743, file: !280, line: 130, baseType: !279, size: 32, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1743, file: !280, line: 131, baseType: !7, size: 32, offset: 800)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1743, file: !280, line: 132, baseType: !45, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1743, file: !280, line: 133, baseType: !1781, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !280, line: 77, size: 192, elements: !1784)
!1784 = !{!1785, !1789, !1966}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1783, file: !280, line: 83, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1692}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1783, file: !280, line: 89, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !114, line: 1184, baseType: !7)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1796, line: 512, size: 896, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1797 = !{!1798, !1933, !1934, !1941, !1948, !1958, !1959, !1960, !1962, !1964}
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !1796, line: 513, baseType: !1799, size: 320)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !1796, line: 513, size: 320, elements: !1800)
!1800 = !{!1801, !1929, !1930, !1931, !1932}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1799, file: !1796, line: 514, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !114, line: 625, size: 1344, elements: !1804)
!1804 = !{!1805, !1814, !1815, !1823, !1830, !1831, !1836, !1837, !1842, !1843, !1846, !1922, !1923, !1924, !1925, !1926, !1927}
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !114, line: 628, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !114, line: 628, size: 128, elements: !1807)
!1807 = !{!1808, !1813}
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !114, line: 629, baseType: !1809, size: 128)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1806, file: !114, line: 629, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1809, file: !114, line: 631, baseType: !45, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1809, file: !114, line: 632, baseType: !45, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1806, file: !114, line: 635, baseType: !717, size: 128, align: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1803, file: !114, line: 639, baseType: !681, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1803, file: !114, line: 640, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1817, line: 297, baseType: !1818)
!1817 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1817, line: 297, size: 64, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1818, file: !1817, line: 297, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1822, line: 19, baseType: !45)
!1822 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !114, line: 646, baseType: !1824, size: 64, offset: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !114, line: 646, size: 64, elements: !1825)
!1825 = !{!1826, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1824, file: !114, line: 647, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !114, line: 542, baseType: !45)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1824, file: !114, line: 648, baseType: !1828, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1803, file: !114, line: 666, baseType: !28, size: 32, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1803, file: !114, line: 667, baseType: !1832, size: 64, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !114, line: 579, size: 320, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !114, line: 580, baseType: !913, size: 320)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1803, file: !114, line: 670, baseType: !893, size: 8, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1803, file: !114, line: 681, baseType: !1838, size: 256, offset: 512)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !114, line: 678, size: 256, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1838, file: !114, line: 679, baseType: !424, size: 192, align: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1838, file: !114, line: 680, baseType: !45, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1803, file: !114, line: 689, baseType: !103, size: 128, offset: 768)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1803, file: !114, line: 691, baseType: !1844, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !114, line: 691, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1803, file: !114, line: 694, baseType: !1847, size: 64, offset: 960)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1796, line: 563, size: 1024, elements: !1850)
!1850 = !{!1851, !1855, !1856, !1860, !1864, !1868, !1869, !1873, !1877, !1881, !1882, !1883, !1887, !1891, !1914, !1918}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1849, file: !1796, line: 564, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1802}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1849, file: !1796, line: 569, baseType: !1852, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1849, file: !1796, line: 571, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!28, !1802, !45}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1849, file: !1796, line: 572, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!28, !1802}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1849, file: !1796, line: 578, baseType: !1865, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!28, !1802, !45, !45, !45}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1849, file: !1796, line: 580, baseType: !1790, size: 64, offset: 320)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1849, file: !1796, line: 581, baseType: !1870, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1793, !1794, !7}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1849, file: !1796, line: 582, baseType: !1874, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1793, !1794, !45, !45}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1849, file: !1796, line: 584, baseType: !1878, size: 64, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!45, !1802}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1849, file: !1796, line: 588, baseType: !1790, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1849, file: !1796, line: 591, baseType: !1790, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1849, file: !1796, line: 597, baseType: !1884, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!28, !1802, !45, !26, !28, !28}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1849, file: !1796, line: 603, baseType: !1888, size: 64, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!22, !1802}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1849, file: !1796, line: 613, baseType: !1892, size: 64, offset: 832)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!28, !1802, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1897, line: 44, size: 256, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1898 = !{!1899, !1900, !1901, !1902, !1908, !1909}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1896, file: !1897, line: 45, baseType: !55, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1896, file: !1897, line: 46, baseType: !32, size: 16, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1896, file: !1897, line: 47, baseType: !32, size: 16, offset: 48)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1896, file: !1897, line: 48, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1904, line: 99, baseType: !1905)
!1904 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1904, line: 99, size: 64, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1905, file: !1904, line: 99, baseType: !632, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1896, file: !1897, line: 49, baseType: !28, size: 32, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1896, file: !1897, line: 54, baseType: !1910, size: 64, offset: 192)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !1897, line: 51, size: 64, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1910, file: !1897, line: 52, baseType: !1903, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1910, file: !1897, line: 53, baseType: !1903, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1849, file: !1796, line: 625, baseType: !1915, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1895, !1802, !45}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1849, file: !1796, line: 633, baseType: !1919, size: 64, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1692, !1802, !45}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1803, file: !114, line: 697, baseType: !45, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1803, file: !114, line: 699, baseType: !709, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1803, file: !114, line: 700, baseType: !26, size: 64, offset: 1152)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1803, file: !114, line: 711, baseType: !730, size: 64, offset: 1216)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1803, file: !114, line: 717, baseType: !1895, size: 64, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1803, file: !114, line: 722, baseType: !1928, offset: 1344)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !114, line: 570, elements: !702)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1799, file: !1796, line: 515, baseType: !360, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1799, file: !1796, line: 516, baseType: !45, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1799, file: !1796, line: 517, baseType: !45, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1799, file: !1796, line: 518, baseType: !45, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !1796, line: 520, baseType: !113, size: 32, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1795, file: !1796, line: 522, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1822, line: 22, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1822, line: 22, size: 64, elements: !1938)
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1937, file: !1822, line: 22, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1822, line: 15, baseType: !45)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1795, file: !1796, line: 524, baseType: !1942, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1817, line: 372, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 372, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1944, file: !1817, line: 372, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1822, line: 16, baseType: !45)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !1796, line: 527, baseType: !1949, size: 64, offset: 512)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1795, file: !1796, line: 527, size: 64, elements: !1950)
!1950 = !{!1951, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1949, file: !1796, line: 528, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1822, line: 21, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1822, line: 21, size: 64, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1953, file: !1822, line: 21, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1822, line: 14, baseType: !45)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1949, file: !1796, line: 529, baseType: !1936, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1795, file: !1796, line: 534, baseType: !1692, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1795, file: !1796, line: 535, baseType: !1692, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1795, file: !1796, line: 541, baseType: !1961, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1795, file: !1796, line: 545, baseType: !1963, size: 64, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1795, file: !1796, line: 549, baseType: !1965, size: 64, offset: 832)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1817, line: 520, baseType: !1692)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1783, file: !280, line: 100, baseType: !1967, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!28, !1742, !45, !45, !28}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1743, file: !280, line: 134, baseType: !26, size: 64, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1743, file: !280, line: 135, baseType: !28, size: 32, offset: 1024)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !280, line: 136, baseType: !1973, size: 128, offset: 1088)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !280, line: 136, size: 128, elements: !1974)
!1974 = !{!1975, !1981}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1973, file: !280, line: 137, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1977, line: 6, size: 128, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1976, file: !1977, line: 7, baseType: !432, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1976, file: !1977, line: 8, baseType: !432, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !280, line: 138, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !280, line: 138, elements: !1983)
!1983 = !{!1984, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1982, file: !280, line: 138, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !280, line: 138, elements: !702)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1982, file: !280, line: 138, baseType: !1987)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1976, elements: !1124)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1739, file: !114, line: 147, baseType: !26, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1697, file: !114, line: 161, baseType: !717, size: 128, align: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !114, line: 164, baseType: !1991, size: 32, offset: 384)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !114, line: 164, size: 32, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1991, file: !114, line: 169, baseType: !55, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1991, file: !114, line: 177, baseType: !7, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1693, file: !114, line: 181, baseType: !55, size: 32, offset: 416)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !245, line: 42, size: 384, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1997, file: !245, line: 43, baseType: !361, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1997, file: !245, line: 45, baseType: !361, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1997, file: !245, line: 52, baseType: !47, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1997, file: !245, line: 53, baseType: !47, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1997, file: !245, line: 55, baseType: !244, size: 32, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1997, file: !245, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1997, file: !245, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1997, file: !245, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1997, file: !245, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1997, file: !245, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1997, file: !245, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1997, file: !245, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1997, file: !245, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1997, file: !245, line: 78, baseType: !2013, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !245, line: 78, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1686, file: !250, line: 406, baseType: !2017, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!28, !709, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !114, line: 293, size: 1536, elements: !2022)
!2022 = !{!2023, !2053, !2067}
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !114, line: 295, baseType: !2024, size: 512)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !114, line: 295, size: 512, elements: !2025)
!2025 = !{!2026, !2052}
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2024, file: !114, line: 296, baseType: !2027, size: 448)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !114, line: 296, size: 448, elements: !2028)
!2028 = !{!2029, !2030, !2039, !2040, !2041, !2050, !2051}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2027, file: !114, line: 298, baseType: !45, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !114, line: 299, baseType: !2031, size: 128, offset: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !114, line: 299, size: 128, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2031, file: !114, line: 300, baseType: !103, size: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !114, line: 302, baseType: !2035, size: 128)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !114, line: 302, size: 128, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2035, file: !114, line: 303, baseType: !26, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2035, file: !114, line: 305, baseType: !7, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2027, file: !114, line: 310, baseType: !1672, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2027, file: !114, line: 311, baseType: !45, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !114, line: 312, baseType: !2042, size: 64, offset: 320)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !114, line: 312, size: 64, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2042, file: !114, line: 313, baseType: !26, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2042, file: !114, line: 314, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !114, line: 257, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 255, size: 64, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2047, file: !114, line: 256, baseType: !45, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2027, file: !114, line: 316, baseType: !55, size: 32, offset: 384)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2027, file: !114, line: 317, baseType: !55, size: 32, offset: 416)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2024, file: !114, line: 323, baseType: !1693, size: 512, align: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !114, line: 325, baseType: !2054, size: 512, offset: 512)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !114, line: 325, size: 512, elements: !2055)
!2055 = !{!2056, !2066}
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !114, line: 326, baseType: !2057, size: 320)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !114, line: 326, size: 320, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2064, !2065}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2057, file: !114, line: 327, baseType: !45, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2057, file: !114, line: 328, baseType: !45, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2057, file: !114, line: 329, baseType: !45, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2057, file: !114, line: 331, baseType: !55, size: 32, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2057, file: !114, line: 332, baseType: !55, size: 32, offset: 224)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2057, file: !114, line: 333, baseType: !55, size: 32, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2057, file: !114, line: 335, baseType: !7, size: 32, offset: 288)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2054, file: !114, line: 339, baseType: !1693, size: 512, align: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !114, line: 341, baseType: !2068, size: 512, offset: 1024)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !114, line: 341, size: 512, elements: !2069)
!2069 = !{!2070, !2079, !2085}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !114, line: 342, baseType: !2071, size: 384)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !114, line: 342, size: 384, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2071, file: !114, line: 343, baseType: !45, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2071, file: !114, line: 344, baseType: !45, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2071, file: !114, line: 346, baseType: !26, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2071, file: !114, line: 347, baseType: !26, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2071, file: !114, line: 348, baseType: !26, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2071, file: !114, line: 349, baseType: !26, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !114, line: 352, baseType: !2080, size: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !114, line: 352, size: 256, elements: !2081)
!2081 = !{!2082, !2083, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2080, file: !114, line: 353, baseType: !45, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2080, file: !114, line: 354, baseType: !45, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2080, file: !114, line: 356, baseType: !103, size: 128, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2068, file: !114, line: 359, baseType: !1693, size: 512, align: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1686, file: !250, line: 409, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!28, !1672, !1996}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1686, file: !250, line: 412, baseType: !2091, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!893, !1672, !2020}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1686, file: !250, line: 414, baseType: !2095, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2100, line: 1276, size: 448, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2101 = !{!2102, !2103, !2104, !2106, !2107, !2108, !2109, !2110}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2099, file: !2100, line: 1277, baseType: !709, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2099, file: !2100, line: 1278, baseType: !1672, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !2099, file: !2100, line: 1279, baseType: !2105, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !2099, file: !2100, line: 1281, baseType: !45, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !2099, file: !2100, line: 1282, baseType: !7, size: 32, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !2099, file: !2100, line: 1283, baseType: !7, size: 32, offset: 288)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !2099, file: !2100, line: 1284, baseType: !893, size: 8, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !2099, file: !2100, line: 1285, baseType: !45, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1686, file: !250, line: 416, baseType: !2112, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!28, !709, !1672, !47, !7, !2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1686, file: !250, line: 419, baseType: !2118, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!28, !709, !1672, !47, !7, !7, !1692, !26}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1686, file: !250, line: 424, baseType: !2122, size: 64, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2125, !1672, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !31, line: 131, baseType: !432)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1686, file: !250, line: 425, baseType: !2127, size: 64, offset: 512)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2020, !41, !41}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1686, file: !250, line: 426, baseType: !2131, size: 64, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!893, !2020, !360}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1686, file: !250, line: 427, baseType: !2135, size: 64, offset: 640)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2020}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1686, file: !250, line: 428, baseType: !2139, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!1414, !2142, !2180}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !250, line: 373, size: 384, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2151, !2152, !2153, !2154}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2143, file: !250, line: 374, baseType: !709, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2143, file: !250, line: 375, baseType: !47, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2143, file: !250, line: 376, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !2142, !361}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2143, file: !250, line: 377, baseType: !26, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2143, file: !250, line: 378, baseType: !28, size: 32, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2143, file: !250, line: 379, baseType: !99, size: 16, offset: 288)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !250, line: 380, baseType: !2155, size: 64, offset: 320)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !250, line: 380, size: 64, elements: !2156)
!2156 = !{!2157, !2176}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2155, file: !250, line: 386, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2100, line: 998, size: 448, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2159, file: !2100, line: 999, baseType: !2020, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2159, file: !2100, line: 1000, baseType: !28, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2159, file: !2100, line: 1001, baseType: !2164, size: 320, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !61, line: 14, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !61, line: 30, size: 320, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2175}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !61, line: 31, baseType: !7, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2165, file: !61, line: 32, baseType: !26, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2165, file: !61, line: 33, baseType: !2170, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !61, line: 16, baseType: !2171)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!28, !2174, !7, !28, !26}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2165, file: !61, line: 34, baseType: !103, size: 128, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2155, file: !250, line: 395, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!1414, !26}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !250, line: 69, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1686, file: !250, line: 433, baseType: !2183, size: 64, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!28, !1672, !2020, !2020, !272}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1686, file: !250, line: 435, baseType: !2187, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!28, !2020}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1686, file: !250, line: 436, baseType: !2191, size: 64, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!893, !2020, !41, !41}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1686, file: !250, line: 438, baseType: !2195, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2020, !2198, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1686, file: !250, line: 439, baseType: !2200, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!28, !1672, !1692}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1686, file: !250, line: 442, baseType: !2204, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!28, !2207, !709, !2684}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2209, line: 282, size: 2176, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2217, !2218, !2219, !2226, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2239, !2245, !2246, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2208, file: !2209, line: 283, baseType: !1756, size: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2208, file: !2209, line: 284, baseType: !45, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2208, file: !2209, line: 285, baseType: !941, size: 16, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2208, file: !2209, line: 286, baseType: !673, size: 320, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2208, file: !2209, line: 287, baseType: !2216, size: 8, offset: 576)
!2216 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2208, file: !2209, line: 288, baseType: !7, size: 32, offset: 608)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2208, file: !2209, line: 289, baseType: !359, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2208, file: !2209, line: 290, baseType: !2220, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2209, line: 250, size: 64, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2221, file: !2209, line: 251, baseType: !65, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2221, file: !2209, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2221, file: !2209, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2208, file: !2209, line: 291, baseType: !2227, size: 128, offset: 768)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2209, line: 274, size: 128, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2227, file: !2209, line: 275, baseType: !2221, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2227, file: !2209, line: 276, baseType: !2221, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2208, file: !2209, line: 292, baseType: !7, size: 32, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2208, file: !2209, line: 293, baseType: !7, size: 32, offset: 928)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2208, file: !2209, line: 294, baseType: !7, size: 32, offset: 960)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2208, file: !2209, line: 295, baseType: !7, size: 32, offset: 992)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2208, file: !2209, line: 296, baseType: !7, size: 32, offset: 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2208, file: !2209, line: 297, baseType: !7, size: 32, offset: 1056)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2208, file: !2209, line: 298, baseType: !2238, size: 64, offset: 1088)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2208, file: !2209, line: 299, baseType: !2240, size: 64, offset: 1152)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2209, line: 269, size: 96, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2241, file: !2209, line: 270, baseType: !2221, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2241, file: !2209, line: 271, baseType: !7, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2208, file: !2209, line: 300, baseType: !567, size: 64, offset: 1216)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2208, file: !2209, line: 301, baseType: !2247, size: 64, offset: 1280)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2249, line: 40, size: 7424, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2250 = !{!2251, !2252, !2253, !2256, !2260, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2287, !2288}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2248, file: !2249, line: 41, baseType: !2125, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2248, file: !2249, line: 42, baseType: !2125, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2248, file: !2249, line: 43, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !365, line: 1453, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2248, file: !2249, line: 44, baseType: !2257, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2259, line: 74, flags: DIFlagFwdDecl)
!2259 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2248, file: !2249, line: 45, baseType: !2261, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2249, line: 45, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2248, file: !2249, line: 46, baseType: !45, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2248, file: !2249, line: 47, baseType: !893, size: 8, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2248, file: !2249, line: 48, baseType: !89, size: 8, offset: 392)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2248, file: !2249, line: 49, baseType: !893, size: 8, offset: 400)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2248, file: !2249, line: 50, baseType: !893, size: 8, offset: 408)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2248, file: !2249, line: 51, baseType: !1336, size: 32, offset: 416)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2248, file: !2249, line: 52, baseType: !55, size: 32, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2248, file: !2249, line: 53, baseType: !65, size: 32, offset: 480)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2248, file: !2249, line: 54, baseType: !1262, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2248, file: !2249, line: 55, baseType: !26, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2248, file: !2249, line: 56, baseType: !26, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2248, file: !2249, line: 57, baseType: !2275, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2277)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2249, line: 57, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2248, file: !2249, line: 58, baseType: !737, size: 256, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2248, file: !2249, line: 60, baseType: !28, size: 32, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2248, file: !2249, line: 61, baseType: !28, size: 32, offset: 1056)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2248, file: !2249, line: 62, baseType: !1574, size: 64, offset: 1088)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2248, file: !2249, line: 65, baseType: !737, size: 256, offset: 1152)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2248, file: !2249, line: 66, baseType: !1463, size: 64, offset: 1408)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2248, file: !2249, line: 68, baseType: !2285, size: 64, offset: 1472)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2249, line: 68, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2248, file: !2249, line: 72, baseType: !893, size: 8, offset: 1536)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2248, file: !2249, line: 77, baseType: !2289, size: 5824, offset: 1600)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !175, line: 705, size: 5824, elements: !2290)
!2290 = !{!2291, !2292, !2294, !2297, !2298, !2351, !2421, !2422, !2423, !2424, !2425, !2432, !2535, !2548, !2558, !2562, !2564, !2565, !2566, !2570, !2577, !2578, !2581, !2584, !2588, !2591, !2592, !2593, !2594, !2595, !2596, !2652, !2653, !2654, !2657, !2660, !2669, !2670, !2671, !2672, !2673, !2674}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2289, file: !175, line: 706, baseType: !1568, size: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2289, file: !175, line: 707, baseType: !2293, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2289, file: !175, line: 709, baseType: !2295, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !175, line: 37, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2289, file: !175, line: 711, baseType: !22, size: 64, offset: 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2289, file: !175, line: 712, baseType: !2299, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !175, line: 89, size: 384, elements: !2302)
!2302 = !{!2303, !2304, !2305, !2311, !2316, !2320}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2301, file: !175, line: 90, baseType: !22, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2301, file: !175, line: 91, baseType: !1648, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2301, file: !175, line: 92, baseType: !2306, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!28, !2309, !1604}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2301, file: !175, line: 93, baseType: !2312, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!981, !2309, !2315, !1084, !1085}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2301, file: !175, line: 95, baseType: !2317, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !2293}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2301, file: !175, line: 97, baseType: !2321, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !182, line: 286, size: 1472, elements: !2324)
!2324 = !{!2325, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2323, file: !182, line: 287, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!28, !2293}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2323, file: !182, line: 288, baseType: !2317, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2323, file: !182, line: 289, baseType: !2326, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2323, file: !182, line: 290, baseType: !2326, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2323, file: !182, line: 291, baseType: !2326, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2323, file: !182, line: 292, baseType: !2326, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2323, file: !182, line: 293, baseType: !2326, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2323, file: !182, line: 294, baseType: !2326, size: 64, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2323, file: !182, line: 295, baseType: !2326, size: 64, offset: 512)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2323, file: !182, line: 296, baseType: !2326, size: 64, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2323, file: !182, line: 297, baseType: !2326, size: 64, offset: 640)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2323, file: !182, line: 298, baseType: !2326, size: 64, offset: 704)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2323, file: !182, line: 299, baseType: !2326, size: 64, offset: 768)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2323, file: !182, line: 300, baseType: !2326, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2323, file: !182, line: 301, baseType: !2326, size: 64, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2323, file: !182, line: 302, baseType: !2326, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2323, file: !182, line: 303, baseType: !2326, size: 64, offset: 1024)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2323, file: !182, line: 304, baseType: !2326, size: 64, offset: 1088)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2323, file: !182, line: 305, baseType: !2326, size: 64, offset: 1152)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2323, file: !182, line: 306, baseType: !2326, size: 64, offset: 1216)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2323, file: !182, line: 307, baseType: !2326, size: 64, offset: 1280)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2323, file: !182, line: 308, baseType: !2326, size: 64, offset: 1344)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2323, file: !182, line: 309, baseType: !2326, size: 64, offset: 1408)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2289, file: !175, line: 714, baseType: !2352, size: 64, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2355, line: 80, size: 1344, elements: !2356)
!2355 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2420}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2354, file: !2355, line: 81, baseType: !22, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2354, file: !2355, line: 82, baseType: !22, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2354, file: !2355, line: 83, baseType: !1648, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2354, file: !2355, line: 84, baseType: !1648, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2354, file: !2355, line: 85, baseType: !1648, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2354, file: !2355, line: 87, baseType: !2363, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!28, !2293, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !169, line: 96, size: 1152, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2379, !2383, !2384, !2385, !2386, !2387, !2395, !2396, !2397, !2398, !2399, !2400}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2367, file: !169, line: 97, baseType: !22, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2367, file: !169, line: 98, baseType: !2352, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2367, file: !169, line: 100, baseType: !1555, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2367, file: !169, line: 101, baseType: !22, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2367, file: !169, line: 103, baseType: !893, size: 8, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2367, file: !169, line: 104, baseType: !168, size: 32, offset: 288)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2367, file: !169, line: 106, baseType: !2376, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !169, line: 106, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2367, file: !169, line: 107, baseType: !2380, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2382)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !169, line: 107, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2367, file: !169, line: 109, baseType: !2326, size: 64, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2367, file: !169, line: 110, baseType: !2317, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2367, file: !169, line: 111, baseType: !2326, size: 64, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2367, file: !169, line: 112, baseType: !2317, size: 64, offset: 640)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2367, file: !169, line: 113, baseType: !2388, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!28, !2293, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !182, line: 60, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !182, line: 58, size: 32, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2392, file: !182, line: 59, baseType: !28, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2367, file: !169, line: 114, baseType: !2326, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2367, file: !169, line: 115, baseType: !1648, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2367, file: !169, line: 116, baseType: !1648, size: 64, offset: 896)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2367, file: !169, line: 118, baseType: !2321, size: 64, offset: 960)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2367, file: !169, line: 119, baseType: !2317, size: 64, offset: 1024)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2367, file: !169, line: 121, baseType: !2401, size: 64, offset: 1088)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !169, line: 121, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2354, file: !2355, line: 88, baseType: !2306, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2354, file: !2355, line: 89, baseType: !2326, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2354, file: !2355, line: 90, baseType: !2317, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2354, file: !2355, line: 91, baseType: !2317, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2354, file: !2355, line: 92, baseType: !2317, size: 64, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2354, file: !2355, line: 94, baseType: !2326, size: 64, offset: 704)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2354, file: !2355, line: 95, baseType: !2326, size: 64, offset: 768)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2354, file: !2355, line: 97, baseType: !2388, size: 64, offset: 832)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2354, file: !2355, line: 98, baseType: !2326, size: 64, offset: 896)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2354, file: !2355, line: 100, baseType: !2326, size: 64, offset: 960)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2354, file: !2355, line: 102, baseType: !2326, size: 64, offset: 1024)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2354, file: !2355, line: 103, baseType: !2317, size: 64, offset: 1088)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2354, file: !2355, line: 105, baseType: !2321, size: 64, offset: 1152)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2354, file: !2355, line: 107, baseType: !2417, size: 64, offset: 1216)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2355, line: 107, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2354, file: !2355, line: 109, baseType: !893, size: 8, offset: 1280)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2289, file: !175, line: 715, baseType: !2366, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2289, file: !175, line: 717, baseType: !26, size: 64, offset: 896)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2289, file: !175, line: 719, baseType: !26, size: 64, offset: 960)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2289, file: !175, line: 721, baseType: !737, size: 256, offset: 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2289, file: !175, line: 725, baseType: !2426, size: 448, offset: 1280)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !175, line: 517, size: 448, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2426, file: !175, line: 518, baseType: !103, size: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2426, file: !175, line: 519, baseType: !103, size: 128, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2426, file: !175, line: 520, baseType: !103, size: 128, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2426, file: !175, line: 521, baseType: !174, size: 32, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2289, file: !175, line: 726, baseType: !2433, size: 2496, offset: 1728)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !182, line: 663, size: 2496, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2528, !2532}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2433, file: !182, line: 664, baseType: !2391, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2433, file: !182, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2433, file: !182, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2433, file: !182, line: 667, baseType: !893, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2433, file: !182, line: 668, baseType: !893, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2433, file: !182, line: 669, baseType: !893, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2433, file: !182, line: 670, baseType: !893, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2433, file: !182, line: 671, baseType: !893, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2433, file: !182, line: 672, baseType: !893, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2433, file: !182, line: 673, baseType: !893, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2433, file: !182, line: 674, baseType: !893, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2433, file: !182, line: 675, baseType: !374, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2433, file: !182, line: 676, baseType: !65, size: 32, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2433, file: !182, line: 678, baseType: !103, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2433, file: !182, line: 679, baseType: !1059, size: 256, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2433, file: !182, line: 680, baseType: !2451, size: 64, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2453, line: 43, size: 1536, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2462, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2452, file: !2453, line: 44, baseType: !22, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2452, file: !2453, line: 45, baseType: !28, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2452, file: !2453, line: 46, baseType: !103, size: 128, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2452, file: !2453, line: 47, baseType: !65, size: 32, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2452, file: !2453, line: 48, baseType: !2460, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !182, line: 629, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2452, file: !2453, line: 49, baseType: !2463, size: 320, offset: 384)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2464, line: 11, size: 320, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2465 = !{!2466, !2467, !2468, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2463, file: !2464, line: 16, baseType: !789, size: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2463, file: !2464, line: 17, baseType: !45, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2463, file: !2464, line: 18, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 19, baseType: !374, size: 32, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2452, file: !2453, line: 50, baseType: !45, size: 64, offset: 704)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2452, file: !2453, line: 51, baseType: !507, size: 64, offset: 768)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2452, file: !2453, line: 52, baseType: !507, size: 64, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2452, file: !2453, line: 53, baseType: !507, size: 64, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2452, file: !2453, line: 54, baseType: !507, size: 64, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2452, file: !2453, line: 55, baseType: !507, size: 64, offset: 1024)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2452, file: !2453, line: 56, baseType: !45, size: 64, offset: 1088)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2452, file: !2453, line: 57, baseType: !45, size: 64, offset: 1152)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2452, file: !2453, line: 58, baseType: !45, size: 64, offset: 1216)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2452, file: !2453, line: 59, baseType: !45, size: 64, offset: 1280)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2452, file: !2453, line: 60, baseType: !45, size: 64, offset: 1344)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2452, file: !2453, line: 61, baseType: !2293, size: 64, offset: 1408)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2452, file: !2453, line: 62, baseType: !893, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2452, file: !2453, line: 63, baseType: !893, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2433, file: !182, line: 681, baseType: !893, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2433, file: !182, line: 682, baseType: !893, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2433, file: !182, line: 683, baseType: !893, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2433, file: !182, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2433, file: !182, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2433, file: !182, line: 690, baseType: !499, size: 512, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2433, file: !182, line: 691, baseType: !432, size: 64, offset: 1152)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2433, file: !182, line: 692, baseType: !1020, size: 256, offset: 1216)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2433, file: !182, line: 693, baseType: !60, size: 192, offset: 1472)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2433, file: !182, line: 694, baseType: !2460, size: 64, offset: 1664)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2433, file: !182, line: 695, baseType: !55, size: 32, offset: 1728)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2433, file: !182, line: 696, baseType: !55, size: 32, offset: 1760)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2433, file: !182, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2433, file: !182, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2433, file: !182, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2433, file: !182, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2433, file: !182, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2433, file: !182, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2433, file: !182, line: 703, baseType: !893, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2433, file: !182, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2433, file: !182, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2433, file: !182, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2433, file: !182, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2433, file: !182, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2433, file: !182, line: 709, baseType: !7, size: 32, offset: 1824)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2433, file: !182, line: 710, baseType: !181, size: 32, offset: 1856)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2433, file: !182, line: 711, baseType: !189, size: 32, offset: 1888)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2433, file: !182, line: 712, baseType: !189, size: 32, offset: 1920)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2433, file: !182, line: 713, baseType: !28, size: 32, offset: 1952)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2433, file: !182, line: 714, baseType: !28, size: 32, offset: 1984)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2433, file: !182, line: 715, baseType: !432, size: 64, offset: 2048)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2433, file: !182, line: 716, baseType: !432, size: 64, offset: 2112)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2433, file: !182, line: 717, baseType: !432, size: 64, offset: 2176)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2433, file: !182, line: 718, baseType: !432, size: 64, offset: 2240)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2433, file: !182, line: 720, baseType: !2523, size: 64, offset: 2304)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !182, line: 632, size: 64, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2524, file: !182, line: 633, baseType: !65, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2524, file: !182, line: 634, baseType: !7, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2433, file: !182, line: 721, baseType: !2529, size: 64, offset: 2368)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2293, !905}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2433, file: !182, line: 722, baseType: !2533, size: 64, offset: 2432)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !182, line: 722, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2289, file: !175, line: 727, baseType: !2536, size: 64, offset: 4224)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !182, line: 742, size: 1792, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2545, !2546, !2547}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2537, file: !182, line: 743, baseType: !2323, size: 1472)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2537, file: !182, line: 744, baseType: !2326, size: 64, offset: 1472)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2537, file: !182, line: 745, baseType: !2542, size: 64, offset: 1536)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !2293, !893}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2537, file: !182, line: 746, baseType: !2326, size: 64, offset: 1600)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2537, file: !182, line: 747, baseType: !2317, size: 64, offset: 1664)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2537, file: !182, line: 748, baseType: !2317, size: 64, offset: 1728)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2289, file: !175, line: 736, baseType: !2549, size: 128, offset: 4288)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !175, line: 529, size: 128, elements: !2550)
!2550 = !{!2551, !2555}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2549, file: !175, line: 531, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2554, line: 13, flags: DIFlagFwdDecl)
!2554 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2549, file: !175, line: 532, baseType: !2556, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !175, line: 49, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2289, file: !175, line: 738, baseType: !2559, size: 64, offset: 4416)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !175, line: 738, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2289, file: !175, line: 740, baseType: !2563, size: 64, offset: 4480)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2289, file: !175, line: 741, baseType: !432, size: 64, offset: 4544)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2289, file: !175, line: 746, baseType: !432, size: 64, offset: 4608)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2289, file: !175, line: 747, baseType: !2567, size: 64, offset: 4672)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !175, line: 747, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2289, file: !175, line: 749, baseType: !2571, size: 64, offset: 4736)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !175, line: 428, size: 128, elements: !2573)
!2573 = !{!2574, !2575, !2576}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2572, file: !175, line: 433, baseType: !7, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2572, file: !175, line: 434, baseType: !7, size: 32, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2572, file: !175, line: 435, baseType: !45, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2289, file: !175, line: 751, baseType: !103, size: 128, offset: 4800)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2289, file: !175, line: 762, baseType: !2579, size: 64, offset: 4928)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !175, line: 762, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2289, file: !175, line: 770, baseType: !2582, offset: 4992)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2583, line: 5, elements: !702)
!2583 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2289, file: !175, line: 772, baseType: !2585, size: 64, offset: 4992)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2587, line: 18, flags: DIFlagFwdDecl)
!2587 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2289, file: !175, line: 773, baseType: !2589, size: 64, offset: 5056)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2355, line: 22, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2289, file: !175, line: 776, baseType: !28, size: 32, offset: 5120)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2289, file: !175, line: 778, baseType: !1336, size: 32, offset: 5152)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2289, file: !175, line: 779, baseType: !374, size: 32, offset: 5184)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2289, file: !175, line: 781, baseType: !65, size: 32, offset: 5216)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2289, file: !175, line: 782, baseType: !103, size: 128, offset: 5248)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2289, file: !175, line: 784, baseType: !2597, size: 64, offset: 5376)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2599)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2600, line: 52, size: 768, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2610, !2614, !2615, !2616, !2643, !2647, !2651}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2599, file: !2600, line: 53, baseType: !22, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2599, file: !2600, line: 55, baseType: !1648, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2599, file: !2600, line: 56, baseType: !1648, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2599, file: !2600, line: 58, baseType: !2306, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2599, file: !2600, line: 59, baseType: !2607, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!981, !2309, !2315}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2599, file: !2600, line: 61, baseType: !2611, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !2597}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2599, file: !2600, line: 62, baseType: !2317, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2599, file: !2600, line: 64, baseType: !2326, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2599, file: !2600, line: 66, baseType: !2617, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !146, line: 39, size: 384, elements: !2620)
!2620 = !{!2621, !2622, !2626, !2630, !2638, !2642}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2619, file: !146, line: 40, baseType: !145, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2619, file: !146, line: 41, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!893}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2619, file: !146, line: 42, baseType: !2627, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!26}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2619, file: !146, line: 43, baseType: !2631, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!2634, !2636}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !146, line: 19, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2619, file: !146, line: 44, baseType: !2639, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!2634}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2619, file: !146, line: 45, baseType: !1293, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2599, file: !2600, line: 67, baseType: !2644, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!2634, !2309}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2599, file: !2600, line: 69, baseType: !2648, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{null, !2309, !1084, !1085}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2599, file: !2600, line: 71, baseType: !2321, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2289, file: !175, line: 785, baseType: !1648, size: 64, offset: 5440)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2289, file: !175, line: 787, baseType: !2317, size: 64, offset: 5504)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2289, file: !175, line: 788, baseType: !2655, size: 64, offset: 5568)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !175, line: 46, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2289, file: !175, line: 789, baseType: !2658, size: 64, offset: 5632)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !175, line: 48, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2289, file: !175, line: 791, baseType: !2661, size: 64, offset: 5696)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !175, line: 597, size: 128, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2662, file: !175, line: 598, baseType: !196, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2662, file: !175, line: 599, baseType: !205, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2662, file: !175, line: 600, baseType: !210, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2662, file: !175, line: 601, baseType: !893, size: 8, offset: 96)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2662, file: !175, line: 602, baseType: !893, size: 8, offset: 104)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2289, file: !175, line: 793, baseType: !215, size: 32, offset: 5760)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2289, file: !175, line: 795, baseType: !893, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2289, file: !175, line: 796, baseType: !893, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2289, file: !175, line: 797, baseType: !893, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2289, file: !175, line: 798, baseType: !893, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2289, file: !175, line: 799, baseType: !893, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2208, file: !2209, line: 302, baseType: !709, size: 64, offset: 1344)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2208, file: !2209, line: 303, baseType: !7, size: 32, offset: 1408)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2208, file: !2209, line: 304, baseType: !1059, size: 256, offset: 1472)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2208, file: !2209, line: 305, baseType: !65, size: 32, offset: 1728)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2208, file: !2209, line: 318, baseType: !65, size: 32, offset: 1760)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2208, file: !2209, line: 322, baseType: !1020, size: 256, offset: 1792)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2208, file: !2209, line: 323, baseType: !2227, size: 128, offset: 2048)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2208, file: !2209, line: 324, baseType: !2683, offset: 2176)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, elements: !1124)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1686, file: !250, line: 444, baseType: !2686, size: 64, offset: 1152)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{null, !709}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1686, file: !250, line: 445, baseType: !2690, size: 64, offset: 1216)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!28, !2142, !2180}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1673, file: !250, line: 486, baseType: !45, size: 64, offset: 896)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1673, file: !250, line: 487, baseType: !913, size: 320, offset: 960)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1673, file: !250, line: 488, baseType: !2696, size: 32, offset: 1280)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2697, line: 8, baseType: !374)
!2697 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1673, file: !250, line: 489, baseType: !65, size: 32, offset: 1312)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1673, file: !250, line: 490, baseType: !103, size: 128, offset: 1344)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1673, file: !250, line: 491, baseType: !26, size: 64, offset: 1472)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1663, file: !1632, line: 180, baseType: !2702, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!1414, !709, !1574, !1662, !981, !47, !41}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1663, file: !1632, line: 182, baseType: !2702, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1663, file: !1632, line: 184, baseType: !2707, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!28, !709, !1574, !1662, !1802}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1651, file: !1632, line: 90, baseType: !2711, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1651, file: !1632, line: 91, baseType: !2713, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1622, file: !1569, line: 120, baseType: !2715, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!2617, !1592}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1622, file: !1569, line: 121, baseType: !2719, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2634, !1592}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1622, file: !1569, line: 122, baseType: !2723, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !1592, !1084, !1085}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1568, file: !1569, line: 70, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2729, line: 190, size: 1152, elements: !2730)
!2729 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2861, !2862, !2863, !2864, !2865, !2868}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2728, file: !2729, line: 191, baseType: !55, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2728, file: !2729, line: 192, baseType: !55, size: 32, offset: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2728, file: !2729, line: 202, baseType: !2727, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2728, file: !2729, line: 203, baseType: !22, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2728, file: !2729, line: 205, baseType: !424, size: 192, align: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2728, file: !2729, line: 207, baseType: !2634, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2728, file: !2729, line: 208, baseType: !7, size: 32, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !2729, line: 209, baseType: !2739, size: 256, offset: 512)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !2729, line: 209, size: 256, elements: !2740)
!2740 = !{!2741, !2750, !2754}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2739, file: !2729, line: 210, baseType: !2742, size: 256)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2729, line: 153, size: 256, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2749}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2742, file: !2729, line: 154, baseType: !45, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2742, file: !2729, line: 156, baseType: !567, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2742, file: !2729, line: 162, baseType: !2747, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2729, line: 162, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2742, file: !2729, line: 167, baseType: !45, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2739, file: !2729, line: 211, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2729, line: 170, size: 64, elements: !2752)
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2751, file: !2729, line: 171, baseType: !2727, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2739, file: !2729, line: 212, baseType: !2755, size: 256)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2729, line: 174, size: 256, elements: !2756)
!2756 = !{!2757, !2856, !2859, !2860}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2755, file: !2729, line: 175, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2729, line: 271, size: 768, elements: !2761)
!2761 = !{!2762, !2820, !2824, !2825, !2826, !2827, !2828, !2832, !2833, !2834, !2835, !2852}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2760, file: !2729, line: 276, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!28, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2729, line: 251, size: 1216, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2767, file: !2729, line: 253, baseType: !2727, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2767, file: !2729, line: 254, baseType: !709, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2767, file: !2729, line: 255, baseType: !2772, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2774, line: 17, size: 960, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2805, !2806, !2809}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2773, file: !2774, line: 18, baseType: !981, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2773, file: !2774, line: 19, baseType: !41, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2773, file: !2774, line: 20, baseType: !41, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2773, file: !2774, line: 21, baseType: !41, size: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2773, file: !2774, line: 22, baseType: !41, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2773, file: !2774, line: 23, baseType: !47, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2773, file: !2774, line: 24, baseType: !47, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2773, file: !2774, line: 25, baseType: !737, size: 256, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2773, file: !2774, line: 26, baseType: !2785, size: 64, offset: 704)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2787)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2774, line: 32, size: 256, elements: !2788)
!2788 = !{!2789, !2793, !2797, !2801}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2787, file: !2774, line: 33, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!26, !2772, !46}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2787, file: !2774, line: 34, baseType: !2794, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2772, !26}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2787, file: !2774, line: 35, baseType: !2798, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!26, !2772, !26, !46}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2787, file: !2774, line: 36, baseType: !2802, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!28, !2772, !26}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2773, file: !2774, line: 27, baseType: !28, size: 32, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2773, file: !2774, line: 28, baseType: !2807, size: 64, offset: 832)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2773, file: !2774, line: 29, baseType: !26, size: 64, offset: 896)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2767, file: !2729, line: 256, baseType: !26, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2767, file: !2729, line: 259, baseType: !737, size: 256, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2767, file: !2729, line: 260, baseType: !737, size: 256, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2767, file: !2729, line: 261, baseType: !28, size: 32, offset: 768)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2767, file: !2729, line: 262, baseType: !103, size: 128, offset: 832)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2767, file: !2729, line: 263, baseType: !981, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2767, file: !2729, line: 265, baseType: !41, size: 64, offset: 1024)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2767, file: !2729, line: 266, baseType: !893, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2767, file: !2729, line: 267, baseType: !893, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2767, file: !2729, line: 268, baseType: !1847, size: 64, offset: 1152)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2760, file: !2729, line: 277, baseType: !2821, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !2766}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2760, file: !2729, line: 290, baseType: !2802, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2760, file: !2729, line: 292, baseType: !2790, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2760, file: !2729, line: 293, baseType: !2798, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2760, file: !2729, line: 294, baseType: !2794, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2760, file: !2729, line: 296, baseType: !2829, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!1414, !2766, !981, !41, !47}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2760, file: !2729, line: 306, baseType: !41, size: 64, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2760, file: !2729, line: 313, baseType: !893, size: 8, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2760, file: !2729, line: 314, baseType: !2829, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2760, file: !2729, line: 317, baseType: !2836, size: 64, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!2839, !2766, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2840, line: 59, baseType: !7)
!2840 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2843, line: 37, size: 128, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2844 = !{!2845, !2851}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2842, file: !2843, line: 38, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2843, line: 31, baseType: !2847)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !709, !2850, !2841}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2842, file: !2843, line: 39, baseType: !2839, size: 32, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2760, file: !2729, line: 320, baseType: !2853, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!28, !2766, !1802}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2755, file: !2729, line: 176, baseType: !2857, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2729, line: 35, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2755, file: !2729, line: 177, baseType: !47, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2755, file: !2729, line: 178, baseType: !2727, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2728, file: !2729, line: 215, baseType: !26, size: 64, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2728, file: !2729, line: 221, baseType: !432, size: 64, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2728, file: !2729, line: 223, baseType: !32, size: 16, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2728, file: !2729, line: 224, baseType: !30, size: 16, offset: 912)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2728, file: !2729, line: 225, baseType: !2866, size: 64, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2729, line: 36, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2728, file: !2729, line: 227, baseType: !717, size: 128, align: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1568, file: !1569, line: 71, baseType: !2870, size: 32, offset: 448)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2871, line: 19, size: 32, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2870, file: !2871, line: 20, baseType: !380, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1568, file: !1569, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1568, file: !1569, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1568, file: !1569, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1568, file: !1569, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1568, file: !1569, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1565, file: !139, line: 47, baseType: !1555, size: 64, offset: 512)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1565, file: !139, line: 48, baseType: !1574, size: 64, offset: 576)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1565, file: !139, line: 49, baseType: !2882, size: 64, offset: 640)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !139, line: 49, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1565, file: !139, line: 50, baseType: !1058, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1556, file: !139, line: 418, baseType: !2886, size: 64, offset: 1408)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !139, line: 53, size: 448, elements: !2888)
!2888 = !{!2889, !2890, !2895, !2899, !2903, !2907}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2887, file: !139, line: 54, baseType: !1639, size: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2887, file: !139, line: 55, baseType: !2891, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!1414, !2886, !2894, !981}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2887, file: !139, line: 57, baseType: !2896, size: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!1414, !2886, !2894, !22, !41}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2887, file: !139, line: 59, baseType: !2900, size: 64, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !1555, !22}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2887, file: !139, line: 60, baseType: !2904, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!28, !1555}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2887, file: !139, line: 61, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !1555}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1556, file: !139, line: 419, baseType: !22, size: 64, offset: 1472)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1556, file: !139, line: 420, baseType: !22, size: 64, offset: 1536)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1556, file: !139, line: 421, baseType: !1574, size: 64, offset: 1600)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1556, file: !139, line: 424, baseType: !2915, size: 64, offset: 1664)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2917)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !139, line: 424, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1556, file: !139, line: 425, baseType: !2919, size: 64, offset: 1728)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1556, file: !139, line: 426, baseType: !7, size: 32, offset: 1792)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1556, file: !139, line: 435, baseType: !737, size: 256, offset: 1856)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1556, file: !139, line: 437, baseType: !2924, size: 64, offset: 2112)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2926, line: 69, size: 320, elements: !2927)
!2926 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2927 = !{!2928, !2929, !2930, !2947, !2949, !2952, !2953}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2925, file: !2926, line: 70, baseType: !22, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2925, file: !2926, line: 71, baseType: !1555, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2925, file: !2926, line: 72, baseType: !2931, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2933)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2926, line: 47, size: 256, elements: !2934)
!2934 = !{!2935, !2936, !2942, !2946}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2933, file: !2926, line: 49, baseType: !7, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2933, file: !2926, line: 51, baseType: !2937, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!28, !22, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2925)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2933, file: !2926, line: 53, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!28, !981, !2940}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2933, file: !2926, line: 55, baseType: !1293, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2925, file: !2926, line: 73, baseType: !2948, size: 16, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2925, file: !2926, line: 74, baseType: !2950, size: 8, offset: 208)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !90, line: 16, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !92, line: 20, baseType: !2216)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2925, file: !2926, line: 75, baseType: !89, size: 8, offset: 216)
!2953 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2926, line: 76, baseType: !2954, size: 64, offset: 256)
!2954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !2926, line: 76, size: 64, elements: !2955)
!2955 = !{!2956, !2957, !2964}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2954, file: !2926, line: 77, baseType: !26, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2954, file: !2926, line: 78, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2926, line: 86, size: 128, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2960, file: !2926, line: 87, baseType: !7, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2960, file: !2926, line: 88, baseType: !981, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2954, file: !2926, line: 79, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2926, line: 92, size: 256, elements: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2967, file: !2926, line: 94, baseType: !7, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2967, file: !2926, line: 95, baseType: !7, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2967, file: !2926, line: 96, baseType: !2238, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2967, file: !2926, line: 97, baseType: !2931, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2967, file: !2926, line: 98, baseType: !26, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1556, file: !139, line: 438, baseType: !7, size: 32, offset: 2176)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1556, file: !139, line: 441, baseType: !7, size: 32, offset: 2208)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1556, file: !139, line: 442, baseType: !2915, size: 64, offset: 2240)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1556, file: !139, line: 443, baseType: !2919, size: 64, offset: 2304)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1556, file: !139, line: 444, baseType: !893, size: 8, offset: 2368)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1556, file: !139, line: 451, baseType: !893, size: 8, offset: 2376)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1556, file: !139, line: 454, baseType: !7, size: 32, offset: 2400)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1556, file: !139, line: 455, baseType: !2982, size: 64, offset: 2432)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2984, line: 23, size: 96, elements: !2985)
!2984 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2985 = !{!2986, !2987, !2988}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2983, file: !2984, line: 24, baseType: !28, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2983, file: !2984, line: 24, baseType: !28, size: 32, offset: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2983, file: !2984, line: 24, baseType: !28, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1556, file: !139, line: 458, baseType: !2990, size: 64, offset: 2496)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!28}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1556, file: !139, line: 460, baseType: !2994, size: 4032, align: 512, offset: 2560)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2995, size: 4032, elements: !3011)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !139, line: 362, size: 576, elements: !2996)
!2996 = !{!2997, !2998, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2995, file: !139, line: 363, baseType: !26, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2995, file: !139, line: 364, baseType: !7, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2995, file: !139, line: 367, baseType: !3000, size: 448, offset: 128)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !139, line: 319, size: 448, elements: !3001)
!3001 = !{!3002, !3003}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3000, file: !139, line: 320, baseType: !1555, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3000, file: !139, line: 321, baseType: !3004, size: 384, offset: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3005, line: 40, size: 384, elements: !3006)
!3005 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3004, file: !3005, line: 41, baseType: !3008, size: 384, align: 64)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, align: 64, elements: !3009)
!3009 = !{!3010}
!3010 = !DISubrange(count: 2)
!3011 = !{!3012}
!3012 = !DISubrange(count: 7)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1556, file: !139, line: 463, baseType: !3014, size: 192, offset: 6592)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3015, line: 8, size: 192, elements: !3016)
!3015 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3016 = !{!3017, !3018, !3020}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3014, file: !3015, line: 10, baseType: !7, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3014, file: !3015, line: 11, baseType: !3019, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3014, file: !3015, line: 12, baseType: !3021, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3023, line: 59, size: 48, elements: !3024)
!3023 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3024 = !{!3025, !3028, !3029, !3030, !3031, !3032}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3022, file: !3023, line: 60, baseType: !3026, size: 16)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !90, line: 18, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !92, line: 23, baseType: !941)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3022, file: !3023, line: 61, baseType: !3026, size: 16, offset: 16)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3022, file: !3023, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3022, file: !3023, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3022, file: !3023, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3022, file: !3023, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1556, file: !139, line: 465, baseType: !45, size: 64, offset: 6784)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1556, file: !139, line: 469, baseType: !7, size: 32, offset: 6848)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1556, file: !139, line: 470, baseType: !103, size: 128, offset: 6912)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1556, file: !139, line: 471, baseType: !3037, size: 64, offset: 7040)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3039, line: 33, size: 96, elements: !3040)
!3039 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3040 = !{!3041, !3042, !3043, !3044}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3038, file: !3039, line: 37, baseType: !28, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3038, file: !3039, line: 43, baseType: !28, size: 32, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3038, file: !3039, line: 45, baseType: !32, size: 16, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3038, file: !3039, line: 47, baseType: !32, size: 16, offset: 80)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1556, file: !139, line: 476, baseType: !3046, size: 64, offset: 7104)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !139, line: 378, size: 256, elements: !3048)
!3048 = !{!3049, !3065, !3066, !3067}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3047, file: !139, line: 379, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3052, line: 204, baseType: !3053)
!3052 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3052, line: 197, size: 192, elements: !3054)
!3054 = !{!3055, !3057, !3058, !3059, !3061, !3063}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3053, file: !3052, line: 198, baseType: !3056, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3052, line: 21, baseType: !375)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3053, file: !3052, line: 199, baseType: !93, size: 8, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3053, file: !3052, line: 200, baseType: !93, size: 8, offset: 40)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3053, file: !3052, line: 201, baseType: !3060, size: 16, offset: 48)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3052, line: 17, baseType: !100)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3053, file: !3052, line: 202, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3052, line: 16, baseType: !433)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3053, file: !3052, line: 203, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3052, line: 22, baseType: !433)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3047, file: !139, line: 380, baseType: !7, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3047, file: !139, line: 381, baseType: !981, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3047, file: !139, line: 382, baseType: !981, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1556, file: !139, line: 477, baseType: !3047, size: 256, offset: 7168)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1556, file: !139, line: 480, baseType: !3070, size: 64, offset: 7424)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !139, line: 480, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1556, file: !139, line: 483, baseType: !3073, size: 64, offset: 7488)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !139, line: 483, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1556, file: !139, line: 488, baseType: !981, size: 64, offset: 7552)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1556, file: !139, line: 492, baseType: !26, size: 64, offset: 7616)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1556, file: !139, line: 493, baseType: !7, size: 32, offset: 7680)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1556, file: !139, line: 495, baseType: !26, size: 64, offset: 7744)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1556, file: !139, line: 496, baseType: !7, size: 32, offset: 7808)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1556, file: !139, line: 499, baseType: !7, size: 32, offset: 7840)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1556, file: !139, line: 500, baseType: !3082, size: 64, offset: 7872)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3084, line: 45, baseType: !3085)
!3084 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1556, file: !139, line: 503, baseType: !7, size: 32, offset: 7936)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1556, file: !139, line: 504, baseType: !3088, size: 64, offset: 8000)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3091, line: 96, size: 192, elements: !3092)
!3091 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3092 = !{!3093, !3094, !3136, !3139}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3090, file: !3091, line: 97, baseType: !7, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3090, file: !3091, line: 98, baseType: !3095, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3091, line: 24, size: 3072, elements: !3097)
!3097 = !{!3098, !3100, !3101, !3102, !3103, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3133, !3134, !3135}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3096, file: !3091, line: 26, baseType: !3099, size: 128)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 128, elements: !3009)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3096, file: !3091, line: 27, baseType: !3099, size: 128, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3096, file: !3091, line: 28, baseType: !28, size: 32, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3096, file: !3091, line: 31, baseType: !65, size: 32, align: 512, offset: 512)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3096, file: !3091, line: 32, baseType: !3104, size: 960, offset: 576)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3105, line: 206, size: 960, elements: !3106)
!3105 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3106 = !{!3107, !3108, !3111, !3113, !3114, !3115}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3104, file: !3105, line: 207, baseType: !720, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3104, file: !3105, line: 208, baseType: !3109, size: 256, offset: 64)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3110, size: 256, elements: !794)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3104, file: !3105, line: 209, baseType: !3112, size: 256, offset: 320)
!3112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !794)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3104, file: !3105, line: 213, baseType: !361, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3104, file: !3105, line: 215, baseType: !1119, size: 256, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3104, file: !3105, line: 216, baseType: !89, size: 8, offset: 896)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3096, file: !3091, line: 33, baseType: !45, size: 64, offset: 1536)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3096, file: !3091, line: 34, baseType: !45, size: 64, offset: 1600)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3096, file: !3091, line: 35, baseType: !893, size: 8, offset: 1664)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3096, file: !3091, line: 36, baseType: !2463, size: 320, offset: 1728)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3096, file: !3091, line: 37, baseType: !1020, size: 256, offset: 2048)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3096, file: !3091, line: 38, baseType: !717, size: 128, align: 64, offset: 2304)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3096, file: !3091, line: 39, baseType: !3123, size: 64, offset: 2432)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3091, line: 49, size: 768, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3124, file: !3091, line: 50, baseType: !65, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3124, file: !3091, line: 51, baseType: !3112, size: 256, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3124, file: !3091, line: 53, baseType: !3112, size: 256, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3124, file: !3091, line: 54, baseType: !45, size: 64, offset: 576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3124, file: !3091, line: 55, baseType: !3123, size: 64, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3124, file: !3091, line: 56, baseType: !28, size: 32, offset: 704)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3124, file: !3091, line: 57, baseType: !28, size: 32, offset: 736)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3096, file: !3091, line: 40, baseType: !45, size: 64, offset: 2496)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3096, file: !3091, line: 42, baseType: !28, size: 32, offset: 2560)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3096, file: !3091, line: 43, baseType: !3089, size: 64, offset: 2624)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3090, file: !3091, line: 99, baseType: !3137, offset: 128)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3138, line: 211, elements: !702)
!3138 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3090, file: !3091, line: 100, baseType: !3140, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3091, line: 63, size: 3008, elements: !3142)
!3142 = !{!3143, !3144, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3174}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3141, file: !3091, line: 64, baseType: !3123, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3141, file: !3091, line: 65, baseType: !3145, size: 192, offset: 64)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3123, size: 192, elements: !773)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3141, file: !3091, line: 67, baseType: !28, size: 32, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3141, file: !3091, line: 68, baseType: !737, size: 256, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3141, file: !3091, line: 69, baseType: !65, size: 32, offset: 576)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3141, file: !3091, line: 70, baseType: !737, size: 256, offset: 640)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3141, file: !3091, line: 71, baseType: !45, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3141, file: !3091, line: 72, baseType: !45, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3141, file: !3091, line: 73, baseType: !45, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3141, file: !3091, line: 74, baseType: !45, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3141, file: !3091, line: 75, baseType: !45, size: 64, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3141, file: !3091, line: 76, baseType: !45, size: 64, offset: 1216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3141, file: !3091, line: 77, baseType: !45, size: 64, offset: 1280)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3141, file: !3091, line: 78, baseType: !45, size: 64, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3141, file: !3091, line: 79, baseType: !893, size: 8, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3141, file: !3091, line: 80, baseType: !45, size: 64, offset: 1472)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3141, file: !3091, line: 81, baseType: !737, size: 256, offset: 1536)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3141, file: !3091, line: 82, baseType: !1059, size: 256, offset: 1792)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3141, file: !3091, line: 84, baseType: !55, size: 32, offset: 2048)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3141, file: !3091, line: 87, baseType: !45, size: 64, offset: 2112)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3141, file: !3091, line: 88, baseType: !45, size: 64, offset: 2176)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3141, file: !3091, line: 89, baseType: !3166, size: 704, offset: 2240)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1021, line: 111, size: 704, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3173}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3166, file: !1021, line: 112, baseType: !1020, size: 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3166, file: !1021, line: 113, baseType: !2463, size: 320, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3166, file: !1021, line: 116, baseType: !3171, size: 64, offset: 576)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1021, line: 18, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3166, file: !1021, line: 117, baseType: !28, size: 32, offset: 640)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3141, file: !3091, line: 90, baseType: !3089, size: 64, offset: 2944)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1556, file: !139, line: 515, baseType: !3176, size: 64, offset: 8064)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3178, line: 117, size: 128, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3179 = !{!3180, !3181, !3182}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3177, file: !3178, line: 118, baseType: !905, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3177, file: !3178, line: 119, baseType: !905, size: 32, offset: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3177, file: !3178, line: 120, baseType: !361, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1556, file: !139, line: 516, baseType: !7, size: 32, offset: 8128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1556, file: !139, line: 519, baseType: !7, size: 32, offset: 8160)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1556, file: !139, line: 520, baseType: !3186, size: 64, offset: 8192)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1556, file: !139, line: 523, baseType: !3188, size: 64, offset: 8256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !152, line: 372, size: 1024, elements: !3191)
!3191 = !{!3192, !3193, !3233, !3293, !3374, !3375, !3378, !3383, !3384, !3385, !3386, !3388, !3391}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3190, file: !152, line: 373, baseType: !103, size: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3190, file: !152, line: 374, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !152, line: 291, size: 576, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3204, !3227, !3231, !3232}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3195, file: !152, line: 292, baseType: !22, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3195, file: !152, line: 293, baseType: !26, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !3195, file: !152, line: 295, baseType: !26, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3195, file: !152, line: 297, baseType: !3201, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!28, !3189, !151, !26}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !3195, file: !152, line: 299, baseType: !3205, size: 64, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !152, line: 275, size: 320, elements: !3207)
!3207 = !{!3208, !3209}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3206, file: !152, line: 276, baseType: !22, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !152, line: 277, baseType: !3210, size: 256, offset: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3206, file: !152, line: 277, size: 256, elements: !3211)
!3211 = !{!3212, !3223}
!3212 = !DIDerivedType(tag: DW_TAG_member, scope: !3210, file: !152, line: 278, baseType: !3213, size: 256)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3210, file: !152, line: 278, size: 256, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3220, !3221, !3222}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3213, file: !152, line: 279, baseType: !22, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3213, file: !152, line: 280, baseType: !3085, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3213, file: !152, line: 281, baseType: !3085, size: 32, offset: 96)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3213, file: !152, line: 282, baseType: !3219, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !3213, file: !152, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !3213, file: !152, line: 284, baseType: !3085, size: 32, offset: 160)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3213, file: !152, line: 285, baseType: !3085, size: 32, offset: 192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !3210, file: !152, line: 287, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!28, !3189}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !3195, file: !152, line: 300, baseType: !3228, size: 64, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!106, !3189}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !3195, file: !152, line: 301, baseType: !103, size: 128, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !3195, file: !152, line: 302, baseType: !3224, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !152, line: 375, baseType: !3234, size: 64, offset: 192)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !152, line: 375, size: 64, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3234, file: !152, line: 376, baseType: !22, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !3234, file: !152, line: 378, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !3084, line: 32, size: 640, elements: !3240)
!3240 = !{!3241, !3242, !3254, !3278, !3279, !3280, !3281, !3282, !3286}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3239, file: !3084, line: 33, baseType: !22, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3239, file: !3084, line: 34, baseType: !3243, size: 128, offset: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3178, line: 85, size: 128, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3243, file: !3178, line: 86, baseType: !55, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3243, file: !3178, line: 101, baseType: !3247, size: 64, offset: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3243, file: !3178, line: 101, size: 64, elements: !3248)
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3247, file: !3178, line: 102, baseType: !45, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3247, file: !3178, line: 103, baseType: !3176, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3247, file: !3178, line: 104, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3178, line: 104, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !3239, file: !3084, line: 35, baseType: !3255, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !3257, line: 61, size: 128, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3256, file: !3257, line: 62, baseType: !26, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !3257, line: 63, baseType: !3261, size: 64, offset: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !3257, line: 63, size: 64, elements: !3262)
!3262 = !{!3263, !3264, !3277}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3261, file: !3257, line: 65, baseType: !45, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !3261, file: !3257, line: 66, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !3267, line: 169, size: 192, elements: !3268)
!3267 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3266, file: !3267, line: 170, baseType: !3265, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3266, file: !3267, line: 171, baseType: !1555, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3266, file: !3267, line: 172, baseType: !3272, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3257, line: 32, size: 64, elements: !3274)
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3273, file: !3257, line: 33, baseType: !905, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3273, file: !3257, line: 34, baseType: !905, size: 32, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3261, file: !3257, line: 67, baseType: !3272, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !3239, file: !3084, line: 36, baseType: !26, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3239, file: !3084, line: 37, baseType: !26, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !3239, file: !3084, line: 38, baseType: !26, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !3239, file: !3084, line: 39, baseType: !2990, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !3239, file: !3084, line: 40, baseType: !3283, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3239, file: !3084, line: 41, baseType: !3287, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !3084, line: 26, size: 192, elements: !3289)
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3288, file: !3084, line: 27, baseType: !26, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3288, file: !3084, line: 28, baseType: !26, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3288, file: !3084, line: 29, baseType: !28, size: 32, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3190, file: !152, line: 380, baseType: !3294, size: 256, offset: 256)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !152, line: 148, size: 256, elements: !3295)
!3295 = !{!3296, !3297, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3294, file: !152, line: 149, baseType: !789, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !152, line: 150, baseType: !28, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3294, file: !152, line: 151, baseType: !3299, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !152, line: 141, size: 256, elements: !3301)
!3301 = !{!3302, !3371, !3372, !3373}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3300, file: !152, line: 142, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !152, line: 138, baseType: !3304)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!162, !3307, !28, !3370}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !152, line: 93, size: 67776, elements: !3309)
!3309 = !{!3310, !3313, !3316, !3319, !3320, !3321, !3322, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3350, !3353, !3354, !3355, !3363, !3364, !3365, !3366, !3367, !3368, !3369}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !3308, file: !152, line: 94, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !152, line: 13, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3308, file: !152, line: 95, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !152, line: 15, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !3308, file: !152, line: 96, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !152, line: 14, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3308, file: !152, line: 97, baseType: !26, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !3308, file: !152, line: 98, baseType: !28, size: 32, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3308, file: !152, line: 99, baseType: !737, size: 256, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !3308, file: !152, line: 100, baseType: !3323, size: 64, offset: 576)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !3326, line: 10, flags: DIFlagFwdDecl)
!3326 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !3308, file: !152, line: 101, baseType: !45, size: 64, offset: 640)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3308, file: !152, line: 102, baseType: !26, size: 64, offset: 704)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !3308, file: !152, line: 103, baseType: !7, size: 32, offset: 768)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3308, file: !152, line: 104, baseType: !981, size: 64, offset: 832)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !3308, file: !152, line: 105, baseType: !7, size: 32, offset: 896)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !3308, file: !152, line: 106, baseType: !361, size: 64, offset: 960)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !3308, file: !152, line: 109, baseType: !3334, size: 33088, offset: 1024)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3335, line: 14, size: 33088, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3336 = !{!3337, !3341, !3348, !3349}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3334, file: !3335, line: 15, baseType: !3338, size: 32768)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32768, elements: !3339)
!3339 = !{!3340}
!3340 = !DISubrange(count: 4096)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3334, file: !3335, line: 16, baseType: !3342, size: 192, offset: 32768)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3343, line: 18, size: 192, elements: !3344)
!3343 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3342, file: !3343, line: 19, baseType: !981, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3342, file: !3343, line: 20, baseType: !41, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3342, file: !3343, line: 21, baseType: !41, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3334, file: !3335, line: 17, baseType: !41, size: 64, offset: 32960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3334, file: !3335, line: 18, baseType: !28, size: 32, offset: 33024)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !3308, file: !152, line: 111, baseType: !3351, size: 64, offset: 34112)
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !628, line: 913, baseType: !3352)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 64, elements: !633)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !3308, file: !152, line: 114, baseType: !893, size: 8, offset: 34176)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3308, file: !152, line: 117, baseType: !3334, size: 33088, offset: 34240)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !3308, file: !152, line: 118, baseType: !3356, size: 64, offset: 67328)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !152, line: 79, size: 64, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3357, file: !152, line: 80, baseType: !32, size: 16)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !152, line: 81, baseType: !93, size: 8, offset: 16)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3357, file: !152, line: 82, baseType: !93, size: 8, offset: 24)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3357, file: !152, line: 83, baseType: !28, size: 32, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !3308, file: !152, line: 119, baseType: !45, size: 64, offset: 67392)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !3308, file: !152, line: 120, baseType: !28, size: 32, offset: 67456)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !3308, file: !152, line: 121, baseType: !28, size: 32, offset: 67488)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3308, file: !152, line: 122, baseType: !28, size: 32, offset: 67520)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !3308, file: !152, line: 123, baseType: !432, size: 64, offset: 67584)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3308, file: !152, line: 125, baseType: !47, size: 64, offset: 67648)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3308, file: !152, line: 126, baseType: !361, size: 64, offset: 67712)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3300, file: !152, line: 143, baseType: !3303, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !3300, file: !152, line: 144, baseType: !3303, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !3300, file: !152, line: 145, baseType: !3303, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !3190, file: !152, line: 381, baseType: !981, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3190, file: !152, line: 382, baseType: !3376, size: 64, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !222, line: 821, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !152, line: 387, baseType: !3379, size: 64, offset: 640)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !152, line: 387, size: 64, elements: !3380)
!3380 = !{!3381, !3382}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3379, file: !152, line: 388, baseType: !26, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3379, file: !152, line: 389, baseType: !55, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3190, file: !152, line: 391, baseType: !26, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3190, file: !152, line: 394, baseType: !28, size: 32, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !3190, file: !152, line: 397, baseType: !28, size: 32, offset: 800)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !3190, file: !152, line: 398, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !3190, file: !152, line: 399, baseType: !3389, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !152, line: 399, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !3190, file: !152, line: 401, baseType: !3392, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!28, !3189, !3395}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !222, line: 671, size: 8512, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3581, !3582, !3583, !3584, !3590, !3591, !3592, !3593, !3594, !3678, !3679, !3680, !3681, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3801, !3802, !3803, !3804, !3805, !3806, !3821, !3822, !3823, !3824, !3825, !3831, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3848, !4019, !4020, !4021, !4022, !4292, !4293, !4294}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3396, file: !222, line: 678, baseType: !103, size: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3396, file: !222, line: 684, baseType: !103, size: 128, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3396, file: !222, line: 685, baseType: !103, size: 128, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3396, file: !222, line: 689, baseType: !424, size: 192, align: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3396, file: !222, line: 690, baseType: !432, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3396, file: !222, line: 696, baseType: !103, size: 128, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3396, file: !222, line: 698, baseType: !789, size: 128, offset: 768)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3396, file: !222, line: 699, baseType: !103, size: 128, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3396, file: !222, line: 700, baseType: !28, size: 32, offset: 1024)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3396, file: !222, line: 703, baseType: !28, size: 32, offset: 1056)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3396, file: !222, line: 705, baseType: !28, size: 32, offset: 1088)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3396, file: !222, line: 707, baseType: !7, size: 32, offset: 1120)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3396, file: !222, line: 708, baseType: !3395, size: 64, offset: 1152)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3396, file: !222, line: 714, baseType: !3412, size: 64, offset: 1216)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !222, line: 302, size: 2432, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3491, !3492, !3493, !3494, !3495, !3499, !3500, !3504, !3508, !3509, !3513, !3517, !3518, !3519, !3523, !3527, !3531, !3532, !3533, !3537, !3538, !3542, !3546, !3547, !3567, !3571, !3572, !3573, !3577}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3413, file: !222, line: 303, baseType: !103, size: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3413, file: !222, line: 305, baseType: !1555, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3413, file: !222, line: 306, baseType: !2293, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3413, file: !222, line: 307, baseType: !2293, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3413, file: !222, line: 308, baseType: !1648, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3413, file: !222, line: 309, baseType: !1648, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3413, file: !222, line: 310, baseType: !22, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3413, file: !222, line: 311, baseType: !28, size: 32, offset: 512)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3413, file: !222, line: 316, baseType: !28, size: 32, offset: 544)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3413, file: !222, line: 318, baseType: !3019, size: 64, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3413, file: !222, line: 319, baseType: !3426, size: 64, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !222, line: 977, size: 1856, elements: !3428)
!3428 = !{!3429, !3481, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3427, file: !222, line: 978, baseType: !3430, size: 896)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !222, line: 873, size: 896, elements: !3431)
!3431 = !{!3432, !3433, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3430, file: !222, line: 874, baseType: !3412, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3430, file: !222, line: 875, baseType: !3434, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !222, line: 912, size: 1792, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3435, file: !222, line: 917, baseType: !524, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3435, file: !222, line: 923, baseType: !737, size: 256, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3435, file: !222, line: 925, baseType: !103, size: 128, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3435, file: !222, line: 926, baseType: !3441, size: 128, offset: 448)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !222, line: 901, size: 128, elements: !3442)
!3442 = !{!3443, !3444}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3441, file: !222, line: 902, baseType: !567, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3441, file: !222, line: 903, baseType: !432, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3435, file: !222, line: 927, baseType: !3441, size: 128, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3435, file: !222, line: 928, baseType: !103, size: 128, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3435, file: !222, line: 930, baseType: !28, size: 32, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3435, file: !222, line: 931, baseType: !28, size: 32, offset: 864)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3435, file: !222, line: 932, baseType: !28, size: 32, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3435, file: !222, line: 934, baseType: !28, size: 32, offset: 928)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3435, file: !222, line: 935, baseType: !28, size: 32, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3435, file: !222, line: 936, baseType: !28, size: 32, offset: 992)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3435, file: !222, line: 937, baseType: !28, size: 32, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3435, file: !222, line: 939, baseType: !380, size: 32, offset: 1056)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3435, file: !222, line: 940, baseType: !363, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3435, file: !222, line: 945, baseType: !432, size: 64, offset: 1152)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3435, file: !222, line: 946, baseType: !432, size: 64, offset: 1216)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3435, file: !222, line: 947, baseType: !432, size: 64, offset: 1280)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3435, file: !222, line: 953, baseType: !3434, size: 64, offset: 1344)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3435, file: !222, line: 954, baseType: !432, size: 64, offset: 1408)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3435, file: !222, line: 955, baseType: !432, size: 64, offset: 1472)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3435, file: !222, line: 956, baseType: !28, size: 32, offset: 1536)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3435, file: !222, line: 958, baseType: !28, size: 32, offset: 1568)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3435, file: !222, line: 960, baseType: !717, size: 128, align: 64, offset: 1600)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3435, file: !222, line: 968, baseType: !3466, size: 64, offset: 1728)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3467, line: 12, baseType: !3468)
!3467 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3467, line: 10, size: 64, elements: !3469)
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3468, file: !3467, line: 11, baseType: !730, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3430, file: !222, line: 877, baseType: !103, size: 128, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3430, file: !222, line: 879, baseType: !103, size: 128, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3430, file: !222, line: 880, baseType: !103, size: 128, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3430, file: !222, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3430, file: !222, line: 885, baseType: !7, size: 32, offset: 544)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3430, file: !222, line: 886, baseType: !7, size: 32, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3430, file: !222, line: 888, baseType: !55, size: 32, offset: 608)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3430, file: !222, line: 889, baseType: !717, size: 128, align: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3430, file: !222, line: 891, baseType: !26, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3430, file: !222, line: 898, baseType: !28, size: 32, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3427, file: !222, line: 979, baseType: !3482, size: 64, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3427, file: !222, line: 981, baseType: !103, size: 128, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3427, file: !222, line: 982, baseType: !28, size: 32, offset: 1088)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3427, file: !222, line: 984, baseType: !28, size: 32, offset: 1120)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3427, file: !222, line: 985, baseType: !28, size: 32, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3427, file: !222, line: 987, baseType: !524, size: 32, offset: 1184)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3427, file: !222, line: 988, baseType: !499, size: 512, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3427, file: !222, line: 989, baseType: !507, size: 64, offset: 1728)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3427, file: !222, line: 990, baseType: !7, size: 32, offset: 1792)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3413, file: !222, line: 320, baseType: !55, size: 32, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3413, file: !222, line: 321, baseType: !28, size: 32, offset: 736)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3413, file: !222, line: 322, baseType: !28, size: 32, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3413, file: !222, line: 325, baseType: !7, size: 32, offset: 800)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3413, file: !222, line: 331, baseType: !3496, size: 64, offset: 832)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !3412}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3413, file: !222, line: 332, baseType: !3496, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3413, file: !222, line: 350, baseType: !3501, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!28, !3395}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3413, file: !222, line: 356, baseType: !3505, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3395, !681}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3413, file: !222, line: 357, baseType: !3505, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3413, file: !222, line: 385, baseType: !3510, size: 64, offset: 1152)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!28, !3395, !28}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3413, file: !222, line: 386, baseType: !3514, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{null, !3395, !28}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3413, file: !222, line: 406, baseType: !3514, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3413, file: !222, line: 407, baseType: !3514, size: 64, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3413, file: !222, line: 415, baseType: !3520, size: 64, offset: 1408)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !3395}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3413, file: !222, line: 427, baseType: !3524, size: 64, offset: 1472)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !3412, !7}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3413, file: !222, line: 436, baseType: !3528, size: 64, offset: 1536)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!28, !3412}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3413, file: !222, line: 443, baseType: !3496, size: 64, offset: 1600)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3413, file: !222, line: 450, baseType: !3501, size: 64, offset: 1664)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3413, file: !222, line: 455, baseType: !3534, size: 64, offset: 1728)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !3482, !893}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3413, file: !222, line: 461, baseType: !826, size: 64, offset: 1792)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3413, file: !222, line: 469, baseType: !3539, size: 64, offset: 1856)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !3482, !3482}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3413, file: !222, line: 476, baseType: !3543, size: 64, offset: 1920)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!26, !3395, !2116, !28, !893}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3413, file: !222, line: 483, baseType: !1293, size: 64, offset: 1984)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3413, file: !222, line: 494, baseType: !3548, size: 64, offset: 2048)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!361, !3395, !3551, !45}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !222, line: 1014, size: 448, elements: !3553)
!3553 = !{!3554, !3555, !3558, !3559, !3560, !3561, !3566}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3552, file: !222, line: 1015, baseType: !3395, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3552, file: !222, line: 1016, baseType: !3556, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !222, line: 641, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3552, file: !222, line: 1017, baseType: !45, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3552, file: !222, line: 1018, baseType: !45, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3552, file: !222, line: 1019, baseType: !432, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, scope: !3552, file: !222, line: 1020, baseType: !3562, size: 64, offset: 320)
!3562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3552, file: !222, line: 1020, size: 64, elements: !3563)
!3563 = !{!3564, !3565}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3562, file: !222, line: 1021, baseType: !26, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3562, file: !222, line: 1022, baseType: !45, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3552, file: !222, line: 1024, baseType: !28, size: 32, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3413, file: !222, line: 506, baseType: !3568, size: 64, offset: 2112)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!28, !106}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3413, file: !222, line: 520, baseType: !3520, size: 64, offset: 2176)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3413, file: !222, line: 530, baseType: !3501, size: 64, offset: 2240)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3413, file: !222, line: 537, baseType: !3574, size: 64, offset: 2304)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!893, !3412, !28}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3413, file: !222, line: 542, baseType: !3578, size: 64, offset: 2368)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!28, !3395, !432}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3396, file: !222, line: 715, baseType: !26, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3396, file: !222, line: 717, baseType: !221, size: 32, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3396, file: !222, line: 718, baseType: !7, size: 32, offset: 1376)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3396, file: !222, line: 719, baseType: !3585, size: 64, offset: 1408)
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3586, line: 26, baseType: !3587)
!3586 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3586, line: 24, size: 64, elements: !3588)
!3588 = !{!3589}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3587, file: !3586, line: 25, baseType: !3466, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3396, file: !222, line: 720, baseType: !732, size: 64, offset: 1472)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3396, file: !222, line: 728, baseType: !432, size: 64, offset: 1536)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3396, file: !222, line: 729, baseType: !432, size: 64, offset: 1600)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3396, file: !222, line: 730, baseType: !432, size: 64, offset: 1664)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3396, file: !222, line: 732, baseType: !3595, size: 1088, offset: 1728)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3596, line: 385, size: 1088, elements: !3597)
!3596 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3597 = !{!3598, !3599, !3600, !3601, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3651, !3652, !3659, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3595, file: !3596, line: 390, baseType: !375, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3595, file: !3596, line: 395, baseType: !375, size: 32, offset: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3595, file: !3596, line: 400, baseType: !433, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3596, line: 402, baseType: !3602, size: 64, offset: 128)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3596, line: 402, size: 64, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3602, file: !3596, line: 403, baseType: !433, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3602, file: !3596, line: 404, baseType: !433, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3595, file: !3596, line: 407, baseType: !433, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3595, file: !3596, line: 408, baseType: !433, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3595, file: !3596, line: 410, baseType: !433, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3595, file: !3596, line: 411, baseType: !433, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3595, file: !3596, line: 412, baseType: !433, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3595, file: !3596, line: 413, baseType: !433, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3595, file: !3596, line: 414, baseType: !433, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3595, file: !3596, line: 415, baseType: !433, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3595, file: !3596, line: 416, baseType: !433, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3595, file: !3596, line: 417, baseType: !433, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3595, file: !3596, line: 418, baseType: !433, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3595, file: !3596, line: 419, baseType: !433, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3595, file: !3596, line: 420, baseType: !433, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3595, file: !3596, line: 421, baseType: !433, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3595, file: !3596, line: 422, baseType: !433, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3595, file: !3596, line: 423, baseType: !433, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3595, file: !3596, line: 424, baseType: !433, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3595, file: !3596, line: 435, baseType: !433, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3595, file: !3596, line: 436, baseType: !433, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3595, file: !3596, line: 437, baseType: !433, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3595, file: !3596, line: 439, baseType: !433, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3595, file: !3596, line: 440, baseType: !433, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3595, file: !3596, line: 442, baseType: !433, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3595, file: !3596, line: 443, baseType: !433, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3595, file: !3596, line: 444, baseType: !433, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3595, file: !3596, line: 445, baseType: !433, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3595, file: !3596, line: 446, baseType: !433, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3595, file: !3596, line: 447, baseType: !433, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3595, file: !3596, line: 448, baseType: !433, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3595, file: !3596, line: 449, baseType: !433, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3595, file: !3596, line: 450, baseType: !433, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3595, file: !3596, line: 451, baseType: !433, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3595, file: !3596, line: 452, baseType: !433, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3595, file: !3596, line: 453, baseType: !433, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3595, file: !3596, line: 454, baseType: !433, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3595, file: !3596, line: 455, baseType: !433, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3595, file: !3596, line: 456, baseType: !433, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3595, file: !3596, line: 457, baseType: !433, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3595, file: !3596, line: 458, baseType: !433, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3595, file: !3596, line: 459, baseType: !433, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3596, line: 461, baseType: !3647, size: 32, offset: 384)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3596, line: 461, size: 32, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3647, file: !3596, line: 462, baseType: !375, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3647, file: !3596, line: 463, baseType: !375, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3595, file: !3596, line: 466, baseType: !375, size: 32, offset: 416)
!3652 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3596, line: 467, baseType: !3653, size: 64, offset: 448)
!3653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3596, line: 467, size: 64, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3653, file: !3596, line: 468, baseType: !433, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3653, file: !3596, line: 469, baseType: !433, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3653, file: !3596, line: 470, baseType: !433, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3653, file: !3596, line: 471, baseType: !433, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3596, line: 473, baseType: !3660, size: 64, offset: 512)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3596, line: 473, size: 64, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3660, file: !3596, line: 474, baseType: !433, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3660, file: !3596, line: 475, baseType: !433, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3660, file: !3596, line: 476, baseType: !433, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3660, file: !3596, line: 477, baseType: !433, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3595, file: !3596, line: 479, baseType: !433, size: 64, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3595, file: !3596, line: 485, baseType: !433, size: 64, offset: 640)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3595, file: !3596, line: 490, baseType: !375, size: 32, offset: 704)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3595, file: !3596, line: 492, baseType: !906, size: 32, offset: 736)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3595, file: !3596, line: 501, baseType: !433, size: 64, offset: 768)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3595, file: !3596, line: 506, baseType: !375, size: 32, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3595, file: !3596, line: 507, baseType: !100, size: 16, offset: 864)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3595, file: !3596, line: 508, baseType: !100, size: 16, offset: 880)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3595, file: !3596, line: 509, baseType: !375, size: 32, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3595, file: !3596, line: 510, baseType: !375, size: 32, offset: 928)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3595, file: !3596, line: 518, baseType: !433, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3595, file: !3596, line: 520, baseType: !433, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3396, file: !222, line: 733, baseType: !99, size: 16, offset: 2816)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3396, file: !222, line: 734, baseType: !99, size: 16, offset: 2832)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3396, file: !222, line: 735, baseType: !99, size: 16, offset: 2848)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3396, file: !222, line: 736, baseType: !3682, size: 1536, offset: 2880)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !222, line: 155, size: 1536, elements: !3683)
!3683 = !{!3684, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3768, !3769, !3770, !3771}
!3684 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !222, line: 157, baseType: !3685, size: 768)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !222, line: 157, size: 768, elements: !3686)
!3686 = !{!3687, !3706, !3710, !3714, !3719, !3741}
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !222, line: 158, baseType: !3688, size: 768)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !222, line: 158, size: 768, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3705}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3688, file: !222, line: 159, baseType: !432, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3688, file: !222, line: 160, baseType: !432, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3688, file: !222, line: 161, baseType: !45, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3688, file: !222, line: 162, baseType: !45, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3688, file: !222, line: 163, baseType: !28, size: 32, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3688, file: !222, line: 164, baseType: !28, size: 32, offset: 288)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3688, file: !222, line: 165, baseType: !28, size: 32, offset: 320)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3688, file: !222, line: 166, baseType: !28, size: 32, offset: 352)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3688, file: !222, line: 168, baseType: !3699, size: 192, offset: 384)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !222, line: 134, size: 192, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3699, file: !222, line: 135, baseType: !432, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3699, file: !222, line: 136, baseType: !7, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3699, file: !222, line: 137, baseType: !28, size: 32, offset: 96)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3699, file: !222, line: 138, baseType: !28, size: 32, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3688, file: !222, line: 169, baseType: !3699, size: 192, offset: 576)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !222, line: 171, baseType: !3707, size: 512)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !222, line: 171, size: 512, elements: !3708)
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3707, file: !222, line: 172, baseType: !499, size: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !222, line: 174, baseType: !3711, size: 128)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !222, line: 174, size: 128, elements: !3712)
!3712 = !{!3713}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3711, file: !222, line: 176, baseType: !103, size: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !222, line: 178, baseType: !3715, size: 128)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !222, line: 178, size: 128, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3715, file: !222, line: 179, baseType: !432, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3715, file: !222, line: 180, baseType: !432, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !222, line: 183, baseType: !3720, size: 320)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !222, line: 183, size: 320, elements: !3721)
!3721 = !{!3722, !3730}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3720, file: !222, line: 189, baseType: !3723, size: 192)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3724, line: 14, size: 192, elements: !3725)
!3724 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3723, file: !3724, line: 15, baseType: !45, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3723, file: !3724, line: 16, baseType: !45, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3723, file: !3724, line: 17, baseType: !89, size: 8, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3723, file: !3724, line: 18, baseType: !89, size: 8, offset: 136)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3720, file: !222, line: 190, baseType: !3731, size: 128, offset: 192)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3732, line: 21, size: 128, elements: !3733)
!3732 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3733 = !{!3734, !3739}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3731, file: !3732, line: 22, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3732, line: 17, size: 64, elements: !3736)
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3735, file: !3732, line: 18, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3731, file: !3732, line: 23, baseType: !3740, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !222, line: 193, baseType: !3742, size: 192)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !222, line: 193, size: 192, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747, !3748}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3742, file: !222, line: 194, baseType: !89, size: 8)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3742, file: !222, line: 195, baseType: !89, size: 8, offset: 8)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3742, file: !222, line: 196, baseType: !99, size: 16, offset: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3742, file: !222, line: 197, baseType: !432, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3742, file: !222, line: 198, baseType: !432, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3682, file: !222, line: 205, baseType: !363, size: 64, offset: 768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3682, file: !222, line: 211, baseType: !26, size: 64, offset: 832)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3682, file: !222, line: 214, baseType: !45, size: 64, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3682, file: !222, line: 223, baseType: !28, size: 32, offset: 960)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3682, file: !222, line: 229, baseType: !3585, size: 64, offset: 1024)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3682, file: !222, line: 234, baseType: !432, size: 64, offset: 1088)
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !222, line: 236, baseType: !3756, size: 128, offset: 1152)
!3756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !222, line: 236, size: 128, elements: !3757)
!3757 = !{!3758, !3763}
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3756, file: !222, line: 237, baseType: !3759, size: 128)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3756, file: !222, line: 237, size: 128, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3759, file: !222, line: 241, baseType: !432, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3759, file: !222, line: 249, baseType: !3585, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !3756, file: !222, line: 251, baseType: !3764, size: 128)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3756, file: !222, line: 251, size: 128, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3764, file: !222, line: 252, baseType: !432, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3764, file: !222, line: 253, baseType: !432, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3682, file: !222, line: 261, baseType: !432, size: 64, offset: 1280)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3682, file: !222, line: 262, baseType: !432, size: 64, offset: 1344)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3682, file: !222, line: 268, baseType: !432, size: 64, offset: 1408)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3682, file: !222, line: 269, baseType: !432, size: 64, offset: 1472)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3396, file: !222, line: 738, baseType: !3434, size: 64, offset: 4416)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3396, file: !222, line: 744, baseType: !3482, size: 64, offset: 4480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3396, file: !222, line: 745, baseType: !730, size: 64, offset: 4544)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3396, file: !222, line: 751, baseType: !732, size: 64, offset: 4608)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3396, file: !222, line: 752, baseType: !732, size: 64, offset: 4672)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3396, file: !222, line: 757, baseType: !737, size: 256, offset: 4736)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3396, file: !222, line: 758, baseType: !103, size: 128, offset: 4992)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3396, file: !222, line: 759, baseType: !3395, size: 64, offset: 5120)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3396, file: !222, line: 761, baseType: !28, size: 32, offset: 5184)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3396, file: !222, line: 762, baseType: !28, size: 32, offset: 5216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3396, file: !222, line: 764, baseType: !103, size: 128, offset: 5248)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3396, file: !222, line: 765, baseType: !363, size: 64, offset: 5376)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3396, file: !222, line: 768, baseType: !737, size: 256, offset: 5440)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3396, file: !222, line: 769, baseType: !55, size: 32, offset: 5696)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3396, file: !222, line: 771, baseType: !3556, size: 64, offset: 5760)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3396, file: !222, line: 772, baseType: !103, size: 128, offset: 5824)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3396, file: !222, line: 773, baseType: !45, size: 64, offset: 5952)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3396, file: !222, line: 774, baseType: !28, size: 32, offset: 6016)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3396, file: !222, line: 777, baseType: !60, size: 192, offset: 6080)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3396, file: !222, line: 778, baseType: !3792, size: 64, offset: 6272)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !250, line: 1083, size: 384, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3793, file: !250, line: 1084, baseType: !754, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3793, file: !250, line: 1085, baseType: !28, size: 32, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3793, file: !250, line: 1086, baseType: !28, size: 32, offset: 96)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3793, file: !250, line: 1087, baseType: !3792, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3793, file: !250, line: 1088, baseType: !709, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3793, file: !250, line: 1089, baseType: !717, size: 128, align: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3396, file: !222, line: 781, baseType: !7, size: 32, offset: 6336)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3396, file: !222, line: 782, baseType: !7, size: 32, offset: 6368)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3396, file: !222, line: 783, baseType: !7, size: 32, offset: 6400)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3396, file: !222, line: 784, baseType: !7, size: 32, offset: 6432)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3396, file: !222, line: 785, baseType: !45, size: 64, offset: 6464)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3396, file: !222, line: 786, baseType: !3807, size: 256, offset: 6528)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3808, line: 17, size: 256, elements: !3809)
!3808 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3809 = !{!3810, !3811, !3816}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3807, file: !3808, line: 18, baseType: !389, size: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3807, file: !3808, line: 19, baseType: !3812, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3807, file: !3808, line: 20, baseType: !3817, size: 64, offset: 192)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3818, line: 16, size: 64, elements: !3819)
!3818 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3819 = !{!3820}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3817, file: !3818, line: 17, baseType: !363, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3396, file: !222, line: 787, baseType: !717, size: 128, align: 64, offset: 6784)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3396, file: !222, line: 788, baseType: !7, size: 32, offset: 6912)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3396, file: !222, line: 789, baseType: !3817, size: 64, offset: 6976)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3396, file: !222, line: 791, baseType: !55, size: 32, offset: 7040)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3396, file: !222, line: 794, baseType: !3826, size: 192, offset: 7104)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !222, line: 579, size: 192, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3826, file: !222, line: 580, baseType: !103, size: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3826, file: !222, line: 581, baseType: !524, size: 32, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3826, file: !222, line: 582, baseType: !7, size: 32, offset: 160)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3396, file: !222, line: 796, baseType: !3832, size: 64, offset: 7296)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !222, line: 585, size: 128, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3833, file: !222, line: 586, baseType: !45, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3833, file: !222, line: 587, baseType: !45, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3396, file: !222, line: 797, baseType: !45, size: 64, offset: 7360)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3396, file: !222, line: 800, baseType: !3395, size: 64, offset: 7424)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3396, file: !222, line: 802, baseType: !3520, size: 64, offset: 7488)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3396, file: !222, line: 803, baseType: !717, size: 128, align: 64, offset: 7552)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3396, file: !222, line: 805, baseType: !805, size: 64, offset: 7680)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3396, file: !222, line: 806, baseType: !432, size: 64, offset: 7744)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3396, file: !222, line: 808, baseType: !732, size: 64, offset: 7808)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3396, file: !222, line: 810, baseType: !3845, size: 64, offset: 7872)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!432}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3396, file: !222, line: 811, baseType: !3849, size: 64, offset: 7936)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !222, line: 605, baseType: !3850)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3395, !3853, !3958}
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !222, line: 1148, size: 2048, align: 512, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3865, !3866, !3867, !3872, !3873, !3880, !3901, !3923, !3933, !3951, !3952, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3854, file: !222, line: 1153, baseType: !432, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3854, file: !222, line: 1154, baseType: !432, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3854, file: !222, line: 1155, baseType: !432, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3854, file: !222, line: 1161, baseType: !432, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3854, file: !222, line: 1165, baseType: !3861, size: 64, offset: 256)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3854, file: !222, line: 1162, size: 64, elements: !3862)
!3862 = !{!3863, !3864}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3861, file: !222, line: 1163, baseType: !374, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3861, file: !222, line: 1164, baseType: !374, size: 32, offset: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3854, file: !222, line: 1166, baseType: !432, size: 64, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3854, file: !222, line: 1167, baseType: !432, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3854, file: !222, line: 1171, baseType: !3868, size: 64, offset: 448)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3854, file: !222, line: 1168, size: 64, elements: !3869)
!3869 = !{!3870, !3871}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3868, file: !222, line: 1169, baseType: !374, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3868, file: !222, line: 1170, baseType: !374, size: 32, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3854, file: !222, line: 1177, baseType: !432, size: 64, offset: 512)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3854, file: !222, line: 1178, baseType: !3874, size: 64, offset: 576)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !222, line: 67, size: 64, elements: !3876)
!3876 = !{!3877, !3878}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3875, file: !222, line: 68, baseType: !433, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3875, file: !222, line: 69, baseType: !3879, offset: 64)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, elements: !1124)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3854, file: !222, line: 1179, baseType: !3881, size: 64, offset: 640)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !222, line: 93, size: 256, elements: !3883)
!3883 = !{!3884, !3900}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3882, file: !222, line: 94, baseType: !3885, size: 224)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !222, line: 83, size: 224, elements: !3886)
!3886 = !{!3887, !3893, !3898, !3899}
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !222, line: 84, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3885, file: !222, line: 84, size: 64, elements: !3889)
!3889 = !{!3890, !3892}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3888, file: !222, line: 85, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3888, file: !222, line: 86, baseType: !45, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3885, file: !222, line: 88, baseType: !3894, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !222, line: 80, baseType: !3895)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!45, !26, !2634, !45, !45}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3885, file: !222, line: 89, baseType: !26, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3885, file: !222, line: 90, baseType: !374, size: 32, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3882, file: !222, line: 95, baseType: !374, size: 32, offset: 224)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3854, file: !222, line: 1180, baseType: !3902, size: 64, offset: 704)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !222, line: 123, size: 128, elements: !3904)
!3904 = !{!3905, !3906, !3907}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3903, file: !222, line: 124, baseType: !433, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3903, file: !222, line: 125, baseType: !433, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3903, file: !222, line: 126, baseType: !3908, offset: 128)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3909, elements: !1124)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3596, line: 1415, size: 192, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3909, file: !3596, line: 1416, baseType: !433, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3909, file: !3596, line: 1417, baseType: !433, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3909, file: !3596, line: 1418, baseType: !433, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3909, file: !3596, line: 1419, baseType: !433, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3909, file: !3596, line: 1420, baseType: !433, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3909, file: !3596, line: 1421, baseType: !433, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3909, file: !3596, line: 1422, baseType: !433, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3909, file: !3596, line: 1423, baseType: !433, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3909, file: !3596, line: 1424, baseType: !433, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3909, file: !3596, line: 1425, baseType: !433, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3909, file: !3596, line: 1426, baseType: !433, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3909, file: !3596, line: 1427, baseType: !433, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3854, file: !222, line: 1181, baseType: !3924, size: 64, offset: 768)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3596, line: 1430, size: 64, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3924, file: !3596, line: 1431, baseType: !433, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !3596, line: 1433, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !3596, line: 1433, size: 64, elements: !3929)
!3929 = !{!3930, !3931, !3932}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3928, file: !3596, line: 1434, baseType: !375, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3928, file: !3596, line: 1435, baseType: !100, size: 16, offset: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3928, file: !3596, line: 1436, baseType: !100, size: 16, offset: 48)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3854, file: !222, line: 1182, baseType: !3934, size: 64, offset: 832)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3596, line: 1267, size: 64, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3934, file: !3596, line: 1268, baseType: !433, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3934, file: !3596, line: 1269, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !3596, line: 1269, size: 64, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3938, file: !3596, line: 1270, baseType: !433, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3938, file: !3596, line: 1271, baseType: !433, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3938, file: !3596, line: 1272, baseType: !433, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3938, file: !3596, line: 1273, baseType: !433, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3938, file: !3596, line: 1274, baseType: !433, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3938, file: !3596, line: 1275, baseType: !433, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3938, file: !3596, line: 1276, baseType: !433, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3938, file: !3596, line: 1277, baseType: !433, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3938, file: !3596, line: 1278, baseType: !433, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3938, file: !3596, line: 1279, baseType: !433, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3938, file: !3596, line: 1280, baseType: !433, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3854, file: !222, line: 1183, baseType: !432, size: 64, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3854, file: !222, line: 1185, baseType: !3953, size: 128, offset: 960)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3954, line: 7, size: 128, elements: !3955)
!3954 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3955 = !{!3956, !3957}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3953, file: !3954, line: 8, baseType: !433, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3953, file: !3954, line: 9, baseType: !3958, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3960, line: 103, size: 1344, elements: !3961)
!3960 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3990, !3991, !3992}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3959, file: !3960, line: 109, baseType: !45, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3959, file: !3960, line: 110, baseType: !45, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3959, file: !3960, line: 111, baseType: !45, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3959, file: !3960, line: 112, baseType: !45, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3959, file: !3960, line: 113, baseType: !45, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3959, file: !3960, line: 114, baseType: !45, size: 64, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3959, file: !3960, line: 117, baseType: !45, size: 64, offset: 384)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3959, file: !3960, line: 118, baseType: !45, size: 64, offset: 448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3959, file: !3960, line: 119, baseType: !45, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3959, file: !3960, line: 120, baseType: !45, size: 64, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3959, file: !3960, line: 121, baseType: !45, size: 64, offset: 640)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3959, file: !3960, line: 122, baseType: !45, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3959, file: !3960, line: 123, baseType: !45, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3959, file: !3960, line: 124, baseType: !45, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3959, file: !3960, line: 125, baseType: !45, size: 64, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3959, file: !3960, line: 139, baseType: !45, size: 64, offset: 960)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3959, file: !3960, line: 142, baseType: !45, size: 64, offset: 1024)
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !3960, line: 144, baseType: !3980, size: 64, offset: 1088)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !3960, line: 144, size: 64, elements: !3981)
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3980, file: !3960, line: 146, baseType: !99, size: 16)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3980, file: !3960, line: 148, baseType: !432, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3980, file: !3960, line: 150, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3960, line: 59, size: 64, elements: !3986)
!3986 = !{!3987, !3988, !3989}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3985, file: !3960, line: 61, baseType: !432, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3985, file: !3960, line: 63, baseType: !432, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3985, file: !3960, line: 65, baseType: !432, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3959, file: !3960, line: 153, baseType: !45, size: 64, offset: 1152)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3959, file: !3960, line: 154, baseType: !45, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !3960, line: 156, baseType: !3993, size: 64, offset: 1280)
!3993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !3960, line: 156, size: 64, elements: !3994)
!3994 = !{!3995, !3996, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3993, file: !3960, line: 158, baseType: !99, size: 16)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3993, file: !3960, line: 160, baseType: !432, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3993, file: !3960, line: 162, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3960, line: 69, size: 64, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3998, file: !3960, line: 71, baseType: !432, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3998, file: !3960, line: 73, baseType: !432, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3998, file: !3960, line: 75, baseType: !432, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3998, file: !3960, line: 77, baseType: !432, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3998, file: !3960, line: 80, baseType: !432, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3998, file: !3960, line: 83, baseType: !432, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3998, file: !3960, line: 86, baseType: !432, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3998, file: !3960, line: 88, baseType: !432, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3998, file: !3960, line: 93, baseType: !432, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3998, file: !3960, line: 100, baseType: !432, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3854, file: !222, line: 1186, baseType: !3953, size: 128, offset: 1088)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3854, file: !222, line: 1187, baseType: !432, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3854, file: !222, line: 1189, baseType: !432, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3854, file: !222, line: 1190, baseType: !432, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3854, file: !222, line: 1191, baseType: !432, size: 64, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3854, file: !222, line: 1192, baseType: !432, size: 64, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3854, file: !222, line: 1193, baseType: !432, size: 64, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3854, file: !222, line: 1194, baseType: !432, size: 64, offset: 1600)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3854, file: !222, line: 1195, baseType: !432, size: 64, offset: 1664)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3396, file: !222, line: 812, baseType: !26, size: 64, offset: 8000)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3396, file: !222, line: 820, baseType: !3189, size: 64, offset: 8064)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3396, file: !222, line: 821, baseType: !3376, size: 64, offset: 8128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3396, file: !222, line: 828, baseType: !4023, size: 64, offset: 8192)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !222, line: 1046, size: 1664, elements: !4025)
!4025 = !{!4026, !4284}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4024, file: !222, line: 1047, baseType: !4027, size: 1600)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4028, line: 152, size: 1600, elements: !4029)
!4028 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4029 = !{!4030, !4140, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4283}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4027, file: !4028, line: 154, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4028, line: 389, size: 7872, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4053, !4054, !4058, !4059, !4060, !4061, !4062, !4067, !4083, !4084, !4086, !4087, !4088, !4110, !4111, !4112, !4113, !4119, !4120, !4121, !4122, !4123, !4127, !4130, !4131, !4138}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4032, file: !4028, line: 391, baseType: !4027, size: 1600)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !4028, line: 393, baseType: !45, size: 64, offset: 1600)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4032, file: !4028, line: 401, baseType: !28, size: 32, offset: 1664)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4032, file: !4028, line: 404, baseType: !28, size: 32, offset: 1696)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4032, file: !4028, line: 417, baseType: !28, size: 32, offset: 1728)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4032, file: !4028, line: 418, baseType: !28, size: 32, offset: 1760)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4032, file: !4028, line: 419, baseType: !28, size: 32, offset: 1792)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4032, file: !4028, line: 432, baseType: !28, size: 32, offset: 1824)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4032, file: !4028, line: 433, baseType: !28, size: 32, offset: 1856)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4032, file: !4028, line: 434, baseType: !28, size: 32, offset: 1888)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4032, file: !4028, line: 436, baseType: !28, size: 32, offset: 1920)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4032, file: !4028, line: 439, baseType: !7, size: 32, offset: 1952)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4032, file: !4028, line: 441, baseType: !2727, size: 64, offset: 1984)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4032, file: !4028, line: 442, baseType: !4048, size: 448, offset: 2048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4028, line: 138, size: 448, elements: !4049)
!4049 = !{!4050, !4051, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4048, file: !4028, line: 140, baseType: !2727, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4048, file: !4028, line: 141, baseType: !45, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4048, file: !4028, line: 142, baseType: !2463, size: 320, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4032, file: !4028, line: 443, baseType: !4048, size: 448, offset: 2496)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4032, file: !4028, line: 446, baseType: !4055, offset: 2944)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4048, elements: !4056)
!4056 = !{!4057}
!4057 = !DISubrange(count: 0)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4032, file: !4028, line: 455, baseType: !99, size: 16, offset: 2944)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4032, file: !4028, line: 456, baseType: !99, size: 16, offset: 2960)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4032, file: !4028, line: 457, baseType: !99, size: 16, offset: 2976)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4032, file: !4028, line: 458, baseType: !99, size: 16, offset: 2992)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4032, file: !4028, line: 461, baseType: !4063, size: 896, offset: 3008)
!4063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4064, size: 896, elements: !4065)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4065 = !{!4066}
!4066 = !DISubrange(count: 14)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4032, file: !4028, line: 463, baseType: !4068, size: 64, offset: 3904)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4028, line: 537, size: 41664, elements: !4070)
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4069, file: !4028, line: 538, baseType: !2747, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4069, file: !4028, line: 541, baseType: !7, size: 32, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4069, file: !4028, line: 544, baseType: !28, size: 32, offset: 96)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4069, file: !4028, line: 547, baseType: !103, size: 128, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4069, file: !4028, line: 548, baseType: !717, size: 128, align: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4069, file: !4028, line: 555, baseType: !4032, size: 7872, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4069, file: !4028, line: 558, baseType: !4031, size: 64, offset: 8256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4069, file: !4028, line: 561, baseType: !55, size: 32, offset: 8320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4069, file: !4028, line: 564, baseType: !7, size: 32, offset: 8352)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4069, file: !4028, line: 567, baseType: !3338, size: 32768, offset: 8384)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4069, file: !4028, line: 570, baseType: !4082, size: 512, offset: 41152)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !1611)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4032, file: !4028, line: 469, baseType: !103, size: 128, offset: 3968)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4032, file: !4028, line: 478, baseType: !4085, size: 1792, offset: 4096)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 1792, elements: !4065)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4032, file: !4028, line: 487, baseType: !4031, size: 64, offset: 5888)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4032, file: !4028, line: 488, baseType: !4031, size: 64, offset: 5952)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4032, file: !4028, line: 491, baseType: !4089, size: 64, offset: 6016)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4028, line: 327, size: 896, elements: !4091)
!4091 = !{!4092, !4095, !4105, !4106, !4107, !4108, !4109}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4090, file: !4028, line: 332, baseType: !4093)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4094, line: 64, elements: !702)
!4094 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4090, file: !4028, line: 333, baseType: !4096, size: 192)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4028, line: 299, size: 192, elements: !4097)
!4097 = !{!4098}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4096, file: !4028, line: 300, baseType: !4099, size: 192)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4100, line: 17, size: 192, elements: !4101)
!4100 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4099, file: !4100, line: 18, baseType: !432, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4099, file: !4100, line: 19, baseType: !432, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4099, file: !4100, line: 20, baseType: !434, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4090, file: !4028, line: 339, baseType: !4096, size: 192, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4090, file: !4028, line: 347, baseType: !4096, size: 192, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4090, file: !4028, line: 353, baseType: !4096, size: 192, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4090, file: !4028, line: 366, baseType: !4031, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4090, file: !4028, line: 367, baseType: !4031, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4032, file: !4028, line: 492, baseType: !103, size: 128, offset: 6080)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4032, file: !4028, line: 495, baseType: !4096, size: 192, offset: 6208)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4032, file: !4028, line: 496, baseType: !4096, size: 192, offset: 6400)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4032, file: !4028, line: 497, baseType: !4114, size: 192, offset: 6592)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !365, line: 324, size: 192, elements: !4115)
!4115 = !{!4116, !4117, !4118}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4114, file: !365, line: 326, baseType: !432, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4114, file: !365, line: 327, baseType: !432, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4114, file: !365, line: 328, baseType: !524, size: 32, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4032, file: !4028, line: 503, baseType: !103, size: 128, offset: 6784)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4032, file: !4028, line: 504, baseType: !737, size: 256, offset: 6912)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4032, file: !4028, line: 507, baseType: !60, size: 192, offset: 7168)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4032, file: !4028, line: 510, baseType: !1020, size: 256, offset: 7360)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4032, file: !4028, line: 513, baseType: !4124, size: 64, offset: 7616)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4126, line: 214, elements: !702)
!4126 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4032, file: !4028, line: 516, baseType: !4128, offset: 7680)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4129, line: 76, elements: !702)
!4129 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4032, file: !4028, line: 519, baseType: !55, size: 32, offset: 7680)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4032, file: !4028, line: 522, baseType: !4132, size: 128, offset: 7712)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4028, line: 370, size: 128, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4132, file: !4028, line: 372, baseType: !893, size: 8)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4132, file: !4028, line: 375, baseType: !28, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4132, file: !4028, line: 380, baseType: !28, size: 32, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4132, file: !4028, line: 386, baseType: !28, size: 32, offset: 96)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4032, file: !4028, line: 529, baseType: !4139, offset: 7872)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, elements: !1124)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4027, file: !4028, line: 157, baseType: !4141, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4028, line: 669, size: 1984, elements: !4143)
!4143 = !{!4144, !4148, !4152, !4156, !4157, !4158, !4159, !4163, !4167, !4168, !4174, !4178, !4179, !4180, !4209, !4213, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4266, !4267}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4142, file: !4028, line: 670, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!4064, !4064}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4142, file: !4028, line: 671, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!28, !4064}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4142, file: !4028, line: 672, baseType: !4153, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !4064}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4142, file: !4028, line: 673, baseType: !4153, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4142, file: !4028, line: 674, baseType: !4153, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4142, file: !4028, line: 675, baseType: !4153, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4142, file: !4028, line: 676, baseType: !4160, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !4064, !28}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4142, file: !4028, line: 677, baseType: !4164, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!28, !2772, !4064}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4142, file: !4028, line: 679, baseType: !4164, size: 64, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4142, file: !4028, line: 682, baseType: !4169, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!28, !4172}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4028, line: 30, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4142, file: !4028, line: 683, baseType: !4175, size: 64, offset: 640)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4172}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4142, file: !4028, line: 684, baseType: !4175, size: 64, offset: 704)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4142, file: !4028, line: 685, baseType: !3283, size: 64, offset: 768)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4142, file: !4028, line: 686, baseType: !4181, size: 64, offset: 832)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!28, !363, !4184}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4028, line: 209, size: 4736, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4185, file: !4028, line: 215, baseType: !4063, size: 896)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4185, file: !4028, line: 218, baseType: !380, size: 32, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4185, file: !4028, line: 226, baseType: !4184, size: 64, offset: 960)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4185, file: !4028, line: 229, baseType: !4031, size: 64, offset: 1024)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4185, file: !4028, line: 232, baseType: !28, size: 32, offset: 1088)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4185, file: !4028, line: 241, baseType: !103, size: 128, offset: 1152)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4185, file: !4028, line: 242, baseType: !103, size: 128, offset: 1280)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4185, file: !4028, line: 243, baseType: !103, size: 128, offset: 1408)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4185, file: !4028, line: 246, baseType: !103, size: 128, offset: 1536)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4185, file: !4028, line: 255, baseType: !4085, size: 1792, offset: 1664)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4185, file: !4028, line: 258, baseType: !103, size: 128, offset: 3456)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4185, file: !4028, line: 259, baseType: !103, size: 128, offset: 3584)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4185, file: !4028, line: 265, baseType: !789, size: 128, offset: 3712)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4185, file: !4028, line: 271, baseType: !103, size: 128, offset: 3840)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4185, file: !4028, line: 277, baseType: !103, size: 128, offset: 3968)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4185, file: !4028, line: 278, baseType: !103, size: 128, offset: 4096)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4185, file: !4028, line: 279, baseType: !103, size: 128, offset: 4224)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4185, file: !4028, line: 288, baseType: !4031, size: 64, offset: 4352)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4185, file: !4028, line: 289, baseType: !4031, size: 64, offset: 4416)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4185, file: !4028, line: 290, baseType: !4184, size: 64, offset: 4480)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4185, file: !4028, line: 293, baseType: !893, size: 8, offset: 4544)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4185, file: !4028, line: 296, baseType: !717, size: 128, align: 64, offset: 4608)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4142, file: !4028, line: 688, baseType: !4210, size: 64, offset: 896)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !363, !4184}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4142, file: !4028, line: 689, baseType: !4214, size: 64, offset: 960)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !363}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4142, file: !4028, line: 690, baseType: !4214, size: 64, offset: 1024)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4142, file: !4028, line: 691, baseType: !4214, size: 64, offset: 1088)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4142, file: !4028, line: 692, baseType: !4153, size: 64, offset: 1152)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4142, file: !4028, line: 694, baseType: !893, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4142, file: !4028, line: 707, baseType: !893, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4142, file: !4028, line: 719, baseType: !893, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4142, file: !4028, line: 722, baseType: !28, size: 32, offset: 1248)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4142, file: !4028, line: 723, baseType: !22, size: 64, offset: 1280)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4142, file: !4028, line: 726, baseType: !22, size: 64, offset: 1344)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4142, file: !4028, line: 729, baseType: !4068, size: 64, offset: 1408)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4142, file: !4028, line: 732, baseType: !810, size: 192, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4142, file: !4028, line: 738, baseType: !103, size: 128, offset: 1664)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4142, file: !4028, line: 744, baseType: !4230, size: 64, offset: 1792)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4028, line: 580, size: 1728, elements: !4232)
!4232 = !{!4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4242, !4243, !4244, !4248, !4252, !4253, !4254, !4255, !4256, !4260, !4264, !4265}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4231, file: !4028, line: 586, baseType: !4082, size: 512)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4231, file: !4028, line: 587, baseType: !45, size: 64, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4231, file: !4028, line: 593, baseType: !41, size: 64, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4231, file: !4028, line: 596, baseType: !7, size: 32, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4231, file: !4028, line: 604, baseType: !7, size: 32, offset: 672)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4231, file: !4028, line: 610, baseType: !4141, size: 64, offset: 704)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4231, file: !4028, line: 611, baseType: !103, size: 128, offset: 768)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4231, file: !4028, line: 612, baseType: !4241, size: 64, offset: 896)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4231, file: !4028, line: 614, baseType: !2763, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4231, file: !4028, line: 615, baseType: !2821, size: 64, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4231, file: !4028, line: 621, baseType: !4245, size: 64, offset: 1088)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!432, !4064, !4230}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4231, file: !4028, line: 625, baseType: !4249, size: 64, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!443, !4064, !4230}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4231, file: !4028, line: 628, baseType: !2802, size: 64, offset: 1216)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4231, file: !4028, line: 631, baseType: !2790, size: 64, offset: 1280)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4231, file: !4028, line: 632, baseType: !2798, size: 64, offset: 1344)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4231, file: !4028, line: 633, baseType: !2794, size: 64, offset: 1408)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4231, file: !4028, line: 640, baseType: !4257, size: 64, offset: 1472)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!28, !4064, !4230, !432}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4231, file: !4028, line: 645, baseType: !4261, size: 64, offset: 1536)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!28, !4064, !4230, !443}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4231, file: !4028, line: 654, baseType: !2829, size: 64, offset: 1600)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4231, file: !4028, line: 657, baseType: !2836, size: 64, offset: 1664)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4142, file: !4028, line: 745, baseType: !4230, size: 64, offset: 1856)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4142, file: !4028, line: 754, baseType: !7, size: 32, offset: 1920)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4027, file: !4028, line: 160, baseType: !1756, size: 128, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4027, file: !4028, line: 163, baseType: !103, size: 128, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4027, file: !4028, line: 164, baseType: !103, size: 128, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4027, file: !4028, line: 167, baseType: !103, size: 128, offset: 512)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4027, file: !4028, line: 173, baseType: !28, size: 32, offset: 640)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4027, file: !4028, line: 175, baseType: !7, size: 32, offset: 672)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4027, file: !4028, line: 183, baseType: !432, size: 64, offset: 704)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4027, file: !4028, line: 189, baseType: !55, size: 32, offset: 768)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4027, file: !4028, line: 192, baseType: !1020, size: 256, offset: 832)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4027, file: !4028, line: 193, baseType: !4278, size: 448, offset: 1088)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1021, line: 120, size: 448, elements: !4279)
!4279 = !{!4280, !4281, !4282}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4278, file: !1021, line: 121, baseType: !1020, size: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4278, file: !1021, line: 122, baseType: !717, size: 128, align: 64, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4278, file: !1021, line: 125, baseType: !3171, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4027, file: !4028, line: 199, baseType: !4064, size: 64, offset: 1536)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4024, file: !222, line: 1048, baseType: !4285, size: 64, offset: 1600)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !222, line: 1039, size: 256, elements: !4287)
!4287 = !{!4288, !4289, !4290, !4291}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4286, file: !222, line: 1040, baseType: !432, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4286, file: !222, line: 1041, baseType: !432, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4286, file: !222, line: 1042, baseType: !432, size: 64, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4286, file: !222, line: 1043, baseType: !28, size: 32, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3396, file: !222, line: 832, baseType: !26, size: 64, offset: 8256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3396, file: !222, line: 834, baseType: !103, size: 128, offset: 8320)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3396, file: !222, line: 842, baseType: !375, size: 32, offset: 8448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1556, file: !139, line: 524, baseType: !7, size: 32, offset: 8320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1556, file: !139, line: 525, baseType: !4297, size: 64, offset: 8384)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4300, line: 28, size: 192, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4301 = !{!4302, !4303, !4304}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4299, file: !4300, line: 29, baseType: !22, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4299, file: !4300, line: 30, baseType: !22, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4299, file: !4300, line: 31, baseType: !45, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1556, file: !139, line: 526, baseType: !7, size: 32, offset: 8448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1556, file: !139, line: 533, baseType: !26, size: 64, offset: 8512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1556, file: !139, line: 534, baseType: !7, size: 32, offset: 8576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1556, file: !139, line: 535, baseType: !4309, size: 64, offset: 8640)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1556, file: !139, line: 536, baseType: !7, size: 32, offset: 8704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1556, file: !139, line: 539, baseType: !28, size: 32, offset: 8736)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1556, file: !139, line: 540, baseType: !3272, size: 64, offset: 8768)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1556, file: !139, line: 563, baseType: !103, size: 128, offset: 8832)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1556, file: !139, line: 565, baseType: !103, size: 128, offset: 8960)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1556, file: !139, line: 568, baseType: !3283, size: 64, offset: 9088)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1556, file: !139, line: 570, baseType: !55, size: 32, offset: 9152)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1548, file: !130, line: 179, baseType: !4318, size: 512, offset: 128)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 512, elements: !543)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1482, file: !130, line: 101, baseType: !22, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1482, file: !130, line: 102, baseType: !26, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1482, file: !130, line: 103, baseType: !26, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1482, file: !130, line: 104, baseType: !7, size: 32, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1482, file: !130, line: 105, baseType: !7, size: 32, offset: 1120)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1482, file: !130, line: 106, baseType: !7, size: 32, offset: 1152)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1482, file: !130, line: 107, baseType: !230, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1482, file: !130, line: 108, baseType: !235, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1482, file: !130, line: 109, baseType: !893, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1482, file: !130, line: 110, baseType: !893, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1482, file: !130, line: 111, baseType: !893, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1482, file: !130, line: 112, baseType: !893, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1473, file: !250, line: 2377, baseType: !4332, size: 64, offset: 192)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !4335, line: 39, size: 256, elements: !4336)
!4335 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!4336 = !{!4337, !4338, !4355, !4356, !4357}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4334, file: !4335, line: 40, baseType: !22, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4334, file: !4335, line: 41, baseType: !4339, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !4335, line: 22, baseType: !4341)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!28, !4343, !4332, !1501, !4344}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !4335, line: 53, size: 128, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !4345, file: !4335, line: 54, baseType: !893, size: 8)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4345, file: !4335, line: 55, baseType: !4349, size: 64, offset: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4345, file: !4335, line: 55, size: 64, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !4349, file: !4335, line: 56, baseType: !893, size: 8)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !4349, file: !4335, line: 57, baseType: !28, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !4349, file: !4335, line: 58, baseType: !7, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !4349, file: !4335, line: 59, baseType: !432, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !4334, file: !4335, line: 42, baseType: !89, size: 8, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4334, file: !4335, line: 43, baseType: !32, size: 16, offset: 144)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4334, file: !4335, line: 47, baseType: !2634, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1473, file: !250, line: 2378, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!1227, !1472, !28, !22, !26}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1473, file: !250, line: 2380, baseType: !4363, size: 64, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !1463}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1473, file: !250, line: 2381, baseType: !1555, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1473, file: !250, line: 2382, baseType: !1472, size: 64, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1473, file: !250, line: 2383, baseType: !785, size: 64, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1473, file: !250, line: 2385, baseType: !4370, offset: 576)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3138, line: 206, elements: !702)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1473, file: !250, line: 2386, baseType: !4370, offset: 576)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1473, file: !250, line: 2387, baseType: !4370, offset: 576)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1473, file: !250, line: 2388, baseType: !4374, offset: 576)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4370, elements: !773)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1473, file: !250, line: 2390, baseType: !4370, offset: 576)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1473, file: !250, line: 2391, baseType: !4370, offset: 576)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1473, file: !250, line: 2392, baseType: !4370, offset: 576)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1473, file: !250, line: 2393, baseType: !4370, offset: 576)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1464, file: !250, line: 1197, baseType: !4380, size: 64, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4382)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !250, line: 2057, size: 1664, elements: !4383)
!4383 = !{!4384, !4388, !4392, !4393, !4397, !4401, !4405, !4406, !4407, !4411, !4415, !4419, !4420, !4421, !4427, !4431, !4432, !4436, !4437, !4438, !4439, !4443, !4447, !4494, !4509, !4510}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4382, file: !250, line: 2058, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!1262, !1463}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4382, file: !250, line: 2059, baseType: !4389, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !1262}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4382, file: !250, line: 2060, baseType: !4389, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4382, file: !250, line: 2062, baseType: !4394, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{null, !1262, !28}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4382, file: !250, line: 2063, baseType: !4398, size: 64, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!28, !1262, !1996}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4382, file: !250, line: 2064, baseType: !4402, size: 64, offset: 320)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!28, !1262}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4382, file: !250, line: 2065, baseType: !4389, size: 64, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4382, file: !250, line: 2066, baseType: !4363, size: 64, offset: 448)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4382, file: !250, line: 2067, baseType: !4408, size: 64, offset: 512)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!28, !1463, !28}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4382, file: !250, line: 2068, baseType: !4412, size: 64, offset: 576)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!28, !1463, !249}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4382, file: !250, line: 2069, baseType: !4416, size: 64, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!28, !1463}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4382, file: !250, line: 2070, baseType: !4412, size: 64, offset: 704)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4382, file: !250, line: 2071, baseType: !4416, size: 64, offset: 768)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4382, file: !250, line: 2072, baseType: !4422, size: 64, offset: 832)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!28, !1227, !4425}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !250, line: 62, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4382, file: !250, line: 2073, baseType: !4428, size: 64, offset: 896)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!28, !1463, !3019, !981}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4382, file: !250, line: 2074, baseType: !4363, size: 64, offset: 960)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4382, file: !250, line: 2076, baseType: !4433, size: 64, offset: 1024)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!28, !2772, !1227}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4382, file: !250, line: 2077, baseType: !4433, size: 64, offset: 1088)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4382, file: !250, line: 2078, baseType: !4433, size: 64, offset: 1152)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4382, file: !250, line: 2079, baseType: !4433, size: 64, offset: 1216)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4382, file: !250, line: 2081, baseType: !4440, size: 64, offset: 1280)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!1414, !1463, !28, !981, !41, !47}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4382, file: !250, line: 2082, baseType: !4444, size: 64, offset: 1344)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!1414, !1463, !28, !22, !41, !47}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4382, file: !250, line: 2083, baseType: !4448, size: 64, offset: 1408)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4451, !1262}
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !255, line: 296, size: 1664, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4479, !4480, !4481}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4453, file: !255, line: 297, baseType: !789, size: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4453, file: !255, line: 298, baseType: !103, size: 128, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4453, file: !255, line: 299, baseType: !103, size: 128, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4453, file: !255, line: 300, baseType: !103, size: 128, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4453, file: !255, line: 301, baseType: !737, size: 256, offset: 512)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4453, file: !255, line: 302, baseType: !65, size: 32, offset: 768)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4453, file: !255, line: 303, baseType: !55, size: 32, offset: 800)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4453, file: !255, line: 304, baseType: !1463, size: 64, offset: 832)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4453, file: !255, line: 305, baseType: !4464, size: 64, offset: 896)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !255, line: 68, size: 64, elements: !4465)
!4465 = !{!4466, !4478}
!4466 = !DIDerivedType(tag: DW_TAG_member, scope: !4464, file: !255, line: 69, baseType: !4467, size: 32)
!4467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4464, file: !255, line: 69, size: 32, elements: !4468)
!4468 = !{!4469, !4470, !4471}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4467, file: !255, line: 70, baseType: !866, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4467, file: !255, line: 71, baseType: !874, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4467, file: !255, line: 72, baseType: !4472, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4473, line: 24, baseType: !4474)
!4473 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4473, line: 22, size: 32, elements: !4475)
!4475 = !{!4476}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4474, file: !4473, line: 23, baseType: !4477, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4473, line: 20, baseType: !872)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4464, file: !255, line: 74, baseType: !254, size: 32, offset: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4453, file: !255, line: 306, baseType: !47, size: 64, offset: 960)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4453, file: !255, line: 307, baseType: !45, size: 64, offset: 1024)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4453, file: !255, line: 308, baseType: !4482, size: 576, offset: 1088)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !255, line: 205, size: 576, elements: !4483)
!4483 = !{!4484, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4482, file: !255, line: 206, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !255, line: 66, baseType: !49)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4482, file: !255, line: 207, baseType: !4485, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4482, file: !255, line: 208, baseType: !4485, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4482, file: !255, line: 209, baseType: !4485, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4482, file: !255, line: 210, baseType: !4485, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4482, file: !255, line: 211, baseType: !4485, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4482, file: !255, line: 212, baseType: !4485, size: 64, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4482, file: !255, line: 213, baseType: !929, size: 64, offset: 448)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4482, file: !255, line: 214, baseType: !929, size: 64, offset: 512)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4382, file: !250, line: 2085, baseType: !4495, size: 64, offset: 1472)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!361, !1463, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4500, line: 15, size: 256, elements: !4501)
!4500 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4501 = !{!4502, !4503, !4504, !4505, !4506}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4499, file: !4500, line: 16, baseType: !360, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4499, file: !4500, line: 19, baseType: !28, size: 32, offset: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4499, file: !4500, line: 26, baseType: !45, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4499, file: !4500, line: 33, baseType: !45, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4499, file: !4500, line: 36, baseType: !4507, size: 64, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !114, line: 33, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4382, file: !250, line: 2087, baseType: !4495, size: 64, offset: 1536)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4382, file: !250, line: 2089, baseType: !4363, size: 64, offset: 1600)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1464, file: !250, line: 1198, baseType: !4512, size: 64, offset: 448)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4514)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !255, line: 324, size: 704, elements: !4515)
!4515 = !{!4516, !4520, !4524, !4528, !4529, !4530, !4531, !4532, !4537, !4542, !4546}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4514, file: !255, line: 325, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!28, !4452}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4514, file: !255, line: 326, baseType: !4521, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!4452, !1463, !28}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4514, file: !255, line: 327, baseType: !4525, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !4452}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4514, file: !255, line: 328, baseType: !4517, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4514, file: !255, line: 329, baseType: !4517, size: 64, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4514, file: !255, line: 330, baseType: !4517, size: 64, offset: 320)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4514, file: !255, line: 331, baseType: !4408, size: 64, offset: 384)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4514, file: !255, line: 334, baseType: !4533, size: 64, offset: 448)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4536, !1262}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4514, file: !255, line: 335, baseType: !4538, size: 64, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!28, !1262, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4514, file: !255, line: 337, baseType: !4543, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!28, !1262, !4536}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4514, file: !255, line: 339, baseType: !4547, size: 64, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!28, !1463, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1464, file: !250, line: 1199, baseType: !4552, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4554)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !255, line: 430, size: 704, elements: !4555)
!4555 = !{!4556, !4560, !4561, !4565, !4566, !4567, !4582, !4605, !4609, !4610, !4633}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4554, file: !255, line: 431, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!28, !1463, !28, !28, !1383}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4554, file: !255, line: 432, baseType: !4408, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4554, file: !255, line: 433, baseType: !4562, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!28, !1463, !7}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4554, file: !255, line: 434, baseType: !4562, size: 64, offset: 192)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4554, file: !255, line: 435, baseType: !4408, size: 64, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4554, file: !255, line: 436, baseType: !4568, size: 64, offset: 320)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!28, !1463, !28, !4571}
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !255, line: 417, size: 256, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4572, file: !255, line: 418, baseType: !28, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4572, file: !255, line: 419, baseType: !7, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4572, file: !255, line: 420, baseType: !7, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4572, file: !255, line: 422, baseType: !7, size: 32, offset: 96)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4572, file: !255, line: 423, baseType: !7, size: 32, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4572, file: !255, line: 424, baseType: !7, size: 32, offset: 160)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4572, file: !255, line: 425, baseType: !7, size: 32, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4572, file: !255, line: 426, baseType: !7, size: 32, offset: 224)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4554, file: !255, line: 437, baseType: !4583, size: 64, offset: 384)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!28, !1463, !4464, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !255, line: 345, size: 960, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4587, file: !255, line: 346, baseType: !28, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4587, file: !255, line: 347, baseType: !432, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4587, file: !255, line: 348, baseType: !432, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4587, file: !255, line: 349, baseType: !432, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4587, file: !255, line: 350, baseType: !432, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4587, file: !255, line: 351, baseType: !432, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4587, file: !255, line: 352, baseType: !432, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4587, file: !255, line: 353, baseType: !443, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4587, file: !255, line: 355, baseType: !443, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4587, file: !255, line: 356, baseType: !28, size: 32, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4587, file: !255, line: 357, baseType: !28, size: 32, offset: 608)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4587, file: !255, line: 358, baseType: !432, size: 64, offset: 640)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4587, file: !255, line: 359, baseType: !432, size: 64, offset: 704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4587, file: !255, line: 360, baseType: !432, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4587, file: !255, line: 361, baseType: !443, size: 64, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4587, file: !255, line: 362, baseType: !28, size: 32, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4554, file: !255, line: 438, baseType: !4606, size: 64, offset: 448)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!28, !1463, !4550, !4586}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4554, file: !255, line: 440, baseType: !4583, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4554, file: !255, line: 441, baseType: !4611, size: 64, offset: 576)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!28, !1463, !4614}
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !255, line: 411, size: 1408, elements: !4616)
!4616 = !{!4617, !4618}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4615, file: !255, line: 412, baseType: !7, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4615, file: !255, line: 413, baseType: !4619, size: 1344, offset: 64)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4620, size: 1344, elements: !773)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !255, line: 397, size: 448, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4632}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4620, file: !255, line: 398, baseType: !7, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4620, file: !255, line: 399, baseType: !7, size: 32, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4620, file: !255, line: 401, baseType: !7, size: 32, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4620, file: !255, line: 402, baseType: !7, size: 32, offset: 96)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4620, file: !255, line: 403, baseType: !7, size: 32, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4620, file: !255, line: 404, baseType: !7, size: 32, offset: 160)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4620, file: !255, line: 405, baseType: !7, size: 32, offset: 192)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4620, file: !255, line: 406, baseType: !434, size: 64, offset: 256)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4620, file: !255, line: 407, baseType: !4631, size: 64, offset: 320)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !31, line: 132, baseType: !432)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4620, file: !255, line: 408, baseType: !4631, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4554, file: !255, line: 442, baseType: !4562, size: 64, offset: 640)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1464, file: !250, line: 1200, baseType: !4635, size: 64, offset: 576)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4637)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !250, line: 54, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1464, file: !250, line: 1201, baseType: !45, size: 64, offset: 640)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1464, file: !250, line: 1202, baseType: !45, size: 64, offset: 704)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1464, file: !250, line: 1203, baseType: !45, size: 64, offset: 768)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1464, file: !250, line: 1204, baseType: !1227, size: 64, offset: 832)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1464, file: !250, line: 1205, baseType: !913, size: 320, offset: 896)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1464, file: !250, line: 1206, baseType: !28, size: 32, offset: 1216)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1464, file: !250, line: 1207, baseType: !55, size: 32, offset: 1248)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1464, file: !250, line: 1209, baseType: !26, size: 64, offset: 1280)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1464, file: !250, line: 1211, baseType: !4647, size: 64, offset: 1344)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4650)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !4651, line: 36, size: 384, elements: !4652)
!4651 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!4652 = !{!4653, !4654, !4655, !4656, !4660, !4664}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4650, file: !4651, line: 37, baseType: !22, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4650, file: !4651, line: 38, baseType: !22, size: 64, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4650, file: !4651, line: 39, baseType: !28, size: 32, offset: 128)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4650, file: !4651, line: 40, baseType: !4657, size: 64, offset: 192)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!893, !1227}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4650, file: !4651, line: 41, baseType: !4661, size: 64, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!28, !4648, !1227, !1262, !22, !26, !41}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4650, file: !4651, line: 44, baseType: !4665, size: 64, offset: 320)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!28, !4648, !1301, !1227, !1262, !22, !2634, !41, !28}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1464, file: !250, line: 1223, baseType: !4669, size: 64, offset: 1408)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1239, line: 34, size: 64, elements: !4670)
!4670 = !{!4671}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4669, file: !1239, line: 35, baseType: !1242, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1464, file: !250, line: 1224, baseType: !103, size: 128, offset: 1472)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1464, file: !250, line: 1225, baseType: !2247, size: 64, offset: 1600)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1464, file: !250, line: 1226, baseType: !4675, size: 64, offset: 1664)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !250, line: 1226, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1464, file: !250, line: 1227, baseType: !4678, size: 64, offset: 1728)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !261, line: 163, size: 6848, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4728, !4729, !4730, !4731, !4732, !4733, !4734}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4679, file: !261, line: 164, baseType: !432, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4679, file: !261, line: 165, baseType: !424, size: 192, align: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4679, file: !261, line: 166, baseType: !103, size: 128, offset: 256)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4679, file: !261, line: 167, baseType: !45, size: 64, offset: 384)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4679, file: !261, line: 168, baseType: !45, size: 64, offset: 448)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4679, file: !261, line: 170, baseType: !2870, size: 32, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4679, file: !261, line: 171, baseType: !7, size: 32, offset: 544)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4679, file: !261, line: 172, baseType: !7, size: 32, offset: 576)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4679, file: !261, line: 173, baseType: !7, size: 32, offset: 608)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4679, file: !261, line: 173, baseType: !7, size: 32, offset: 640)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4679, file: !261, line: 179, baseType: !730, size: 64, offset: 704)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4679, file: !261, line: 184, baseType: !45, size: 64, offset: 768)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4679, file: !261, line: 186, baseType: !4694, size: 4672, offset: 832)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !261, line: 105, size: 4672, elements: !4695)
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4694, file: !261, line: 106, baseType: !4678, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4694, file: !261, line: 108, baseType: !45, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4694, file: !261, line: 109, baseType: !45, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4694, file: !261, line: 111, baseType: !103, size: 128, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4694, file: !261, line: 112, baseType: !103, size: 128, offset: 320)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4694, file: !261, line: 113, baseType: !103, size: 128, offset: 448)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4694, file: !261, line: 114, baseType: !103, size: 128, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4694, file: !261, line: 115, baseType: !65, size: 32, offset: 704)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4694, file: !261, line: 117, baseType: !55, size: 32, offset: 736)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4694, file: !261, line: 118, baseType: !4706, size: 1280, offset: 768)
!4706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 1280, elements: !794)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4694, file: !261, line: 120, baseType: !45, size: 64, offset: 2048)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4694, file: !261, line: 121, baseType: !45, size: 64, offset: 2112)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4694, file: !261, line: 122, baseType: !45, size: 64, offset: 2176)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4694, file: !261, line: 123, baseType: !45, size: 64, offset: 2240)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4694, file: !261, line: 124, baseType: !45, size: 64, offset: 2304)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4694, file: !261, line: 132, baseType: !45, size: 64, offset: 2368)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4694, file: !261, line: 133, baseType: !45, size: 64, offset: 2432)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4694, file: !261, line: 135, baseType: !4715, size: 384, offset: 2496)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4716, line: 76, size: 384, elements: !4717)
!4716 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4717 = !{!4718, !4719, !4720}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4715, file: !4716, line: 78, baseType: !1169, size: 320)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4715, file: !4716, line: 80, baseType: !7, size: 32, offset: 320)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4715, file: !4716, line: 81, baseType: !524, size: 32, offset: 352)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4694, file: !261, line: 136, baseType: !28, size: 32, offset: 2880)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4694, file: !261, line: 137, baseType: !260, size: 32, offset: 2912)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4694, file: !261, line: 139, baseType: !65, size: 32, offset: 2944)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4694, file: !261, line: 140, baseType: !103, size: 128, offset: 3008)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4694, file: !261, line: 141, baseType: !3166, size: 704, offset: 3136)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4694, file: !261, line: 142, baseType: !3166, size: 704, offset: 3840)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4694, file: !261, line: 144, baseType: !103, size: 128, offset: 4544)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4679, file: !261, line: 187, baseType: !103, size: 128, offset: 5504)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4679, file: !261, line: 193, baseType: !60, size: 192, offset: 5632)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4679, file: !261, line: 195, baseType: !2293, size: 64, offset: 5824)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4679, file: !261, line: 196, baseType: !4082, size: 512, offset: 5888)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4679, file: !261, line: 197, baseType: !2293, size: 64, offset: 6400)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4679, file: !261, line: 199, baseType: !2463, size: 320, offset: 6464)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4679, file: !261, line: 202, baseType: !1227, size: 64, offset: 6784)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1464, file: !250, line: 1228, baseType: !4736, size: 64, offset: 1792)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !250, line: 1228, flags: DIFlagFwdDecl)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1464, file: !250, line: 1229, baseType: !789, size: 128, offset: 1856)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1464, file: !250, line: 1230, baseType: !7, size: 32, offset: 1984)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1464, file: !250, line: 1231, baseType: !4741, size: 2496, offset: 2048)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !255, line: 521, size: 2496, elements: !4742)
!4742 = !{!4743, !4744, !4745, !4747, !4779}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4741, file: !255, line: 522, baseType: !7, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4741, file: !255, line: 523, baseType: !913, size: 320, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4741, file: !255, line: 524, baseType: !4746, size: 192, offset: 384)
!4746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 192, elements: !773)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4741, file: !255, line: 525, baseType: !4748, size: 1728, offset: 576)
!4748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4749, size: 1728, elements: !773)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !255, line: 222, size: 576, elements: !4750)
!4750 = !{!4751, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4749, file: !255, line: 223, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !255, line: 445, size: 256, elements: !4754)
!4754 = !{!4755, !4756, !4769, !4770}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4753, file: !255, line: 446, baseType: !28, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4753, file: !255, line: 447, baseType: !4757, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4759)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !255, line: 312, size: 512, elements: !4760)
!4760 = !{!4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4759, file: !255, line: 313, baseType: !4408, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4759, file: !255, line: 314, baseType: !4408, size: 64, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4759, file: !255, line: 315, baseType: !4408, size: 64, offset: 128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4759, file: !255, line: 316, baseType: !4408, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4759, file: !255, line: 317, baseType: !4517, size: 64, offset: 256)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4759, file: !255, line: 318, baseType: !4517, size: 64, offset: 320)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4759, file: !255, line: 319, baseType: !4517, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4759, file: !255, line: 320, baseType: !4547, size: 64, offset: 448)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4753, file: !255, line: 448, baseType: !1555, size: 64, offset: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4753, file: !255, line: 449, baseType: !4752, size: 64, offset: 192)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4749, file: !255, line: 224, baseType: !28, size: 32, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4749, file: !255, line: 226, baseType: !103, size: 128, offset: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4749, file: !255, line: 227, baseType: !45, size: 64, offset: 256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4749, file: !255, line: 228, baseType: !7, size: 32, offset: 320)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4749, file: !255, line: 229, baseType: !7, size: 32, offset: 352)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4749, file: !255, line: 230, baseType: !4485, size: 64, offset: 384)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4749, file: !255, line: 231, baseType: !4485, size: 64, offset: 448)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4749, file: !255, line: 232, baseType: !26, size: 64, offset: 512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4741, file: !255, line: 526, baseType: !4780, size: 192, offset: 2304)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4757, size: 192, elements: !773)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1464, file: !250, line: 1233, baseType: !4782, size: 2368, offset: 4544)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !250, line: 1184, size: 2368, elements: !4783)
!4783 = !{!4784, !4785, !4786}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4782, file: !250, line: 1185, baseType: !32, size: 16)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4782, file: !250, line: 1186, baseType: !32, size: 16, offset: 16)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4782, file: !250, line: 1187, baseType: !4787, size: 2304, offset: 64)
!4787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4788, size: 2304, elements: !773)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4789, line: 12, size: 768, elements: !4790)
!4789 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4790 = !{!4791, !4799, !4800, !4801, !4802}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4788, file: !4789, line: 13, baseType: !4792, size: 384)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4793, line: 17, size: 384, elements: !4794)
!4793 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4794 = !{!4795, !4796, !4797, !4798}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4792, file: !4793, line: 18, baseType: !28, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4792, file: !4793, line: 19, baseType: !28, size: 32, offset: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4792, file: !4793, line: 20, baseType: !60, size: 192, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4792, file: !4793, line: 22, baseType: !717, size: 128, align: 64, offset: 256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4788, file: !4789, line: 14, baseType: !2238, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4788, file: !4789, line: 15, baseType: !3817, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4788, file: !4789, line: 16, baseType: !60, size: 192, offset: 512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4788, file: !4789, line: 17, baseType: !55, size: 32, offset: 704)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1464, file: !250, line: 1240, baseType: !26, size: 64, offset: 6912)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1464, file: !250, line: 1243, baseType: !374, size: 32, offset: 6976)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1464, file: !250, line: 1245, baseType: !929, size: 64, offset: 7040)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1464, file: !250, line: 1246, baseType: !929, size: 64, offset: 7104)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1464, file: !250, line: 1248, baseType: !375, size: 32, offset: 7168)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1464, file: !250, line: 1249, baseType: !4809, size: 64, offset: 7232)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !250, line: 634, flags: DIFlagFwdDecl)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1464, file: !250, line: 1252, baseType: !4812, size: 256, offset: 7296)
!4812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !4813)
!4813 = !{!4814}
!4814 = !DISubrange(count: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1464, file: !250, line: 1253, baseType: !4816, size: 128, offset: 7552)
!4816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4817, line: 21, baseType: !4818)
!4817 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4817, line: 19, size: 128, elements: !4819)
!4819 = !{!4820}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4818, file: !4817, line: 20, baseType: !4821, size: 128)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !4822)
!4822 = !{!4823}
!4823 = !DISubrange(count: 16)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1464, file: !250, line: 1255, baseType: !7, size: 32, offset: 7680)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1464, file: !250, line: 1261, baseType: !737, size: 256, offset: 7744)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1464, file: !250, line: 1267, baseType: !22, size: 64, offset: 8000)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1464, file: !250, line: 1269, baseType: !4828, size: 64, offset: 8064)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1229, line: 128, size: 1024, align: 512, elements: !4831)
!4831 = !{!4832, !4836, !4837, !4844, !4850, !4854, !4858, !4862, !4863, !4867, !4871, !4876, !4880}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4830, file: !1229, line: 129, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!28, !1227, !7}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4830, file: !1229, line: 130, baseType: !4833, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4830, file: !1229, line: 131, baseType: !4838, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!28, !4841, !4843}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4830, file: !1229, line: 132, baseType: !4845, size: 64, offset: 192)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!28, !4841, !7, !22, !4848}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4830, file: !1229, line: 134, baseType: !4851, size: 64, offset: 256)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!28, !4841}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4830, file: !1229, line: 135, baseType: !4855, size: 64, offset: 320)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!28, !1227}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4830, file: !1229, line: 136, baseType: !4859, size: 64, offset: 384)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !1227}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4830, file: !1229, line: 137, baseType: !4859, size: 64, offset: 448)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4830, file: !1229, line: 138, baseType: !4864, size: 64, offset: 512)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !1227, !1262}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4830, file: !1229, line: 139, baseType: !4868, size: 64, offset: 576)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!981, !1227, !981, !28}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4830, file: !1229, line: 140, baseType: !4872, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!1222, !4875}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4830, file: !1229, line: 141, baseType: !4877, size: 64, offset: 704)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!28, !1383, !893}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4830, file: !1229, line: 142, baseType: !4881, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!1227, !1227, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1464, file: !250, line: 1271, baseType: !4887, size: 448, offset: 8128)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4500, line: 63, size: 448, elements: !4888)
!4888 = !{!4889, !4894, !4895, !4896, !4897, !4898, !4899}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4887, file: !4500, line: 64, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!45, !4893, !4498}
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4887, file: !4500, line: 66, baseType: !4890, size: 64, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4887, file: !4500, line: 69, baseType: !361, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4887, file: !4500, line: 70, baseType: !28, size: 32, offset: 192)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4887, file: !4500, line: 71, baseType: !7, size: 32, offset: 224)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4887, file: !4500, line: 74, baseType: !103, size: 128, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4887, file: !4500, line: 85, baseType: !4900, size: 64, offset: 384)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1464, file: !250, line: 1274, baseType: !730, size: 64, offset: 8576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1464, file: !250, line: 1280, baseType: !730, size: 64, offset: 8640)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1464, file: !250, line: 1283, baseType: !28, size: 32, offset: 8704)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1464, file: !250, line: 1286, baseType: !2696, size: 32, offset: 8736)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1464, file: !250, line: 1289, baseType: !3171, size: 64, offset: 8768)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1464, file: !250, line: 1290, baseType: !785, size: 64, offset: 8832)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1464, file: !250, line: 1297, baseType: !835, size: 64, offset: 8896)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1464, file: !250, line: 1304, baseType: !4909, size: 64, offset: 8960)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4910, line: 49, size: 64, elements: !4911)
!4910 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4911 = !{!4912}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4909, file: !4910, line: 50, baseType: !4913, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4910, line: 41, size: 512, align: 512, elements: !4915)
!4915 = !{!4916, !4917, !4922}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4914, file: !4910, line: 43, baseType: !65, size: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4914, file: !4910, line: 45, baseType: !4918, size: 192, offset: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4910, line: 29, size: 192, elements: !4919)
!4919 = !{!4920, !4921}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4918, file: !4910, line: 30, baseType: !103, size: 128)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4918, file: !4910, line: 32, baseType: !361, size: 64, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4914, file: !4910, line: 46, baseType: !361, size: 64, offset: 256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1464, file: !250, line: 1305, baseType: !4909, size: 64, offset: 9024)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1464, file: !250, line: 1306, baseType: !717, size: 128, align: 64, offset: 9088)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1464, file: !250, line: 1307, baseType: !1020, size: 256, offset: 9216)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1464, file: !250, line: 1309, baseType: !737, size: 256, offset: 9472)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1464, file: !250, line: 1314, baseType: !28, size: 32, offset: 9728)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1464, file: !250, line: 1317, baseType: !65, size: 32, align: 512, offset: 10240)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1464, file: !250, line: 1318, baseType: !103, size: 128, offset: 10304)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1464, file: !250, line: 1320, baseType: !65, size: 32, offset: 10432)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1464, file: !250, line: 1321, baseType: !103, size: 128, offset: 10496)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1263, file: !250, line: 656, baseType: !1672, size: 64, offset: 512)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1263, file: !250, line: 659, baseType: !26, size: 64, offset: 576)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1263, file: !250, line: 663, baseType: !45, size: 64, offset: 640)
!4935 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !250, line: 671, baseType: !4936, size: 32, offset: 704)
!4936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !250, line: 671, size: 32, elements: !4937)
!4937 = !{!4938, !4939}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4936, file: !250, line: 672, baseType: !3219, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4936, file: !250, line: 673, baseType: !7, size: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1263, file: !250, line: 675, baseType: !1336, size: 32, offset: 736)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1263, file: !250, line: 676, baseType: !47, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1263, file: !250, line: 677, baseType: !1372, size: 128, offset: 832)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1263, file: !250, line: 678, baseType: !1372, size: 128, offset: 960)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1263, file: !250, line: 679, baseType: !1372, size: 128, offset: 1088)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1263, file: !250, line: 680, baseType: !65, size: 32, offset: 1216)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1263, file: !250, line: 681, baseType: !32, size: 16, offset: 1248)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1263, file: !250, line: 682, baseType: !89, size: 8, offset: 1264)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1263, file: !250, line: 683, baseType: !89, size: 8, offset: 1272)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1263, file: !250, line: 684, baseType: !4631, size: 64, offset: 1280)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1263, file: !250, line: 691, baseType: !45, size: 64, offset: 1344)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1263, file: !250, line: 692, baseType: !913, size: 320, offset: 1408)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1263, file: !250, line: 694, baseType: !45, size: 64, offset: 1728)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1263, file: !250, line: 695, baseType: !45, size: 64, offset: 1792)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1263, file: !250, line: 697, baseType: !789, size: 128, offset: 1856)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1263, file: !250, line: 698, baseType: !103, size: 128, offset: 1984)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1263, file: !250, line: 707, baseType: !103, size: 128, offset: 2112)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1263, file: !250, line: 708, baseType: !103, size: 128, offset: 2240)
!4958 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !250, line: 709, baseType: !4959, size: 128, offset: 2368)
!4959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !250, line: 709, size: 128, elements: !4960)
!4960 = !{!4961, !4962}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4959, file: !250, line: 710, baseType: !785, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4959, file: !250, line: 711, baseType: !717, size: 128, align: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1263, file: !250, line: 713, baseType: !732, size: 64, offset: 2496)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1263, file: !250, line: 714, baseType: !732, size: 64, offset: 2560)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1263, file: !250, line: 715, baseType: !55, size: 32, offset: 2624)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1263, file: !250, line: 716, baseType: !55, size: 32, offset: 2656)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1263, file: !250, line: 717, baseType: !55, size: 32, offset: 2688)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1263, file: !250, line: 719, baseType: !55, size: 32, offset: 2720)
!4969 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !250, line: 721, baseType: !4970, size: 64, offset: 2752)
!4970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !250, line: 721, size: 64, elements: !4971)
!4971 = !{!4972, !5098}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4970, file: !250, line: 722, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4975)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !250, line: 1914, size: 2112, elements: !4976)
!4976 = !{!4977, !4978, !4982, !4986, !4990, !4991, !4992, !4998, !5011, !5015, !5019, !5020, !5024, !5025, !5029, !5034, !5035, !5039, !5043, !5049, !5050, !5054, !5055, !5061, !5065, !5066, !5071, !5075, !5079, !5083, !5087, !5088, !5094}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4975, file: !250, line: 1915, baseType: !1555, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4975, file: !250, line: 1916, baseType: !4979, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!47, !709, !47, !28}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4975, file: !250, line: 1917, baseType: !4983, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!1414, !709, !981, !41, !46}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4975, file: !250, line: 1918, baseType: !4987, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!1414, !709, !22, !41, !46}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4975, file: !250, line: 1919, baseType: !2139, size: 64, offset: 256)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4975, file: !250, line: 1920, baseType: !2139, size: 64, offset: 320)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4975, file: !250, line: 1921, baseType: !4993, size: 64, offset: 384)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!28, !2142, !4996, !7}
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !250, line: 53, flags: DIFlagFwdDecl)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4975, file: !250, line: 1923, baseType: !4999, size: 64, offset: 448)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!28, !709, !5002}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !250, line: 1858, size: 128, elements: !5004)
!5004 = !{!5005, !5010}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5003, file: !250, line: 1859, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !250, line: 1855, baseType: !5007)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!893, !5002, !22, !28, !47, !432, !7}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5003, file: !250, line: 1860, baseType: !47, size: 64, offset: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4975, file: !250, line: 1924, baseType: !5012, size: 64, offset: 512)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!2839, !709, !2841}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4975, file: !250, line: 1925, baseType: !5016, size: 64, offset: 576)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!361, !709, !7, !45}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4975, file: !250, line: 1926, baseType: !5016, size: 64, offset: 640)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4975, file: !250, line: 1927, baseType: !5021, size: 64, offset: 704)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!28, !709, !1802}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4975, file: !250, line: 1928, baseType: !45, size: 64, offset: 768)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4975, file: !250, line: 1929, baseType: !5026, size: 64, offset: 832)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!28, !1262, !709}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4975, file: !250, line: 1930, baseType: !5030, size: 64, offset: 896)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!28, !709, !5033}
!5033 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !250, line: 1061, baseType: !26)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4975, file: !250, line: 1931, baseType: !5026, size: 64, offset: 960)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4975, file: !250, line: 1932, baseType: !5036, size: 64, offset: 1024)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!28, !709, !47, !47, !28}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4975, file: !250, line: 1933, baseType: !5040, size: 64, offset: 1088)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!28, !28, !709, !28}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4975, file: !250, line: 1934, baseType: !5044, size: 64, offset: 1152)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!28, !709, !28, !5047}
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !250, line: 1063, flags: DIFlagFwdDecl)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4975, file: !250, line: 1935, baseType: !706, size: 64, offset: 1216)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4975, file: !250, line: 1936, baseType: !5051, size: 64, offset: 1280)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!28, !28}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4975, file: !250, line: 1937, baseType: !5044, size: 64, offset: 1344)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4975, file: !250, line: 1938, baseType: !5056, size: 64, offset: 1408)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!1414, !5059, !709, !46, !41, !7}
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !365, line: 59, flags: DIFlagFwdDecl)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4975, file: !250, line: 1939, baseType: !5062, size: 64, offset: 1472)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!1414, !709, !46, !5059, !41, !7}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4975, file: !250, line: 1940, baseType: !2686, size: 64, offset: 1536)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4975, file: !250, line: 1941, baseType: !5067, size: 64, offset: 1600)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!28, !709, !28, !5070, !2116}
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4975, file: !250, line: 1942, baseType: !5072, size: 64, offset: 1664)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!361, !709, !28, !47, !47}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4975, file: !250, line: 1944, baseType: !5076, size: 64, offset: 1728)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !2772, !709}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4975, file: !250, line: 1948, baseType: !5080, size: 64, offset: 1792)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!1414, !709, !47, !709, !47, !41, !7}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4975, file: !250, line: 1950, baseType: !5084, size: 64, offset: 1856)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!47, !709, !47, !709, !47, !47, !7}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4975, file: !250, line: 1953, baseType: !5036, size: 64, offset: 1920)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4975, file: !250, line: 1954, baseType: !5089, size: 64, offset: 1984)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!28, !5092, !7}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !250, line: 1911, flags: DIFlagFwdDecl)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4975, file: !250, line: 1955, baseType: !5095, size: 64, offset: 2048)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!28, !5092, !4996, !7}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4970, file: !250, line: 723, baseType: !4389, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1263, file: !250, line: 725, baseType: !5100, size: 64, offset: 2816)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !250, line: 725, flags: DIFlagFwdDecl)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1263, file: !250, line: 726, baseType: !1673, size: 1536, align: 64, offset: 2880)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1263, file: !250, line: 727, baseType: !103, size: 128, offset: 4416)
!5104 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !250, line: 728, baseType: !5105, size: 64, offset: 4544)
!5105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !250, line: 728, size: 64, elements: !5106)
!5106 = !{!5107, !5108, !5111, !5112}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5105, file: !250, line: 729, baseType: !5059, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5105, file: !250, line: 730, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !250, line: 730, flags: DIFlagFwdDecl)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5105, file: !250, line: 731, baseType: !981, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5105, file: !250, line: 732, baseType: !7, size: 32)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1263, file: !250, line: 735, baseType: !375, size: 32, offset: 4608)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1263, file: !250, line: 738, baseType: !375, size: 32, offset: 4640)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1263, file: !250, line: 739, baseType: !4809, size: 64, offset: 4672)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1263, file: !250, line: 750, baseType: !26, size: 64, offset: 4736)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1228, file: !1229, line: 91, baseType: !5118, size: 256, offset: 448)
!5118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !4813)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1228, file: !1229, line: 94, baseType: !5120, size: 64, offset: 704)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5121, line: 25, size: 64, elements: !5122)
!5121 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5122 = !{!5123}
!5123 = !DIDerivedType(tag: DW_TAG_member, scope: !5120, file: !5121, line: 26, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5120, file: !5121, line: 26, size: 64, elements: !5125)
!5125 = !{!5126, !5127}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5124, file: !5121, line: 28, baseType: !433, size: 64, align: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, scope: !5124, file: !5121, line: 30, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5124, file: !5121, line: 30, size: 64, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5128, file: !5121, line: 31, baseType: !65, size: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5128, file: !5121, line: 32, baseType: !28, size: 32, offset: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1228, file: !1229, line: 95, baseType: !4828, size: 64, offset: 768)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1228, file: !1229, line: 96, baseType: !1463, size: 64, offset: 832)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1228, file: !1229, line: 97, baseType: !45, size: 64, offset: 896)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1228, file: !1229, line: 98, baseType: !26, size: 64, offset: 960)
!5136 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !1229, line: 100, baseType: !5137, size: 128, offset: 1024)
!5137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1229, line: 100, size: 128, elements: !5138)
!5138 = !{!5139, !5140}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5137, file: !1229, line: 101, baseType: !103, size: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5137, file: !1229, line: 102, baseType: !2850, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1228, file: !1229, line: 104, baseType: !103, size: 128, offset: 1152)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1228, file: !1229, line: 105, baseType: !103, size: 128, offset: 1280)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1228, file: !1229, line: 113, baseType: !5144, size: 128, offset: 1408)
!5144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1229, line: 109, size: 128, elements: !5145)
!5145 = !{!5146, !5147, !5148}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5144, file: !1229, line: 110, baseType: !789, size: 128)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5144, file: !1229, line: 111, baseType: !1238, size: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5144, file: !1229, line: 112, baseType: !717, size: 128, align: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1223, file: !1224, line: 72, baseType: !1463, size: 64, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1223, file: !1224, line: 73, baseType: !28, size: 32, offset: 128)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1223, file: !1224, line: 74, baseType: !1301, size: 64, offset: 192)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1218, file: !1219, line: 10, baseType: !1227, size: 64, offset: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !710, file: !250, line: 1015, baseType: !1262, size: 64, offset: 1344)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !710, file: !250, line: 1016, baseType: !4973, size: 64, offset: 1408)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !710, file: !250, line: 1018, baseType: !432, size: 64, offset: 1472)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !710, file: !250, line: 1020, baseType: !26, size: 64, offset: 1536)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !710, file: !250, line: 1023, baseType: !26, size: 64, offset: 1600)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !710, file: !250, line: 1027, baseType: !3387, size: 64, offset: 1664)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !710, file: !250, line: 1029, baseType: !1672, size: 64, offset: 1728)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !710, file: !250, line: 1030, baseType: !2696, size: 32, offset: 1792)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !710, file: !250, line: 1031, baseType: !2696, size: 32, offset: 1824)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !685, file: !114, line: 756, baseType: !45, size: 64, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !685, file: !114, line: 757, baseType: !45, size: 64, offset: 768)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !685, file: !114, line: 760, baseType: !45, size: 64, offset: 832)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !685, file: !114, line: 761, baseType: !45, size: 64, offset: 896)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !685, file: !114, line: 763, baseType: !45, size: 64, offset: 960)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !685, file: !114, line: 764, baseType: !5168, size: 64, offset: 1024)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1817, line: 299, baseType: !5170)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 299, size: 64, elements: !5171)
!5171 = !{!5172}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5170, file: !1817, line: 299, baseType: !5173, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1822, line: 18, baseType: !45)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !685, file: !114, line: 773, baseType: !55, size: 32, offset: 1088)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !685, file: !114, line: 785, baseType: !55, size: 32, offset: 1120)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !685, file: !114, line: 795, baseType: !5177, size: 64, offset: 1152)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !114, line: 726, size: 128, elements: !5179)
!5179 = !{!5180, !5181}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5178, file: !114, line: 727, baseType: !432, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5178, file: !114, line: 728, baseType: !28, size: 32, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !685, file: !114, line: 801, baseType: !45, size: 64, offset: 1216)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !685, file: !114, line: 804, baseType: !730, size: 64, offset: 1280)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !685, file: !114, line: 806, baseType: !28, size: 32, offset: 1344)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !685, file: !114, line: 808, baseType: !65, size: 32, offset: 1376)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !685, file: !114, line: 823, baseType: !913, size: 320, offset: 1408)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !685, file: !114, line: 825, baseType: !103, size: 128, offset: 1728)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !685, file: !114, line: 845, baseType: !28, size: 32, offset: 1856)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !685, file: !114, line: 849, baseType: !45, size: 64, offset: 1920)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !685, file: !114, line: 850, baseType: !45, size: 64, offset: 1984)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !685, file: !114, line: 852, baseType: !45, size: 64, offset: 2048)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !685, file: !114, line: 853, baseType: !45, size: 64, offset: 2112)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !685, file: !114, line: 854, baseType: !732, size: 64, offset: 2176)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !685, file: !114, line: 855, baseType: !45, size: 64, offset: 2240)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !685, file: !114, line: 856, baseType: !45, size: 64, offset: 2304)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !685, file: !114, line: 857, baseType: !45, size: 64, offset: 2368)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !685, file: !114, line: 858, baseType: !45, size: 64, offset: 2432)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !685, file: !114, line: 865, baseType: !555, size: 32, offset: 2496)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !685, file: !114, line: 867, baseType: !65, size: 32, offset: 2528)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !685, file: !114, line: 869, baseType: !45, size: 64, offset: 2560)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !685, file: !114, line: 869, baseType: !45, size: 64, offset: 2624)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !685, file: !114, line: 869, baseType: !45, size: 64, offset: 2688)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !685, file: !114, line: 869, baseType: !45, size: 64, offset: 2752)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !685, file: !114, line: 870, baseType: !45, size: 64, offset: 2816)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !685, file: !114, line: 870, baseType: !45, size: 64, offset: 2880)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !685, file: !114, line: 870, baseType: !45, size: 64, offset: 2944)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !685, file: !114, line: 871, baseType: !45, size: 64, offset: 3008)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !685, file: !114, line: 871, baseType: !45, size: 64, offset: 3072)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !685, file: !114, line: 871, baseType: !45, size: 64, offset: 3136)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !685, file: !114, line: 871, baseType: !45, size: 64, offset: 3200)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !685, file: !114, line: 873, baseType: !5212, size: 3328, offset: 3264)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3328, elements: !5213)
!5213 = !{!5214}
!5214 = !DISubrange(count: 52)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !685, file: !114, line: 875, baseType: !4706, size: 1280, offset: 6592)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !685, file: !114, line: 877, baseType: !5217, size: 64, offset: 7872)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !114, line: 877, flags: DIFlagFwdDecl)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !685, file: !114, line: 880, baseType: !5220, size: 1088, offset: 7936)
!5220 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5221, line: 72, baseType: !5222)
!5221 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5221, line: 23, size: 1088, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5231, !5232, !5233, !5234, !5259, !5260, !5261}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5222, file: !5221, line: 28, baseType: !432, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5222, file: !5221, line: 38, baseType: !732, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5222, file: !5221, line: 40, baseType: !45, size: 64, offset: 128)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5222, file: !5221, line: 43, baseType: !913, size: 320, offset: 192)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5222, file: !5221, line: 44, baseType: !5229, size: 64, offset: 512)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5221, line: 44, flags: DIFlagFwdDecl)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5222, file: !5221, line: 48, baseType: !45, size: 64, offset: 576)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5222, file: !5221, line: 59, baseType: !737, size: 256, offset: 640)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5222, file: !5221, line: 60, baseType: !26, size: 64, offset: 896)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5222, file: !5221, line: 61, baseType: !5235, size: 64, offset: 960)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5237)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5238, line: 13, size: 1216, elements: !5239)
!5238 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5239 = !{!5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5237, file: !5238, line: 14, baseType: !26, size: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5237, file: !5238, line: 15, baseType: !45, size: 64, offset: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5237, file: !5238, line: 17, baseType: !45, size: 64, offset: 128)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5237, file: !5238, line: 17, baseType: !45, size: 64, offset: 192)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5237, file: !5238, line: 18, baseType: !45, size: 64, offset: 256)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5237, file: !5238, line: 18, baseType: !45, size: 64, offset: 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5237, file: !5238, line: 19, baseType: !2634, size: 64, offset: 384)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5237, file: !5238, line: 21, baseType: !361, size: 64, offset: 448)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5237, file: !5238, line: 23, baseType: !361, size: 64, offset: 512)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5237, file: !5238, line: 24, baseType: !361, size: 64, offset: 576)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5237, file: !5238, line: 25, baseType: !361, size: 64, offset: 640)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5237, file: !5238, line: 26, baseType: !361, size: 64, offset: 704)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5237, file: !5238, line: 27, baseType: !361, size: 64, offset: 768)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5237, file: !5238, line: 28, baseType: !361, size: 64, offset: 832)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5237, file: !5238, line: 29, baseType: !361, size: 64, offset: 896)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5237, file: !5238, line: 30, baseType: !361, size: 64, offset: 960)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5237, file: !5238, line: 31, baseType: !361, size: 64, offset: 1024)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5237, file: !5238, line: 32, baseType: !361, size: 64, offset: 1088)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5237, file: !5238, line: 33, baseType: !361, size: 64, offset: 1152)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5222, file: !5221, line: 63, baseType: !55, size: 32, offset: 1024)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5222, file: !5221, line: 69, baseType: !99, size: 16, offset: 1056)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5222, file: !5221, line: 70, baseType: !3026, size: 16, offset: 1072)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !114, line: 882, baseType: !45, size: 64, offset: 9024)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !685, file: !114, line: 885, baseType: !65, size: 32, offset: 9088)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !685, file: !114, line: 886, baseType: !5265, size: 64, offset: 9152)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !114, line: 732, flags: DIFlagFwdDecl)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !685, file: !114, line: 901, baseType: !835, size: 64, offset: 9216)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !685, file: !114, line: 904, baseType: !709, size: 64, offset: 9280)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !685, file: !114, line: 906, baseType: !5270, size: 64, offset: 9344)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !114, line: 906, flags: DIFlagFwdDecl)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !685, file: !114, line: 930, baseType: !55, size: 32, offset: 9408)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !685, file: !114, line: 933, baseType: !55, size: 32, offset: 9440)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !685, file: !114, line: 935, baseType: !5275, size: 64, offset: 9472)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !288, line: 103, size: 64, elements: !5276)
!5276 = !{!5277}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5275, file: !288, line: 104, baseType: !5278, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !288, line: 101, flags: DIFlagFwdDecl)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !685, file: !114, line: 940, baseType: !730, size: 64, offset: 9536)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !685, file: !114, line: 942, baseType: !1020, size: 256, offset: 9600)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !682, file: !114, line: 986, baseType: !5283, offset: 10240)
!5283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !1124)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !364, file: !365, line: 882, baseType: !681, size: 64, offset: 9792)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !364, file: !365, line: 884, baseType: !28, size: 32, offset: 9856)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !364, file: !365, line: 885, baseType: !28, size: 32, offset: 9888)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !364, file: !365, line: 886, baseType: !28, size: 32, offset: 9920)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !364, file: !365, line: 888, baseType: !28, size: 32, offset: 9952)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !364, file: !365, line: 890, baseType: !45, size: 64, offset: 9984)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !364, file: !365, line: 893, baseType: !7, size: 32, offset: 10048)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !364, file: !365, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !364, file: !365, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !364, file: !365, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !364, file: !365, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !364, file: !365, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !364, file: !365, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !364, file: !365, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !364, file: !365, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !364, file: !365, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !364, file: !365, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !364, file: !365, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !364, file: !365, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !364, file: !365, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !364, file: !365, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !364, file: !365, line: 969, baseType: !45, size: 64, offset: 10176)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !364, file: !365, line: 971, baseType: !5307, size: 448, offset: 10240)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !5308)
!5308 = !{!5309, !5310, !5315}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5307, file: !12, line: 26, baseType: !45, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5307, file: !12, line: 27, baseType: !5311, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!361, !5314}
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, scope: !5307, file: !12, line: 28, baseType: !5316, size: 320, offset: 128)
!5316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5307, file: !12, line: 28, size: 320, elements: !5317)
!5317 = !{!5318, !5328, !5353}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5316, file: !12, line: 37, baseType: !5319, size: 320)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5316, file: !12, line: 30, size: 320, elements: !5320)
!5320 = !{!5321, !5323, !5324, !5325, !5326, !5327}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5319, file: !12, line: 31, baseType: !5322, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5319, file: !12, line: 32, baseType: !374, size: 32, offset: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5319, file: !12, line: 33, baseType: !374, size: 32, offset: 96)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5319, file: !12, line: 34, baseType: !374, size: 32, offset: 128)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5319, file: !12, line: 35, baseType: !432, size: 64, offset: 192)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5319, file: !12, line: 36, baseType: !5322, size: 64, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5316, file: !12, line: 47, baseType: !5329, size: 192)
!5329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5316, file: !12, line: 39, size: 192, elements: !5330)
!5330 = !{!5331, !5332, !5333, !5352}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5329, file: !12, line: 40, baseType: !547, size: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5329, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!5333 = !DIDerivedType(tag: DW_TAG_member, scope: !5329, file: !12, line: 42, baseType: !5334, size: 64, offset: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5329, file: !12, line: 42, size: 64, elements: !5335)
!5335 = !{!5336, !5344}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5334, file: !12, line: 43, baseType: !5337, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5339, line: 7, size: 128, elements: !5340)
!5339 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5340 = !{!5341, !5343}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5338, file: !5339, line: 8, baseType: !5342, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !43, line: 93, baseType: !49)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5338, file: !5339, line: 9, baseType: !49, size: 64, offset: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5334, file: !12, line: 44, baseType: !5345, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5347, line: 7, size: 64, elements: !5348)
!5347 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5348 = !{!5349, !5351}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5346, file: !5347, line: 8, baseType: !5350, size: 32)
!5350 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5347, line: 5, baseType: !905)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5346, file: !5347, line: 9, baseType: !905, size: 32, offset: 32)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5329, file: !12, line: 46, baseType: !432, size: 64, offset: 128)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5316, file: !12, line: 55, baseType: !5354, size: 256)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5316, file: !12, line: 49, size: 256, elements: !5355)
!5355 = !{!5356, !5364, !5365, !5366, !5367}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5354, file: !12, line: 50, baseType: !5357, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5359, line: 36, size: 64, elements: !5360)
!5359 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5360 = !{!5361, !5362, !5363}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5358, file: !5359, line: 37, baseType: !28, size: 32)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5358, file: !5359, line: 38, baseType: !941, size: 16, offset: 32)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5358, file: !5359, line: 39, baseType: !941, size: 16, offset: 48)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5354, file: !12, line: 51, baseType: !28, size: 32, offset: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5354, file: !12, line: 52, baseType: !28, size: 32, offset: 96)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5354, file: !12, line: 53, baseType: !45, size: 64, offset: 128)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5354, file: !12, line: 54, baseType: !45, size: 64, offset: 192)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !364, file: !365, line: 973, baseType: !5369, size: 32, offset: 10688)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !31, line: 27, baseType: !5370)
!5370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !43, line: 28, baseType: !28)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !364, file: !365, line: 974, baseType: !5369, size: 32, offset: 10720)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !364, file: !365, line: 978, baseType: !45, size: 64, offset: 10752)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !364, file: !365, line: 987, baseType: !363, size: 64, offset: 10816)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !364, file: !365, line: 990, baseType: !363, size: 64, offset: 10880)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !364, file: !365, line: 995, baseType: !103, size: 128, offset: 10944)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !364, file: !365, line: 996, baseType: !103, size: 128, offset: 11072)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !364, file: !365, line: 997, baseType: !363, size: 64, offset: 11200)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !364, file: !365, line: 1005, baseType: !103, size: 128, offset: 11264)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !364, file: !365, line: 1006, baseType: !103, size: 128, offset: 11392)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !364, file: !365, line: 1009, baseType: !777, size: 64, offset: 11520)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !364, file: !365, line: 1010, baseType: !5382, size: 512, offset: 11584)
!5382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 512, elements: !794)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !364, file: !365, line: 1011, baseType: !103, size: 128, offset: 12096)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !364, file: !365, line: 1012, baseType: !103, size: 128, offset: 12224)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !364, file: !365, line: 1014, baseType: !1058, size: 64, offset: 12352)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !364, file: !365, line: 1017, baseType: !3019, size: 64, offset: 12416)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !364, file: !365, line: 1020, baseType: !3019, size: 64, offset: 12480)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !364, file: !365, line: 1023, baseType: !26, size: 64, offset: 12544)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !364, file: !365, line: 1025, baseType: !432, size: 64, offset: 12608)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !364, file: !365, line: 1026, baseType: !432, size: 64, offset: 12672)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !364, file: !365, line: 1031, baseType: !432, size: 64, offset: 12736)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !364, file: !365, line: 1032, baseType: !4114, size: 192, offset: 12800)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !364, file: !365, line: 1041, baseType: !45, size: 64, offset: 12992)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !364, file: !365, line: 1042, baseType: !45, size: 64, offset: 13056)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !364, file: !365, line: 1045, baseType: !432, size: 64, offset: 13120)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !364, file: !365, line: 1048, baseType: !432, size: 64, offset: 13184)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !364, file: !365, line: 1051, baseType: !45, size: 64, offset: 13248)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !364, file: !365, line: 1052, baseType: !45, size: 64, offset: 13312)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !364, file: !365, line: 1055, baseType: !5400, size: 640, offset: 13376)
!5400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5401, line: 132, size: 640, elements: !5402)
!5401 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5402 = !{!5403, !5409, !5410}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5400, file: !5401, line: 133, baseType: !5404, size: 576)
!5404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5405, size: 576, elements: !773)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5401, line: 117, size: 192, elements: !5406)
!5406 = !{!5407, !5408}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5405, file: !5401, line: 118, baseType: !432, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5405, file: !5401, line: 119, baseType: !561, size: 128, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5400, file: !5401, line: 134, baseType: !7, size: 32, offset: 576)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5400, file: !5401, line: 135, baseType: !7, size: 32, offset: 608)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !364, file: !365, line: 1058, baseType: !5412, size: 448, offset: 14016)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5401, line: 144, size: 448, elements: !5413)
!5413 = !{!5414, !5415, !5416}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5412, file: !5401, line: 145, baseType: !717, size: 128, align: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5412, file: !5401, line: 146, baseType: !737, size: 256, offset: 128)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5412, file: !5401, line: 147, baseType: !7, size: 32, offset: 384)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !364, file: !365, line: 1064, baseType: !1131, size: 64, offset: 14464)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !364, file: !365, line: 1067, baseType: !1131, size: 64, offset: 14528)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !364, file: !365, line: 1070, baseType: !1131, size: 64, offset: 14592)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !364, file: !365, line: 1074, baseType: !897, size: 64, offset: 14656)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !364, file: !365, line: 1084, baseType: !5422, size: 128, offset: 14720)
!5422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !4822)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !364, file: !365, line: 1086, baseType: !5424, size: 64, offset: 14848)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !365, line: 55, flags: DIFlagFwdDecl)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !364, file: !365, line: 1089, baseType: !5427, size: 64, offset: 14912)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5428, line: 12, size: 64, elements: !5429)
!5428 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5429 = !{!5430}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5427, file: !5428, line: 13, baseType: !5431, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5428, line: 8, flags: DIFlagFwdDecl)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !364, file: !365, line: 1090, baseType: !5434, size: 128, offset: 14976)
!5434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5435, line: 13, size: 128, elements: !5436)
!5435 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5436 = !{!5437}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5434, file: !5435, line: 14, baseType: !103, size: 128)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !364, file: !365, line: 1097, baseType: !5439, size: 64, offset: 15104)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !365, line: 50, flags: DIFlagFwdDecl)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !364, file: !365, line: 1100, baseType: !5442, size: 64, offset: 15168)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !365, line: 1100, flags: DIFlagFwdDecl)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !364, file: !365, line: 1103, baseType: !5445, size: 64, offset: 15232)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !365, line: 53, flags: DIFlagFwdDecl)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !364, file: !365, line: 1107, baseType: !5448, size: 64, offset: 15296)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5450, line: 31, size: 576, elements: !5451)
!5450 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5451 = !{!5452, !5453, !5456, !5459, !5462, !5463, !5464, !5467, !5468}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5449, file: !5450, line: 32, baseType: !380, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5449, file: !5450, line: 33, baseType: !5454, size: 64, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5450, line: 9, flags: DIFlagFwdDecl)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5449, file: !5450, line: 34, baseType: !5457, size: 64, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5450, line: 10, flags: DIFlagFwdDecl)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5449, file: !5450, line: 35, baseType: !5460, size: 64, offset: 192)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5450, line: 8, flags: DIFlagFwdDecl)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5449, file: !5450, line: 36, baseType: !805, size: 64, offset: 256)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5449, file: !5450, line: 37, baseType: !1539, size: 64, offset: 320)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5449, file: !5450, line: 38, baseType: !5465, size: 64, offset: 384)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5450, line: 38, flags: DIFlagFwdDecl)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5449, file: !5450, line: 39, baseType: !5465, size: 64, offset: 448)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5449, file: !5450, line: 40, baseType: !5469, size: 64, offset: 512)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5471, line: 771, size: 384, elements: !5472)
!5471 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5472 = !{!5473, !5474, !5475, !5476}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5470, file: !5471, line: 772, baseType: !881, size: 192)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5470, file: !5471, line: 773, baseType: !835, size: 64, offset: 192)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5470, file: !5471, line: 774, baseType: !1103, size: 64, offset: 256)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5470, file: !5471, line: 775, baseType: !4184, size: 64, offset: 320)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !364, file: !365, line: 1110, baseType: !5478, size: 64, offset: 15360)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5480, line: 93, size: 8768, elements: !5481)
!5480 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5481 = !{!5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5530, !5539, !5540, !5542, !5543, !5544, !5547, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5585, !5586, !5593, !5603, !5665, !5666, !5669, !5670, !5671, !5672, !5673, !5674}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5479, file: !5480, line: 94, baseType: !380, size: 32)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5479, file: !5480, line: 95, baseType: !55, size: 32, offset: 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5479, file: !5480, line: 96, baseType: !28, size: 32, offset: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5479, file: !5480, line: 97, baseType: !28, size: 32, offset: 96)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5479, file: !5480, line: 98, baseType: !103, size: 128, offset: 128)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5479, file: !5480, line: 100, baseType: !60, size: 192, offset: 256)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5479, file: !5480, line: 103, baseType: !363, size: 64, offset: 448)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5479, file: !5480, line: 106, baseType: !5490, size: 192, offset: 512)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5491, line: 32, size: 192, elements: !5492)
!5491 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5492 = !{!5493, !5494}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5490, file: !5491, line: 33, baseType: !103, size: 128)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5490, file: !5491, line: 34, baseType: !5495, size: 64, offset: 128)
!5495 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5496, line: 25, baseType: !5497)
!5496 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5496, line: 23, size: 64, elements: !5498)
!5498 = !{!5499}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5497, file: !5496, line: 24, baseType: !632, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5479, file: !5480, line: 109, baseType: !785, size: 64, offset: 704)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5479, file: !5480, line: 112, baseType: !28, size: 32, offset: 768)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5479, file: !5480, line: 114, baseType: !28, size: 32, offset: 800)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5479, file: !5480, line: 115, baseType: !363, size: 64, offset: 832)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5479, file: !5480, line: 118, baseType: !28, size: 32, offset: 896)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5479, file: !5480, line: 119, baseType: !7, size: 32, offset: 928)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5479, file: !5480, line: 121, baseType: !5507, size: 64, offset: 960)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5480, line: 80, size: 448, elements: !5509)
!5509 = !{!5510, !5511, !5517}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5508, file: !5480, line: 81, baseType: !55, size: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5508, file: !5480, line: 82, baseType: !5512, size: 128, offset: 64)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5480, line: 75, size: 128, elements: !5513)
!5513 = !{!5514, !5515}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5512, file: !5480, line: 76, baseType: !363, size: 64)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5512, file: !5480, line: 77, baseType: !5516, size: 64, offset: 64)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5508, file: !5480, line: 83, baseType: !1059, size: 256, offset: 192)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5479, file: !5480, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5479, file: !5480, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5479, file: !5480, line: 138, baseType: !7, size: 32, offset: 1056)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5479, file: !5480, line: 139, baseType: !103, size: 128, offset: 1088)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5479, file: !5480, line: 142, baseType: !499, size: 512, offset: 1216)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5479, file: !5480, line: 143, baseType: !507, size: 64, offset: 1728)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5479, file: !5480, line: 150, baseType: !5525, size: 256, offset: 1792)
!5525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5526, size: 256, elements: !3009)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5480, line: 38, size: 128, elements: !5527)
!5527 = !{!5528, !5529}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5526, file: !5480, line: 39, baseType: !432, size: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5526, file: !5480, line: 40, baseType: !432, size: 64, offset: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5479, file: !5480, line: 156, baseType: !5531, size: 192, offset: 2048)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5480, line: 66, size: 192, elements: !5532)
!5532 = !{!5533}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5531, file: !5480, line: 67, baseType: !5534, size: 192)
!5534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5480, line: 47, size: 192, elements: !5535)
!5535 = !{!5536, !5537, !5538}
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5534, file: !5480, line: 48, baseType: !732, size: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5534, file: !5480, line: 49, baseType: !732, size: 64, offset: 64)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5534, file: !5480, line: 50, baseType: !732, size: 64, offset: 128)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5479, file: !5480, line: 160, baseType: !5400, size: 640, offset: 2240)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5479, file: !5480, line: 163, baseType: !5541, size: 256, offset: 2880)
!5541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 256, elements: !794)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5479, file: !5480, line: 169, baseType: !777, size: 64, offset: 3136)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5479, file: !5480, line: 172, baseType: !28, size: 32, offset: 3200)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5479, file: !5480, line: 174, baseType: !5545, size: 64, offset: 3264)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5480, line: 174, flags: DIFlagFwdDecl)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5479, file: !5480, line: 185, baseType: !5548, size: 64, offset: 3328)
!5548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !551, line: 860, baseType: !5549)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 853, size: 64, elements: !5550)
!5550 = !{!5551, !5552}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5549, file: !551, line: 858, baseType: !1233, size: 32)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5549, file: !551, line: 859, baseType: !65, size: 32, offset: 32)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5479, file: !5480, line: 186, baseType: !432, size: 64, offset: 3392)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5479, file: !5480, line: 186, baseType: !432, size: 64, offset: 3456)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5479, file: !5480, line: 186, baseType: !432, size: 64, offset: 3520)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5479, file: !5480, line: 186, baseType: !432, size: 64, offset: 3584)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5479, file: !5480, line: 187, baseType: !432, size: 64, offset: 3648)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5479, file: !5480, line: 188, baseType: !432, size: 64, offset: 3712)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5479, file: !5480, line: 189, baseType: !4114, size: 192, offset: 3776)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5479, file: !5480, line: 190, baseType: !45, size: 64, offset: 3968)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5479, file: !5480, line: 190, baseType: !45, size: 64, offset: 4032)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5479, file: !5480, line: 190, baseType: !45, size: 64, offset: 4096)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5479, file: !5480, line: 190, baseType: !45, size: 64, offset: 4160)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5479, file: !5480, line: 191, baseType: !45, size: 64, offset: 4224)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5479, file: !5480, line: 191, baseType: !45, size: 64, offset: 4288)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5479, file: !5480, line: 191, baseType: !45, size: 64, offset: 4352)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5479, file: !5480, line: 191, baseType: !45, size: 64, offset: 4416)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5479, file: !5480, line: 192, baseType: !45, size: 64, offset: 4480)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5479, file: !5480, line: 192, baseType: !45, size: 64, offset: 4544)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5479, file: !5480, line: 192, baseType: !45, size: 64, offset: 4608)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5479, file: !5480, line: 192, baseType: !45, size: 64, offset: 4672)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5479, file: !5480, line: 193, baseType: !45, size: 64, offset: 4736)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5479, file: !5480, line: 193, baseType: !45, size: 64, offset: 4800)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5479, file: !5480, line: 194, baseType: !5575, size: 448, offset: 4864)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5576, line: 12, size: 448, elements: !5577)
!5576 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5577 = !{!5578, !5579, !5580, !5581, !5582, !5583, !5584}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5575, file: !5576, line: 15, baseType: !432, size: 64)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5575, file: !5576, line: 17, baseType: !432, size: 64, offset: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5575, file: !5576, line: 19, baseType: !432, size: 64, offset: 128)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5575, file: !5576, line: 21, baseType: !432, size: 64, offset: 192)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5575, file: !5576, line: 29, baseType: !432, size: 64, offset: 256)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5575, file: !5576, line: 35, baseType: !432, size: 64, offset: 320)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5575, file: !5576, line: 44, baseType: !432, size: 64, offset: 384)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5479, file: !5480, line: 202, baseType: !434, size: 64, offset: 5312)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5479, file: !5480, line: 213, baseType: !5587, size: 2048, offset: 5376)
!5587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 2048, elements: !4822)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5589, line: 43, size: 128, elements: !5590)
!5589 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5590 = !{!5591, !5592}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5588, file: !5589, line: 44, baseType: !44, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5588, file: !5589, line: 45, baseType: !44, size: 64, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5479, file: !5480, line: 216, baseType: !5594, size: 448, offset: 7424)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5480, line: 30, size: 448, elements: !5595)
!5595 = !{!5596, !5597, !5598, !5599, !5600, !5601, !5602}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5594, file: !5480, line: 31, baseType: !28, size: 32)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5594, file: !5480, line: 32, baseType: !361, size: 64, offset: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5594, file: !5480, line: 33, baseType: !45, size: 64, offset: 128)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5594, file: !5480, line: 34, baseType: !432, size: 64, offset: 192)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5594, file: !5480, line: 34, baseType: !432, size: 64, offset: 256)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5594, file: !5480, line: 35, baseType: !45, size: 64, offset: 320)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5594, file: !5480, line: 35, baseType: !45, size: 64, offset: 384)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5479, file: !5480, line: 219, baseType: !5604, size: 64, offset: 7872)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5606, line: 41, size: 3456, elements: !5607)
!5606 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5607 = !{!5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5605, file: !5606, line: 47, baseType: !100, size: 16)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5605, file: !5606, line: 48, baseType: !375, size: 32, offset: 32)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5605, file: !5606, line: 54, baseType: !91, size: 8, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5605, file: !5606, line: 55, baseType: !91, size: 8, offset: 72)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5605, file: !5606, line: 73, baseType: !433, size: 64, align: 64, offset: 128)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5605, file: !5606, line: 74, baseType: !433, size: 64, offset: 192)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5605, file: !5606, line: 81, baseType: !433, size: 64, offset: 256)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5605, file: !5606, line: 82, baseType: !433, size: 64, offset: 320)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5605, file: !5606, line: 85, baseType: !433, size: 64, offset: 384)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5605, file: !5606, line: 86, baseType: !433, size: 64, offset: 448)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5605, file: !5606, line: 94, baseType: !433, size: 64, offset: 512)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5605, file: !5606, line: 102, baseType: !433, size: 64, offset: 576)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5605, file: !5606, line: 107, baseType: !4812, size: 256, offset: 640)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5605, file: !5606, line: 108, baseType: !91, size: 8, align: 64, offset: 896)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5605, file: !5606, line: 110, baseType: !5623, size: 24, offset: 904)
!5623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !773)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5605, file: !5606, line: 111, baseType: !375, size: 32, align: 64, offset: 960)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5605, file: !5606, line: 113, baseType: !375, size: 32, offset: 992)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5605, file: !5606, line: 114, baseType: !375, size: 32, offset: 1024)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5605, file: !5606, line: 115, baseType: !375, size: 32, offset: 1056)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5605, file: !5606, line: 117, baseType: !375, size: 32, offset: 1088)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5605, file: !5606, line: 118, baseType: !433, size: 64, align: 64, offset: 1152)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5605, file: !5606, line: 120, baseType: !433, size: 64, offset: 1216)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5605, file: !5606, line: 121, baseType: !433, size: 64, offset: 1280)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5605, file: !5606, line: 122, baseType: !433, size: 64, offset: 1344)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5605, file: !5606, line: 123, baseType: !433, size: 64, offset: 1408)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5605, file: !5606, line: 133, baseType: !433, size: 64, offset: 1472)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5605, file: !5606, line: 137, baseType: !433, size: 64, offset: 1536)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5605, file: !5606, line: 142, baseType: !433, size: 64, offset: 1600)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5605, file: !5606, line: 143, baseType: !433, size: 64, offset: 1664)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5605, file: !5606, line: 146, baseType: !433, size: 64, offset: 1728)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5605, file: !5606, line: 147, baseType: !433, size: 64, offset: 1792)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5605, file: !5606, line: 148, baseType: !433, size: 64, offset: 1856)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5605, file: !5606, line: 149, baseType: !433, size: 64, offset: 1920)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5605, file: !5606, line: 154, baseType: !433, size: 64, offset: 1984)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5605, file: !5606, line: 155, baseType: !433, size: 64, offset: 2048)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5605, file: !5606, line: 156, baseType: !433, size: 64, offset: 2112)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5605, file: !5606, line: 158, baseType: !433, size: 64, offset: 2176)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5605, file: !5606, line: 159, baseType: !433, size: 64, offset: 2240)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5605, file: !5606, line: 162, baseType: !433, size: 64, offset: 2304)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5605, file: !5606, line: 163, baseType: !433, size: 64, offset: 2368)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5605, file: !5606, line: 164, baseType: !433, size: 64, offset: 2432)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5605, file: !5606, line: 167, baseType: !433, size: 64, offset: 2496)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5605, file: !5606, line: 168, baseType: !433, size: 64, offset: 2560)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5605, file: !5606, line: 171, baseType: !433, size: 64, offset: 2624)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5605, file: !5606, line: 172, baseType: !433, size: 64, offset: 2688)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5605, file: !5606, line: 175, baseType: !433, size: 64, offset: 2752)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5605, file: !5606, line: 178, baseType: !433, size: 64, offset: 2816)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5605, file: !5606, line: 179, baseType: !433, size: 64, offset: 2880)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5605, file: !5606, line: 182, baseType: !375, size: 32, offset: 2944)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5605, file: !5606, line: 186, baseType: !433, size: 64, align: 64, offset: 3008)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5605, file: !5606, line: 194, baseType: !433, size: 64, offset: 3072)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5605, file: !5606, line: 195, baseType: !433, size: 64, offset: 3136)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5605, file: !5606, line: 199, baseType: !433, size: 64, offset: 3200)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5605, file: !5606, line: 200, baseType: !433, size: 64, offset: 3264)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5605, file: !5606, line: 203, baseType: !433, size: 64, offset: 3328)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5605, file: !5606, line: 204, baseType: !433, size: 64, offset: 3392)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5479, file: !5480, line: 222, baseType: !7, size: 32, offset: 7936)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5479, file: !5480, line: 223, baseType: !5667, size: 64, offset: 8000)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5480, line: 223, flags: DIFlagFwdDecl)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5479, file: !5480, line: 230, baseType: !893, size: 8, offset: 8064)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5479, file: !5480, line: 231, baseType: !941, size: 16, offset: 8080)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5479, file: !5480, line: 232, baseType: !941, size: 16, offset: 8096)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5479, file: !5480, line: 234, baseType: !681, size: 64, offset: 8128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5479, file: !5480, line: 237, baseType: !737, size: 256, offset: 8192)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5479, file: !5480, line: 243, baseType: !913, size: 320, offset: 8448)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !364, file: !365, line: 1111, baseType: !5676, size: 64, offset: 15424)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5480, line: 20, size: 16640, elements: !5678)
!5678 = !{!5679, !5680, !5681, !5682}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5677, file: !5480, line: 21, baseType: !65, size: 32)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5677, file: !5480, line: 22, baseType: !380, size: 32, offset: 32)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5677, file: !5480, line: 23, baseType: !60, size: 192, offset: 64)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5677, file: !5480, line: 24, baseType: !5683, size: 16384, offset: 256)
!5683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5684, size: 16384, elements: !1611)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5491, line: 51, size: 256, elements: !5685)
!5685 = !{!5686}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5684, file: !5491, line: 52, baseType: !5687, size: 256)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5491, line: 37, size: 256, elements: !5688)
!5688 = !{!5689, !5696, !5697, !5701}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5687, file: !5491, line: 39, baseType: !5690, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5691, line: 83, baseType: !5692)
!5691 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5691, line: 82, baseType: !5694)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{null, !28}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5687, file: !5491, line: 40, baseType: !45, size: 64, offset: 64)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5687, file: !5491, line: 46, baseType: !5698, size: 64, offset: 128)
!5698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5691, line: 86, baseType: !5699)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5691, line: 85, baseType: !3284)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5687, file: !5491, line: 48, baseType: !5495, size: 64, offset: 192)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !364, file: !365, line: 1112, baseType: !5495, size: 64, offset: 15488)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !364, file: !365, line: 1113, baseType: !5495, size: 64, offset: 15552)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !364, file: !365, line: 1115, baseType: !5495, size: 64, offset: 15616)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !364, file: !365, line: 1116, baseType: !5490, size: 192, offset: 15680)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !364, file: !365, line: 1117, baseType: !45, size: 64, offset: 15872)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !364, file: !365, line: 1118, baseType: !41, size: 64, offset: 15936)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !364, file: !365, line: 1119, baseType: !7, size: 32, offset: 16000)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !364, file: !365, line: 1121, baseType: !720, size: 64, offset: 16064)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !364, file: !365, line: 1125, baseType: !5711, size: 64, offset: 16128)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !365, line: 43, flags: DIFlagFwdDecl)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !364, file: !365, line: 1127, baseType: !866, size: 32, offset: 16192)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !364, file: !365, line: 1128, baseType: !7, size: 32, offset: 16224)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !364, file: !365, line: 1130, baseType: !5716, size: 128, offset: 16256)
!5716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5717, line: 37, size: 128, elements: !5718)
!5717 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5718 = !{!5719, !5720, !5721}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5716, file: !5717, line: 38, baseType: !28, size: 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5716, file: !5717, line: 39, baseType: !55, size: 32, offset: 32)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5716, file: !5717, line: 40, baseType: !5722, size: 64, offset: 64)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5717, line: 24, flags: DIFlagFwdDecl)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !364, file: !365, line: 1131, baseType: !5725, size: 256, offset: 16384)
!5725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5726, line: 12, size: 256, elements: !5727)
!5726 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5727 = !{!5728, !5729, !5730, !5731}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5725, file: !5726, line: 13, baseType: !981, size: 64)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5725, file: !5726, line: 14, baseType: !45, size: 64, offset: 64)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5725, file: !5726, line: 15, baseType: !45, size: 64, offset: 128)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5725, file: !5726, line: 16, baseType: !893, size: 8, offset: 192)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !364, file: !365, line: 1134, baseType: !432, size: 64, offset: 16640)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !364, file: !365, line: 1135, baseType: !432, size: 64, offset: 16704)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !364, file: !365, line: 1138, baseType: !65, size: 32, offset: 16768)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !364, file: !365, line: 1141, baseType: !524, size: 32, offset: 16800)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !364, file: !365, line: 1143, baseType: !5737, size: 64, offset: 16832)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !365, line: 735, size: 64, elements: !5738)
!5738 = !{!5739}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5737, file: !365, line: 736, baseType: !5740, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !364, file: !365, line: 1147, baseType: !564, size: 128, offset: 16896)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !364, file: !365, line: 1149, baseType: !363, size: 64, offset: 17024)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !364, file: !365, line: 1151, baseType: !5744, size: 64, offset: 17088)
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !365, line: 1151, flags: DIFlagFwdDecl)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !364, file: !365, line: 1188, baseType: !26, size: 64, offset: 17152)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !364, file: !365, line: 1191, baseType: !5748, size: 64, offset: 17216)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !365, line: 44, flags: DIFlagFwdDecl)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !364, file: !365, line: 1194, baseType: !5751, size: 64, offset: 17280)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !365, line: 45, flags: DIFlagFwdDecl)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !364, file: !365, line: 1197, baseType: !5754, size: 64, offset: 17344)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2209, line: 155, size: 64, elements: !5756)
!5756 = !{!5757}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5755, file: !2209, line: 157, baseType: !45, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !364, file: !365, line: 1199, baseType: !5759, size: 64, offset: 17408)
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5760, size: 64)
!5760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2259, line: 99, size: 128, elements: !5761)
!5761 = !{!5762, !5763, !5764}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5760, file: !2259, line: 100, baseType: !730, size: 64)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5760, file: !2259, line: 101, baseType: !55, size: 32, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5760, file: !2259, line: 103, baseType: !32, size: 16, offset: 96)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !364, file: !365, line: 1202, baseType: !5766, size: 64, offset: 17472)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !365, line: 48, flags: DIFlagFwdDecl)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !364, file: !365, line: 1205, baseType: !45, size: 64, offset: 17536)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !364, file: !365, line: 1206, baseType: !5770, size: 64, offset: 17600)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5491, line: 14, baseType: !5772)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5491, line: 12, size: 384, elements: !5773)
!5773 = !{!5774}
!5774 = !DIDerivedType(tag: DW_TAG_member, scope: !5772, file: !5491, line: 13, baseType: !5775, size: 384)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5772, file: !5491, line: 13, size: 384, elements: !5776)
!5776 = !{!5777, !5778, !5779, !5780}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5775, file: !5491, line: 13, baseType: !28, size: 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5775, file: !5491, line: 13, baseType: !28, size: 32, offset: 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5775, file: !5491, line: 13, baseType: !28, size: 32, offset: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5775, file: !5491, line: 13, baseType: !5781, size: 256, offset: 128)
!5781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5782, line: 37, size: 256, elements: !5783)
!5782 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5783 = !{!5784, !5789, !5802, !5808, !5817, !5844, !5849}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5781, file: !5782, line: 42, baseType: !5785, size: 64)
!5785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 39, size: 64, elements: !5786)
!5786 = !{!5787, !5788}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5785, file: !5782, line: 40, baseType: !5370, size: 32)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5785, file: !5782, line: 41, baseType: !872, size: 32, offset: 32)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5781, file: !5782, line: 50, baseType: !5790, size: 192)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 45, size: 192, elements: !5791)
!5791 = !{!5792, !5794, !5795, !5801}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5790, file: !5782, line: 46, baseType: !5793, size: 32)
!5793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !43, line: 95, baseType: !28)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5790, file: !5782, line: 47, baseType: !28, size: 32, offset: 32)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5790, file: !5782, line: 48, baseType: !5796, size: 64, offset: 64)
!5796 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5782, line: 11, baseType: !5797)
!5797 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5782, line: 8, size: 64, elements: !5798)
!5798 = !{!5799, !5800}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5797, file: !5782, line: 9, baseType: !28, size: 32)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5797, file: !5782, line: 10, baseType: !26, size: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5790, file: !5782, line: 49, baseType: !28, size: 32, offset: 128)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5781, file: !5782, line: 57, baseType: !5803, size: 128)
!5803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 53, size: 128, elements: !5804)
!5804 = !{!5805, !5806, !5807}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5803, file: !5782, line: 54, baseType: !5370, size: 32)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5803, file: !5782, line: 55, baseType: !872, size: 32, offset: 32)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5803, file: !5782, line: 56, baseType: !5796, size: 64, offset: 64)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5781, file: !5782, line: 66, baseType: !5809, size: 256)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 60, size: 256, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5816}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5809, file: !5782, line: 61, baseType: !5370, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5809, file: !5782, line: 62, baseType: !872, size: 32, offset: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5809, file: !5782, line: 63, baseType: !28, size: 32, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5809, file: !5782, line: 64, baseType: !5815, size: 64, offset: 128)
!5815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !43, line: 94, baseType: !1416)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5809, file: !5782, line: 65, baseType: !5815, size: 64, offset: 192)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5781, file: !5782, line: 105, baseType: !5818, size: 256)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 69, size: 256, elements: !5819)
!5819 = !{!5820, !5821}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5818, file: !5782, line: 70, baseType: !26, size: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, scope: !5818, file: !5782, line: 79, baseType: !5822, size: 192, offset: 64)
!5822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5818, file: !5782, line: 79, size: 192, elements: !5823)
!5823 = !{!5824, !5825, !5826, !5833, !5838}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5822, file: !5782, line: 81, baseType: !28, size: 32)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5822, file: !5782, line: 86, baseType: !941, size: 16)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5822, file: !5782, line: 92, baseType: !5827, size: 192)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5822, file: !5782, line: 88, size: 192, elements: !5828)
!5828 = !{!5829, !5831, !5832}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5827, file: !5782, line: 89, baseType: !5830, size: 64)
!5830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !543)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5827, file: !5782, line: 90, baseType: !26, size: 64, offset: 64)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5827, file: !5782, line: 91, baseType: !26, size: 64, offset: 128)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5822, file: !5782, line: 97, baseType: !5834, size: 96)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5822, file: !5782, line: 94, size: 96, elements: !5835)
!5835 = !{!5836, !5837}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5834, file: !5782, line: 95, baseType: !5830, size: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5834, file: !5782, line: 96, baseType: !375, size: 32, offset: 64)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5822, file: !5782, line: 103, baseType: !5839, size: 128)
!5839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5822, file: !5782, line: 99, size: 128, elements: !5840)
!5840 = !{!5841, !5842, !5843}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5839, file: !5782, line: 100, baseType: !45, size: 64)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5839, file: !5782, line: 101, baseType: !375, size: 32, offset: 64)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5839, file: !5782, line: 102, baseType: !375, size: 32, offset: 96)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5781, file: !5782, line: 111, baseType: !5845, size: 128)
!5845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 108, size: 128, elements: !5846)
!5846 = !{!5847, !5848}
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5845, file: !5782, line: 109, baseType: !361, size: 64)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5845, file: !5782, line: 110, baseType: !28, size: 32, offset: 64)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5781, file: !5782, line: 118, baseType: !5850, size: 128)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5781, file: !5782, line: 114, size: 128, elements: !5851)
!5851 = !{!5852, !5853, !5854}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5850, file: !5782, line: 115, baseType: !26, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5850, file: !5782, line: 116, baseType: !28, size: 32, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5850, file: !5782, line: 117, baseType: !7, size: 32, offset: 96)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !364, file: !365, line: 1208, baseType: !5575, size: 448, offset: 17664)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !364, file: !365, line: 1215, baseType: !432, size: 64, offset: 18112)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !364, file: !365, line: 1217, baseType: !432, size: 64, offset: 18176)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !364, file: !365, line: 1219, baseType: !432, size: 64, offset: 18240)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !364, file: !365, line: 1223, baseType: !1903, size: 64, offset: 18304)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !364, file: !365, line: 1225, baseType: !1233, size: 32, offset: 18368)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !364, file: !365, line: 1226, baseType: !28, size: 32, offset: 18400)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !364, file: !365, line: 1227, baseType: !28, size: 32, offset: 18432)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !364, file: !365, line: 1231, baseType: !4184, size: 64, offset: 18496)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !364, file: !365, line: 1233, baseType: !103, size: 128, offset: 18560)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !364, file: !365, line: 1240, baseType: !5866, size: 64, offset: 18688)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !365, line: 62, flags: DIFlagFwdDecl)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !364, file: !365, line: 1242, baseType: !5869, size: 64, offset: 18752)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5870, size: 64)
!5870 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !365, line: 1242, flags: DIFlagFwdDecl)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !364, file: !365, line: 1244, baseType: !103, size: 128, offset: 18816)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !364, file: !365, line: 1245, baseType: !5873, size: 64, offset: 18944)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !365, line: 51, flags: DIFlagFwdDecl)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !364, file: !365, line: 1246, baseType: !737, size: 256, offset: 19008)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !364, file: !365, line: 1247, baseType: !7, size: 32, offset: 19264)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !364, file: !365, line: 1250, baseType: !3434, size: 64, offset: 19328)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !364, file: !365, line: 1251, baseType: !737, size: 256, offset: 19392)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !364, file: !365, line: 1252, baseType: !103, size: 128, offset: 19648)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !364, file: !365, line: 1259, baseType: !1895, size: 64, offset: 19776)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !364, file: !365, line: 1260, baseType: !941, size: 16, offset: 19840)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !364, file: !365, line: 1261, baseType: !941, size: 16, offset: 19856)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !364, file: !365, line: 1314, baseType: !5884, size: 64, offset: 19904)
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5885, size: 64)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5886, line: 62, size: 256, align: 256, elements: !5887)
!5886 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5887 = !{!5888, !5889, !5890, !5891, !5892, !5893, !5894}
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5885, file: !5886, line: 75, baseType: !375, size: 32)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5885, file: !5886, line: 90, baseType: !375, size: 32, offset: 32)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5885, file: !5886, line: 112, baseType: !433, size: 64, offset: 64)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5885, file: !5886, line: 132, baseType: !375, size: 32, offset: 128)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5885, file: !5886, line: 140, baseType: !375, size: 32, offset: 160)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5885, file: !5886, line: 149, baseType: !375, size: 32, offset: 192)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5885, file: !5886, line: 154, baseType: !5895, offset: 224)
!5895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, elements: !1124)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !364, file: !365, line: 1315, baseType: !374, size: 32, offset: 19968)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !364, file: !365, line: 1316, baseType: !374, size: 32, offset: 20000)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !364, file: !365, line: 1321, baseType: !45, size: 64, offset: 20032)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !364, file: !365, line: 1325, baseType: !28, size: 32, offset: 20096)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !364, file: !365, line: 1326, baseType: !28, size: 32, offset: 20128)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !364, file: !365, line: 1327, baseType: !28, size: 32, offset: 20160)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !364, file: !365, line: 1328, baseType: !28, size: 32, offset: 20192)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !364, file: !365, line: 1329, baseType: !717, size: 128, align: 64, offset: 20224)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !364, file: !365, line: 1332, baseType: !5905, size: 128, offset: 20352)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5906, line: 51, size: 128, elements: !5907)
!5906 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5907 = !{!5908, !5913, !5914}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5905, file: !5906, line: 60, baseType: !5909, size: 64)
!5909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5910, line: 7, size: 64, elements: !5911)
!5910 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5911 = !{!5912}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5909, file: !5910, line: 12, baseType: !629, size: 64)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5905, file: !5906, line: 63, baseType: !893, size: 8, offset: 64)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5905, file: !5906, line: 70, baseType: !893, size: 8, offset: 72)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !364, file: !365, line: 1335, baseType: !5059, size: 64, offset: 20480)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !364, file: !365, line: 1337, baseType: !5917, size: 128, offset: 20544)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5906, line: 39, size: 128, elements: !5918)
!5918 = !{!5919, !5920, !5921}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5917, file: !5906, line: 40, baseType: !1692, size: 64)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5917, file: !5906, line: 42, baseType: !375, size: 32, offset: 64)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5917, file: !5906, line: 43, baseType: !375, size: 32, offset: 96)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !364, file: !365, line: 1340, baseType: !5923, size: 64, offset: 20672)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !365, line: 69, flags: DIFlagFwdDecl)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !364, file: !365, line: 1351, baseType: !28, size: 32, offset: 20736)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !364, file: !365, line: 1352, baseType: !28, size: 32, offset: 20768)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !364, file: !365, line: 1354, baseType: !45, size: 64, offset: 20800)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !364, file: !365, line: 1364, baseType: !432, size: 64, offset: 20864)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !364, file: !365, line: 1365, baseType: !432, size: 64, offset: 20928)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !364, file: !365, line: 1412, baseType: !45, size: 64, offset: 20992)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !364, file: !365, line: 1453, baseType: !2254, size: 64, offset: 21056)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !364, file: !365, line: 1457, baseType: !5933, size: 64, offset: 21120)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !288, line: 61, size: 576, elements: !5935)
!5935 = !{!5936, !5937, !5956, !5959, !5960, !5993, !6003}
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5934, file: !288, line: 62, baseType: !287, size: 32)
!5937 = !DIDerivedType(tag: DW_TAG_member, scope: !5934, file: !288, line: 64, baseType: !5938, size: 192, offset: 64)
!5938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5934, file: !288, line: 64, size: 192, elements: !5939)
!5939 = !{!5940, !5951}
!5940 = !DIDerivedType(tag: DW_TAG_member, scope: !5938, file: !288, line: 65, baseType: !5941, size: 192)
!5941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5938, file: !288, line: 65, size: 192, elements: !5942)
!5942 = !{!5943, !5950}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5941, file: !288, line: 66, baseType: !5944, size: 128)
!5944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5945, line: 50, size: 128, elements: !5946)
!5945 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5946 = !{!5947, !5948, !5949}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5944, file: !5945, line: 52, baseType: !45, size: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5944, file: !5945, line: 54, baseType: !7, size: 32, offset: 64)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5944, file: !5945, line: 55, baseType: !7, size: 32, offset: 96)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5941, file: !288, line: 67, baseType: !45, size: 64, offset: 128)
!5951 = !DIDerivedType(tag: DW_TAG_member, scope: !5938, file: !288, line: 70, baseType: !5952, size: 192)
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5938, file: !288, line: 70, size: 192, elements: !5953)
!5953 = !{!5954, !5955}
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5952, file: !288, line: 71, baseType: !717, size: 128, align: 64)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5952, file: !288, line: 72, baseType: !45, size: 64, offset: 128)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5934, file: !288, line: 76, baseType: !5957, size: 64, offset: 256)
!5957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5958, size: 64)
!5958 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !288, line: 76, flags: DIFlagFwdDecl)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5934, file: !288, line: 77, baseType: !45, size: 64, offset: 320)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5934, file: !288, line: 79, baseType: !5961, size: 64, offset: 384)
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5945, line: 25, size: 256, elements: !5963)
!5963 = !{!5964, !5970, !5974}
!5964 = !DIDerivedType(tag: DW_TAG_member, scope: !5962, file: !5945, line: 26, baseType: !5965, size: 128)
!5965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5962, file: !5945, line: 26, size: 128, elements: !5966)
!5966 = !{!5967, !5969}
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5965, file: !5945, line: 27, baseType: !5968, size: 128)
!5968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !4822)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5965, file: !5945, line: 28, baseType: !5968, size: 128)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5962, file: !5945, line: 31, baseType: !5971, size: 64, offset: 128)
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5973)
!5973 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5945, line: 23, flags: DIFlagFwdDecl)
!5974 = !DIDerivedType(tag: DW_TAG_member, scope: !5962, file: !5945, line: 33, baseType: !5975, size: 64, offset: 192)
!5975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5962, file: !5945, line: 33, size: 64, elements: !5976)
!5976 = !{!5977, !5983, !5988}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5975, file: !5945, line: 38, baseType: !5978, size: 64)
!5978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5975, file: !5945, line: 34, size: 64, elements: !5979)
!5979 = !{!5980, !5981, !5982}
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5978, file: !5945, line: 35, baseType: !905, size: 32)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5978, file: !5945, line: 36, baseType: !89, size: 8, offset: 32)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5978, file: !5945, line: 37, baseType: !89, size: 8, offset: 40)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5975, file: !5945, line: 42, baseType: !5984, size: 16)
!5984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5975, file: !5945, line: 39, size: 16, elements: !5985)
!5985 = !{!5986, !5987}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5984, file: !5945, line: 40, baseType: !89, size: 8)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5984, file: !5945, line: 41, baseType: !89, size: 8, offset: 8)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5975, file: !5945, line: 46, baseType: !5989, size: 16)
!5989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5975, file: !5945, line: 43, size: 16, elements: !5990)
!5990 = !{!5991, !5992}
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5989, file: !5945, line: 44, baseType: !89, size: 8)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5989, file: !5945, line: 45, baseType: !89, size: 8, offset: 8)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5934, file: !288, line: 81, baseType: !5994, size: 64, offset: 448)
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5995, size: 64)
!5995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !288, line: 85, size: 384, elements: !5996)
!5996 = !{!5997, !5998, !5999, !6000, !6001, !6002}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5995, file: !288, line: 86, baseType: !5957, size: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5995, file: !288, line: 87, baseType: !45, size: 64, offset: 64)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5995, file: !288, line: 88, baseType: !45, size: 64, offset: 128)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5995, file: !288, line: 89, baseType: !45, size: 64, offset: 192)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5995, file: !288, line: 90, baseType: !893, size: 8, offset: 256)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5995, file: !288, line: 92, baseType: !5994, size: 64, offset: 320)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5934, file: !288, line: 82, baseType: !7, size: 32, offset: 512)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !364, file: !365, line: 1463, baseType: !6005, offset: 21184)
!6005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !365, line: 739, elements: !702)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !364, file: !365, line: 1470, baseType: !717, size: 128, align: 64, offset: 21184)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !364, file: !365, line: 1471, baseType: !380, size: 32, offset: 21312)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !364, file: !365, line: 1472, baseType: !28, size: 32, offset: 21344)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !364, file: !365, line: 1474, baseType: !363, size: 64, offset: 21376)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !364, file: !365, line: 1475, baseType: !2463, size: 320, offset: 21440)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !364, file: !365, line: 1478, baseType: !6012, size: 64, offset: 21760)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !365, line: 1478, flags: DIFlagFwdDecl)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !364, file: !365, line: 1482, baseType: !380, size: 32, offset: 21824)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !364, file: !365, line: 1489, baseType: !26, size: 64, offset: 21888)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !364, file: !365, line: 1504, baseType: !26, size: 64, offset: 21952)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !364, file: !365, line: 1505, baseType: !433, size: 64, offset: 22016)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !364, file: !365, line: 1506, baseType: !432, size: 64, offset: 22080)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !364, file: !365, line: 1507, baseType: !433, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !364, file: !365, line: 1508, baseType: !433, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !364, file: !365, line: 1509, baseType: !433, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !364, file: !365, line: 1510, baseType: !717, size: 128, align: 64, offset: 22208)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !364, file: !365, line: 1511, baseType: !28, size: 32, offset: 22336)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !364, file: !365, line: 1515, baseType: !6025, size: 64, offset: 22400)
!6025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !394, line: 56, size: 64, elements: !6026)
!6026 = !{!6027}
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6025, file: !394, line: 57, baseType: !397, size: 64)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !364, file: !365, line: 1518, baseType: !6025, size: 64, offset: 22464)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !364, file: !365, line: 1528, baseType: !717, size: 128, align: 64, offset: 22528)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !364, file: !365, line: 1552, baseType: !6031, size: 35328, offset: 23040)
!6031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !6032, line: 430, size: 35328, elements: !6033)
!6032 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!6033 = !{!6034, !6052, !6053, !6054, !6055, !6056, !6057, !6058, !6059, !6061, !6062, !6063, !6064, !6065, !6066, !6069, !6070, !6071, !6072}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !6031, file: !6032, line: 432, baseType: !6035, size: 192)
!6035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6036, size: 192, elements: !773)
!6036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !6037, line: 16, size: 64, elements: !6038)
!6037 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!6038 = !{!6039, !6040, !6041, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !6036, file: !6037, line: 17, baseType: !99, size: 16)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !6036, file: !6037, line: 18, baseType: !99, size: 16, offset: 16)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !6036, file: !6037, line: 19, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6036, file: !6037, line: 19, baseType: !99, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !6036, file: !6037, line: 19, baseType: !99, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !6036, file: !6037, line: 19, baseType: !99, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !6036, file: !6037, line: 19, baseType: !99, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !6036, file: !6037, line: 20, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !6036, file: !6037, line: 20, baseType: !99, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !6036, file: !6037, line: 20, baseType: !99, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6036, file: !6037, line: 20, baseType: !99, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !6036, file: !6037, line: 20, baseType: !99, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !6036, file: !6037, line: 20, baseType: !99, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !6031, file: !6032, line: 436, baseType: !45, size: 64, offset: 192)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !6031, file: !6032, line: 440, baseType: !32, size: 16, offset: 256)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !6031, file: !6032, line: 441, baseType: !32, size: 16, offset: 272)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !6031, file: !6032, line: 442, baseType: !32, size: 16, offset: 288)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !6031, file: !6032, line: 443, baseType: !32, size: 16, offset: 304)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !6031, file: !6032, line: 447, baseType: !45, size: 64, offset: 320)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !6031, file: !6032, line: 448, baseType: !45, size: 64, offset: 384)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !6031, file: !6032, line: 459, baseType: !6060, size: 256, offset: 448)
!6060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3395, size: 256, elements: !794)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !6031, file: !6032, line: 461, baseType: !45, size: 64, offset: 704)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !6031, file: !6032, line: 463, baseType: !45, size: 64, offset: 768)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !6031, file: !6032, line: 465, baseType: !45, size: 64, offset: 832)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !6031, file: !6032, line: 466, baseType: !45, size: 64, offset: 896)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !6031, file: !6032, line: 467, baseType: !45, size: 64, offset: 960)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !6031, file: !6032, line: 473, baseType: !6067, size: 64, offset: 1024)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !6032, line: 10, flags: DIFlagFwdDecl)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !6031, file: !6032, line: 480, baseType: !45, size: 64, offset: 1088)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !6031, file: !6032, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !6031, file: !6032, line: 491, baseType: !374, size: 32, offset: 1184)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !6031, file: !6032, line: 501, baseType: !6073, size: 33792, offset: 1536)
!6073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6074, line: 448, size: 33792, elements: !6075)
!6074 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6075 = !{!6076, !6077, !6078, !6186, !6187, !6193, !6194}
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6073, file: !6074, line: 461, baseType: !7, size: 32)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6073, file: !6074, line: 468, baseType: !45, size: 64, offset: 64)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6073, file: !6074, line: 476, baseType: !6079, size: 64, offset: 128)
!6079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6080, size: 64)
!6080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6074, line: 356, size: 33280, align: 512, elements: !6081)
!6081 = !{!6082, !6083, !6084, !6085, !6086, !6087, !6088, !6089, !6090, !6091}
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6080, file: !6074, line: 358, baseType: !7, size: 32)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6080, file: !6074, line: 361, baseType: !7, size: 32, offset: 32)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6080, file: !6074, line: 364, baseType: !432, size: 64, offset: 64)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6080, file: !6074, line: 367, baseType: !432, size: 64, offset: 128)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6080, file: !6074, line: 370, baseType: !432, size: 64, offset: 192)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6080, file: !6074, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6080, file: !6074, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6080, file: !6074, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6080, file: !6074, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6080, file: !6074, line: 397, baseType: !6092, size: 32768, offset: 512)
!6092 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6074, line: 348, size: 32768, elements: !6093)
!6093 = !{!6094, !6109, !6146, !6171, !6184}
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6092, file: !6074, line: 349, baseType: !6095, size: 896)
!6095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6074, line: 12, size: 896, elements: !6096)
!6096 = !{!6097, !6098, !6099, !6100, !6101, !6102, !6103, !6104, !6108}
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6095, file: !6074, line: 13, baseType: !374, size: 32)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6095, file: !6074, line: 14, baseType: !374, size: 32, offset: 32)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6095, file: !6074, line: 15, baseType: !374, size: 32, offset: 64)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6095, file: !6074, line: 16, baseType: !374, size: 32, offset: 96)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6095, file: !6074, line: 17, baseType: !374, size: 32, offset: 128)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6095, file: !6074, line: 18, baseType: !374, size: 32, offset: 160)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6095, file: !6074, line: 19, baseType: !374, size: 32, offset: 192)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6095, file: !6074, line: 22, baseType: !6105, size: 640, offset: 224)
!6105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 640, elements: !6106)
!6106 = !{!6107}
!6107 = !DISubrange(count: 20)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6095, file: !6074, line: 25, baseType: !374, size: 32, offset: 864)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6092, file: !6074, line: 350, baseType: !6110, size: 4096, align: 128)
!6110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6074, line: 34, size: 4096, align: 128, elements: !6111)
!6111 = !{!6112, !6113, !6114, !6115, !6116, !6131, !6132, !6133, !6135, !6137, !6141}
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6110, file: !6074, line: 35, baseType: !99, size: 16)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6110, file: !6074, line: 36, baseType: !99, size: 16, offset: 16)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6110, file: !6074, line: 37, baseType: !99, size: 16, offset: 32)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6110, file: !6074, line: 38, baseType: !99, size: 16, offset: 48)
!6116 = !DIDerivedType(tag: DW_TAG_member, scope: !6110, file: !6074, line: 39, baseType: !6117, size: 128, offset: 64)
!6117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6110, file: !6074, line: 39, size: 128, elements: !6118)
!6118 = !{!6119, !6124}
!6119 = !DIDerivedType(tag: DW_TAG_member, scope: !6117, file: !6074, line: 40, baseType: !6120, size: 128)
!6120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6117, file: !6074, line: 40, size: 128, elements: !6121)
!6121 = !{!6122, !6123}
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6120, file: !6074, line: 41, baseType: !432, size: 64)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6120, file: !6074, line: 42, baseType: !432, size: 64, offset: 64)
!6124 = !DIDerivedType(tag: DW_TAG_member, scope: !6117, file: !6074, line: 44, baseType: !6125, size: 128)
!6125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6117, file: !6074, line: 44, size: 128, elements: !6126)
!6126 = !{!6127, !6128, !6129, !6130}
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6125, file: !6074, line: 45, baseType: !374, size: 32)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6125, file: !6074, line: 46, baseType: !374, size: 32, offset: 32)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6125, file: !6074, line: 47, baseType: !374, size: 32, offset: 64)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6125, file: !6074, line: 48, baseType: !374, size: 32, offset: 96)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6110, file: !6074, line: 51, baseType: !374, size: 32, offset: 192)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6110, file: !6074, line: 52, baseType: !374, size: 32, offset: 224)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6110, file: !6074, line: 55, baseType: !6134, size: 1024, offset: 256)
!6134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1024, elements: !4813)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6110, file: !6074, line: 58, baseType: !6136, size: 2048, offset: 1280)
!6136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 2048, elements: !1611)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6110, file: !6074, line: 60, baseType: !6138, size: 384, offset: 3328)
!6138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 384, elements: !6139)
!6139 = !{!6140}
!6140 = !DISubrange(count: 12)
!6141 = !DIDerivedType(tag: DW_TAG_member, scope: !6110, file: !6074, line: 62, baseType: !6142, size: 384, offset: 3712)
!6142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6110, file: !6074, line: 62, size: 384, elements: !6143)
!6143 = !{!6144, !6145}
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6142, file: !6074, line: 63, baseType: !6138, size: 384)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6142, file: !6074, line: 64, baseType: !6138, size: 384)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6092, file: !6074, line: 351, baseType: !6147, size: 1088)
!6147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6074, line: 79, size: 1088, elements: !6148)
!6148 = !{!6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163, !6170}
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6147, file: !6074, line: 80, baseType: !374, size: 32)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6147, file: !6074, line: 81, baseType: !374, size: 32, offset: 32)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6147, file: !6074, line: 82, baseType: !374, size: 32, offset: 64)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6147, file: !6074, line: 83, baseType: !374, size: 32, offset: 96)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6147, file: !6074, line: 84, baseType: !374, size: 32, offset: 128)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6147, file: !6074, line: 85, baseType: !374, size: 32, offset: 160)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6147, file: !6074, line: 86, baseType: !374, size: 32, offset: 192)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6147, file: !6074, line: 88, baseType: !6105, size: 640, offset: 224)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6147, file: !6074, line: 89, baseType: !89, size: 8, offset: 864)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6147, file: !6074, line: 90, baseType: !89, size: 8, offset: 872)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6147, file: !6074, line: 91, baseType: !89, size: 8, offset: 880)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6147, file: !6074, line: 92, baseType: !89, size: 8, offset: 888)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6147, file: !6074, line: 93, baseType: !89, size: 8, offset: 896)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6147, file: !6074, line: 94, baseType: !89, size: 8, offset: 904)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6147, file: !6074, line: 95, baseType: !6164, size: 64, offset: 960)
!6164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6165, size: 64)
!6165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6166, line: 11, size: 128, elements: !6167)
!6166 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6167 = !{!6168, !6169}
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6165, file: !6166, line: 12, baseType: !361, size: 64)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6165, file: !6166, line: 13, baseType: !3958, size: 64, offset: 64)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6147, file: !6074, line: 96, baseType: !374, size: 32, offset: 1024)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6092, file: !6074, line: 352, baseType: !6172, size: 4608, align: 512)
!6172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6074, line: 333, size: 4608, align: 512, elements: !6173)
!6173 = !{!6174, !6175, !6182}
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6172, file: !6074, line: 334, baseType: !6110, size: 4096, align: 128)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6172, file: !6074, line: 335, baseType: !6176, size: 512, offset: 4096)
!6176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6074, line: 312, size: 512, elements: !6177)
!6177 = !{!6178, !6179, !6180}
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6176, file: !6074, line: 313, baseType: !432, size: 64)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6176, file: !6074, line: 314, baseType: !432, size: 64, offset: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6176, file: !6074, line: 315, baseType: !6181, size: 384, offset: 128)
!6181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 384, elements: !959)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6172, file: !6074, line: 336, baseType: !6183, offset: 4608)
!6183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, elements: !1124)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6092, file: !6074, line: 353, baseType: !6185, size: 32768)
!6185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 32768, elements: !3339)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6073, file: !6074, line: 484, baseType: !6079, size: 64, offset: 192)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6073, file: !6074, line: 491, baseType: !6188, size: 128, offset: 256)
!6188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6074, line: 404, size: 128, elements: !6189)
!6189 = !{!6190, !6191, !6192}
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6188, file: !6074, line: 424, baseType: !432, size: 64)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6188, file: !6074, line: 432, baseType: !7, size: 32, offset: 64)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6188, file: !6074, line: 440, baseType: !7, size: 32, offset: 96)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6073, file: !6074, line: 498, baseType: !6188, size: 128, offset: 384)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6073, file: !6074, line: 508, baseType: !6080, size: 33280, align: 512, offset: 512)
!6195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6196, size: 64)
!6196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6197)
!6197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1301)
!6198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6199, size: 64)
!6199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6200)
!6200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1952)
!6201 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !31, line: 159, baseType: !432)
!6202 = !{!0, !6203, !6208, !6211}
!6203 = !DIGlobalVariableExpression(var: !6204, expr: !DIExpression())
!6204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !6205, isLocal: true, isDefinition: true)
!6205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 104, elements: !6206)
!6206 = !{!6207}
!6207 = !DISubrange(count: 13)
!6208 = !DIGlobalVariableExpression(var: !6209, expr: !DIExpression())
!6209 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched175", scope: !6210, file: !365, line: 2104, type: !26, isLocal: true, isDefinition: true)
!6210 = distinct !DISubprogram(name: "_cond_resched", scope: !365, file: !365, line: 2102, type: !2991, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6211 = !DIGlobalVariableExpression(var: !6212, expr: !DIExpression())
!6212 = distinct !DIGlobalVariable(scope: null, file: !6213, line: 249, type: !6214, isLocal: true, isDefinition: true)
!6213 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 224, elements: !6215)
!6215 = !{!6216}
!6216 = !DISubrange(count: 28)
!6217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6218)
!6218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_walk_ops", file: !308, line: 58, size: 704, elements: !6219)
!6219 = !{!6220, !6235, !6245, !6249, !6253, !6257, !6261, !6265, !6269, !6270, !6274}
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_entry", scope: !6218, file: !308, line: 59, baseType: !6221, size: 64)
!6221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6222, size: 64)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{!28, !5168, !45, !45, !6224}
!6224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6225, size: 64)
!6225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_walk", file: !308, line: 107, size: 384, elements: !6226)
!6226 = !{!6227, !6229, !6230, !6231, !6232, !6233, !6234}
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6225, file: !308, line: 108, baseType: !6228, size: 64)
!6228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6217, size: 64)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !6225, file: !308, line: 109, baseType: !681, size: 64, offset: 64)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !6225, file: !308, line: 110, baseType: !5168, size: 64, offset: 128)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !6225, file: !308, line: 111, baseType: !1802, size: 64, offset: 192)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !6225, file: !308, line: 112, baseType: !307, size: 32, offset: 256)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "no_vma", scope: !6225, file: !308, line: 113, baseType: !893, size: 8, offset: 288)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6225, file: !308, line: 114, baseType: !26, size: 64, offset: 320)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "p4d_entry", scope: !6218, file: !308, line: 61, baseType: !6236, size: 64, offset: 64)
!6236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6237, size: 64)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!28, !6239, !45, !45, !6224}
!6239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6240, size: 64)
!6240 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1817, line: 346, baseType: !6241)
!6241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 346, size: 64, elements: !6242)
!6242 = !{!6243}
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !6241, file: !1817, line: 346, baseType: !6244, size: 64)
!6244 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !1822, line: 17, baseType: !45)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "pud_entry", scope: !6218, file: !308, line: 63, baseType: !6246, size: 64, offset: 128)
!6246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6247, size: 64)
!6247 = !DISubroutineType(types: !6248)
!6248 = !{!28, !1942, !45, !45, !6224}
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_entry", scope: !6218, file: !308, line: 65, baseType: !6250, size: 64, offset: 192)
!6250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6251, size: 64)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!28, !1935, !45, !45, !6224}
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "pte_entry", scope: !6218, file: !308, line: 67, baseType: !6254, size: 64, offset: 256)
!6254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6255, size: 64)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{!28, !1961, !45, !45, !6224}
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "pte_hole", scope: !6218, file: !308, line: 69, baseType: !6258, size: 64, offset: 320)
!6258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6259, size: 64)
!6259 = !DISubroutineType(types: !6260)
!6260 = !{!28, !45, !45, !28, !6224}
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_entry", scope: !6218, file: !308, line: 71, baseType: !6262, size: 64, offset: 384)
!6262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6263, size: 64)
!6263 = !DISubroutineType(types: !6264)
!6264 = !{!28, !1961, !45, !45, !45, !6224}
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "test_walk", scope: !6218, file: !308, line: 74, baseType: !6266, size: 64, offset: 448)
!6266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6267, size: 64)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!28, !45, !45, !6224}
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vma", scope: !6218, file: !308, line: 76, baseType: !6266, size: 64, offset: 512)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "post_vma", scope: !6218, file: !308, line: 78, baseType: !6271, size: 64, offset: 576)
!6271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6272, size: 64)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{null, !6224}
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "walk_lock", scope: !6218, file: !308, line: 79, baseType: !313, size: 32, offset: 640)
!6275 = !{i32 7, !"Dwarf Version", i32 5}
!6276 = !{i32 2, !"Debug Info Version", i32 3}
!6277 = !{i32 1, !"wchar_size", i32 2}
!6278 = !{i32 8, !"cf-protection-branch", i32 1}
!6279 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6280 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6281 = !{i32 1, !"Code Model", i32 2}
!6282 = !{i32 1, !"override-stack-alignment", i32 8}
!6283 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6284 = distinct !DISubprogram(name: "__x64_sys_mincore", scope: !3, file: !3, line: 232, type: !6285, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6289)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{!361, !6287}
!6287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6288, size: 64)
!6288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3959)
!6289 = !{!6290}
!6290 = !DILocalVariable(name: "regs", arg: 1, scope: !6284, file: !3, line: 232, type: !6287)
!6291 = !DILocation(line: 232, column: 1, scope: !6284)
!6292 = distinct !DISubprogram(name: "__se_sys_mincore", scope: !3, file: !3, line: 232, type: !6293, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6293 = !DISubroutineType(types: !6294)
!6294 = !{!361, !361, !361, !361}
!6295 = !{!6296, !6297, !6298, !6299}
!6296 = !DILocalVariable(name: "start", arg: 1, scope: !6292, file: !3, line: 232, type: !361)
!6297 = !DILocalVariable(name: "len", arg: 2, scope: !6292, file: !3, line: 232, type: !361)
!6298 = !DILocalVariable(name: "vec", arg: 3, scope: !6292, file: !3, line: 232, type: !361)
!6299 = !DILocalVariable(name: "ret", scope: !6292, file: !3, line: 232, type: !361)
!6300 = !DILocation(line: 232, column: 1, scope: !6292)
!6301 = !DILocation(line: 232, column: 1, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 232, column: 1)
!6303 = distinct !DISubprogram(name: "__ia32_sys_mincore", scope: !3, file: !3, line: 232, type: !6285, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6304)
!6304 = !{!6305}
!6305 = !DILocalVariable(name: "regs", arg: 1, scope: !6303, file: !3, line: 232, type: !6287)
!6306 = !DILocation(line: 232, column: 1, scope: !6303)
!6307 = distinct !DISubprogram(name: "__do_sys_mincore", scope: !3, file: !3, line: 232, type: !6308, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6310)
!6308 = !DISubroutineType(types: !6309)
!6309 = !{!361, !45, !41, !359}
!6310 = !{!6311, !6312, !6313, !6314, !6315, !6316, !6317, !6320}
!6311 = !DILocalVariable(name: "start", arg: 1, scope: !6307, file: !3, line: 232, type: !45)
!6312 = !DILocalVariable(name: "len", arg: 2, scope: !6307, file: !3, line: 232, type: !41)
!6313 = !DILocalVariable(name: "vec", arg: 3, scope: !6307, file: !3, line: 232, type: !359)
!6314 = !DILocalVariable(name: "retval", scope: !6307, file: !3, line: 235, type: !361)
!6315 = !DILocalVariable(name: "pages", scope: !6307, file: !3, line: 236, type: !45)
!6316 = !DILocalVariable(name: "tmp", scope: !6307, file: !3, line: 237, type: !359)
!6317 = !DILocalVariable(name: "__UNIQUE_ID___x356", scope: !6318, file: !3, line: 267, type: !45)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 267, column: 30)
!6319 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 261, column: 16)
!6320 = !DILocalVariable(name: "__UNIQUE_ID___y357", scope: !6318, file: !3, line: 267, type: !45)
!6321 = !DILocation(line: 232, column: 1, scope: !6307)
!6322 = !DILocation(line: 235, column: 2, scope: !6307)
!6323 = !DILocation(line: 235, column: 7, scope: !6307)
!6324 = !DILocation(line: 236, column: 2, scope: !6307)
!6325 = !DILocation(line: 236, column: 16, scope: !6307)
!6326 = !DILocation(line: 237, column: 2, scope: !6307)
!6327 = !DILocation(line: 237, column: 17, scope: !6307)
!6328 = !DILocation(line: 239, column: 10, scope: !6307)
!6329 = !DILocation(line: 239, column: 8, scope: !6307)
!6330 = !DILocation(line: 242, column: 6, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 242, column: 6)
!6332 = !DILocation(line: 242, column: 12, scope: !6331)
!6333 = !DILocation(line: 242, column: 6, scope: !6307)
!6334 = !DILocation(line: 243, column: 3, scope: !6331)
!6335 = !DILocation(line: 246, column: 7, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 246, column: 6)
!6337 = !DILocation(line: 246, column: 6, scope: !6307)
!6338 = !DILocation(line: 247, column: 3, scope: !6336)
!6339 = !DILocation(line: 250, column: 10, scope: !6307)
!6340 = !DILocation(line: 250, column: 14, scope: !6307)
!6341 = !DILocation(line: 250, column: 8, scope: !6307)
!6342 = !DILocation(line: 251, column: 12, scope: !6307)
!6343 = !DILocation(line: 251, column: 33, scope: !6307)
!6344 = !DILocation(line: 251, column: 11, scope: !6307)
!6345 = !DILocation(line: 251, column: 8, scope: !6307)
!6346 = !DILocation(line: 253, column: 7, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 253, column: 6)
!6348 = !DILocation(line: 253, column: 6, scope: !6307)
!6349 = !DILocation(line: 254, column: 3, scope: !6347)
!6350 = !DILocation(line: 256, column: 17, scope: !6307)
!6351 = !DILocation(line: 256, column: 8, scope: !6307)
!6352 = !DILocation(line: 256, column: 6, scope: !6307)
!6353 = !DILocation(line: 257, column: 7, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 257, column: 6)
!6355 = !DILocation(line: 257, column: 6, scope: !6307)
!6356 = !DILocation(line: 258, column: 3, scope: !6354)
!6357 = !DILocation(line: 260, column: 9, scope: !6307)
!6358 = !DILocation(line: 261, column: 2, scope: !6307)
!6359 = !DILocation(line: 261, column: 9, scope: !6307)
!6360 = !DILocation(line: 266, column: 18, scope: !6319)
!6361 = !DILocation(line: 266, column: 27, scope: !6319)
!6362 = !DILocation(line: 266, column: 3, scope: !6319)
!6363 = !DILocation(line: 267, column: 23, scope: !6319)
!6364 = !DILocation(line: 267, column: 30, scope: !6318)
!6365 = !DILocation(line: 267, column: 30, scope: !6319)
!6366 = !DILocation(line: 267, column: 53, scope: !6319)
!6367 = !DILocation(line: 267, column: 12, scope: !6319)
!6368 = !DILocation(line: 267, column: 10, scope: !6319)
!6369 = !DILocation(line: 268, column: 20, scope: !6319)
!6370 = !DILocation(line: 268, column: 29, scope: !6319)
!6371 = !DILocation(line: 268, column: 3, scope: !6319)
!6372 = !DILocation(line: 270, column: 7, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 270, column: 7)
!6374 = !DILocation(line: 270, column: 14, scope: !6373)
!6375 = !DILocation(line: 270, column: 7, scope: !6319)
!6376 = !DILocation(line: 271, column: 4, scope: !6373)
!6377 = !DILocation(line: 272, column: 20, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 272, column: 7)
!6379 = !DILocation(line: 272, column: 25, scope: !6378)
!6380 = !DILocation(line: 272, column: 30, scope: !6378)
!6381 = !DILocation(line: 272, column: 7, scope: !6378)
!6382 = !DILocation(line: 272, column: 7, scope: !6319)
!6383 = !DILocation(line: 273, column: 11, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 272, column: 39)
!6385 = !DILocation(line: 274, column: 4, scope: !6384)
!6386 = !DILocation(line: 276, column: 12, scope: !6319)
!6387 = !DILocation(line: 276, column: 9, scope: !6319)
!6388 = !DILocation(line: 277, column: 10, scope: !6319)
!6389 = !DILocation(line: 277, column: 7, scope: !6319)
!6390 = !DILocation(line: 278, column: 12, scope: !6319)
!6391 = !DILocation(line: 278, column: 19, scope: !6319)
!6392 = !DILocation(line: 278, column: 9, scope: !6319)
!6393 = !DILocation(line: 279, column: 10, scope: !6319)
!6394 = distinct !{!6394, !6358, !6395, !6396, !6397}
!6395 = !DILocation(line: 280, column: 2, scope: !6307)
!6396 = !{!"llvm.loop.mustprogress"}
!6397 = !{!"llvm.loop.unroll.disable"}
!6398 = !DILocation(line: 281, column: 2, scope: !6307)
!6399 = !DILocation(line: 282, column: 9, scope: !6307)
!6400 = !DILocation(line: 282, column: 2, scope: !6307)
!6401 = !DILocation(line: 283, column: 1, scope: !6307)
!6402 = distinct !DISubprogram(name: "__access_ok", scope: !6403, file: !6403, line: 85, type: !6404, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6406)
!6403 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!893, !2634, !45}
!6406 = !{!6407, !6408, !6409}
!6407 = !DILocalVariable(name: "ptr", arg: 1, scope: !6402, file: !6403, line: 85, type: !2634)
!6408 = !DILocalVariable(name: "size", arg: 2, scope: !6402, file: !6403, line: 85, type: !45)
!6409 = !DILocalVariable(name: "sum", scope: !6410, file: !6403, line: 90, type: !45)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !6403, line: 89, column: 9)
!6411 = distinct !DILexicalBlock(scope: !6402, file: !6403, line: 87, column: 6)
!6412 = !DILocation(line: 85, column: 51, scope: !6402)
!6413 = !DILocation(line: 85, column: 70, scope: !6402)
!6414 = !DILocation(line: 87, column: 27, scope: !6411)
!6415 = !DILocation(line: 87, column: 32, scope: !6411)
!6416 = !DILocation(line: 87, column: 6, scope: !6411)
!6417 = !DILocation(line: 87, column: 46, scope: !6411)
!6418 = !DILocation(line: 87, column: 49, scope: !6411)
!6419 = !DILocation(line: 87, column: 54, scope: !6411)
!6420 = !DILocation(line: 87, column: 6, scope: !6402)
!6421 = !DILocation(line: 88, column: 10, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6411, file: !6403, line: 87, column: 68)
!6423 = !DILocation(line: 88, column: 3, scope: !6422)
!6424 = !DILocation(line: 90, column: 3, scope: !6410)
!6425 = !DILocation(line: 90, column: 17, scope: !6410)
!6426 = !DILocation(line: 90, column: 23, scope: !6410)
!6427 = !DILocation(line: 90, column: 45, scope: !6410)
!6428 = !DILocation(line: 90, column: 30, scope: !6410)
!6429 = !DILocation(line: 90, column: 28, scope: !6410)
!6430 = !DILocation(line: 91, column: 10, scope: !6410)
!6431 = !DILocation(line: 91, column: 34, scope: !6410)
!6432 = !DILocation(line: 91, column: 37, scope: !6410)
!6433 = !DILocation(line: 91, column: 59, scope: !6410)
!6434 = !DILocation(line: 91, column: 44, scope: !6410)
!6435 = !DILocation(line: 91, column: 41, scope: !6410)
!6436 = !DILocation(line: 0, scope: !6410)
!6437 = !DILocation(line: 91, column: 3, scope: !6410)
!6438 = !DILocation(line: 92, column: 2, scope: !6411)
!6439 = !DILocation(line: 93, column: 1, scope: !6402)
!6440 = !DISubprogram(name: "__get_free_pages", scope: !6441, file: !6441, line: 289, type: !6442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6441 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!45, !360, !7}
!6444 = distinct !DISubprogram(name: "mmap_read_lock", scope: !6445, file: !6445, line: 143, type: !6446, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6448)
!6445 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!6446 = !DISubroutineType(types: !6447)
!6447 = !{null, !681}
!6448 = !{!6449}
!6449 = !DILocalVariable(name: "mm", arg: 1, scope: !6444, file: !6445, line: 143, type: !681)
!6450 = !DILocation(line: 143, column: 53, scope: !6444)
!6451 = !DILocation(line: 145, column: 34, scope: !6444)
!6452 = !DILocation(line: 145, column: 2, scope: !6444)
!6453 = !DILocation(line: 146, column: 13, scope: !6444)
!6454 = !DILocation(line: 146, column: 17, scope: !6444)
!6455 = !DILocation(line: 146, column: 2, scope: !6444)
!6456 = !DILocation(line: 147, column: 37, scope: !6444)
!6457 = !DILocation(line: 147, column: 2, scope: !6444)
!6458 = !DILocation(line: 148, column: 1, scope: !6444)
!6459 = distinct !DISubprogram(name: "get_current", scope: !6460, file: !6460, line: 39, type: !6461, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6463)
!6460 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!363}
!6463 = !{!6464, !6466, !6468}
!6464 = !DILocalVariable(name: "pscr_ret__", scope: !6465, file: !6460, line: 41, type: !363)
!6465 = distinct !DILexicalBlock(scope: !6459, file: !6460, line: 41, column: 9)
!6466 = !DILocalVariable(name: "__vpp_verify", scope: !6467, file: !6460, line: 41, type: !2634)
!6467 = distinct !DILexicalBlock(scope: !6465, file: !6460, line: 41, column: 9)
!6468 = !DILocalVariable(name: "pfo_val__", scope: !6469, file: !6460, line: 41, type: !432)
!6469 = distinct !DILexicalBlock(scope: !6465, file: !6460, line: 41, column: 9)
!6470 = !DILocation(line: 41, column: 9, scope: !6465)
!6471 = !DILocation(line: 41, column: 9, scope: !6467)
!6472 = !DILocation(line: 41, column: 9, scope: !6469)
!6473 = !{i64 2148568892}
!6474 = !DILocation(line: 41, column: 9, scope: !6459)
!6475 = !DILocation(line: 41, column: 2, scope: !6459)
!6476 = distinct !DISubprogram(name: "do_mincore", scope: !3, file: !3, line: 187, type: !6477, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6479)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!361, !45, !45, !359}
!6479 = !{!6480, !6481, !6482, !6483, !6484, !6485, !6486, !6488, !6489}
!6480 = !DILocalVariable(name: "addr", arg: 1, scope: !6476, file: !3, line: 187, type: !45)
!6481 = !DILocalVariable(name: "pages", arg: 2, scope: !6476, file: !3, line: 187, type: !45)
!6482 = !DILocalVariable(name: "vec", arg: 3, scope: !6476, file: !3, line: 187, type: !359)
!6483 = !DILocalVariable(name: "vma", scope: !6476, file: !3, line: 189, type: !1802)
!6484 = !DILocalVariable(name: "end", scope: !6476, file: !3, line: 190, type: !45)
!6485 = !DILocalVariable(name: "err", scope: !6476, file: !3, line: 191, type: !28)
!6486 = !DILocalVariable(name: "__UNIQUE_ID___x354", scope: !6487, file: !3, line: 196, type: !45)
!6487 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 196, column: 8)
!6488 = !DILocalVariable(name: "__UNIQUE_ID___y355", scope: !6487, file: !3, line: 196, type: !45)
!6489 = !DILocalVariable(name: "pages", scope: !6490, file: !3, line: 198, type: !45)
!6490 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 197, column: 28)
!6491 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 197, column: 6)
!6492 = !DILocation(line: 187, column: 38, scope: !6476)
!6493 = !DILocation(line: 187, column: 58, scope: !6476)
!6494 = !DILocation(line: 187, column: 80, scope: !6476)
!6495 = !DILocation(line: 189, column: 2, scope: !6476)
!6496 = !DILocation(line: 189, column: 25, scope: !6476)
!6497 = !DILocation(line: 190, column: 2, scope: !6476)
!6498 = !DILocation(line: 190, column: 16, scope: !6476)
!6499 = !DILocation(line: 191, column: 2, scope: !6476)
!6500 = !DILocation(line: 191, column: 6, scope: !6476)
!6501 = !DILocation(line: 193, column: 19, scope: !6476)
!6502 = !DILocation(line: 193, column: 28, scope: !6476)
!6503 = !DILocation(line: 193, column: 32, scope: !6476)
!6504 = !DILocation(line: 193, column: 8, scope: !6476)
!6505 = !DILocation(line: 193, column: 6, scope: !6476)
!6506 = !DILocation(line: 194, column: 7, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 194, column: 6)
!6508 = !DILocation(line: 194, column: 6, scope: !6476)
!6509 = !DILocation(line: 195, column: 3, scope: !6507)
!6510 = !DILocation(line: 196, column: 8, scope: !6487)
!6511 = !DILocation(line: 196, column: 8, scope: !6476)
!6512 = !DILocation(line: 196, column: 6, scope: !6476)
!6513 = !DILocation(line: 197, column: 22, scope: !6491)
!6514 = !DILocation(line: 197, column: 7, scope: !6491)
!6515 = !DILocation(line: 197, column: 6, scope: !6476)
!6516 = !DILocation(line: 198, column: 3, scope: !6490)
!6517 = !DILocation(line: 198, column: 17, scope: !6490)
!6518 = !DILocation(line: 198, column: 25, scope: !6490)
!6519 = !DILocation(line: 199, column: 10, scope: !6490)
!6520 = !DILocation(line: 199, column: 18, scope: !6490)
!6521 = !DILocation(line: 199, column: 3, scope: !6490)
!6522 = !DILocation(line: 200, column: 10, scope: !6490)
!6523 = !DILocation(line: 200, column: 3, scope: !6490)
!6524 = !DILocation(line: 201, column: 2, scope: !6491)
!6525 = !DILocation(line: 202, column: 24, scope: !6476)
!6526 = !DILocation(line: 202, column: 29, scope: !6476)
!6527 = !DILocation(line: 202, column: 36, scope: !6476)
!6528 = !DILocation(line: 202, column: 42, scope: !6476)
!6529 = !DILocation(line: 202, column: 66, scope: !6476)
!6530 = !DILocation(line: 202, column: 8, scope: !6476)
!6531 = !DILocation(line: 202, column: 6, scope: !6476)
!6532 = !DILocation(line: 203, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 203, column: 6)
!6534 = !DILocation(line: 203, column: 10, scope: !6533)
!6535 = !DILocation(line: 203, column: 6, scope: !6476)
!6536 = !DILocation(line: 204, column: 10, scope: !6533)
!6537 = !DILocation(line: 204, column: 3, scope: !6533)
!6538 = !DILocation(line: 205, column: 10, scope: !6476)
!6539 = !DILocation(line: 205, column: 16, scope: !6476)
!6540 = !DILocation(line: 205, column: 14, scope: !6476)
!6541 = !DILocation(line: 205, column: 22, scope: !6476)
!6542 = !DILocation(line: 205, column: 2, scope: !6476)
!6543 = !DILocation(line: 206, column: 1, scope: !6476)
!6544 = distinct !DISubprogram(name: "mmap_read_unlock", scope: !6445, file: !6445, line: 170, type: !6446, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6545)
!6545 = !{!6546}
!6546 = !DILocalVariable(name: "mm", arg: 1, scope: !6544, file: !6445, line: 170, type: !681)
!6547 = !DILocation(line: 170, column: 55, scope: !6544)
!6548 = !DILocation(line: 172, column: 29, scope: !6544)
!6549 = !DILocation(line: 172, column: 2, scope: !6544)
!6550 = !DILocation(line: 173, column: 11, scope: !6544)
!6551 = !DILocation(line: 173, column: 15, scope: !6544)
!6552 = !DILocation(line: 173, column: 2, scope: !6544)
!6553 = !DILocation(line: 174, column: 1, scope: !6544)
!6554 = distinct !DISubprogram(name: "copy_to_user", scope: !6555, file: !6555, line: 188, type: !6556, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6558)
!6555 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6556 = !DISubroutineType(types: !6557)
!6557 = !{!45, !26, !2634, !45}
!6558 = !{!6559, !6560, !6561}
!6559 = !DILocalVariable(name: "to", arg: 1, scope: !6554, file: !6555, line: 188, type: !26)
!6560 = !DILocalVariable(name: "from", arg: 2, scope: !6554, file: !6555, line: 188, type: !2634)
!6561 = !DILocalVariable(name: "n", arg: 3, scope: !6554, file: !6555, line: 188, type: !45)
!6562 = !DILocation(line: 188, column: 27, scope: !6554)
!6563 = !DILocation(line: 188, column: 43, scope: !6554)
!6564 = !DILocation(line: 188, column: 63, scope: !6554)
!6565 = !DILocation(line: 190, column: 22, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6554, file: !6555, line: 190, column: 6)
!6567 = !DILocation(line: 190, column: 28, scope: !6566)
!6568 = !DILocation(line: 190, column: 6, scope: !6566)
!6569 = !DILocation(line: 190, column: 6, scope: !6554)
!6570 = !DILocation(line: 191, column: 21, scope: !6566)
!6571 = !DILocation(line: 191, column: 25, scope: !6566)
!6572 = !DILocation(line: 191, column: 31, scope: !6566)
!6573 = !DILocation(line: 191, column: 7, scope: !6566)
!6574 = !DILocation(line: 191, column: 5, scope: !6566)
!6575 = !DILocation(line: 191, column: 3, scope: !6566)
!6576 = !DILocation(line: 192, column: 9, scope: !6554)
!6577 = !DILocation(line: 192, column: 2, scope: !6554)
!6578 = !DISubprogram(name: "free_pages", scope: !6441, file: !6441, line: 303, type: !6579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{null, !45, !7}
!6581 = distinct !DISubprogram(name: "__mmap_lock_trace_start_locking", scope: !6445, file: !6445, line: 25, type: !6582, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6584)
!6582 = !DISubroutineType(types: !6583)
!6583 = !{null, !681, !893}
!6584 = !{!6585, !6586}
!6585 = !DILocalVariable(name: "mm", arg: 1, scope: !6581, file: !6445, line: 25, type: !681)
!6586 = !DILocalVariable(name: "write", arg: 2, scope: !6581, file: !6445, line: 26, type: !893)
!6587 = !DILocation(line: 25, column: 70, scope: !6581)
!6588 = !DILocation(line: 26, column: 15, scope: !6581)
!6589 = !DILocation(line: 28, column: 6, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6581, file: !6445, line: 28, column: 6)
!6591 = !DILocation(line: 28, column: 6, scope: !6581)
!6592 = !DILocation(line: 29, column: 38, scope: !6590)
!6593 = !DILocation(line: 29, column: 42, scope: !6590)
!6594 = !{i8 0, i8 2}
!6595 = !DILocation(line: 29, column: 3, scope: !6590)
!6596 = !DILocation(line: 30, column: 1, scope: !6581)
!6597 = !DISubprogram(name: "down_read", scope: !914, file: !914, line: 175, type: !6598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6598 = !DISubroutineType(types: !6599)
!6599 = !{null, !6600}
!6600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!6601 = distinct !DISubprogram(name: "__mmap_lock_trace_acquire_returned", scope: !6445, file: !6445, line: 32, type: !6602, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6604)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{null, !681, !893, !893}
!6604 = !{!6605, !6606, !6607}
!6605 = !DILocalVariable(name: "mm", arg: 1, scope: !6601, file: !6445, line: 32, type: !681)
!6606 = !DILocalVariable(name: "write", arg: 2, scope: !6601, file: !6445, line: 33, type: !893)
!6607 = !DILocalVariable(name: "success", arg: 3, scope: !6601, file: !6445, line: 33, type: !893)
!6608 = !DILocation(line: 32, column: 73, scope: !6601)
!6609 = !DILocation(line: 33, column: 18, scope: !6601)
!6610 = !DILocation(line: 33, column: 30, scope: !6601)
!6611 = !DILocation(line: 35, column: 6, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6601, file: !6445, line: 35, column: 6)
!6613 = !DILocation(line: 35, column: 6, scope: !6601)
!6614 = !DILocation(line: 36, column: 41, scope: !6612)
!6615 = !DILocation(line: 36, column: 45, scope: !6612)
!6616 = !DILocation(line: 36, column: 52, scope: !6612)
!6617 = !DILocation(line: 36, column: 3, scope: !6612)
!6618 = !DILocation(line: 37, column: 1, scope: !6601)
!6619 = distinct !DISubprogram(name: "static_key_false", scope: !3178, file: !3178, line: 205, type: !6620, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6620 = !DISubroutineType(types: !6621)
!6621 = !{!893, !6622}
!6622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!6623 = !{!6624}
!6624 = !DILocalVariable(name: "key", arg: 1, scope: !6619, file: !3178, line: 205, type: !6622)
!6625 = !DILocation(line: 205, column: 65, scope: !6619)
!6626 = !DILocation(line: 207, column: 28, scope: !6619)
!6627 = !DILocation(line: 207, column: 9, scope: !6619)
!6628 = !DILocation(line: 207, column: 2, scope: !6619)
!6629 = !DISubprogram(name: "__mmap_lock_do_trace_start_locking", scope: !6445, file: !6445, line: 20, type: !6582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6630 = distinct !DISubprogram(name: "arch_static_branch", scope: !6631, file: !6631, line: 25, type: !6632, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6634)
!6631 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6632 = !DISubroutineType(types: !6633)
!6633 = !{!893, !6622, !893}
!6634 = !{!6635, !6636, !6637}
!6635 = !DILocalVariable(name: "key", arg: 1, scope: !6630, file: !6631, line: 25, type: !6622)
!6636 = !DILocalVariable(name: "branch", arg: 2, scope: !6630, file: !6631, line: 25, type: !893)
!6637 = !DILabel(scope: !6630, name: "l_yes", file: !6631, line: 33)
!6638 = !DILocation(line: 25, column: 67, scope: !6630)
!6639 = !DILocation(line: 25, column: 77, scope: !6630)
!6640 = !DILocation(line: 30, column: 13, scope: !6630)
!6641 = !DILocation(line: 30, column: 28, scope: !6630)
!6642 = !DILocation(line: 30, column: 26, scope: !6630)
!6643 = !DILocation(line: 27, column: 2, scope: !6630)
!6644 = !{i64 1319064, i64 1319108, i64 2148803791, i64 2148803812, i64 2148803838, i64 2148803871, i64 2148803905, i64 2148803929}
!6645 = !DILocation(line: 32, column: 2, scope: !6630)
!6646 = !DILocation(line: 33, column: 1, scope: !6630)
!6647 = !DILocation(line: 34, column: 2, scope: !6630)
!6648 = !DILocation(line: 35, column: 1, scope: !6630)
!6649 = !DISubprogram(name: "__mmap_lock_do_trace_acquire_returned", scope: !6445, file: !6445, line: 21, type: !6602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6650 = distinct !DISubprogram(name: "vma_lookup", scope: !1796, file: !1796, line: 3378, type: !6651, scopeLine: 3379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6653)
!6651 = !DISubroutineType(types: !6652)
!6652 = !{!1802, !681, !45}
!6653 = !{!6654, !6655}
!6654 = !DILocalVariable(name: "mm", arg: 1, scope: !6650, file: !1796, line: 3378, type: !681)
!6655 = !DILocalVariable(name: "addr", arg: 2, scope: !6650, file: !1796, line: 3378, type: !45)
!6656 = !DILocation(line: 3378, column: 53, scope: !6650)
!6657 = !DILocation(line: 3378, column: 71, scope: !6650)
!6658 = !DILocation(line: 3380, column: 21, scope: !6650)
!6659 = !DILocation(line: 3380, column: 25, scope: !6650)
!6660 = !DILocation(line: 3380, column: 32, scope: !6650)
!6661 = !DILocation(line: 3380, column: 9, scope: !6650)
!6662 = !DILocation(line: 3380, column: 2, scope: !6650)
!6663 = distinct !DISubprogram(name: "can_do_mincore", scope: !3, file: !3, line: 158, type: !6664, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6666)
!6664 = !DISubroutineType(types: !6665)
!6665 = !{!893, !1802}
!6666 = !{!6667}
!6667 = !DILocalVariable(name: "vma", arg: 1, scope: !6663, file: !3, line: 158, type: !1802)
!6668 = !DILocation(line: 158, column: 58, scope: !6663)
!6669 = !DILocation(line: 160, column: 23, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6663, file: !3, line: 160, column: 6)
!6671 = !DILocation(line: 160, column: 6, scope: !6670)
!6672 = !DILocation(line: 160, column: 6, scope: !6663)
!6673 = !DILocation(line: 161, column: 3, scope: !6670)
!6674 = !DILocation(line: 162, column: 7, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6663, file: !3, line: 162, column: 6)
!6676 = !DILocation(line: 162, column: 12, scope: !6675)
!6677 = !DILocation(line: 162, column: 6, scope: !6663)
!6678 = !DILocation(line: 163, column: 3, scope: !6675)
!6679 = !DILocation(line: 171, column: 22, scope: !6663)
!6680 = !DILocation(line: 171, column: 27, scope: !6663)
!6681 = !DILocation(line: 171, column: 11, scope: !6663)
!6682 = !DILocation(line: 170, column: 9, scope: !6663)
!6683 = !DILocation(line: 171, column: 37, scope: !6663)
!6684 = !DILocation(line: 172, column: 25, scope: !6663)
!6685 = !DILocation(line: 172, column: 30, scope: !6663)
!6686 = !DILocation(line: 172, column: 9, scope: !6663)
!6687 = !DILocation(line: 172, column: 50, scope: !6663)
!6688 = !DILocation(line: 170, column: 2, scope: !6663)
!6689 = !DILocation(line: 173, column: 1, scope: !6663)
!6690 = !DISubprogram(name: "walk_page_range", scope: !308, file: !308, line: 117, type: !6691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6691 = !DISubroutineType(types: !6692)
!6692 = !{!28, !681, !45, !45, !6228, !26}
!6693 = !DISubprogram(name: "mtree_load", scope: !693, file: !693, line: 311, type: !6694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6694 = !DISubroutineType(types: !6695)
!6695 = !{!26, !6696, !45}
!6696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!6697 = distinct !DISubprogram(name: "vma_is_anonymous", scope: !1796, file: !1796, line: 884, type: !6664, scopeLine: 885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6698)
!6698 = !{!6699}
!6699 = !DILocalVariable(name: "vma", arg: 1, scope: !6697, file: !1796, line: 884, type: !1802)
!6700 = !DILocation(line: 884, column: 60, scope: !6697)
!6701 = !DILocation(line: 886, column: 10, scope: !6697)
!6702 = !DILocation(line: 886, column: 15, scope: !6697)
!6703 = !DILocation(line: 886, column: 9, scope: !6697)
!6704 = !DILocation(line: 886, column: 2, scope: !6697)
!6705 = !DISubprogram(name: "inode_owner_or_capable", scope: !250, file: !250, line: 1763, type: !6706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6706 = !DISubroutineType(types: !6707)
!6707 = !{!893, !1301, !4884}
!6708 = distinct !DISubprogram(name: "file_inode", scope: !250, file: !250, line: 1073, type: !6709, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6711)
!6709 = !DISubroutineType(types: !6710)
!6710 = !{!1262, !2807}
!6711 = !{!6712}
!6712 = !DILocalVariable(name: "f", arg: 1, scope: !6708, file: !250, line: 1073, type: !2807)
!6713 = !DILocation(line: 1073, column: 59, scope: !6708)
!6714 = !DILocation(line: 1075, column: 9, scope: !6708)
!6715 = !DILocation(line: 1075, column: 12, scope: !6708)
!6716 = !DILocation(line: 1075, column: 2, scope: !6708)
!6717 = distinct !DISubprogram(name: "file_permission", scope: !250, file: !250, line: 2677, type: !6718, scopeLine: 2678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6720)
!6718 = !DISubroutineType(types: !6719)
!6719 = !{!28, !709, !28}
!6720 = !{!6721, !6722}
!6721 = !DILocalVariable(name: "file", arg: 1, scope: !6717, file: !250, line: 2677, type: !709)
!6722 = !DILocalVariable(name: "mask", arg: 2, scope: !6717, file: !250, line: 2677, type: !28)
!6723 = !DILocation(line: 2677, column: 48, scope: !6717)
!6724 = !DILocation(line: 2677, column: 58, scope: !6717)
!6725 = !DILocation(line: 2679, column: 41, scope: !6717)
!6726 = !DILocation(line: 2679, column: 26, scope: !6717)
!6727 = !DILocation(line: 2680, column: 16, scope: !6717)
!6728 = !DILocation(line: 2680, column: 5, scope: !6717)
!6729 = !DILocation(line: 2680, column: 23, scope: !6717)
!6730 = !DILocation(line: 2679, column: 9, scope: !6717)
!6731 = !DILocation(line: 2679, column: 2, scope: !6717)
!6732 = !DISubprogram(name: "inode_permission", scope: !250, file: !250, line: 2675, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6733 = distinct !DISubprogram(name: "file_mnt_idmap", scope: !250, file: !250, line: 2479, type: !6734, scopeLine: 2480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6736)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!1301, !709}
!6736 = !{!6737}
!6737 = !DILocalVariable(name: "file", arg: 1, scope: !6733, file: !250, line: 2479, type: !709)
!6738 = !DILocation(line: 2479, column: 61, scope: !6733)
!6739 = !DILocation(line: 2481, column: 19, scope: !6733)
!6740 = !DILocation(line: 2481, column: 25, scope: !6733)
!6741 = !DILocation(line: 2481, column: 32, scope: !6733)
!6742 = !DILocation(line: 2481, column: 9, scope: !6733)
!6743 = !DILocation(line: 2481, column: 2, scope: !6733)
!6744 = distinct !DISubprogram(name: "mnt_idmap", scope: !1224, file: !1224, line: 77, type: !6745, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6749)
!6745 = !DISubroutineType(types: !6746)
!6746 = !{!1301, !6747}
!6747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6748, size: 64)
!6748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!6749 = !{!6750, !6751}
!6750 = !DILocalVariable(name: "mnt", arg: 1, scope: !6744, file: !1224, line: 77, type: !6747)
!6751 = !DILocalVariable(name: "___p1", scope: !6752, file: !1224, line: 80, type: !6753)
!6752 = distinct !DILexicalBlock(scope: !6744, file: !1224, line: 80, column: 9)
!6753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!6754 = !DILocation(line: 77, column: 66, scope: !6744)
!6755 = !DILocation(line: 80, column: 9, scope: !6752)
!6756 = !DILocation(line: 80, column: 9, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6752, file: !1224, line: 80, column: 9)
!6758 = !DILocation(line: 80, column: 9, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6757, file: !1224, line: 80, column: 9)
!6760 = !DILocation(line: 80, column: 9, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6752, file: !1224, line: 80, column: 9)
!6762 = !{i64 2153638032}
!6763 = !DILocation(line: 80, column: 9, scope: !6744)
!6764 = !DILocation(line: 80, column: 2, scope: !6744)
!6765 = distinct !DISubprogram(name: "mincore_pte_range", scope: !3, file: !3, line: 100, type: !6251, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6766)
!6766 = !{!6767, !6768, !6769, !6770, !6771, !6772, !6773, !6774, !6775, !6776, !6780, !6784}
!6767 = !DILocalVariable(name: "pmd", arg: 1, scope: !6765, file: !3, line: 100, type: !1935)
!6768 = !DILocalVariable(name: "addr", arg: 2, scope: !6765, file: !3, line: 100, type: !45)
!6769 = !DILocalVariable(name: "end", arg: 3, scope: !6765, file: !3, line: 100, type: !45)
!6770 = !DILocalVariable(name: "walk", arg: 4, scope: !6765, file: !3, line: 101, type: !6224)
!6771 = !DILocalVariable(name: "ptl", scope: !6765, file: !3, line: 103, type: !1963)
!6772 = !DILocalVariable(name: "vma", scope: !6765, file: !3, line: 104, type: !1802)
!6773 = !DILocalVariable(name: "ptep", scope: !6765, file: !3, line: 105, type: !1961)
!6774 = !DILocalVariable(name: "vec", scope: !6765, file: !3, line: 106, type: !359)
!6775 = !DILocalVariable(name: "nr", scope: !6765, file: !3, line: 107, type: !28)
!6776 = !DILocalVariable(name: "pte", scope: !6777, file: !3, line: 122, type: !1952)
!6777 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 121, column: 49)
!6778 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 121, column: 2)
!6779 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 121, column: 2)
!6780 = !DILocalVariable(name: "entry", scope: !6781, file: !3, line: 131, type: !2046)
!6781 = distinct !DILexicalBlock(scope: !6782, file: !3, line: 130, column: 8)
!6782 = distinct !DILexicalBlock(scope: !6783, file: !3, line: 128, column: 12)
!6783 = distinct !DILexicalBlock(scope: !6777, file: !3, line: 125, column: 7)
!6784 = !DILabel(scope: !6765, name: "out", file: !3, line: 152)
!6785 = !DILocation(line: 100, column: 37, scope: !6765)
!6786 = !DILocation(line: 100, column: 56, scope: !6765)
!6787 = !DILocation(line: 100, column: 76, scope: !6765)
!6788 = !DILocation(line: 101, column: 20, scope: !6765)
!6789 = !DILocation(line: 103, column: 2, scope: !6765)
!6790 = !DILocation(line: 103, column: 14, scope: !6765)
!6791 = !DILocation(line: 104, column: 2, scope: !6765)
!6792 = !DILocation(line: 104, column: 25, scope: !6765)
!6793 = !DILocation(line: 104, column: 31, scope: !6765)
!6794 = !DILocation(line: 104, column: 37, scope: !6765)
!6795 = !DILocation(line: 105, column: 2, scope: !6765)
!6796 = !DILocation(line: 105, column: 9, scope: !6765)
!6797 = !DILocation(line: 106, column: 2, scope: !6765)
!6798 = !DILocation(line: 106, column: 17, scope: !6765)
!6799 = !DILocation(line: 106, column: 23, scope: !6765)
!6800 = !DILocation(line: 106, column: 29, scope: !6765)
!6801 = !DILocation(line: 107, column: 2, scope: !6765)
!6802 = !DILocation(line: 107, column: 6, scope: !6765)
!6803 = !DILocation(line: 107, column: 12, scope: !6765)
!6804 = !DILocation(line: 107, column: 18, scope: !6765)
!6805 = !DILocation(line: 107, column: 16, scope: !6765)
!6806 = !DILocation(line: 107, column: 24, scope: !6765)
!6807 = !DILocation(line: 107, column: 11, scope: !6765)
!6808 = !DILocation(line: 109, column: 28, scope: !6765)
!6809 = !DILocation(line: 109, column: 33, scope: !6765)
!6810 = !DILocation(line: 109, column: 8, scope: !6765)
!6811 = !DILocation(line: 109, column: 6, scope: !6765)
!6812 = !DILocation(line: 110, column: 6, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 110, column: 6)
!6814 = !DILocation(line: 110, column: 6, scope: !6765)
!6815 = !DILocation(line: 111, column: 10, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 110, column: 11)
!6817 = !DILocation(line: 111, column: 18, scope: !6816)
!6818 = !DILocation(line: 111, column: 3, scope: !6816)
!6819 = !DILocation(line: 112, column: 15, scope: !6816)
!6820 = !DILocation(line: 112, column: 3, scope: !6816)
!6821 = !DILocation(line: 113, column: 3, scope: !6816)
!6822 = !DILocation(line: 116, column: 29, scope: !6765)
!6823 = !DILocation(line: 116, column: 35, scope: !6765)
!6824 = !DILocation(line: 116, column: 39, scope: !6765)
!6825 = !DILocation(line: 116, column: 44, scope: !6765)
!6826 = !DILocation(line: 116, column: 9, scope: !6765)
!6827 = !DILocation(line: 116, column: 7, scope: !6765)
!6828 = !DILocation(line: 117, column: 7, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 117, column: 6)
!6830 = !DILocation(line: 117, column: 6, scope: !6765)
!6831 = !DILocation(line: 118, column: 3, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6829, file: !3, line: 117, column: 13)
!6833 = !DILocation(line: 118, column: 9, scope: !6832)
!6834 = !DILocation(line: 118, column: 16, scope: !6832)
!6835 = !DILocation(line: 119, column: 3, scope: !6832)
!6836 = !DILocation(line: 121, column: 2, scope: !6765)
!6837 = !DILocation(line: 121, column: 9, scope: !6778)
!6838 = !DILocation(line: 121, column: 17, scope: !6778)
!6839 = !DILocation(line: 121, column: 14, scope: !6778)
!6840 = !DILocation(line: 121, column: 2, scope: !6779)
!6841 = !DILocation(line: 122, column: 3, scope: !6777)
!6842 = !DILocation(line: 122, column: 9, scope: !6777)
!6843 = !DILocation(line: 122, column: 24, scope: !6777)
!6844 = !DILocation(line: 122, column: 15, scope: !6777)
!6845 = !DILocation(line: 125, column: 7, scope: !6783)
!6846 = !DILocation(line: 125, column: 7, scope: !6777)
!6847 = !DILocation(line: 126, column: 29, scope: !6783)
!6848 = !DILocation(line: 126, column: 35, scope: !6783)
!6849 = !DILocation(line: 126, column: 40, scope: !6783)
!6850 = !DILocation(line: 127, column: 8, scope: !6783)
!6851 = !DILocation(line: 127, column: 13, scope: !6783)
!6852 = !DILocation(line: 126, column: 4, scope: !6783)
!6853 = !DILocation(line: 128, column: 12, scope: !6782)
!6854 = !DILocation(line: 128, column: 12, scope: !6783)
!6855 = !DILocation(line: 129, column: 5, scope: !6782)
!6856 = !DILocation(line: 129, column: 9, scope: !6782)
!6857 = !DILocation(line: 129, column: 4, scope: !6782)
!6858 = !DILocation(line: 131, column: 4, scope: !6781)
!6859 = !DILocation(line: 131, column: 16, scope: !6781)
!6860 = !DILocation(line: 131, column: 24, scope: !6781)
!6861 = !DILocation(line: 133, column: 8, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6781, file: !3, line: 133, column: 8)
!6863 = !DILocation(line: 133, column: 8, scope: !6781)
!6864 = !DILocation(line: 138, column: 6, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 133, column: 31)
!6866 = !DILocation(line: 138, column: 10, scope: !6865)
!6867 = !DILocation(line: 139, column: 4, scope: !6865)
!6868 = !DILocation(line: 141, column: 25, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 139, column: 11)
!6870 = !DILocation(line: 142, column: 11, scope: !6869)
!6871 = !DILocation(line: 141, column: 12, scope: !6869)
!6872 = !DILocation(line: 141, column: 6, scope: !6869)
!6873 = !DILocation(line: 141, column: 10, scope: !6869)
!6874 = !DILocation(line: 148, column: 3, scope: !6782)
!6875 = !DILocation(line: 149, column: 6, scope: !6777)
!6876 = !DILocation(line: 150, column: 2, scope: !6778)
!6877 = !DILocation(line: 150, column: 2, scope: !6777)
!6878 = !DILocation(line: 121, column: 26, scope: !6778)
!6879 = !DILocation(line: 121, column: 35, scope: !6778)
!6880 = !DILocation(line: 121, column: 2, scope: !6778)
!6881 = distinct !{!6881, !6840, !6882, !6396, !6397}
!6882 = !DILocation(line: 150, column: 2, scope: !6779)
!6883 = !DILocation(line: 151, column: 2, scope: !6765)
!6884 = !DILocation(line: 151, column: 2, scope: !6885)
!6885 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 151, column: 2)
!6886 = !DILocation(line: 152, column: 1, scope: !6765)
!6887 = !DILocation(line: 153, column: 19, scope: !6765)
!6888 = !DILocation(line: 153, column: 2, scope: !6765)
!6889 = !DILocation(line: 153, column: 8, scope: !6765)
!6890 = !DILocation(line: 153, column: 16, scope: !6765)
!6891 = !DILocation(line: 154, column: 2, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6765, file: !3, line: 154, column: 2)
!6893 = !DILocation(line: 155, column: 2, scope: !6765)
!6894 = !DILocation(line: 156, column: 1, scope: !6765)
!6895 = distinct !DISubprogram(name: "mincore_unmapped_range", scope: !3, file: !3, line: 91, type: !6259, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6896)
!6896 = !{!6897, !6898, !6899, !6900}
!6897 = !DILocalVariable(name: "addr", arg: 1, scope: !6895, file: !3, line: 91, type: !45)
!6898 = !DILocalVariable(name: "end", arg: 2, scope: !6895, file: !3, line: 91, type: !45)
!6899 = !DILocalVariable(name: "depth", arg: 3, scope: !6895, file: !3, line: 92, type: !28)
!6900 = !DILocalVariable(name: "walk", arg: 4, scope: !6895, file: !3, line: 93, type: !6224)
!6901 = !DILocation(line: 91, column: 49, scope: !6895)
!6902 = !DILocation(line: 91, column: 69, scope: !6895)
!6903 = !DILocation(line: 92, column: 28, scope: !6895)
!6904 = !DILocation(line: 93, column: 24, scope: !6895)
!6905 = !DILocation(line: 95, column: 44, scope: !6895)
!6906 = !DILocation(line: 95, column: 50, scope: !6895)
!6907 = !DILocation(line: 96, column: 9, scope: !6895)
!6908 = !DILocation(line: 96, column: 15, scope: !6895)
!6909 = !DILocation(line: 96, column: 20, scope: !6895)
!6910 = !DILocation(line: 96, column: 26, scope: !6895)
!6911 = !DILocation(line: 95, column: 19, scope: !6895)
!6912 = !DILocation(line: 95, column: 2, scope: !6895)
!6913 = !DILocation(line: 95, column: 8, scope: !6895)
!6914 = !DILocation(line: 95, column: 16, scope: !6895)
!6915 = !DILocation(line: 97, column: 2, scope: !6895)
!6916 = distinct !DISubprogram(name: "mincore_hugetlb", scope: !3, file: !3, line: 25, type: !6263, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6917)
!6917 = !{!6918, !6919, !6920, !6921, !6922, !6923, !6924}
!6918 = !DILocalVariable(name: "pte", arg: 1, scope: !6916, file: !3, line: 25, type: !1961)
!6919 = !DILocalVariable(name: "hmask", arg: 2, scope: !6916, file: !3, line: 25, type: !45)
!6920 = !DILocalVariable(name: "addr", arg: 3, scope: !6916, file: !3, line: 25, type: !45)
!6921 = !DILocalVariable(name: "end", arg: 4, scope: !6916, file: !3, line: 26, type: !45)
!6922 = !DILocalVariable(name: "walk", arg: 5, scope: !6916, file: !3, line: 26, type: !6224)
!6923 = !DILocalVariable(name: "present", scope: !6916, file: !3, line: 29, type: !93)
!6924 = !DILocalVariable(name: "vec", scope: !6916, file: !3, line: 30, type: !359)
!6925 = !DILocation(line: 25, column: 35, scope: !6916)
!6926 = !DILocation(line: 25, column: 54, scope: !6916)
!6927 = !DILocation(line: 25, column: 75, scope: !6916)
!6928 = !DILocation(line: 26, column: 18, scope: !6916)
!6929 = !DILocation(line: 26, column: 39, scope: !6916)
!6930 = !DILocation(line: 29, column: 2, scope: !6916)
!6931 = !DILocation(line: 29, column: 16, scope: !6916)
!6932 = !DILocation(line: 30, column: 2, scope: !6916)
!6933 = !DILocation(line: 30, column: 17, scope: !6916)
!6934 = !DILocation(line: 30, column: 23, scope: !6916)
!6935 = !DILocation(line: 30, column: 29, scope: !6916)
!6936 = !DILocation(line: 36, column: 12, scope: !6916)
!6937 = !DILocation(line: 36, column: 16, scope: !6916)
!6938 = !DILocation(line: 36, column: 55, scope: !6916)
!6939 = !DILocation(line: 36, column: 41, scope: !6916)
!6940 = !DILocation(line: 36, column: 20, scope: !6916)
!6941 = !DILocation(line: 36, column: 19, scope: !6916)
!6942 = !DILocation(line: 0, scope: !6916)
!6943 = !DILocation(line: 36, column: 10, scope: !6916)
!6944 = !DILocation(line: 37, column: 2, scope: !6916)
!6945 = !DILocation(line: 37, column: 9, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6947, file: !3, line: 37, column: 2)
!6947 = distinct !DILexicalBlock(scope: !6916, file: !3, line: 37, column: 2)
!6948 = !DILocation(line: 37, column: 17, scope: !6946)
!6949 = !DILocation(line: 37, column: 14, scope: !6946)
!6950 = !DILocation(line: 37, column: 2, scope: !6947)
!6951 = !DILocation(line: 38, column: 10, scope: !6946)
!6952 = !DILocation(line: 38, column: 4, scope: !6946)
!6953 = !DILocation(line: 38, column: 8, scope: !6946)
!6954 = !DILocation(line: 38, column: 3, scope: !6946)
!6955 = !DILocation(line: 37, column: 25, scope: !6946)
!6956 = !DILocation(line: 37, column: 34, scope: !6946)
!6957 = !DILocation(line: 37, column: 2, scope: !6946)
!6958 = distinct !{!6958, !6950, !6959, !6396, !6397}
!6959 = !DILocation(line: 38, column: 10, scope: !6947)
!6960 = !DILocation(line: 39, column: 18, scope: !6916)
!6961 = !DILocation(line: 39, column: 2, scope: !6916)
!6962 = !DILocation(line: 39, column: 8, scope: !6916)
!6963 = !DILocation(line: 39, column: 16, scope: !6916)
!6964 = !DILocation(line: 44, column: 1, scope: !6916)
!6965 = !DILocation(line: 43, column: 2, scope: !6916)
!6966 = distinct !DISubprogram(name: "pmd_trans_huge_lock", scope: !6967, file: !6967, line: 356, type: !6968, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6970)
!6967 = !DIFile(filename: "./include/linux/huge_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b6833a58b709ea55ac9e4c63c9931c7")
!6968 = !DISubroutineType(types: !6969)
!6969 = !{!1963, !1935, !1802}
!6970 = !{!6971, !6972}
!6971 = !DILocalVariable(name: "pmd", arg: 1, scope: !6966, file: !6967, line: 356, type: !1935)
!6972 = !DILocalVariable(name: "vma", arg: 2, scope: !6966, file: !6967, line: 357, type: !1802)
!6973 = !DILocation(line: 356, column: 54, scope: !6966)
!6974 = !DILocation(line: 357, column: 26, scope: !6966)
!6975 = !DILocation(line: 359, column: 2, scope: !6966)
!6976 = distinct !DISubprogram(name: "spin_unlock", scope: !6977, file: !6977, line: 389, type: !6978, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6980)
!6977 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6978 = !DISubroutineType(types: !6979)
!6979 = !{null, !1963}
!6980 = !{!6981}
!6981 = !DILocalVariable(name: "lock", arg: 1, scope: !6976, file: !6977, line: 389, type: !1963)
!6982 = !DILocation(line: 389, column: 53, scope: !6976)
!6983 = !DILocation(line: 391, column: 2, scope: !6976)
!6984 = !DILocation(line: 392, column: 1, scope: !6976)
!6985 = distinct !DISubprogram(name: "pte_offset_map_lock", scope: !1796, file: !1796, line: 2940, type: !6986, scopeLine: 2942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6989)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{!1961, !681, !1935, !45, !6988}
!6988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!6989 = !{!6990, !6991, !6992, !6993, !6994}
!6990 = !DILocalVariable(name: "mm", arg: 1, scope: !6985, file: !1796, line: 2940, type: !681)
!6991 = !DILocalVariable(name: "pmd", arg: 2, scope: !6985, file: !1796, line: 2940, type: !1935)
!6992 = !DILocalVariable(name: "addr", arg: 3, scope: !6985, file: !1796, line: 2941, type: !45)
!6993 = !DILocalVariable(name: "ptlp", arg: 4, scope: !6985, file: !1796, line: 2941, type: !6988)
!6994 = !DILocalVariable(name: "pte", scope: !6985, file: !1796, line: 2943, type: !1961)
!6995 = !DILocation(line: 2940, column: 60, scope: !6985)
!6996 = !DILocation(line: 2940, column: 71, scope: !6985)
!6997 = !DILocation(line: 2941, column: 18, scope: !6985)
!6998 = !DILocation(line: 2941, column: 37, scope: !6985)
!6999 = !DILocation(line: 2943, column: 2, scope: !6985)
!7000 = !DILocation(line: 2943, column: 9, scope: !6985)
!7001 = !DILocation(line: 2945, column: 2, scope: !6985)
!7002 = !DILocation(line: 2946, column: 9, scope: !6985)
!7003 = !DILocation(line: 2947, column: 1, scope: !6985)
!7004 = !DILocation(line: 2946, column: 2, scope: !6985)
!7005 = distinct !DISubprogram(name: "ptep_get", scope: !7006, file: !7006, line: 282, type: !7007, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7009)
!7006 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!7007 = !DISubroutineType(types: !7008)
!7008 = !{!1952, !1961}
!7009 = !{!7010}
!7010 = !DILocalVariable(name: "ptep", arg: 1, scope: !7005, file: !7006, line: 282, type: !1961)
!7011 = !DILocation(line: 282, column: 37, scope: !7005)
!7012 = !DILocation(line: 284, column: 9, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !7005, file: !7006, line: 284, column: 9)
!7014 = !DILocation(line: 284, column: 9, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7013, file: !7006, line: 284, column: 9)
!7016 = !DILocation(line: 284, column: 2, scope: !7005)
!7017 = distinct !DISubprogram(name: "pte_none_mostly", scope: !7018, file: !7018, line: 482, type: !7019, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7021)
!7018 = !DIFile(filename: "./include/linux/swapops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "419a3b3a4a5151a11499b62fe534498e")
!7019 = !DISubroutineType(types: !7020)
!7020 = !{!28, !1952}
!7021 = !{!7022}
!7022 = !DILocalVariable(name: "pte", arg: 1, scope: !7017, file: !7018, line: 482, type: !1952)
!7023 = !DILocation(line: 482, column: 41, scope: !7017)
!7024 = !DILocation(line: 484, column: 9, scope: !7017)
!7025 = !DILocation(line: 484, column: 23, scope: !7017)
!7026 = !DILocation(line: 484, column: 26, scope: !7017)
!7027 = !DILocation(line: 484, column: 2, scope: !7017)
!7028 = distinct !DISubprogram(name: "__mincore_unmapped_range", scope: !3, file: !3, line: 72, type: !7029, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7031)
!7029 = !DISubroutineType(types: !7030)
!7030 = !{!28, !45, !45, !1802, !359}
!7031 = !{!7032, !7033, !7034, !7035, !7036, !7037, !7038}
!7032 = !DILocalVariable(name: "addr", arg: 1, scope: !7028, file: !3, line: 72, type: !45)
!7033 = !DILocalVariable(name: "end", arg: 2, scope: !7028, file: !3, line: 72, type: !45)
!7034 = !DILocalVariable(name: "vma", arg: 3, scope: !7028, file: !3, line: 73, type: !1802)
!7035 = !DILocalVariable(name: "vec", arg: 4, scope: !7028, file: !3, line: 73, type: !359)
!7036 = !DILocalVariable(name: "nr", scope: !7028, file: !3, line: 75, type: !45)
!7037 = !DILocalVariable(name: "i", scope: !7028, file: !3, line: 76, type: !28)
!7038 = !DILocalVariable(name: "pgoff", scope: !7039, file: !3, line: 79, type: !45)
!7039 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 78, column: 20)
!7040 = distinct !DILexicalBlock(scope: !7028, file: !3, line: 78, column: 6)
!7041 = !DILocation(line: 72, column: 51, scope: !7028)
!7042 = !DILocation(line: 72, column: 71, scope: !7028)
!7043 = !DILocation(line: 73, column: 28, scope: !7028)
!7044 = !DILocation(line: 73, column: 48, scope: !7028)
!7045 = !DILocation(line: 75, column: 2, scope: !7028)
!7046 = !DILocation(line: 75, column: 16, scope: !7028)
!7047 = !DILocation(line: 75, column: 22, scope: !7028)
!7048 = !DILocation(line: 75, column: 28, scope: !7028)
!7049 = !DILocation(line: 75, column: 26, scope: !7028)
!7050 = !DILocation(line: 75, column: 34, scope: !7028)
!7051 = !DILocation(line: 76, column: 2, scope: !7028)
!7052 = !DILocation(line: 76, column: 6, scope: !7028)
!7053 = !DILocation(line: 78, column: 6, scope: !7040)
!7054 = !DILocation(line: 78, column: 11, scope: !7040)
!7055 = !DILocation(line: 78, column: 6, scope: !7028)
!7056 = !DILocation(line: 79, column: 3, scope: !7039)
!7057 = !DILocation(line: 79, column: 11, scope: !7039)
!7058 = !DILocation(line: 81, column: 29, scope: !7039)
!7059 = !DILocation(line: 81, column: 34, scope: !7039)
!7060 = !DILocation(line: 81, column: 11, scope: !7039)
!7061 = !DILocation(line: 81, column: 9, scope: !7039)
!7062 = !DILocation(line: 82, column: 10, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7039, file: !3, line: 82, column: 3)
!7064 = !DILocation(line: 82, column: 8, scope: !7063)
!7065 = !DILocation(line: 82, column: 15, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 82, column: 3)
!7067 = !DILocation(line: 82, column: 19, scope: !7066)
!7068 = !DILocation(line: 82, column: 17, scope: !7066)
!7069 = !DILocation(line: 82, column: 3, scope: !7063)
!7070 = !DILocation(line: 83, column: 26, scope: !7066)
!7071 = !DILocation(line: 83, column: 31, scope: !7066)
!7072 = !DILocation(line: 83, column: 40, scope: !7066)
!7073 = !DILocation(line: 83, column: 51, scope: !7066)
!7074 = !DILocation(line: 83, column: 13, scope: !7066)
!7075 = !DILocation(line: 83, column: 4, scope: !7066)
!7076 = !DILocation(line: 83, column: 8, scope: !7066)
!7077 = !DILocation(line: 83, column: 11, scope: !7066)
!7078 = !DILocation(line: 82, column: 24, scope: !7066)
!7079 = !DILocation(line: 82, column: 33, scope: !7066)
!7080 = !DILocation(line: 82, column: 3, scope: !7066)
!7081 = distinct !{!7081, !7069, !7082, !6396, !6397}
!7082 = !DILocation(line: 83, column: 56, scope: !7063)
!7083 = !DILocation(line: 84, column: 2, scope: !7040)
!7084 = !DILocation(line: 84, column: 2, scope: !7039)
!7085 = !DILocation(line: 85, column: 10, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7087, file: !3, line: 85, column: 3)
!7087 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 84, column: 9)
!7088 = !DILocation(line: 85, column: 8, scope: !7086)
!7089 = !DILocation(line: 85, column: 15, scope: !7090)
!7090 = distinct !DILexicalBlock(scope: !7086, file: !3, line: 85, column: 3)
!7091 = !DILocation(line: 85, column: 19, scope: !7090)
!7092 = !DILocation(line: 85, column: 17, scope: !7090)
!7093 = !DILocation(line: 85, column: 3, scope: !7086)
!7094 = !DILocation(line: 86, column: 4, scope: !7090)
!7095 = !DILocation(line: 86, column: 8, scope: !7090)
!7096 = !DILocation(line: 86, column: 11, scope: !7090)
!7097 = !DILocation(line: 85, column: 24, scope: !7090)
!7098 = !DILocation(line: 85, column: 3, scope: !7090)
!7099 = distinct !{!7099, !7093, !7100, !6396, !6397}
!7100 = !DILocation(line: 86, column: 13, scope: !7086)
!7101 = !DILocation(line: 88, column: 9, scope: !7028)
!7102 = !DILocation(line: 89, column: 1, scope: !7028)
!7103 = !DILocation(line: 88, column: 2, scope: !7028)
!7104 = distinct !DISubprogram(name: "pte_present", scope: !7105, file: !7105, line: 950, type: !7019, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7106)
!7105 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!7106 = !{!7107}
!7107 = !DILocalVariable(name: "a", arg: 1, scope: !7104, file: !7105, line: 950, type: !1952)
!7108 = !DILocation(line: 950, column: 37, scope: !7104)
!7109 = !DILocation(line: 952, column: 9, scope: !7104)
!7110 = !DILocation(line: 952, column: 22, scope: !7104)
!7111 = !DILocation(line: 952, column: 2, scope: !7104)
!7112 = distinct !DISubprogram(name: "pte_to_swp_entry", scope: !7018, file: !7018, line: 133, type: !7113, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7115)
!7113 = !DISubroutineType(types: !7114)
!7114 = !{!2046, !1952}
!7115 = !{!7116, !7117}
!7116 = !DILocalVariable(name: "pte", arg: 1, scope: !7112, file: !7018, line: 133, type: !1952)
!7117 = !DILocalVariable(name: "arch_entry", scope: !7112, file: !7018, line: 135, type: !2046)
!7118 = !DILocation(line: 133, column: 50, scope: !7112)
!7119 = !DILocation(line: 135, column: 2, scope: !7112)
!7120 = !DILocation(line: 135, column: 14, scope: !7112)
!7121 = !DILocation(line: 137, column: 8, scope: !7112)
!7122 = !DILocation(line: 138, column: 15, scope: !7112)
!7123 = !DILocation(line: 139, column: 19, scope: !7112)
!7124 = !DILocation(line: 139, column: 43, scope: !7112)
!7125 = !DILocation(line: 139, column: 9, scope: !7112)
!7126 = !DILocation(line: 140, column: 1, scope: !7112)
!7127 = distinct !DISubprogram(name: "non_swap_entry", scope: !7018, file: !7018, line: 581, type: !7128, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7130)
!7128 = !DISubroutineType(types: !7129)
!7129 = !{!28, !2046}
!7130 = !{!7131}
!7131 = !DILocalVariable(name: "entry", arg: 1, scope: !7127, file: !7018, line: 581, type: !2046)
!7132 = !DILocation(line: 581, column: 46, scope: !7127)
!7133 = !DILocation(line: 583, column: 9, scope: !7127)
!7134 = !DILocation(line: 583, column: 25, scope: !7127)
!7135 = !DILocation(line: 583, column: 2, scope: !7127)
!7136 = distinct !DISubprogram(name: "mincore_page", scope: !3, file: !3, line: 52, type: !7137, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7139)
!7137 = !DISubroutineType(types: !7138)
!7138 = !{!93, !1672, !45}
!7139 = !{!7140, !7141, !7142, !7143}
!7140 = !DILocalVariable(name: "mapping", arg: 1, scope: !7136, file: !3, line: 52, type: !1672)
!7141 = !DILocalVariable(name: "index", arg: 2, scope: !7136, file: !3, line: 52, type: !45)
!7142 = !DILocalVariable(name: "present", scope: !7136, file: !3, line: 54, type: !93)
!7143 = !DILocalVariable(name: "folio", scope: !7136, file: !3, line: 55, type: !2020)
!7144 = !DILocation(line: 52, column: 57, scope: !7136)
!7145 = !DILocation(line: 52, column: 74, scope: !7136)
!7146 = !DILocation(line: 54, column: 2, scope: !7136)
!7147 = !DILocation(line: 54, column: 16, scope: !7136)
!7148 = !DILocation(line: 55, column: 2, scope: !7136)
!7149 = !DILocation(line: 55, column: 16, scope: !7136)
!7150 = !DILocation(line: 63, column: 35, scope: !7136)
!7151 = !DILocation(line: 63, column: 44, scope: !7136)
!7152 = !DILocation(line: 63, column: 10, scope: !7136)
!7153 = !DILocation(line: 63, column: 8, scope: !7136)
!7154 = !DILocation(line: 64, column: 14, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7136, file: !3, line: 64, column: 6)
!7156 = !DILocation(line: 64, column: 7, scope: !7155)
!7157 = !DILocation(line: 64, column: 6, scope: !7136)
!7158 = !DILocation(line: 65, column: 33, scope: !7159)
!7159 = distinct !DILexicalBlock(scope: !7155, file: !3, line: 64, column: 22)
!7160 = !DILocation(line: 65, column: 13, scope: !7159)
!7161 = !DILocation(line: 65, column: 11, scope: !7159)
!7162 = !DILocation(line: 66, column: 13, scope: !7159)
!7163 = !DILocation(line: 66, column: 3, scope: !7159)
!7164 = !DILocation(line: 67, column: 2, scope: !7159)
!7165 = !DILocation(line: 69, column: 9, scope: !7136)
!7166 = !DILocation(line: 70, column: 1, scope: !7136)
!7167 = !DILocation(line: 69, column: 2, scope: !7136)
!7168 = distinct !DISubprogram(name: "swp_type", scope: !7018, file: !7018, line: 98, type: !7169, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7171)
!7169 = !DISubroutineType(types: !7170)
!7170 = !{!7, !2046}
!7171 = !{!7172}
!7172 = !DILocalVariable(name: "entry", arg: 1, scope: !7168, file: !7018, line: 98, type: !2046)
!7173 = !DILocation(line: 98, column: 45, scope: !7168)
!7174 = !DILocation(line: 100, column: 16, scope: !7168)
!7175 = !DILocation(line: 100, column: 20, scope: !7168)
!7176 = !DILocation(line: 100, column: 9, scope: !7168)
!7177 = !DILocation(line: 100, column: 2, scope: !7168)
!7178 = distinct !DISubprogram(name: "swp_offset", scope: !7018, file: !7018, line: 107, type: !7179, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7181)
!7179 = !DISubroutineType(types: !7180)
!7180 = !{!45, !2046}
!7181 = !{!7182}
!7182 = !DILocalVariable(name: "entry", arg: 1, scope: !7178, file: !7018, line: 107, type: !2046)
!7183 = !DILocation(line: 107, column: 46, scope: !7178)
!7184 = !DILocation(line: 109, column: 15, scope: !7178)
!7185 = !DILocation(line: 109, column: 19, scope: !7178)
!7186 = !DILocation(line: 109, column: 2, scope: !7178)
!7187 = distinct !DISubprogram(name: "pte_unmap", scope: !7006, file: !7006, line: 111, type: !7188, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7190)
!7188 = !DISubroutineType(types: !7189)
!7189 = !{null, !1961}
!7190 = !{!7191}
!7191 = !DILocalVariable(name: "pte", arg: 1, scope: !7187, file: !7006, line: 111, type: !1961)
!7192 = !DILocation(line: 111, column: 37, scope: !7187)
!7193 = !DILocation(line: 113, column: 2, scope: !7187)
!7194 = !DILocation(line: 114, column: 1, scope: !7187)
!7195 = distinct !DISubprogram(name: "__might_resched", scope: !7196, file: !7196, line: 184, type: !7197, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7199)
!7196 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!7197 = !DISubroutineType(types: !7198)
!7198 = !{null, !22, !28, !7}
!7199 = !{!7200, !7201, !7202}
!7200 = !DILocalVariable(name: "file", arg: 1, scope: !7195, file: !7196, line: 184, type: !22)
!7201 = !DILocalVariable(name: "line", arg: 2, scope: !7195, file: !7196, line: 184, type: !28)
!7202 = !DILocalVariable(name: "offsets", arg: 3, scope: !7195, file: !7196, line: 185, type: !7)
!7203 = !DILocation(line: 184, column: 50, scope: !7195)
!7204 = !DILocation(line: 184, column: 60, scope: !7195)
!7205 = !DILocation(line: 185, column: 23, scope: !7195)
!7206 = !DILocation(line: 185, column: 34, scope: !7195)
!7207 = !DILocation(line: 2104, column: 9, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !6210, file: !365, line: 2104, column: 9)
!7209 = !DILocation(line: 2104, column: 9, scope: !6210)
!7210 = !DILocation(line: 2104, column: 2, scope: !6210)
!7211 = !DISubprogram(name: "_raw_spin_unlock", scope: !7212, file: !7212, line: 39, type: !7213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7212 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7213 = !DISubroutineType(types: !7214)
!7214 = !{null, !7215}
!7215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!7216 = !DISubprogram(name: "__pte_offset_map_lock", scope: !1796, file: !1796, line: 2938, type: !6986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7217 = distinct !DISubprogram(name: "pte_none", scope: !7105, file: !7105, line: 931, type: !7019, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7218)
!7218 = !{!7219}
!7219 = !DILocalVariable(name: "pte", arg: 1, scope: !7217, file: !7105, line: 931, type: !1952)
!7220 = !DILocation(line: 931, column: 34, scope: !7217)
!7221 = !DILocation(line: 933, column: 15, scope: !7217)
!7222 = !DILocation(line: 933, column: 19, scope: !7217)
!7223 = !DILocation(line: 933, column: 9, scope: !7217)
!7224 = !DILocation(line: 933, column: 2, scope: !7217)
!7225 = distinct !DISubprogram(name: "is_pte_marker", scope: !7018, file: !7018, line: 448, type: !7226, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7228)
!7226 = !DISubroutineType(types: !7227)
!7227 = !{!893, !1952}
!7228 = !{!7229}
!7229 = !DILocalVariable(name: "pte", arg: 1, scope: !7225, file: !7018, line: 448, type: !1952)
!7230 = !DILocation(line: 448, column: 40, scope: !7225)
!7231 = !DILocation(line: 450, column: 9, scope: !7225)
!7232 = !DILocation(line: 450, column: 26, scope: !7225)
!7233 = !DILocation(line: 450, column: 49, scope: !7225)
!7234 = !DILocation(line: 450, column: 29, scope: !7225)
!7235 = !DILocation(line: 0, scope: !7225)
!7236 = !DILocation(line: 450, column: 2, scope: !7225)
!7237 = distinct !DISubprogram(name: "is_swap_pte", scope: !7018, file: !7018, line: 124, type: !7019, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7238)
!7238 = !{!7239}
!7239 = !DILocalVariable(name: "pte", arg: 1, scope: !7237, file: !7018, line: 124, type: !1952)
!7240 = !DILocation(line: 124, column: 37, scope: !7237)
!7241 = !DILocation(line: 126, column: 10, scope: !7237)
!7242 = !DILocation(line: 126, column: 24, scope: !7237)
!7243 = !DILocation(line: 126, column: 28, scope: !7237)
!7244 = !DILocation(line: 126, column: 27, scope: !7237)
!7245 = !DILocation(line: 0, scope: !7237)
!7246 = !DILocation(line: 126, column: 2, scope: !7237)
!7247 = distinct !DISubprogram(name: "is_pte_marker_entry", scope: !7018, file: !7018, line: 438, type: !7248, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7250)
!7248 = !DISubroutineType(types: !7249)
!7249 = !{!893, !2046}
!7250 = !{!7251}
!7251 = !DILocalVariable(name: "entry", arg: 1, scope: !7247, file: !7018, line: 438, type: !2046)
!7252 = !DILocation(line: 438, column: 52, scope: !7247)
!7253 = !DILocation(line: 440, column: 9, scope: !7247)
!7254 = !DILocation(line: 440, column: 25, scope: !7247)
!7255 = !DILocation(line: 440, column: 2, scope: !7247)
!7256 = distinct !DISubprogram(name: "linear_page_index", scope: !2100, file: !2100, line: 981, type: !7257, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7259)
!7257 = !DISubroutineType(types: !7258)
!7258 = !{!45, !1802, !45}
!7259 = !{!7260, !7261, !7262}
!7260 = !DILocalVariable(name: "vma", arg: 1, scope: !7256, file: !2100, line: 981, type: !1802)
!7261 = !DILocalVariable(name: "address", arg: 2, scope: !7256, file: !2100, line: 982, type: !45)
!7262 = !DILocalVariable(name: "pgoff", scope: !7256, file: !2100, line: 984, type: !45)
!7263 = !DILocation(line: 981, column: 64, scope: !7256)
!7264 = !DILocation(line: 982, column: 20, scope: !7256)
!7265 = !DILocation(line: 984, column: 2, scope: !7256)
!7266 = !DILocation(line: 984, column: 10, scope: !7256)
!7267 = !DILocation(line: 985, column: 6, scope: !7268)
!7268 = distinct !DILexicalBlock(scope: !7256, file: !2100, line: 985, column: 6)
!7269 = !DILocation(line: 985, column: 6, scope: !7256)
!7270 = !DILocation(line: 986, column: 32, scope: !7268)
!7271 = !DILocation(line: 986, column: 37, scope: !7268)
!7272 = !DILocation(line: 986, column: 10, scope: !7268)
!7273 = !DILocation(line: 986, column: 3, scope: !7268)
!7274 = !DILocation(line: 987, column: 11, scope: !7256)
!7275 = !DILocation(line: 987, column: 21, scope: !7256)
!7276 = !DILocation(line: 987, column: 26, scope: !7256)
!7277 = !DILocation(line: 987, column: 19, scope: !7256)
!7278 = !DILocation(line: 987, column: 36, scope: !7256)
!7279 = !DILocation(line: 987, column: 8, scope: !7256)
!7280 = !DILocation(line: 988, column: 11, scope: !7256)
!7281 = !DILocation(line: 988, column: 16, scope: !7256)
!7282 = !DILocation(line: 988, column: 8, scope: !7256)
!7283 = !DILocation(line: 989, column: 9, scope: !7256)
!7284 = !DILocation(line: 989, column: 2, scope: !7256)
!7285 = !DILocation(line: 990, column: 1, scope: !7256)
!7286 = distinct !DISubprogram(name: "is_vm_hugetlb_page", scope: !7287, file: !7287, line: 9, type: !6664, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7288)
!7287 = !DIFile(filename: "./include/linux/hugetlb_inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a0f0e65915fb82cb2c0852c7ba29cf8a")
!7288 = !{!7289}
!7289 = !DILocalVariable(name: "vma", arg: 1, scope: !7286, file: !7287, line: 9, type: !1802)
!7290 = !DILocation(line: 9, column: 62, scope: !7286)
!7291 = !DILocation(line: 11, column: 12, scope: !7286)
!7292 = !DILocation(line: 11, column: 17, scope: !7286)
!7293 = !DILocation(line: 11, column: 26, scope: !7286)
!7294 = !DILocation(line: 11, column: 10, scope: !7286)
!7295 = !DILocation(line: 11, column: 9, scope: !7286)
!7296 = !DILocation(line: 11, column: 2, scope: !7286)
!7297 = !DISubprogram(name: "linear_hugepage_index", scope: !2100, file: !2100, line: 978, type: !7257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7298 = distinct !DISubprogram(name: "pte_flags", scope: !1817, file: !1817, line: 483, type: !7299, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7301)
!7299 = !DISubroutineType(types: !7300)
!7300 = !{!1956, !1952}
!7301 = !{!7302}
!7302 = !DILocalVariable(name: "pte", arg: 1, scope: !7298, file: !1817, line: 483, type: !1952)
!7303 = !DILocation(line: 483, column: 40, scope: !7298)
!7304 = !DILocation(line: 485, column: 9, scope: !7298)
!7305 = !DILocation(line: 485, column: 29, scope: !7298)
!7306 = !DILocation(line: 485, column: 2, scope: !7298)
!7307 = distinct !DISubprogram(name: "native_pte_val", scope: !1817, file: !1817, line: 478, type: !7299, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7308)
!7308 = !{!7309}
!7309 = !DILocalVariable(name: "pte", arg: 1, scope: !7307, file: !1817, line: 478, type: !1952)
!7310 = !DILocation(line: 478, column: 45, scope: !7307)
!7311 = !DILocation(line: 480, column: 13, scope: !7307)
!7312 = !DILocation(line: 480, column: 2, scope: !7307)
!7313 = distinct !DISubprogram(name: "pte_swp_clear_flags", scope: !7018, file: !7018, line: 72, type: !7314, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7316)
!7314 = !DISubroutineType(types: !7315)
!7315 = !{!1952, !1952}
!7316 = !{!7317}
!7317 = !DILocalVariable(name: "pte", arg: 1, scope: !7313, file: !7018, line: 72, type: !1952)
!7318 = !DILocation(line: 72, column: 47, scope: !7313)
!7319 = !DILocation(line: 74, column: 6, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7313, file: !7018, line: 74, column: 6)
!7321 = !DILocation(line: 74, column: 6, scope: !7313)
!7322 = !DILocation(line: 75, column: 9, scope: !7320)
!7323 = !DILocation(line: 75, column: 3, scope: !7320)
!7324 = !DILocation(line: 76, column: 6, scope: !7325)
!7325 = distinct !DILexicalBlock(scope: !7313, file: !7018, line: 76, column: 6)
!7326 = !DILocation(line: 76, column: 6, scope: !7313)
!7327 = !DILocation(line: 77, column: 9, scope: !7325)
!7328 = !DILocation(line: 77, column: 3, scope: !7325)
!7329 = !DILocation(line: 78, column: 6, scope: !7330)
!7330 = distinct !DILexicalBlock(scope: !7313, file: !7018, line: 78, column: 6)
!7331 = !DILocation(line: 78, column: 6, scope: !7313)
!7332 = !DILocation(line: 79, column: 9, scope: !7330)
!7333 = !DILocation(line: 79, column: 3, scope: !7330)
!7334 = !DILocation(line: 80, column: 9, scope: !7313)
!7335 = !DILocation(line: 80, column: 2, scope: !7313)
!7336 = distinct !DISubprogram(name: "swp_entry", scope: !7018, file: !7018, line: 86, type: !7337, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7339)
!7337 = !DISubroutineType(types: !7338)
!7338 = !{!2046, !45, !45}
!7339 = !{!7340, !7341, !7342}
!7340 = !DILocalVariable(name: "type", arg: 1, scope: !7336, file: !7018, line: 86, type: !45)
!7341 = !DILocalVariable(name: "offset", arg: 2, scope: !7336, file: !7018, line: 86, type: !45)
!7342 = !DILocalVariable(name: "ret", scope: !7336, file: !7018, line: 88, type: !2046)
!7343 = !DILocation(line: 86, column: 51, scope: !7336)
!7344 = !DILocation(line: 86, column: 65, scope: !7336)
!7345 = !DILocation(line: 88, column: 14, scope: !7336)
!7346 = !DILocation(line: 90, column: 13, scope: !7336)
!7347 = !DILocation(line: 90, column: 18, scope: !7336)
!7348 = !DILocation(line: 90, column: 40, scope: !7336)
!7349 = !DILocation(line: 90, column: 47, scope: !7336)
!7350 = !DILocation(line: 90, column: 37, scope: !7336)
!7351 = !DILocation(line: 90, column: 6, scope: !7336)
!7352 = !DILocation(line: 90, column: 10, scope: !7336)
!7353 = !DILocation(line: 91, column: 2, scope: !7336)
!7354 = distinct !DISubprogram(name: "pte_swp_exclusive", scope: !7105, file: !7105, line: 1519, type: !7019, scopeLine: 1520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7355)
!7355 = !{!7356}
!7356 = !DILocalVariable(name: "pte", arg: 1, scope: !7354, file: !7105, line: 1519, type: !1952)
!7357 = !DILocation(line: 1519, column: 43, scope: !7354)
!7358 = !DILocation(line: 1521, column: 9, scope: !7354)
!7359 = !DILocation(line: 1521, column: 24, scope: !7354)
!7360 = !DILocation(line: 1521, column: 2, scope: !7354)
!7361 = distinct !DISubprogram(name: "pte_swp_clear_exclusive", scope: !7105, file: !7105, line: 1524, type: !7314, scopeLine: 1525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7362)
!7362 = !{!7363}
!7363 = !DILocalVariable(name: "pte", arg: 1, scope: !7361, file: !7105, line: 1524, type: !1952)
!7364 = !DILocation(line: 1524, column: 51, scope: !7361)
!7365 = !DILocation(line: 1526, column: 9, scope: !7361)
!7366 = !DILocation(line: 1526, column: 2, scope: !7361)
!7367 = distinct !DISubprogram(name: "pte_swp_soft_dirty", scope: !7105, file: !7105, line: 1535, type: !7019, scopeLine: 1536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7368)
!7368 = !{!7369}
!7369 = !DILocalVariable(name: "pte", arg: 1, scope: !7367, file: !7105, line: 1535, type: !1952)
!7370 = !DILocation(line: 1535, column: 44, scope: !7367)
!7371 = !DILocation(line: 1537, column: 9, scope: !7367)
!7372 = !DILocation(line: 1537, column: 24, scope: !7367)
!7373 = !DILocation(line: 1537, column: 2, scope: !7367)
!7374 = distinct !DISubprogram(name: "pte_swp_clear_soft_dirty", scope: !7105, file: !7105, line: 1540, type: !7314, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7375)
!7375 = !{!7376}
!7376 = !DILocalVariable(name: "pte", arg: 1, scope: !7374, file: !7105, line: 1540, type: !1952)
!7377 = !DILocation(line: 1540, column: 52, scope: !7374)
!7378 = !DILocation(line: 1542, column: 9, scope: !7374)
!7379 = !DILocation(line: 1542, column: 2, scope: !7374)
!7380 = distinct !DISubprogram(name: "pte_swp_uffd_wp", scope: !7381, file: !7381, line: 40, type: !7019, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7382)
!7381 = !DIFile(filename: "./include/asm-generic/pgtable_uffd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aed85830f0b2091f635e1024dc611fae")
!7382 = !{!7383}
!7383 = !DILocalVariable(name: "pte", arg: 1, scope: !7380, file: !7381, line: 40, type: !1952)
!7384 = !DILocation(line: 40, column: 50, scope: !7380)
!7385 = !DILocation(line: 42, column: 2, scope: !7380)
!7386 = distinct !DISubprogram(name: "pte_swp_clear_uffd_wp", scope: !7381, file: !7381, line: 45, type: !7314, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7387)
!7387 = !{!7388}
!7388 = !DILocalVariable(name: "pte", arg: 1, scope: !7386, file: !7381, line: 45, type: !1952)
!7389 = !DILocation(line: 45, column: 58, scope: !7386)
!7390 = !DILocation(line: 47, column: 9, scope: !7386)
!7391 = !DILocation(line: 47, column: 2, scope: !7386)
!7392 = distinct !DISubprogram(name: "pte_clear_flags", scope: !7105, file: !7105, line: 321, type: !7393, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7395)
!7393 = !DISubroutineType(types: !7394)
!7394 = !{!1952, !1952, !1956}
!7395 = !{!7396, !7397, !7398}
!7396 = !DILocalVariable(name: "pte", arg: 1, scope: !7392, file: !7105, line: 321, type: !1952)
!7397 = !DILocalVariable(name: "clear", arg: 2, scope: !7392, file: !7105, line: 321, type: !1956)
!7398 = !DILocalVariable(name: "v", scope: !7392, file: !7105, line: 323, type: !1956)
!7399 = !DILocation(line: 321, column: 43, scope: !7392)
!7400 = !DILocation(line: 321, column: 57, scope: !7392)
!7401 = !DILocation(line: 323, column: 2, scope: !7392)
!7402 = !DILocation(line: 323, column: 11, scope: !7392)
!7403 = !DILocation(line: 323, column: 15, scope: !7392)
!7404 = !DILocation(line: 325, column: 25, scope: !7392)
!7405 = !DILocation(line: 325, column: 30, scope: !7392)
!7406 = !DILocation(line: 325, column: 29, scope: !7392)
!7407 = !DILocation(line: 325, column: 27, scope: !7392)
!7408 = !DILocation(line: 325, column: 9, scope: !7392)
!7409 = !DILocation(line: 326, column: 1, scope: !7392)
!7410 = distinct !DISubprogram(name: "native_make_pte", scope: !1817, file: !1817, line: 473, type: !7411, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7413)
!7411 = !DISubroutineType(types: !7412)
!7412 = !{!1952, !1956}
!7413 = !{!7414}
!7414 = !DILocalVariable(name: "val", arg: 1, scope: !7410, file: !1817, line: 473, type: !1956)
!7415 = !DILocation(line: 473, column: 46, scope: !7410)
!7416 = !DILocation(line: 475, column: 17, scope: !7410)
!7417 = !DILocation(line: 475, column: 26, scope: !7410)
!7418 = !DILocation(line: 475, column: 2, scope: !7410)
!7419 = !DISubprogram(name: "filemap_get_incore_folio", scope: !7420, file: !7420, line: 44, type: !7421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7420 = !DIFile(filename: "mm/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ac5630c8951ad9ed41cb41f68ad78f1")
!7421 = !DISubroutineType(types: !7422)
!7422 = !{!2020, !1672, !45}
!7423 = distinct !DISubprogram(name: "IS_ERR", scope: !7424, file: !7424, line: 59, type: !7425, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7427)
!7424 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!7425 = !DISubroutineType(types: !7426)
!7426 = !{!893, !2634}
!7427 = !{!7428}
!7428 = !DILocalVariable(name: "ptr", arg: 1, scope: !7423, file: !7424, line: 59, type: !2634)
!7429 = !DILocation(line: 59, column: 60, scope: !7423)
!7430 = !DILocation(line: 61, column: 9, scope: !7423)
!7431 = !DILocation(line: 61, column: 2, scope: !7423)
!7432 = distinct !DISubprogram(name: "folio_test_uptodate", scope: !319, file: !319, line: 725, type: !7433, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7435)
!7433 = !DISubroutineType(types: !7434)
!7434 = !{!893, !2020}
!7435 = !{!7436, !7437}
!7436 = !DILocalVariable(name: "folio", arg: 1, scope: !7432, file: !319, line: 725, type: !2020)
!7437 = !DILocalVariable(name: "ret", scope: !7432, file: !319, line: 727, type: !893)
!7438 = !DILocation(line: 725, column: 54, scope: !7432)
!7439 = !DILocation(line: 727, column: 2, scope: !7432)
!7440 = !DILocation(line: 727, column: 7, scope: !7432)
!7441 = !DILocation(line: 727, column: 13, scope: !7432)
!7442 = !DILocation(line: 736, column: 6, scope: !7443)
!7443 = distinct !DILexicalBlock(scope: !7432, file: !319, line: 736, column: 6)
!7444 = !DILocation(line: 736, column: 6, scope: !7432)
!7445 = !DILocation(line: 737, column: 3, scope: !7443)
!7446 = !DILocation(line: 737, column: 3, scope: !7447)
!7447 = distinct !DILexicalBlock(scope: !7443, file: !319, line: 737, column: 3)
!7448 = !DILocation(line: 737, column: 3, scope: !7449)
!7449 = distinct !DILexicalBlock(scope: !7447, file: !319, line: 737, column: 3)
!7450 = !DILocation(line: 737, column: 3, scope: !7451)
!7451 = distinct !DILexicalBlock(scope: !7447, file: !319, line: 737, column: 3)
!7452 = !DILocation(line: 737, column: 3, scope: !7453)
!7453 = distinct !DILexicalBlock(scope: !7451, file: !319, line: 737, column: 3)
!7454 = !{i64 2151123320}
!7455 = !DILocation(line: 739, column: 9, scope: !7432)
!7456 = !DILocation(line: 740, column: 1, scope: !7432)
!7457 = !DILocation(line: 739, column: 2, scope: !7432)
!7458 = distinct !DISubprogram(name: "folio_put", scope: !1796, file: !1796, line: 1478, type: !2136, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7459)
!7459 = !{!7460}
!7460 = !DILocalVariable(name: "folio", arg: 1, scope: !7458, file: !1796, line: 1478, type: !2020)
!7461 = !DILocation(line: 1478, column: 44, scope: !7458)
!7462 = !DILocation(line: 1480, column: 25, scope: !7463)
!7463 = distinct !DILexicalBlock(scope: !7458, file: !1796, line: 1480, column: 6)
!7464 = !DILocation(line: 1480, column: 6, scope: !7463)
!7465 = !DILocation(line: 1480, column: 6, scope: !7458)
!7466 = !DILocation(line: 1481, column: 15, scope: !7463)
!7467 = !DILocation(line: 1481, column: 3, scope: !7463)
!7468 = !DILocation(line: 1482, column: 1, scope: !7458)
!7469 = distinct !DISubprogram(name: "_test_bit", scope: !7470, file: !7470, line: 139, type: !7471, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7476)
!7470 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7471 = !DISubroutineType(types: !7472)
!7472 = !{!893, !45, !7473}
!7473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7474, size: 64)
!7474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7475)
!7475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!7476 = !{!7477, !7478}
!7477 = !DILocalVariable(name: "nr", arg: 1, scope: !7469, file: !7470, line: 139, type: !45)
!7478 = !DILocalVariable(name: "addr", arg: 2, scope: !7469, file: !7470, line: 139, type: !7473)
!7479 = !DILocation(line: 139, column: 25, scope: !7469)
!7480 = !DILocation(line: 139, column: 59, scope: !7469)
!7481 = !DILocation(line: 141, column: 25, scope: !7469)
!7482 = !DILocation(line: 141, column: 32, scope: !7469)
!7483 = !DILocation(line: 141, column: 30, scope: !7469)
!7484 = !DILocation(line: 141, column: 2, scope: !7469)
!7485 = !DILocation(line: 142, column: 23, scope: !7469)
!7486 = !DILocation(line: 142, column: 27, scope: !7469)
!7487 = !DILocation(line: 142, column: 9, scope: !7469)
!7488 = !DILocation(line: 142, column: 2, scope: !7469)
!7489 = distinct !DISubprogram(name: "folio_flags", scope: !319, file: !319, line: 308, type: !7490, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7492)
!7490 = !DISubroutineType(types: !7491)
!7491 = !{!4309, !2020, !7}
!7492 = !{!7493, !7494, !7495}
!7493 = !DILocalVariable(name: "folio", arg: 1, scope: !7489, file: !319, line: 308, type: !2020)
!7494 = !DILocalVariable(name: "n", arg: 2, scope: !7489, file: !319, line: 308, type: !7)
!7495 = !DILocalVariable(name: "page", scope: !7489, file: !319, line: 310, type: !1692)
!7496 = !DILocation(line: 308, column: 49, scope: !7489)
!7497 = !DILocation(line: 308, column: 65, scope: !7489)
!7498 = !DILocation(line: 310, column: 2, scope: !7489)
!7499 = !DILocation(line: 310, column: 15, scope: !7489)
!7500 = !DILocation(line: 310, column: 23, scope: !7489)
!7501 = !DILocation(line: 310, column: 30, scope: !7489)
!7502 = !DILocation(line: 314, column: 10, scope: !7489)
!7503 = !DILocation(line: 314, column: 15, scope: !7489)
!7504 = !DILocation(line: 314, column: 18, scope: !7489)
!7505 = !DILocation(line: 315, column: 1, scope: !7489)
!7506 = !DILocation(line: 314, column: 2, scope: !7489)
!7507 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7508, file: !7508, line: 66, type: !7509, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7514)
!7508 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7509 = !DISubroutineType(types: !7510)
!7510 = !{null, !7511, !41}
!7511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7512, size: 64)
!7512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7513)
!7513 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7514 = !{!7515, !7516}
!7515 = !DILocalVariable(name: "v", arg: 1, scope: !7507, file: !7508, line: 66, type: !7511)
!7516 = !DILocalVariable(name: "size", arg: 2, scope: !7507, file: !7508, line: 66, type: !41)
!7517 = !DILocation(line: 66, column: 73, scope: !7507)
!7518 = !DILocation(line: 66, column: 83, scope: !7507)
!7519 = !DILocation(line: 68, column: 19, scope: !7507)
!7520 = !DILocation(line: 68, column: 22, scope: !7507)
!7521 = !DILocation(line: 68, column: 2, scope: !7507)
!7522 = !DILocation(line: 69, column: 2, scope: !7507)
!7523 = !DILocation(line: 70, column: 1, scope: !7507)
!7524 = distinct !DISubprogram(name: "arch_test_bit", scope: !7525, file: !7525, line: 237, type: !7471, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7526)
!7525 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7526 = !{!7527, !7528}
!7527 = !DILocalVariable(name: "nr", arg: 1, scope: !7524, file: !7525, line: 237, type: !45)
!7528 = !DILocalVariable(name: "addr", arg: 2, scope: !7524, file: !7525, line: 237, type: !7473)
!7529 = !DILocation(line: 237, column: 29, scope: !7524)
!7530 = !DILocation(line: 237, column: 63, scope: !7524)
!7531 = !DILocation(line: 239, column: 30, scope: !7524)
!7532 = !DILocation(line: 239, column: 9, scope: !7524)
!7533 = !DILocation(line: 239, column: 54, scope: !7524)
!7534 = !DILocation(line: 239, column: 58, scope: !7524)
!7535 = !DILocation(line: 239, column: 36, scope: !7524)
!7536 = !DILocation(line: 240, column: 26, scope: !7524)
!7537 = !DILocation(line: 240, column: 30, scope: !7524)
!7538 = !DILocation(line: 240, column: 8, scope: !7524)
!7539 = !DILocation(line: 239, column: 2, scope: !7524)
!7540 = distinct !DISubprogram(name: "kasan_check_read", scope: !7541, file: !7541, line: 40, type: !7542, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7544)
!7541 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7542 = !DISubroutineType(types: !7543)
!7543 = !{!893, !7511, !7}
!7544 = !{!7545, !7546}
!7545 = !DILocalVariable(name: "p", arg: 1, scope: !7540, file: !7541, line: 40, type: !7511)
!7546 = !DILocalVariable(name: "size", arg: 2, scope: !7540, file: !7541, line: 40, type: !7)
!7547 = !DILocation(line: 40, column: 58, scope: !7540)
!7548 = !DILocation(line: 40, column: 74, scope: !7540)
!7549 = !DILocation(line: 42, column: 2, scope: !7540)
!7550 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7551, file: !7551, line: 229, type: !7552, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7554)
!7551 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7552 = !DISubroutineType(types: !7553)
!7553 = !{null, !7511, !41, !28}
!7554 = !{!7555, !7556, !7557}
!7555 = !DILocalVariable(name: "ptr", arg: 1, scope: !7550, file: !7551, line: 229, type: !7511)
!7556 = !DILocalVariable(name: "size", arg: 2, scope: !7550, file: !7551, line: 229, type: !41)
!7557 = !DILocalVariable(name: "type", arg: 3, scope: !7550, file: !7551, line: 230, type: !28)
!7558 = !DILocation(line: 229, column: 60, scope: !7550)
!7559 = !DILocation(line: 229, column: 72, scope: !7550)
!7560 = !DILocation(line: 230, column: 15, scope: !7550)
!7561 = !DILocation(line: 230, column: 23, scope: !7550)
!7562 = distinct !DISubprogram(name: "constant_test_bit", scope: !7525, file: !7525, line: 204, type: !7563, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7565)
!7563 = !DISubroutineType(types: !7564)
!7564 = !{!893, !361, !7473}
!7565 = !{!7566, !7567}
!7566 = !DILocalVariable(name: "nr", arg: 1, scope: !7562, file: !7525, line: 204, type: !361)
!7567 = !DILocalVariable(name: "addr", arg: 2, scope: !7562, file: !7525, line: 204, type: !7473)
!7568 = !DILocation(line: 204, column: 52, scope: !7562)
!7569 = !DILocation(line: 204, column: 86, scope: !7562)
!7570 = !DILocation(line: 206, column: 19, scope: !7562)
!7571 = !DILocation(line: 206, column: 22, scope: !7562)
!7572 = !DILocation(line: 206, column: 15, scope: !7562)
!7573 = !DILocation(line: 207, column: 4, scope: !7562)
!7574 = !DILocation(line: 207, column: 9, scope: !7562)
!7575 = !DILocation(line: 207, column: 12, scope: !7562)
!7576 = !DILocation(line: 206, column: 44, scope: !7562)
!7577 = !DILocation(line: 207, column: 37, scope: !7562)
!7578 = !DILocation(line: 206, column: 2, scope: !7562)
!7579 = distinct !DISubprogram(name: "variable_test_bit", scope: !7525, file: !7525, line: 224, type: !7563, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7580)
!7580 = !{!7581, !7582, !7583}
!7581 = !DILocalVariable(name: "nr", arg: 1, scope: !7579, file: !7525, line: 224, type: !361)
!7582 = !DILocalVariable(name: "addr", arg: 2, scope: !7579, file: !7525, line: 224, type: !7473)
!7583 = !DILocalVariable(name: "oldbit", scope: !7579, file: !7525, line: 226, type: !893)
!7584 = !DILocation(line: 224, column: 52, scope: !7579)
!7585 = !DILocation(line: 224, column: 86, scope: !7579)
!7586 = !DILocation(line: 226, column: 2, scope: !7579)
!7587 = !DILocation(line: 226, column: 7, scope: !7579)
!7588 = !DILocation(line: 231, column: 33, scope: !7579)
!7589 = !DILocation(line: 231, column: 46, scope: !7579)
!7590 = !DILocation(line: 228, column: 2, scope: !7579)
!7591 = !{i64 2148358352, i64 2148358426}
!7592 = !DILocation(line: 233, column: 9, scope: !7579)
!7593 = !DILocation(line: 234, column: 1, scope: !7579)
!7594 = !DILocation(line: 233, column: 2, scope: !7579)
!7595 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1796, file: !1796, line: 1103, type: !2188, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7596)
!7596 = !{!7597}
!7597 = !DILocalVariable(name: "folio", arg: 1, scope: !7595, file: !1796, line: 1103, type: !2020)
!7598 = !DILocation(line: 1103, column: 52, scope: !7595)
!7599 = !DILocation(line: 1105, column: 28, scope: !7595)
!7600 = !DILocation(line: 1105, column: 35, scope: !7595)
!7601 = !DILocation(line: 1105, column: 9, scope: !7595)
!7602 = !DILocation(line: 1105, column: 2, scope: !7595)
!7603 = !DISubprogram(name: "__folio_put", scope: !1796, file: !1796, line: 1283, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7604 = distinct !DISubprogram(name: "put_page_testzero", scope: !1796, file: !1796, line: 1097, type: !7605, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7607)
!7605 = !DISubroutineType(types: !7606)
!7606 = !{!28, !1692}
!7607 = !{!7608}
!7608 = !DILocalVariable(name: "page", arg: 1, scope: !7604, file: !1796, line: 1097, type: !1692)
!7609 = !DILocation(line: 1097, column: 50, scope: !7604)
!7610 = !DILocation(line: 1100, column: 31, scope: !7604)
!7611 = !DILocation(line: 1100, column: 9, scope: !7604)
!7612 = !DILocation(line: 1100, column: 2, scope: !7604)
!7613 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !7614, file: !7614, line: 208, type: !7605, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7615)
!7614 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!7615 = !{!7616, !7617}
!7616 = !DILocalVariable(name: "page", arg: 1, scope: !7613, file: !7614, line: 208, type: !1692)
!7617 = !DILocalVariable(name: "ret", scope: !7613, file: !7614, line: 210, type: !28)
!7618 = !DILocation(line: 208, column: 54, scope: !7613)
!7619 = !DILocation(line: 210, column: 2, scope: !7613)
!7620 = !DILocation(line: 210, column: 6, scope: !7613)
!7621 = !DILocation(line: 210, column: 33, scope: !7613)
!7622 = !DILocation(line: 210, column: 39, scope: !7613)
!7623 = !DILocation(line: 210, column: 12, scope: !7613)
!7624 = !DILocation(line: 214, column: 9, scope: !7613)
!7625 = !DILocation(line: 215, column: 1, scope: !7613)
!7626 = !DILocation(line: 214, column: 2, scope: !7613)
!7627 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !7628, file: !7628, line: 1372, type: !7629, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7632)
!7628 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7629 = !DISubroutineType(types: !7630)
!7630 = !{!893, !7631}
!7631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!7632 = !{!7633}
!7633 = !DILocalVariable(name: "v", arg: 1, scope: !7627, file: !7628, line: 1372, type: !7631)
!7634 = !DILocation(line: 1372, column: 31, scope: !7627)
!7635 = !DILocation(line: 1374, column: 2, scope: !7627)
!7636 = !DILocation(line: 1374, column: 2, scope: !7637)
!7637 = distinct !DILexicalBlock(scope: !7627, file: !7628, line: 1374, column: 2)
!7638 = !DILocation(line: 1375, column: 31, scope: !7627)
!7639 = !DILocation(line: 1375, column: 2, scope: !7627)
!7640 = !DILocation(line: 1376, column: 33, scope: !7627)
!7641 = !DILocation(line: 1376, column: 9, scope: !7627)
!7642 = !DILocation(line: 1376, column: 2, scope: !7627)
!7643 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7508, file: !7508, line: 94, type: !7509, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7644)
!7644 = !{!7645, !7646}
!7645 = !DILocalVariable(name: "v", arg: 1, scope: !7643, file: !7508, line: 94, type: !7511)
!7646 = !DILocalVariable(name: "size", arg: 2, scope: !7643, file: !7508, line: 94, type: !41)
!7647 = !DILocation(line: 94, column: 79, scope: !7643)
!7648 = !DILocation(line: 94, column: 89, scope: !7643)
!7649 = !DILocation(line: 96, column: 20, scope: !7643)
!7650 = !DILocation(line: 96, column: 23, scope: !7643)
!7651 = !DILocation(line: 96, column: 2, scope: !7643)
!7652 = !DILocation(line: 97, column: 2, scope: !7643)
!7653 = !DILocation(line: 98, column: 1, scope: !7643)
!7654 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !7655, file: !7655, line: 2254, type: !7629, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7656)
!7655 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7656 = !{!7657}
!7657 = !DILocalVariable(name: "v", arg: 1, scope: !7654, file: !7655, line: 2254, type: !7631)
!7658 = !DILocation(line: 2254, column: 35, scope: !7654)
!7659 = !DILocation(line: 2257, column: 34, scope: !7654)
!7660 = !DILocation(line: 2257, column: 9, scope: !7654)
!7661 = !DILocation(line: 2257, column: 2, scope: !7654)
!7662 = distinct !DISubprogram(name: "kasan_check_write", scope: !7541, file: !7541, line: 44, type: !7542, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7663)
!7663 = !{!7664, !7665}
!7664 = !DILocalVariable(name: "p", arg: 1, scope: !7662, file: !7541, line: 44, type: !7511)
!7665 = !DILocalVariable(name: "size", arg: 2, scope: !7662, file: !7541, line: 44, type: !7)
!7666 = !DILocation(line: 44, column: 59, scope: !7662)
!7667 = !DILocation(line: 44, column: 75, scope: !7662)
!7668 = !DILocation(line: 46, column: 2, scope: !7662)
!7669 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !7670, file: !7670, line: 65, type: !7629, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7671)
!7670 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7671 = !{!7672, !7673}
!7672 = !DILocalVariable(name: "v", arg: 1, scope: !7669, file: !7670, line: 65, type: !7631)
!7673 = !DILocalVariable(name: "c", scope: !7674, file: !7670, line: 67, type: !893)
!7674 = distinct !DILexicalBlock(scope: !7669, file: !7670, line: 67, column: 9)
!7675 = !DILocation(line: 65, column: 64, scope: !7669)
!7676 = !DILocation(line: 67, column: 9, scope: !7674)
!7677 = !{i64 2149080052, i64 2149080091, i64 2149080112, i64 2149080149, i64 2149080172, i64 2149080181, i64 2149080255}
!7678 = !DILocation(line: 67, column: 9, scope: !7669)
!7679 = !DILocation(line: 67, column: 2, scope: !7669)
!7680 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !7681, file: !7681, line: 813, type: !3284, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7681 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7682 = !DILocation(line: 815, column: 2, scope: !7680)
!7683 = !DILocation(line: 815, column: 2, scope: !7684)
!7684 = distinct !DILexicalBlock(scope: !7680, file: !7681, line: 815, column: 2)
!7685 = !DILocation(line: 818, column: 2, scope: !7680)
!7686 = !DILocation(line: 819, column: 2, scope: !7680)
!7687 = !DILocation(line: 819, column: 2, scope: !7688)
!7688 = distinct !DILexicalBlock(scope: !7680, file: !7681, line: 819, column: 2)
!7689 = !DILocation(line: 820, column: 1, scope: !7680)
!7690 = !DISubprogram(name: "__rcu_read_unlock", scope: !7681, file: !7681, line: 75, type: !3284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7691 = distinct !DISubprogram(name: "huge_pte_none_mostly", scope: !7692, file: !7692, line: 109, type: !7019, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7693)
!7692 = !DIFile(filename: "./include/asm-generic/hugetlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da879c452d537ea4becba39a0e44c270")
!7693 = !{!7694}
!7694 = !DILocalVariable(name: "pte", arg: 1, scope: !7691, file: !7692, line: 109, type: !1952)
!7695 = !DILocation(line: 109, column: 46, scope: !7691)
!7696 = !DILocation(line: 111, column: 9, scope: !7691)
!7697 = !DILocation(line: 111, column: 28, scope: !7691)
!7698 = !DILocation(line: 111, column: 31, scope: !7691)
!7699 = !DILocation(line: 111, column: 2, scope: !7691)
!7700 = distinct !DISubprogram(name: "huge_ptep_get", scope: !7692, file: !7692, line: 147, type: !7007, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7701)
!7701 = !{!7702}
!7702 = !DILocalVariable(name: "ptep", arg: 1, scope: !7700, file: !7692, line: 147, type: !1961)
!7703 = !DILocation(line: 147, column: 42, scope: !7700)
!7704 = !DILocation(line: 149, column: 18, scope: !7700)
!7705 = !DILocation(line: 149, column: 9, scope: !7700)
!7706 = !DILocation(line: 149, column: 2, scope: !7700)
!7707 = distinct !DISubprogram(name: "huge_pte_none", scope: !7692, file: !7692, line: 102, type: !7019, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7708)
!7708 = !{!7709}
!7709 = !DILocalVariable(name: "pte", arg: 1, scope: !7707, file: !7692, line: 102, type: !1952)
!7710 = !DILocation(line: 102, column: 39, scope: !7707)
!7711 = !DILocation(line: 104, column: 9, scope: !7707)
!7712 = !DILocation(line: 104, column: 2, scope: !7707)
!7713 = distinct !DISubprogram(name: "__mmap_lock_trace_released", scope: !6445, file: !6445, line: 39, type: !6582, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7714)
!7714 = !{!7715, !7716}
!7715 = !DILocalVariable(name: "mm", arg: 1, scope: !7713, file: !6445, line: 39, type: !681)
!7716 = !DILocalVariable(name: "write", arg: 2, scope: !7713, file: !6445, line: 39, type: !893)
!7717 = !DILocation(line: 39, column: 65, scope: !7713)
!7718 = !DILocation(line: 39, column: 74, scope: !7713)
!7719 = !DILocation(line: 41, column: 6, scope: !7720)
!7720 = distinct !DILexicalBlock(scope: !7713, file: !6445, line: 41, column: 6)
!7721 = !DILocation(line: 41, column: 6, scope: !7713)
!7722 = !DILocation(line: 42, column: 33, scope: !7720)
!7723 = !DILocation(line: 42, column: 37, scope: !7720)
!7724 = !DILocation(line: 42, column: 3, scope: !7720)
!7725 = !DILocation(line: 43, column: 1, scope: !7713)
!7726 = !DISubprogram(name: "up_read", scope: !914, file: !914, line: 198, type: !6598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7727 = !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !6445, file: !6445, line: 23, type: !6582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7728 = distinct !DISubprogram(name: "check_copy_size", scope: !6213, file: !6213, line: 237, type: !7729, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7731)
!7729 = !DISubroutineType(types: !7730)
!7730 = !{!893, !2634, !41, !893}
!7731 = !{!7732, !7733, !7734, !7735, !7736, !7739}
!7732 = !DILocalVariable(name: "addr", arg: 1, scope: !7728, file: !6213, line: 237, type: !2634)
!7733 = !DILocalVariable(name: "bytes", arg: 2, scope: !7728, file: !6213, line: 237, type: !41)
!7734 = !DILocalVariable(name: "is_source", arg: 3, scope: !7728, file: !6213, line: 237, type: !893)
!7735 = !DILocalVariable(name: "sz", scope: !7728, file: !6213, line: 239, type: !28)
!7736 = !DILocalVariable(name: "__ret_warn_on", scope: !7737, file: !6213, line: 249, type: !28)
!7737 = distinct !DILexicalBlock(scope: !7738, file: !6213, line: 249, column: 6)
!7738 = distinct !DILexicalBlock(scope: !7728, file: !6213, line: 249, column: 6)
!7739 = !DILocalVariable(name: "__flags", scope: !7740, file: !6213, line: 249, type: !28)
!7740 = distinct !DILexicalBlock(scope: !7741, file: !6213, line: 249, column: 6)
!7741 = distinct !DILexicalBlock(scope: !7737, file: !6213, line: 249, column: 6)
!7742 = !DILocation(line: 237, column: 29, scope: !7728)
!7743 = !DILocation(line: 237, column: 42, scope: !7728)
!7744 = !DILocation(line: 237, column: 54, scope: !7728)
!7745 = !DILocation(line: 239, column: 2, scope: !7728)
!7746 = !DILocation(line: 239, column: 6, scope: !7728)
!7747 = !DILocation(line: 239, column: 33, scope: !7728)
!7748 = !DILocation(line: 239, column: 11, scope: !7728)
!7749 = !DILocation(line: 240, column: 6, scope: !7750)
!7750 = distinct !DILexicalBlock(scope: !7728, file: !6213, line: 240, column: 6)
!7751 = !DILocation(line: 0, scope: !7750)
!7752 = !DILocation(line: 240, column: 6, scope: !7728)
!7753 = !DILocation(line: 241, column: 29, scope: !7754)
!7754 = distinct !DILexicalBlock(scope: !7755, file: !6213, line: 241, column: 7)
!7755 = distinct !DILexicalBlock(scope: !7750, file: !6213, line: 240, column: 39)
!7756 = !DILocation(line: 241, column: 8, scope: !7754)
!7757 = !DILocation(line: 241, column: 7, scope: !7755)
!7758 = !DILocation(line: 242, column: 18, scope: !7754)
!7759 = !DILocation(line: 242, column: 22, scope: !7754)
!7760 = !DILocation(line: 242, column: 4, scope: !7754)
!7761 = !DILocation(line: 243, column: 12, scope: !7762)
!7762 = distinct !DILexicalBlock(scope: !7754, file: !6213, line: 243, column: 12)
!7763 = !DILocation(line: 243, column: 12, scope: !7754)
!7764 = !DILocation(line: 244, column: 4, scope: !7762)
!7765 = !{i32 1092562}
!7766 = !DILocation(line: 246, column: 4, scope: !7762)
!7767 = !{i32 1092591}
!7768 = !DILocation(line: 247, column: 3, scope: !7755)
!7769 = !DILocation(line: 249, column: 6, scope: !7737)
!7770 = !DILocation(line: 249, column: 6, scope: !7741)
!7771 = !DILocation(line: 249, column: 6, scope: !7740)
!7772 = !DILocation(line: 249, column: 6, scope: !7773)
!7773 = distinct !DILexicalBlock(scope: !7740, file: !6213, line: 249, column: 6)
!7774 = !DILocation(line: 249, column: 6, scope: !7775)
!7775 = distinct !DILexicalBlock(scope: !7740, file: !6213, line: 249, column: 6)
!7776 = !{i64 2149700186, i64 2149700215, i64 2149700261, i64 2149700319, i64 2149700373, i64 2149700427, i64 2149700482, i64 2149700513, i64 2149700821, i64 2149700827, i64 2149700874, i64 2149700897, i64 2149700923}
!7777 = !DILocation(line: 249, column: 6, scope: !7778)
!7778 = distinct !DILexicalBlock(scope: !7740, file: !6213, line: 249, column: 6)
!7779 = !DILocation(line: 249, column: 6, scope: !7738)
!7780 = !DILocation(line: 249, column: 6, scope: !7728)
!7781 = !DILocation(line: 250, column: 3, scope: !7738)
!7782 = !DILocation(line: 251, column: 20, scope: !7728)
!7783 = !DILocation(line: 251, column: 26, scope: !7728)
!7784 = !DILocation(line: 251, column: 33, scope: !7728)
!7785 = !DILocation(line: 251, column: 2, scope: !7728)
!7786 = !DILocation(line: 252, column: 2, scope: !7728)
!7787 = !DILocation(line: 253, column: 1, scope: !7728)
!7788 = !DISubprogram(name: "_copy_to_user", scope: !6555, file: !6555, line: 176, type: !6556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7789 = distinct !DISubprogram(name: "copy_overflow", scope: !6213, file: !6213, line: 230, type: !7790, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7792)
!7790 = !DISubroutineType(types: !7791)
!7791 = !{null, !28, !45}
!7792 = !{!7793, !7794}
!7793 = !DILocalVariable(name: "size", arg: 1, scope: !7789, file: !6213, line: 230, type: !28)
!7794 = !DILocalVariable(name: "count", arg: 2, scope: !7789, file: !6213, line: 230, type: !45)
!7795 = !DILocation(line: 230, column: 38, scope: !7789)
!7796 = !DILocation(line: 230, column: 58, scope: !7789)
!7797 = !DILocation(line: 233, column: 19, scope: !7798)
!7798 = distinct !DILexicalBlock(scope: !7789, file: !6213, line: 232, column: 6)
!7799 = !DILocation(line: 233, column: 25, scope: !7798)
!7800 = !DILocation(line: 233, column: 3, scope: !7798)
!7801 = !DILocation(line: 234, column: 1, scope: !7789)
!7802 = !DISubprogram(name: "__bad_copy_from", scope: !6213, file: !6213, line: 224, type: !3284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7803 = !DISubprogram(name: "__bad_copy_to", scope: !6213, file: !6213, line: 226, type: !3284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7804 = distinct !DISubprogram(name: "check_object_size", scope: !6213, file: !6213, line: 218, type: !7805, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7807)
!7805 = !DISubroutineType(types: !7806)
!7806 = !{null, !2634, !45, !893}
!7807 = !{!7808, !7809, !7810}
!7808 = !DILocalVariable(name: "ptr", arg: 1, scope: !7804, file: !6213, line: 218, type: !2634)
!7809 = !DILocalVariable(name: "n", arg: 2, scope: !7804, file: !6213, line: 218, type: !45)
!7810 = !DILocalVariable(name: "to_user", arg: 3, scope: !7804, file: !6213, line: 219, type: !893)
!7811 = !DILocation(line: 218, column: 50, scope: !7804)
!7812 = !DILocation(line: 218, column: 69, scope: !7804)
!7813 = !DILocation(line: 219, column: 15, scope: !7804)
!7814 = !DILocation(line: 220, column: 3, scope: !7804)
!7815 = !DISubprogram(name: "__copy_overflow", scope: !6213, file: !6213, line: 228, type: !7790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
