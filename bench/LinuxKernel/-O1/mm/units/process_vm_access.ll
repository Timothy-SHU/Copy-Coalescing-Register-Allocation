; ModuleID = 'mm/process_vm_access.c'
source_filename = "mm/process_vm_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27, [16 x i8] }
%struct.anon.27 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.31 }
%struct.atomic_t = type { i32 }
%union.anon.31 = type { i64 }
%struct.lockdep_map = type {}
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.iovec = type { ptr, i64 }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon.1, %union.anon.2, %union.anon.4 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { %struct.iovec }
%union.anon.4 = type { i64 }
%struct.anon = type { %union.anon.3, i64 }
%union.anon.3 = type { ptr }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.16, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.19 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i64, i64 }
%union.anon.19 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.mm_struct = type { %struct.anon.28, [0 x i64] }
%struct.anon.28 = type { %struct.anon.29, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.29 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.30, i32, ptr }
%union.anon.30 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_process_vm_readv(ptr noundef %regs) #0 align 16 !dbg !5898 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5905
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5905
  %1 = load i64, ptr %di, align 8, !dbg !5905
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5905
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5905
  %3 = load i64, ptr %si, align 8, !dbg !5905
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5905
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5905
  %5 = load i64, ptr %dx, align 8, !dbg !5905
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5905
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !5905
  %7 = load i64, ptr %r10, align 8, !dbg !5905
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5905
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !5905
  %9 = load i64, ptr %r8, align 8, !dbg !5905
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !5905
  %r9 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 8, !dbg !5905
  %11 = load i64, ptr %r9, align 8, !dbg !5905
  %call = call i64 @__se_sys_process_vm_readv(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #12, !dbg !5905
  ret i64 %call, !dbg !5905
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_process_vm_readv(i64 noundef %pid, i64 noundef %lvec, i64 noundef %liovcnt, i64 noundef %rvec, i64 noundef %riovcnt, i64 noundef %flags) #0 align 16 !dbg !5906 {
entry:
  %pid.addr = alloca i64, align 8
  %lvec.addr = alloca i64, align 8
  %liovcnt.addr = alloca i64, align 8
  %rvec.addr = alloca i64, align 8
  %riovcnt.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5910, metadata !DIExpression()), !dbg !5917
  store i64 %lvec, ptr %lvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lvec.addr, metadata !5911, metadata !DIExpression()), !dbg !5917
  store i64 %liovcnt, ptr %liovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %liovcnt.addr, metadata !5912, metadata !DIExpression()), !dbg !5917
  store i64 %rvec, ptr %rvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rvec.addr, metadata !5913, metadata !DIExpression()), !dbg !5917
  store i64 %riovcnt, ptr %riovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %riovcnt.addr, metadata !5914, metadata !DIExpression()), !dbg !5917
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5915, metadata !DIExpression()), !dbg !5917
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !5917
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5916, metadata !DIExpression()), !dbg !5917
  %0 = load i64, ptr %pid.addr, align 8, !dbg !5917
  %conv = trunc i64 %0 to i32, !dbg !5917
  %1 = load i64, ptr %lvec.addr, align 8, !dbg !5917
  %2 = inttoptr i64 %1 to ptr, !dbg !5917
  %3 = load i64, ptr %liovcnt.addr, align 8, !dbg !5917
  %4 = load i64, ptr %rvec.addr, align 8, !dbg !5917
  %5 = inttoptr i64 %4 to ptr, !dbg !5917
  %6 = load i64, ptr %riovcnt.addr, align 8, !dbg !5917
  %7 = load i64, ptr %flags.addr, align 8, !dbg !5917
  %call = call i64 @__do_sys_process_vm_readv(i32 noundef %conv, ptr noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef %7) #12, !dbg !5917
  store i64 %call, ptr %ret, align 8, !dbg !5917
  br label %do.body, !dbg !5917

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5918

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5918

do.end:                                           ; preds = %do.cond
  %8 = load i64, ptr %ret, align 8, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !5917
  ret i64 %8, !dbg !5917
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_process_vm_readv(ptr noundef %regs) #0 align 16 !dbg !5920 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5923
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5923
  %1 = load i64, ptr %bx, align 8, !dbg !5923
  %conv = trunc i64 %1 to i32, !dbg !5923
  %conv1 = zext i32 %conv to i64, !dbg !5923
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5923
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5923
  %3 = load i64, ptr %cx, align 8, !dbg !5923
  %conv2 = trunc i64 %3 to i32, !dbg !5923
  %conv3 = zext i32 %conv2 to i64, !dbg !5923
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5923
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5923
  %5 = load i64, ptr %dx, align 8, !dbg !5923
  %conv4 = trunc i64 %5 to i32, !dbg !5923
  %conv5 = zext i32 %conv4 to i64, !dbg !5923
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5923
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !5923
  %7 = load i64, ptr %si, align 8, !dbg !5923
  %conv6 = trunc i64 %7 to i32, !dbg !5923
  %conv7 = zext i32 %conv6 to i64, !dbg !5923
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5923
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !5923
  %9 = load i64, ptr %di, align 8, !dbg !5923
  %conv8 = trunc i64 %9 to i32, !dbg !5923
  %conv9 = zext i32 %conv8 to i64, !dbg !5923
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !5923
  %bp = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 4, !dbg !5923
  %11 = load i64, ptr %bp, align 8, !dbg !5923
  %conv10 = trunc i64 %11 to i32, !dbg !5923
  %conv11 = zext i32 %conv10 to i64, !dbg !5923
  %call = call i64 @__se_sys_process_vm_readv(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9, i64 noundef %conv11) #12, !dbg !5923
  ret i64 %call, !dbg !5923
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_process_vm_writev(ptr noundef %regs) #0 align 16 !dbg !5924 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5927
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5927
  %1 = load i64, ptr %di, align 8, !dbg !5927
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5927
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5927
  %3 = load i64, ptr %si, align 8, !dbg !5927
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5927
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5927
  %5 = load i64, ptr %dx, align 8, !dbg !5927
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5927
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !5927
  %7 = load i64, ptr %r10, align 8, !dbg !5927
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5927
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !5927
  %9 = load i64, ptr %r8, align 8, !dbg !5927
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !5927
  %r9 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 8, !dbg !5927
  %11 = load i64, ptr %r9, align 8, !dbg !5927
  %call = call i64 @__se_sys_process_vm_writev(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #12, !dbg !5927
  ret i64 %call, !dbg !5927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_process_vm_writev(i64 noundef %pid, i64 noundef %lvec, i64 noundef %liovcnt, i64 noundef %rvec, i64 noundef %riovcnt, i64 noundef %flags) #0 align 16 !dbg !5928 {
entry:
  %pid.addr = alloca i64, align 8
  %lvec.addr = alloca i64, align 8
  %liovcnt.addr = alloca i64, align 8
  %rvec.addr = alloca i64, align 8
  %riovcnt.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5930, metadata !DIExpression()), !dbg !5937
  store i64 %lvec, ptr %lvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lvec.addr, metadata !5931, metadata !DIExpression()), !dbg !5937
  store i64 %liovcnt, ptr %liovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %liovcnt.addr, metadata !5932, metadata !DIExpression()), !dbg !5937
  store i64 %rvec, ptr %rvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rvec.addr, metadata !5933, metadata !DIExpression()), !dbg !5937
  store i64 %riovcnt, ptr %riovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %riovcnt.addr, metadata !5934, metadata !DIExpression()), !dbg !5937
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5935, metadata !DIExpression()), !dbg !5937
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !5937
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5936, metadata !DIExpression()), !dbg !5937
  %0 = load i64, ptr %pid.addr, align 8, !dbg !5937
  %conv = trunc i64 %0 to i32, !dbg !5937
  %1 = load i64, ptr %lvec.addr, align 8, !dbg !5937
  %2 = inttoptr i64 %1 to ptr, !dbg !5937
  %3 = load i64, ptr %liovcnt.addr, align 8, !dbg !5937
  %4 = load i64, ptr %rvec.addr, align 8, !dbg !5937
  %5 = inttoptr i64 %4 to ptr, !dbg !5937
  %6 = load i64, ptr %riovcnt.addr, align 8, !dbg !5937
  %7 = load i64, ptr %flags.addr, align 8, !dbg !5937
  %call = call i64 @__do_sys_process_vm_writev(i32 noundef %conv, ptr noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef %7) #12, !dbg !5937
  store i64 %call, ptr %ret, align 8, !dbg !5937
  br label %do.body, !dbg !5937

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5938

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5938

do.end:                                           ; preds = %do.cond
  %8 = load i64, ptr %ret, align 8, !dbg !5937
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !5937
  ret i64 %8, !dbg !5937
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_process_vm_writev(ptr noundef %regs) #0 align 16 !dbg !5940 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5943
  %1 = load i64, ptr %bx, align 8, !dbg !5943
  %conv = trunc i64 %1 to i32, !dbg !5943
  %conv1 = zext i32 %conv to i64, !dbg !5943
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5943
  %3 = load i64, ptr %cx, align 8, !dbg !5943
  %conv2 = trunc i64 %3 to i32, !dbg !5943
  %conv3 = zext i32 %conv2 to i64, !dbg !5943
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5943
  %5 = load i64, ptr %dx, align 8, !dbg !5943
  %conv4 = trunc i64 %5 to i32, !dbg !5943
  %conv5 = zext i32 %conv4 to i64, !dbg !5943
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !5943
  %7 = load i64, ptr %si, align 8, !dbg !5943
  %conv6 = trunc i64 %7 to i32, !dbg !5943
  %conv7 = zext i32 %conv6 to i64, !dbg !5943
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !5943
  %9 = load i64, ptr %di, align 8, !dbg !5943
  %conv8 = trunc i64 %9 to i32, !dbg !5943
  %conv9 = zext i32 %conv8 to i64, !dbg !5943
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %bp = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 4, !dbg !5943
  %11 = load i64, ptr %bp, align 8, !dbg !5943
  %conv10 = trunc i64 %11 to i32, !dbg !5943
  %conv11 = zext i32 %conv10 to i64, !dbg !5943
  %call = call i64 @__se_sys_process_vm_writev(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9, i64 noundef %conv11) #12, !dbg !5943
  ret i64 %call, !dbg !5943
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_process_vm_readv(i32 noundef %pid, ptr noundef %lvec, i64 noundef %liovcnt, ptr noundef %rvec, i64 noundef %riovcnt, i64 noundef %flags) #3 align 16 !dbg !5944 {
entry:
  %pid.addr = alloca i32, align 4
  %lvec.addr = alloca ptr, align 8
  %liovcnt.addr = alloca i64, align 8
  %rvec.addr = alloca ptr, align 8
  %riovcnt.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5948, metadata !DIExpression()), !dbg !5954
  store ptr %lvec, ptr %lvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lvec.addr, metadata !5949, metadata !DIExpression()), !dbg !5954
  store i64 %liovcnt, ptr %liovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %liovcnt.addr, metadata !5950, metadata !DIExpression()), !dbg !5954
  store ptr %rvec, ptr %rvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rvec.addr, metadata !5951, metadata !DIExpression()), !dbg !5954
  store i64 %riovcnt, ptr %riovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %riovcnt.addr, metadata !5952, metadata !DIExpression()), !dbg !5954
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  %0 = load i32, ptr %pid.addr, align 4, !dbg !5955
  %1 = load ptr, ptr %lvec.addr, align 8, !dbg !5956
  %2 = load i64, ptr %liovcnt.addr, align 8, !dbg !5957
  %3 = load ptr, ptr %rvec.addr, align 8, !dbg !5958
  %4 = load i64, ptr %riovcnt.addr, align 8, !dbg !5959
  %5 = load i64, ptr %flags.addr, align 8, !dbg !5960
  %call = call i64 @process_vm_rw(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 0) #12, !dbg !5961
  ret i64 %call, !dbg !5962
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @process_vm_rw(i32 noundef %pid, ptr noundef %lvec, i64 noundef %liovcnt, ptr noundef %rvec, i64 noundef %riovcnt, i64 noundef %flags, i32 noundef %vm_write) #0 align 16 !dbg !5963 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i32, align 4
  %lvec.addr = alloca ptr, align 8
  %liovcnt.addr = alloca i64, align 8
  %rvec.addr = alloca ptr, align 8
  %riovcnt.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %vm_write.addr = alloca i32, align 4
  %iovstack_l = alloca [8 x %struct.iovec], align 16
  %iovstack_r = alloca [8 x %struct.iovec], align 16
  %iov_l = alloca ptr, align 8
  %iov_r = alloca ptr, align 8
  %iter = alloca %struct.iov_iter, align 8
  %rc = alloca i64, align 8
  %dir = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5967, metadata !DIExpression()), !dbg !5984
  store ptr %lvec, ptr %lvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lvec.addr, metadata !5968, metadata !DIExpression()), !dbg !5985
  store i64 %liovcnt, ptr %liovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %liovcnt.addr, metadata !5969, metadata !DIExpression()), !dbg !5986
  store ptr %rvec, ptr %rvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rvec.addr, metadata !5970, metadata !DIExpression()), !dbg !5987
  store i64 %riovcnt, ptr %riovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %riovcnt.addr, metadata !5971, metadata !DIExpression()), !dbg !5988
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5972, metadata !DIExpression()), !dbg !5989
  store i32 %vm_write, ptr %vm_write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vm_write.addr, metadata !5973, metadata !DIExpression()), !dbg !5990
  call void @llvm.lifetime.start.p0(i64 128, ptr %iovstack_l) #13, !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %iovstack_l, metadata !5974, metadata !DIExpression()), !dbg !5992
  call void @llvm.lifetime.start.p0(i64 128, ptr %iovstack_r) #13, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %iovstack_r, metadata !5976, metadata !DIExpression()), !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_l) #13, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %iov_l, metadata !5977, metadata !DIExpression()), !dbg !5996
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], ptr %iovstack_l, i64 0, i64 0, !dbg !5997
  store ptr %arraydecay, ptr %iov_l, align 8, !dbg !5996
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_r) #13, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %iov_r, metadata !5979, metadata !DIExpression()), !dbg !5999
  call void @llvm.lifetime.start.p0(i64 40, ptr %iter) #13, !dbg !6000
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5980, metadata !DIExpression()), !dbg !6001
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #13, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5981, metadata !DIExpression()), !dbg !6003
  call void @llvm.lifetime.start.p0(i64 4, ptr %dir) #13, !dbg !6004
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !5982, metadata !DIExpression()), !dbg !6005
  %0 = load i32, ptr %vm_write.addr, align 4, !dbg !6006
  %tobool = icmp ne i32 %0, 0, !dbg !6006
  %1 = zext i1 %tobool to i64, !dbg !6006
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6006
  store i32 %cond, ptr %dir, align 4, !dbg !6005
  %2 = load i64, ptr %flags.addr, align 8, !dbg !6007
  %cmp = icmp ne i64 %2, 0, !dbg !6009
  br i1 %cmp, label %if.then, label %if.end, !dbg !6010

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6011

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %dir, align 4, !dbg !6012
  %4 = load ptr, ptr %lvec.addr, align 8, !dbg !6013
  %5 = load i64, ptr %liovcnt.addr, align 8, !dbg !6014
  %conv = trunc i64 %5 to i32, !dbg !6014
  %call = call i64 @import_iovec(i32 noundef %3, ptr noundef %4, i32 noundef %conv, i32 noundef 8, ptr noundef %iov_l, ptr noundef %iter) #12, !dbg !6015
  store i64 %call, ptr %rc, align 8, !dbg !6016
  %6 = load i64, ptr %rc, align 8, !dbg !6017
  %cmp1 = icmp slt i64 %6, 0, !dbg !6019
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !6020

if.then3:                                         ; preds = %if.end
  %7 = load i64, ptr %rc, align 8, !dbg !6021
  store i64 %7, ptr %retval, align 8, !dbg !6022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6022

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @iov_iter_count(ptr noundef %iter) #12, !dbg !6023
  %tobool6 = icmp ne i64 %call5, 0, !dbg !6023
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6025

if.then7:                                         ; preds = %if.end4
  br label %free_iov_l, !dbg !6026

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %rvec.addr, align 8, !dbg !6027
  %9 = load i64, ptr %riovcnt.addr, align 8, !dbg !6028
  %arraydecay9 = getelementptr inbounds [8 x %struct.iovec], ptr %iovstack_r, i64 0, i64 0, !dbg !6029
  %call10 = call zeroext i1 @in_compat_syscall() #12, !dbg !6030
  %call11 = call ptr @iovec_from_user(ptr noundef %8, i64 noundef %9, i64 noundef 8, ptr noundef %arraydecay9, i1 noundef zeroext %call10) #12, !dbg !6031
  store ptr %call11, ptr %iov_r, align 8, !dbg !6032
  %10 = load ptr, ptr %iov_r, align 8, !dbg !6033
  %call12 = call zeroext i1 @IS_ERR(ptr noundef %10) #12, !dbg !6035
  br i1 %call12, label %if.then13, label %if.end15, !dbg !6036

if.then13:                                        ; preds = %if.end8
  %11 = load ptr, ptr %iov_r, align 8, !dbg !6037
  %call14 = call i64 @PTR_ERR(ptr noundef %11) #12, !dbg !6039
  store i64 %call14, ptr %rc, align 8, !dbg !6040
  br label %free_iov_l, !dbg !6041

if.end15:                                         ; preds = %if.end8
  %12 = load i32, ptr %pid.addr, align 4, !dbg !6042
  %13 = load ptr, ptr %iov_r, align 8, !dbg !6043
  %14 = load i64, ptr %riovcnt.addr, align 8, !dbg !6044
  %15 = load i64, ptr %flags.addr, align 8, !dbg !6045
  %16 = load i32, ptr %vm_write.addr, align 4, !dbg !6046
  %call16 = call i64 @process_vm_rw_core(i32 noundef %12, ptr noundef %iter, ptr noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) #12, !dbg !6047
  store i64 %call16, ptr %rc, align 8, !dbg !6048
  %17 = load ptr, ptr %iov_r, align 8, !dbg !6049
  %arraydecay17 = getelementptr inbounds [8 x %struct.iovec], ptr %iovstack_r, i64 0, i64 0, !dbg !6051
  %cmp18 = icmp ne ptr %17, %arraydecay17, !dbg !6052
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6053

if.then20:                                        ; preds = %if.end15
  %18 = load ptr, ptr %iov_r, align 8, !dbg !6054
  call void @kfree(ptr noundef %18) #12, !dbg !6055
  br label %if.end21, !dbg !6055

if.end21:                                         ; preds = %if.then20, %if.end15
  br label %free_iov_l, !dbg !6051

free_iov_l:                                       ; preds = %if.end21, %if.then13, %if.then7
  call void @llvm.dbg.label(metadata !5983), !dbg !6056
  %19 = load ptr, ptr %iov_l, align 8, !dbg !6057
  call void @kfree(ptr noundef %19) #12, !dbg !6058
  %20 = load i64, ptr %rc, align 8, !dbg !6059
  store i64 %20, ptr %retval, align 8, !dbg !6060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6060

cleanup:                                          ; preds = %free_iov_l, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dir) #13, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #13, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 40, ptr %iter) #13, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_r) #13, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_l) #13, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 128, ptr %iovstack_r) #13, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 128, ptr %iovstack_l) #13, !dbg !6061
  %21 = load i64, ptr %retval, align 8, !dbg !6061
  ret i64 %21, !dbg !6061
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6062 dso_local i64 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iov_iter_count(ptr noundef %i) #3 align 16 !dbg !6066 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6072, metadata !DIExpression()), !dbg !6073
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6074
  %1 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6, !dbg !6075
  %count = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !6075
  %2 = load i64, ptr %count, align 8, !dbg !6075
  ret i64 %2, !dbg !6076
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6077 dso_local ptr @iovec_from_user(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_compat_syscall() #3 align 16 !dbg !6080 {
entry:
  %call = call zeroext i1 @in_32bit_syscall() #12, !dbg !6082
  ret i1 %call, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6084 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6091
  %1 = ptrtoint ptr %0 to i64, !dbg !6091
  %2 = inttoptr i64 %1 to ptr, !dbg !6091
  %3 = ptrtoint ptr %2 to i64, !dbg !6091
  %cmp = icmp uge i64 %3, -4095, !dbg !6091
  %lnot = xor i1 %cmp, true, !dbg !6091
  %lnot1 = xor i1 %lnot, true, !dbg !6091
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6091
  %conv = sext i32 %lnot.ext to i64, !dbg !6091
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6091
  %tobool = icmp ne i64 %expval, 0, !dbg !6091
  ret i1 %tobool, !dbg !6092
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6093 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6099
  %1 = ptrtoint ptr %0 to i64, !dbg !6100
  ret i64 %1, !dbg !6101
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @process_vm_rw_core(i32 noundef %pid, ptr noundef %iter, ptr noundef %rvec, i64 noundef %riovcnt, i64 noundef %flags, i32 noundef %vm_write) #0 align 16 !dbg !6102 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %rvec.addr = alloca ptr, align 8
  %riovcnt.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %vm_write.addr = alloca i32, align 4
  %task = alloca ptr, align 8
  %pp_stack = alloca [16 x ptr], align 16
  %process_pages = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %i = alloca i64, align 8
  %rc = alloca i64, align 8
  %nr_pages = alloca i64, align 8
  %nr_pages_iov = alloca i64, align 8
  %iov_len = alloca i64, align 8
  %total_len = alloca i64, align 8
  %__UNIQUE_ID___x343 = alloca i64, align 8
  %__UNIQUE_ID___y344 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x345 = alloca i64, align 8
  %__UNIQUE_ID___y346 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6106, metadata !DIExpression()), !dbg !6138
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6107, metadata !DIExpression()), !dbg !6139
  store ptr %rvec, ptr %rvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rvec.addr, metadata !6108, metadata !DIExpression()), !dbg !6140
  store i64 %riovcnt, ptr %riovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %riovcnt.addr, metadata !6109, metadata !DIExpression()), !dbg !6141
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6110, metadata !DIExpression()), !dbg !6142
  store i32 %vm_write, ptr %vm_write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vm_write.addr, metadata !6111, metadata !DIExpression()), !dbg !6143
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #13, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %task, metadata !6112, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 128, ptr %pp_stack) #13, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %pp_stack, metadata !6113, metadata !DIExpression()), !dbg !6147
  call void @llvm.lifetime.start.p0(i64 8, ptr %process_pages) #13, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %process_pages, metadata !6115, metadata !DIExpression()), !dbg !6149
  %arraydecay = getelementptr inbounds [16 x ptr], ptr %pp_stack, i64 0, i64 0, !dbg !6150
  store ptr %arraydecay, ptr %process_pages, align 8, !dbg !6149
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !6116, metadata !DIExpression()), !dbg !6152
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !6153
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6117, metadata !DIExpression()), !dbg !6154
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #13, !dbg !6155
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6118, metadata !DIExpression()), !dbg !6156
  store i64 0, ptr %rc, align 8, !dbg !6156
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #13, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !6119, metadata !DIExpression()), !dbg !6158
  store i64 0, ptr %nr_pages, align 8, !dbg !6158
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages_iov) #13, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %nr_pages_iov, metadata !6120, metadata !DIExpression()), !dbg !6160
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_len) #13, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %iov_len, metadata !6121, metadata !DIExpression()), !dbg !6162
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_len) #13, !dbg !6163
  call void @llvm.dbg.declare(metadata ptr %total_len, metadata !6122, metadata !DIExpression()), !dbg !6164
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6165
  %call = call i64 @iov_iter_count(ptr noundef %0) #12, !dbg !6166
  store i64 %call, ptr %total_len, align 8, !dbg !6164
  store i64 0, ptr %i, align 8, !dbg !6167
  br label %for.cond, !dbg !6168

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !dbg !6169
  %2 = load i64, ptr %riovcnt.addr, align 8, !dbg !6170
  %cmp = icmp ult i64 %1, %2, !dbg !6171
  br i1 %cmp, label %for.body, label %for.end, !dbg !6172

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %rvec.addr, align 8, !dbg !6173
  %4 = load i64, ptr %i, align 8, !dbg !6174
  %arrayidx = getelementptr %struct.iovec, ptr %3, i64 %4, !dbg !6173
  %iov_len1 = getelementptr inbounds %struct.iovec, ptr %arrayidx, i32 0, i32 1, !dbg !6175
  %5 = load i64, ptr %iov_len1, align 8, !dbg !6175
  store i64 %5, ptr %iov_len, align 8, !dbg !6176
  %6 = load i64, ptr %iov_len, align 8, !dbg !6177
  %cmp2 = icmp sgt i64 %6, 0, !dbg !6178
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6179

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %rvec.addr, align 8, !dbg !6180
  %8 = load i64, ptr %i, align 8, !dbg !6181
  %arrayidx3 = getelementptr %struct.iovec, ptr %7, i64 %8, !dbg !6180
  %iov_base = getelementptr inbounds %struct.iovec, ptr %arrayidx3, i32 0, i32 0, !dbg !6182
  %9 = load ptr, ptr %iov_base, align 8, !dbg !6182
  %10 = ptrtoint ptr %9 to i64, !dbg !6183
  %11 = load i64, ptr %iov_len, align 8, !dbg !6184
  %add = add i64 %10, %11, !dbg !6185
  %div = udiv i64 %add, 4096, !dbg !6186
  %12 = load ptr, ptr %rvec.addr, align 8, !dbg !6187
  %13 = load i64, ptr %i, align 8, !dbg !6188
  %arrayidx4 = getelementptr %struct.iovec, ptr %12, i64 %13, !dbg !6187
  %iov_base5 = getelementptr inbounds %struct.iovec, ptr %arrayidx4, i32 0, i32 0, !dbg !6189
  %14 = load ptr, ptr %iov_base5, align 8, !dbg !6189
  %15 = ptrtoint ptr %14 to i64, !dbg !6190
  %div6 = udiv i64 %15, 4096, !dbg !6191
  %sub = sub i64 %div, %div6, !dbg !6192
  %add7 = add i64 %sub, 1, !dbg !6193
  store i64 %add7, ptr %nr_pages_iov, align 8, !dbg !6194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x343) #13, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x343, metadata !6123, metadata !DIExpression()), !dbg !6195
  %16 = load i64, ptr %nr_pages, align 8, !dbg !6195
  store i64 %16, ptr %__UNIQUE_ID___x343, align 8, !dbg !6195
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y344) #13, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y344, metadata !6130, metadata !DIExpression()), !dbg !6195
  %17 = load i64, ptr %nr_pages_iov, align 8, !dbg !6195
  store i64 %17, ptr %__UNIQUE_ID___y344, align 8, !dbg !6195
  %18 = load i64, ptr %__UNIQUE_ID___x343, align 8, !dbg !6195
  %19 = load i64, ptr %__UNIQUE_ID___y344, align 8, !dbg !6195
  %cmp8 = icmp ugt i64 %18, %19, !dbg !6195
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !6195

cond.true:                                        ; preds = %if.then
  %20 = load i64, ptr %__UNIQUE_ID___x343, align 8, !dbg !6195
  br label %cond.end, !dbg !6195

cond.false:                                       ; preds = %if.then
  %21 = load i64, ptr %__UNIQUE_ID___y344, align 8, !dbg !6195
  br label %cond.end, !dbg !6195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !6195
  store i64 %cond, ptr %tmp, align 8, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y344) #13, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x343) #13, !dbg !6196
  %22 = load i64, ptr %tmp, align 8, !dbg !6195
  store i64 %22, ptr %nr_pages, align 8, !dbg !6197
  br label %if.end, !dbg !6198

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc, !dbg !6199

for.inc:                                          ; preds = %if.end
  %23 = load i64, ptr %i, align 8, !dbg !6200
  %inc = add i64 %23, 1, !dbg !6200
  store i64 %inc, ptr %i, align 8, !dbg !6200
  br label %for.cond, !dbg !6201, !llvm.loop !6202

for.end:                                          ; preds = %for.cond
  %24 = load i64, ptr %nr_pages, align 8, !dbg !6206
  %cmp9 = icmp eq i64 %24, 0, !dbg !6208
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6209

if.then10:                                        ; preds = %for.end
  store i64 0, ptr %retval, align 8, !dbg !6210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6210

if.end11:                                         ; preds = %for.end
  %25 = load i64, ptr %nr_pages, align 8, !dbg !6211
  %cmp12 = icmp ugt i64 %25, 16, !dbg !6212
  br i1 %cmp12, label %if.then13, label %if.end23, !dbg !6213

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x345) #13, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x345, metadata !6131, metadata !DIExpression()), !dbg !6214
  store i64 8192, ptr %__UNIQUE_ID___x345, align 8, !dbg !6214
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y346) #13, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y346, metadata !6135, metadata !DIExpression()), !dbg !6214
  %26 = load i64, ptr %nr_pages, align 8, !dbg !6214
  %mul = mul i64 8, %26, !dbg !6214
  store i64 %mul, ptr %__UNIQUE_ID___y346, align 8, !dbg !6214
  %27 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !6214
  %28 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !6214
  %cmp15 = icmp ult i64 %27, %28, !dbg !6214
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !6214

cond.true16:                                      ; preds = %if.then13
  %29 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !6214
  br label %cond.end18, !dbg !6214

cond.false17:                                     ; preds = %if.then13
  %30 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !6214
  br label %cond.end18, !dbg !6214

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i64 [ %29, %cond.true16 ], [ %30, %cond.false17 ], !dbg !6214
  store i64 %cond19, ptr %tmp14, align 8, !dbg !6214
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y346) #13, !dbg !6215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x345) #13, !dbg !6215
  %31 = load i64, ptr %tmp14, align 8, !dbg !6214
  %call20 = call noalias ptr @kmalloc(i64 noundef %31, i32 noundef 3264) #14, !dbg !6216
  store ptr %call20, ptr %process_pages, align 8, !dbg !6217
  %32 = load ptr, ptr %process_pages, align 8, !dbg !6218
  %tobool = icmp ne ptr %32, null, !dbg !6218
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !6220

if.then21:                                        ; preds = %cond.end18
  store i64 -12, ptr %retval, align 8, !dbg !6221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6221

if.end22:                                         ; preds = %cond.end18
  br label %if.end23, !dbg !6222

if.end23:                                         ; preds = %if.end22, %if.end11
  %33 = load i32, ptr %pid.addr, align 4, !dbg !6223
  %call24 = call ptr @find_get_task_by_vpid(i32 noundef %33) #12, !dbg !6224
  store ptr %call24, ptr %task, align 8, !dbg !6225
  %34 = load ptr, ptr %task, align 8, !dbg !6226
  %tobool25 = icmp ne ptr %34, null, !dbg !6226
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !6228

if.then26:                                        ; preds = %if.end23
  store i64 -3, ptr %rc, align 8, !dbg !6229
  br label %free_proc_pages, !dbg !6231

if.end27:                                         ; preds = %if.end23
  %35 = load ptr, ptr %task, align 8, !dbg !6232
  %call28 = call ptr @mm_access(ptr noundef %35, i32 noundef 18) #12, !dbg !6233
  store ptr %call28, ptr %mm, align 8, !dbg !6234
  %36 = load ptr, ptr %mm, align 8, !dbg !6235
  %tobool29 = icmp ne ptr %36, null, !dbg !6235
  br i1 %tobool29, label %lor.lhs.false, label %if.then31, !dbg !6237

lor.lhs.false:                                    ; preds = %if.end27
  %37 = load ptr, ptr %mm, align 8, !dbg !6238
  %call30 = call zeroext i1 @IS_ERR(ptr noundef %37) #12, !dbg !6239
  br i1 %call30, label %if.then31, label %if.end41, !dbg !6240

if.then31:                                        ; preds = %lor.lhs.false, %if.end27
  %38 = load ptr, ptr %mm, align 8, !dbg !6241
  %call32 = call zeroext i1 @IS_ERR(ptr noundef %38) #12, !dbg !6243
  br i1 %call32, label %cond.true33, label %cond.false35, !dbg !6243

cond.true33:                                      ; preds = %if.then31
  %39 = load ptr, ptr %mm, align 8, !dbg !6244
  %call34 = call i64 @PTR_ERR(ptr noundef %39) #12, !dbg !6245
  br label %cond.end36, !dbg !6243

cond.false35:                                     ; preds = %if.then31
  br label %cond.end36, !dbg !6243

cond.end36:                                       ; preds = %cond.false35, %cond.true33
  %cond37 = phi i64 [ %call34, %cond.true33 ], [ -3, %cond.false35 ], !dbg !6243
  store i64 %cond37, ptr %rc, align 8, !dbg !6246
  %40 = load i64, ptr %rc, align 8, !dbg !6247
  %cmp38 = icmp eq i64 %40, -13, !dbg !6249
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !6250

if.then39:                                        ; preds = %cond.end36
  store i64 -1, ptr %rc, align 8, !dbg !6251
  br label %if.end40, !dbg !6252

if.end40:                                         ; preds = %if.then39, %cond.end36
  br label %put_task_struct, !dbg !6253

if.end41:                                         ; preds = %lor.lhs.false
  store i64 0, ptr %i, align 8, !dbg !6254
  br label %for.cond42, !dbg !6256

for.cond42:                                       ; preds = %for.inc53, %if.end41
  %41 = load i64, ptr %i, align 8, !dbg !6257
  %42 = load i64, ptr %riovcnt.addr, align 8, !dbg !6259
  %cmp43 = icmp ult i64 %41, %42, !dbg !6260
  br i1 %cmp43, label %land.lhs.true, label %land.end, !dbg !6261

land.lhs.true:                                    ; preds = %for.cond42
  %43 = load ptr, ptr %iter.addr, align 8, !dbg !6262
  %call44 = call i64 @iov_iter_count(ptr noundef %43) #12, !dbg !6263
  %tobool45 = icmp ne i64 %call44, 0, !dbg !6263
  br i1 %tobool45, label %land.rhs, label %land.end, !dbg !6264

land.rhs:                                         ; preds = %land.lhs.true
  %44 = load i64, ptr %rc, align 8, !dbg !6265
  %tobool46 = icmp ne i64 %44, 0, !dbg !6266
  %lnot = xor i1 %tobool46, true, !dbg !6266
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond42
  %45 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond42 ], [ %lnot, %land.rhs ], !dbg !6267
  br i1 %45, label %for.body47, label %for.end55, !dbg !6268

for.body47:                                       ; preds = %land.end
  %46 = load ptr, ptr %rvec.addr, align 8, !dbg !6269
  %47 = load i64, ptr %i, align 8, !dbg !6270
  %arrayidx48 = getelementptr %struct.iovec, ptr %46, i64 %47, !dbg !6269
  %iov_base49 = getelementptr inbounds %struct.iovec, ptr %arrayidx48, i32 0, i32 0, !dbg !6271
  %48 = load ptr, ptr %iov_base49, align 8, !dbg !6271
  %49 = ptrtoint ptr %48 to i64, !dbg !6272
  %50 = load ptr, ptr %rvec.addr, align 8, !dbg !6273
  %51 = load i64, ptr %i, align 8, !dbg !6274
  %arrayidx50 = getelementptr %struct.iovec, ptr %50, i64 %51, !dbg !6273
  %iov_len51 = getelementptr inbounds %struct.iovec, ptr %arrayidx50, i32 0, i32 1, !dbg !6275
  %52 = load i64, ptr %iov_len51, align 8, !dbg !6275
  %53 = load ptr, ptr %iter.addr, align 8, !dbg !6276
  %54 = load ptr, ptr %process_pages, align 8, !dbg !6277
  %55 = load ptr, ptr %mm, align 8, !dbg !6278
  %56 = load ptr, ptr %task, align 8, !dbg !6279
  %57 = load i32, ptr %vm_write.addr, align 4, !dbg !6280
  %call52 = call i32 @process_vm_rw_single_vec(i64 noundef %49, i64 noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %57) #12, !dbg !6281
  %conv = sext i32 %call52 to i64, !dbg !6281
  store i64 %conv, ptr %rc, align 8, !dbg !6282
  br label %for.inc53, !dbg !6283

for.inc53:                                        ; preds = %for.body47
  %58 = load i64, ptr %i, align 8, !dbg !6284
  %inc54 = add i64 %58, 1, !dbg !6284
  store i64 %inc54, ptr %i, align 8, !dbg !6284
  br label %for.cond42, !dbg !6285, !llvm.loop !6286

for.end55:                                        ; preds = %land.end
  %59 = load ptr, ptr %iter.addr, align 8, !dbg !6288
  %call56 = call i64 @iov_iter_count(ptr noundef %59) #12, !dbg !6289
  %60 = load i64, ptr %total_len, align 8, !dbg !6290
  %sub57 = sub i64 %60, %call56, !dbg !6290
  store i64 %sub57, ptr %total_len, align 8, !dbg !6290
  %61 = load i64, ptr %total_len, align 8, !dbg !6291
  %tobool58 = icmp ne i64 %61, 0, !dbg !6291
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !6293

if.then59:                                        ; preds = %for.end55
  %62 = load i64, ptr %total_len, align 8, !dbg !6294
  store i64 %62, ptr %rc, align 8, !dbg !6295
  br label %if.end60, !dbg !6296

if.end60:                                         ; preds = %if.then59, %for.end55
  %63 = load ptr, ptr %mm, align 8, !dbg !6297
  call void @mmput(ptr noundef %63) #12, !dbg !6298
  br label %put_task_struct, !dbg !6298

put_task_struct:                                  ; preds = %if.end60, %if.end40
  call void @llvm.dbg.label(metadata !6136), !dbg !6299
  %64 = load ptr, ptr %task, align 8, !dbg !6300
  call void @put_task_struct(ptr noundef %64) #12, !dbg !6301
  br label %free_proc_pages, !dbg !6301

free_proc_pages:                                  ; preds = %put_task_struct, %if.then26
  call void @llvm.dbg.label(metadata !6137), !dbg !6302
  %65 = load ptr, ptr %process_pages, align 8, !dbg !6303
  %arraydecay61 = getelementptr inbounds [16 x ptr], ptr %pp_stack, i64 0, i64 0, !dbg !6305
  %cmp62 = icmp ne ptr %65, %arraydecay61, !dbg !6306
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !6307

if.then64:                                        ; preds = %free_proc_pages
  %66 = load ptr, ptr %process_pages, align 8, !dbg !6308
  call void @kfree(ptr noundef %66) #12, !dbg !6309
  br label %if.end65, !dbg !6309

if.end65:                                         ; preds = %if.then64, %free_proc_pages
  %67 = load i64, ptr %rc, align 8, !dbg !6310
  store i64 %67, ptr %retval, align 8, !dbg !6311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6311

cleanup:                                          ; preds = %if.end65, %if.then21, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_len) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_len) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages_iov) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %process_pages) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 128, ptr %pp_stack) #13, !dbg !6312
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #13, !dbg !6312
  %68 = load i64, ptr %retval, align 8, !dbg !6312
  ret i64 %68, !dbg !6312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6313 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_32bit_syscall() #3 align 16 !dbg !6316 {
entry:
  %call = call ptr @get_current() #12, !dbg !6317
  %status = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 2, !dbg !6317
  %0 = load i32, ptr %status, align 8, !dbg !6317
  %and = and i32 %0, 2, !dbg !6317
  %tobool = icmp ne i32 %and, 0, !dbg !6317
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6318

lor.rhs:                                          ; preds = %entry
  %call1 = call zeroext i1 @in_x32_syscall() #12, !dbg !6319
  br label %lor.end, !dbg !6318

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %1, !dbg !6320
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6321 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6326, metadata !DIExpression()), !dbg !6332
  br label %do.body, !dbg !6332

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !6333
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6328, metadata !DIExpression()), !dbg !6333
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6333
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !6332
  br label %do.cond, !dbg !6333

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6333

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6330, metadata !DIExpression()), !dbg !6334
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !6334, !srcloc !6335
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6334
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6334
  %3 = inttoptr i64 %2 to ptr, !dbg !6334
  store ptr %3, ptr %tmp, align 8, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !6332
  %4 = load ptr, ptr %tmp, align 8, !dbg !6334
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6332
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6332
  store ptr %5, ptr %tmp1, align 8, !dbg !6332
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !6336
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6332
  ret ptr %6, !dbg !6337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_x32_syscall() #3 align 16 !dbg !6338 {
entry:
  ret i1 false, !dbg !6339
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6340 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6344, metadata !DIExpression()), !dbg !6349
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6345, metadata !DIExpression()), !dbg !6350
  %0 = load i64, ptr %size.addr, align 8, !dbg !6351
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6352
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6353

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6354
  %tobool = icmp ne i64 %2, 0, !dbg !6354
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6355

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6346, metadata !DIExpression()), !dbg !6357
  %3 = load i64, ptr %size.addr, align 8, !dbg !6358
  %cmp = icmp ugt i64 %3, 8192, !dbg !6360
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6361

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6362
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6363
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !6364
  store ptr %call, ptr %retval, align 8, !dbg !6365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6365

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6366
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #12, !dbg !6366
  store i32 %call2, ptr %index, align 4, !dbg !6367
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6368
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6369
  %9 = ptrtoint ptr %8 to i64, !dbg !6369
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #12, !dbg !6370
  %idxprom = zext i32 %call3 to i64, !dbg !6371
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6371
  %10 = load i32, ptr %index, align 4, !dbg !6372
  %idxprom4 = zext i32 %10 to i64, !dbg !6371
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6371
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6371
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6373
  %13 = load i64, ptr %size.addr, align 8, !dbg !6374
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !6375
  store ptr %call6, ptr %retval, align 8, !dbg !6376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6376

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !6377
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6378
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6379
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !6380
  store ptr %call8, ptr %retval, align 8, !dbg !6381
  br label %return, !dbg !6381

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6382
  ret ptr %16, !dbg !6382
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6383 dso_local ptr @find_get_task_by_vpid(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6386 dso_local ptr @mm_access(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @process_vm_rw_single_vec(i64 noundef %addr, i64 noundef %len, ptr noundef %iter, ptr noundef %process_pages, ptr noundef %mm, ptr noundef %task, i32 noundef %vm_write) #0 align 16 !dbg !6390 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %iter.addr = alloca ptr, align 8
  %process_pages.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %vm_write.addr = alloca i32, align 4
  %pa = alloca i64, align 8
  %start_offset = alloca i64, align 8
  %nr_pages = alloca i64, align 8
  %rc = alloca i64, align 8
  %max_pages_per_loop = alloca i64, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %pinned_pages = alloca i32, align 4
  %__UNIQUE_ID___x341 = alloca i64, align 8
  %__UNIQUE_ID___y342 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %locked = alloca i32, align 4
  %bytes = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6394, metadata !DIExpression()), !dbg !6414
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6395, metadata !DIExpression()), !dbg !6415
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6396, metadata !DIExpression()), !dbg !6416
  store ptr %process_pages, ptr %process_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %process_pages.addr, metadata !6397, metadata !DIExpression()), !dbg !6417
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6398, metadata !DIExpression()), !dbg !6418
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6399, metadata !DIExpression()), !dbg !6419
  store i32 %vm_write, ptr %vm_write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vm_write.addr, metadata !6400, metadata !DIExpression()), !dbg !6420
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #13, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !6401, metadata !DIExpression()), !dbg !6422
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6423
  %and = and i64 %0, -4096, !dbg !6424
  store i64 %and, ptr %pa, align 8, !dbg !6422
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_offset) #13, !dbg !6425
  call void @llvm.dbg.declare(metadata ptr %start_offset, metadata !6402, metadata !DIExpression()), !dbg !6426
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6427
  %2 = load i64, ptr %pa, align 8, !dbg !6428
  %sub = sub i64 %1, %2, !dbg !6429
  store i64 %sub, ptr %start_offset, align 8, !dbg !6426
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #13, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !6403, metadata !DIExpression()), !dbg !6431
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #13, !dbg !6432
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6404, metadata !DIExpression()), !dbg !6433
  store i64 0, ptr %rc, align 8, !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_pages_per_loop) #13, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %max_pages_per_loop, metadata !6405, metadata !DIExpression()), !dbg !6435
  store i64 1024, ptr %max_pages_per_loop, align 8, !dbg !6435
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6406, metadata !DIExpression()), !dbg !6437
  store i32 0, ptr %flags, align 4, !dbg !6437
  %3 = load i64, ptr %len.addr, align 8, !dbg !6438
  %cmp = icmp eq i64 %3, 0, !dbg !6440
  br i1 %cmp, label %if.then, label %if.end, !dbg !6441

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6442

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %addr.addr, align 8, !dbg !6443
  %5 = load i64, ptr %len.addr, align 8, !dbg !6444
  %add = add i64 %4, %5, !dbg !6445
  %sub1 = sub i64 %add, 1, !dbg !6446
  %div = udiv i64 %sub1, 4096, !dbg !6447
  %6 = load i64, ptr %addr.addr, align 8, !dbg !6448
  %div2 = udiv i64 %6, 4096, !dbg !6449
  %sub3 = sub i64 %div, %div2, !dbg !6450
  %add4 = add i64 %sub3, 1, !dbg !6451
  store i64 %add4, ptr %nr_pages, align 8, !dbg !6452
  %7 = load i32, ptr %vm_write.addr, align 4, !dbg !6453
  %tobool = icmp ne i32 %7, 0, !dbg !6453
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !6455

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %flags, align 4, !dbg !6456
  %or = or i32 %8, 1, !dbg !6456
  store i32 %or, ptr %flags, align 4, !dbg !6456
  br label %if.end6, !dbg !6457

if.end6:                                          ; preds = %if.then5, %if.end
  br label %while.cond, !dbg !6458

while.cond:                                       ; preds = %cleanup.cont, %if.end6
  %9 = load i64, ptr %rc, align 8, !dbg !6459
  %tobool7 = icmp ne i64 %9, 0, !dbg !6459
  br i1 %tobool7, label %land.end, label %land.lhs.true, !dbg !6460

land.lhs.true:                                    ; preds = %while.cond
  %10 = load i64, ptr %nr_pages, align 8, !dbg !6461
  %tobool8 = icmp ne i64 %10, 0, !dbg !6461
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !6462

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !6463
  %call = call i64 @iov_iter_count(ptr noundef %11) #12, !dbg !6464
  %tobool9 = icmp ne i64 %call, 0, !dbg !6462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool9, %land.rhs ], !dbg !6465
  br i1 %12, label %while.body, label %while.end, !dbg !6458

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pinned_pages) #13, !dbg !6466
  call void @llvm.dbg.declare(metadata ptr %pinned_pages, metadata !6407, metadata !DIExpression()), !dbg !6467
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x341) #13, !dbg !6468
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x341, metadata !6409, metadata !DIExpression()), !dbg !6468
  %13 = load i64, ptr %nr_pages, align 8, !dbg !6468
  store i64 %13, ptr %__UNIQUE_ID___x341, align 8, !dbg !6468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y342) #13, !dbg !6468
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y342, metadata !6411, metadata !DIExpression()), !dbg !6468
  %14 = load i64, ptr %max_pages_per_loop, align 8, !dbg !6468
  store i64 %14, ptr %__UNIQUE_ID___y342, align 8, !dbg !6468
  %15 = load i64, ptr %__UNIQUE_ID___x341, align 8, !dbg !6468
  %16 = load i64, ptr %__UNIQUE_ID___y342, align 8, !dbg !6468
  %cmp10 = icmp ult i64 %15, %16, !dbg !6468
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !6468

cond.true:                                        ; preds = %while.body
  %17 = load i64, ptr %__UNIQUE_ID___x341, align 8, !dbg !6468
  br label %cond.end, !dbg !6468

cond.false:                                       ; preds = %while.body
  %18 = load i64, ptr %__UNIQUE_ID___y342, align 8, !dbg !6468
  br label %cond.end, !dbg !6468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !6468
  store i64 %cond, ptr %tmp, align 8, !dbg !6468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y342) #13, !dbg !6469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x341) #13, !dbg !6469
  %19 = load i64, ptr %tmp, align 8, !dbg !6468
  %conv = trunc i64 %19 to i32, !dbg !6469
  store i32 %conv, ptr %pinned_pages, align 4, !dbg !6467
  call void @llvm.lifetime.start.p0(i64 4, ptr %locked) #13, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %locked, metadata !6412, metadata !DIExpression()), !dbg !6471
  store i32 1, ptr %locked, align 4, !dbg !6471
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #13, !dbg !6472
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6413, metadata !DIExpression()), !dbg !6473
  %20 = load ptr, ptr %mm.addr, align 8, !dbg !6474
  call void @mmap_read_lock(ptr noundef %20) #12, !dbg !6475
  %21 = load ptr, ptr %mm.addr, align 8, !dbg !6476
  %22 = load i64, ptr %pa, align 8, !dbg !6477
  %23 = load i32, ptr %pinned_pages, align 4, !dbg !6478
  %conv11 = sext i32 %23 to i64, !dbg !6478
  %24 = load i32, ptr %flags, align 4, !dbg !6479
  %25 = load ptr, ptr %process_pages.addr, align 8, !dbg !6480
  %call12 = call i64 @pin_user_pages_remote(ptr noundef %21, i64 noundef %22, i64 noundef %conv11, i32 noundef %24, ptr noundef %25, ptr noundef %locked) #12, !dbg !6481
  %conv13 = trunc i64 %call12 to i32, !dbg !6481
  store i32 %conv13, ptr %pinned_pages, align 4, !dbg !6482
  %26 = load i32, ptr %locked, align 4, !dbg !6483
  %tobool14 = icmp ne i32 %26, 0, !dbg !6483
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6485

if.then15:                                        ; preds = %cond.end
  %27 = load ptr, ptr %mm.addr, align 8, !dbg !6486
  call void @mmap_read_unlock(ptr noundef %27) #12, !dbg !6487
  br label %if.end16, !dbg !6487

if.end16:                                         ; preds = %if.then15, %cond.end
  %28 = load i32, ptr %pinned_pages, align 4, !dbg !6488
  %cmp17 = icmp sle i32 %28, 0, !dbg !6490
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !6491

if.then19:                                        ; preds = %if.end16
  store i32 -14, ptr %retval, align 4, !dbg !6492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6492

if.end20:                                         ; preds = %if.end16
  %29 = load i32, ptr %pinned_pages, align 4, !dbg !6493
  %conv21 = sext i32 %29 to i64, !dbg !6493
  %mul = mul i64 %conv21, 4096, !dbg !6494
  %30 = load i64, ptr %start_offset, align 8, !dbg !6495
  %sub22 = sub i64 %mul, %30, !dbg !6496
  store i64 %sub22, ptr %bytes, align 8, !dbg !6497
  %31 = load i64, ptr %bytes, align 8, !dbg !6498
  %32 = load i64, ptr %len.addr, align 8, !dbg !6500
  %cmp23 = icmp ugt i64 %31, %32, !dbg !6501
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6502

if.then25:                                        ; preds = %if.end20
  %33 = load i64, ptr %len.addr, align 8, !dbg !6503
  store i64 %33, ptr %bytes, align 8, !dbg !6504
  br label %if.end26, !dbg !6505

if.end26:                                         ; preds = %if.then25, %if.end20
  %34 = load ptr, ptr %process_pages.addr, align 8, !dbg !6506
  %35 = load i64, ptr %start_offset, align 8, !dbg !6507
  %conv27 = trunc i64 %35 to i32, !dbg !6507
  %36 = load i64, ptr %bytes, align 8, !dbg !6508
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !6509
  %38 = load i32, ptr %vm_write.addr, align 4, !dbg !6510
  %call28 = call i32 @process_vm_rw_pages(ptr noundef %34, i32 noundef %conv27, i64 noundef %36, ptr noundef %37, i32 noundef %38) #12, !dbg !6511
  %conv29 = sext i32 %call28 to i64, !dbg !6511
  store i64 %conv29, ptr %rc, align 8, !dbg !6512
  %39 = load i64, ptr %bytes, align 8, !dbg !6513
  %40 = load i64, ptr %len.addr, align 8, !dbg !6514
  %sub30 = sub i64 %40, %39, !dbg !6514
  store i64 %sub30, ptr %len.addr, align 8, !dbg !6514
  store i64 0, ptr %start_offset, align 8, !dbg !6515
  %41 = load i32, ptr %pinned_pages, align 4, !dbg !6516
  %conv31 = sext i32 %41 to i64, !dbg !6516
  %42 = load i64, ptr %nr_pages, align 8, !dbg !6517
  %sub32 = sub i64 %42, %conv31, !dbg !6517
  store i64 %sub32, ptr %nr_pages, align 8, !dbg !6517
  %43 = load i32, ptr %pinned_pages, align 4, !dbg !6518
  %conv33 = sext i32 %43 to i64, !dbg !6518
  %mul34 = mul i64 %conv33, 4096, !dbg !6519
  %44 = load i64, ptr %pa, align 8, !dbg !6520
  %add35 = add i64 %44, %mul34, !dbg !6520
  store i64 %add35, ptr %pa, align 8, !dbg !6520
  %45 = load ptr, ptr %process_pages.addr, align 8, !dbg !6521
  %46 = load i32, ptr %pinned_pages, align 4, !dbg !6522
  %conv36 = sext i32 %46 to i64, !dbg !6522
  %47 = load i32, ptr %vm_write.addr, align 4, !dbg !6523
  %tobool37 = icmp ne i32 %47, 0, !dbg !6523
  call void @unpin_user_pages_dirty_lock(ptr noundef %45, i64 noundef %conv36, i1 noundef zeroext %tobool37) #12, !dbg !6524
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6525
  br label %cleanup, !dbg !6525

cleanup:                                          ; preds = %if.end26, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #13, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 4, ptr %locked) #13, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 4, ptr %pinned_pages) #13, !dbg !6525
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6458, !llvm.loop !6526

while.end:                                        ; preds = %land.end
  %48 = load i64, ptr %rc, align 8, !dbg !6527
  %conv40 = trunc i64 %48 to i32, !dbg !6527
  store i32 %conv40, ptr %retval, align 4, !dbg !6528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6528

cleanup41:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_pages_per_loop) #13, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #13, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #13, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_offset) #13, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #13, !dbg !6529
  %49 = load i32, ptr %retval, align 4, !dbg !6529
  ret i32 %49, !dbg !6529
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6530 dso_local void @mmput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #3 align 16 !dbg !9 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5888, metadata !DIExpression()), !dbg !6533
  %0 = load ptr, ptr %t.addr, align 8, !dbg !6534
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !6536
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #12, !dbg !6537
  br i1 %call, label %if.end, label %if.then, !dbg !6538

if.then:                                          ; preds = %entry
  br label %return, !dbg !6539

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6540

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6543

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !6545
  call void @__put_task_struct(ptr noundef %1) #12, !dbg !6546
  br label %do.body1, !dbg !6547

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6548

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !6550

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !6551
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6552 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6553 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6557, metadata !DIExpression()), !dbg !6559
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6558, metadata !DIExpression()), !dbg !6560
  %0 = load i64, ptr %size.addr, align 8, !dbg !6561
  %tobool = icmp ne i64 %0, 0, !dbg !6561
  br i1 %tobool, label %if.end, label %if.then, !dbg !6563

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6564
  br label %return, !dbg !6564

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6565
  %cmp = icmp ule i64 %1, 8, !dbg !6567
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6568

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6569
  br label %return, !dbg !6569

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6570
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6572
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6573

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6574
  %cmp4 = icmp ule i64 %3, 96, !dbg !6575
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6576

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6577
  br label %return, !dbg !6577

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6578
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6580
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6581

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6582
  %cmp9 = icmp ule i64 %5, 192, !dbg !6583
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6584

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6585
  br label %return, !dbg !6585

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6586
  %cmp12 = icmp ule i64 %6, 8, !dbg !6588
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6589

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6590
  br label %return, !dbg !6590

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6591
  %cmp15 = icmp ule i64 %7, 16, !dbg !6593
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6594

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6595
  br label %return, !dbg !6595

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6596
  %cmp18 = icmp ule i64 %8, 32, !dbg !6598
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6599

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6600
  br label %return, !dbg !6600

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6601
  %cmp21 = icmp ule i64 %9, 64, !dbg !6603
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6604

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6605
  br label %return, !dbg !6605

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6606
  %cmp24 = icmp ule i64 %10, 128, !dbg !6608
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6609

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6610
  br label %return, !dbg !6610

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6611
  %cmp27 = icmp ule i64 %11, 256, !dbg !6613
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6614

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6615
  br label %return, !dbg !6615

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6616
  %cmp30 = icmp ule i64 %12, 512, !dbg !6618
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6619

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6620
  br label %return, !dbg !6620

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6621
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6623
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6624

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6625
  br label %return, !dbg !6625

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6626
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6628
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6629

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6630
  br label %return, !dbg !6630

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6631
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6633
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6634

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6635
  br label %return, !dbg !6635

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6636
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6638
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6639

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6640
  br label %return, !dbg !6640

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6641
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6643
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6644

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6645
  br label %return, !dbg !6645

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6646
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6648
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6649

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6650
  br label %return, !dbg !6650

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6651
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6653
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6654

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6655
  br label %return, !dbg !6655

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6656
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6658
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6659

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6660
  br label %return, !dbg !6660

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6661
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6663
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6664

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6665
  br label %return, !dbg !6665

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6666
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6668
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6669

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6670
  br label %return, !dbg !6670

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6671
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6673
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6674

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6675
  br label %return, !dbg !6675

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6676
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6678
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6679

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6680
  br label %return, !dbg !6680

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6681, !range !6683, !noundef !412
  %tobool69 = trunc i8 %25 to i1, !dbg !6681
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6684

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6685

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !6686, !srcloc !6689
  unreachable, !dbg !6686

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6690

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6691

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6692

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6694

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6692

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !6696, !srcloc !6698
  br label %do.end75, !dbg !6696

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6692

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6699
  br label %return, !dbg !6699

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6700
  ret i32 %26, !dbg !6700
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6701 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6704 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6708, metadata !DIExpression()), !dbg !6710
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6709, metadata !DIExpression()), !dbg !6711
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6712
  %and = and i32 %0, 17, !dbg !6712
  %cmp = icmp eq i32 %and, 0, !dbg !6712
  %lnot = xor i1 %cmp, true, !dbg !6712
  %lnot1 = xor i1 %lnot, true, !dbg !6712
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6712
  %conv = sext i32 %lnot.ext to i64, !dbg !6712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6712
  %tobool = icmp ne i64 %expval, 0, !dbg !6712
  br i1 %tobool, label %if.then, label %if.end, !dbg !6714

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6715
  br label %return, !dbg !6715

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6716
  %and2 = and i32 %1, 1, !dbg !6718
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6718
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6719

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6720
  br label %return, !dbg !6720

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6721
  br label %return, !dbg !6721

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6723
  ret i32 %2, !dbg !6723
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6724 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6725 dso_local void @__compiletime_assert_245() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_lock(ptr noundef %mm) #3 align 16 !dbg !6726 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6731
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !6732
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6733
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6734
  %mmap_lock = getelementptr inbounds %struct.anon.28, ptr %2, i32 0, i32 16, !dbg !6734
  call void @down_read(ptr noundef %mmap_lock) #12, !dbg !6735
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !6736
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #12, !dbg !6737
  ret void, !dbg !6738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6739 dso_local i64 @pin_user_pages_remote(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_unlock(ptr noundef %mm) #3 align 16 !dbg !6742 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6744, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6746
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !6747
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6748
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6749
  %mmap_lock = getelementptr inbounds %struct.anon.28, ptr %2, i32 0, i32 16, !dbg !6749
  call void @up_read(ptr noundef %mmap_lock) #12, !dbg !6750
  ret void, !dbg !6751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @process_vm_rw_pages(ptr noundef %pages, i32 noundef %offset, i64 noundef %len, ptr noundef %iter, i32 noundef %vm_write) #0 align 16 !dbg !6752 {
entry:
  %retval = alloca i32, align 4
  %pages.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %iter.addr = alloca ptr, align 8
  %vm_write.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  %copy = alloca i64, align 8
  %copied = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !6756, metadata !DIExpression()), !dbg !6765
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6757, metadata !DIExpression()), !dbg !6766
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6758, metadata !DIExpression()), !dbg !6767
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6759, metadata !DIExpression()), !dbg !6768
  store i32 %vm_write, ptr %vm_write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vm_write.addr, metadata !6760, metadata !DIExpression()), !dbg !6769
  br label %while.cond, !dbg !6770

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !6771
  %tobool = icmp ne i64 %0, 0, !dbg !6771
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6772

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !6773
  %call = call i64 @iov_iter_count(ptr noundef %1) #12, !dbg !6774
  %tobool1 = icmp ne i64 %call, 0, !dbg !6772
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !6775
  br i1 %2, label %while.body, label %while.end, !dbg !6770

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #13, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6761, metadata !DIExpression()), !dbg !6777
  %3 = load ptr, ptr %pages.addr, align 8, !dbg !6778
  %incdec.ptr = getelementptr ptr, ptr %3, i32 1, !dbg !6778
  store ptr %incdec.ptr, ptr %pages.addr, align 8, !dbg !6778
  %4 = load ptr, ptr %3, align 8, !dbg !6779
  store ptr %4, ptr %page, align 8, !dbg !6777
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #13, !dbg !6780
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !6763, metadata !DIExpression()), !dbg !6781
  %5 = load i32, ptr %offset.addr, align 4, !dbg !6782
  %conv = zext i32 %5 to i64, !dbg !6782
  %sub = sub i64 4096, %conv, !dbg !6783
  store i64 %sub, ptr %copy, align 8, !dbg !6781
  call void @llvm.lifetime.start.p0(i64 8, ptr %copied) #13, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !6764, metadata !DIExpression()), !dbg !6785
  %6 = load i64, ptr %copy, align 8, !dbg !6786
  %7 = load i64, ptr %len.addr, align 8, !dbg !6788
  %cmp = icmp ugt i64 %6, %7, !dbg !6789
  br i1 %cmp, label %if.then, label %if.end, !dbg !6790

if.then:                                          ; preds = %while.body
  %8 = load i64, ptr %len.addr, align 8, !dbg !6791
  store i64 %8, ptr %copy, align 8, !dbg !6792
  br label %if.end, !dbg !6793

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, ptr %vm_write.addr, align 4, !dbg !6794
  %tobool3 = icmp ne i32 %9, 0, !dbg !6794
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !6796

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %page, align 8, !dbg !6797
  %11 = load i32, ptr %offset.addr, align 4, !dbg !6798
  %conv5 = zext i32 %11 to i64, !dbg !6798
  %12 = load i64, ptr %copy, align 8, !dbg !6799
  %13 = load ptr, ptr %iter.addr, align 8, !dbg !6800
  %call6 = call i64 @copy_page_from_iter(ptr noundef %10, i64 noundef %conv5, i64 noundef %12, ptr noundef %13) #12, !dbg !6801
  store i64 %call6, ptr %copied, align 8, !dbg !6802
  br label %if.end9, !dbg !6803

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %page, align 8, !dbg !6804
  %15 = load i32, ptr %offset.addr, align 4, !dbg !6805
  %conv7 = zext i32 %15 to i64, !dbg !6805
  %16 = load i64, ptr %copy, align 8, !dbg !6806
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !6807
  %call8 = call i64 @copy_page_to_iter(ptr noundef %14, i64 noundef %conv7, i64 noundef %16, ptr noundef %17) #12, !dbg !6808
  store i64 %call8, ptr %copied, align 8, !dbg !6809
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %18 = load i64, ptr %copied, align 8, !dbg !6810
  %19 = load i64, ptr %len.addr, align 8, !dbg !6811
  %sub10 = sub i64 %19, %18, !dbg !6811
  store i64 %sub10, ptr %len.addr, align 8, !dbg !6811
  %20 = load i64, ptr %copied, align 8, !dbg !6812
  %21 = load i64, ptr %copy, align 8, !dbg !6814
  %cmp11 = icmp ult i64 %20, %21, !dbg !6815
  br i1 %cmp11, label %land.lhs.true, label %if.end16, !dbg !6816

land.lhs.true:                                    ; preds = %if.end9
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !6817
  %call13 = call i64 @iov_iter_count(ptr noundef %22) #12, !dbg !6818
  %tobool14 = icmp ne i64 %call13, 0, !dbg !6818
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6819

if.then15:                                        ; preds = %land.lhs.true
  store i32 -14, ptr %retval, align 4, !dbg !6820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6820

if.end16:                                         ; preds = %land.lhs.true, %if.end9
  store i32 0, ptr %offset.addr, align 4, !dbg !6821
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6822
  br label %cleanup, !dbg !6822

cleanup:                                          ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %copied) #13, !dbg !6822
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #13, !dbg !6822
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #13, !dbg !6822
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6770, !llvm.loop !6823

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !6824
  br label %return, !dbg !6824

return:                                           ; preds = %while.end, %cleanup
  %23 = load i32, ptr %retval, align 4, !dbg !6825
  ret i32 %23, !dbg !6825

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6826 dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i64 noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #3 align 16 !dbg !6829 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6833, metadata !DIExpression()), !dbg !6835
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6834, metadata !DIExpression()), !dbg !6836
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1)) #12, !dbg !6837
  br i1 %call, label %if.then, label %if.end, !dbg !6839

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6840
  %1 = load i8, ptr %write.addr, align 1, !dbg !6841, !range !6683, !noundef !412
  %tobool = trunc i8 %1 to i1, !dbg !6841
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext %tobool) #12, !dbg !6842
  br label %if.end, !dbg !6842

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6843
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6844 dso_local void @down_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #3 align 16 !dbg !6848 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6852, metadata !DIExpression()), !dbg !6855
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6853, metadata !DIExpression()), !dbg !6856
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6854, metadata !DIExpression()), !dbg !6857
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1)) #12, !dbg !6858
  br i1 %call, label %if.then, label %if.end, !dbg !6860

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6861
  %1 = load i8, ptr %write.addr, align 1, !dbg !6862, !range !6683, !noundef !412
  %tobool = trunc i8 %1 to i1, !dbg !6862
  %2 = load i8, ptr %success.addr, align 1, !dbg !6863, !range !6683, !noundef !412
  %tobool2 = trunc i8 %2 to i1, !dbg !6863
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #12, !dbg !6864
  br label %if.end, !dbg !6864

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !6866 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6871, metadata !DIExpression()), !dbg !6872
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6873
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !6874
  ret i1 %call, !dbg !6875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6876 dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !6877 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6882, metadata !DIExpression()), !dbg !6885
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6883, metadata !DIExpression()), !dbg !6886
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6887
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6888, !range !6683, !noundef !412
  %tobool = trunc i8 %1 to i1, !dbg !6888
  %conv = zext i1 %tobool to i32, !dbg !6888
  %or = or i32 2, %conv, !dbg !6889
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !6890, !srcloc !6891

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6892
  br label %return, !dbg !6892

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6884), !dbg !6893
  store i1 true, ptr %retval, align 1, !dbg !6894
  br label %return, !dbg !6894

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6895
  ret i1 %2, !dbg !6895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6896 dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #3 align 16 !dbg !6897 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6899, metadata !DIExpression()), !dbg !6901
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6900, metadata !DIExpression()), !dbg !6902
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #12, !dbg !6903
  br i1 %call, label %if.then, label %if.end, !dbg !6905

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6906
  %1 = load i8, ptr %write.addr, align 1, !dbg !6907, !range !6683, !noundef !412
  %tobool = trunc i8 %1 to i1, !dbg !6907
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %tobool) #12, !dbg !6908
  br label %if.end, !dbg !6908

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6910 dso_local void @up_read(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6911 dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6912 dso_local i64 @copy_page_from_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6915 dso_local i64 @copy_page_to_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !6916 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6921, metadata !DIExpression()), !dbg !6922
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6923
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #12, !dbg !6924
  ret i1 %call, !dbg !6925
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6926 dso_local void @__put_task_struct(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6927 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6931, metadata !DIExpression()), !dbg !6933
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6932, metadata !DIExpression()), !dbg !6934
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6935
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6936
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !6937
  ret i1 %call, !dbg !6938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6939 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6943, metadata !DIExpression()), !dbg !6947
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6944, metadata !DIExpression()), !dbg !6948
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6945, metadata !DIExpression()), !dbg !6949
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6946, metadata !DIExpression()), !dbg !6951
  %0 = load i32, ptr %i.addr, align 4, !dbg !6952
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6953
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6954
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #12, !dbg !6955
  store i32 %call, ptr %old, align 4, !dbg !6951
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6956
  %tobool = icmp ne ptr %2, null, !dbg !6956
  br i1 %tobool, label %if.then, label %if.end, !dbg !6958

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6959
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6960
  store i32 %3, ptr %4, align 4, !dbg !6961
  br label %if.end, !dbg !6962

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6963
  %6 = load i32, ptr %i.addr, align 4, !dbg !6965
  %cmp = icmp eq i32 %5, %6, !dbg !6966
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6967

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6968

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6970

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6972

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6972

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6970

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6974

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6976

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6976

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6974, !srcloc !6978
  br label %do.cond7, !dbg !6974

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6974

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6970

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6970

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6979

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6980
  %cmp12 = icmp slt i32 %7, 0, !dbg !6980
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6980

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6980
  %9 = load i32, ptr %i.addr, align 4, !dbg !6980
  %sub = sub i32 %8, %9, !dbg !6980
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6980
  br label %lor.end, !dbg !6980

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6980
  %lnot14 = xor i1 %lnot, true, !dbg !6980
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6980
  %conv = sext i32 %lnot.ext to i64, !dbg !6980
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6980
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6980
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6982

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6983
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #12, !dbg !6984
  br label %if.end17, !dbg !6984

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6985

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !6986
  %12 = load i1, ptr %retval, align 1, !dbg !6986
  ret i1 %12, !dbg !6986
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6987 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6993, metadata !DIExpression()), !dbg !6995
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6994, metadata !DIExpression()), !dbg !6996
  br label %do.body, !dbg !6997

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6998

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7000
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !7001
  %1 = load i32, ptr %i.addr, align 4, !dbg !7002
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7003
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #12, !dbg !7004
  ret i32 %call, !dbg !7005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7006 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7009 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7017, metadata !DIExpression()), !dbg !7019
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7018, metadata !DIExpression()), !dbg !7020
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7021
  %1 = load i64, ptr %size.addr, align 8, !dbg !7022
  %conv = trunc i64 %1 to i32, !dbg !7022
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !7023
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7024
  %3 = load i64, ptr %size.addr, align 8, !dbg !7024
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !7024
  ret void, !dbg !7025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7026 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7029, metadata !DIExpression()), !dbg !7031
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7030, metadata !DIExpression()), !dbg !7032
  %0 = load i32, ptr %i.addr, align 4, !dbg !7033
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7034
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #12, !dbg !7035
  ret i32 %call, !dbg !7036
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7037 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7042, metadata !DIExpression()), !dbg !7044
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7043, metadata !DIExpression()), !dbg !7045
  ret i1 true, !dbg !7046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7047 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7052, metadata !DIExpression()), !dbg !7055
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7053, metadata !DIExpression()), !dbg !7056
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7054, metadata !DIExpression()), !dbg !7057
  ret void, !dbg !7058
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7059 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7062, metadata !DIExpression()), !dbg !7066
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7063, metadata !DIExpression()), !dbg !7067
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !7068
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7064, metadata !DIExpression()), !dbg !7068
  %0 = load i32, ptr %i.addr, align 4, !dbg !7068
  %sub = sub i32 0, %0, !dbg !7068
  store i32 %sub, ptr %__ret, align 4, !dbg !7068
  %1 = load i32, ptr %__ret, align 4, !dbg !7068
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7068
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7068
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !7068, !srcloc !7069
  store i32 %3, ptr %__ret, align 4, !dbg !7068
  %4 = load i32, ptr %__ret, align 4, !dbg !7068
  store i32 %4, ptr %tmp, align 4, !dbg !7068
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !7070
  %5 = load i32, ptr %tmp, align 4, !dbg !7068
  ret i32 %5, !dbg !7071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_process_vm_writev(i32 noundef %pid, ptr noundef %lvec, i64 noundef %liovcnt, ptr noundef %rvec, i64 noundef %riovcnt, i64 noundef %flags) #3 align 16 !dbg !7072 {
entry:
  %pid.addr = alloca i32, align 4
  %lvec.addr = alloca ptr, align 8
  %liovcnt.addr = alloca i64, align 8
  %rvec.addr = alloca ptr, align 8
  %riovcnt.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !7074, metadata !DIExpression()), !dbg !7080
  store ptr %lvec, ptr %lvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lvec.addr, metadata !7075, metadata !DIExpression()), !dbg !7080
  store i64 %liovcnt, ptr %liovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %liovcnt.addr, metadata !7076, metadata !DIExpression()), !dbg !7080
  store ptr %rvec, ptr %rvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rvec.addr, metadata !7077, metadata !DIExpression()), !dbg !7080
  store i64 %riovcnt, ptr %riovcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %riovcnt.addr, metadata !7078, metadata !DIExpression()), !dbg !7080
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7079, metadata !DIExpression()), !dbg !7080
  %0 = load i32, ptr %pid.addr, align 4, !dbg !7081
  %1 = load ptr, ptr %lvec.addr, align 8, !dbg !7082
  %2 = load i64, ptr %liovcnt.addr, align 8, !dbg !7083
  %3 = load ptr, ptr %rvec.addr, align 8, !dbg !7084
  %4 = load i64, ptr %riovcnt.addr, align 8, !dbg !7085
  %5 = load i64, ptr %flags.addr, align 8, !dbg !7086
  %call = call i64 @process_vm_rw(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1) #12, !dbg !7087
  ret i64 %call, !dbg !7088
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone }
attributes #13 = { nounwind }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { nounwind memory(none) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!5844}
!llvm.module.flags = !{!5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896}
!llvm.ident = !{!5897}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "put_task_map", scope: !9, file: !10, line: 134, type: !2437, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "put_task_struct", scope: !10, file: !10, line: 124, type: !11, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5887)
!10 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !15, line: 746, size: 58368, elements: !16)
!15 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!16 = !{!17, !31, !32, !34, !46, !47, !48, !49, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !141, !152, !284, !288, !291, !322, !323, !324, !325, !336, !338, !339, !340, !341, !342, !343, !354, !355, !358, !359, !360, !361, !362, !363, !364, !365, !372, !373, !380, !381, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4992, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5035, !5041, !5042, !5043, !5044, !5045, !5047, !5050, !5057, !5062, !5065, !5068, !5071, !5103, !5301, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5339, !5340, !5341, !5350, !5358, !5359, !5360, !5361, !5362, !5367, !5368, !5369, !5372, !5373, !5376, !5379, !5382, !5390, !5393, !5394, !5480, !5481, !5482, !5483, !5484, !5490, !5491, !5492, !5493, !5494, !5495, !5498, !5512, !5513, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5556, !5557, !5563, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5575, !5653, !5655, !5656, !5657, !5658, !5659, !5660, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5677, !5678, !5679}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !14, file: !15, line: 752, baseType: !18, size: 192)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !19, line: 56, size: 192, elements: !20)
!19 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!20 = !{!21, !23, !24, !30}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !18, file: !19, line: 57, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !18, file: !19, line: 58, baseType: !22, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !18, file: !19, line: 59, baseType: !25, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !18, file: !19, line: 61, baseType: !25, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !14, file: !15, line: 754, baseType: !29, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !14, file: !15, line: 767, baseType: !33, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !14, file: !15, line: 768, baseType: !35, size: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !36, line: 113, baseType: !37)
!36 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !36, line: 111, size: 32, elements: !38)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !37, file: !36, line: 112, baseType: !40, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !42, file: !41, line: 173, baseType: !45, size: 32)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 770, baseType: !29, size: 32, offset: 352)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !14, file: !15, line: 771, baseType: !29, size: 32, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !14, file: !15, line: 774, baseType: !45, size: 32, offset: 416)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !14, file: !15, line: 775, baseType: !50, size: 128, offset: 448)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !51, line: 58, size: 128, elements: !52)
!51 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!52 = !{!53, !59, !64, !68}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !50, file: !51, line: 59, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !55, line: 60, size: 64, elements: !56)
!55 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !55, line: 61, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, scope: !50, file: !51, line: 60, baseType: !60, size: 32, offset: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !50, file: !51, line: 60, size: 32, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !60, file: !51, line: 61, baseType: !29, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !60, file: !51, line: 62, baseType: !40, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !50, file: !51, line: 65, baseType: !65, size: 16, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !50, file: !51, line: 65, baseType: !65, size: 16, offset: 112)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !14, file: !15, line: 776, baseType: !29, size: 32, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !14, file: !15, line: 777, baseType: !22, size: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !14, file: !15, line: 778, baseType: !13, size: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !14, file: !15, line: 787, baseType: !45, size: 32, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !14, file: !15, line: 788, baseType: !45, size: 32, offset: 800)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !14, file: !15, line: 790, baseType: !45, size: 32, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !14, file: !15, line: 792, baseType: !45, size: 32, offset: 864)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !14, file: !15, line: 793, baseType: !45, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !14, file: !15, line: 794, baseType: !45, size: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !14, file: !15, line: 795, baseType: !29, size: 32, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !14, file: !15, line: 797, baseType: !80, size: 2048, offset: 1024)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !15, line: 551, size: 2048, elements: !81)
!81 = !{!82, !87, !95, !99, !100, !106, !107, !108, !109, !110, !111, !115, !116, !117, !118, !120, !123, !124, !125}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !80, file: !15, line: 553, baseType: !83, size: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !15, line: 411, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !83, file: !15, line: 412, baseType: !22, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !83, file: !15, line: 413, baseType: !25, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !80, file: !15, line: 554, baseType: !88, size: 192, align: 64, offset: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !89, line: 5, size: 192, align: 64, elements: !90)
!89 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!90 = !{!91, !92, !94}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !88, file: !89, line: 6, baseType: !22, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !88, file: !89, line: 7, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !88, file: !89, line: 8, baseType: !93, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !80, file: !15, line: 555, baseType: !96, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !98)
!98 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !80, file: !15, line: 556, baseType: !96, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !80, file: !15, line: 558, baseType: !101, size: 128, offset: 448)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !102)
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !101, file: !41, line: 191, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !101, file: !41, line: 191, baseType: !104, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !80, file: !15, line: 559, baseType: !29, size: 32, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !80, file: !15, line: 561, baseType: !96, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !80, file: !15, line: 562, baseType: !96, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !80, file: !15, line: 563, baseType: !96, size: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !80, file: !15, line: 564, baseType: !96, size: 64, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !80, file: !15, line: 565, baseType: !112, size: 64, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !26, line: 22, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !28, line: 30, baseType: !114)
!114 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !80, file: !15, line: 566, baseType: !96, size: 64, offset: 960)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !80, file: !15, line: 568, baseType: !96, size: 64, offset: 1024)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !80, file: !15, line: 571, baseType: !45, size: 32, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !15, line: 572, baseType: !119, size: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !80, file: !15, line: 574, baseType: !121, size: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !15, line: 49, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !80, file: !15, line: 576, baseType: !121, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !80, file: !15, line: 578, baseType: !22, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !80, file: !15, line: 588, baseType: !126, size: 512, align: 512, offset: 1536)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !15, line: 497, size: 512, align: 512, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !126, file: !15, line: 498, baseType: !96, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !126, file: !15, line: 499, baseType: !96, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !126, file: !15, line: 500, baseType: !96, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !126, file: !15, line: 501, baseType: !25, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !126, file: !15, line: 502, baseType: !25, size: 32, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !126, file: !15, line: 503, baseType: !22, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !126, file: !15, line: 504, baseType: !22, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !126, file: !15, line: 505, baseType: !22, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !126, file: !15, line: 506, baseType: !137, size: 64, align: 64, offset: 448)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !15, line: 445, size: 64, align: 64, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !137, file: !15, line: 446, baseType: !29, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !137, file: !15, line: 447, baseType: !29, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !14, file: !15, line: 798, baseType: !142, size: 384, offset: 3072)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !15, line: 592, size: 384, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !142, file: !15, line: 593, baseType: !101, size: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !142, file: !15, line: 594, baseType: !22, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !142, file: !15, line: 595, baseType: !22, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !142, file: !15, line: 596, baseType: !29, size: 32, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !142, file: !15, line: 597, baseType: !67, size: 16, offset: 288)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !142, file: !15, line: 598, baseType: !67, size: 16, offset: 304)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !142, file: !15, line: 600, baseType: !151, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !14, file: !15, line: 799, baseType: !153, size: 1792, offset: 3456)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !15, line: 610, size: 1792, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !281, !282}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !153, file: !15, line: 611, baseType: !88, size: 192, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !153, file: !15, line: 618, baseType: !96, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !153, file: !15, line: 619, baseType: !96, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !153, file: !15, line: 620, baseType: !96, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !153, file: !15, line: 621, baseType: !96, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !153, file: !15, line: 622, baseType: !96, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !153, file: !15, line: 629, baseType: !112, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !153, file: !15, line: 630, baseType: !96, size: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !15, line: 631, baseType: !29, size: 32, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !153, file: !15, line: 653, baseType: !29, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !153, file: !15, line: 654, baseType: !29, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !153, file: !15, line: 655, baseType: !29, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !153, file: !15, line: 656, baseType: !29, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !153, file: !15, line: 662, baseType: !169, size: 512, offset: 704)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !170, line: 118, size: 512, elements: !171)
!170 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!171 = !{!172, !180, !181, !190, !277, !278, !279, !280}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !169, file: !170, line: 119, baseType: !173, size: 256)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !174, line: 9, size: 256, elements: !175)
!174 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !174, line: 10, baseType: !88, size: 192, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !173, file: !174, line: 11, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !179, line: 29, baseType: !112)
!179 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !169, file: !170, line: 120, baseType: !178, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !169, file: !170, line: 121, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !189}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !170, line: 65, baseType: !29, size: 32, elements: !186)
!186 = !{!187, !188}
!187 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!188 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !169, file: !170, line: 122, baseType: !191, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !170, line: 159, size: 512, align: 512, elements: !193)
!193 = !{!194, !245, !246, !250, !260, !261, !272, !276}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !192, file: !170, line: 160, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !170, line: 215, size: 4608, align: 512, elements: !197)
!197 = !{!198, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !170, line: 216, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !200, line: 23, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !200, line: 14, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !201, file: !200, line: 15, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !205, line: 44, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !205, line: 14, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 15, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 15, size: 32, elements: !210)
!210 = !{!211, !212, !220}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !205, line: 16, baseType: !40, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 24, baseType: !213, size: 16)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 24, size: 16, elements: !214)
!214 = !{!215, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !213, file: !205, line: 25, baseType: !216, size: 8)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !218)
!218 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !213, file: !205, line: 26, baseType: !216, size: 8, offset: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 28, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 28, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !221, file: !205, line: 29, baseType: !65, size: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !221, file: !205, line: 30, baseType: !65, size: 16, offset: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !196, file: !170, line: 217, baseType: !29, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !196, file: !170, line: 218, baseType: !29, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !196, file: !170, line: 219, baseType: !29, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !196, file: !170, line: 220, baseType: !29, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !196, file: !170, line: 221, baseType: !29, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !196, file: !170, line: 222, baseType: !29, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !196, file: !170, line: 223, baseType: !29, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !196, file: !170, line: 224, baseType: !29, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !196, file: !170, line: 226, baseType: !29, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !196, file: !170, line: 227, baseType: !67, size: 16, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !196, file: !170, line: 228, baseType: !67, size: 16, offset: 208)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !196, file: !170, line: 229, baseType: !29, size: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !196, file: !170, line: 235, baseType: !178, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !196, file: !170, line: 236, baseType: !189, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !196, file: !170, line: 237, baseType: !178, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !196, file: !170, line: 238, baseType: !189, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !196, file: !170, line: 239, baseType: !242, size: 4096, align: 512, offset: 512)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 4096, align: 512, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !192, file: !170, line: 161, baseType: !29, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !192, file: !170, line: 162, baseType: !247, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !249, line: 96, baseType: !45)
!249 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!250 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !192, file: !170, line: 163, baseType: !251, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !252, line: 274, baseType: !253)
!252 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !252, line: 274, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !253, file: !252, line: 274, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !252, line: 69, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !252, line: 64, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !257, file: !252, line: 65, baseType: !29, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !192, file: !170, line: 164, baseType: !189, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !192, file: !170, line: 165, baseType: !262, size: 128, offset: 256)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !174, line: 14, size: 128, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !262, file: !174, line: 15, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !89, line: 26, size: 128, elements: !266)
!266 = !{!267, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !265, file: !89, line: 27, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !89, line: 12, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !268, file: !89, line: 13, baseType: !93, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !265, file: !89, line: 28, baseType: !93, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !192, file: !170, line: 166, baseType: !273, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!178}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !192, file: !170, line: 167, baseType: !178, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !169, file: !170, line: 123, baseType: !216, size: 8, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !169, file: !170, line: 124, baseType: !216, size: 8, offset: 456)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !169, file: !170, line: 125, baseType: !216, size: 8, offset: 464)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !169, file: !170, line: 126, baseType: !216, size: 8, offset: 472)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !153, file: !15, line: 671, baseType: !169, size: 512, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !153, file: !15, line: 679, baseType: !283, size: 64, offset: 1728)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !14, file: !15, line: 800, baseType: !285, size: 64, offset: 5248)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !15, line: 800, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !14, file: !15, line: 809, baseType: !289, size: 64, offset: 5312)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !15, line: 70, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !14, file: !15, line: 825, baseType: !292, size: 2048, align: 512, offset: 5632)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !15, line: 509, size: 2048, align: 512, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !292, file: !15, line: 511, baseType: !96, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !292, file: !15, line: 512, baseType: !96, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !292, file: !15, line: 513, baseType: !96, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !292, file: !15, line: 514, baseType: !96, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !292, file: !15, line: 515, baseType: !96, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !292, file: !15, line: 516, baseType: !96, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !292, file: !15, line: 518, baseType: !96, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !292, file: !15, line: 519, baseType: !96, size: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !292, file: !15, line: 520, baseType: !112, size: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !292, file: !15, line: 522, baseType: !96, size: 64, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !292, file: !15, line: 523, baseType: !96, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !292, file: !15, line: 524, baseType: !112, size: 64, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !292, file: !15, line: 526, baseType: !112, size: 64, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !292, file: !15, line: 527, baseType: !96, size: 64, offset: 832)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !292, file: !15, line: 529, baseType: !96, size: 64, offset: 896)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !292, file: !15, line: 530, baseType: !96, size: 64, offset: 960)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !292, file: !15, line: 531, baseType: !96, size: 64, offset: 1024)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !292, file: !15, line: 532, baseType: !96, size: 64, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !292, file: !15, line: 533, baseType: !96, size: 64, offset: 1152)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !292, file: !15, line: 535, baseType: !96, size: 64, offset: 1216)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !292, file: !15, line: 536, baseType: !96, size: 64, offset: 1280)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !292, file: !15, line: 537, baseType: !96, size: 64, offset: 1344)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !292, file: !15, line: 538, baseType: !96, size: 64, offset: 1408)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !292, file: !15, line: 539, baseType: !96, size: 64, offset: 1472)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !292, file: !15, line: 540, baseType: !96, size: 64, offset: 1536)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !292, file: !15, line: 541, baseType: !96, size: 64, offset: 1600)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !292, file: !15, line: 542, baseType: !96, size: 64, offset: 1664)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !292, file: !15, line: 543, baseType: !96, size: 64, offset: 1728)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !14, file: !15, line: 833, baseType: !29, size: 32, offset: 7680)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !14, file: !15, line: 836, baseType: !29, size: 32, offset: 7712)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !14, file: !15, line: 837, baseType: !45, size: 32, offset: 7744)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !14, file: !15, line: 838, baseType: !326, size: 64, offset: 7808)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !329, line: 19, baseType: !330)
!329 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !329, line: 19, size: 64, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !330, file: !329, line: 19, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !14, file: !15, line: 839, baseType: !337, size: 64, offset: 7872)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !14, file: !15, line: 840, baseType: !328, size: 64, offset: 7936)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !14, file: !15, line: 841, baseType: !33, size: 64, offset: 8000)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !14, file: !15, line: 843, baseType: !67, size: 16, offset: 8064)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !14, file: !15, line: 845, baseType: !67, size: 16, offset: 8080)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !14, file: !15, line: 848, baseType: !45, size: 32, offset: 8096)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !14, file: !15, line: 849, baseType: !344, size: 32, offset: 8128)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !15, line: 718, size: 32, elements: !345)
!345 = !{!346, !353}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !344, file: !15, line: 724, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !15, line: 719, size: 32, elements: !348)
!348 = !{!349, !350, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !347, file: !15, line: 720, baseType: !216, size: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !347, file: !15, line: 721, baseType: !216, size: 8, offset: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !347, file: !15, line: 722, baseType: !216, size: 8, offset: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !347, file: !15, line: 723, baseType: !216, size: 8, offset: 24)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !344, file: !15, line: 725, baseType: !25, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !14, file: !15, line: 850, baseType: !101, size: 128, offset: 8192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !14, file: !15, line: 851, baseType: !356, size: 64, offset: 8320)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !15, line: 60, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !14, file: !15, line: 855, baseType: !22, size: 64, offset: 8384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !14, file: !15, line: 856, baseType: !216, size: 8, offset: 8448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !14, file: !15, line: 857, baseType: !216, size: 8, offset: 8456)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !14, file: !15, line: 858, baseType: !45, size: 32, offset: 8480)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !14, file: !15, line: 859, baseType: !101, size: 128, offset: 8512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !14, file: !15, line: 860, baseType: !45, size: 32, offset: 8640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !14, file: !15, line: 861, baseType: !101, size: 128, offset: 8704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !14, file: !15, line: 873, baseType: !366, size: 256, offset: 8832)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !15, line: 376, size: 256, elements: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !366, file: !15, line: 381, baseType: !22, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !366, file: !15, line: 384, baseType: !98, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !366, file: !15, line: 389, baseType: !98, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !366, file: !15, line: 392, baseType: !98, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !14, file: !15, line: 875, baseType: !101, size: 128, offset: 9088)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !14, file: !15, line: 877, baseType: !374, size: 320, offset: 9216)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !375, line: 86, size: 320, elements: !376)
!375 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!376 = !{!377, !378, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !374, file: !375, line: 87, baseType: !45, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !374, file: !375, line: 88, baseType: !101, size: 128, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !374, file: !375, line: 89, baseType: !101, size: 128, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !14, file: !15, line: 878, baseType: !88, size: 192, align: 64, offset: 9536)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !14, file: !15, line: 881, baseType: !382, size: 64, offset: 9728)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !384, line: 733, size: 10240, elements: !385)
!384 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!385 = !{!386, !4900}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !384, line: 734, baseType: !387, size: 10240)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !384, line: 734, size: 10240, elements: !388)
!388 = !{!389, !393, !415, !4778, !4779, !4780, !4781, !4782, !4783, !4790, !4791, !4792, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4831, !4833, !4836, !4879, !4880, !4881, !4884, !4885, !4886, !4889, !4890, !4891, !4898, !4899}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !384, line: 739, baseType: !390, size: 512, align: 512)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !384, line: 739, size: 512, align: 512, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !390, file: !384, line: 747, baseType: !40, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !387, file: !384, line: 750, baseType: !394, size: 128, offset: 512)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !395, line: 218, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!396 = !{!397, !413, !414}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !395, line: 219, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !395, line: 219, size: 32, elements: !399)
!399 = !{!400, !409}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !398, file: !395, line: 220, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !402, line: 29, baseType: !403)
!402 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !402, line: 17, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !402, line: 18, baseType: !406, size: 32)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !402, line: 18, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !406, file: !402, line: 19, baseType: !201, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !398, file: !395, line: 221, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !395, line: 197, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 197, elements: !412)
!412 = !{}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !394, file: !395, line: 223, baseType: !29, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !394, file: !395, line: 224, baseType: !33, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !387, file: !384, line: 752, baseType: !416, size: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!22, !419, !22, !22, !22, !22}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !421, line: 994, size: 1856, align: 64, elements: !422)
!421 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!422 = !{!423, !437, !438, !440, !447, !459, !462, !463, !893, !971, !980, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 995, baseType: !424, size: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 995, size: 128, elements: !425)
!425 = !{!426, !427, !436}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !424, file: !421, line: 996, baseType: !54, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !424, file: !421, line: 997, baseType: !428, size: 128, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !429)
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !41, line: 233, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !428, file: !41, line: 234, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !431}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !424, file: !421, line: 998, baseType: !29, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !420, file: !421, line: 1005, baseType: !401, size: 32, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !420, file: !421, line: 1006, baseType: !439, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !29)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !420, file: !421, line: 1007, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !442, line: 13, baseType: !443)
!442 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !444, file: !41, line: 180, baseType: !112, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !420, file: !421, line: 1008, baseType: !448, size: 256, offset: 256)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !449, line: 66, size: 256, elements: !450)
!449 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!450 = !{!451, !452, !453, !458}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !448, file: !449, line: 67, baseType: !441, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !448, file: !449, line: 68, baseType: !199, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !448, file: !449, line: 70, baseType: !454, size: 32, offset: 96)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !455, line: 15, size: 32, elements: !456)
!455 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !454, file: !455, line: 20, baseType: !40, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !448, file: !449, line: 72, baseType: !101, size: 128, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !420, file: !421, line: 1009, baseType: !460, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !249, line: 88, baseType: !114)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !420, file: !421, line: 1010, baseType: !29, size: 32, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !420, file: !421, line: 1011, baseType: !464, size: 256, offset: 640)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !421, line: 948, size: 256, elements: !465)
!465 = !{!466, !489, !882, !890, !891, !892}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !421, line: 949, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !468, line: 34, baseType: !469)
!468 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !468, line: 25, size: 64, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !469, file: !468, line: 26, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !473, line: 27, baseType: !474)
!473 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !473, line: 13, size: 64, elements: !475)
!475 = !{!476, !488}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !473, line: 14, baseType: !477, size: 32)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !473, line: 14, size: 32, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !477, file: !473, line: 15, baseType: !40, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !473, line: 16, baseType: !481, size: 32)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !477, file: !473, line: 16, size: 32, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !481, file: !473, line: 18, baseType: !216, size: 8)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !481, file: !473, line: 19, baseType: !485, size: 24, offset: 8)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 24, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 3)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !474, file: !473, line: 26, baseType: !204, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !464, file: !421, line: 950, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !492, line: 59, size: 768, elements: !493)
!492 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!493 = !{!494, !495, !496, !497, !510, !511, !518, !519}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !491, file: !492, line: 61, baseType: !35, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !491, file: !492, line: 62, baseType: !29, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !491, file: !492, line: 63, baseType: !401, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !491, file: !492, line: 65, baseType: !498, size: 256, offset: 128)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 256, elements: !508)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !499, file: !41, line: 195, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !41, line: 199, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !503, file: !41, line: 199, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!508 = !{!509}
!509 = !DISubrange(count: 4)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !491, file: !492, line: 66, baseType: !499, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !491, file: !492, line: 68, baseType: !512, size: 192, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !513, line: 41, baseType: !514)
!513 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !513, line: 37, size: 192, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !514, file: !513, line: 38, baseType: !401, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !514, file: !513, line: 39, baseType: !101, size: 128, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !491, file: !492, line: 69, baseType: !428, size: 128, align: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !491, file: !492, line: 70, baseType: !520, offset: 768)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, elements: !880)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !492, line: 54, size: 128, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !521, file: !492, line: 55, baseType: !45, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !521, file: !492, line: 56, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !527, line: 26, size: 1152, elements: !528)
!527 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!528 = !{!529, !543, !544, !545, !546, !550, !551, !552, !555, !876, !877, !878, !879}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !526, file: !527, line: 27, baseType: !530, size: 192)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !531, line: 19, size: 192, elements: !532)
!531 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!532 = !{!533, !541, !542}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !530, file: !531, line: 20, baseType: !534, size: 128)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !535, line: 296, size: 128, elements: !536)
!535 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!536 = !{!537, !538, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !534, file: !535, line: 297, baseType: !401, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !534, file: !535, line: 299, baseType: !539, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !29)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !534, file: !535, line: 300, baseType: !33, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !530, file: !531, line: 21, baseType: !29, size: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !530, file: !531, line: 22, baseType: !29, size: 32, offset: 160)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !526, file: !527, line: 28, baseType: !428, size: 128, align: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !526, file: !527, line: 29, baseType: !29, size: 32, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !526, file: !527, line: 30, baseType: !13, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !526, file: !527, line: 31, baseType: !547, size: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !549, line: 325, flags: DIFlagFwdDecl)
!549 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !526, file: !527, line: 32, baseType: !29, size: 32, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !526, file: !527, line: 33, baseType: !525, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !526, file: !527, line: 35, baseType: !553, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !527, line: 17, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !526, file: !527, line: 37, baseType: !556, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !558, line: 68, size: 4800, elements: !559)
!558 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!559 = !{!560, !582, !583, !584, !585, !586, !594, !601, !612, !613, !616, !617, !741, !742, !754, !856, !857, !871, !874}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !557, file: !558, line: 69, baseType: !561, size: 576)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !558, line: 23, size: 576, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !561, file: !558, line: 24, baseType: !25, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !558, line: 25, baseType: !565, size: 512, offset: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !558, line: 25, size: 512, elements: !566)
!566 = !{!567, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !565, file: !558, line: 26, baseType: !568, size: 480)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 480, elements: !574)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !558, line: 17, size: 96, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !569, file: !558, line: 18, baseType: !25, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !569, file: !558, line: 19, baseType: !25, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !569, file: !558, line: 20, baseType: !25, size: 32, offset: 64)
!574 = !{!575}
!575 = !DISubrange(count: 5)
!576 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !558, line: 27, baseType: !577, size: 128)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !558, line: 27, size: 128, elements: !578)
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !577, file: !558, line: 28, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !577, file: !558, line: 29, baseType: !580, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !557, file: !558, line: 70, baseType: !561, size: 576, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !557, file: !558, line: 71, baseType: !561, size: 576, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !557, file: !558, line: 72, baseType: !556, size: 64, offset: 1728)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !557, file: !558, line: 73, baseType: !45, size: 32, offset: 1792)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !557, file: !558, line: 74, baseType: !587, size: 32, offset: 1824)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !588, line: 23, baseType: !589)
!588 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 21, size: 32, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !589, file: !588, line: 22, baseType: !592, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !249, line: 49, baseType: !29)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !557, file: !558, line: 75, baseType: !595, size: 32, offset: 1856)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !588, line: 28, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 26, size: 32, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !596, file: !588, line: 27, baseType: !599, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !249, line: 50, baseType: !29)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !557, file: !558, line: 76, baseType: !602, size: 192, offset: 1920)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !603, line: 9, size: 192, elements: !604)
!603 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!604 = !{!605, !606, !610, !611}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !602, file: !603, line: 10, baseType: !441, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !602, file: !603, line: 11, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !603, line: 7, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !602, file: !603, line: 12, baseType: !29, size: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !602, file: !603, line: 13, baseType: !35, size: 32, offset: 160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !558, line: 77, baseType: !22, size: 64, offset: 2112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !557, file: !558, line: 80, baseType: !614, size: 8, offset: 2176)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !615)
!615 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !557, file: !558, line: 88, baseType: !101, size: 128, offset: 2240)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !557, file: !558, line: 89, baseType: !618, size: 64, offset: 2368)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !620, line: 195, size: 1728, elements: !621)
!620 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!621 = !{!622, !623, !628, !633, !642, !645, !646, !653, !654, !655, !656, !659, !660, !661, !663, !664, !705, !726}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !619, file: !620, line: 196, baseType: !35, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !619, file: !620, line: 197, baseType: !624, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !620, line: 28, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !26, line: 20, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !28, line: 26, baseType: !45)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !620, line: 198, baseType: !629, size: 192, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !620, line: 198, size: 192, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !629, file: !620, line: 199, baseType: !101, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !629, file: !620, line: 200, baseType: !88, size: 192, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !619, file: !620, line: 205, baseType: !634, size: 320, offset: 256)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !635, line: 48, size: 320, elements: !636)
!635 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!636 = !{!637, !638, !639, !640, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !634, file: !635, line: 49, baseType: !441, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !634, file: !635, line: 55, baseType: !441, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !634, file: !635, line: 57, baseType: !454, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !634, file: !635, line: 59, baseType: !199, size: 32, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !634, file: !635, line: 60, baseType: !101, size: 128, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !619, file: !620, line: 206, baseType: !643, size: 64, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !620, line: 206, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !619, file: !620, line: 207, baseType: !33, size: 64, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !620, line: 208, baseType: !647, size: 64, offset: 704)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !620, line: 208, size: 64, elements: !648)
!648 = !{!649, !652}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !647, file: !620, line: 209, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !651, line: 8, baseType: !113)
!651 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!652 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !647, file: !620, line: 210, baseType: !650, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !619, file: !620, line: 212, baseType: !650, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !619, file: !620, line: 213, baseType: !587, size: 32, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !619, file: !620, line: 214, baseType: !595, size: 32, offset: 864)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !619, file: !620, line: 215, baseType: !657, size: 32, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !620, line: 31, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !25)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !619, file: !620, line: 216, baseType: !67, size: 16, offset: 928)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !619, file: !620, line: 217, baseType: !67, size: 16, offset: 944)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !619, file: !620, line: 221, baseType: !662, size: 16, offset: 960)
!662 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !620, line: 228, baseType: !22, size: 64, offset: 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !620, line: 245, baseType: !665, size: 320, offset: 1088)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !620, line: 245, size: 320, elements: !666)
!666 = !{!667, !696}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !665, file: !620, line: 246, baseType: !668, size: 320)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !620, line: 114, size: 320, elements: !669)
!669 = !{!670, !671, !683, !686, !693}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !668, file: !620, line: 116, baseType: !22, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !620, line: 117, baseType: !672, size: 64, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !620, line: 117, size: 64, elements: !673)
!673 = !{!674, !682}
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !620, line: 118, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !620, line: 118, size: 64, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !675, file: !620, line: 120, baseType: !65, size: 16)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !675, file: !620, line: 121, baseType: !679, size: 48, offset: 16)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 6)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !672, file: !620, line: 127, baseType: !22, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !620, line: 129, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !620, line: 102, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !668, file: !620, line: 130, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !620, line: 108, size: 192, elements: !689)
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !620, line: 109, baseType: !428, size: 128, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !688, file: !620, line: 110, baseType: !35, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !688, file: !620, line: 111, baseType: !614, size: 8, offset: 160)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !668, file: !620, line: 131, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !620, line: 247, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !620, line: 247, size: 320, elements: !698)
!698 = !{!699, !700, !701, !702, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !697, file: !620, line: 248, baseType: !22, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !697, file: !620, line: 249, baseType: !22, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !620, line: 250, baseType: !684, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !697, file: !620, line: 251, baseType: !687, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !697, file: !620, line: 252, baseType: !704, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !620, line: 260, baseType: !706, size: 256, offset: 1408)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !620, line: 260, size: 256, elements: !707)
!707 = !{!708, !714}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !706, file: !620, line: 261, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !620, line: 134, size: 256, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !709, file: !620, line: 135, baseType: !33, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !709, file: !620, line: 136, baseType: !713, size: 256)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !508)
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !620, line: 262, baseType: !715, size: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !706, file: !620, line: 262, size: 256, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !715, file: !620, line: 264, baseType: !101, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !715, file: !620, line: 265, baseType: !719, size: 128, offset: 128)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !720, line: 22, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!721 = !{!722, !725}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !719, file: !720, line: 23, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !720, line: 23, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !719, file: !720, line: 24, baseType: !22, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !619, file: !620, line: 280, baseType: !727, size: 64, offset: 1664)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !620, line: 176, size: 192, elements: !729)
!729 = !{!730, !739, !740}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !728, file: !620, line: 177, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !620, line: 171, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!45, !618, !735, !737, !618}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !728, file: !620, line: 178, baseType: !618, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !728, file: !620, line: 179, baseType: !684, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !557, file: !558, line: 90, baseType: !634, size: 320, offset: 2432)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !557, file: !558, line: 97, baseType: !743, size: 256, offset: 2752)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !744, line: 98, size: 256, elements: !745)
!744 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !743, file: !744, line: 99, baseType: !441, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !743, file: !744, line: 100, baseType: !101, size: 128, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !743, file: !744, line: 101, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !744, line: 21, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !557, file: !558, line: 99, baseType: !755, size: 768, offset: 3008)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !756, line: 199, size: 768, elements: !757)
!756 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!757 = !{!758, !763}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !755, file: !756, line: 200, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!45, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !755, file: !756, line: 201, baseType: !764, size: 704, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !756, line: 193, size: 704, elements: !765)
!765 = !{!766, !855}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !764, file: !756, line: 195, baseType: !767, size: 640)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !756, line: 173, size: 640, elements: !768)
!768 = !{!769, !812, !824, !825, !845, !846, !848, !854}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !756, line: 174, baseType: !770, size: 192)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !756, line: 174, size: 192, elements: !771)
!771 = !{!772, !811}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !756, line: 175, baseType: !773, size: 192)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !756, line: 175, size: 192, elements: !774)
!774 = !{!775, !807, !808, !809, !810}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !773, file: !756, line: 176, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !756, line: 135, size: 512, elements: !778)
!778 = !{!779, !780, !781, !782, !784, !789, !799, !805, !806}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !777, file: !756, line: 136, baseType: !694, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !777, file: !756, line: 137, baseType: !33, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !777, file: !756, line: 138, baseType: !45, size: 32, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !777, file: !756, line: 139, baseType: !783, size: 16, offset: 160)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !67)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !756, line: 150, baseType: !785, size: 32, offset: 192)
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !777, file: !756, line: 147, baseType: !29, size: 32, elements: !786)
!786 = !{!787, !788}
!787 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!788 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !777, file: !756, line: 151, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !756, line: 64, baseType: !792)
!792 = !DISubroutineType(types: !793)
!793 = !{!45, !776, !45, !33, !794, !798}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !249, line: 72, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !249, line: 16, baseType: !22)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !777, file: !756, line: 152, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !756, line: 117, size: 256, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !801, file: !756, line: 118, baseType: !40, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !801, file: !756, line: 119, baseType: !512, size: 192, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !777, file: !756, line: 153, baseType: !33, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !777, file: !756, line: 154, baseType: !33, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !773, file: !756, line: 177, baseType: !45, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !773, file: !756, line: 178, baseType: !45, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !773, file: !756, line: 179, baseType: !45, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !773, file: !756, line: 180, baseType: !45, size: 32, offset: 160)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !770, file: !756, line: 182, baseType: !428, size: 128, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !767, file: !756, line: 184, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !815, line: 26, size: 256, elements: !816)
!815 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !814, file: !815, line: 27, baseType: !29, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !814, file: !815, line: 28, baseType: !819, size: 192, offset: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !820, line: 43, size: 192, elements: !821)
!820 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !819, file: !820, line: 44, baseType: !199, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !819, file: !820, line: 45, baseType: !101, size: 128, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !767, file: !756, line: 185, baseType: !776, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !767, file: !756, line: 186, baseType: !826, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !756, line: 204, size: 960, elements: !828)
!828 = !{!829, !830, !834, !841}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !827, file: !756, line: 205, baseType: !755, size: 768)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !827, file: !756, line: 206, baseType: !831, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!762, !826}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !827, file: !756, line: 207, baseType: !835, size: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !827, file: !756, line: 209, baseType: !842, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!45, !838, !776}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !767, file: !756, line: 187, baseType: !762, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !767, file: !756, line: 188, baseType: !847, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !767, file: !756, line: 189, baseType: !849, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !756, line: 157, size: 256, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !850, file: !756, line: 158, baseType: !88, size: 192, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !850, file: !756, line: 159, baseType: !838, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !767, file: !756, line: 190, baseType: !499, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !764, file: !756, line: 196, baseType: !268, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !557, file: !558, line: 100, baseType: !838, size: 64, offset: 3776)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !557, file: !558, line: 102, baseType: !858, size: 64, offset: 3840)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !558, line: 107, size: 1152, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !869}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !859, file: !558, line: 108, baseType: !503, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !859, file: !558, line: 109, baseType: !556, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !859, file: !558, line: 110, baseType: !587, size: 32, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !558, line: 111, baseType: !40, size: 32, offset: 224)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !859, file: !558, line: 112, baseType: !866, size: 640, offset: 256)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 640, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 10)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !859, file: !558, line: 113, baseType: !870, size: 256, offset: 896)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 256, elements: !508)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !557, file: !558, line: 103, baseType: !872, size: 640, offset: 3904)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 640, elements: !867)
!873 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !557, file: !558, line: 104, baseType: !875, size: 256, offset: 4544)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 256, elements: !508)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !526, file: !527, line: 38, baseType: !858, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !526, file: !527, line: 39, baseType: !45, size: 32, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !526, file: !527, line: 40, baseType: !602, size: 192, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !526, file: !527, line: 42, baseType: !45, size: 32, offset: 1088)
!880 = !{!881}
!881 = !DISubrange(count: -1)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !464, file: !421, line: 951, baseType: !883, size: 32, offset: 128)
!883 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !492, line: 9, baseType: !29, size: 32, elements: !884)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!886 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!887 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!888 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!889 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !464, file: !421, line: 952, baseType: !587, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !464, file: !421, line: 952, baseType: !587, size: 32, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !464, file: !421, line: 953, baseType: !45, size: 32, offset: 224)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !420, file: !421, line: 1012, baseType: !894, size: 64, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !897, line: 110, size: 1472, elements: !898)
!897 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !956, !957, !958, !966}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !896, file: !897, line: 111, baseType: !441, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !896, file: !897, line: 112, baseType: !587, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !896, file: !897, line: 113, baseType: !595, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !896, file: !897, line: 114, baseType: !587, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !896, file: !897, line: 115, baseType: !595, size: 32, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !896, file: !897, line: 116, baseType: !587, size: 32, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !896, file: !897, line: 117, baseType: !595, size: 32, offset: 224)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !896, file: !897, line: 118, baseType: !587, size: 32, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !896, file: !897, line: 119, baseType: !595, size: 32, offset: 288)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !896, file: !897, line: 120, baseType: !29, size: 32, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !896, file: !897, line: 121, baseType: !910, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !911, line: 24, baseType: !912)
!911 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !911, line: 24, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !912, file: !911, line: 24, baseType: !96, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !896, file: !897, line: 122, baseType: !910, size: 64, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !896, file: !897, line: 123, baseType: !910, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !896, file: !897, line: 124, baseType: !910, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !896, file: !897, line: 125, baseType: !910, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !896, file: !897, line: 127, baseType: !218, size: 8, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !896, file: !897, line: 129, baseType: !618, size: 64, offset: 768)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !896, file: !897, line: 130, baseType: !618, size: 64, offset: 832)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !896, file: !897, line: 131, baseType: !618, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !896, file: !897, line: 132, baseType: !618, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !896, file: !897, line: 135, baseType: !33, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !896, file: !897, line: 137, baseType: !926, size: 64, offset: 1088)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !928, line: 14, size: 1088, elements: !929)
!928 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!929 = !{!930, !931, !940, !941, !942, !943, !944, !945}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !927, file: !928, line: 15, baseType: !35, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !927, file: !928, line: 17, baseType: !932, size: 320, offset: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !933, line: 22, size: 320, elements: !934)
!933 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!934 = !{!935, !936, !937, !938}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !932, file: !933, line: 23, baseType: !199, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !932, file: !933, line: 24, baseType: !112, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !932, file: !933, line: 26, baseType: !101, size: 128, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !932, file: !933, line: 28, baseType: !939, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !927, file: !928, line: 19, baseType: !22, size: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !927, file: !928, line: 20, baseType: !441, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !927, file: !928, line: 23, baseType: !503, size: 128, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !927, file: !928, line: 24, baseType: !587, size: 32, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !927, file: !928, line: 29, baseType: !441, size: 64, offset: 704)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !927, file: !928, line: 36, baseType: !946, size: 320, offset: 768)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !947, line: 15, size: 320, elements: !948)
!947 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!948 = !{!949, !950, !951, !952, !953, !954, !955}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !946, file: !947, line: 16, baseType: !199, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !946, file: !947, line: 18, baseType: !45, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !946, file: !947, line: 19, baseType: !45, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !946, file: !947, line: 20, baseType: !45, size: 32, offset: 96)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !946, file: !947, line: 21, baseType: !45, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !946, file: !947, line: 22, baseType: !22, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 23, baseType: !22, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !896, file: !897, line: 138, baseType: !556, size: 64, offset: 1152)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !896, file: !897, line: 139, baseType: !858, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !896, file: !897, line: 140, baseType: !959, size: 64, offset: 1280)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !897, line: 25, size: 64, elements: !961)
!961 = !{!962, !963, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !960, file: !897, line: 26, baseType: !40, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !960, file: !897, line: 27, baseType: !45, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !960, file: !897, line: 28, baseType: !965, offset: 64)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !880)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !897, line: 142, baseType: !967, size: 128, offset: 1344)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !897, line: 142, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !967, file: !897, line: 143, baseType: !45, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !967, file: !897, line: 144, baseType: !428, size: 128, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !420, file: !421, line: 1013, baseType: !972, size: 256, offset: 960)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !421, line: 970, size: 256, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !972, file: !421, line: 971, baseType: !22, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !972, file: !421, line: 972, baseType: !29, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !972, file: !421, line: 973, baseType: !29, size: 32, offset: 96)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !972, file: !421, line: 974, baseType: !29, size: 32, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !972, file: !421, line: 975, baseType: !29, size: 32, offset: 160)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !972, file: !421, line: 976, baseType: !460, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !420, file: !421, line: 1014, baseType: !981, size: 128, offset: 1216)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !982, line: 8, size: 128, elements: !983)
!982 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!983 = !{!984, !4768}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !981, file: !982, line: 9, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !987, line: 70, size: 256, elements: !988)
!987 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!988 = !{!989, !4765, !4766, !4767}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !986, file: !987, line: 71, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !992, line: 82, size: 1536, elements: !993)
!992 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!993 = !{!994, !995, !1000, !1008, !1009, !1024, !4733, !4735, !4748, !4749, !4750, !4751, !4752, !4757, !4758, !4759}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !991, file: !992, line: 84, baseType: !29, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !991, file: !992, line: 85, baseType: !996, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !252, line: 275, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !252, line: 275, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !997, file: !252, line: 275, baseType: !256, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !991, file: !992, line: 86, baseType: !1001, size: 128, offset: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1002, line: 38, size: 128, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1003 = !{!1004, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1001, file: !1002, line: 39, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1001, file: !1002, line: 39, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !991, file: !992, line: 87, baseType: !990, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !991, file: !992, line: 88, baseType: !1010, size: 128, offset: 256)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !992, line: 49, size: 128, elements: !1011)
!1011 = !{!1012, !1021}
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !992, line: 50, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !992, line: 50, size: 64, elements: !1014)
!1014 = !{!1015, !1020}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !992, line: 51, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !992, line: 51, size: 64, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1016, file: !992, line: 52, baseType: !25, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1016, file: !992, line: 52, baseType: !25, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1013, file: !992, line: 54, baseType: !96, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1010, file: !992, line: 56, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !991, file: !992, line: 89, baseType: !1025, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !421, line: 641, size: 4800, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1037, !1038, !1225, !4548, !4549, !4550, !4551, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4715, !4718, !4719, !4720, !4729, !4730, !4731, !4732}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1026, file: !421, line: 642, baseType: !783, size: 16)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1026, file: !421, line: 643, baseType: !67, size: 16, offset: 16)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1026, file: !421, line: 644, baseType: !587, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1026, file: !421, line: 645, baseType: !101, size: 128, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1026, file: !421, line: 646, baseType: !595, size: 32, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1026, file: !421, line: 647, baseType: !29, size: 32, offset: 224)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1026, file: !421, line: 650, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !421, line: 607, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1026, file: !421, line: 651, baseType: !1035, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1026, file: !421, line: 654, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !421, line: 1966, size: 2048, align: 512, elements: !1042)
!1042 = !{!1043, !1047, !1060, !1066, !1070, !1074, !1078, !1082, !1086, !1090, !1094, !1095, !1101, !1105, !1142, !1173, !1180, !1186, !1190, !1194, !1198, !1202, !1206, !1212, !1216}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1041, file: !421, line: 1967, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!990, !1025, !990, !29}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1041, file: !421, line: 1968, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!694, !990, !1025, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1053, line: 10, size: 128, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1054 = !{!1055, !1059}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1052, file: !1053, line: 11, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !33}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1052, file: !1053, line: 12, baseType: !33, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1041, file: !421, line: 1969, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!45, !1064, !1025, !45}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !911, line: 42, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1041, file: !421, line: 1970, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1035, !1025, !45, !614}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1041, file: !421, line: 1972, baseType: !1071, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!45, !990, !704, !45}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1041, file: !421, line: 1974, baseType: !1075, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!45, !1064, !1025, !990, !783, !614}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1041, file: !421, line: 1976, baseType: !1079, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!45, !990, !1025, !990}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1041, file: !421, line: 1977, baseType: !1083, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!45, !1025, !990}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1041, file: !421, line: 1978, baseType: !1087, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!45, !1064, !1025, !990, !694}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1041, file: !421, line: 1980, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!45, !1064, !1025, !990, !783}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1041, file: !421, line: 1982, baseType: !1083, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1041, file: !421, line: 1983, baseType: !1096, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!45, !1064, !1025, !990, !783, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !25)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1041, file: !421, line: 1985, baseType: !1102, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!45, !1064, !1025, !990, !1025, !990, !29}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1041, file: !421, line: 1987, baseType: !1106, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!45, !1064, !990, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !421, line: 226, size: 640, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1124, !1133, !1134, !1139, !1140, !1141}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1110, file: !421, line: 227, baseType: !29, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1110, file: !421, line: 228, baseType: !783, size: 16, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !421, line: 241, baseType: !1115, size: 32, offset: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !421, line: 241, size: 32, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1115, file: !421, line: 242, baseType: !587, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1115, file: !421, line: 243, baseType: !1119, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1120, line: 16, baseType: !1121)
!1120 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1120, line: 14, size: 32, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1121, file: !1120, line: 15, baseType: !592, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !421, line: 245, baseType: !1125, size: 32, offset: 96)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !421, line: 245, size: 32, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1125, file: !421, line: 246, baseType: !595, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1125, file: !421, line: 247, baseType: !1129, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1120, line: 20, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1120, line: 18, size: 32, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1130, file: !1120, line: 19, baseType: !599, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1110, file: !421, line: 249, baseType: !460, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1110, file: !421, line: 250, baseType: !1135, size: 128, offset: 192)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !651, line: 13, size: 128, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1135, file: !651, line: 14, baseType: !650, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1135, file: !651, line: 15, baseType: !873, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1110, file: !421, line: 251, baseType: !1135, size: 128, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1110, file: !421, line: 252, baseType: !1135, size: 128, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1110, file: !421, line: 259, baseType: !419, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1041, file: !421, line: 1988, baseType: !1143, size: 64, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!45, !1064, !1146, !1148, !25, !29}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1150, line: 22, size: 1280, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1149, file: !1150, line: 23, baseType: !25, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1149, file: !1150, line: 24, baseType: !783, size: 16, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1149, file: !1150, line: 25, baseType: !29, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1149, file: !1150, line: 26, baseType: !658, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1149, file: !1150, line: 27, baseType: !96, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1149, file: !1150, line: 28, baseType: !96, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1149, file: !1150, line: 41, baseType: !96, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1149, file: !1150, line: 42, baseType: !1099, size: 32, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1149, file: !1150, line: 43, baseType: !1099, size: 32, offset: 352)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1149, file: !1150, line: 44, baseType: !587, size: 32, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1149, file: !1150, line: 45, baseType: !595, size: 32, offset: 416)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1149, file: !1150, line: 46, baseType: !460, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1149, file: !1150, line: 47, baseType: !1135, size: 128, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1149, file: !1150, line: 48, baseType: !1135, size: 128, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1149, file: !1150, line: 49, baseType: !1135, size: 128, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1149, file: !1150, line: 50, baseType: !1135, size: 128, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1149, file: !1150, line: 51, baseType: !96, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1149, file: !1150, line: 52, baseType: !96, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1149, file: !1150, line: 53, baseType: !25, size: 32, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1149, file: !1150, line: 54, baseType: !25, size: 32, offset: 1184)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1149, file: !1150, line: 55, baseType: !96, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1041, file: !421, line: 1990, baseType: !1174, size: 64, offset: 960)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1177, !990, !704, !795}
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !249, line: 73, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !249, line: 15, baseType: !873)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1041, file: !421, line: 1991, baseType: !1181, size: 64, offset: 1024)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!45, !1025, !1184, !96, !96}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !421, line: 55, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1041, file: !421, line: 1993, baseType: !1187, size: 64, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!45, !1025, !45}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1041, file: !421, line: 1994, baseType: !1191, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!45, !1025, !990, !419, !29, !783}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1041, file: !421, line: 1997, baseType: !1195, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!45, !1064, !1025, !419, !783}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1041, file: !421, line: 1999, baseType: !1199, size: 64, offset: 1280)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1035, !1064, !990, !45}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1041, file: !421, line: 2001, baseType: !1203, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!45, !1064, !990, !1035, !45}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1041, file: !421, line: 2003, baseType: !1207, size: 64, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!45, !1064, !990, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !421, line: 76, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1041, file: !421, line: 2005, baseType: !1213, size: 64, offset: 1472)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!45, !990, !1210}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1041, file: !421, line: 2006, baseType: !1217, size: 64, offset: 1536)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1220, !1025}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !421, line: 3192, size: 192, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1221, file: !421, line: 3193, baseType: !534, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1221, file: !421, line: 3194, baseType: !25, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1026, file: !421, line: 655, baseType: !1226, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !421, line: 1190, size: 10752, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !4055, !4197, !4237, !4320, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4337, !4341, !4342, !4345, !4348, !4351, !4354, !4355, !4356, !4397, !4419, !4420, !4421, !4422, !4423, !4424, !4427, !4431, !4440, !4441, !4442, !4443, !4502, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1227, file: !421, line: 1191, baseType: !101, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1227, file: !421, line: 1192, baseType: !1099, size: 32, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1227, file: !421, line: 1193, baseType: !218, size: 8, offset: 160)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1227, file: !421, line: 1194, baseType: !22, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1227, file: !421, line: 1195, baseType: !460, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1227, file: !421, line: 1196, baseType: !1235, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !421, line: 2366, size: 576, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1246, !1250, !1254, !1258, !4043, !4044, !4045, !4047, !4048, !4049, !4051, !4052, !4053, !4054}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1236, file: !421, line: 2367, baseType: !694, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1236, file: !421, line: 2368, baseType: !45, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1236, file: !421, line: 2376, baseType: !1241, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!45, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !987, line: 21, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1236, file: !421, line: 2377, baseType: !1247, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !421, line: 75, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1236, file: !421, line: 2378, baseType: !1251, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!990, !1235, !45, !694, !33}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1236, file: !421, line: 2380, baseType: !1255, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1226}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1236, file: !421, line: 2381, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1261, line: 402, size: 9216, align: 512, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!1262 = !{!1263, !1270, !1271, !1275, !2172, !2198, !2199, !2200, !2201, !2205, !2208, !2209, !2210, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2278, !2282, !2302, !2322, !2323, !2324, !2325, !2334, !2357, !2358, !2361, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2375, !2376, !2475, !2483, !2484, !2485, !2487, !4021, !4022, !4031, !4032, !4033, !4034, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !1261, line: 403, baseType: !1264, size: 32)
!1264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !1261, line: 312, baseType: !29, size: 32, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269}
!1266 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!1267 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!1268 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!1269 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1260, file: !1261, line: 406, baseType: !101, size: 128, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1260, file: !1261, line: 409, baseType: !1272, size: 448, offset: 192)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 56)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1260, file: !1261, line: 417, baseType: !1276, size: 768, offset: 640)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1261, line: 45, size: 768, elements: !1277)
!1277 = !{!1278, !2166, !2167, !2168, !2171}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1276, file: !1261, line: 46, baseType: !1279, size: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1280, line: 64, size: 512, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1281 = !{!1282, !1283, !1284, !1286, !1330, !2013, !2156, !2161, !2162, !2163, !2164, !2165}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1279, file: !1280, line: 65, baseType: !694, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1279, file: !1280, line: 66, baseType: !101, size: 128, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1279, file: !1280, line: 67, baseType: !1285, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1279, file: !1280, line: 68, baseType: !1287, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1280, line: 168, size: 768, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1288, file: !1280, line: 169, baseType: !101, size: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1288, file: !1280, line: 170, baseType: !401, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1288, file: !1280, line: 171, baseType: !1279, size: 512, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1288, file: !1280, line: 172, baseType: !1294, size: 64, offset: 704)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1280, line: 133, size: 192, elements: !1297)
!1297 = !{!1298, !1305, !1310}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1296, file: !1280, line: 134, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!45, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1296, file: !1280, line: 135, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!694, !1303}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1296, file: !1280, line: 136, baseType: !1311, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!45, !1303, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1280, line: 125, size: 20736, elements: !1317)
!1317 = !{!1318, !1320, !1324, !1325, !1329}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1316, file: !1280, line: 126, baseType: !1319, size: 192)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 192, elements: !486)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1316, file: !1280, line: 127, baseType: !1321, size: 4096, offset: 192)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 4096, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1316, file: !1280, line: 128, baseType: !45, size: 32, offset: 4288)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1316, file: !1280, line: 129, baseType: !1326, size: 16384, offset: 4320)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 2048)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1316, file: !1280, line: 130, baseType: !45, size: 32, offset: 20704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1279, file: !1280, line: 69, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1280, line: 116, size: 384, elements: !1334)
!1334 = !{!1335, !1339, !1358, !1968, !2005, !2009}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1333, file: !1280, line: 117, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !1285}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1333, file: !1280, line: 118, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1343, line: 254, size: 128, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1344 = !{!1345, !1354}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1342, file: !1343, line: 255, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1177, !1285, !1349, !704}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1343, line: 30, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1350, file: !1343, line: 31, baseType: !694, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1350, file: !1343, line: 32, baseType: !783, size: 16, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1342, file: !1343, line: 256, baseType: !1355, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1177, !1285, !1349, !694, !795}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1333, file: !1280, line: 119, baseType: !1359, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1343, line: 84, size: 320, elements: !1363)
!1363 = !{!1364, !1365, !1369, !1964, !1966}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1362, file: !1343, line: 85, baseType: !694, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1362, file: !1343, line: 86, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!783, !1285, !1349, !45}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1362, file: !1343, line: 88, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!783, !1285, !1373, !45}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1343, line: 175, size: 512, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1955, !1959, !1960}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1374, file: !1343, line: 176, baseType: !1350, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1374, file: !1343, line: 177, baseType: !795, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1374, file: !1343, line: 178, baseType: !33, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1374, file: !1343, line: 179, baseType: !1380, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !421, line: 472, size: 1536, align: 64, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1947, !1948, !1949, !1952, !1953, !1954}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1384, file: !421, line: 473, baseType: !1025, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1384, file: !421, line: 474, baseType: !534, size: 128, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1384, file: !421, line: 475, baseType: !634, size: 320, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1384, file: !421, line: 476, baseType: !539, size: 32, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1384, file: !421, line: 477, baseType: !40, size: 32, offset: 544)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1384, file: !421, line: 482, baseType: !265, size: 128, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1384, file: !421, line: 483, baseType: !22, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1384, file: !421, line: 484, baseType: !22, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1384, file: !421, line: 485, baseType: !1395, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !421, line: 404, size: 1280, elements: !1398)
!1398 = !{!1399, !1715, !1785, !1789, !1793, !1799, !1805, !1809, !1814, !1818, !1822, !1826, !1904, !1915, !1919, !1923, !1928, !1932, !1939, !1943}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1397, file: !421, line: 405, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!45, !1403, !1713}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !384, line: 74, size: 512, align: 128, elements: !1405)
!1405 = !{!1406, !1407, !1707, !1712}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !384, line: 75, baseType: !22, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !384, line: 83, baseType: !1408, size: 320, offset: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !384, line: 83, size: 320, elements: !1409)
!1409 = !{!1410, !1431, !1445, !1449, !1706}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !384, line: 84, baseType: !1411, size: 320)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !384, line: 84, size: 320, elements: !1412)
!1412 = !{!1413, !1424, !1425, !1430}
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !384, line: 90, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !384, line: 90, size: 128, elements: !1415)
!1415 = !{!1416, !1417, !1422, !1423}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1414, file: !384, line: 91, baseType: !101, size: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !384, line: 94, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !384, line: 94, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1418, file: !384, line: 96, baseType: !33, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1418, file: !384, line: 98, baseType: !29, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1414, file: !384, line: 102, baseType: !101, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1414, file: !384, line: 103, baseType: !101, size: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1411, file: !384, line: 106, baseType: !1383, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !384, line: 107, baseType: !1426, size: 64, offset: 192)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !384, line: 107, size: 64, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1426, file: !384, line: 108, baseType: !22, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1426, file: !384, line: 109, baseType: !22, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1411, file: !384, line: 117, baseType: !22, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !384, line: 119, baseType: !1432, size: 320)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !384, line: 119, size: 320, elements: !1433)
!1433 = !{!1434, !1435, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1432, file: !384, line: 124, baseType: !22, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1432, file: !384, line: 125, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !384, line: 125, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1432, file: !384, line: 126, baseType: !22, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1432, file: !384, line: 127, baseType: !22, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !384, line: 128, baseType: !1441, size: 64, offset: 256)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !384, line: 128, size: 64, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1441, file: !384, line: 133, baseType: !22, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1441, file: !384, line: 138, baseType: !441, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !384, line: 141, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !384, line: 141, size: 64, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1446, file: !384, line: 142, baseType: !22, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !384, line: 144, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !384, line: 144, size: 128, elements: !1451)
!1451 = !{!1452, !1705}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1450, file: !384, line: 146, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1455, line: 126, size: 1216, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1456 = !{!1457, !1467, !1488, !1489, !1497, !1498, !1499, !1687, !1688, !1689}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1454, file: !1455, line: 127, baseType: !1458, size: 384)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1455, line: 21, size: 384, elements: !1459)
!1459 = !{!1460, !1461, !1463, !1464, !1465, !1466}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1458, file: !1455, line: 22, baseType: !22, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1458, file: !1455, line: 23, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1458, file: !1455, line: 24, baseType: !1462, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1458, file: !1455, line: 25, baseType: !22, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1458, file: !1455, line: 26, baseType: !22, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1458, file: !1455, line: 27, baseType: !22, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1454, file: !1455, line: 128, baseType: !1468, size: 128, offset: 384)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1469, line: 105, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1468, file: !1469, line: 110, baseType: !22, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1468, file: !1469, line: 118, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1469, line: 95, size: 448, elements: !1475)
!1475 = !{!1476, !1477, !1483, !1484, !1485, !1486, !1487}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1474, file: !1469, line: 96, baseType: !441, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1474, file: !1469, line: 97, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1469, line: 60, baseType: !1480)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1482}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1474, file: !1469, line: 98, baseType: !1478, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1474, file: !1469, line: 99, baseType: !614, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1474, file: !1469, line: 100, baseType: !614, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !1469, line: 101, baseType: !428, size: 128, align: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1474, file: !1469, line: 102, baseType: !1482, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1454, file: !1455, line: 129, baseType: !814, size: 256, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !1455, line: 130, baseType: !1490, size: 32, offset: 768)
!1490 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1455, line: 68, baseType: !29, size: 32, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496}
!1492 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1493 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1494 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1495 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1496 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !1455, line: 131, baseType: !29, size: 32, offset: 800)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1454, file: !1455, line: 132, baseType: !22, size: 64, offset: 832)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1454, file: !1455, line: 133, baseType: !1500, size: 64, offset: 896)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1455, line: 77, size: 192, elements: !1503)
!1503 = !{!1504, !1508, !1683}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1502, file: !1455, line: 83, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1403}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1502, file: !1455, line: 89, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !384, line: 1184, baseType: !29)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1515, line: 512, size: 896, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1516 = !{!1517, !1635, !1651, !1658, !1665, !1675, !1676, !1677, !1679, !1681}
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 513, baseType: !1518, size: 320)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1515, line: 513, size: 320, elements: !1519)
!1519 = !{!1520, !1631, !1632, !1633, !1634}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1518, file: !1515, line: 514, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !384, line: 625, size: 1344, elements: !1523)
!1523 = !{!1524, !1533, !1534, !1542, !1549, !1550, !1555, !1556, !1561, !1562, !1565, !1624, !1625, !1626, !1627, !1628, !1629}
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !384, line: 628, baseType: !1525, size: 128)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !384, line: 628, size: 128, elements: !1526)
!1526 = !{!1527, !1532}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !384, line: 629, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !384, line: 629, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1528, file: !384, line: 631, baseType: !22, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1528, file: !384, line: 632, baseType: !22, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1525, file: !384, line: 635, baseType: !428, size: 128, align: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1522, file: !384, line: 639, baseType: !382, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1522, file: !384, line: 640, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1536, line: 297, baseType: !1537)
!1536 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1536, line: 297, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1537, file: !1536, line: 297, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1541, line: 19, baseType: !22)
!1541 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !384, line: 646, baseType: !1543, size: 64, offset: 256)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !384, line: 646, size: 64, elements: !1544)
!1544 = !{!1545, !1548}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1543, file: !384, line: 647, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !384, line: 542, baseType: !22)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1543, file: !384, line: 648, baseType: !1547, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1522, file: !384, line: 666, baseType: !45, size: 32, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1522, file: !384, line: 667, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !384, line: 579, size: 320, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1552, file: !384, line: 580, baseType: !634, size: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1522, file: !384, line: 670, baseType: !614, size: 8, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1522, file: !384, line: 681, baseType: !1557, size: 256, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !384, line: 678, size: 256, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1557, file: !384, line: 679, baseType: !88, size: 192, align: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1557, file: !384, line: 680, baseType: !22, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1522, file: !384, line: 689, baseType: !101, size: 128, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1522, file: !384, line: 691, baseType: !1563, size: 64, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !384, line: 691, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1522, file: !384, line: 694, baseType: !1566, size: 64, offset: 960)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1515, line: 563, size: 1024, elements: !1569)
!1569 = !{!1570, !1574, !1575, !1579, !1583, !1587, !1588, !1592, !1596, !1600, !1601, !1602, !1606, !1610, !1616, !1620}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1568, file: !1515, line: 564, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1521}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1568, file: !1515, line: 569, baseType: !1571, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1568, file: !1515, line: 571, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!45, !1521, !22}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1568, file: !1515, line: 572, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!45, !1521}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1568, file: !1515, line: 578, baseType: !1584, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!45, !1521, !22, !22, !22}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1568, file: !1515, line: 580, baseType: !1509, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1568, file: !1515, line: 581, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1512, !1513, !29}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1568, file: !1515, line: 582, baseType: !1593, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1512, !1513, !22, !22}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1568, file: !1515, line: 584, baseType: !1597, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!22, !1521}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1568, file: !1515, line: 588, baseType: !1509, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1568, file: !1515, line: 591, baseType: !1509, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1568, file: !1515, line: 597, baseType: !1603, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!45, !1521, !22, !33, !45, !45}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !1515, line: 603, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!694, !1521}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1568, file: !1515, line: 613, baseType: !1611, size: 64, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!45, !1521, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !384, line: 717, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1568, file: !1515, line: 625, baseType: !1617, size: 64, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1614, !1521, !22}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1568, file: !1515, line: 633, baseType: !1621, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1403, !1521, !22}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1522, file: !384, line: 697, baseType: !22, size: 64, offset: 1024)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1522, file: !384, line: 699, baseType: !419, size: 64, offset: 1088)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1522, file: !384, line: 700, baseType: !33, size: 64, offset: 1152)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1522, file: !384, line: 711, baseType: !441, size: 64, offset: 1216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1522, file: !384, line: 717, baseType: !1614, size: 64, offset: 1280)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1522, file: !384, line: 722, baseType: !1630, offset: 1344)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !384, line: 570, elements: !412)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1518, file: !1515, line: 515, baseType: !539, size: 32, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1518, file: !1515, line: 516, baseType: !22, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1518, file: !1515, line: 517, baseType: !22, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1518, file: !1515, line: 518, baseType: !22, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1515, line: 520, baseType: !1636, size: 32, offset: 320)
!1636 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !384, line: 1325, baseType: !29, size: 32, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1638 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1639 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1640 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1641 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1642 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1643 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1644 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1645 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1646 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1647 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1648 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1649 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1650 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1514, file: !1515, line: 522, baseType: !1652, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1541, line: 22, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1541, line: 22, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1654, file: !1541, line: 22, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1541, line: 15, baseType: !22)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1514, file: !1515, line: 524, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1536, line: 372, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 372, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1661, file: !1536, line: 372, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1541, line: 16, baseType: !22)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 527, baseType: !1666, size: 64, offset: 512)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 527, size: 64, elements: !1667)
!1667 = !{!1668, !1674}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1666, file: !1515, line: 528, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1541, line: 21, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1541, line: 21, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1670, file: !1541, line: 21, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1541, line: 14, baseType: !22)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1666, file: !1515, line: 529, baseType: !1653, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1514, file: !1515, line: 534, baseType: !1403, size: 64, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1514, file: !1515, line: 535, baseType: !1403, size: 64, offset: 640)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1514, file: !1515, line: 541, baseType: !1678, size: 64, offset: 704)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1514, file: !1515, line: 545, baseType: !1680, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1514, file: !1515, line: 549, baseType: !1682, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1536, line: 520, baseType: !1403)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1502, file: !1455, line: 100, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!45, !1453, !22, !22, !45}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1454, file: !1455, line: 134, baseType: !33, size: 64, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1454, file: !1455, line: 135, baseType: !45, size: 32, offset: 1024)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 136, baseType: !1690, size: 128, offset: 1088)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 136, size: 128, elements: !1691)
!1691 = !{!1692, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1690, file: !1455, line: 137, baseType: !1693, size: 128)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1694, line: 6, size: 128, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1693, file: !1694, line: 7, baseType: !96, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1693, file: !1694, line: 8, baseType: !96, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1455, line: 138, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1455, line: 138, elements: !1700)
!1700 = !{!1701, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1699, file: !1455, line: 138, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !1455, line: 138, elements: !412)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1699, file: !1455, line: 138, baseType: !1704)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1693, elements: !880)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1450, file: !384, line: 147, baseType: !33, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1408, file: !384, line: 161, baseType: !428, size: 128, align: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !384, line: 164, baseType: !1708, size: 32, offset: 384)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !384, line: 164, size: 32, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1708, file: !384, line: 169, baseType: !40, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1708, file: !384, line: 177, baseType: !29, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1404, file: !384, line: 181, baseType: !40, size: 32, offset: 416)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !421, line: 309, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1397, file: !421, line: 406, baseType: !1716, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!45, !419, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !384, line: 293, size: 1536, elements: !1721)
!1721 = !{!1722, !1752, !1766}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !384, line: 295, baseType: !1723, size: 512)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !384, line: 295, size: 512, elements: !1724)
!1724 = !{!1725, !1751}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !384, line: 296, baseType: !1726, size: 448)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1723, file: !384, line: 296, size: 448, elements: !1727)
!1727 = !{!1728, !1729, !1738, !1739, !1740, !1749, !1750}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1726, file: !384, line: 298, baseType: !22, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !384, line: 299, baseType: !1730, size: 128, offset: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1726, file: !384, line: 299, size: 128, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1730, file: !384, line: 300, baseType: !101, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !384, line: 302, baseType: !1734, size: 128)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !384, line: 302, size: 128, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1734, file: !384, line: 303, baseType: !33, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1734, file: !384, line: 305, baseType: !29, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1726, file: !384, line: 310, baseType: !1383, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1726, file: !384, line: 311, baseType: !22, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !384, line: 312, baseType: !1741, size: 64, offset: 320)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1726, file: !384, line: 312, size: 64, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1741, file: !384, line: 313, baseType: !33, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1741, file: !384, line: 314, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !384, line: 257, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 255, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1746, file: !384, line: 256, baseType: !22, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1726, file: !384, line: 316, baseType: !40, size: 32, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1726, file: !384, line: 317, baseType: !40, size: 32, offset: 416)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1723, file: !384, line: 323, baseType: !1404, size: 512, align: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !384, line: 325, baseType: !1753, size: 512, offset: 512)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !384, line: 325, size: 512, elements: !1754)
!1754 = !{!1755, !1765}
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !384, line: 326, baseType: !1756, size: 320)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !384, line: 326, size: 320, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1756, file: !384, line: 327, baseType: !22, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1756, file: !384, line: 328, baseType: !22, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1756, file: !384, line: 329, baseType: !22, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1756, file: !384, line: 331, baseType: !40, size: 32, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1756, file: !384, line: 332, baseType: !40, size: 32, offset: 224)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1756, file: !384, line: 333, baseType: !40, size: 32, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1756, file: !384, line: 335, baseType: !29, size: 32, offset: 288)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1753, file: !384, line: 339, baseType: !1404, size: 512, align: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !384, line: 341, baseType: !1767, size: 512, offset: 1024)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !384, line: 341, size: 512, elements: !1768)
!1768 = !{!1769, !1778, !1784}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !384, line: 342, baseType: !1770, size: 384)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !384, line: 342, size: 384, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1770, file: !384, line: 343, baseType: !22, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1770, file: !384, line: 344, baseType: !22, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1770, file: !384, line: 346, baseType: !33, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1770, file: !384, line: 347, baseType: !33, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1770, file: !384, line: 348, baseType: !33, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1770, file: !384, line: 349, baseType: !33, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !384, line: 352, baseType: !1779, size: 256)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !384, line: 352, size: 256, elements: !1780)
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1779, file: !384, line: 353, baseType: !22, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1779, file: !384, line: 354, baseType: !22, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1779, file: !384, line: 356, baseType: !101, size: 128, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1767, file: !384, line: 359, baseType: !1404, size: 512, align: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1397, file: !421, line: 409, baseType: !1786, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!45, !1383, !1713}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1397, file: !421, line: 412, baseType: !1790, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!614, !1383, !1719}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1397, file: !421, line: 414, baseType: !1794, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !421, line: 310, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1397, file: !421, line: 416, baseType: !1800, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!45, !419, !1383, !460, !29, !1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1397, file: !421, line: 419, baseType: !1806, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!45, !419, !1383, !460, !29, !29, !1403, !33}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1397, file: !421, line: 424, baseType: !1810, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1813, !1383, !1813}
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1397, file: !421, line: 425, baseType: !1815, size: 64, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1719, !795, !795}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1397, file: !421, line: 426, baseType: !1819, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!614, !1719, !539}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1397, file: !421, line: 427, baseType: !1823, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1719}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1397, file: !421, line: 428, baseType: !1827, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!1177, !1830, !1852}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !421, line: 373, size: 384, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1839, !1840, !1841, !1842}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1831, file: !421, line: 374, baseType: !419, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1831, file: !421, line: 375, baseType: !460, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1831, file: !421, line: 376, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1830, !873}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1831, file: !421, line: 377, baseType: !33, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1831, file: !421, line: 378, baseType: !45, size: 32, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1831, file: !421, line: 379, baseType: !65, size: 16, offset: 288)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !421, line: 380, baseType: !1843, size: 64, offset: 320)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !421, line: 380, size: 64, elements: !1844)
!1844 = !{!1845, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1843, file: !421, line: 386, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !421, line: 386, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1843, file: !421, line: 395, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!1177, !33}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1854, line: 41, size: 320, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1866, !1899}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1853, file: !1854, line: 42, baseType: !216, size: 8)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1853, file: !1854, line: 43, baseType: !614, size: 8, offset: 8)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1853, file: !1854, line: 44, baseType: !614, size: 8, offset: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1853, file: !1854, line: 45, baseType: !614, size: 8, offset: 24)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1853, file: !1854, line: 46, baseType: !614, size: 8, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1854, line: 47, baseType: !1862, size: 64, offset: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1854, line: 47, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1862, file: !1854, line: 48, baseType: !795, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1862, file: !1854, line: 49, baseType: !45, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1854, line: 61, baseType: !1867, size: 128, offset: 128)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1854, line: 61, size: 128, elements: !1868)
!1868 = !{!1869, !1875}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1867, file: !1854, line: 67, baseType: !1870, size: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1871, line: 17, size: 128, elements: !1872)
!1871 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1870, file: !1871, line: 19, baseType: !33, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1870, file: !1871, line: 20, baseType: !796, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !1854, line: 68, baseType: !1876, size: 128)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !1854, line: 68, size: 128, elements: !1877)
!1877 = !{!1878, !1898}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !1854, line: 69, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !1854, line: 69, size: 64, elements: !1880)
!1880 = !{!1881, !1884, !1891, !1895, !1897}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1879, file: !1854, line: 71, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1879, file: !1854, line: 72, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1854, line: 17, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1887, file: !1854, line: 18, baseType: !33, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1887, file: !1854, line: 19, baseType: !795, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1879, file: !1854, line: 73, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1854, line: 73, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1879, file: !1854, line: 74, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1879, file: !1854, line: 75, baseType: !33, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1876, file: !1854, line: 77, baseType: !795, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1854, line: 80, baseType: !1900, size: 64, offset: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1854, line: 80, size: 64, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1900, file: !1854, line: 81, baseType: !22, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1900, file: !1854, line: 82, baseType: !460, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1397, file: !421, line: 433, baseType: !1905, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!45, !1383, !1719, !1719, !1908}
!1908 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1909, line: 15, baseType: !29, size: 32, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1910 = !{!1911, !1912, !1913, !1914}
!1911 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1912 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1913 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1914 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1397, file: !421, line: 435, baseType: !1916, size: 64, offset: 832)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!45, !1719}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1397, file: !421, line: 436, baseType: !1920, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!614, !1719, !795, !795}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1397, file: !421, line: 438, baseType: !1924, size: 64, offset: 960)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1719, !1927, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1397, file: !421, line: 439, baseType: !1929, size: 64, offset: 1024)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!45, !1383, !1403}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1397, file: !421, line: 442, baseType: !1933, size: 64, offset: 1088)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!45, !1936, !419, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !421, line: 66, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1397, file: !421, line: 444, baseType: !1940, size: 64, offset: 1152)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !419}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1397, file: !421, line: 445, baseType: !1944, size: 64, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!45, !1830, !1852}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !421, line: 486, baseType: !22, size: 64, offset: 896)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1384, file: !421, line: 487, baseType: !634, size: 320, offset: 960)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1384, file: !421, line: 488, baseType: !1950, size: 32, offset: 1280)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1951, line: 8, baseType: !25)
!1951 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1384, file: !421, line: 489, baseType: !401, size: 32, offset: 1312)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1384, file: !421, line: 490, baseType: !101, size: 128, offset: 1344)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1384, file: !421, line: 491, baseType: !33, size: 64, offset: 1472)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1374, file: !1343, line: 180, baseType: !1956, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1177, !419, !1285, !1373, !704, !460, !795}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1374, file: !1343, line: 182, baseType: !1956, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1374, file: !1343, line: 184, baseType: !1961, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!45, !419, !1285, !1373, !1521}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1362, file: !1343, line: 90, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1362, file: !1343, line: 91, baseType: !1967, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1333, file: !1280, line: 120, baseType: !1969, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1972, !1303}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1975, line: 39, size: 384, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1976 = !{!1977, !1983, !1987, !1991, !2000, !2004}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1974, file: !1975, line: 40, baseType: !1978, size: 32)
!1978 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1975, line: 26, baseType: !29, size: 32, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1981 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1982 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1974, file: !1975, line: 41, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!614}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1974, file: !1975, line: 42, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!33}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1974, file: !1975, line: 43, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1995, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1999, line: 17, flags: DIFlagFwdDecl)
!1999 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1974, file: !1975, line: 44, baseType: !2001, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1995}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1974, file: !1975, line: 45, baseType: !1056, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1333, file: !1280, line: 121, baseType: !2006, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!1995, !1303}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1333, file: !1280, line: 122, baseType: !2010, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1303, !839, !840}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1279, file: !1280, line: 70, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2016, line: 190, size: 1152, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2148, !2149, !2150, !2151, !2152, !2155}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2015, file: !2016, line: 191, baseType: !40, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2015, file: !2016, line: 192, baseType: !40, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2015, file: !2016, line: 202, baseType: !2014, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2015, file: !2016, line: 203, baseType: !694, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2015, file: !2016, line: 205, baseType: !88, size: 192, align: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2015, file: !2016, line: 207, baseType: !1995, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2015, file: !2016, line: 208, baseType: !29, size: 32, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2016, line: 209, baseType: !2026, size: 256, offset: 512)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2016, line: 209, size: 256, elements: !2027)
!2027 = !{!2028, !2037, !2041}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2026, file: !2016, line: 210, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2016, line: 153, size: 256, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2036}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2029, file: !2016, line: 154, baseType: !22, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2029, file: !2016, line: 156, baseType: !268, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2029, file: !2016, line: 162, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2016, line: 162, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2029, file: !2016, line: 167, baseType: !22, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2026, file: !2016, line: 211, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2016, line: 170, size: 64, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2038, file: !2016, line: 171, baseType: !2014, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2026, file: !2016, line: 212, baseType: !2042, size: 256)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2016, line: 174, size: 256, elements: !2043)
!2043 = !{!2044, !2143, !2146, !2147}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2042, file: !2016, line: 175, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2016, line: 271, size: 768, elements: !2048)
!2048 = !{!2049, !2107, !2111, !2112, !2113, !2114, !2115, !2119, !2120, !2121, !2122, !2139}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2047, file: !2016, line: 276, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!45, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2016, line: 251, size: 1216, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2054, file: !2016, line: 253, baseType: !2014, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2054, file: !2016, line: 254, baseType: !419, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2054, file: !2016, line: 255, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2061, line: 17, size: 960, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2092, !2093, !2096}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2060, file: !2061, line: 18, baseType: !704, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2060, file: !2061, line: 19, baseType: !795, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2060, file: !2061, line: 20, baseType: !795, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2060, file: !2061, line: 21, baseType: !795, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2060, file: !2061, line: 22, baseType: !795, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2060, file: !2061, line: 23, baseType: !460, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2060, file: !2061, line: 24, baseType: !460, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2060, file: !2061, line: 25, baseType: !448, size: 256, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2060, file: !2061, line: 26, baseType: !2072, size: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2061, line: 32, size: 256, elements: !2075)
!2075 = !{!2076, !2080, !2084, !2088}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2074, file: !2061, line: 33, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!33, !2059, !798}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2074, file: !2061, line: 34, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2059, !33}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2074, file: !2061, line: 35, baseType: !2085, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!33, !2059, !33, !798}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2074, file: !2061, line: 36, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!45, !2059, !33}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2060, file: !2061, line: 27, baseType: !45, size: 32, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2060, file: !2061, line: 28, baseType: !2094, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2060, file: !2061, line: 29, baseType: !33, size: 64, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2054, file: !2016, line: 256, baseType: !33, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2054, file: !2016, line: 259, baseType: !448, size: 256, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2054, file: !2016, line: 260, baseType: !448, size: 256, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2054, file: !2016, line: 261, baseType: !45, size: 32, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2054, file: !2016, line: 262, baseType: !101, size: 128, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2054, file: !2016, line: 263, baseType: !704, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2054, file: !2016, line: 265, baseType: !795, size: 64, offset: 1024)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2054, file: !2016, line: 266, baseType: !614, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2054, file: !2016, line: 267, baseType: !614, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2054, file: !2016, line: 268, baseType: !1566, size: 64, offset: 1152)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2047, file: !2016, line: 277, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2053}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2047, file: !2016, line: 290, baseType: !2089, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2047, file: !2016, line: 292, baseType: !2077, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2047, file: !2016, line: 293, baseType: !2085, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2047, file: !2016, line: 294, baseType: !2081, size: 64, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2047, file: !2016, line: 296, baseType: !2116, size: 64, offset: 384)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!1177, !2053, !704, !795, !460}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2047, file: !2016, line: 306, baseType: !795, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2047, file: !2016, line: 313, baseType: !614, size: 8, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2047, file: !2016, line: 314, baseType: !2116, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2047, file: !2016, line: 317, baseType: !2123, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !2053, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2127, line: 59, baseType: !29)
!2127 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2130, line: 37, size: 128, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2131 = !{!2132, !2138}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2129, file: !2130, line: 38, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2130, line: 31, baseType: !2134)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !419, !2137, !2128}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2129, file: !2130, line: 39, baseType: !2126, size: 32, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2047, file: !2016, line: 320, baseType: !2140, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!45, !2053, !1521}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2042, file: !2016, line: 176, baseType: !2144, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2016, line: 35, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2042, file: !2016, line: 177, baseType: !460, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2042, file: !2016, line: 178, baseType: !2014, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2015, file: !2016, line: 215, baseType: !33, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2015, file: !2016, line: 221, baseType: !96, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2016, line: 223, baseType: !67, size: 16, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2015, file: !2016, line: 224, baseType: !783, size: 16, offset: 912)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2015, file: !2016, line: 225, baseType: !2153, size: 64, offset: 960)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2016, line: 36, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2015, file: !2016, line: 227, baseType: !428, size: 128, align: 64, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1279, file: !1280, line: 71, baseType: !2157, size: 32, offset: 448)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2158, line: 19, size: 32, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2157, file: !2158, line: 20, baseType: !35, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1279, file: !1280, line: 73, baseType: !29, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1279, file: !1280, line: 74, baseType: !29, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1279, file: !1280, line: 75, baseType: !29, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1279, file: !1280, line: 76, baseType: !29, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1279, file: !1280, line: 77, baseType: !29, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1276, file: !1261, line: 47, baseType: !1259, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1276, file: !1261, line: 48, baseType: !1285, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1276, file: !1261, line: 49, baseType: !2169, size: 64, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1261, line: 49, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1276, file: !1261, line: 50, baseType: !813, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1260, file: !1261, line: 418, baseType: !2173, size: 64, offset: 1408)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !1261, line: 53, size: 448, elements: !2175)
!2175 = !{!2176, !2177, !2182, !2186, !2190, !2194}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2174, file: !1261, line: 54, baseType: !1350, size: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2174, file: !1261, line: 55, baseType: !2178, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!1177, !2173, !2181, !704}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2174, file: !1261, line: 57, baseType: !2183, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!1177, !2173, !2181, !694, !795}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2174, file: !1261, line: 59, baseType: !2187, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !1259, !694}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2174, file: !1261, line: 60, baseType: !2191, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!45, !1259}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2174, file: !1261, line: 61, baseType: !2195, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !1259}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1260, file: !1261, line: 419, baseType: !694, size: 64, offset: 1472)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1260, file: !1261, line: 420, baseType: !694, size: 64, offset: 1536)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1260, file: !1261, line: 421, baseType: !1285, size: 64, offset: 1600)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1260, file: !1261, line: 424, baseType: !2202, size: 64, offset: 1664)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !1261, line: 424, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1260, file: !1261, line: 425, baseType: !2206, size: 64, offset: 1728)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1260, file: !1261, line: 426, baseType: !29, size: 32, offset: 1792)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1260, file: !1261, line: 435, baseType: !448, size: 256, offset: 1856)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1260, file: !1261, line: 437, baseType: !2211, size: 64, offset: 2112)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2213, line: 69, size: 320, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2214 = !{!2215, !2216, !2217, !2234, !2236, !2240, !2241}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2212, file: !2213, line: 70, baseType: !694, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2212, file: !2213, line: 71, baseType: !1259, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2212, file: !2213, line: 72, baseType: !2218, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2213, line: 47, size: 256, elements: !2221)
!2221 = !{!2222, !2223, !2229, !2233}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2220, file: !2213, line: 49, baseType: !29, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2220, file: !2213, line: 51, baseType: !2224, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!45, !694, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2212)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2220, file: !2213, line: 53, baseType: !2230, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!45, !704, !2227}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2220, file: !2213, line: 55, baseType: !1056, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2212, file: !2213, line: 73, baseType: !2235, size: 16, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2212, file: !2213, line: 74, baseType: !2237, size: 8, offset: 208)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !26, line: 16, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !28, line: 20, baseType: !2239)
!2239 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2212, file: !2213, line: 75, baseType: !216, size: 8, offset: 216)
!2241 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2213, line: 76, baseType: !2242, size: 64, offset: 256)
!2242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !2213, line: 76, size: 64, elements: !2243)
!2243 = !{!2244, !2245, !2252}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2242, file: !2213, line: 77, baseType: !33, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2242, file: !2213, line: 78, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2213, line: 86, size: 128, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2248, file: !2213, line: 87, baseType: !29, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2248, file: !2213, line: 88, baseType: !704, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2242, file: !2213, line: 79, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2213, line: 92, size: 256, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2261, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2255, file: !2213, line: 94, baseType: !29, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2255, file: !2213, line: 95, baseType: !29, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2255, file: !2213, line: 96, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2255, file: !2213, line: 97, baseType: !2218, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2255, file: !2213, line: 98, baseType: !33, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1260, file: !1261, line: 438, baseType: !29, size: 32, offset: 2176)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1260, file: !1261, line: 441, baseType: !29, size: 32, offset: 2208)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1260, file: !1261, line: 442, baseType: !2202, size: 64, offset: 2240)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1260, file: !1261, line: 443, baseType: !2206, size: 64, offset: 2304)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1260, file: !1261, line: 444, baseType: !614, size: 8, offset: 2368)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1260, file: !1261, line: 451, baseType: !614, size: 8, offset: 2376)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1260, file: !1261, line: 454, baseType: !29, size: 32, offset: 2400)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1260, file: !1261, line: 455, baseType: !2271, size: 64, offset: 2432)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2273, line: 23, size: 96, elements: !2274)
!2273 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2274 = !{!2275, !2276, !2277}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2272, file: !2273, line: 24, baseType: !45, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2272, file: !2273, line: 24, baseType: !45, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2272, file: !2273, line: 24, baseType: !45, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1260, file: !1261, line: 458, baseType: !2279, size: 64, offset: 2496)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!45}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1260, file: !1261, line: 460, baseType: !2283, size: 4032, align: 512, offset: 2560)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2284, size: 4032, elements: !2300)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !1261, line: 362, size: 576, elements: !2285)
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2284, file: !1261, line: 363, baseType: !33, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2284, file: !1261, line: 364, baseType: !29, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2284, file: !1261, line: 367, baseType: !2289, size: 448, offset: 128)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !1261, line: 319, size: 448, elements: !2290)
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2289, file: !1261, line: 320, baseType: !1259, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2289, file: !1261, line: 321, baseType: !2293, size: 384, offset: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2294, line: 40, size: 384, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2295 = !{!2296}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2293, file: !2294, line: 41, baseType: !2297, size: 384, align: 64)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 384, align: 64, elements: !2298)
!2298 = !{!2299}
!2299 = !DISubrange(count: 2)
!2300 = !{!2301}
!2301 = !DISubrange(count: 7)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1260, file: !1261, line: 463, baseType: !2303, size: 192, offset: 6592)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2304, line: 8, size: 192, elements: !2305)
!2304 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2305 = !{!2306, !2307, !2309}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2303, file: !2304, line: 10, baseType: !29, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2303, file: !2304, line: 11, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2303, file: !2304, line: 12, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2312, line: 59, size: 48, elements: !2313)
!2312 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2313 = !{!2314, !2317, !2318, !2319, !2320, !2321}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2311, file: !2312, line: 60, baseType: !2315, size: 16)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !26, line: 18, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !28, line: 23, baseType: !662)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2311, file: !2312, line: 61, baseType: !2315, size: 16, offset: 16)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2311, file: !2312, line: 63, baseType: !29, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2311, file: !2312, line: 64, baseType: !29, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2311, file: !2312, line: 65, baseType: !29, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2311, file: !2312, line: 66, baseType: !29, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1260, file: !1261, line: 465, baseType: !22, size: 64, offset: 6784)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1260, file: !1261, line: 469, baseType: !29, size: 32, offset: 6848)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1260, file: !1261, line: 470, baseType: !101, size: 128, offset: 6912)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1260, file: !1261, line: 471, baseType: !2326, size: 64, offset: 7040)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2328, line: 33, size: 96, elements: !2329)
!2328 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2329 = !{!2330, !2331, !2332, !2333}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2327, file: !2328, line: 37, baseType: !45, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2327, file: !2328, line: 43, baseType: !45, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2327, file: !2328, line: 45, baseType: !67, size: 16, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2327, file: !2328, line: 47, baseType: !67, size: 16, offset: 80)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1260, file: !1261, line: 476, baseType: !2335, size: 64, offset: 7104)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !1261, line: 378, size: 256, elements: !2337)
!2337 = !{!2338, !2354, !2355, !2356}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2336, file: !1261, line: 379, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2341, line: 204, baseType: !2342)
!2341 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2341, line: 197, size: 192, elements: !2343)
!2343 = !{!2344, !2346, !2347, !2348, !2350, !2352}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2342, file: !2341, line: 198, baseType: !2345, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2341, line: 21, baseType: !27)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2342, file: !2341, line: 199, baseType: !218, size: 8, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2342, file: !2341, line: 200, baseType: !218, size: 8, offset: 40)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2342, file: !2341, line: 201, baseType: !2349, size: 16, offset: 48)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2341, line: 17, baseType: !66)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2342, file: !2341, line: 202, baseType: !2351, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2341, line: 16, baseType: !97)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2342, file: !2341, line: 203, baseType: !2353, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2341, line: 22, baseType: !97)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2336, file: !1261, line: 380, baseType: !29, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2336, file: !1261, line: 381, baseType: !704, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2336, file: !1261, line: 382, baseType: !704, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1260, file: !1261, line: 477, baseType: !2336, size: 256, offset: 7168)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1260, file: !1261, line: 480, baseType: !2359, size: 64, offset: 7424)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !1261, line: 480, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1260, file: !1261, line: 483, baseType: !2362, size: 64, offset: 7488)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !1261, line: 483, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1260, file: !1261, line: 488, baseType: !704, size: 64, offset: 7552)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1260, file: !1261, line: 492, baseType: !33, size: 64, offset: 7616)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1260, file: !1261, line: 493, baseType: !29, size: 32, offset: 7680)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1260, file: !1261, line: 495, baseType: !33, size: 64, offset: 7744)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1260, file: !1261, line: 496, baseType: !29, size: 32, offset: 7808)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1260, file: !1261, line: 499, baseType: !29, size: 32, offset: 7840)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1260, file: !1261, line: 500, baseType: !2371, size: 64, offset: 7872)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2373, line: 45, baseType: !2374)
!2373 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1260, file: !1261, line: 503, baseType: !29, size: 32, offset: 7936)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1260, file: !1261, line: 504, baseType: !2377, size: 64, offset: 8000)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2380, line: 96, size: 192, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2381 = !{!2382, !2383, !2436, !2439}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2379, file: !2380, line: 97, baseType: !29, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2379, file: !2380, line: 98, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2380, line: 24, size: 3072, elements: !2386)
!2386 = !{!2387, !2389, !2390, !2391, !2392, !2405, !2406, !2407, !2408, !2420, !2421, !2422, !2433, !2434, !2435}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2385, file: !2380, line: 26, baseType: !2388, size: 128)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !2298)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2385, file: !2380, line: 27, baseType: !2388, size: 128, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2385, file: !2380, line: 28, baseType: !45, size: 32, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2385, file: !2380, line: 31, baseType: !401, size: 32, align: 512, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2385, file: !2380, line: 32, baseType: !2393, size: 960, offset: 576)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2394, line: 206, size: 960, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2395 = !{!2396, !2397, !2400, !2402, !2403, !2404}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2393, file: !2394, line: 207, baseType: !431, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2393, file: !2394, line: 208, baseType: !2398, size: 256, offset: 64)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2399, size: 256, elements: !508)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2393, file: !2394, line: 209, baseType: !2401, size: 256, offset: 320)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !508)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2393, file: !2394, line: 213, baseType: !873, size: 64, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2393, file: !2394, line: 215, baseType: !875, size: 256, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2393, file: !2394, line: 216, baseType: !216, size: 8, offset: 896)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2385, file: !2380, line: 33, baseType: !22, size: 64, offset: 1536)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2385, file: !2380, line: 34, baseType: !22, size: 64, offset: 1600)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2385, file: !2380, line: 35, baseType: !614, size: 8, offset: 1664)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2385, file: !2380, line: 36, baseType: !2409, size: 320, offset: 1728)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2410, line: 11, size: 320, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2411 = !{!2412, !2413, !2414, !2419}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2409, file: !2410, line: 16, baseType: !503, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2409, file: !2410, line: 17, baseType: !22, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2409, file: !2410, line: 18, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !2410, line: 19, baseType: !25, size: 32, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2385, file: !2380, line: 37, baseType: !743, size: 256, offset: 2048)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2385, file: !2380, line: 38, baseType: !428, size: 128, align: 64, offset: 2304)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2385, file: !2380, line: 39, baseType: !2423, size: 64, offset: 2432)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2380, line: 49, size: 768, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2424, file: !2380, line: 50, baseType: !401, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2424, file: !2380, line: 51, baseType: !2401, size: 256, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2424, file: !2380, line: 53, baseType: !2401, size: 256, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2424, file: !2380, line: 54, baseType: !22, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2424, file: !2380, line: 55, baseType: !2423, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2424, file: !2380, line: 56, baseType: !45, size: 32, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2424, file: !2380, line: 57, baseType: !45, size: 32, offset: 736)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2385, file: !2380, line: 40, baseType: !22, size: 64, offset: 2496)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2385, file: !2380, line: 42, baseType: !45, size: 32, offset: 2560)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2385, file: !2380, line: 43, baseType: !2378, size: 64, offset: 2624)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2379, file: !2380, line: 99, baseType: !2437, offset: 128)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2438, line: 211, elements: !412)
!2438 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2379, file: !2380, line: 100, baseType: !2440, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2380, line: 63, size: 3008, elements: !2442)
!2442 = !{!2443, !2444, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2474}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2441, file: !2380, line: 64, baseType: !2423, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2441, file: !2380, line: 65, baseType: !2445, size: 192, offset: 64)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 192, elements: !486)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2441, file: !2380, line: 67, baseType: !45, size: 32, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2441, file: !2380, line: 68, baseType: !448, size: 256, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2441, file: !2380, line: 69, baseType: !401, size: 32, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2441, file: !2380, line: 70, baseType: !448, size: 256, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2441, file: !2380, line: 71, baseType: !22, size: 64, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2441, file: !2380, line: 72, baseType: !22, size: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2441, file: !2380, line: 73, baseType: !22, size: 64, offset: 1024)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2441, file: !2380, line: 74, baseType: !22, size: 64, offset: 1088)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2441, file: !2380, line: 75, baseType: !22, size: 64, offset: 1152)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2441, file: !2380, line: 76, baseType: !22, size: 64, offset: 1216)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2441, file: !2380, line: 77, baseType: !22, size: 64, offset: 1280)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2441, file: !2380, line: 78, baseType: !22, size: 64, offset: 1344)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2441, file: !2380, line: 79, baseType: !614, size: 8, offset: 1408)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2441, file: !2380, line: 80, baseType: !22, size: 64, offset: 1472)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2441, file: !2380, line: 81, baseType: !448, size: 256, offset: 1536)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2441, file: !2380, line: 82, baseType: !814, size: 256, offset: 1792)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2441, file: !2380, line: 84, baseType: !40, size: 32, offset: 2048)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2441, file: !2380, line: 87, baseType: !22, size: 64, offset: 2112)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2441, file: !2380, line: 88, baseType: !22, size: 64, offset: 2176)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2441, file: !2380, line: 89, baseType: !2466, size: 704, offset: 2240)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !744, line: 111, size: 704, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2473}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2466, file: !744, line: 112, baseType: !743, size: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2466, file: !744, line: 113, baseType: !2409, size: 320, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2466, file: !744, line: 116, baseType: !2471, size: 64, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !744, line: 18, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2466, file: !744, line: 117, baseType: !45, size: 32, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2441, file: !2380, line: 90, baseType: !2378, size: 64, offset: 2944)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1260, file: !1261, line: 515, baseType: !2476, size: 64, offset: 8064)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2478, line: 117, size: 128, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2477, file: !2478, line: 118, baseType: !626, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2477, file: !2478, line: 119, baseType: !626, size: 32, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2477, file: !2478, line: 120, baseType: !873, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1260, file: !1261, line: 516, baseType: !29, size: 32, offset: 8128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1260, file: !1261, line: 519, baseType: !29, size: 32, offset: 8160)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1260, file: !1261, line: 520, baseType: !2486, size: 64, offset: 8192)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1260, file: !1261, line: 523, baseType: !2488, size: 64, offset: 8256)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !2491, line: 372, size: 1024, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!2492 = !{!2493, !2494, !2544, !2604, !2691, !2692, !2696, !2701, !2702, !2703, !2704, !2706, !2709}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2490, file: !2491, line: 373, baseType: !101, size: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2490, file: !2491, line: 374, baseType: !2495, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !2491, line: 291, size: 576, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2515, !2538, !2542, !2543}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2496, file: !2491, line: 292, baseType: !694, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2496, file: !2491, line: 293, baseType: !33, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2496, file: !2491, line: 295, baseType: !33, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2496, file: !2491, line: 297, baseType: !2502, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!45, !2489, !2505, !33}
!2505 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !2491, line: 253, baseType: !29, size: 32, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514}
!2507 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!2508 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!2509 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!2510 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!2511 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!2512 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!2513 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!2514 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2496, file: !2491, line: 299, baseType: !2516, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !2491, line: 275, size: 320, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2517, file: !2491, line: 276, baseType: !694, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2491, line: 277, baseType: !2521, size: 256, offset: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2491, line: 277, size: 256, elements: !2522)
!2522 = !{!2523, !2534}
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2521, file: !2491, line: 278, baseType: !2524, size: 256)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2521, file: !2491, line: 278, size: 256, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2531, !2532, !2533}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2524, file: !2491, line: 279, baseType: !694, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2524, file: !2491, line: 280, baseType: !2374, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2524, file: !2491, line: 281, baseType: !2374, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2524, file: !2491, line: 282, baseType: !2530, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2524, file: !2491, line: 283, baseType: !29, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2524, file: !2491, line: 284, baseType: !2374, size: 32, offset: 160)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2524, file: !2491, line: 285, baseType: !2374, size: 32, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2521, file: !2491, line: 287, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!45, !2489}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2496, file: !2491, line: 300, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!104, !2489}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2496, file: !2491, line: 301, baseType: !101, size: 128, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2496, file: !2491, line: 302, baseType: !2535, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2490, file: !2491, line: 375, baseType: !2545, size: 64, offset: 192)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2490, file: !2491, line: 375, size: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2545, file: !2491, line: 376, baseType: !694, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2545, file: !2491, line: 378, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2373, line: 32, size: 640, elements: !2551)
!2551 = !{!2552, !2553, !2565, !2589, !2590, !2591, !2592, !2593, !2597}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2550, file: !2373, line: 33, baseType: !694, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2550, file: !2373, line: 34, baseType: !2554, size: 128, offset: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2478, line: 85, size: 128, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2554, file: !2478, line: 86, baseType: !40, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !2554, file: !2478, line: 101, baseType: !2558, size: 64, offset: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2554, file: !2478, line: 101, size: 64, elements: !2559)
!2559 = !{!2560, !2561, !2562}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2558, file: !2478, line: 102, baseType: !22, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2558, file: !2478, line: 103, baseType: !2476, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2558, file: !2478, line: 104, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2478, line: 104, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2550, file: !2373, line: 35, baseType: !2566, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2568, line: 61, size: 128, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2567, file: !2568, line: 62, baseType: !33, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, scope: !2567, file: !2568, line: 63, baseType: !2572, size: 64, offset: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2567, file: !2568, line: 63, size: 64, elements: !2573)
!2573 = !{!2574, !2575, !2588}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2572, file: !2568, line: 65, baseType: !22, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2572, file: !2568, line: 66, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2578, line: 169, size: 192, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2579 = !{!2580, !2581, !2582}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2577, file: !2578, line: 170, baseType: !2576, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2577, file: !2578, line: 171, baseType: !1259, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2577, file: !2578, line: 172, baseType: !2583, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2568, line: 32, size: 64, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2584, file: !2568, line: 33, baseType: !626, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2584, file: !2568, line: 34, baseType: !626, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2572, file: !2568, line: 67, baseType: !2583, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2550, file: !2373, line: 36, baseType: !33, size: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2550, file: !2373, line: 37, baseType: !33, size: 64, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2550, file: !2373, line: 38, baseType: !33, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2550, file: !2373, line: 39, baseType: !2279, size: 64, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2550, file: !2373, line: 40, baseType: !2594, size: 64, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2550, file: !2373, line: 41, baseType: !2598, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2373, line: 26, size: 192, elements: !2600)
!2600 = !{!2601, !2602, !2603}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2599, file: !2373, line: 27, baseType: !33, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2599, file: !2373, line: 28, baseType: !33, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2599, file: !2373, line: 29, baseType: !45, size: 32, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2490, file: !2491, line: 380, baseType: !2605, size: 256, offset: 256)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !2491, line: 148, size: 256, elements: !2606)
!2606 = !{!2607, !2608, !2609}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2605, file: !2491, line: 149, baseType: !503, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2605, file: !2491, line: 150, baseType: !45, size: 32, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2605, file: !2491, line: 151, baseType: !2610, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !2491, line: 141, size: 256, elements: !2612)
!2612 = !{!2613, !2688, !2689, !2690}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2611, file: !2491, line: 142, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !2491, line: 138, baseType: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2618, !2624, !45, !2687}
!2618 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !2491, line: 158, baseType: !29, size: 32, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623}
!2620 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!2621 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!2622 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!2623 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !2491, line: 93, size: 67776, elements: !2626)
!2626 = !{!2627, !2630, !2633, !2636, !2637, !2638, !2639, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2667, !2670, !2671, !2672, !2680, !2681, !2682, !2683, !2684, !2685, !2686}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2625, file: !2491, line: 94, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !2491, line: 13, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2625, file: !2491, line: 95, baseType: !2631, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !2491, line: 15, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2625, file: !2491, line: 96, baseType: !2634, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !2491, line: 14, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2625, file: !2491, line: 97, baseType: !33, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2625, file: !2491, line: 98, baseType: !45, size: 32, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2625, file: !2491, line: 99, baseType: !448, size: 256, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2625, file: !2491, line: 100, baseType: !2640, size: 64, offset: 576)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2643, line: 10, flags: DIFlagFwdDecl)
!2643 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2625, file: !2491, line: 101, baseType: !22, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2625, file: !2491, line: 102, baseType: !33, size: 64, offset: 704)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2625, file: !2491, line: 103, baseType: !29, size: 32, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2625, file: !2491, line: 104, baseType: !704, size: 64, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2625, file: !2491, line: 105, baseType: !29, size: 32, offset: 896)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2625, file: !2491, line: 106, baseType: !873, size: 64, offset: 960)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2625, file: !2491, line: 109, baseType: !2651, size: 33088, offset: 1024)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2652, line: 14, size: 33088, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2653 = !{!2654, !2658, !2665, !2666}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2651, file: !2652, line: 15, baseType: !2655, size: 32768)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2656)
!2656 = !{!2657}
!2657 = !DISubrange(count: 4096)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2651, file: !2652, line: 16, baseType: !2659, size: 192, offset: 32768)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2660, line: 18, size: 192, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2659, file: !2660, line: 19, baseType: !704, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2659, file: !2660, line: 20, baseType: !795, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2659, file: !2660, line: 21, baseType: !795, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2651, file: !2652, line: 17, baseType: !795, size: 64, offset: 32960)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2651, file: !2652, line: 18, baseType: !45, size: 32, offset: 33024)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2625, file: !2491, line: 111, baseType: !2668, size: 64, offset: 34112)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !329, line: 913, baseType: !2669)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !334)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2625, file: !2491, line: 114, baseType: !614, size: 8, offset: 34176)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2625, file: !2491, line: 117, baseType: !2651, size: 33088, offset: 34240)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2625, file: !2491, line: 118, baseType: !2673, size: 64, offset: 67328)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !2491, line: 79, size: 64, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2674, file: !2491, line: 80, baseType: !67, size: 16)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2674, file: !2491, line: 81, baseType: !218, size: 8, offset: 16)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2674, file: !2491, line: 82, baseType: !218, size: 8, offset: 24)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2674, file: !2491, line: 83, baseType: !45, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2625, file: !2491, line: 119, baseType: !22, size: 64, offset: 67392)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2625, file: !2491, line: 120, baseType: !45, size: 32, offset: 67456)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2625, file: !2491, line: 121, baseType: !45, size: 32, offset: 67488)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2625, file: !2491, line: 122, baseType: !45, size: 32, offset: 67520)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2625, file: !2491, line: 123, baseType: !96, size: 64, offset: 67584)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2625, file: !2491, line: 125, baseType: !460, size: 64, offset: 67648)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2625, file: !2491, line: 126, baseType: !873, size: 64, offset: 67712)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2611, file: !2491, line: 143, baseType: !2614, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2611, file: !2491, line: 144, baseType: !2614, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2611, file: !2491, line: 145, baseType: !2614, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2490, file: !2491, line: 381, baseType: !704, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2490, file: !2491, line: 382, baseType: !2693, size: 64, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !2695, line: 821, flags: DIFlagFwdDecl)
!2695 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!2696 = !DIDerivedType(tag: DW_TAG_member, scope: !2490, file: !2491, line: 387, baseType: !2697, size: 64, offset: 640)
!2697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2490, file: !2491, line: 387, size: 64, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2697, file: !2491, line: 388, baseType: !33, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2697, file: !2491, line: 389, baseType: !40, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2490, file: !2491, line: 391, baseType: !33, size: 64, offset: 704)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2490, file: !2491, line: 394, baseType: !45, size: 32, offset: 768)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2490, file: !2491, line: 397, baseType: !45, size: 32, offset: 800)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2490, file: !2491, line: 398, baseType: !2705, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2490, file: !2491, line: 399, baseType: !2707, size: 64, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !2491, line: 399, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2490, file: !2491, line: 401, baseType: !2710, size: 64, offset: 960)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!45, !2489, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2695, line: 671, size: 8512, elements: !2715)
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !3301, !3302, !3311, !3312, !3318, !3319, !3320, !3321, !3322, !3406, !3407, !3408, !3409, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3529, !3530, !3531, !3532, !3533, !3534, !3549, !3550, !3551, !3552, !3553, !3559, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3576, !3747, !3748, !3749, !3750, !4018, !4019, !4020}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2714, file: !2695, line: 678, baseType: !101, size: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2714, file: !2695, line: 684, baseType: !101, size: 128, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2714, file: !2695, line: 685, baseType: !101, size: 128, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2714, file: !2695, line: 689, baseType: !88, size: 192, align: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2714, file: !2695, line: 690, baseType: !96, size: 64, offset: 576)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2714, file: !2695, line: 696, baseType: !101, size: 128, offset: 640)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2714, file: !2695, line: 698, baseType: !503, size: 128, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2714, file: !2695, line: 699, baseType: !101, size: 128, offset: 896)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2714, file: !2695, line: 700, baseType: !45, size: 32, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2714, file: !2695, line: 703, baseType: !45, size: 32, offset: 1056)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2714, file: !2695, line: 705, baseType: !45, size: 32, offset: 1088)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2714, file: !2695, line: 707, baseType: !29, size: 32, offset: 1120)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2714, file: !2695, line: 708, baseType: !2713, size: 64, offset: 1152)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2714, file: !2695, line: 714, baseType: !2730, size: 64, offset: 1216)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !2695, line: 302, size: 2432, elements: !2732)
!2732 = !{!2733, !2734, !2735, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3211, !3212, !3213, !3214, !3215, !3219, !3220, !3224, !3228, !3229, !3233, !3237, !3238, !3239, !3243, !3247, !3251, !3252, !3253, !3257, !3258, !3262, !3266, !3267, !3287, !3291, !3292, !3293, !3297}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2731, file: !2695, line: 303, baseType: !101, size: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2731, file: !2695, line: 305, baseType: !1259, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2731, file: !2695, line: 306, baseType: !2736, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2738, line: 705, size: 5824, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2739 = !{!2740, !2741, !2742, !2745, !2746, !2800, !2876, !2877, !2878, !2879, !2880, !2893, !2999, !3012, !3022, !3026, !3028, !3029, !3030, !3034, !3041, !3042, !3045, !3048, !3052, !3055, !3056, !3057, !3058, !3059, !3060, !3090, !3091, !3092, !3095, !3098, !3126, !3133, !3134, !3135, !3136, !3137}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2737, file: !2738, line: 706, baseType: !1279, size: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2737, file: !2738, line: 707, baseType: !2736, size: 64, offset: 512)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2737, file: !2738, line: 709, baseType: !2743, size: 64, offset: 576)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2738, line: 37, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2737, file: !2738, line: 711, baseType: !694, size: 64, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2737, file: !2738, line: 712, baseType: !2747, size: 64, offset: 704)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2738, line: 89, size: 384, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2759, !2764, !2768}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2749, file: !2738, line: 90, baseType: !694, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2749, file: !2738, line: 91, baseType: !1359, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2749, file: !2738, line: 92, baseType: !2754, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!45, !2757, !1315}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2737)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2749, file: !2738, line: 93, baseType: !2760, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!704, !2757, !2763, !839, !840}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2749, file: !2738, line: 95, baseType: !2765, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2736}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2749, file: !2738, line: 97, baseType: !2769, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2772, line: 286, size: 1472, elements: !2773)
!2772 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2773 = !{!2774, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2771, file: !2772, line: 287, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!45, !2736}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2771, file: !2772, line: 288, baseType: !2765, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2771, file: !2772, line: 289, baseType: !2775, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2771, file: !2772, line: 290, baseType: !2775, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2771, file: !2772, line: 291, baseType: !2775, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2771, file: !2772, line: 292, baseType: !2775, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2771, file: !2772, line: 293, baseType: !2775, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2771, file: !2772, line: 294, baseType: !2775, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2771, file: !2772, line: 295, baseType: !2775, size: 64, offset: 512)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2771, file: !2772, line: 296, baseType: !2775, size: 64, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2771, file: !2772, line: 297, baseType: !2775, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2771, file: !2772, line: 298, baseType: !2775, size: 64, offset: 704)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2771, file: !2772, line: 299, baseType: !2775, size: 64, offset: 768)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2771, file: !2772, line: 300, baseType: !2775, size: 64, offset: 832)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2771, file: !2772, line: 301, baseType: !2775, size: 64, offset: 896)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2771, file: !2772, line: 302, baseType: !2775, size: 64, offset: 960)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2771, file: !2772, line: 303, baseType: !2775, size: 64, offset: 1024)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2771, file: !2772, line: 304, baseType: !2775, size: 64, offset: 1088)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2771, file: !2772, line: 305, baseType: !2775, size: 64, offset: 1152)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2771, file: !2772, line: 306, baseType: !2775, size: 64, offset: 1216)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2771, file: !2772, line: 307, baseType: !2775, size: 64, offset: 1280)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2771, file: !2772, line: 308, baseType: !2775, size: 64, offset: 1344)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2771, file: !2772, line: 309, baseType: !2775, size: 64, offset: 1408)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2737, file: !2738, line: 714, baseType: !2801, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2804, line: 80, size: 1344, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2875}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2803, file: !2804, line: 81, baseType: !694, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2803, file: !2804, line: 82, baseType: !694, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2803, file: !2804, line: 83, baseType: !1359, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2803, file: !2804, line: 84, baseType: !1359, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2803, file: !2804, line: 85, baseType: !1359, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2803, file: !2804, line: 87, baseType: !2812, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!45, !2736, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2817, line: 96, size: 1152, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2830, !2834, !2838, !2839, !2840, !2841, !2842, !2850, !2851, !2852, !2853, !2854, !2855}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2816, file: !2817, line: 97, baseType: !694, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2816, file: !2817, line: 98, baseType: !2801, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2816, file: !2817, line: 100, baseType: !1259, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2816, file: !2817, line: 101, baseType: !694, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2816, file: !2817, line: 103, baseType: !614, size: 8, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2816, file: !2817, line: 104, baseType: !2825, size: 32, offset: 288)
!2825 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2817, line: 45, baseType: !29, size: 32, elements: !2826)
!2826 = !{!2827, !2828, !2829}
!2827 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2828 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2829 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2816, file: !2817, line: 106, baseType: !2831, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2817, line: 106, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2816, file: !2817, line: 107, baseType: !2835, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2817, line: 107, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2816, file: !2817, line: 109, baseType: !2775, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2816, file: !2817, line: 110, baseType: !2765, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2816, file: !2817, line: 111, baseType: !2775, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2816, file: !2817, line: 112, baseType: !2765, size: 64, offset: 640)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2816, file: !2817, line: 113, baseType: !2843, size: 64, offset: 704)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!45, !2736, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2772, line: 60, baseType: !2847)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2772, line: 58, size: 32, elements: !2848)
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2847, file: !2772, line: 59, baseType: !45, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2816, file: !2817, line: 114, baseType: !2775, size: 64, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2816, file: !2817, line: 115, baseType: !1359, size: 64, offset: 832)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2816, file: !2817, line: 116, baseType: !1359, size: 64, offset: 896)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2816, file: !2817, line: 118, baseType: !2769, size: 64, offset: 960)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2816, file: !2817, line: 119, baseType: !2765, size: 64, offset: 1024)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2816, file: !2817, line: 121, baseType: !2856, size: 64, offset: 1088)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2817, line: 121, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2803, file: !2804, line: 88, baseType: !2754, size: 64, offset: 384)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2803, file: !2804, line: 89, baseType: !2775, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2803, file: !2804, line: 90, baseType: !2765, size: 64, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2803, file: !2804, line: 91, baseType: !2765, size: 64, offset: 576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2803, file: !2804, line: 92, baseType: !2765, size: 64, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2803, file: !2804, line: 94, baseType: !2775, size: 64, offset: 704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2803, file: !2804, line: 95, baseType: !2775, size: 64, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2803, file: !2804, line: 97, baseType: !2843, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2803, file: !2804, line: 98, baseType: !2775, size: 64, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2803, file: !2804, line: 100, baseType: !2775, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2803, file: !2804, line: 102, baseType: !2775, size: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2803, file: !2804, line: 103, baseType: !2765, size: 64, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2803, file: !2804, line: 105, baseType: !2769, size: 64, offset: 1152)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2803, file: !2804, line: 107, baseType: !2872, size: 64, offset: 1216)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2874)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2804, line: 107, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2803, file: !2804, line: 109, baseType: !614, size: 8, offset: 1280)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2737, file: !2738, line: 715, baseType: !2815, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2737, file: !2738, line: 717, baseType: !33, size: 64, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2737, file: !2738, line: 719, baseType: !33, size: 64, offset: 960)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2737, file: !2738, line: 721, baseType: !448, size: 256, offset: 1024)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2737, file: !2738, line: 725, baseType: !2881, size: 448, offset: 1280)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2738, line: 517, size: 448, elements: !2882)
!2882 = !{!2883, !2884, !2885, !2886}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2881, file: !2738, line: 518, baseType: !101, size: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2881, file: !2738, line: 519, baseType: !101, size: 128, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2881, file: !2738, line: 520, baseType: !101, size: 128, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2881, file: !2738, line: 521, baseType: !2887, size: 32, offset: 384)
!2887 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2738, line: 487, baseType: !29, size: 32, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2890 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2891 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2892 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2737, file: !2738, line: 726, baseType: !2894, size: 2496, offset: 1728)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2772, line: 663, size: 2496, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2971, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2992, !2996}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2894, file: !2772, line: 664, baseType: !2846, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2894, file: !2772, line: 665, baseType: !29, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2894, file: !2772, line: 666, baseType: !29, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2894, file: !2772, line: 667, baseType: !614, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2894, file: !2772, line: 668, baseType: !614, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2894, file: !2772, line: 669, baseType: !614, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2894, file: !2772, line: 670, baseType: !614, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2894, file: !2772, line: 671, baseType: !614, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2894, file: !2772, line: 672, baseType: !614, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2894, file: !2772, line: 673, baseType: !614, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2894, file: !2772, line: 674, baseType: !614, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2894, file: !2772, line: 675, baseType: !25, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !2772, line: 676, baseType: !401, size: 32, offset: 96)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2894, file: !2772, line: 678, baseType: !101, size: 128, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2894, file: !2772, line: 679, baseType: !814, size: 256, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2894, file: !2772, line: 680, baseType: !2912, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2914, line: 43, size: 1536, elements: !2915)
!2914 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2913, file: !2914, line: 44, baseType: !694, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2913, file: !2914, line: 45, baseType: !45, size: 32, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2913, file: !2914, line: 46, baseType: !101, size: 128, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2913, file: !2914, line: 47, baseType: !401, size: 32, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2913, file: !2914, line: 48, baseType: !2921, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2772, line: 629, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2913, file: !2914, line: 49, baseType: !2409, size: 320, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2913, file: !2914, line: 50, baseType: !22, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2913, file: !2914, line: 51, baseType: !178, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2913, file: !2914, line: 52, baseType: !178, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2913, file: !2914, line: 53, baseType: !178, size: 64, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2913, file: !2914, line: 54, baseType: !178, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2913, file: !2914, line: 55, baseType: !178, size: 64, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2913, file: !2914, line: 56, baseType: !22, size: 64, offset: 1088)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2913, file: !2914, line: 57, baseType: !22, size: 64, offset: 1152)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2913, file: !2914, line: 58, baseType: !22, size: 64, offset: 1216)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2913, file: !2914, line: 59, baseType: !22, size: 64, offset: 1280)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2913, file: !2914, line: 60, baseType: !22, size: 64, offset: 1344)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2913, file: !2914, line: 61, baseType: !2736, size: 64, offset: 1408)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2913, file: !2914, line: 62, baseType: !614, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2913, file: !2914, line: 63, baseType: !614, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2894, file: !2772, line: 681, baseType: !614, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2894, file: !2772, line: 682, baseType: !614, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2894, file: !2772, line: 683, baseType: !614, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2894, file: !2772, line: 684, baseType: !29, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2894, file: !2772, line: 685, baseType: !29, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2894, file: !2772, line: 690, baseType: !169, size: 512, offset: 640)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2894, file: !2772, line: 691, baseType: !96, size: 64, offset: 1152)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2894, file: !2772, line: 692, baseType: !743, size: 256, offset: 1216)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2894, file: !2772, line: 693, baseType: !512, size: 192, offset: 1472)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2894, file: !2772, line: 694, baseType: !2921, size: 64, offset: 1664)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2894, file: !2772, line: 695, baseType: !40, size: 32, offset: 1728)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2894, file: !2772, line: 696, baseType: !40, size: 32, offset: 1760)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2894, file: !2772, line: 697, baseType: !29, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2894, file: !2772, line: 698, baseType: !29, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2894, file: !2772, line: 699, baseType: !29, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2894, file: !2772, line: 700, baseType: !29, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2894, file: !2772, line: 701, baseType: !29, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2894, file: !2772, line: 702, baseType: !29, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2894, file: !2772, line: 703, baseType: !614, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2894, file: !2772, line: 704, baseType: !29, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2894, file: !2772, line: 705, baseType: !29, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2894, file: !2772, line: 706, baseType: !29, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2894, file: !2772, line: 707, baseType: !29, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2894, file: !2772, line: 708, baseType: !29, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2894, file: !2772, line: 709, baseType: !29, size: 32, offset: 1824)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2894, file: !2772, line: 710, baseType: !2964, size: 32, offset: 1856)
!2964 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2772, line: 620, baseType: !29, size: 32, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970}
!2966 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!2967 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!2968 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!2969 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!2970 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2894, file: !2772, line: 711, baseType: !2972, size: 32, offset: 1888)
!2972 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2772, line: 597, baseType: !45, size: 32, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977, !2978}
!2974 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!2975 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!2976 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!2977 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!2978 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2894, file: !2772, line: 712, baseType: !2972, size: 32, offset: 1920)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2894, file: !2772, line: 713, baseType: !45, size: 32, offset: 1952)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2894, file: !2772, line: 714, baseType: !45, size: 32, offset: 1984)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2894, file: !2772, line: 715, baseType: !96, size: 64, offset: 2048)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2894, file: !2772, line: 716, baseType: !96, size: 64, offset: 2112)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2894, file: !2772, line: 717, baseType: !96, size: 64, offset: 2176)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2894, file: !2772, line: 718, baseType: !96, size: 64, offset: 2240)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2894, file: !2772, line: 720, baseType: !2987, size: 64, offset: 2304)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2772, line: 632, size: 64, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2988, file: !2772, line: 633, baseType: !401, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2988, file: !2772, line: 634, baseType: !29, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2894, file: !2772, line: 721, baseType: !2993, size: 64, offset: 2368)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2736, !626}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2894, file: !2772, line: 722, baseType: !2997, size: 64, offset: 2432)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2772, line: 722, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2737, file: !2738, line: 727, baseType: !3000, size: 64, offset: 4224)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2772, line: 742, size: 1792, elements: !3002)
!3002 = !{!3003, !3004, !3005, !3009, !3010, !3011}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3001, file: !2772, line: 743, baseType: !2771, size: 1472)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3001, file: !2772, line: 744, baseType: !2775, size: 64, offset: 1472)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3001, file: !2772, line: 745, baseType: !3006, size: 64, offset: 1536)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !2736, !614}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3001, file: !2772, line: 746, baseType: !2775, size: 64, offset: 1600)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3001, file: !2772, line: 747, baseType: !2765, size: 64, offset: 1664)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3001, file: !2772, line: 748, baseType: !2765, size: 64, offset: 1728)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2737, file: !2738, line: 736, baseType: !3013, size: 128, offset: 4288)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2738, line: 529, size: 128, elements: !3014)
!3014 = !{!3015, !3019}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3013, file: !2738, line: 531, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3018, line: 13, flags: DIFlagFwdDecl)
!3018 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3013, file: !2738, line: 532, baseType: !3020, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2738, line: 49, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2737, file: !2738, line: 738, baseType: !3023, size: 64, offset: 4416)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3025)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2738, line: 738, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2737, file: !2738, line: 740, baseType: !3027, size: 64, offset: 4480)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2737, file: !2738, line: 741, baseType: !96, size: 64, offset: 4544)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2737, file: !2738, line: 746, baseType: !96, size: 64, offset: 4608)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2737, file: !2738, line: 747, baseType: !3031, size: 64, offset: 4672)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3033)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2738, line: 747, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2737, file: !2738, line: 749, baseType: !3035, size: 64, offset: 4736)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2738, line: 428, size: 128, elements: !3037)
!3037 = !{!3038, !3039, !3040}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3036, file: !2738, line: 433, baseType: !29, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3036, file: !2738, line: 434, baseType: !29, size: 32, offset: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3036, file: !2738, line: 435, baseType: !22, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2737, file: !2738, line: 751, baseType: !101, size: 128, offset: 4800)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2737, file: !2738, line: 762, baseType: !3043, size: 64, offset: 4928)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2738, line: 762, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2737, file: !2738, line: 770, baseType: !3046, offset: 4992)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3047, line: 5, elements: !412)
!3047 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2737, file: !2738, line: 772, baseType: !3049, size: 64, offset: 4992)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3051, line: 18, flags: DIFlagFwdDecl)
!3051 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2737, file: !2738, line: 773, baseType: !3053, size: 64, offset: 5056)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2804, line: 22, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2737, file: !2738, line: 776, baseType: !45, size: 32, offset: 5120)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2737, file: !2738, line: 778, baseType: !1099, size: 32, offset: 5152)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2737, file: !2738, line: 779, baseType: !25, size: 32, offset: 5184)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2737, file: !2738, line: 781, baseType: !401, size: 32, offset: 5216)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2737, file: !2738, line: 782, baseType: !101, size: 128, offset: 5248)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2737, file: !2738, line: 784, baseType: !3061, size: 64, offset: 5376)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3064, line: 52, size: 768, elements: !3065)
!3064 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3074, !3078, !3079, !3080, !3081, !3085, !3089}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3063, file: !3064, line: 53, baseType: !694, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3063, file: !3064, line: 55, baseType: !1359, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3063, file: !3064, line: 56, baseType: !1359, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3063, file: !3064, line: 58, baseType: !2754, size: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3063, file: !3064, line: 59, baseType: !3071, size: 64, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!704, !2757, !2763}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3063, file: !3064, line: 61, baseType: !3075, size: 64, offset: 320)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !3061}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3063, file: !3064, line: 62, baseType: !2765, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3063, file: !3064, line: 64, baseType: !2775, size: 64, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3063, file: !3064, line: 66, baseType: !1972, size: 64, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3063, file: !3064, line: 67, baseType: !3082, size: 64, offset: 576)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!1995, !2757}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3063, file: !3064, line: 69, baseType: !3086, size: 64, offset: 640)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !2757, !839, !840}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3063, file: !3064, line: 71, baseType: !2769, size: 64, offset: 704)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2737, file: !2738, line: 785, baseType: !1359, size: 64, offset: 5440)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2737, file: !2738, line: 787, baseType: !2765, size: 64, offset: 5504)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2737, file: !2738, line: 788, baseType: !3093, size: 64, offset: 5568)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2738, line: 46, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2737, file: !2738, line: 789, baseType: !3096, size: 64, offset: 5632)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2738, line: 48, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2737, file: !2738, line: 791, baseType: !3099, size: 64, offset: 5696)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2738, line: 597, size: 128, elements: !3101)
!3101 = !{!3102, !3112, !3118, !3124, !3125}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3100, file: !2738, line: 598, baseType: !3103, size: 32)
!3103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2738, line: 547, baseType: !29, size: 32, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3105 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3106 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3107 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3108 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3109 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3110 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3111 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3100, file: !2738, line: 599, baseType: !3113, size: 32, offset: 32)
!3113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2738, line: 564, baseType: !29, size: 32, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3116 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3117 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3100, file: !2738, line: 600, baseType: !3119, size: 32, offset: 64)
!3119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2738, line: 577, baseType: !29, size: 32, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3122 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3123 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3100, file: !2738, line: 601, baseType: !614, size: 8, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3100, file: !2738, line: 602, baseType: !614, size: 8, offset: 104)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2737, file: !2738, line: 793, baseType: !3127, size: 32, offset: 5760)
!3127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2738, line: 503, baseType: !29, size: 32, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132}
!3129 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3130 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3131 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3132 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2737, file: !2738, line: 795, baseType: !614, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2737, file: !2738, line: 796, baseType: !614, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2737, file: !2738, line: 797, baseType: !614, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2737, file: !2738, line: 798, baseType: !614, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2737, file: !2738, line: 799, baseType: !614, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2731, file: !2695, line: 307, baseType: !2736, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2731, file: !2695, line: 308, baseType: !1359, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2731, file: !2695, line: 309, baseType: !1359, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2731, file: !2695, line: 310, baseType: !694, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2731, file: !2695, line: 311, baseType: !45, size: 32, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2731, file: !2695, line: 316, baseType: !45, size: 32, offset: 544)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2731, file: !2695, line: 318, baseType: !2308, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2731, file: !2695, line: 319, baseType: !3146, size: 64, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !2695, line: 977, size: 1856, elements: !3148)
!3148 = !{!3149, !3201, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3147, file: !2695, line: 978, baseType: !3150, size: 896)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !2695, line: 873, size: 896, elements: !3151)
!3151 = !{!3152, !3153, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3150, file: !2695, line: 874, baseType: !2730, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3150, file: !2695, line: 875, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2695, line: 912, size: 1792, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3155, file: !2695, line: 917, baseType: !199, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3155, file: !2695, line: 923, baseType: !448, size: 256, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3155, file: !2695, line: 925, baseType: !101, size: 128, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3155, file: !2695, line: 926, baseType: !3161, size: 128, offset: 448)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !2695, line: 901, size: 128, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3161, file: !2695, line: 902, baseType: !268, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3161, file: !2695, line: 903, baseType: !96, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3155, file: !2695, line: 927, baseType: !3161, size: 128, offset: 576)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3155, file: !2695, line: 928, baseType: !101, size: 128, offset: 704)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3155, file: !2695, line: 930, baseType: !45, size: 32, offset: 832)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3155, file: !2695, line: 931, baseType: !45, size: 32, offset: 864)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3155, file: !2695, line: 932, baseType: !45, size: 32, offset: 896)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3155, file: !2695, line: 934, baseType: !45, size: 32, offset: 928)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3155, file: !2695, line: 935, baseType: !45, size: 32, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3155, file: !2695, line: 936, baseType: !45, size: 32, offset: 992)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3155, file: !2695, line: 937, baseType: !45, size: 32, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3155, file: !2695, line: 939, baseType: !35, size: 32, offset: 1056)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3155, file: !2695, line: 940, baseType: !13, size: 64, offset: 1088)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3155, file: !2695, line: 945, baseType: !96, size: 64, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3155, file: !2695, line: 946, baseType: !96, size: 64, offset: 1216)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3155, file: !2695, line: 947, baseType: !96, size: 64, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3155, file: !2695, line: 953, baseType: !3154, size: 64, offset: 1344)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3155, file: !2695, line: 954, baseType: !96, size: 64, offset: 1408)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3155, file: !2695, line: 955, baseType: !96, size: 64, offset: 1472)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3155, file: !2695, line: 956, baseType: !45, size: 32, offset: 1536)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3155, file: !2695, line: 958, baseType: !45, size: 32, offset: 1568)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3155, file: !2695, line: 960, baseType: !428, size: 128, align: 64, offset: 1600)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3155, file: !2695, line: 968, baseType: !3186, size: 64, offset: 1728)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3187, line: 12, baseType: !3188)
!3187 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3187, line: 10, size: 64, elements: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3188, file: !3187, line: 11, baseType: !441, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3150, file: !2695, line: 877, baseType: !101, size: 128, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3150, file: !2695, line: 879, baseType: !101, size: 128, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3150, file: !2695, line: 880, baseType: !101, size: 128, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3150, file: !2695, line: 883, baseType: !29, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3150, file: !2695, line: 885, baseType: !29, size: 32, offset: 544)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3150, file: !2695, line: 886, baseType: !29, size: 32, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3150, file: !2695, line: 888, baseType: !40, size: 32, offset: 608)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3150, file: !2695, line: 889, baseType: !428, size: 128, align: 64, offset: 640)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3150, file: !2695, line: 891, baseType: !33, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3150, file: !2695, line: 898, baseType: !45, size: 32, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3147, file: !2695, line: 979, baseType: !3202, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3147, file: !2695, line: 981, baseType: !101, size: 128, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3147, file: !2695, line: 982, baseType: !45, size: 32, offset: 1088)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3147, file: !2695, line: 984, baseType: !45, size: 32, offset: 1120)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3147, file: !2695, line: 985, baseType: !45, size: 32, offset: 1152)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3147, file: !2695, line: 987, baseType: !199, size: 32, offset: 1184)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3147, file: !2695, line: 988, baseType: !169, size: 512, offset: 1216)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3147, file: !2695, line: 989, baseType: !178, size: 64, offset: 1728)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3147, file: !2695, line: 990, baseType: !29, size: 32, offset: 1792)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2731, file: !2695, line: 320, baseType: !40, size: 32, offset: 704)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2731, file: !2695, line: 321, baseType: !45, size: 32, offset: 736)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2731, file: !2695, line: 322, baseType: !45, size: 32, offset: 768)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2731, file: !2695, line: 325, baseType: !29, size: 32, offset: 800)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2731, file: !2695, line: 331, baseType: !3216, size: 64, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !2730}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2731, file: !2695, line: 332, baseType: !3216, size: 64, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2731, file: !2695, line: 350, baseType: !3221, size: 64, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!45, !2713}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2731, file: !2695, line: 356, baseType: !3225, size: 64, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !2713, !382}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2731, file: !2695, line: 357, baseType: !3225, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2731, file: !2695, line: 385, baseType: !3230, size: 64, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!45, !2713, !45}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2731, file: !2695, line: 386, baseType: !3234, size: 64, offset: 1216)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !2713, !45}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2731, file: !2695, line: 406, baseType: !3234, size: 64, offset: 1280)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2731, file: !2695, line: 407, baseType: !3234, size: 64, offset: 1344)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2731, file: !2695, line: 415, baseType: !3240, size: 64, offset: 1408)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !2713}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2731, file: !2695, line: 427, baseType: !3244, size: 64, offset: 1472)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !2730, !29}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2731, file: !2695, line: 436, baseType: !3248, size: 64, offset: 1536)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!45, !2730}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2731, file: !2695, line: 443, baseType: !3216, size: 64, offset: 1600)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2731, file: !2695, line: 450, baseType: !3221, size: 64, offset: 1664)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2731, file: !2695, line: 455, baseType: !3254, size: 64, offset: 1728)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{null, !3202, !614}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2731, file: !2695, line: 461, baseType: !547, size: 64, offset: 1792)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2731, file: !2695, line: 469, baseType: !3259, size: 64, offset: 1856)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3202, !3202}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2731, file: !2695, line: 476, baseType: !3263, size: 64, offset: 1920)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!33, !2713, !1804, !45, !614}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2731, file: !2695, line: 483, baseType: !1056, size: 64, offset: 1984)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2731, file: !2695, line: 494, baseType: !3268, size: 64, offset: 2048)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!873, !2713, !3271, !22}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !2695, line: 1014, size: 448, elements: !3273)
!3273 = !{!3274, !3275, !3278, !3279, !3280, !3281, !3286}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3272, file: !2695, line: 1015, baseType: !2713, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3272, file: !2695, line: 1016, baseType: !3276, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !2695, line: 641, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3272, file: !2695, line: 1017, baseType: !22, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3272, file: !2695, line: 1018, baseType: !22, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3272, file: !2695, line: 1019, baseType: !96, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !2695, line: 1020, baseType: !3282, size: 64, offset: 320)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !2695, line: 1020, size: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3282, file: !2695, line: 1021, baseType: !33, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3282, file: !2695, line: 1022, baseType: !22, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3272, file: !2695, line: 1024, baseType: !45, size: 32, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2731, file: !2695, line: 506, baseType: !3288, size: 64, offset: 2112)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!45, !104}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2731, file: !2695, line: 520, baseType: !3240, size: 64, offset: 2176)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2731, file: !2695, line: 530, baseType: !3221, size: 64, offset: 2240)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2731, file: !2695, line: 537, baseType: !3294, size: 64, offset: 2304)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!614, !2730, !45}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2731, file: !2695, line: 542, baseType: !3298, size: 64, offset: 2368)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!45, !2713, !96}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2714, file: !2695, line: 715, baseType: !33, size: 64, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2714, file: !2695, line: 717, baseType: !3303, size: 32, offset: 1344)
!3303 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !2695, line: 593, baseType: !45, size: 32, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310}
!3305 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!3306 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!3307 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!3308 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!3309 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!3310 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2714, file: !2695, line: 718, baseType: !29, size: 32, offset: 1376)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2714, file: !2695, line: 719, baseType: !3313, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3314, line: 26, baseType: !3315)
!3314 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3314, line: 24, size: 64, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3315, file: !3314, line: 25, baseType: !3186, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2714, file: !2695, line: 720, baseType: !443, size: 64, offset: 1472)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2714, file: !2695, line: 728, baseType: !96, size: 64, offset: 1536)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2714, file: !2695, line: 729, baseType: !96, size: 64, offset: 1600)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2714, file: !2695, line: 730, baseType: !96, size: 64, offset: 1664)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2714, file: !2695, line: 732, baseType: !3323, size: 1088, offset: 1728)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3324, line: 385, size: 1088, elements: !3325)
!3324 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3325 = !{!3326, !3327, !3328, !3329, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3379, !3380, !3387, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3323, file: !3324, line: 390, baseType: !27, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3323, file: !3324, line: 395, baseType: !27, size: 32, offset: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3323, file: !3324, line: 400, baseType: !97, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !3324, line: 402, baseType: !3330, size: 64, offset: 128)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !3324, line: 402, size: 64, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3330, file: !3324, line: 403, baseType: !97, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3330, file: !3324, line: 404, baseType: !97, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3323, file: !3324, line: 407, baseType: !97, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3323, file: !3324, line: 408, baseType: !97, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3323, file: !3324, line: 410, baseType: !97, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3323, file: !3324, line: 411, baseType: !97, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3323, file: !3324, line: 412, baseType: !97, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3323, file: !3324, line: 413, baseType: !97, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3323, file: !3324, line: 414, baseType: !97, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3323, file: !3324, line: 415, baseType: !97, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3323, file: !3324, line: 416, baseType: !97, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3323, file: !3324, line: 417, baseType: !97, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3323, file: !3324, line: 418, baseType: !97, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3323, file: !3324, line: 419, baseType: !97, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3323, file: !3324, line: 420, baseType: !97, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3323, file: !3324, line: 421, baseType: !97, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3323, file: !3324, line: 422, baseType: !97, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3323, file: !3324, line: 423, baseType: !97, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3323, file: !3324, line: 424, baseType: !97, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3323, file: !3324, line: 435, baseType: !97, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3323, file: !3324, line: 436, baseType: !97, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3323, file: !3324, line: 437, baseType: !97, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3323, file: !3324, line: 439, baseType: !97, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3323, file: !3324, line: 440, baseType: !97, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3323, file: !3324, line: 442, baseType: !97, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3323, file: !3324, line: 443, baseType: !97, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3323, file: !3324, line: 444, baseType: !97, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3323, file: !3324, line: 445, baseType: !97, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3323, file: !3324, line: 446, baseType: !97, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3323, file: !3324, line: 447, baseType: !97, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3323, file: !3324, line: 448, baseType: !97, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3323, file: !3324, line: 449, baseType: !97, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3323, file: !3324, line: 450, baseType: !97, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3323, file: !3324, line: 451, baseType: !97, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3323, file: !3324, line: 452, baseType: !97, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3323, file: !3324, line: 453, baseType: !97, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3323, file: !3324, line: 454, baseType: !97, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3323, file: !3324, line: 455, baseType: !97, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3323, file: !3324, line: 456, baseType: !97, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3323, file: !3324, line: 457, baseType: !97, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3323, file: !3324, line: 458, baseType: !97, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3323, file: !3324, line: 459, baseType: !97, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !3324, line: 461, baseType: !3375, size: 32, offset: 384)
!3375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !3324, line: 461, size: 32, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3375, file: !3324, line: 462, baseType: !27, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3375, file: !3324, line: 463, baseType: !27, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3323, file: !3324, line: 466, baseType: !27, size: 32, offset: 416)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !3324, line: 467, baseType: !3381, size: 64, offset: 448)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !3324, line: 467, size: 64, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3381, file: !3324, line: 468, baseType: !97, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3381, file: !3324, line: 469, baseType: !97, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3381, file: !3324, line: 470, baseType: !97, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3381, file: !3324, line: 471, baseType: !97, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !3324, line: 473, baseType: !3388, size: 64, offset: 512)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !3324, line: 473, size: 64, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3388, file: !3324, line: 474, baseType: !97, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3388, file: !3324, line: 475, baseType: !97, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3388, file: !3324, line: 476, baseType: !97, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3388, file: !3324, line: 477, baseType: !97, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3323, file: !3324, line: 479, baseType: !97, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3323, file: !3324, line: 485, baseType: !97, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3323, file: !3324, line: 490, baseType: !27, size: 32, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3323, file: !3324, line: 492, baseType: !627, size: 32, offset: 736)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3323, file: !3324, line: 501, baseType: !97, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3323, file: !3324, line: 506, baseType: !27, size: 32, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3323, file: !3324, line: 507, baseType: !66, size: 16, offset: 864)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3323, file: !3324, line: 508, baseType: !66, size: 16, offset: 880)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3323, file: !3324, line: 509, baseType: !27, size: 32, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3323, file: !3324, line: 510, baseType: !27, size: 32, offset: 928)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3323, file: !3324, line: 518, baseType: !97, size: 64, offset: 960)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3323, file: !3324, line: 520, baseType: !97, size: 64, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2714, file: !2695, line: 733, baseType: !65, size: 16, offset: 2816)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2714, file: !2695, line: 734, baseType: !65, size: 16, offset: 2832)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2714, file: !2695, line: 735, baseType: !65, size: 16, offset: 2848)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2714, file: !2695, line: 736, baseType: !3410, size: 1536, offset: 2880)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !2695, line: 155, size: 1536, elements: !3411)
!3411 = !{!3412, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3496, !3497, !3498, !3499}
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !2695, line: 157, baseType: !3413, size: 768)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3410, file: !2695, line: 157, size: 768, elements: !3414)
!3414 = !{!3415, !3434, !3438, !3442, !3447, !3469}
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !2695, line: 158, baseType: !3416, size: 768)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !2695, line: 158, size: 768, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3433}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3416, file: !2695, line: 159, baseType: !96, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3416, file: !2695, line: 160, baseType: !96, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3416, file: !2695, line: 161, baseType: !22, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3416, file: !2695, line: 162, baseType: !22, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3416, file: !2695, line: 163, baseType: !45, size: 32, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3416, file: !2695, line: 164, baseType: !45, size: 32, offset: 288)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3416, file: !2695, line: 165, baseType: !45, size: 32, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3416, file: !2695, line: 166, baseType: !45, size: 32, offset: 352)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3416, file: !2695, line: 168, baseType: !3427, size: 192, offset: 384)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !2695, line: 134, size: 192, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3427, file: !2695, line: 135, baseType: !96, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3427, file: !2695, line: 136, baseType: !29, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3427, file: !2695, line: 137, baseType: !45, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3427, file: !2695, line: 138, baseType: !45, size: 32, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3416, file: !2695, line: 169, baseType: !3427, size: 192, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !2695, line: 171, baseType: !3435, size: 512)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !2695, line: 171, size: 512, elements: !3436)
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3435, file: !2695, line: 172, baseType: !169, size: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !2695, line: 174, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !2695, line: 174, size: 128, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3439, file: !2695, line: 176, baseType: !101, size: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !2695, line: 178, baseType: !3443, size: 128)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !2695, line: 178, size: 128, elements: !3444)
!3444 = !{!3445, !3446}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3443, file: !2695, line: 179, baseType: !96, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3443, file: !2695, line: 180, baseType: !96, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !2695, line: 183, baseType: !3448, size: 320)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !2695, line: 183, size: 320, elements: !3449)
!3449 = !{!3450, !3458}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3448, file: !2695, line: 189, baseType: !3451, size: 192)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3452, line: 14, size: 192, elements: !3453)
!3452 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3453 = !{!3454, !3455, !3456, !3457}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3451, file: !3452, line: 15, baseType: !22, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3451, file: !3452, line: 16, baseType: !22, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3451, file: !3452, line: 17, baseType: !216, size: 8, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3451, file: !3452, line: 18, baseType: !216, size: 8, offset: 136)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3448, file: !2695, line: 190, baseType: !3459, size: 128, offset: 192)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3460, line: 21, size: 128, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3461 = !{!3462, !3467}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3459, file: !3460, line: 22, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3460, line: 17, size: 64, elements: !3464)
!3464 = !{!3465}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3463, file: !3460, line: 18, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3459, file: !3460, line: 23, baseType: !3468, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !2695, line: 193, baseType: !3470, size: 192)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !2695, line: 193, size: 192, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3470, file: !2695, line: 194, baseType: !216, size: 8)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3470, file: !2695, line: 195, baseType: !216, size: 8, offset: 8)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3470, file: !2695, line: 196, baseType: !65, size: 16, offset: 16)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3470, file: !2695, line: 197, baseType: !96, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3470, file: !2695, line: 198, baseType: !96, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3410, file: !2695, line: 205, baseType: !13, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3410, file: !2695, line: 211, baseType: !33, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3410, file: !2695, line: 214, baseType: !22, size: 64, offset: 896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3410, file: !2695, line: 223, baseType: !45, size: 32, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3410, file: !2695, line: 229, baseType: !3313, size: 64, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3410, file: !2695, line: 234, baseType: !96, size: 64, offset: 1088)
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3410, file: !2695, line: 236, baseType: !3484, size: 128, offset: 1152)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3410, file: !2695, line: 236, size: 128, elements: !3485)
!3485 = !{!3486, !3491}
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3484, file: !2695, line: 237, baseType: !3487, size: 128)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3484, file: !2695, line: 237, size: 128, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3487, file: !2695, line: 241, baseType: !96, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3487, file: !2695, line: 249, baseType: !3313, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, scope: !3484, file: !2695, line: 251, baseType: !3492, size: 128)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3484, file: !2695, line: 251, size: 128, elements: !3493)
!3493 = !{!3494, !3495}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3492, file: !2695, line: 252, baseType: !96, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3492, file: !2695, line: 253, baseType: !96, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3410, file: !2695, line: 261, baseType: !96, size: 64, offset: 1280)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3410, file: !2695, line: 262, baseType: !96, size: 64, offset: 1344)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3410, file: !2695, line: 268, baseType: !96, size: 64, offset: 1408)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3410, file: !2695, line: 269, baseType: !96, size: 64, offset: 1472)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2714, file: !2695, line: 738, baseType: !3154, size: 64, offset: 4416)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2714, file: !2695, line: 744, baseType: !3202, size: 64, offset: 4480)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2714, file: !2695, line: 745, baseType: !441, size: 64, offset: 4544)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2714, file: !2695, line: 751, baseType: !443, size: 64, offset: 4608)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2714, file: !2695, line: 752, baseType: !443, size: 64, offset: 4672)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2714, file: !2695, line: 757, baseType: !448, size: 256, offset: 4736)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2714, file: !2695, line: 758, baseType: !101, size: 128, offset: 4992)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2714, file: !2695, line: 759, baseType: !2713, size: 64, offset: 5120)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2714, file: !2695, line: 761, baseType: !45, size: 32, offset: 5184)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2714, file: !2695, line: 762, baseType: !45, size: 32, offset: 5216)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2714, file: !2695, line: 764, baseType: !101, size: 128, offset: 5248)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2714, file: !2695, line: 765, baseType: !13, size: 64, offset: 5376)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2714, file: !2695, line: 768, baseType: !448, size: 256, offset: 5440)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2714, file: !2695, line: 769, baseType: !40, size: 32, offset: 5696)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2714, file: !2695, line: 771, baseType: !3276, size: 64, offset: 5760)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2714, file: !2695, line: 772, baseType: !101, size: 128, offset: 5824)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2714, file: !2695, line: 773, baseType: !22, size: 64, offset: 5952)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2714, file: !2695, line: 774, baseType: !45, size: 32, offset: 6016)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2714, file: !2695, line: 777, baseType: !512, size: 192, offset: 6080)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2714, file: !2695, line: 778, baseType: !3520, size: 64, offset: 6272)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !421, line: 1083, size: 384, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3521, file: !421, line: 1084, baseType: !467, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3521, file: !421, line: 1085, baseType: !45, size: 32, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3521, file: !421, line: 1086, baseType: !45, size: 32, offset: 96)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3521, file: !421, line: 1087, baseType: !3520, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3521, file: !421, line: 1088, baseType: !419, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3521, file: !421, line: 1089, baseType: !428, size: 128, align: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2714, file: !2695, line: 781, baseType: !29, size: 32, offset: 6336)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2714, file: !2695, line: 782, baseType: !29, size: 32, offset: 6368)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2714, file: !2695, line: 783, baseType: !29, size: 32, offset: 6400)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2714, file: !2695, line: 784, baseType: !29, size: 32, offset: 6432)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2714, file: !2695, line: 785, baseType: !22, size: 64, offset: 6464)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2714, file: !2695, line: 786, baseType: !3535, size: 256, offset: 6528)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3536, line: 17, size: 256, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3537 = !{!3538, !3539, !3544}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3535, file: !3536, line: 18, baseType: !50, size: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3535, file: !3536, line: 19, baseType: !3540, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3535, file: !3536, line: 20, baseType: !3545, size: 64, offset: 192)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3546, line: 16, size: 64, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3545, file: !3546, line: 17, baseType: !13, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2714, file: !2695, line: 787, baseType: !428, size: 128, align: 64, offset: 6784)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2714, file: !2695, line: 788, baseType: !29, size: 32, offset: 6912)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2714, file: !2695, line: 789, baseType: !3545, size: 64, offset: 6976)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2714, file: !2695, line: 791, baseType: !40, size: 32, offset: 7040)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2714, file: !2695, line: 794, baseType: !3554, size: 192, offset: 7104)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !2695, line: 579, size: 192, elements: !3555)
!3555 = !{!3556, !3557, !3558}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3554, file: !2695, line: 580, baseType: !101, size: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3554, file: !2695, line: 581, baseType: !199, size: 32, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3554, file: !2695, line: 582, baseType: !29, size: 32, offset: 160)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2714, file: !2695, line: 796, baseType: !3560, size: 64, offset: 7296)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !2695, line: 585, size: 128, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3561, file: !2695, line: 586, baseType: !22, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3561, file: !2695, line: 587, baseType: !22, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2714, file: !2695, line: 797, baseType: !22, size: 64, offset: 7360)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2714, file: !2695, line: 800, baseType: !2713, size: 64, offset: 7424)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2714, file: !2695, line: 802, baseType: !3240, size: 64, offset: 7488)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2714, file: !2695, line: 803, baseType: !428, size: 128, align: 64, offset: 7552)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2714, file: !2695, line: 805, baseType: !525, size: 64, offset: 7680)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2714, file: !2695, line: 806, baseType: !96, size: 64, offset: 7744)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2714, file: !2695, line: 808, baseType: !443, size: 64, offset: 7808)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2714, file: !2695, line: 810, baseType: !3573, size: 64, offset: 7872)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!96}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2714, file: !2695, line: 811, baseType: !3577, size: 64, offset: 7936)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !2695, line: 605, baseType: !3578)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !2713, !3581, !3686}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !2695, line: 1148, size: 2048, align: 512, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3593, !3594, !3595, !3600, !3601, !3608, !3629, !3651, !3661, !3679, !3680, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3582, file: !2695, line: 1153, baseType: !96, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3582, file: !2695, line: 1154, baseType: !96, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3582, file: !2695, line: 1155, baseType: !96, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3582, file: !2695, line: 1161, baseType: !96, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3582, file: !2695, line: 1165, baseType: !3589, size: 64, offset: 256)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !2695, line: 1162, size: 64, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3589, file: !2695, line: 1163, baseType: !25, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3589, file: !2695, line: 1164, baseType: !25, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3582, file: !2695, line: 1166, baseType: !96, size: 64, offset: 320)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3582, file: !2695, line: 1167, baseType: !96, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3582, file: !2695, line: 1171, baseType: !3596, size: 64, offset: 448)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !2695, line: 1168, size: 64, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3596, file: !2695, line: 1169, baseType: !25, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3596, file: !2695, line: 1170, baseType: !25, size: 32, offset: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3582, file: !2695, line: 1177, baseType: !96, size: 64, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3582, file: !2695, line: 1178, baseType: !3602, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !2695, line: 67, size: 64, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3603, file: !2695, line: 68, baseType: !97, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3603, file: !2695, line: 69, baseType: !3607, offset: 64)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !880)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3582, file: !2695, line: 1179, baseType: !3609, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !2695, line: 93, size: 256, elements: !3611)
!3611 = !{!3612, !3628}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3610, file: !2695, line: 94, baseType: !3613, size: 224)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !2695, line: 83, size: 224, elements: !3614)
!3614 = !{!3615, !3621, !3626, !3627}
!3615 = !DIDerivedType(tag: DW_TAG_member, scope: !3613, file: !2695, line: 84, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3613, file: !2695, line: 84, size: 64, elements: !3617)
!3617 = !{!3618, !3620}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3616, file: !2695, line: 85, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3616, file: !2695, line: 86, baseType: !22, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3613, file: !2695, line: 88, baseType: !3622, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !2695, line: 80, baseType: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!22, !33, !1995, !22, !22}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3613, file: !2695, line: 89, baseType: !33, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3613, file: !2695, line: 90, baseType: !25, size: 32, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3610, file: !2695, line: 95, baseType: !25, size: 32, offset: 224)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3582, file: !2695, line: 1180, baseType: !3630, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !2695, line: 123, size: 128, elements: !3632)
!3632 = !{!3633, !3634, !3635}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3631, file: !2695, line: 124, baseType: !97, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3631, file: !2695, line: 125, baseType: !97, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3631, file: !2695, line: 126, baseType: !3636, offset: 128)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3637, elements: !880)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3324, line: 1415, size: 192, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3637, file: !3324, line: 1416, baseType: !97, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3637, file: !3324, line: 1417, baseType: !97, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3637, file: !3324, line: 1418, baseType: !97, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3637, file: !3324, line: 1419, baseType: !97, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3637, file: !3324, line: 1420, baseType: !97, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3637, file: !3324, line: 1421, baseType: !97, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3637, file: !3324, line: 1422, baseType: !97, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3637, file: !3324, line: 1423, baseType: !97, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3637, file: !3324, line: 1424, baseType: !97, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3637, file: !3324, line: 1425, baseType: !97, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3637, file: !3324, line: 1426, baseType: !97, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3637, file: !3324, line: 1427, baseType: !97, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3582, file: !2695, line: 1181, baseType: !3652, size: 64, offset: 768)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3324, line: 1430, size: 64, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3652, file: !3324, line: 1431, baseType: !97, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !3324, line: 1433, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3652, file: !3324, line: 1433, size: 64, elements: !3657)
!3657 = !{!3658, !3659, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3656, file: !3324, line: 1434, baseType: !27, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3656, file: !3324, line: 1435, baseType: !66, size: 16, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3656, file: !3324, line: 1436, baseType: !66, size: 16, offset: 48)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3582, file: !2695, line: 1182, baseType: !3662, size: 64, offset: 832)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3324, line: 1267, size: 64, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3662, file: !3324, line: 1268, baseType: !97, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !3324, line: 1269, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3662, file: !3324, line: 1269, size: 64, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3666, file: !3324, line: 1270, baseType: !97, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3666, file: !3324, line: 1271, baseType: !97, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3666, file: !3324, line: 1272, baseType: !97, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3666, file: !3324, line: 1273, baseType: !97, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3666, file: !3324, line: 1274, baseType: !97, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3666, file: !3324, line: 1275, baseType: !97, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3666, file: !3324, line: 1276, baseType: !97, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3666, file: !3324, line: 1277, baseType: !97, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3666, file: !3324, line: 1278, baseType: !97, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3666, file: !3324, line: 1279, baseType: !97, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3666, file: !3324, line: 1280, baseType: !97, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3582, file: !2695, line: 1183, baseType: !96, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3582, file: !2695, line: 1185, baseType: !3681, size: 128, offset: 960)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3682, line: 7, size: 128, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3681, file: !3682, line: 8, baseType: !97, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3681, file: !3682, line: 9, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3688, line: 103, size: 1344, elements: !3689)
!3688 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3718, !3719, !3720}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3687, file: !3688, line: 109, baseType: !22, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3687, file: !3688, line: 110, baseType: !22, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3687, file: !3688, line: 111, baseType: !22, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3687, file: !3688, line: 112, baseType: !22, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3687, file: !3688, line: 113, baseType: !22, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3687, file: !3688, line: 114, baseType: !22, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3687, file: !3688, line: 117, baseType: !22, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3687, file: !3688, line: 118, baseType: !22, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3687, file: !3688, line: 119, baseType: !22, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3687, file: !3688, line: 120, baseType: !22, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3687, file: !3688, line: 121, baseType: !22, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3687, file: !3688, line: 122, baseType: !22, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3687, file: !3688, line: 123, baseType: !22, size: 64, offset: 768)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3687, file: !3688, line: 124, baseType: !22, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3687, file: !3688, line: 125, baseType: !22, size: 64, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3687, file: !3688, line: 139, baseType: !22, size: 64, offset: 960)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3687, file: !3688, line: 142, baseType: !22, size: 64, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_member, scope: !3687, file: !3688, line: 144, baseType: !3708, size: 64, offset: 1088)
!3708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3687, file: !3688, line: 144, size: 64, elements: !3709)
!3709 = !{!3710, !3711, !3712}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3708, file: !3688, line: 146, baseType: !65, size: 16)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3708, file: !3688, line: 148, baseType: !96, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3708, file: !3688, line: 150, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3688, line: 59, size: 64, elements: !3714)
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3713, file: !3688, line: 61, baseType: !96, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3713, file: !3688, line: 63, baseType: !96, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3713, file: !3688, line: 65, baseType: !96, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3687, file: !3688, line: 153, baseType: !22, size: 64, offset: 1152)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3687, file: !3688, line: 154, baseType: !22, size: 64, offset: 1216)
!3720 = !DIDerivedType(tag: DW_TAG_member, scope: !3687, file: !3688, line: 156, baseType: !3721, size: 64, offset: 1280)
!3721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3687, file: !3688, line: 156, size: 64, elements: !3722)
!3722 = !{!3723, !3724, !3725}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3721, file: !3688, line: 158, baseType: !65, size: 16)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3721, file: !3688, line: 160, baseType: !96, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3721, file: !3688, line: 162, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3688, line: 69, size: 64, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3726, file: !3688, line: 71, baseType: !96, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3726, file: !3688, line: 73, baseType: !96, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3726, file: !3688, line: 75, baseType: !96, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3726, file: !3688, line: 77, baseType: !96, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3726, file: !3688, line: 80, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3726, file: !3688, line: 83, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3726, file: !3688, line: 86, baseType: !96, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3726, file: !3688, line: 88, baseType: !96, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3726, file: !3688, line: 93, baseType: !96, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3726, file: !3688, line: 100, baseType: !96, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3582, file: !2695, line: 1186, baseType: !3681, size: 128, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3582, file: !2695, line: 1187, baseType: !96, size: 64, offset: 1216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3582, file: !2695, line: 1189, baseType: !96, size: 64, offset: 1280)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3582, file: !2695, line: 1190, baseType: !96, size: 64, offset: 1344)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3582, file: !2695, line: 1191, baseType: !96, size: 64, offset: 1408)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3582, file: !2695, line: 1192, baseType: !96, size: 64, offset: 1472)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3582, file: !2695, line: 1193, baseType: !96, size: 64, offset: 1536)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3582, file: !2695, line: 1194, baseType: !96, size: 64, offset: 1600)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3582, file: !2695, line: 1195, baseType: !96, size: 64, offset: 1664)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2714, file: !2695, line: 812, baseType: !33, size: 64, offset: 8000)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2714, file: !2695, line: 820, baseType: !2489, size: 64, offset: 8064)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2714, file: !2695, line: 821, baseType: !2693, size: 64, offset: 8128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2714, file: !2695, line: 828, baseType: !3751, size: 64, offset: 8192)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !2695, line: 1046, size: 1664, elements: !3753)
!3753 = !{!3754, !4010}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3752, file: !2695, line: 1047, baseType: !3755, size: 1600)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3756, line: 152, size: 1600, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3757 = !{!3758, !3868, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4009}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3755, file: !3756, line: 154, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3756, line: 389, size: 7872, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3781, !3782, !3786, !3787, !3788, !3789, !3790, !3795, !3811, !3812, !3814, !3815, !3816, !3838, !3839, !3840, !3841, !3847, !3848, !3849, !3850, !3851, !3855, !3858, !3859, !3866}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3760, file: !3756, line: 391, baseType: !3755, size: 1600)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3760, file: !3756, line: 393, baseType: !22, size: 64, offset: 1600)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3760, file: !3756, line: 401, baseType: !45, size: 32, offset: 1664)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3760, file: !3756, line: 404, baseType: !45, size: 32, offset: 1696)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3760, file: !3756, line: 417, baseType: !45, size: 32, offset: 1728)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3760, file: !3756, line: 418, baseType: !45, size: 32, offset: 1760)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3760, file: !3756, line: 419, baseType: !45, size: 32, offset: 1792)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3760, file: !3756, line: 432, baseType: !45, size: 32, offset: 1824)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3760, file: !3756, line: 433, baseType: !45, size: 32, offset: 1856)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3760, file: !3756, line: 434, baseType: !45, size: 32, offset: 1888)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3760, file: !3756, line: 436, baseType: !45, size: 32, offset: 1920)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3760, file: !3756, line: 439, baseType: !29, size: 32, offset: 1952)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3760, file: !3756, line: 441, baseType: !2014, size: 64, offset: 1984)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3760, file: !3756, line: 442, baseType: !3776, size: 448, offset: 2048)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3756, line: 138, size: 448, elements: !3777)
!3777 = !{!3778, !3779, !3780}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3776, file: !3756, line: 140, baseType: !2014, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3776, file: !3756, line: 141, baseType: !22, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3776, file: !3756, line: 142, baseType: !2409, size: 320, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3760, file: !3756, line: 443, baseType: !3776, size: 448, offset: 2496)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3760, file: !3756, line: 446, baseType: !3783, offset: 2944)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3776, elements: !3784)
!3784 = !{!3785}
!3785 = !DISubrange(count: 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3760, file: !3756, line: 455, baseType: !65, size: 16, offset: 2944)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3760, file: !3756, line: 456, baseType: !65, size: 16, offset: 2960)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3760, file: !3756, line: 457, baseType: !65, size: 16, offset: 2976)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3760, file: !3756, line: 458, baseType: !65, size: 16, offset: 2992)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3760, file: !3756, line: 461, baseType: !3791, size: 896, offset: 3008)
!3791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3792, size: 896, elements: !3793)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3793 = !{!3794}
!3794 = !DISubrange(count: 14)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3760, file: !3756, line: 463, baseType: !3796, size: 64, offset: 3904)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3756, line: 537, size: 41664, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3797, file: !3756, line: 538, baseType: !2034, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3797, file: !3756, line: 541, baseType: !29, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3797, file: !3756, line: 544, baseType: !45, size: 32, offset: 96)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3797, file: !3756, line: 547, baseType: !101, size: 128, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3797, file: !3756, line: 548, baseType: !428, size: 128, align: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3797, file: !3756, line: 555, baseType: !3760, size: 7872, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3797, file: !3756, line: 558, baseType: !3759, size: 64, offset: 8256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3797, file: !3756, line: 561, baseType: !40, size: 32, offset: 8320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3797, file: !3756, line: 564, baseType: !29, size: 32, offset: 8352)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3797, file: !3756, line: 567, baseType: !2655, size: 32768, offset: 8384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3756, line: 570, baseType: !3810, size: 512, offset: 41152)
!3810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1322)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3760, file: !3756, line: 469, baseType: !101, size: 128, offset: 3968)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3760, file: !3756, line: 478, baseType: !3813, size: 1792, offset: 4096)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1792, elements: !3793)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3760, file: !3756, line: 487, baseType: !3759, size: 64, offset: 5888)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3760, file: !3756, line: 488, baseType: !3759, size: 64, offset: 5952)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3760, file: !3756, line: 491, baseType: !3817, size: 64, offset: 6016)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3756, line: 327, size: 896, elements: !3819)
!3819 = !{!3820, !3823, !3833, !3834, !3835, !3836, !3837}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3818, file: !3756, line: 332, baseType: !3821)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3822, line: 64, elements: !412)
!3822 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3818, file: !3756, line: 333, baseType: !3824, size: 192)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3756, line: 299, size: 192, elements: !3825)
!3825 = !{!3826}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3824, file: !3756, line: 300, baseType: !3827, size: 192)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3828, line: 17, size: 192, elements: !3829)
!3828 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3827, file: !3828, line: 18, baseType: !96, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3827, file: !3828, line: 19, baseType: !96, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3827, file: !3828, line: 20, baseType: !98, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3818, file: !3756, line: 339, baseType: !3824, size: 192, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3818, file: !3756, line: 347, baseType: !3824, size: 192, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3818, file: !3756, line: 353, baseType: !3824, size: 192, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3818, file: !3756, line: 366, baseType: !3759, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3818, file: !3756, line: 367, baseType: !3759, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3760, file: !3756, line: 492, baseType: !101, size: 128, offset: 6080)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3760, file: !3756, line: 495, baseType: !3824, size: 192, offset: 6208)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3760, file: !3756, line: 496, baseType: !3824, size: 192, offset: 6400)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3760, file: !3756, line: 497, baseType: !3842, size: 192, offset: 6592)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !15, line: 324, size: 192, elements: !3843)
!3843 = !{!3844, !3845, !3846}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3842, file: !15, line: 326, baseType: !96, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3842, file: !15, line: 327, baseType: !96, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3842, file: !15, line: 328, baseType: !199, size: 32, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3760, file: !3756, line: 503, baseType: !101, size: 128, offset: 6784)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3760, file: !3756, line: 504, baseType: !448, size: 256, offset: 6912)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3760, file: !3756, line: 507, baseType: !512, size: 192, offset: 7168)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3760, file: !3756, line: 510, baseType: !743, size: 256, offset: 7360)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3760, file: !3756, line: 513, baseType: !3852, size: 64, offset: 7616)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3854, line: 214, elements: !412)
!3854 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3760, file: !3756, line: 516, baseType: !3856, offset: 7680)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3857, line: 76, elements: !412)
!3857 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3760, file: !3756, line: 519, baseType: !40, size: 32, offset: 7680)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3760, file: !3756, line: 522, baseType: !3860, size: 128, offset: 7712)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3756, line: 370, size: 128, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3860, file: !3756, line: 372, baseType: !614, size: 8)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3860, file: !3756, line: 375, baseType: !45, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3860, file: !3756, line: 380, baseType: !45, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3860, file: !3756, line: 386, baseType: !45, size: 32, offset: 96)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3760, file: !3756, line: 529, baseType: !3867, offset: 7872)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3759, elements: !880)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3755, file: !3756, line: 157, baseType: !3869, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3756, line: 669, size: 1984, elements: !3871)
!3871 = !{!3872, !3876, !3880, !3884, !3885, !3886, !3887, !3891, !3895, !3896, !3902, !3906, !3907, !3908, !3937, !3941, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3992, !3993}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3870, file: !3756, line: 670, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3792, !3792}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3870, file: !3756, line: 671, baseType: !3877, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!45, !3792}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3870, file: !3756, line: 672, baseType: !3881, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3792}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3870, file: !3756, line: 673, baseType: !3881, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3870, file: !3756, line: 674, baseType: !3881, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3870, file: !3756, line: 675, baseType: !3881, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3870, file: !3756, line: 676, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3792, !45}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3870, file: !3756, line: 677, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!45, !2059, !3792}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3870, file: !3756, line: 679, baseType: !3892, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3870, file: !3756, line: 682, baseType: !3897, size: 64, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!45, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3756, line: 30, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3870, file: !3756, line: 683, baseType: !3903, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !3900}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3870, file: !3756, line: 684, baseType: !3903, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3870, file: !3756, line: 685, baseType: !2594, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3870, file: !3756, line: 686, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!45, !13, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3756, line: 209, size: 4736, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3913, file: !3756, line: 215, baseType: !3791, size: 896)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3913, file: !3756, line: 218, baseType: !35, size: 32, offset: 896)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3913, file: !3756, line: 226, baseType: !3912, size: 64, offset: 960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3913, file: !3756, line: 229, baseType: !3759, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3913, file: !3756, line: 232, baseType: !45, size: 32, offset: 1088)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3913, file: !3756, line: 241, baseType: !101, size: 128, offset: 1152)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3913, file: !3756, line: 242, baseType: !101, size: 128, offset: 1280)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3913, file: !3756, line: 243, baseType: !101, size: 128, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3913, file: !3756, line: 246, baseType: !101, size: 128, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3913, file: !3756, line: 255, baseType: !3813, size: 1792, offset: 1664)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3913, file: !3756, line: 258, baseType: !101, size: 128, offset: 3456)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3913, file: !3756, line: 259, baseType: !101, size: 128, offset: 3584)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3913, file: !3756, line: 265, baseType: !503, size: 128, offset: 3712)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3913, file: !3756, line: 271, baseType: !101, size: 128, offset: 3840)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3913, file: !3756, line: 277, baseType: !101, size: 128, offset: 3968)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3913, file: !3756, line: 278, baseType: !101, size: 128, offset: 4096)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3913, file: !3756, line: 279, baseType: !101, size: 128, offset: 4224)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3913, file: !3756, line: 288, baseType: !3759, size: 64, offset: 4352)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3913, file: !3756, line: 289, baseType: !3759, size: 64, offset: 4416)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3913, file: !3756, line: 290, baseType: !3912, size: 64, offset: 4480)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3913, file: !3756, line: 293, baseType: !614, size: 8, offset: 4544)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3913, file: !3756, line: 296, baseType: !428, size: 128, align: 64, offset: 4608)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3870, file: !3756, line: 688, baseType: !3938, size: 64, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !13, !3912}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3870, file: !3756, line: 689, baseType: !3942, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3870, file: !3756, line: 690, baseType: !3942, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3870, file: !3756, line: 691, baseType: !3942, size: 64, offset: 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3870, file: !3756, line: 692, baseType: !3881, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3870, file: !3756, line: 694, baseType: !614, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3870, file: !3756, line: 707, baseType: !614, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3870, file: !3756, line: 719, baseType: !614, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3870, file: !3756, line: 722, baseType: !45, size: 32, offset: 1248)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3870, file: !3756, line: 723, baseType: !694, size: 64, offset: 1280)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3870, file: !3756, line: 726, baseType: !694, size: 64, offset: 1344)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3870, file: !3756, line: 729, baseType: !3796, size: 64, offset: 1408)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3870, file: !3756, line: 732, baseType: !530, size: 192, offset: 1472)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3870, file: !3756, line: 738, baseType: !101, size: 128, offset: 1664)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3870, file: !3756, line: 744, baseType: !3956, size: 64, offset: 1792)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3756, line: 580, size: 1728, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3968, !3969, !3970, !3974, !3978, !3979, !3980, !3981, !3982, !3986, !3990, !3991}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3957, file: !3756, line: 586, baseType: !3810, size: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3957, file: !3756, line: 587, baseType: !22, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3957, file: !3756, line: 593, baseType: !795, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3957, file: !3756, line: 596, baseType: !29, size: 32, offset: 640)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3957, file: !3756, line: 604, baseType: !29, size: 32, offset: 672)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3957, file: !3756, line: 610, baseType: !3869, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3957, file: !3756, line: 611, baseType: !101, size: 128, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3957, file: !3756, line: 612, baseType: !3967, size: 64, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3957, file: !3756, line: 614, baseType: !2050, size: 64, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3957, file: !3756, line: 615, baseType: !2108, size: 64, offset: 1024)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3957, file: !3756, line: 621, baseType: !3971, size: 64, offset: 1088)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!96, !3792, !3956}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3957, file: !3756, line: 625, baseType: !3975, size: 64, offset: 1152)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!112, !3792, !3956}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3957, file: !3756, line: 628, baseType: !2089, size: 64, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3957, file: !3756, line: 631, baseType: !2077, size: 64, offset: 1280)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3957, file: !3756, line: 632, baseType: !2085, size: 64, offset: 1344)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3957, file: !3756, line: 633, baseType: !2081, size: 64, offset: 1408)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3957, file: !3756, line: 640, baseType: !3983, size: 64, offset: 1472)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!45, !3792, !3956, !96}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3957, file: !3756, line: 645, baseType: !3987, size: 64, offset: 1536)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!45, !3792, !3956, !112}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3957, file: !3756, line: 654, baseType: !2116, size: 64, offset: 1600)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3957, file: !3756, line: 657, baseType: !2123, size: 64, offset: 1664)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3870, file: !3756, line: 745, baseType: !3956, size: 64, offset: 1856)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3870, file: !3756, line: 754, baseType: !29, size: 32, offset: 1920)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3755, file: !3756, line: 160, baseType: !1468, size: 128, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3755, file: !3756, line: 163, baseType: !101, size: 128, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3755, file: !3756, line: 164, baseType: !101, size: 128, offset: 384)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3755, file: !3756, line: 167, baseType: !101, size: 128, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3755, file: !3756, line: 173, baseType: !45, size: 32, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3755, file: !3756, line: 175, baseType: !29, size: 32, offset: 672)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3755, file: !3756, line: 183, baseType: !96, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3755, file: !3756, line: 189, baseType: !40, size: 32, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3755, file: !3756, line: 192, baseType: !743, size: 256, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3755, file: !3756, line: 193, baseType: !4004, size: 448, offset: 1088)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !744, line: 120, size: 448, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4004, file: !744, line: 121, baseType: !743, size: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4004, file: !744, line: 122, baseType: !428, size: 128, align: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4004, file: !744, line: 125, baseType: !2471, size: 64, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3755, file: !3756, line: 199, baseType: !3792, size: 64, offset: 1536)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3752, file: !2695, line: 1048, baseType: !4011, size: 64, offset: 1600)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !2695, line: 1039, size: 256, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4012, file: !2695, line: 1040, baseType: !96, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4012, file: !2695, line: 1041, baseType: !96, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4012, file: !2695, line: 1042, baseType: !96, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4012, file: !2695, line: 1043, baseType: !45, size: 32, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2714, file: !2695, line: 832, baseType: !33, size: 64, offset: 8256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2714, file: !2695, line: 834, baseType: !101, size: 128, offset: 8320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2714, file: !2695, line: 842, baseType: !27, size: 32, offset: 8448)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1260, file: !1261, line: 524, baseType: !29, size: 32, offset: 8320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1260, file: !1261, line: 525, baseType: !4023, size: 64, offset: 8384)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4026, line: 28, size: 192, elements: !4027)
!4026 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4027 = !{!4028, !4029, !4030}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4025, file: !4026, line: 29, baseType: !694, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4025, file: !4026, line: 30, baseType: !694, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4025, file: !4026, line: 31, baseType: !22, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1260, file: !1261, line: 526, baseType: !29, size: 32, offset: 8448)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1260, file: !1261, line: 533, baseType: !33, size: 64, offset: 8512)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1260, file: !1261, line: 534, baseType: !29, size: 32, offset: 8576)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1260, file: !1261, line: 535, baseType: !4035, size: 64, offset: 8640)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1260, file: !1261, line: 536, baseType: !29, size: 32, offset: 8704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1260, file: !1261, line: 539, baseType: !45, size: 32, offset: 8736)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1260, file: !1261, line: 540, baseType: !2583, size: 64, offset: 8768)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1260, file: !1261, line: 563, baseType: !101, size: 128, offset: 8832)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1260, file: !1261, line: 565, baseType: !101, size: 128, offset: 8960)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1260, file: !1261, line: 568, baseType: !2594, size: 64, offset: 9088)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1260, file: !1261, line: 570, baseType: !40, size: 32, offset: 9152)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1236, file: !421, line: 2382, baseType: !1235, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1236, file: !421, line: 2383, baseType: !499, size: 64, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1236, file: !421, line: 2385, baseType: !4046, offset: 576)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2438, line: 206, elements: !412)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1236, file: !421, line: 2386, baseType: !4046, offset: 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1236, file: !421, line: 2387, baseType: !4046, offset: 576)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1236, file: !421, line: 2388, baseType: !4050, offset: 576)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4046, elements: !486)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1236, file: !421, line: 2390, baseType: !4046, offset: 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1236, file: !421, line: 2391, baseType: !4046, offset: 576)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1236, file: !421, line: 2392, baseType: !4046, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1236, file: !421, line: 2393, baseType: !4046, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1227, file: !421, line: 1197, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4058)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !421, line: 2057, size: 1664, elements: !4059)
!4059 = !{!4060, !4064, !4068, !4069, !4073, !4077, !4081, !4082, !4083, !4087, !4095, !4099, !4100, !4101, !4107, !4111, !4112, !4116, !4117, !4118, !4119, !4123, !4127, !4180, !4195, !4196}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4058, file: !421, line: 2058, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!1025, !1226}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4058, file: !421, line: 2059, baseType: !4065, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{null, !1025}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4058, file: !421, line: 2060, baseType: !4065, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4058, file: !421, line: 2062, baseType: !4070, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !1025, !45}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4058, file: !421, line: 2063, baseType: !4074, size: 64, offset: 256)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!45, !1025, !1713}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4058, file: !421, line: 2064, baseType: !4078, size: 64, offset: 320)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!45, !1025}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4058, file: !421, line: 2065, baseType: !4065, size: 64, offset: 384)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4058, file: !421, line: 2066, baseType: !1255, size: 64, offset: 448)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4058, file: !421, line: 2067, baseType: !4084, size: 64, offset: 512)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!45, !1226, !45}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4058, file: !421, line: 2068, baseType: !4088, size: 64, offset: 576)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!45, !1226, !4091}
!4091 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !421, line: 2052, baseType: !29, size: 32, elements: !4092)
!4092 = !{!4093, !4094}
!4093 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!4094 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4058, file: !421, line: 2069, baseType: !4096, size: 64, offset: 640)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!45, !1226}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4058, file: !421, line: 2070, baseType: !4088, size: 64, offset: 704)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4058, file: !421, line: 2071, baseType: !4096, size: 64, offset: 768)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4058, file: !421, line: 2072, baseType: !4102, size: 64, offset: 832)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!45, !990, !4105}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !421, line: 62, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4058, file: !421, line: 2073, baseType: !4108, size: 64, offset: 896)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!45, !1226, !2308, !704}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4058, file: !421, line: 2074, baseType: !1255, size: 64, offset: 960)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4058, file: !421, line: 2076, baseType: !4113, size: 64, offset: 1024)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!45, !2059, !990}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4058, file: !421, line: 2077, baseType: !4113, size: 64, offset: 1088)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4058, file: !421, line: 2078, baseType: !4113, size: 64, offset: 1152)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4058, file: !421, line: 2079, baseType: !4113, size: 64, offset: 1216)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4058, file: !421, line: 2081, baseType: !4120, size: 64, offset: 1280)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!1177, !1226, !45, !704, !795, !460}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4058, file: !421, line: 2082, baseType: !4124, size: 64, offset: 1344)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!1177, !1226, !45, !694, !795, !460}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4058, file: !421, line: 2083, baseType: !4128, size: 64, offset: 1408)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!4131, !1025}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !4134, line: 296, size: 1664, elements: !4135)
!4134 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4165, !4166, !4167}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4133, file: !4134, line: 297, baseType: !503, size: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4133, file: !4134, line: 298, baseType: !101, size: 128, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4133, file: !4134, line: 299, baseType: !101, size: 128, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4133, file: !4134, line: 300, baseType: !101, size: 128, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4133, file: !4134, line: 301, baseType: !448, size: 256, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4133, file: !4134, line: 302, baseType: !401, size: 32, offset: 768)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4133, file: !4134, line: 303, baseType: !40, size: 32, offset: 800)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4133, file: !4134, line: 304, baseType: !1226, size: 64, offset: 832)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4133, file: !4134, line: 305, baseType: !4145, size: 64, offset: 896)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !4134, line: 68, size: 64, elements: !4146)
!4146 = !{!4147, !4159}
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !4134, line: 69, baseType: !4148, size: 32)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !4134, line: 69, size: 32, elements: !4149)
!4149 = !{!4150, !4151, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4148, file: !4134, line: 70, baseType: !587, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4148, file: !4134, line: 71, baseType: !595, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4148, file: !4134, line: 72, baseType: !4153, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4154, line: 24, baseType: !4155)
!4154 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4154, line: 22, size: 32, elements: !4156)
!4156 = !{!4157}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4155, file: !4154, line: 23, baseType: !4158, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4154, line: 20, baseType: !593)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4145, file: !4134, line: 74, baseType: !4160, size: 32, offset: 32)
!4160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !4134, line: 54, baseType: !29, size: 32, elements: !4161)
!4161 = !{!4162, !4163, !4164}
!4162 = !DIEnumerator(name: "USRQUOTA", value: 0)
!4163 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!4164 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4133, file: !4134, line: 306, baseType: !460, size: 64, offset: 960)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4133, file: !4134, line: 307, baseType: !22, size: 64, offset: 1024)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4133, file: !4134, line: 308, baseType: !4168, size: 576, offset: 1088)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !4134, line: 205, size: 576, elements: !4169)
!4169 = !{!4170, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4168, file: !4134, line: 206, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !4134, line: 66, baseType: !114)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4168, file: !4134, line: 207, baseType: !4171, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4168, file: !4134, line: 208, baseType: !4171, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4168, file: !4134, line: 209, baseType: !4171, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4168, file: !4134, line: 210, baseType: !4171, size: 64, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4168, file: !4134, line: 211, baseType: !4171, size: 64, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4168, file: !4134, line: 212, baseType: !4171, size: 64, offset: 384)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4168, file: !4134, line: 213, baseType: !650, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4168, file: !4134, line: 214, baseType: !650, size: 64, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4058, file: !421, line: 2085, baseType: !4181, size: 64, offset: 1472)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!873, !1226, !4184}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4186, line: 15, size: 256, elements: !4187)
!4186 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4187 = !{!4188, !4189, !4190, !4191, !4192}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4185, file: !4186, line: 16, baseType: !539, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4185, file: !4186, line: 19, baseType: !45, size: 32, offset: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4185, file: !4186, line: 26, baseType: !22, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4185, file: !4186, line: 33, baseType: !22, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4185, file: !4186, line: 36, baseType: !4193, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !384, line: 33, flags: DIFlagFwdDecl)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4058, file: !421, line: 2087, baseType: !4181, size: 64, offset: 1536)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4058, file: !421, line: 2089, baseType: !1255, size: 64, offset: 1600)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1227, file: !421, line: 1198, baseType: !4198, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !4134, line: 324, size: 704, elements: !4201)
!4201 = !{!4202, !4206, !4210, !4214, !4215, !4216, !4217, !4218, !4223, !4228, !4232}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4200, file: !4134, line: 325, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!45, !4132}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4200, file: !4134, line: 326, baseType: !4207, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!4132, !1226, !45}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4200, file: !4134, line: 327, baseType: !4211, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !4132}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4200, file: !4134, line: 328, baseType: !4203, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4200, file: !4134, line: 329, baseType: !4203, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4200, file: !4134, line: 330, baseType: !4203, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4200, file: !4134, line: 331, baseType: !4084, size: 64, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4200, file: !4134, line: 334, baseType: !4219, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!4222, !1025}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4200, file: !4134, line: 335, baseType: !4224, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!45, !1025, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4200, file: !4134, line: 337, baseType: !4229, size: 64, offset: 576)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!45, !1025, !4222}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4200, file: !4134, line: 339, baseType: !4233, size: 64, offset: 640)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!45, !1226, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1227, file: !421, line: 1199, baseType: !4238, size: 64, offset: 512)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !4134, line: 430, size: 704, elements: !4241)
!4241 = !{!4242, !4246, !4247, !4251, !4252, !4253, !4268, !4291, !4295, !4296, !4319}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4240, file: !4134, line: 431, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!45, !1226, !45, !45, !1146}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4240, file: !4134, line: 432, baseType: !4084, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4240, file: !4134, line: 433, baseType: !4248, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!45, !1226, !29}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4240, file: !4134, line: 434, baseType: !4248, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4240, file: !4134, line: 435, baseType: !4084, size: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4240, file: !4134, line: 436, baseType: !4254, size: 64, offset: 320)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!45, !1226, !45, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !4134, line: 417, size: 256, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4258, file: !4134, line: 418, baseType: !45, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4258, file: !4134, line: 419, baseType: !29, size: 32, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4258, file: !4134, line: 420, baseType: !29, size: 32, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4258, file: !4134, line: 422, baseType: !29, size: 32, offset: 96)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4258, file: !4134, line: 423, baseType: !29, size: 32, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4258, file: !4134, line: 424, baseType: !29, size: 32, offset: 160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4258, file: !4134, line: 425, baseType: !29, size: 32, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4258, file: !4134, line: 426, baseType: !29, size: 32, offset: 224)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4240, file: !4134, line: 437, baseType: !4269, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!45, !1226, !4145, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !4134, line: 345, size: 960, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4273, file: !4134, line: 346, baseType: !45, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4273, file: !4134, line: 347, baseType: !96, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4273, file: !4134, line: 348, baseType: !96, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4273, file: !4134, line: 349, baseType: !96, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4273, file: !4134, line: 350, baseType: !96, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4273, file: !4134, line: 351, baseType: !96, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4273, file: !4134, line: 352, baseType: !96, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4273, file: !4134, line: 353, baseType: !112, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4273, file: !4134, line: 355, baseType: !112, size: 64, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4273, file: !4134, line: 356, baseType: !45, size: 32, offset: 576)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4273, file: !4134, line: 357, baseType: !45, size: 32, offset: 608)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4273, file: !4134, line: 358, baseType: !96, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4273, file: !4134, line: 359, baseType: !96, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4273, file: !4134, line: 360, baseType: !96, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4273, file: !4134, line: 361, baseType: !112, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4273, file: !4134, line: 362, baseType: !45, size: 32, offset: 896)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4240, file: !4134, line: 438, baseType: !4292, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!45, !1226, !4236, !4272}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4240, file: !4134, line: 440, baseType: !4269, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4240, file: !4134, line: 441, baseType: !4297, size: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!45, !1226, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !4134, line: 411, size: 1408, elements: !4302)
!4302 = !{!4303, !4304}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4301, file: !4134, line: 412, baseType: !29, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4301, file: !4134, line: 413, baseType: !4305, size: 1344, offset: 64)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4306, size: 1344, elements: !486)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !4134, line: 397, size: 448, elements: !4307)
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4318}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4306, file: !4134, line: 398, baseType: !29, size: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4306, file: !4134, line: 399, baseType: !29, size: 32, offset: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4306, file: !4134, line: 401, baseType: !29, size: 32, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4306, file: !4134, line: 402, baseType: !29, size: 32, offset: 96)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4306, file: !4134, line: 403, baseType: !29, size: 32, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4306, file: !4134, line: 404, baseType: !29, size: 32, offset: 160)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4306, file: !4134, line: 405, baseType: !29, size: 32, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4306, file: !4134, line: 406, baseType: !98, size: 64, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4306, file: !4134, line: 407, baseType: !4317, size: 64, offset: 320)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !96)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4306, file: !4134, line: 408, baseType: !4317, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4240, file: !4134, line: 442, baseType: !4248, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1227, file: !421, line: 1200, baseType: !4321, size: 64, offset: 576)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4323)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !421, line: 54, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1227, file: !421, line: 1201, baseType: !22, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1227, file: !421, line: 1202, baseType: !22, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1227, file: !421, line: 1203, baseType: !22, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1227, file: !421, line: 1204, baseType: !990, size: 64, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1227, file: !421, line: 1205, baseType: !634, size: 320, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1227, file: !421, line: 1206, baseType: !45, size: 32, offset: 1216)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1227, file: !421, line: 1207, baseType: !40, size: 32, offset: 1248)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1227, file: !421, line: 1209, baseType: !33, size: 64, offset: 1280)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1227, file: !421, line: 1211, baseType: !4333, size: 64, offset: 1344)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4336)
!4336 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !421, line: 1211, flags: DIFlagFwdDecl)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1227, file: !421, line: 1223, baseType: !4338, size: 64, offset: 1408)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1002, line: 34, size: 64, elements: !4339)
!4339 = !{!4340}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4338, file: !1002, line: 35, baseType: !1005, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1227, file: !421, line: 1224, baseType: !101, size: 128, offset: 1472)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1227, file: !421, line: 1225, baseType: !4343, size: 64, offset: 1600)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !421, line: 1225, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1227, file: !421, line: 1226, baseType: !4346, size: 64, offset: 1664)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !421, line: 1226, flags: DIFlagFwdDecl)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1227, file: !421, line: 1227, baseType: !4349, size: 64, offset: 1728)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !421, line: 50, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1227, file: !421, line: 1228, baseType: !4352, size: 64, offset: 1792)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !421, line: 1228, flags: DIFlagFwdDecl)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1227, file: !421, line: 1229, baseType: !503, size: 128, offset: 1856)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1227, file: !421, line: 1230, baseType: !29, size: 32, offset: 1984)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1227, file: !421, line: 1231, baseType: !4357, size: 2496, offset: 2048)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !4134, line: 521, size: 2496, elements: !4358)
!4358 = !{!4359, !4360, !4361, !4363, !4395}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4357, file: !4134, line: 522, baseType: !29, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4357, file: !4134, line: 523, baseType: !634, size: 320, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4357, file: !4134, line: 524, baseType: !4362, size: 192, offset: 384)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 192, elements: !486)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4357, file: !4134, line: 525, baseType: !4364, size: 1728, offset: 576)
!4364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4365, size: 1728, elements: !486)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !4134, line: 222, size: 576, elements: !4366)
!4366 = !{!4367, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4365, file: !4134, line: 223, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !4134, line: 445, size: 256, elements: !4370)
!4370 = !{!4371, !4372, !4385, !4386}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4369, file: !4134, line: 446, baseType: !45, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4369, file: !4134, line: 447, baseType: !4373, size: 64, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4375)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !4134, line: 312, size: 512, elements: !4376)
!4376 = !{!4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4375, file: !4134, line: 313, baseType: !4084, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4375, file: !4134, line: 314, baseType: !4084, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4375, file: !4134, line: 315, baseType: !4084, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4375, file: !4134, line: 316, baseType: !4084, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4375, file: !4134, line: 317, baseType: !4203, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4375, file: !4134, line: 318, baseType: !4203, size: 64, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4375, file: !4134, line: 319, baseType: !4203, size: 64, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4375, file: !4134, line: 320, baseType: !4233, size: 64, offset: 448)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4369, file: !4134, line: 448, baseType: !1259, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4369, file: !4134, line: 449, baseType: !4368, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4365, file: !4134, line: 224, baseType: !45, size: 32, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4365, file: !4134, line: 226, baseType: !101, size: 128, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4365, file: !4134, line: 227, baseType: !22, size: 64, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4365, file: !4134, line: 228, baseType: !29, size: 32, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4365, file: !4134, line: 229, baseType: !29, size: 32, offset: 352)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4365, file: !4134, line: 230, baseType: !4171, size: 64, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4365, file: !4134, line: 231, baseType: !4171, size: 64, offset: 448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4365, file: !4134, line: 232, baseType: !33, size: 64, offset: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4357, file: !4134, line: 526, baseType: !4396, size: 192, offset: 2304)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4373, size: 192, elements: !486)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1227, file: !421, line: 1233, baseType: !4398, size: 2368, offset: 4544)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !421, line: 1184, size: 2368, elements: !4399)
!4399 = !{!4400, !4401, !4402}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4398, file: !421, line: 1185, baseType: !67, size: 16)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4398, file: !421, line: 1186, baseType: !67, size: 16, offset: 16)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4398, file: !421, line: 1187, baseType: !4403, size: 2304, offset: 64)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4404, size: 2304, elements: !486)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4405, line: 12, size: 768, elements: !4406)
!4405 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4406 = !{!4407, !4415, !4416, !4417, !4418}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4404, file: !4405, line: 13, baseType: !4408, size: 384)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4409, line: 17, size: 384, elements: !4410)
!4409 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4410 = !{!4411, !4412, !4413, !4414}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4408, file: !4409, line: 18, baseType: !45, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4408, file: !4409, line: 19, baseType: !45, size: 32, offset: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4408, file: !4409, line: 20, baseType: !512, size: 192, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4408, file: !4409, line: 22, baseType: !428, size: 128, align: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4404, file: !4405, line: 14, baseType: !2260, size: 64, offset: 384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4404, file: !4405, line: 15, baseType: !3545, size: 64, offset: 448)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4404, file: !4405, line: 16, baseType: !512, size: 192, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4404, file: !4405, line: 17, baseType: !40, size: 32, offset: 704)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1227, file: !421, line: 1240, baseType: !33, size: 64, offset: 6912)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1227, file: !421, line: 1243, baseType: !25, size: 32, offset: 6976)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1227, file: !421, line: 1245, baseType: !650, size: 64, offset: 7040)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1227, file: !421, line: 1246, baseType: !650, size: 64, offset: 7104)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1227, file: !421, line: 1248, baseType: !27, size: 32, offset: 7168)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1227, file: !421, line: 1249, baseType: !4425, size: 64, offset: 7232)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !421, line: 634, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1227, file: !421, line: 1252, baseType: !4428, size: 256, offset: 7296)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4429)
!4429 = !{!4430}
!4430 = !DISubrange(count: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1227, file: !421, line: 1253, baseType: !4432, size: 128, offset: 7552)
!4432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4433, line: 21, baseType: !4434)
!4433 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4433, line: 19, size: 128, elements: !4435)
!4435 = !{!4436}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4434, file: !4433, line: 20, baseType: !4437, size: 128)
!4437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !4438)
!4438 = !{!4439}
!4439 = !DISubrange(count: 16)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1227, file: !421, line: 1255, baseType: !29, size: 32, offset: 7680)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1227, file: !421, line: 1261, baseType: !448, size: 256, offset: 7744)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1227, file: !421, line: 1267, baseType: !694, size: 64, offset: 8000)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1227, file: !421, line: 1269, baseType: !4444, size: 64, offset: 8064)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4446)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !992, line: 128, size: 1024, align: 512, elements: !4447)
!4447 = !{!4448, !4452, !4453, !4460, !4466, !4470, !4474, !4478, !4479, !4483, !4487, !4492, !4496}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4446, file: !992, line: 129, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!45, !990, !29}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4446, file: !992, line: 130, baseType: !4449, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4446, file: !992, line: 131, baseType: !4454, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!45, !4457, !4459}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4446, file: !992, line: 132, baseType: !4461, size: 64, offset: 192)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!45, !4457, !29, !694, !4464}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4446, file: !992, line: 134, baseType: !4467, size: 64, offset: 256)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!45, !4457}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4446, file: !992, line: 135, baseType: !4471, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!45, !990}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4446, file: !992, line: 136, baseType: !4475, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !990}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4446, file: !992, line: 137, baseType: !4475, size: 64, offset: 448)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4446, file: !992, line: 138, baseType: !4480, size: 64, offset: 512)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !990, !1025}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4446, file: !992, line: 139, baseType: !4484, size: 64, offset: 576)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!704, !990, !704, !45}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4446, file: !992, line: 140, baseType: !4488, size: 64, offset: 640)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!985, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4446, file: !992, line: 141, baseType: !4493, size: 64, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!45, !1146, !614}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4446, file: !992, line: 142, baseType: !4497, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!990, !990, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1227, file: !421, line: 1271, baseType: !4503, size: 448, offset: 8128)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4186, line: 63, size: 448, elements: !4504)
!4504 = !{!4505, !4510, !4511, !4512, !4513, !4514, !4515}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4503, file: !4186, line: 64, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!22, !4509, !4184}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4503, file: !4186, line: 66, baseType: !4506, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4503, file: !4186, line: 69, baseType: !873, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4503, file: !4186, line: 70, baseType: !45, size: 32, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4503, file: !4186, line: 71, baseType: !29, size: 32, offset: 224)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4503, file: !4186, line: 74, baseType: !101, size: 128, offset: 256)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4503, file: !4186, line: 85, baseType: !4516, size: 64, offset: 384)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1227, file: !421, line: 1274, baseType: !441, size: 64, offset: 8576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1227, file: !421, line: 1280, baseType: !441, size: 64, offset: 8640)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1227, file: !421, line: 1283, baseType: !45, size: 32, offset: 8704)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1227, file: !421, line: 1286, baseType: !1950, size: 32, offset: 8736)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1227, file: !421, line: 1289, baseType: !2471, size: 64, offset: 8768)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1227, file: !421, line: 1290, baseType: !499, size: 64, offset: 8832)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1227, file: !421, line: 1297, baseType: !556, size: 64, offset: 8896)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1227, file: !421, line: 1304, baseType: !4525, size: 64, offset: 8960)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4526, line: 49, size: 64, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4527 = !{!4528}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4525, file: !4526, line: 50, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4526, line: 41, size: 512, align: 512, elements: !4531)
!4531 = !{!4532, !4533, !4538}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4530, file: !4526, line: 43, baseType: !401, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4530, file: !4526, line: 45, baseType: !4534, size: 192, offset: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4526, line: 29, size: 192, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4534, file: !4526, line: 30, baseType: !101, size: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4534, file: !4526, line: 32, baseType: !873, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4530, file: !4526, line: 46, baseType: !873, size: 64, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1227, file: !421, line: 1305, baseType: !4525, size: 64, offset: 9024)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1227, file: !421, line: 1306, baseType: !428, size: 128, align: 64, offset: 9088)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1227, file: !421, line: 1307, baseType: !743, size: 256, offset: 9216)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1227, file: !421, line: 1309, baseType: !448, size: 256, offset: 9472)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1227, file: !421, line: 1314, baseType: !45, size: 32, offset: 9728)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1227, file: !421, line: 1317, baseType: !401, size: 32, align: 512, offset: 10240)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1227, file: !421, line: 1318, baseType: !101, size: 128, offset: 10304)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1227, file: !421, line: 1320, baseType: !401, size: 32, offset: 10432)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1227, file: !421, line: 1321, baseType: !101, size: 128, offset: 10496)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1026, file: !421, line: 656, baseType: !1383, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1026, file: !421, line: 659, baseType: !33, size: 64, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1026, file: !421, line: 663, baseType: !22, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !421, line: 671, baseType: !4552, size: 32, offset: 704)
!4552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !421, line: 671, size: 32, elements: !4553)
!4553 = !{!4554, !4555}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4552, file: !421, line: 672, baseType: !2530, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4552, file: !421, line: 673, baseType: !29, size: 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1026, file: !421, line: 675, baseType: !1099, size: 32, offset: 736)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1026, file: !421, line: 676, baseType: !460, size: 64, offset: 768)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1026, file: !421, line: 677, baseType: !1135, size: 128, offset: 832)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1026, file: !421, line: 678, baseType: !1135, size: 128, offset: 960)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1026, file: !421, line: 679, baseType: !1135, size: 128, offset: 1088)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1026, file: !421, line: 680, baseType: !401, size: 32, offset: 1216)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1026, file: !421, line: 681, baseType: !67, size: 16, offset: 1248)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1026, file: !421, line: 682, baseType: !216, size: 8, offset: 1264)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1026, file: !421, line: 683, baseType: !216, size: 8, offset: 1272)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1026, file: !421, line: 684, baseType: !4317, size: 64, offset: 1280)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1026, file: !421, line: 691, baseType: !22, size: 64, offset: 1344)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1026, file: !421, line: 692, baseType: !634, size: 320, offset: 1408)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1026, file: !421, line: 694, baseType: !22, size: 64, offset: 1728)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1026, file: !421, line: 695, baseType: !22, size: 64, offset: 1792)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1026, file: !421, line: 697, baseType: !503, size: 128, offset: 1856)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1026, file: !421, line: 698, baseType: !101, size: 128, offset: 1984)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1026, file: !421, line: 707, baseType: !101, size: 128, offset: 2112)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1026, file: !421, line: 708, baseType: !101, size: 128, offset: 2240)
!4574 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !421, line: 709, baseType: !4575, size: 128, offset: 2368)
!4575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !421, line: 709, size: 128, elements: !4576)
!4576 = !{!4577, !4578}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4575, file: !421, line: 710, baseType: !499, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4575, file: !421, line: 711, baseType: !428, size: 128, align: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1026, file: !421, line: 713, baseType: !443, size: 64, offset: 2496)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1026, file: !421, line: 714, baseType: !443, size: 64, offset: 2560)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1026, file: !421, line: 715, baseType: !40, size: 32, offset: 2624)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1026, file: !421, line: 716, baseType: !40, size: 32, offset: 2656)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1026, file: !421, line: 717, baseType: !40, size: 32, offset: 2688)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1026, file: !421, line: 719, baseType: !40, size: 32, offset: 2720)
!4585 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !421, line: 721, baseType: !4586, size: 64, offset: 2752)
!4586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !421, line: 721, size: 64, elements: !4587)
!4587 = !{!4588, !4714}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4586, file: !421, line: 722, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4591)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !421, line: 1914, size: 2112, elements: !4592)
!4592 = !{!4593, !4594, !4598, !4602, !4606, !4607, !4608, !4614, !4627, !4631, !4635, !4636, !4640, !4641, !4645, !4650, !4651, !4655, !4659, !4665, !4666, !4670, !4671, !4677, !4681, !4682, !4687, !4691, !4695, !4699, !4703, !4704, !4710}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4591, file: !421, line: 1915, baseType: !1259, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4591, file: !421, line: 1916, baseType: !4595, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!460, !419, !460, !45}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4591, file: !421, line: 1917, baseType: !4599, size: 64, offset: 128)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!1177, !419, !704, !795, !798}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4591, file: !421, line: 1918, baseType: !4603, size: 64, offset: 192)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!1177, !419, !694, !795, !798}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4591, file: !421, line: 1919, baseType: !1827, size: 64, offset: 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4591, file: !421, line: 1920, baseType: !1827, size: 64, offset: 320)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4591, file: !421, line: 1921, baseType: !4609, size: 64, offset: 384)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!45, !1830, !4612, !29}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !421, line: 53, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4591, file: !421, line: 1923, baseType: !4615, size: 64, offset: 448)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!45, !419, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !421, line: 1858, size: 128, elements: !4620)
!4620 = !{!4621, !4626}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4619, file: !421, line: 1859, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !421, line: 1855, baseType: !4623)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!614, !4618, !694, !45, !460, !96, !29}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4619, file: !421, line: 1860, baseType: !460, size: 64, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4591, file: !421, line: 1924, baseType: !4628, size: 64, offset: 512)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!2126, !419, !2128}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4591, file: !421, line: 1925, baseType: !4632, size: 64, offset: 576)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!873, !419, !29, !22}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4591, file: !421, line: 1926, baseType: !4632, size: 64, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4591, file: !421, line: 1927, baseType: !4637, size: 64, offset: 704)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!45, !419, !1521}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4591, file: !421, line: 1928, baseType: !22, size: 64, offset: 768)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4591, file: !421, line: 1929, baseType: !4642, size: 64, offset: 832)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!45, !1025, !419}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4591, file: !421, line: 1930, baseType: !4646, size: 64, offset: 896)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!45, !419, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !421, line: 1061, baseType: !33)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4591, file: !421, line: 1931, baseType: !4642, size: 64, offset: 960)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4591, file: !421, line: 1932, baseType: !4652, size: 64, offset: 1024)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!45, !419, !460, !460, !45}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4591, file: !421, line: 1933, baseType: !4656, size: 64, offset: 1088)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!45, !45, !419, !45}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4591, file: !421, line: 1934, baseType: !4660, size: 64, offset: 1152)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!45, !419, !45, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !421, line: 1063, flags: DIFlagFwdDecl)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4591, file: !421, line: 1935, baseType: !416, size: 64, offset: 1216)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4591, file: !421, line: 1936, baseType: !4667, size: 64, offset: 1280)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!45, !45}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4591, file: !421, line: 1937, baseType: !4660, size: 64, offset: 1344)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4591, file: !421, line: 1938, baseType: !4672, size: 64, offset: 1408)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!1177, !4675, !419, !798, !795, !29}
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !15, line: 59, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4591, file: !421, line: 1939, baseType: !4678, size: 64, offset: 1472)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!1177, !419, !798, !4675, !795, !29}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4591, file: !421, line: 1940, baseType: !1940, size: 64, offset: 1536)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4591, file: !421, line: 1941, baseType: !4683, size: 64, offset: 1600)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!45, !419, !45, !4686, !1804}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4591, file: !421, line: 1942, baseType: !4688, size: 64, offset: 1664)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!873, !419, !45, !460, !460}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4591, file: !421, line: 1944, baseType: !4692, size: 64, offset: 1728)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{null, !2059, !419}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4591, file: !421, line: 1948, baseType: !4696, size: 64, offset: 1792)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!1177, !419, !460, !419, !460, !795, !29}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4591, file: !421, line: 1950, baseType: !4700, size: 64, offset: 1856)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!460, !419, !460, !419, !460, !460, !29}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4591, file: !421, line: 1953, baseType: !4652, size: 64, offset: 1920)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4591, file: !421, line: 1954, baseType: !4705, size: 64, offset: 1984)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!45, !4708, !29}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !421, line: 1911, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4591, file: !421, line: 1955, baseType: !4711, size: 64, offset: 2048)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!45, !4708, !4612, !29}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4586, file: !421, line: 723, baseType: !4065, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1026, file: !421, line: 725, baseType: !4716, size: 64, offset: 2816)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !421, line: 725, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1026, file: !421, line: 726, baseType: !1384, size: 1536, align: 64, offset: 2880)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1026, file: !421, line: 727, baseType: !101, size: 128, offset: 4416)
!4720 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !421, line: 728, baseType: !4721, size: 64, offset: 4544)
!4721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !421, line: 728, size: 64, elements: !4722)
!4722 = !{!4723, !4724, !4727, !4728}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4721, file: !421, line: 729, baseType: !4675, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4721, file: !421, line: 730, baseType: !4725, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !421, line: 730, flags: DIFlagFwdDecl)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4721, file: !421, line: 731, baseType: !704, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4721, file: !421, line: 732, baseType: !29, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1026, file: !421, line: 735, baseType: !27, size: 32, offset: 4608)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1026, file: !421, line: 738, baseType: !27, size: 32, offset: 4640)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1026, file: !421, line: 739, baseType: !4425, size: 64, offset: 4672)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1026, file: !421, line: 750, baseType: !33, size: 64, offset: 4736)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !991, file: !992, line: 91, baseType: !4734, size: 256, offset: 448)
!4734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !4429)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !991, file: !992, line: 94, baseType: !4736, size: 64, offset: 704)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4737, line: 25, size: 64, elements: !4738)
!4737 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4738 = !{!4739}
!4739 = !DIDerivedType(tag: DW_TAG_member, scope: !4736, file: !4737, line: 26, baseType: !4740, size: 64)
!4740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4736, file: !4737, line: 26, size: 64, elements: !4741)
!4741 = !{!4742, !4743}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4740, file: !4737, line: 28, baseType: !97, size: 64, align: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, scope: !4740, file: !4737, line: 30, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4740, file: !4737, line: 30, size: 64, elements: !4745)
!4745 = !{!4746, !4747}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4744, file: !4737, line: 31, baseType: !401, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4744, file: !4737, line: 32, baseType: !45, size: 32, offset: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !991, file: !992, line: 95, baseType: !4444, size: 64, offset: 768)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !991, file: !992, line: 96, baseType: !1226, size: 64, offset: 832)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !991, file: !992, line: 97, baseType: !22, size: 64, offset: 896)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !991, file: !992, line: 98, baseType: !33, size: 64, offset: 960)
!4752 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !992, line: 100, baseType: !4753, size: 128, offset: 1024)
!4753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !992, line: 100, size: 128, elements: !4754)
!4754 = !{!4755, !4756}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4753, file: !992, line: 101, baseType: !101, size: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4753, file: !992, line: 102, baseType: !2137, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !991, file: !992, line: 104, baseType: !101, size: 128, offset: 1152)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !991, file: !992, line: 105, baseType: !101, size: 128, offset: 1280)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !991, file: !992, line: 113, baseType: !4760, size: 128, offset: 1408)
!4760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !992, line: 109, size: 128, elements: !4761)
!4761 = !{!4762, !4763, !4764}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4760, file: !992, line: 110, baseType: !503, size: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4760, file: !992, line: 111, baseType: !1001, size: 128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4760, file: !992, line: 112, baseType: !428, size: 128, align: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !986, file: !987, line: 72, baseType: !1226, size: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !986, file: !987, line: 73, baseType: !45, size: 32, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !986, file: !987, line: 74, baseType: !1064, size: 64, offset: 192)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !981, file: !982, line: 10, baseType: !990, size: 64, offset: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !420, file: !421, line: 1015, baseType: !1025, size: 64, offset: 1344)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !420, file: !421, line: 1016, baseType: !4589, size: 64, offset: 1408)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !420, file: !421, line: 1018, baseType: !96, size: 64, offset: 1472)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !420, file: !421, line: 1020, baseType: !33, size: 64, offset: 1536)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !420, file: !421, line: 1023, baseType: !33, size: 64, offset: 1600)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !420, file: !421, line: 1027, baseType: !2705, size: 64, offset: 1664)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !420, file: !421, line: 1029, baseType: !1383, size: 64, offset: 1728)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !420, file: !421, line: 1030, baseType: !1950, size: 32, offset: 1792)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !420, file: !421, line: 1031, baseType: !1950, size: 32, offset: 1824)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !387, file: !384, line: 756, baseType: !22, size: 64, offset: 704)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !387, file: !384, line: 757, baseType: !22, size: 64, offset: 768)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !387, file: !384, line: 760, baseType: !22, size: 64, offset: 832)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !387, file: !384, line: 761, baseType: !22, size: 64, offset: 896)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !387, file: !384, line: 763, baseType: !22, size: 64, offset: 960)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !387, file: !384, line: 764, baseType: !4784, size: 64, offset: 1024)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1536, line: 299, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 299, size: 64, elements: !4787)
!4787 = !{!4788}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4786, file: !1536, line: 299, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1541, line: 18, baseType: !22)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !387, file: !384, line: 773, baseType: !40, size: 32, offset: 1088)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !387, file: !384, line: 785, baseType: !40, size: 32, offset: 1120)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !387, file: !384, line: 795, baseType: !4793, size: 64, offset: 1152)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !384, line: 726, size: 128, elements: !4795)
!4795 = !{!4796, !4797}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4794, file: !384, line: 727, baseType: !96, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4794, file: !384, line: 728, baseType: !45, size: 32, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !387, file: !384, line: 801, baseType: !22, size: 64, offset: 1216)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !387, file: !384, line: 804, baseType: !441, size: 64, offset: 1280)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !387, file: !384, line: 806, baseType: !45, size: 32, offset: 1344)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !387, file: !384, line: 808, baseType: !401, size: 32, offset: 1376)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !387, file: !384, line: 823, baseType: !634, size: 320, offset: 1408)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !387, file: !384, line: 825, baseType: !101, size: 128, offset: 1728)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !387, file: !384, line: 845, baseType: !45, size: 32, offset: 1856)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !387, file: !384, line: 849, baseType: !22, size: 64, offset: 1920)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !387, file: !384, line: 850, baseType: !22, size: 64, offset: 1984)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !387, file: !384, line: 852, baseType: !22, size: 64, offset: 2048)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !387, file: !384, line: 853, baseType: !22, size: 64, offset: 2112)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !387, file: !384, line: 854, baseType: !443, size: 64, offset: 2176)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !387, file: !384, line: 855, baseType: !22, size: 64, offset: 2240)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !387, file: !384, line: 856, baseType: !22, size: 64, offset: 2304)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !387, file: !384, line: 857, baseType: !22, size: 64, offset: 2368)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !387, file: !384, line: 858, baseType: !22, size: 64, offset: 2432)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !387, file: !384, line: 865, baseType: !256, size: 32, offset: 2496)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !387, file: !384, line: 867, baseType: !401, size: 32, offset: 2528)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !387, file: !384, line: 869, baseType: !22, size: 64, offset: 2560)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !387, file: !384, line: 869, baseType: !22, size: 64, offset: 2624)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !387, file: !384, line: 869, baseType: !22, size: 64, offset: 2688)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !387, file: !384, line: 869, baseType: !22, size: 64, offset: 2752)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !387, file: !384, line: 870, baseType: !22, size: 64, offset: 2816)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !387, file: !384, line: 870, baseType: !22, size: 64, offset: 2880)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !387, file: !384, line: 870, baseType: !22, size: 64, offset: 2944)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !387, file: !384, line: 871, baseType: !22, size: 64, offset: 3008)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !387, file: !384, line: 871, baseType: !22, size: 64, offset: 3072)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !387, file: !384, line: 871, baseType: !22, size: 64, offset: 3136)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !387, file: !384, line: 871, baseType: !22, size: 64, offset: 3200)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !387, file: !384, line: 873, baseType: !4828, size: 3328, offset: 3264)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 3328, elements: !4829)
!4829 = !{!4830}
!4830 = !DISubrange(count: 52)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !387, file: !384, line: 875, baseType: !4832, size: 1280, offset: 6592)
!4832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 1280, elements: !508)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !387, file: !384, line: 877, baseType: !4834, size: 64, offset: 7872)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !384, line: 877, flags: DIFlagFwdDecl)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !387, file: !384, line: 880, baseType: !4837, size: 1088, offset: 7936)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4838, line: 72, baseType: !4839)
!4838 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4838, line: 23, size: 1088, elements: !4840)
!4840 = !{!4841, !4842, !4843, !4844, !4845, !4848, !4849, !4850, !4851, !4876, !4877, !4878}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4839, file: !4838, line: 28, baseType: !96, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4839, file: !4838, line: 38, baseType: !443, size: 64, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4839, file: !4838, line: 40, baseType: !22, size: 64, offset: 128)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4839, file: !4838, line: 43, baseType: !634, size: 320, offset: 192)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4839, file: !4838, line: 44, baseType: !4846, size: 64, offset: 512)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4838, line: 44, flags: DIFlagFwdDecl)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4839, file: !4838, line: 48, baseType: !22, size: 64, offset: 576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4839, file: !4838, line: 59, baseType: !448, size: 256, offset: 640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4839, file: !4838, line: 60, baseType: !33, size: 64, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4839, file: !4838, line: 61, baseType: !4852, size: 64, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4854)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4855, line: 13, size: 1216, elements: !4856)
!4855 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4854, file: !4855, line: 14, baseType: !33, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4854, file: !4855, line: 15, baseType: !22, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4854, file: !4855, line: 17, baseType: !22, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4854, file: !4855, line: 17, baseType: !22, size: 64, offset: 192)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4854, file: !4855, line: 18, baseType: !22, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4854, file: !4855, line: 18, baseType: !22, size: 64, offset: 320)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4854, file: !4855, line: 19, baseType: !1995, size: 64, offset: 384)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4854, file: !4855, line: 21, baseType: !873, size: 64, offset: 448)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4854, file: !4855, line: 23, baseType: !873, size: 64, offset: 512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4854, file: !4855, line: 24, baseType: !873, size: 64, offset: 576)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4854, file: !4855, line: 25, baseType: !873, size: 64, offset: 640)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4854, file: !4855, line: 26, baseType: !873, size: 64, offset: 704)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4854, file: !4855, line: 27, baseType: !873, size: 64, offset: 768)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4854, file: !4855, line: 28, baseType: !873, size: 64, offset: 832)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4854, file: !4855, line: 29, baseType: !873, size: 64, offset: 896)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4854, file: !4855, line: 30, baseType: !873, size: 64, offset: 960)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4854, file: !4855, line: 31, baseType: !873, size: 64, offset: 1024)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4854, file: !4855, line: 32, baseType: !873, size: 64, offset: 1088)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4854, file: !4855, line: 33, baseType: !873, size: 64, offset: 1152)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4839, file: !4838, line: 63, baseType: !40, size: 32, offset: 1024)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4839, file: !4838, line: 69, baseType: !65, size: 16, offset: 1056)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4839, file: !4838, line: 70, baseType: !2315, size: 16, offset: 1072)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !384, line: 882, baseType: !22, size: 64, offset: 9024)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !387, file: !384, line: 885, baseType: !401, size: 32, offset: 9088)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !387, file: !384, line: 886, baseType: !4882, size: 64, offset: 9152)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !384, line: 732, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !387, file: !384, line: 901, baseType: !556, size: 64, offset: 9216)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !387, file: !384, line: 904, baseType: !419, size: 64, offset: 9280)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !387, file: !384, line: 906, baseType: !4887, size: 64, offset: 9344)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !384, line: 906, flags: DIFlagFwdDecl)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !387, file: !384, line: 930, baseType: !40, size: 32, offset: 9408)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !387, file: !384, line: 933, baseType: !40, size: 32, offset: 9440)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !387, file: !384, line: 935, baseType: !4892, size: 64, offset: 9472)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4893, line: 103, size: 64, elements: !4894)
!4893 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!4894 = !{!4895}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4892, file: !4893, line: 104, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !4893, line: 101, flags: DIFlagFwdDecl)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !387, file: !384, line: 940, baseType: !441, size: 64, offset: 9536)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !387, file: !384, line: 942, baseType: !743, size: 256, offset: 9600)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !383, file: !384, line: 986, baseType: !4901, offset: 10240)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !880)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !14, file: !15, line: 882, baseType: !382, size: 64, offset: 9792)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !14, file: !15, line: 884, baseType: !45, size: 32, offset: 9856)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !14, file: !15, line: 885, baseType: !45, size: 32, offset: 9888)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !14, file: !15, line: 886, baseType: !45, size: 32, offset: 9920)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !14, file: !15, line: 888, baseType: !45, size: 32, offset: 9952)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !14, file: !15, line: 890, baseType: !22, size: 64, offset: 9984)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !14, file: !15, line: 893, baseType: !29, size: 32, offset: 10048)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !14, file: !15, line: 896, baseType: !29, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !14, file: !15, line: 897, baseType: !29, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !14, file: !15, line: 898, baseType: !29, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !14, file: !15, line: 899, baseType: !29, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !14, file: !15, line: 919, baseType: !29, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !14, file: !15, line: 922, baseType: !29, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !14, file: !15, line: 923, baseType: !29, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !14, file: !15, line: 925, baseType: !29, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !14, file: !15, line: 939, baseType: !29, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !14, file: !15, line: 941, baseType: !29, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !14, file: !15, line: 944, baseType: !29, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !14, file: !15, line: 956, baseType: !29, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !14, file: !15, line: 962, baseType: !29, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !14, file: !15, line: 966, baseType: !29, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !14, file: !15, line: 969, baseType: !22, size: 64, offset: 10176)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !14, file: !15, line: 971, baseType: !4925, size: 448, offset: 10240)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !4926, line: 25, size: 448, elements: !4927)
!4926 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!4927 = !{!4928, !4929, !4934}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4925, file: !4926, line: 26, baseType: !22, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4925, file: !4926, line: 27, baseType: !4930, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!873, !4933}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, scope: !4925, file: !4926, line: 28, baseType: !4935, size: 320, offset: 128)
!4935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4925, file: !4926, line: 28, size: 320, elements: !4936)
!4936 = !{!4937, !4947, !4977}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4935, file: !4926, line: 37, baseType: !4938, size: 320)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4935, file: !4926, line: 30, size: 320, elements: !4939)
!4939 = !{!4940, !4942, !4943, !4944, !4945, !4946}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4938, file: !4926, line: 31, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4938, file: !4926, line: 32, baseType: !25, size: 32, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4938, file: !4926, line: 33, baseType: !25, size: 32, offset: 96)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4938, file: !4926, line: 34, baseType: !25, size: 32, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4938, file: !4926, line: 35, baseType: !96, size: 64, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4938, file: !4926, line: 36, baseType: !4941, size: 64, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4935, file: !4926, line: 47, baseType: !4948, size: 192)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4935, file: !4926, line: 39, size: 192, elements: !4949)
!4949 = !{!4950, !4951, !4957, !4976}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4948, file: !4926, line: 40, baseType: !247, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4948, file: !4926, line: 41, baseType: !4952, size: 32, offset: 32)
!4952 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !4926, line: 16, baseType: !29, size: 32, elements: !4953)
!4953 = !{!4954, !4955, !4956}
!4954 = !DIEnumerator(name: "TT_NONE", value: 0)
!4955 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!4956 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!4957 = !DIDerivedType(tag: DW_TAG_member, scope: !4948, file: !4926, line: 42, baseType: !4958, size: 64, offset: 64)
!4958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4948, file: !4926, line: 42, size: 64, elements: !4959)
!4959 = !{!4960, !4968}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4958, file: !4926, line: 43, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4963, line: 7, size: 128, elements: !4964)
!4963 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4964 = !{!4965, !4967}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4962, file: !4963, line: 8, baseType: !4966, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !249, line: 93, baseType: !114)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4962, file: !4963, line: 9, baseType: !114, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4958, file: !4926, line: 44, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4971, line: 7, size: 64, elements: !4972)
!4971 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4972 = !{!4973, !4975}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4970, file: !4971, line: 8, baseType: !4974, size: 32)
!4974 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4971, line: 5, baseType: !626)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4970, file: !4971, line: 9, baseType: !626, size: 32, offset: 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4948, file: !4926, line: 46, baseType: !96, size: 64, offset: 128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4935, file: !4926, line: 55, baseType: !4978, size: 256)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4935, file: !4926, line: 49, size: 256, elements: !4979)
!4979 = !{!4980, !4988, !4989, !4990, !4991}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4978, file: !4926, line: 50, baseType: !4981, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4983, line: 36, size: 64, elements: !4984)
!4983 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4984 = !{!4985, !4986, !4987}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4982, file: !4983, line: 37, baseType: !45, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4982, file: !4983, line: 38, baseType: !662, size: 16, offset: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4982, file: !4983, line: 39, baseType: !662, size: 16, offset: 48)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4978, file: !4926, line: 51, baseType: !45, size: 32, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4978, file: !4926, line: 52, baseType: !45, size: 32, offset: 96)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4978, file: !4926, line: 53, baseType: !22, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4978, file: !4926, line: 54, baseType: !22, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !14, file: !15, line: 973, baseType: !4993, size: 32, offset: 10688)
!4993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !4994)
!4994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !249, line: 28, baseType: !45)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !14, file: !15, line: 974, baseType: !4993, size: 32, offset: 10720)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !14, file: !15, line: 978, baseType: !22, size: 64, offset: 10752)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !14, file: !15, line: 987, baseType: !13, size: 64, offset: 10816)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !15, line: 990, baseType: !13, size: 64, offset: 10880)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !14, file: !15, line: 995, baseType: !101, size: 128, offset: 10944)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !14, file: !15, line: 996, baseType: !101, size: 128, offset: 11072)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !14, file: !15, line: 997, baseType: !13, size: 64, offset: 11200)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !14, file: !15, line: 1005, baseType: !101, size: 128, offset: 11264)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !14, file: !15, line: 1006, baseType: !101, size: 128, offset: 11392)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !14, file: !15, line: 1009, baseType: !490, size: 64, offset: 11520)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !14, file: !15, line: 1010, baseType: !5006, size: 512, offset: 11584)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 512, elements: !508)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !14, file: !15, line: 1011, baseType: !101, size: 128, offset: 12096)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !14, file: !15, line: 1012, baseType: !101, size: 128, offset: 12224)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !14, file: !15, line: 1014, baseType: !813, size: 64, offset: 12352)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !14, file: !15, line: 1017, baseType: !2308, size: 64, offset: 12416)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !14, file: !15, line: 1020, baseType: !2308, size: 64, offset: 12480)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !14, file: !15, line: 1023, baseType: !33, size: 64, offset: 12544)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !14, file: !15, line: 1025, baseType: !96, size: 64, offset: 12608)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !14, file: !15, line: 1026, baseType: !96, size: 64, offset: 12672)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !14, file: !15, line: 1031, baseType: !96, size: 64, offset: 12736)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !14, file: !15, line: 1032, baseType: !3842, size: 192, offset: 12800)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !14, file: !15, line: 1041, baseType: !22, size: 64, offset: 12992)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !14, file: !15, line: 1042, baseType: !22, size: 64, offset: 13056)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !14, file: !15, line: 1045, baseType: !96, size: 64, offset: 13120)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !14, file: !15, line: 1048, baseType: !96, size: 64, offset: 13184)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !14, file: !15, line: 1051, baseType: !22, size: 64, offset: 13248)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !14, file: !15, line: 1052, baseType: !22, size: 64, offset: 13312)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !14, file: !15, line: 1055, baseType: !5024, size: 640, offset: 13376)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5025, line: 132, size: 640, elements: !5026)
!5025 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5026 = !{!5027, !5033, !5034}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5024, file: !5025, line: 133, baseType: !5028, size: 576)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5029, size: 576, elements: !486)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5025, line: 117, size: 192, elements: !5030)
!5030 = !{!5031, !5032}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5029, file: !5025, line: 118, baseType: !96, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5029, file: !5025, line: 119, baseType: !262, size: 128, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5024, file: !5025, line: 134, baseType: !29, size: 32, offset: 576)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5024, file: !5025, line: 135, baseType: !29, size: 32, offset: 608)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !14, file: !15, line: 1058, baseType: !5036, size: 448, offset: 14016)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5025, line: 144, size: 448, elements: !5037)
!5037 = !{!5038, !5039, !5040}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5036, file: !5025, line: 145, baseType: !428, size: 128, align: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5036, file: !5025, line: 146, baseType: !448, size: 256, offset: 128)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5036, file: !5025, line: 147, baseType: !29, size: 32, offset: 384)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !14, file: !15, line: 1064, baseType: !894, size: 64, offset: 14464)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !14, file: !15, line: 1067, baseType: !894, size: 64, offset: 14528)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !14, file: !15, line: 1070, baseType: !894, size: 64, offset: 14592)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !14, file: !15, line: 1074, baseType: !618, size: 64, offset: 14656)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !14, file: !15, line: 1084, baseType: !5046, size: 128, offset: 14720)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4438)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !14, file: !15, line: 1086, baseType: !5048, size: 64, offset: 14848)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !15, line: 55, flags: DIFlagFwdDecl)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !14, file: !15, line: 1089, baseType: !5051, size: 64, offset: 14912)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5052, line: 12, size: 64, elements: !5053)
!5052 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5053 = !{!5054}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5051, file: !5052, line: 13, baseType: !5055, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5052, line: 8, flags: DIFlagFwdDecl)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !14, file: !15, line: 1090, baseType: !5058, size: 128, offset: 14976)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5059, line: 13, size: 128, elements: !5060)
!5059 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5060 = !{!5061}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5058, file: !5059, line: 14, baseType: !101, size: 128)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !14, file: !15, line: 1097, baseType: !5063, size: 64, offset: 15104)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !15, line: 50, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !14, file: !15, line: 1100, baseType: !5066, size: 64, offset: 15168)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !15, line: 1100, flags: DIFlagFwdDecl)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !14, file: !15, line: 1103, baseType: !5069, size: 64, offset: 15232)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !15, line: 53, flags: DIFlagFwdDecl)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !14, file: !15, line: 1107, baseType: !5072, size: 64, offset: 15296)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5074, line: 31, size: 576, elements: !5075)
!5074 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5075 = !{!5076, !5077, !5080, !5083, !5086, !5087, !5090, !5093, !5094}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5073, file: !5074, line: 32, baseType: !35, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5073, file: !5074, line: 33, baseType: !5078, size: 64, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5074, line: 9, flags: DIFlagFwdDecl)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5073, file: !5074, line: 34, baseType: !5081, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5074, line: 10, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5073, file: !5074, line: 35, baseType: !5084, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5074, line: 8, flags: DIFlagFwdDecl)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5073, file: !5074, line: 36, baseType: !525, size: 64, offset: 256)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5073, file: !5074, line: 37, baseType: !5088, size: 64, offset: 320)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !620, line: 34, flags: DIFlagFwdDecl)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5073, file: !5074, line: 38, baseType: !5091, size: 64, offset: 384)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5074, line: 38, flags: DIFlagFwdDecl)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5073, file: !5074, line: 39, baseType: !5091, size: 64, offset: 448)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5073, file: !5074, line: 40, baseType: !5095, size: 64, offset: 512)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5097, line: 771, size: 384, elements: !5098)
!5097 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5098 = !{!5099, !5100, !5101, !5102}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5096, file: !5097, line: 772, baseType: !602, size: 192)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5096, file: !5097, line: 773, baseType: !556, size: 64, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5096, file: !5097, line: 774, baseType: !858, size: 64, offset: 256)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5096, file: !5097, line: 775, baseType: !3912, size: 64, offset: 320)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !14, file: !15, line: 1110, baseType: !5104, size: 64, offset: 15360)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5106, line: 93, size: 8768, elements: !5107)
!5106 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5107 = !{!5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5156, !5165, !5166, !5168, !5169, !5170, !5173, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5211, !5212, !5219, !5229, !5291, !5292, !5295, !5296, !5297, !5298, !5299, !5300}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5105, file: !5106, line: 94, baseType: !35, size: 32)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5105, file: !5106, line: 95, baseType: !40, size: 32, offset: 32)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5105, file: !5106, line: 96, baseType: !45, size: 32, offset: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5105, file: !5106, line: 97, baseType: !45, size: 32, offset: 96)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5105, file: !5106, line: 98, baseType: !101, size: 128, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5105, file: !5106, line: 100, baseType: !512, size: 192, offset: 256)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5105, file: !5106, line: 103, baseType: !13, size: 64, offset: 448)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5105, file: !5106, line: 106, baseType: !5116, size: 192, offset: 512)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5117, line: 32, size: 192, elements: !5118)
!5117 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5118 = !{!5119, !5120}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5116, file: !5117, line: 33, baseType: !101, size: 128)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5116, file: !5117, line: 34, baseType: !5121, size: 64, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5122, line: 25, baseType: !5123)
!5122 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5122, line: 23, size: 64, elements: !5124)
!5124 = !{!5125}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5123, file: !5122, line: 24, baseType: !333, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5105, file: !5106, line: 109, baseType: !499, size: 64, offset: 704)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5105, file: !5106, line: 112, baseType: !45, size: 32, offset: 768)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5105, file: !5106, line: 114, baseType: !45, size: 32, offset: 800)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5105, file: !5106, line: 115, baseType: !13, size: 64, offset: 832)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5105, file: !5106, line: 118, baseType: !45, size: 32, offset: 896)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5105, file: !5106, line: 119, baseType: !29, size: 32, offset: 928)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5105, file: !5106, line: 121, baseType: !5133, size: 64, offset: 960)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5106, line: 80, size: 448, elements: !5135)
!5135 = !{!5136, !5137, !5143}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5134, file: !5106, line: 81, baseType: !40, size: 32)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5134, file: !5106, line: 82, baseType: !5138, size: 128, offset: 64)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5106, line: 75, size: 128, elements: !5139)
!5139 = !{!5140, !5141}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5138, file: !5106, line: 76, baseType: !13, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5138, file: !5106, line: 77, baseType: !5142, size: 64, offset: 64)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5134, file: !5106, line: 83, baseType: !814, size: 256, offset: 192)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5105, file: !5106, line: 132, baseType: !29, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5105, file: !5106, line: 133, baseType: !29, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5105, file: !5106, line: 138, baseType: !29, size: 32, offset: 1056)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5105, file: !5106, line: 139, baseType: !101, size: 128, offset: 1088)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5105, file: !5106, line: 142, baseType: !169, size: 512, offset: 1216)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5105, file: !5106, line: 143, baseType: !178, size: 64, offset: 1728)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5105, file: !5106, line: 150, baseType: !5151, size: 256, offset: 1792)
!5151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5152, size: 256, elements: !2298)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5106, line: 38, size: 128, elements: !5153)
!5153 = !{!5154, !5155}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5152, file: !5106, line: 39, baseType: !96, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5152, file: !5106, line: 40, baseType: !96, size: 64, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5105, file: !5106, line: 156, baseType: !5157, size: 192, offset: 2048)
!5157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5106, line: 66, size: 192, elements: !5158)
!5158 = !{!5159}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5157, file: !5106, line: 67, baseType: !5160, size: 192)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5106, line: 47, size: 192, elements: !5161)
!5161 = !{!5162, !5163, !5164}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5160, file: !5106, line: 48, baseType: !443, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5160, file: !5106, line: 49, baseType: !443, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5160, file: !5106, line: 50, baseType: !443, size: 64, offset: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5105, file: !5106, line: 160, baseType: !5024, size: 640, offset: 2240)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5105, file: !5106, line: 163, baseType: !5167, size: 256, offset: 2880)
!5167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 256, elements: !508)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5105, file: !5106, line: 169, baseType: !490, size: 64, offset: 3136)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5105, file: !5106, line: 172, baseType: !45, size: 32, offset: 3200)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5105, file: !5106, line: 174, baseType: !5171, size: 64, offset: 3264)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5106, line: 174, flags: DIFlagFwdDecl)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5105, file: !5106, line: 185, baseType: !5174, size: 64, offset: 3328)
!5174 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !252, line: 860, baseType: !5175)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 853, size: 64, elements: !5176)
!5176 = !{!5177, !5178}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5175, file: !252, line: 858, baseType: !996, size: 32)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5175, file: !252, line: 859, baseType: !401, size: 32, offset: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5105, file: !5106, line: 186, baseType: !96, size: 64, offset: 3392)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5105, file: !5106, line: 186, baseType: !96, size: 64, offset: 3456)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5105, file: !5106, line: 186, baseType: !96, size: 64, offset: 3520)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5105, file: !5106, line: 186, baseType: !96, size: 64, offset: 3584)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5105, file: !5106, line: 187, baseType: !96, size: 64, offset: 3648)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5105, file: !5106, line: 188, baseType: !96, size: 64, offset: 3712)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5105, file: !5106, line: 189, baseType: !3842, size: 192, offset: 3776)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5105, file: !5106, line: 190, baseType: !22, size: 64, offset: 3968)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5105, file: !5106, line: 190, baseType: !22, size: 64, offset: 4032)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5105, file: !5106, line: 190, baseType: !22, size: 64, offset: 4096)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5105, file: !5106, line: 190, baseType: !22, size: 64, offset: 4160)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5105, file: !5106, line: 191, baseType: !22, size: 64, offset: 4224)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5105, file: !5106, line: 191, baseType: !22, size: 64, offset: 4288)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5105, file: !5106, line: 191, baseType: !22, size: 64, offset: 4352)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5105, file: !5106, line: 191, baseType: !22, size: 64, offset: 4416)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5105, file: !5106, line: 192, baseType: !22, size: 64, offset: 4480)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5105, file: !5106, line: 192, baseType: !22, size: 64, offset: 4544)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5105, file: !5106, line: 192, baseType: !22, size: 64, offset: 4608)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5105, file: !5106, line: 192, baseType: !22, size: 64, offset: 4672)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5105, file: !5106, line: 193, baseType: !22, size: 64, offset: 4736)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5105, file: !5106, line: 193, baseType: !22, size: 64, offset: 4800)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5105, file: !5106, line: 194, baseType: !5201, size: 448, offset: 4864)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5202, line: 12, size: 448, elements: !5203)
!5202 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5203 = !{!5204, !5205, !5206, !5207, !5208, !5209, !5210}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5201, file: !5202, line: 15, baseType: !96, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5201, file: !5202, line: 17, baseType: !96, size: 64, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5201, file: !5202, line: 19, baseType: !96, size: 64, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5201, file: !5202, line: 21, baseType: !96, size: 64, offset: 192)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5201, file: !5202, line: 29, baseType: !96, size: 64, offset: 256)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5201, file: !5202, line: 35, baseType: !96, size: 64, offset: 320)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5201, file: !5202, line: 44, baseType: !96, size: 64, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5105, file: !5106, line: 202, baseType: !98, size: 64, offset: 5312)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5105, file: !5106, line: 213, baseType: !5213, size: 2048, offset: 5376)
!5213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5214, size: 2048, elements: !4438)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5215, line: 43, size: 128, elements: !5216)
!5215 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5216 = !{!5217, !5218}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5214, file: !5215, line: 44, baseType: !797, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5214, file: !5215, line: 45, baseType: !797, size: 64, offset: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5105, file: !5106, line: 216, baseType: !5220, size: 448, offset: 7424)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5106, line: 30, size: 448, elements: !5221)
!5221 = !{!5222, !5223, !5224, !5225, !5226, !5227, !5228}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5220, file: !5106, line: 31, baseType: !45, size: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5220, file: !5106, line: 32, baseType: !873, size: 64, offset: 64)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5220, file: !5106, line: 33, baseType: !22, size: 64, offset: 128)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5220, file: !5106, line: 34, baseType: !96, size: 64, offset: 192)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5220, file: !5106, line: 34, baseType: !96, size: 64, offset: 256)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5220, file: !5106, line: 35, baseType: !22, size: 64, offset: 320)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5220, file: !5106, line: 35, baseType: !22, size: 64, offset: 384)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5105, file: !5106, line: 219, baseType: !5230, size: 64, offset: 7872)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5232, line: 41, size: 3456, elements: !5233)
!5232 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5231, file: !5232, line: 47, baseType: !66, size: 16)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5231, file: !5232, line: 48, baseType: !27, size: 32, offset: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5231, file: !5232, line: 54, baseType: !217, size: 8, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5231, file: !5232, line: 55, baseType: !217, size: 8, offset: 72)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5231, file: !5232, line: 73, baseType: !97, size: 64, align: 64, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5231, file: !5232, line: 74, baseType: !97, size: 64, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5231, file: !5232, line: 81, baseType: !97, size: 64, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5231, file: !5232, line: 82, baseType: !97, size: 64, offset: 320)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5231, file: !5232, line: 85, baseType: !97, size: 64, offset: 384)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5231, file: !5232, line: 86, baseType: !97, size: 64, offset: 448)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5231, file: !5232, line: 94, baseType: !97, size: 64, offset: 512)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5231, file: !5232, line: 102, baseType: !97, size: 64, offset: 576)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5231, file: !5232, line: 107, baseType: !4428, size: 256, offset: 640)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5231, file: !5232, line: 108, baseType: !217, size: 8, align: 64, offset: 896)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5231, file: !5232, line: 110, baseType: !5249, size: 24, offset: 904)
!5249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24, elements: !486)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5231, file: !5232, line: 111, baseType: !27, size: 32, align: 64, offset: 960)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5231, file: !5232, line: 113, baseType: !27, size: 32, offset: 992)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5231, file: !5232, line: 114, baseType: !27, size: 32, offset: 1024)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5231, file: !5232, line: 115, baseType: !27, size: 32, offset: 1056)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5231, file: !5232, line: 117, baseType: !27, size: 32, offset: 1088)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5231, file: !5232, line: 118, baseType: !97, size: 64, align: 64, offset: 1152)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5231, file: !5232, line: 120, baseType: !97, size: 64, offset: 1216)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5231, file: !5232, line: 121, baseType: !97, size: 64, offset: 1280)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5231, file: !5232, line: 122, baseType: !97, size: 64, offset: 1344)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5231, file: !5232, line: 123, baseType: !97, size: 64, offset: 1408)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5231, file: !5232, line: 133, baseType: !97, size: 64, offset: 1472)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5231, file: !5232, line: 137, baseType: !97, size: 64, offset: 1536)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5231, file: !5232, line: 142, baseType: !97, size: 64, offset: 1600)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5231, file: !5232, line: 143, baseType: !97, size: 64, offset: 1664)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5231, file: !5232, line: 146, baseType: !97, size: 64, offset: 1728)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5231, file: !5232, line: 147, baseType: !97, size: 64, offset: 1792)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5231, file: !5232, line: 148, baseType: !97, size: 64, offset: 1856)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5231, file: !5232, line: 149, baseType: !97, size: 64, offset: 1920)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5231, file: !5232, line: 154, baseType: !97, size: 64, offset: 1984)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5231, file: !5232, line: 155, baseType: !97, size: 64, offset: 2048)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5231, file: !5232, line: 156, baseType: !97, size: 64, offset: 2112)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5231, file: !5232, line: 158, baseType: !97, size: 64, offset: 2176)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5231, file: !5232, line: 159, baseType: !97, size: 64, offset: 2240)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5231, file: !5232, line: 162, baseType: !97, size: 64, offset: 2304)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5231, file: !5232, line: 163, baseType: !97, size: 64, offset: 2368)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5231, file: !5232, line: 164, baseType: !97, size: 64, offset: 2432)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5231, file: !5232, line: 167, baseType: !97, size: 64, offset: 2496)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5231, file: !5232, line: 168, baseType: !97, size: 64, offset: 2560)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5231, file: !5232, line: 171, baseType: !97, size: 64, offset: 2624)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5231, file: !5232, line: 172, baseType: !97, size: 64, offset: 2688)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5231, file: !5232, line: 175, baseType: !97, size: 64, offset: 2752)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5231, file: !5232, line: 178, baseType: !97, size: 64, offset: 2816)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5231, file: !5232, line: 179, baseType: !97, size: 64, offset: 2880)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5231, file: !5232, line: 182, baseType: !27, size: 32, offset: 2944)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5231, file: !5232, line: 186, baseType: !97, size: 64, align: 64, offset: 3008)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5231, file: !5232, line: 194, baseType: !97, size: 64, offset: 3072)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5231, file: !5232, line: 195, baseType: !97, size: 64, offset: 3136)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5231, file: !5232, line: 199, baseType: !97, size: 64, offset: 3200)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5231, file: !5232, line: 200, baseType: !97, size: 64, offset: 3264)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5231, file: !5232, line: 203, baseType: !97, size: 64, offset: 3328)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5231, file: !5232, line: 204, baseType: !97, size: 64, offset: 3392)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5105, file: !5106, line: 222, baseType: !29, size: 32, offset: 7936)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5105, file: !5106, line: 223, baseType: !5293, size: 64, offset: 8000)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5106, line: 223, flags: DIFlagFwdDecl)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5105, file: !5106, line: 230, baseType: !614, size: 8, offset: 8064)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5105, file: !5106, line: 231, baseType: !662, size: 16, offset: 8080)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5105, file: !5106, line: 232, baseType: !662, size: 16, offset: 8096)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5105, file: !5106, line: 234, baseType: !382, size: 64, offset: 8128)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5105, file: !5106, line: 237, baseType: !448, size: 256, offset: 8192)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5105, file: !5106, line: 243, baseType: !634, size: 320, offset: 8448)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !14, file: !15, line: 1111, baseType: !5302, size: 64, offset: 15424)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5106, line: 20, size: 16640, elements: !5304)
!5304 = !{!5305, !5306, !5307, !5308}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5303, file: !5106, line: 21, baseType: !401, size: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5303, file: !5106, line: 22, baseType: !35, size: 32, offset: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5303, file: !5106, line: 23, baseType: !512, size: 192, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5303, file: !5106, line: 24, baseType: !5309, size: 16384, offset: 256)
!5309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5310, size: 16384, elements: !1322)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5117, line: 51, size: 256, elements: !5311)
!5311 = !{!5312}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5310, file: !5117, line: 52, baseType: !5313, size: 256)
!5313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5117, line: 37, size: 256, elements: !5314)
!5314 = !{!5315, !5322, !5323, !5327}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5313, file: !5117, line: 39, baseType: !5316, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5317, line: 83, baseType: !5318)
!5317 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5317, line: 82, baseType: !5320)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{null, !45}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5313, file: !5117, line: 40, baseType: !22, size: 64, offset: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5313, file: !5117, line: 46, baseType: !5324, size: 64, offset: 128)
!5324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5317, line: 86, baseType: !5325)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5317, line: 85, baseType: !2595)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5313, file: !5117, line: 48, baseType: !5121, size: 64, offset: 192)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !14, file: !15, line: 1112, baseType: !5121, size: 64, offset: 15488)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !14, file: !15, line: 1113, baseType: !5121, size: 64, offset: 15552)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !14, file: !15, line: 1115, baseType: !5121, size: 64, offset: 15616)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !14, file: !15, line: 1116, baseType: !5116, size: 192, offset: 15680)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !14, file: !15, line: 1117, baseType: !22, size: 64, offset: 15872)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !14, file: !15, line: 1118, baseType: !795, size: 64, offset: 15936)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !14, file: !15, line: 1119, baseType: !29, size: 32, offset: 16000)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !14, file: !15, line: 1121, baseType: !431, size: 64, offset: 16064)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !14, file: !15, line: 1125, baseType: !5337, size: 64, offset: 16128)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !15, line: 43, flags: DIFlagFwdDecl)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !14, file: !15, line: 1127, baseType: !587, size: 32, offset: 16192)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !14, file: !15, line: 1128, baseType: !29, size: 32, offset: 16224)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !14, file: !15, line: 1130, baseType: !5342, size: 128, offset: 16256)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5343, line: 37, size: 128, elements: !5344)
!5343 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5344 = !{!5345, !5346, !5347}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5342, file: !5343, line: 38, baseType: !45, size: 32)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5342, file: !5343, line: 39, baseType: !40, size: 32, offset: 32)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5342, file: !5343, line: 40, baseType: !5348, size: 64, offset: 64)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5343, line: 24, flags: DIFlagFwdDecl)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !14, file: !15, line: 1131, baseType: !5351, size: 256, offset: 16384)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5352, line: 12, size: 256, elements: !5353)
!5352 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5353 = !{!5354, !5355, !5356, !5357}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5351, file: !5352, line: 13, baseType: !704, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5351, file: !5352, line: 14, baseType: !22, size: 64, offset: 64)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5351, file: !5352, line: 15, baseType: !22, size: 64, offset: 128)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5351, file: !5352, line: 16, baseType: !614, size: 8, offset: 192)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !14, file: !15, line: 1134, baseType: !96, size: 64, offset: 16640)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !14, file: !15, line: 1135, baseType: !96, size: 64, offset: 16704)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !14, file: !15, line: 1138, baseType: !401, size: 32, offset: 16768)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !14, file: !15, line: 1141, baseType: !199, size: 32, offset: 16800)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !14, file: !15, line: 1143, baseType: !5363, size: 64, offset: 16832)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !15, line: 735, size: 64, elements: !5364)
!5364 = !{!5365}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5363, file: !15, line: 736, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !14, file: !15, line: 1147, baseType: !265, size: 128, offset: 16896)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !14, file: !15, line: 1149, baseType: !13, size: 64, offset: 17024)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !14, file: !15, line: 1151, baseType: !5370, size: 64, offset: 17088)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !15, line: 1151, flags: DIFlagFwdDecl)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !14, file: !15, line: 1188, baseType: !33, size: 64, offset: 17152)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !14, file: !15, line: 1191, baseType: !5374, size: 64, offset: 17216)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !15, line: 44, flags: DIFlagFwdDecl)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !14, file: !15, line: 1194, baseType: !5377, size: 64, offset: 17280)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !15, line: 45, flags: DIFlagFwdDecl)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !14, file: !15, line: 1197, baseType: !5380, size: 64, offset: 17344)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !15, line: 61, flags: DIFlagFwdDecl)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !14, file: !15, line: 1199, baseType: !5383, size: 64, offset: 17408)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5385, line: 99, size: 128, elements: !5386)
!5385 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5386 = !{!5387, !5388, !5389}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5384, file: !5385, line: 100, baseType: !441, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5384, file: !5385, line: 101, baseType: !40, size: 32, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5384, file: !5385, line: 103, baseType: !67, size: 16, offset: 96)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !14, file: !15, line: 1202, baseType: !5391, size: 64, offset: 17472)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !15, line: 48, flags: DIFlagFwdDecl)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !14, file: !15, line: 1205, baseType: !22, size: 64, offset: 17536)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !14, file: !15, line: 1206, baseType: !5395, size: 64, offset: 17600)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5117, line: 14, baseType: !5397)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5117, line: 12, size: 384, elements: !5398)
!5398 = !{!5399}
!5399 = !DIDerivedType(tag: DW_TAG_member, scope: !5397, file: !5117, line: 13, baseType: !5400, size: 384)
!5400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5397, file: !5117, line: 13, size: 384, elements: !5401)
!5401 = !{!5402, !5403, !5404, !5405}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5400, file: !5117, line: 13, baseType: !45, size: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5400, file: !5117, line: 13, baseType: !45, size: 32, offset: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5400, file: !5117, line: 13, baseType: !45, size: 32, offset: 64)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5400, file: !5117, line: 13, baseType: !5406, size: 256, offset: 128)
!5406 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5407, line: 37, size: 256, elements: !5408)
!5407 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5408 = !{!5409, !5414, !5427, !5433, !5442, !5469, !5474}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5406, file: !5407, line: 42, baseType: !5410, size: 64)
!5410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 39, size: 64, elements: !5411)
!5411 = !{!5412, !5413}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5410, file: !5407, line: 40, baseType: !4994, size: 32)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5410, file: !5407, line: 41, baseType: !593, size: 32, offset: 32)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5406, file: !5407, line: 50, baseType: !5415, size: 192)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 45, size: 192, elements: !5416)
!5416 = !{!5417, !5419, !5420, !5426}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5415, file: !5407, line: 46, baseType: !5418, size: 32)
!5418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !249, line: 95, baseType: !45)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5415, file: !5407, line: 47, baseType: !45, size: 32, offset: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5415, file: !5407, line: 48, baseType: !5421, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5407, line: 11, baseType: !5422)
!5422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5407, line: 8, size: 64, elements: !5423)
!5423 = !{!5424, !5425}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5422, file: !5407, line: 9, baseType: !45, size: 32)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5422, file: !5407, line: 10, baseType: !33, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5415, file: !5407, line: 49, baseType: !45, size: 32, offset: 128)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5406, file: !5407, line: 57, baseType: !5428, size: 128)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 53, size: 128, elements: !5429)
!5429 = !{!5430, !5431, !5432}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5428, file: !5407, line: 54, baseType: !4994, size: 32)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5428, file: !5407, line: 55, baseType: !593, size: 32, offset: 32)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5428, file: !5407, line: 56, baseType: !5421, size: 64, offset: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5406, file: !5407, line: 66, baseType: !5434, size: 256)
!5434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 60, size: 256, elements: !5435)
!5435 = !{!5436, !5437, !5438, !5439, !5441}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5434, file: !5407, line: 61, baseType: !4994, size: 32)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5434, file: !5407, line: 62, baseType: !593, size: 32, offset: 32)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5434, file: !5407, line: 63, baseType: !45, size: 32, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5434, file: !5407, line: 64, baseType: !5440, size: 64, offset: 128)
!5440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !249, line: 94, baseType: !1179)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5434, file: !5407, line: 65, baseType: !5440, size: 64, offset: 192)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5406, file: !5407, line: 105, baseType: !5443, size: 256)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 69, size: 256, elements: !5444)
!5444 = !{!5445, !5446}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5443, file: !5407, line: 70, baseType: !33, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, scope: !5443, file: !5407, line: 79, baseType: !5447, size: 192, offset: 64)
!5447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5443, file: !5407, line: 79, size: 192, elements: !5448)
!5448 = !{!5449, !5450, !5451, !5458, !5463}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5447, file: !5407, line: 81, baseType: !45, size: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5447, file: !5407, line: 86, baseType: !662, size: 16)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5447, file: !5407, line: 92, baseType: !5452, size: 192)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5407, line: 88, size: 192, elements: !5453)
!5453 = !{!5454, !5456, !5457}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5452, file: !5407, line: 89, baseType: !5455, size: 64)
!5455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !243)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5452, file: !5407, line: 90, baseType: !33, size: 64, offset: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5452, file: !5407, line: 91, baseType: !33, size: 64, offset: 128)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5447, file: !5407, line: 97, baseType: !5459, size: 96)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5407, line: 94, size: 96, elements: !5460)
!5460 = !{!5461, !5462}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5459, file: !5407, line: 95, baseType: !5455, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5459, file: !5407, line: 96, baseType: !27, size: 32, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5447, file: !5407, line: 103, baseType: !5464, size: 128)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5407, line: 99, size: 128, elements: !5465)
!5465 = !{!5466, !5467, !5468}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5464, file: !5407, line: 100, baseType: !22, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5464, file: !5407, line: 101, baseType: !27, size: 32, offset: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5464, file: !5407, line: 102, baseType: !27, size: 32, offset: 96)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5406, file: !5407, line: 111, baseType: !5470, size: 128)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 108, size: 128, elements: !5471)
!5471 = !{!5472, !5473}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5470, file: !5407, line: 109, baseType: !873, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5470, file: !5407, line: 110, baseType: !45, size: 32, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5406, file: !5407, line: 118, baseType: !5475, size: 128)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5406, file: !5407, line: 114, size: 128, elements: !5476)
!5476 = !{!5477, !5478, !5479}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5475, file: !5407, line: 115, baseType: !33, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5475, file: !5407, line: 116, baseType: !45, size: 32, offset: 64)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5475, file: !5407, line: 117, baseType: !29, size: 32, offset: 96)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !14, file: !15, line: 1208, baseType: !5201, size: 448, offset: 17664)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !14, file: !15, line: 1215, baseType: !96, size: 64, offset: 18112)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !14, file: !15, line: 1217, baseType: !96, size: 64, offset: 18176)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !14, file: !15, line: 1219, baseType: !96, size: 64, offset: 18240)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !14, file: !15, line: 1223, baseType: !5485, size: 64, offset: 18304)
!5485 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5486, line: 99, baseType: !5487)
!5486 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5486, line: 99, size: 64, elements: !5488)
!5488 = !{!5489}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5487, file: !5486, line: 99, baseType: !333, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !14, file: !15, line: 1225, baseType: !996, size: 32, offset: 18368)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !14, file: !15, line: 1226, baseType: !45, size: 32, offset: 18400)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !14, file: !15, line: 1227, baseType: !45, size: 32, offset: 18432)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !14, file: !15, line: 1231, baseType: !3912, size: 64, offset: 18496)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !14, file: !15, line: 1233, baseType: !101, size: 128, offset: 18560)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !14, file: !15, line: 1240, baseType: !5496, size: 64, offset: 18688)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !15, line: 62, flags: DIFlagFwdDecl)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !14, file: !15, line: 1242, baseType: !5499, size: 64, offset: 18752)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5501, line: 392, size: 96, elements: !5502)
!5501 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5502 = !{!5503, !5509, !5511}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5500, file: !5501, line: 393, baseType: !5504, size: 32)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5501, line: 388, size: 32, elements: !5505)
!5505 = !{!5506}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5504, file: !5501, line: 389, baseType: !5507, size: 32)
!5507 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5508, line: 46, baseType: !25)
!5508 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5500, file: !5501, line: 394, baseType: !5510, size: 32, offset: 32)
!5510 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5508, line: 42, baseType: !626)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5500, file: !5501, line: 395, baseType: !5507, size: 32, offset: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !14, file: !15, line: 1244, baseType: !101, size: 128, offset: 18816)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !14, file: !15, line: 1245, baseType: !5514, size: 64, offset: 18944)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !15, line: 51, flags: DIFlagFwdDecl)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !14, file: !15, line: 1246, baseType: !448, size: 256, offset: 19008)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !14, file: !15, line: 1247, baseType: !29, size: 32, offset: 19264)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !14, file: !15, line: 1250, baseType: !3154, size: 64, offset: 19328)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !14, file: !15, line: 1251, baseType: !448, size: 256, offset: 19392)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !14, file: !15, line: 1252, baseType: !101, size: 128, offset: 19648)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !14, file: !15, line: 1259, baseType: !1614, size: 64, offset: 19776)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !14, file: !15, line: 1260, baseType: !662, size: 16, offset: 19840)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !14, file: !15, line: 1261, baseType: !662, size: 16, offset: 19856)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !14, file: !15, line: 1314, baseType: !5525, size: 64, offset: 19904)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5527, line: 62, size: 256, align: 256, elements: !5528)
!5527 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5528 = !{!5529, !5530, !5531, !5532, !5533, !5534, !5535}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5526, file: !5527, line: 75, baseType: !27, size: 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5526, file: !5527, line: 90, baseType: !27, size: 32, offset: 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5526, file: !5527, line: 112, baseType: !97, size: 64, offset: 64)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5526, file: !5527, line: 132, baseType: !27, size: 32, offset: 128)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5526, file: !5527, line: 140, baseType: !27, size: 32, offset: 160)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5526, file: !5527, line: 149, baseType: !27, size: 32, offset: 192)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5526, file: !5527, line: 154, baseType: !5536, offset: 224)
!5536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !880)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !14, file: !15, line: 1315, baseType: !25, size: 32, offset: 19968)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !14, file: !15, line: 1316, baseType: !25, size: 32, offset: 20000)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !14, file: !15, line: 1321, baseType: !22, size: 64, offset: 20032)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !14, file: !15, line: 1325, baseType: !45, size: 32, offset: 20096)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !14, file: !15, line: 1326, baseType: !45, size: 32, offset: 20128)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !14, file: !15, line: 1327, baseType: !45, size: 32, offset: 20160)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !14, file: !15, line: 1328, baseType: !45, size: 32, offset: 20192)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !14, file: !15, line: 1329, baseType: !428, size: 128, align: 64, offset: 20224)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !14, file: !15, line: 1332, baseType: !5546, size: 128, offset: 20352)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5547, line: 51, size: 128, elements: !5548)
!5547 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5548 = !{!5549, !5554, !5555}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5546, file: !5547, line: 60, baseType: !5550, size: 64)
!5550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5551, line: 7, size: 64, elements: !5552)
!5551 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5552 = !{!5553}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5550, file: !5551, line: 12, baseType: !330, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5546, file: !5547, line: 63, baseType: !614, size: 8, offset: 64)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5546, file: !5547, line: 70, baseType: !614, size: 8, offset: 72)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !14, file: !15, line: 1335, baseType: !4675, size: 64, offset: 20480)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !14, file: !15, line: 1337, baseType: !5558, size: 128, offset: 20544)
!5558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5547, line: 39, size: 128, elements: !5559)
!5559 = !{!5560, !5561, !5562}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5558, file: !5547, line: 40, baseType: !1403, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5558, file: !5547, line: 42, baseType: !27, size: 32, offset: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5558, file: !5547, line: 43, baseType: !27, size: 32, offset: 96)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !14, file: !15, line: 1340, baseType: !5564, size: 64, offset: 20672)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !15, line: 69, flags: DIFlagFwdDecl)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !14, file: !15, line: 1351, baseType: !45, size: 32, offset: 20736)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !14, file: !15, line: 1352, baseType: !45, size: 32, offset: 20768)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !14, file: !15, line: 1354, baseType: !22, size: 64, offset: 20800)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !14, file: !15, line: 1364, baseType: !96, size: 64, offset: 20864)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !14, file: !15, line: 1365, baseType: !96, size: 64, offset: 20928)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !14, file: !15, line: 1412, baseType: !22, size: 64, offset: 20992)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !14, file: !15, line: 1453, baseType: !5573, size: 64, offset: 21056)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !15, line: 1453, flags: DIFlagFwdDecl)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !14, file: !15, line: 1457, baseType: !5576, size: 64, offset: 21120)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !4893, line: 61, size: 576, elements: !5578)
!5578 = !{!5579, !5586, !5605, !5608, !5609, !5642, !5652}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5577, file: !4893, line: 62, baseType: !5580, size: 32)
!5580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !4893, line: 51, baseType: !29, size: 32, elements: !5581)
!5581 = !{!5582, !5583, !5584, !5585}
!5582 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!5583 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!5584 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!5585 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!5586 = !DIDerivedType(tag: DW_TAG_member, scope: !5577, file: !4893, line: 64, baseType: !5587, size: 192, offset: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5577, file: !4893, line: 64, size: 192, elements: !5588)
!5588 = !{!5589, !5600}
!5589 = !DIDerivedType(tag: DW_TAG_member, scope: !5587, file: !4893, line: 65, baseType: !5590, size: 192)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5587, file: !4893, line: 65, size: 192, elements: !5591)
!5591 = !{!5592, !5599}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5590, file: !4893, line: 66, baseType: !5593, size: 128)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5594, line: 50, size: 128, elements: !5595)
!5594 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5595 = !{!5596, !5597, !5598}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5593, file: !5594, line: 52, baseType: !22, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5593, file: !5594, line: 54, baseType: !29, size: 32, offset: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5593, file: !5594, line: 55, baseType: !29, size: 32, offset: 96)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5590, file: !4893, line: 67, baseType: !22, size: 64, offset: 128)
!5600 = !DIDerivedType(tag: DW_TAG_member, scope: !5587, file: !4893, line: 70, baseType: !5601, size: 192)
!5601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5587, file: !4893, line: 70, size: 192, elements: !5602)
!5602 = !{!5603, !5604}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5601, file: !4893, line: 71, baseType: !428, size: 128, align: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5601, file: !4893, line: 72, baseType: !22, size: 64, offset: 128)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5577, file: !4893, line: 76, baseType: !5606, size: 64, offset: 256)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !4893, line: 76, flags: DIFlagFwdDecl)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5577, file: !4893, line: 77, baseType: !22, size: 64, offset: 320)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5577, file: !4893, line: 79, baseType: !5610, size: 64, offset: 384)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5594, line: 25, size: 256, elements: !5612)
!5612 = !{!5613, !5619, !5623}
!5613 = !DIDerivedType(tag: DW_TAG_member, scope: !5611, file: !5594, line: 26, baseType: !5614, size: 128)
!5614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5611, file: !5594, line: 26, size: 128, elements: !5615)
!5615 = !{!5616, !5618}
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5614, file: !5594, line: 27, baseType: !5617, size: 128)
!5617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !4438)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5614, file: !5594, line: 28, baseType: !5617, size: 128)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5611, file: !5594, line: 31, baseType: !5620, size: 64, offset: 128)
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5621, size: 64)
!5621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5622)
!5622 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5594, line: 23, flags: DIFlagFwdDecl)
!5623 = !DIDerivedType(tag: DW_TAG_member, scope: !5611, file: !5594, line: 33, baseType: !5624, size: 64, offset: 192)
!5624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5611, file: !5594, line: 33, size: 64, elements: !5625)
!5625 = !{!5626, !5632, !5637}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5624, file: !5594, line: 38, baseType: !5627, size: 64)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5624, file: !5594, line: 34, size: 64, elements: !5628)
!5628 = !{!5629, !5630, !5631}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5627, file: !5594, line: 35, baseType: !626, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5627, file: !5594, line: 36, baseType: !216, size: 8, offset: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5627, file: !5594, line: 37, baseType: !216, size: 8, offset: 40)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5624, file: !5594, line: 42, baseType: !5633, size: 16)
!5633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5624, file: !5594, line: 39, size: 16, elements: !5634)
!5634 = !{!5635, !5636}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5633, file: !5594, line: 40, baseType: !216, size: 8)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5633, file: !5594, line: 41, baseType: !216, size: 8, offset: 8)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5624, file: !5594, line: 46, baseType: !5638, size: 16)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5624, file: !5594, line: 43, size: 16, elements: !5639)
!5639 = !{!5640, !5641}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5638, file: !5594, line: 44, baseType: !216, size: 8)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5638, file: !5594, line: 45, baseType: !216, size: 8, offset: 8)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5577, file: !4893, line: 81, baseType: !5643, size: 64, offset: 448)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !4893, line: 85, size: 384, elements: !5645)
!5645 = !{!5646, !5647, !5648, !5649, !5650, !5651}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5644, file: !4893, line: 86, baseType: !5606, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5644, file: !4893, line: 87, baseType: !22, size: 64, offset: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5644, file: !4893, line: 88, baseType: !22, size: 64, offset: 128)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5644, file: !4893, line: 89, baseType: !22, size: 64, offset: 192)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5644, file: !4893, line: 90, baseType: !614, size: 8, offset: 256)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5644, file: !4893, line: 92, baseType: !5643, size: 64, offset: 320)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5577, file: !4893, line: 82, baseType: !29, size: 32, offset: 512)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !14, file: !15, line: 1463, baseType: !5654, offset: 21184)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !15, line: 739, elements: !412)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !14, file: !15, line: 1470, baseType: !428, size: 128, align: 64, offset: 21184)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !14, file: !15, line: 1471, baseType: !35, size: 32, offset: 21312)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !14, file: !15, line: 1472, baseType: !45, size: 32, offset: 21344)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !14, file: !15, line: 1474, baseType: !13, size: 64, offset: 21376)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !14, file: !15, line: 1475, baseType: !2409, size: 320, offset: 21440)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !14, file: !15, line: 1478, baseType: !5661, size: 64, offset: 21760)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !15, line: 1478, flags: DIFlagFwdDecl)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !14, file: !15, line: 1482, baseType: !35, size: 32, offset: 21824)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !14, file: !15, line: 1489, baseType: !33, size: 64, offset: 21888)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !14, file: !15, line: 1504, baseType: !33, size: 64, offset: 21952)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !14, file: !15, line: 1505, baseType: !97, size: 64, offset: 22016)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !14, file: !15, line: 1506, baseType: !96, size: 64, offset: 22080)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !14, file: !15, line: 1507, baseType: !97, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !14, file: !15, line: 1508, baseType: !97, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !14, file: !15, line: 1509, baseType: !97, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !14, file: !15, line: 1510, baseType: !428, size: 128, align: 64, offset: 22208)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !14, file: !15, line: 1511, baseType: !45, size: 32, offset: 22336)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !14, file: !15, line: 1515, baseType: !5674, size: 64, offset: 22400)
!5674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !55, line: 56, size: 64, elements: !5675)
!5675 = !{!5676}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5674, file: !55, line: 57, baseType: !58, size: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !14, file: !15, line: 1518, baseType: !5674, size: 64, offset: 22464)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !14, file: !15, line: 1528, baseType: !428, size: 128, align: 64, offset: 22528)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !14, file: !15, line: 1552, baseType: !5680, size: 35328, offset: 23040)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5681, line: 430, size: 35328, elements: !5682)
!5681 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5682 = !{!5683, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5710, !5711, !5712, !5713, !5714, !5715, !5718, !5719, !5720, !5721}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5680, file: !5681, line: 432, baseType: !5684, size: 192)
!5684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5685, size: 192, elements: !486)
!5685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5686, line: 16, size: 64, elements: !5687)
!5686 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5687 = !{!5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5685, file: !5686, line: 17, baseType: !65, size: 16)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5685, file: !5686, line: 18, baseType: !65, size: 16, offset: 16)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5685, file: !5686, line: 19, baseType: !65, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5685, file: !5686, line: 19, baseType: !65, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5685, file: !5686, line: 19, baseType: !65, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5685, file: !5686, line: 19, baseType: !65, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5685, file: !5686, line: 19, baseType: !65, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5685, file: !5686, line: 20, baseType: !65, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5685, file: !5686, line: 20, baseType: !65, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5685, file: !5686, line: 20, baseType: !65, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5685, file: !5686, line: 20, baseType: !65, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5685, file: !5686, line: 20, baseType: !65, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5685, file: !5686, line: 20, baseType: !65, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5680, file: !5681, line: 436, baseType: !22, size: 64, offset: 192)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5680, file: !5681, line: 440, baseType: !67, size: 16, offset: 256)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5680, file: !5681, line: 441, baseType: !67, size: 16, offset: 272)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5680, file: !5681, line: 442, baseType: !67, size: 16, offset: 288)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5680, file: !5681, line: 443, baseType: !67, size: 16, offset: 304)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5680, file: !5681, line: 447, baseType: !22, size: 64, offset: 320)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5680, file: !5681, line: 448, baseType: !22, size: 64, offset: 384)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5680, file: !5681, line: 459, baseType: !5709, size: 256, offset: 448)
!5709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 256, elements: !508)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5680, file: !5681, line: 461, baseType: !22, size: 64, offset: 704)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5680, file: !5681, line: 463, baseType: !22, size: 64, offset: 768)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5680, file: !5681, line: 465, baseType: !22, size: 64, offset: 832)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5680, file: !5681, line: 466, baseType: !22, size: 64, offset: 896)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5680, file: !5681, line: 467, baseType: !22, size: 64, offset: 960)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5680, file: !5681, line: 473, baseType: !5716, size: 64, offset: 1024)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5681, line: 10, flags: DIFlagFwdDecl)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5680, file: !5681, line: 480, baseType: !22, size: 64, offset: 1088)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5680, file: !5681, line: 482, baseType: !29, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5680, file: !5681, line: 491, baseType: !25, size: 32, offset: 1184)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5680, file: !5681, line: 501, baseType: !5722, size: 33792, offset: 1536)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5723, line: 448, size: 33792, elements: !5724)
!5723 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5724 = !{!5725, !5726, !5727, !5835, !5836, !5842, !5843}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5722, file: !5723, line: 461, baseType: !29, size: 32)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5722, file: !5723, line: 468, baseType: !22, size: 64, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5722, file: !5723, line: 476, baseType: !5728, size: 64, offset: 128)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5723, line: 356, size: 33280, align: 512, elements: !5730)
!5730 = !{!5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5729, file: !5723, line: 358, baseType: !29, size: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5729, file: !5723, line: 361, baseType: !29, size: 32, offset: 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5729, file: !5723, line: 364, baseType: !96, size: 64, offset: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5729, file: !5723, line: 367, baseType: !96, size: 64, offset: 128)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5729, file: !5723, line: 370, baseType: !96, size: 64, offset: 192)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5729, file: !5723, line: 373, baseType: !29, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5729, file: !5723, line: 376, baseType: !29, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5729, file: !5723, line: 391, baseType: !29, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5729, file: !5723, line: 394, baseType: !29, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5729, file: !5723, line: 397, baseType: !5741, size: 32768, offset: 512)
!5741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5723, line: 348, size: 32768, elements: !5742)
!5742 = !{!5743, !5758, !5795, !5820, !5833}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5741, file: !5723, line: 349, baseType: !5744, size: 896)
!5744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5723, line: 12, size: 896, elements: !5745)
!5745 = !{!5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5757}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5744, file: !5723, line: 13, baseType: !25, size: 32)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5744, file: !5723, line: 14, baseType: !25, size: 32, offset: 32)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5744, file: !5723, line: 15, baseType: !25, size: 32, offset: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5744, file: !5723, line: 16, baseType: !25, size: 32, offset: 96)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5744, file: !5723, line: 17, baseType: !25, size: 32, offset: 128)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5744, file: !5723, line: 18, baseType: !25, size: 32, offset: 160)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5744, file: !5723, line: 19, baseType: !25, size: 32, offset: 192)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5744, file: !5723, line: 22, baseType: !5754, size: 640, offset: 224)
!5754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !5755)
!5755 = !{!5756}
!5756 = !DISubrange(count: 20)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5744, file: !5723, line: 25, baseType: !25, size: 32, offset: 864)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5741, file: !5723, line: 350, baseType: !5759, size: 4096, align: 128)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5723, line: 34, size: 4096, align: 128, elements: !5760)
!5760 = !{!5761, !5762, !5763, !5764, !5765, !5780, !5781, !5782, !5784, !5786, !5790}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5759, file: !5723, line: 35, baseType: !65, size: 16)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5759, file: !5723, line: 36, baseType: !65, size: 16, offset: 16)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5759, file: !5723, line: 37, baseType: !65, size: 16, offset: 32)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5759, file: !5723, line: 38, baseType: !65, size: 16, offset: 48)
!5765 = !DIDerivedType(tag: DW_TAG_member, scope: !5759, file: !5723, line: 39, baseType: !5766, size: 128, offset: 64)
!5766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5759, file: !5723, line: 39, size: 128, elements: !5767)
!5767 = !{!5768, !5773}
!5768 = !DIDerivedType(tag: DW_TAG_member, scope: !5766, file: !5723, line: 40, baseType: !5769, size: 128)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5766, file: !5723, line: 40, size: 128, elements: !5770)
!5770 = !{!5771, !5772}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5769, file: !5723, line: 41, baseType: !96, size: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5769, file: !5723, line: 42, baseType: !96, size: 64, offset: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, scope: !5766, file: !5723, line: 44, baseType: !5774, size: 128)
!5774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5766, file: !5723, line: 44, size: 128, elements: !5775)
!5775 = !{!5776, !5777, !5778, !5779}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5774, file: !5723, line: 45, baseType: !25, size: 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5774, file: !5723, line: 46, baseType: !25, size: 32, offset: 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5774, file: !5723, line: 47, baseType: !25, size: 32, offset: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5774, file: !5723, line: 48, baseType: !25, size: 32, offset: 96)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5759, file: !5723, line: 51, baseType: !25, size: 32, offset: 192)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5759, file: !5723, line: 52, baseType: !25, size: 32, offset: 224)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5759, file: !5723, line: 55, baseType: !5783, size: 1024, offset: 256)
!5783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1024, elements: !4429)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5759, file: !5723, line: 58, baseType: !5785, size: 2048, offset: 1280)
!5785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !1322)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5759, file: !5723, line: 60, baseType: !5787, size: 384, offset: 3328)
!5787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 384, elements: !5788)
!5788 = !{!5789}
!5789 = !DISubrange(count: 12)
!5790 = !DIDerivedType(tag: DW_TAG_member, scope: !5759, file: !5723, line: 62, baseType: !5791, size: 384, offset: 3712)
!5791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5759, file: !5723, line: 62, size: 384, elements: !5792)
!5792 = !{!5793, !5794}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5791, file: !5723, line: 63, baseType: !5787, size: 384)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5791, file: !5723, line: 64, baseType: !5787, size: 384)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5741, file: !5723, line: 351, baseType: !5796, size: 1088)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5723, line: 79, size: 1088, elements: !5797)
!5797 = !{!5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5819}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5796, file: !5723, line: 80, baseType: !25, size: 32)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5796, file: !5723, line: 81, baseType: !25, size: 32, offset: 32)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5796, file: !5723, line: 82, baseType: !25, size: 32, offset: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5796, file: !5723, line: 83, baseType: !25, size: 32, offset: 96)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5796, file: !5723, line: 84, baseType: !25, size: 32, offset: 128)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5796, file: !5723, line: 85, baseType: !25, size: 32, offset: 160)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5796, file: !5723, line: 86, baseType: !25, size: 32, offset: 192)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5796, file: !5723, line: 88, baseType: !5754, size: 640, offset: 224)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5796, file: !5723, line: 89, baseType: !216, size: 8, offset: 864)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5796, file: !5723, line: 90, baseType: !216, size: 8, offset: 872)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5796, file: !5723, line: 91, baseType: !216, size: 8, offset: 880)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5796, file: !5723, line: 92, baseType: !216, size: 8, offset: 888)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5796, file: !5723, line: 93, baseType: !216, size: 8, offset: 896)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5796, file: !5723, line: 94, baseType: !216, size: 8, offset: 904)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5796, file: !5723, line: 95, baseType: !5813, size: 64, offset: 960)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5815, line: 11, size: 128, elements: !5816)
!5815 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5816 = !{!5817, !5818}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5814, file: !5815, line: 12, baseType: !873, size: 64)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5814, file: !5815, line: 13, baseType: !3686, size: 64, offset: 64)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5796, file: !5723, line: 96, baseType: !25, size: 32, offset: 1024)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5741, file: !5723, line: 352, baseType: !5821, size: 4608, align: 512)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5723, line: 333, size: 4608, align: 512, elements: !5822)
!5822 = !{!5823, !5824, !5831}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5821, file: !5723, line: 334, baseType: !5759, size: 4096, align: 128)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5821, file: !5723, line: 335, baseType: !5825, size: 512, offset: 4096)
!5825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5723, line: 312, size: 512, elements: !5826)
!5826 = !{!5827, !5828, !5829}
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5825, file: !5723, line: 313, baseType: !96, size: 64)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5825, file: !5723, line: 314, baseType: !96, size: 64, offset: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5825, file: !5723, line: 315, baseType: !5830, size: 384, offset: 128)
!5830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 384, elements: !680)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5821, file: !5723, line: 336, baseType: !5832, offset: 4608)
!5832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, elements: !880)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5741, file: !5723, line: 353, baseType: !5834, size: 32768)
!5834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 32768, elements: !2656)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5722, file: !5723, line: 484, baseType: !5728, size: 64, offset: 192)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5722, file: !5723, line: 491, baseType: !5837, size: 128, offset: 256)
!5837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5723, line: 404, size: 128, elements: !5838)
!5838 = !{!5839, !5840, !5841}
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5837, file: !5723, line: 424, baseType: !96, size: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5837, file: !5723, line: 432, baseType: !29, size: 32, offset: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5837, file: !5723, line: 440, baseType: !29, size: 32, offset: 96)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5722, file: !5723, line: 498, baseType: !5837, size: 128, offset: 384)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5722, file: !5723, line: 508, baseType: !5729, size: 33280, align: 512, offset: 512)
!5844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !5845, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.process_vm_access.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/process_vm_access\22 -D KBUILD_BASENAME=\22process_vm_access\22 -D KBUILD_MODNAME=\22process_vm_access\22 -D __KBUILD_MODNAME=kmod_process_vm_access -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/process_vm_access.ll mm/process_vm_access.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5846, retainedTypes: !5883, globals: !5886, splitDebugInlining: false, nameTableKind: None)
!5845 = !DIFile(filename: "mm/process_vm_access.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f7f72639470098ab892a881798204f3")
!5846 = !{!185, !785, !883, !1264, !1490, !1636, !1908, !1978, !2505, !2618, !2825, !2887, !2964, !2972, !3103, !3113, !3119, !3127, !3303, !4091, !4160, !4952, !5580, !5847, !5852, !5861, !5876}
!5847 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5848, line: 10, baseType: !29, size: 32, elements: !5849)
!5848 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5849 = !{!5850, !5851}
!5850 = !DIEnumerator(name: "false", value: 0)
!5851 = !DIEnumerator(name: "true", value: 1)
!5852 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !29, size: 32, elements: !5853)
!5853 = !{!5854, !5855, !5856, !5857, !5858, !5859, !5860}
!5854 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5855 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5856 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5857 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5858 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5859 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5860 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5861 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 1390, baseType: !29, size: 32, elements: !5862)
!5862 = !{!5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875}
!5863 = !DIEnumerator(name: "FOLL_WRITE", value: 1)
!5864 = !DIEnumerator(name: "FOLL_GET", value: 2)
!5865 = !DIEnumerator(name: "FOLL_DUMP", value: 4)
!5866 = !DIEnumerator(name: "FOLL_FORCE", value: 8)
!5867 = !DIEnumerator(name: "FOLL_NOWAIT", value: 16)
!5868 = !DIEnumerator(name: "FOLL_NOFAULT", value: 32)
!5869 = !DIEnumerator(name: "FOLL_HWPOISON", value: 64)
!5870 = !DIEnumerator(name: "FOLL_ANON", value: 128)
!5871 = !DIEnumerator(name: "FOLL_LONGTERM", value: 256)
!5872 = !DIEnumerator(name: "FOLL_SPLIT_PMD", value: 512)
!5873 = !DIEnumerator(name: "FOLL_PCI_P2PDMA", value: 1024)
!5874 = !DIEnumerator(name: "FOLL_INTERRUPTIBLE", value: 2048)
!5875 = !DIEnumerator(name: "FOLL_HONOR_NUMA_FAULT", value: 4096)
!5876 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !36, line: 119, baseType: !29, size: 32, elements: !5877)
!5877 = !{!5878, !5879, !5880, !5881, !5882}
!5878 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!5879 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!5880 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!5881 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!5882 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!5883 = !{!29, !4993, !1882, !22, !45, !5884, !5885, !33, !13, !873, !795, !539}
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!5885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!5886 = !{!0, !7}
!5887 = !{!5888}
!5888 = !DILocalVariable(name: "t", arg: 1, scope: !9, file: !10, line: 124, type: !13)
!5889 = !{i32 7, !"Dwarf Version", i32 5}
!5890 = !{i32 2, !"Debug Info Version", i32 3}
!5891 = !{i32 1, !"wchar_size", i32 2}
!5892 = !{i32 8, !"cf-protection-branch", i32 1}
!5893 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5894 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5895 = !{i32 1, !"Code Model", i32 2}
!5896 = !{i32 1, !"override-stack-alignment", i32 8}
!5897 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5898 = distinct !DISubprogram(name: "__x64_sys_process_vm_readv", scope: !5845, file: !5845, line: 291, type: !5899, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5903)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!873, !5901}
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5902, size: 64)
!5902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3687)
!5903 = !{!5904}
!5904 = !DILocalVariable(name: "regs", arg: 1, scope: !5898, file: !5845, line: 291, type: !5901)
!5905 = !DILocation(line: 291, column: 1, scope: !5898)
!5906 = distinct !DISubprogram(name: "__se_sys_process_vm_readv", scope: !5845, file: !5845, line: 291, type: !5907, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!873, !873, !873, !873, !873, !873, !873}
!5909 = !{!5910, !5911, !5912, !5913, !5914, !5915, !5916}
!5910 = !DILocalVariable(name: "pid", arg: 1, scope: !5906, file: !5845, line: 291, type: !873)
!5911 = !DILocalVariable(name: "lvec", arg: 2, scope: !5906, file: !5845, line: 291, type: !873)
!5912 = !DILocalVariable(name: "liovcnt", arg: 3, scope: !5906, file: !5845, line: 291, type: !873)
!5913 = !DILocalVariable(name: "rvec", arg: 4, scope: !5906, file: !5845, line: 291, type: !873)
!5914 = !DILocalVariable(name: "riovcnt", arg: 5, scope: !5906, file: !5845, line: 291, type: !873)
!5915 = !DILocalVariable(name: "flags", arg: 6, scope: !5906, file: !5845, line: 291, type: !873)
!5916 = !DILocalVariable(name: "ret", scope: !5906, file: !5845, line: 291, type: !873)
!5917 = !DILocation(line: 291, column: 1, scope: !5906)
!5918 = !DILocation(line: 291, column: 1, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5906, file: !5845, line: 291, column: 1)
!5920 = distinct !DISubprogram(name: "__ia32_sys_process_vm_readv", scope: !5845, file: !5845, line: 291, type: !5899, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5921)
!5921 = !{!5922}
!5922 = !DILocalVariable(name: "regs", arg: 1, scope: !5920, file: !5845, line: 291, type: !5901)
!5923 = !DILocation(line: 291, column: 1, scope: !5920)
!5924 = distinct !DISubprogram(name: "__x64_sys_process_vm_writev", scope: !5845, file: !5845, line: 298, type: !5899, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5925)
!5925 = !{!5926}
!5926 = !DILocalVariable(name: "regs", arg: 1, scope: !5924, file: !5845, line: 298, type: !5901)
!5927 = !DILocation(line: 298, column: 1, scope: !5924)
!5928 = distinct !DISubprogram(name: "__se_sys_process_vm_writev", scope: !5845, file: !5845, line: 298, type: !5907, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5929)
!5929 = !{!5930, !5931, !5932, !5933, !5934, !5935, !5936}
!5930 = !DILocalVariable(name: "pid", arg: 1, scope: !5928, file: !5845, line: 298, type: !873)
!5931 = !DILocalVariable(name: "lvec", arg: 2, scope: !5928, file: !5845, line: 298, type: !873)
!5932 = !DILocalVariable(name: "liovcnt", arg: 3, scope: !5928, file: !5845, line: 298, type: !873)
!5933 = !DILocalVariable(name: "rvec", arg: 4, scope: !5928, file: !5845, line: 298, type: !873)
!5934 = !DILocalVariable(name: "riovcnt", arg: 5, scope: !5928, file: !5845, line: 298, type: !873)
!5935 = !DILocalVariable(name: "flags", arg: 6, scope: !5928, file: !5845, line: 298, type: !873)
!5936 = !DILocalVariable(name: "ret", scope: !5928, file: !5845, line: 298, type: !873)
!5937 = !DILocation(line: 298, column: 1, scope: !5928)
!5938 = !DILocation(line: 298, column: 1, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5928, file: !5845, line: 298, column: 1)
!5940 = distinct !DISubprogram(name: "__ia32_sys_process_vm_writev", scope: !5845, file: !5845, line: 298, type: !5899, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5941)
!5941 = !{!5942}
!5942 = !DILocalVariable(name: "regs", arg: 1, scope: !5940, file: !5845, line: 298, type: !5901)
!5943 = !DILocation(line: 298, column: 1, scope: !5940)
!5944 = distinct !DISubprogram(name: "__do_sys_process_vm_readv", scope: !5845, file: !5845, line: 291, type: !5945, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5947)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!873, !4993, !1882, !22, !1882, !22, !22}
!5947 = !{!5948, !5949, !5950, !5951, !5952, !5953}
!5948 = !DILocalVariable(name: "pid", arg: 1, scope: !5944, file: !5845, line: 291, type: !4993)
!5949 = !DILocalVariable(name: "lvec", arg: 2, scope: !5944, file: !5845, line: 291, type: !1882)
!5950 = !DILocalVariable(name: "liovcnt", arg: 3, scope: !5944, file: !5845, line: 291, type: !22)
!5951 = !DILocalVariable(name: "rvec", arg: 4, scope: !5944, file: !5845, line: 291, type: !1882)
!5952 = !DILocalVariable(name: "riovcnt", arg: 5, scope: !5944, file: !5845, line: 291, type: !22)
!5953 = !DILocalVariable(name: "flags", arg: 6, scope: !5944, file: !5845, line: 291, type: !22)
!5954 = !DILocation(line: 291, column: 1, scope: !5944)
!5955 = !DILocation(line: 295, column: 23, scope: !5944)
!5956 = !DILocation(line: 295, column: 28, scope: !5944)
!5957 = !DILocation(line: 295, column: 34, scope: !5944)
!5958 = !DILocation(line: 295, column: 43, scope: !5944)
!5959 = !DILocation(line: 295, column: 49, scope: !5944)
!5960 = !DILocation(line: 295, column: 58, scope: !5944)
!5961 = !DILocation(line: 295, column: 9, scope: !5944)
!5962 = !DILocation(line: 295, column: 2, scope: !5944)
!5963 = distinct !DISubprogram(name: "process_vm_rw", scope: !5845, file: !5845, line: 253, type: !5964, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !5966)
!5964 = !DISubroutineType(types: !5965)
!5965 = !{!1177, !4993, !1882, !22, !1882, !22, !22, !45}
!5966 = !{!5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5976, !5977, !5979, !5980, !5981, !5982, !5983}
!5967 = !DILocalVariable(name: "pid", arg: 1, scope: !5963, file: !5845, line: 253, type: !4993)
!5968 = !DILocalVariable(name: "lvec", arg: 2, scope: !5963, file: !5845, line: 254, type: !1882)
!5969 = !DILocalVariable(name: "liovcnt", arg: 3, scope: !5963, file: !5845, line: 255, type: !22)
!5970 = !DILocalVariable(name: "rvec", arg: 4, scope: !5963, file: !5845, line: 256, type: !1882)
!5971 = !DILocalVariable(name: "riovcnt", arg: 5, scope: !5963, file: !5845, line: 257, type: !22)
!5972 = !DILocalVariable(name: "flags", arg: 6, scope: !5963, file: !5845, line: 258, type: !22)
!5973 = !DILocalVariable(name: "vm_write", arg: 7, scope: !5963, file: !5845, line: 258, type: !45)
!5974 = !DILocalVariable(name: "iovstack_l", scope: !5963, file: !5845, line: 260, type: !5975)
!5975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 1024, elements: !243)
!5976 = !DILocalVariable(name: "iovstack_r", scope: !5963, file: !5845, line: 261, type: !5975)
!5977 = !DILocalVariable(name: "iov_l", scope: !5963, file: !5845, line: 262, type: !5978)
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!5979 = !DILocalVariable(name: "iov_r", scope: !5963, file: !5845, line: 263, type: !5978)
!5980 = !DILocalVariable(name: "iter", scope: !5963, file: !5845, line: 264, type: !1853)
!5981 = !DILocalVariable(name: "rc", scope: !5963, file: !5845, line: 265, type: !1177)
!5982 = !DILocalVariable(name: "dir", scope: !5963, file: !5845, line: 266, type: !45)
!5983 = !DILabel(scope: !5963, name: "free_iov_l", file: !5845, line: 286)
!5984 = !DILocation(line: 253, column: 36, scope: !5963)
!5985 = !DILocation(line: 254, column: 36, scope: !5963)
!5986 = !DILocation(line: 255, column: 23, scope: !5963)
!5987 = !DILocation(line: 256, column: 36, scope: !5963)
!5988 = !DILocation(line: 257, column: 23, scope: !5963)
!5989 = !DILocation(line: 258, column: 23, scope: !5963)
!5990 = !DILocation(line: 258, column: 34, scope: !5963)
!5991 = !DILocation(line: 260, column: 2, scope: !5963)
!5992 = !DILocation(line: 260, column: 15, scope: !5963)
!5993 = !DILocation(line: 261, column: 2, scope: !5963)
!5994 = !DILocation(line: 261, column: 15, scope: !5963)
!5995 = !DILocation(line: 262, column: 2, scope: !5963)
!5996 = !DILocation(line: 262, column: 16, scope: !5963)
!5997 = !DILocation(line: 262, column: 24, scope: !5963)
!5998 = !DILocation(line: 263, column: 2, scope: !5963)
!5999 = !DILocation(line: 263, column: 16, scope: !5963)
!6000 = !DILocation(line: 264, column: 2, scope: !5963)
!6001 = !DILocation(line: 264, column: 18, scope: !5963)
!6002 = !DILocation(line: 265, column: 2, scope: !5963)
!6003 = !DILocation(line: 265, column: 10, scope: !5963)
!6004 = !DILocation(line: 266, column: 2, scope: !5963)
!6005 = !DILocation(line: 266, column: 6, scope: !5963)
!6006 = !DILocation(line: 266, column: 12, scope: !5963)
!6007 = !DILocation(line: 268, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5963, file: !5845, line: 268, column: 6)
!6009 = !DILocation(line: 268, column: 12, scope: !6008)
!6010 = !DILocation(line: 268, column: 6, scope: !5963)
!6011 = !DILocation(line: 269, column: 3, scope: !6008)
!6012 = !DILocation(line: 272, column: 20, scope: !5963)
!6013 = !DILocation(line: 272, column: 25, scope: !5963)
!6014 = !DILocation(line: 272, column: 31, scope: !5963)
!6015 = !DILocation(line: 272, column: 7, scope: !5963)
!6016 = !DILocation(line: 272, column: 5, scope: !5963)
!6017 = !DILocation(line: 273, column: 6, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !5963, file: !5845, line: 273, column: 6)
!6019 = !DILocation(line: 273, column: 9, scope: !6018)
!6020 = !DILocation(line: 273, column: 6, scope: !5963)
!6021 = !DILocation(line: 274, column: 10, scope: !6018)
!6022 = !DILocation(line: 274, column: 3, scope: !6018)
!6023 = !DILocation(line: 275, column: 7, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5963, file: !5845, line: 275, column: 6)
!6025 = !DILocation(line: 275, column: 6, scope: !5963)
!6026 = !DILocation(line: 276, column: 3, scope: !6024)
!6027 = !DILocation(line: 277, column: 26, scope: !5963)
!6028 = !DILocation(line: 277, column: 32, scope: !5963)
!6029 = !DILocation(line: 277, column: 54, scope: !5963)
!6030 = !DILocation(line: 278, column: 5, scope: !5963)
!6031 = !DILocation(line: 277, column: 10, scope: !5963)
!6032 = !DILocation(line: 277, column: 8, scope: !5963)
!6033 = !DILocation(line: 279, column: 13, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5963, file: !5845, line: 279, column: 6)
!6035 = !DILocation(line: 279, column: 6, scope: !6034)
!6036 = !DILocation(line: 279, column: 6, scope: !5963)
!6037 = !DILocation(line: 280, column: 16, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6034, file: !5845, line: 279, column: 21)
!6039 = !DILocation(line: 280, column: 8, scope: !6038)
!6040 = !DILocation(line: 280, column: 6, scope: !6038)
!6041 = !DILocation(line: 281, column: 3, scope: !6038)
!6042 = !DILocation(line: 283, column: 26, scope: !5963)
!6043 = !DILocation(line: 283, column: 38, scope: !5963)
!6044 = !DILocation(line: 283, column: 45, scope: !5963)
!6045 = !DILocation(line: 283, column: 54, scope: !5963)
!6046 = !DILocation(line: 283, column: 61, scope: !5963)
!6047 = !DILocation(line: 283, column: 7, scope: !5963)
!6048 = !DILocation(line: 283, column: 5, scope: !5963)
!6049 = !DILocation(line: 284, column: 6, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !5963, file: !5845, line: 284, column: 6)
!6051 = !DILocation(line: 284, column: 15, scope: !6050)
!6052 = !DILocation(line: 284, column: 12, scope: !6050)
!6053 = !DILocation(line: 284, column: 6, scope: !5963)
!6054 = !DILocation(line: 285, column: 9, scope: !6050)
!6055 = !DILocation(line: 285, column: 3, scope: !6050)
!6056 = !DILocation(line: 286, column: 1, scope: !5963)
!6057 = !DILocation(line: 287, column: 8, scope: !5963)
!6058 = !DILocation(line: 287, column: 2, scope: !5963)
!6059 = !DILocation(line: 288, column: 9, scope: !5963)
!6060 = !DILocation(line: 288, column: 2, scope: !5963)
!6061 = !DILocation(line: 289, column: 1, scope: !5963)
!6062 = !DISubprogram(name: "import_iovec", scope: !1854, file: !1854, line: 369, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!1177, !45, !1882, !29, !29, !6065, !1852}
!6065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5978, size: 64)
!6066 = distinct !DISubprogram(name: "iov_iter_count", scope: !1854, file: !1854, line: 296, type: !6067, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6071)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{!795, !6069}
!6069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6070, size: 64)
!6070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!6071 = !{!6072}
!6072 = !DILocalVariable(name: "i", arg: 1, scope: !6066, file: !1854, line: 296, type: !6069)
!6073 = !DILocation(line: 296, column: 60, scope: !6066)
!6074 = !DILocation(line: 298, column: 9, scope: !6066)
!6075 = !DILocation(line: 298, column: 12, scope: !6066)
!6076 = !DILocation(line: 298, column: 2, scope: !6066)
!6077 = !DISubprogram(name: "iovec_from_user", scope: !1854, file: !1854, line: 366, type: !6078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!5978, !1882, !22, !22, !5978, !614}
!6080 = distinct !DISubprogram(name: "in_compat_syscall", scope: !6081, file: !6081, line: 98, type: !1985, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844)
!6081 = !DIFile(filename: "./arch/x86/include/asm/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13e4bbbeecac635d510b530a702cc1fd")
!6082 = !DILocation(line: 100, column: 9, scope: !6080)
!6083 = !DILocation(line: 100, column: 2, scope: !6080)
!6084 = distinct !DISubprogram(name: "IS_ERR", scope: !6085, file: !6085, line: 59, type: !6086, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6088)
!6085 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!614, !1995}
!6088 = !{!6089}
!6089 = !DILocalVariable(name: "ptr", arg: 1, scope: !6084, file: !6085, line: 59, type: !1995)
!6090 = !DILocation(line: 59, column: 60, scope: !6084)
!6091 = !DILocation(line: 61, column: 9, scope: !6084)
!6092 = !DILocation(line: 61, column: 2, scope: !6084)
!6093 = distinct !DISubprogram(name: "PTR_ERR", scope: !6085, file: !6085, line: 49, type: !6094, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6096)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!873, !1995}
!6096 = !{!6097}
!6097 = !DILocalVariable(name: "ptr", arg: 1, scope: !6093, file: !6085, line: 49, type: !1995)
!6098 = !DILocation(line: 49, column: 61, scope: !6093)
!6099 = !DILocation(line: 51, column: 16, scope: !6093)
!6100 = !DILocation(line: 51, column: 9, scope: !6093)
!6101 = !DILocation(line: 51, column: 2, scope: !6093)
!6102 = distinct !DISubprogram(name: "process_vm_rw_core", scope: !5845, file: !5845, line: 150, type: !6103, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6105)
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!1177, !4993, !1852, !1882, !22, !22, !45}
!6105 = !{!6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6130, !6131, !6135, !6136, !6137}
!6106 = !DILocalVariable(name: "pid", arg: 1, scope: !6102, file: !5845, line: 150, type: !4993)
!6107 = !DILocalVariable(name: "iter", arg: 2, scope: !6102, file: !5845, line: 150, type: !1852)
!6108 = !DILocalVariable(name: "rvec", arg: 3, scope: !6102, file: !5845, line: 151, type: !1882)
!6109 = !DILocalVariable(name: "riovcnt", arg: 4, scope: !6102, file: !5845, line: 152, type: !22)
!6110 = !DILocalVariable(name: "flags", arg: 5, scope: !6102, file: !5845, line: 153, type: !22)
!6111 = !DILocalVariable(name: "vm_write", arg: 6, scope: !6102, file: !5845, line: 153, type: !45)
!6112 = !DILocalVariable(name: "task", scope: !6102, file: !5845, line: 155, type: !13)
!6113 = !DILocalVariable(name: "pp_stack", scope: !6102, file: !5845, line: 156, type: !6114)
!6114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1403, size: 1024, elements: !4438)
!6115 = !DILocalVariable(name: "process_pages", scope: !6102, file: !5845, line: 157, type: !1803)
!6116 = !DILocalVariable(name: "mm", scope: !6102, file: !5845, line: 158, type: !382)
!6117 = !DILocalVariable(name: "i", scope: !6102, file: !5845, line: 159, type: !22)
!6118 = !DILocalVariable(name: "rc", scope: !6102, file: !5845, line: 160, type: !1177)
!6119 = !DILocalVariable(name: "nr_pages", scope: !6102, file: !5845, line: 161, type: !22)
!6120 = !DILocalVariable(name: "nr_pages_iov", scope: !6102, file: !5845, line: 162, type: !22)
!6121 = !DILocalVariable(name: "iov_len", scope: !6102, file: !5845, line: 163, type: !1177)
!6122 = !DILocalVariable(name: "total_len", scope: !6102, file: !5845, line: 164, type: !795)
!6123 = !DILocalVariable(name: "__UNIQUE_ID___x343", scope: !6124, file: !5845, line: 177, type: !22)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !5845, line: 177, column: 15)
!6125 = distinct !DILexicalBlock(scope: !6126, file: !5845, line: 172, column: 20)
!6126 = distinct !DILexicalBlock(scope: !6127, file: !5845, line: 172, column: 7)
!6127 = distinct !DILexicalBlock(scope: !6128, file: !5845, line: 170, column: 32)
!6128 = distinct !DILexicalBlock(scope: !6129, file: !5845, line: 170, column: 2)
!6129 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 170, column: 2)
!6130 = !DILocalVariable(name: "__UNIQUE_ID___y344", scope: !6124, file: !5845, line: 177, type: !22)
!6131 = !DILocalVariable(name: "__UNIQUE_ID___x345", scope: !6132, file: !5845, line: 187, type: !795)
!6132 = distinct !DILexicalBlock(scope: !6133, file: !5845, line: 187, column: 27)
!6133 = distinct !DILexicalBlock(scope: !6134, file: !5845, line: 184, column: 41)
!6134 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 184, column: 6)
!6135 = !DILocalVariable(name: "__UNIQUE_ID___y346", scope: !6132, file: !5845, line: 187, type: !795)
!6136 = !DILabel(scope: !6102, name: "put_task_struct", file: !5845, line: 230)
!6137 = !DILabel(scope: !6102, name: "free_proc_pages", file: !5845, line: 233)
!6138 = !DILocation(line: 150, column: 41, scope: !6102)
!6139 = !DILocation(line: 150, column: 63, scope: !6102)
!6140 = !DILocation(line: 151, column: 27, scope: !6102)
!6141 = !DILocation(line: 152, column: 21, scope: !6102)
!6142 = !DILocation(line: 153, column: 21, scope: !6102)
!6143 = !DILocation(line: 153, column: 32, scope: !6102)
!6144 = !DILocation(line: 155, column: 2, scope: !6102)
!6145 = !DILocation(line: 155, column: 22, scope: !6102)
!6146 = !DILocation(line: 156, column: 2, scope: !6102)
!6147 = !DILocation(line: 156, column: 15, scope: !6102)
!6148 = !DILocation(line: 157, column: 2, scope: !6102)
!6149 = !DILocation(line: 157, column: 16, scope: !6102)
!6150 = !DILocation(line: 157, column: 32, scope: !6102)
!6151 = !DILocation(line: 158, column: 2, scope: !6102)
!6152 = !DILocation(line: 158, column: 20, scope: !6102)
!6153 = !DILocation(line: 159, column: 2, scope: !6102)
!6154 = !DILocation(line: 159, column: 16, scope: !6102)
!6155 = !DILocation(line: 160, column: 2, scope: !6102)
!6156 = !DILocation(line: 160, column: 10, scope: !6102)
!6157 = !DILocation(line: 161, column: 2, scope: !6102)
!6158 = !DILocation(line: 161, column: 16, scope: !6102)
!6159 = !DILocation(line: 162, column: 2, scope: !6102)
!6160 = !DILocation(line: 162, column: 16, scope: !6102)
!6161 = !DILocation(line: 163, column: 2, scope: !6102)
!6162 = !DILocation(line: 163, column: 10, scope: !6102)
!6163 = !DILocation(line: 164, column: 2, scope: !6102)
!6164 = !DILocation(line: 164, column: 9, scope: !6102)
!6165 = !DILocation(line: 164, column: 36, scope: !6102)
!6166 = !DILocation(line: 164, column: 21, scope: !6102)
!6167 = !DILocation(line: 170, column: 9, scope: !6129)
!6168 = !DILocation(line: 170, column: 7, scope: !6129)
!6169 = !DILocation(line: 170, column: 14, scope: !6128)
!6170 = !DILocation(line: 170, column: 18, scope: !6128)
!6171 = !DILocation(line: 170, column: 16, scope: !6128)
!6172 = !DILocation(line: 170, column: 2, scope: !6129)
!6173 = !DILocation(line: 171, column: 13, scope: !6127)
!6174 = !DILocation(line: 171, column: 18, scope: !6127)
!6175 = !DILocation(line: 171, column: 21, scope: !6127)
!6176 = !DILocation(line: 171, column: 11, scope: !6127)
!6177 = !DILocation(line: 172, column: 7, scope: !6126)
!6178 = !DILocation(line: 172, column: 15, scope: !6126)
!6179 = !DILocation(line: 172, column: 7, scope: !6127)
!6180 = !DILocation(line: 173, column: 35, scope: !6125)
!6181 = !DILocation(line: 173, column: 40, scope: !6125)
!6182 = !DILocation(line: 173, column: 43, scope: !6125)
!6183 = !DILocation(line: 173, column: 20, scope: !6125)
!6184 = !DILocation(line: 174, column: 8, scope: !6125)
!6185 = !DILocation(line: 174, column: 6, scope: !6125)
!6186 = !DILocation(line: 175, column: 5, scope: !6125)
!6187 = !DILocation(line: 175, column: 34, scope: !6125)
!6188 = !DILocation(line: 175, column: 39, scope: !6125)
!6189 = !DILocation(line: 175, column: 42, scope: !6125)
!6190 = !DILocation(line: 175, column: 19, scope: !6125)
!6191 = !DILocation(line: 176, column: 5, scope: !6125)
!6192 = !DILocation(line: 175, column: 17, scope: !6125)
!6193 = !DILocation(line: 176, column: 17, scope: !6125)
!6194 = !DILocation(line: 173, column: 17, scope: !6125)
!6195 = !DILocation(line: 177, column: 15, scope: !6124)
!6196 = !DILocation(line: 177, column: 15, scope: !6125)
!6197 = !DILocation(line: 177, column: 13, scope: !6125)
!6198 = !DILocation(line: 178, column: 3, scope: !6125)
!6199 = !DILocation(line: 179, column: 2, scope: !6127)
!6200 = !DILocation(line: 170, column: 28, scope: !6128)
!6201 = !DILocation(line: 170, column: 2, scope: !6128)
!6202 = distinct !{!6202, !6172, !6203, !6204, !6205}
!6203 = !DILocation(line: 179, column: 2, scope: !6129)
!6204 = !{!"llvm.loop.mustprogress"}
!6205 = !{!"llvm.loop.unroll.disable"}
!6206 = !DILocation(line: 181, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 181, column: 6)
!6208 = !DILocation(line: 181, column: 15, scope: !6207)
!6209 = !DILocation(line: 181, column: 6, scope: !6102)
!6210 = !DILocation(line: 182, column: 3, scope: !6207)
!6211 = !DILocation(line: 184, column: 6, scope: !6134)
!6212 = !DILocation(line: 184, column: 15, scope: !6134)
!6213 = !DILocation(line: 184, column: 6, scope: !6102)
!6214 = !DILocation(line: 187, column: 27, scope: !6132)
!6215 = !DILocation(line: 187, column: 27, scope: !6133)
!6216 = !DILocation(line: 187, column: 19, scope: !6133)
!6217 = !DILocation(line: 187, column: 17, scope: !6133)
!6218 = !DILocation(line: 191, column: 8, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6133, file: !5845, line: 191, column: 7)
!6220 = !DILocation(line: 191, column: 7, scope: !6133)
!6221 = !DILocation(line: 192, column: 4, scope: !6219)
!6222 = !DILocation(line: 193, column: 2, scope: !6133)
!6223 = !DILocation(line: 196, column: 31, scope: !6102)
!6224 = !DILocation(line: 196, column: 9, scope: !6102)
!6225 = !DILocation(line: 196, column: 7, scope: !6102)
!6226 = !DILocation(line: 197, column: 7, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 197, column: 6)
!6228 = !DILocation(line: 197, column: 6, scope: !6102)
!6229 = !DILocation(line: 198, column: 6, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6227, file: !5845, line: 197, column: 13)
!6231 = !DILocation(line: 199, column: 3, scope: !6230)
!6232 = !DILocation(line: 202, column: 17, scope: !6102)
!6233 = !DILocation(line: 202, column: 7, scope: !6102)
!6234 = !DILocation(line: 202, column: 5, scope: !6102)
!6235 = !DILocation(line: 203, column: 7, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 203, column: 6)
!6237 = !DILocation(line: 203, column: 10, scope: !6236)
!6238 = !DILocation(line: 203, column: 20, scope: !6236)
!6239 = !DILocation(line: 203, column: 13, scope: !6236)
!6240 = !DILocation(line: 203, column: 6, scope: !6102)
!6241 = !DILocation(line: 204, column: 15, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6236, file: !5845, line: 203, column: 25)
!6243 = !DILocation(line: 204, column: 8, scope: !6242)
!6244 = !DILocation(line: 204, column: 29, scope: !6242)
!6245 = !DILocation(line: 204, column: 21, scope: !6242)
!6246 = !DILocation(line: 204, column: 6, scope: !6242)
!6247 = !DILocation(line: 209, column: 7, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6242, file: !5845, line: 209, column: 7)
!6249 = !DILocation(line: 209, column: 10, scope: !6248)
!6250 = !DILocation(line: 209, column: 7, scope: !6242)
!6251 = !DILocation(line: 210, column: 7, scope: !6248)
!6252 = !DILocation(line: 210, column: 4, scope: !6248)
!6253 = !DILocation(line: 211, column: 3, scope: !6242)
!6254 = !DILocation(line: 214, column: 9, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 214, column: 2)
!6256 = !DILocation(line: 214, column: 7, scope: !6255)
!6257 = !DILocation(line: 214, column: 14, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6255, file: !5845, line: 214, column: 2)
!6259 = !DILocation(line: 214, column: 18, scope: !6258)
!6260 = !DILocation(line: 214, column: 16, scope: !6258)
!6261 = !DILocation(line: 214, column: 26, scope: !6258)
!6262 = !DILocation(line: 214, column: 44, scope: !6258)
!6263 = !DILocation(line: 214, column: 29, scope: !6258)
!6264 = !DILocation(line: 214, column: 50, scope: !6258)
!6265 = !DILocation(line: 214, column: 54, scope: !6258)
!6266 = !DILocation(line: 214, column: 53, scope: !6258)
!6267 = !DILocation(line: 0, scope: !6258)
!6268 = !DILocation(line: 214, column: 2, scope: !6255)
!6269 = !DILocation(line: 216, column: 19, scope: !6258)
!6270 = !DILocation(line: 216, column: 24, scope: !6258)
!6271 = !DILocation(line: 216, column: 27, scope: !6258)
!6272 = !DILocation(line: 216, column: 4, scope: !6258)
!6273 = !DILocation(line: 216, column: 37, scope: !6258)
!6274 = !DILocation(line: 216, column: 42, scope: !6258)
!6275 = !DILocation(line: 216, column: 45, scope: !6258)
!6276 = !DILocation(line: 217, column: 4, scope: !6258)
!6277 = !DILocation(line: 217, column: 10, scope: !6258)
!6278 = !DILocation(line: 217, column: 25, scope: !6258)
!6279 = !DILocation(line: 217, column: 29, scope: !6258)
!6280 = !DILocation(line: 217, column: 35, scope: !6258)
!6281 = !DILocation(line: 215, column: 8, scope: !6258)
!6282 = !DILocation(line: 215, column: 6, scope: !6258)
!6283 = !DILocation(line: 215, column: 3, scope: !6258)
!6284 = !DILocation(line: 214, column: 59, scope: !6258)
!6285 = !DILocation(line: 214, column: 2, scope: !6258)
!6286 = distinct !{!6286, !6268, !6287, !6204, !6205}
!6287 = !DILocation(line: 217, column: 43, scope: !6255)
!6288 = !DILocation(line: 220, column: 30, scope: !6102)
!6289 = !DILocation(line: 220, column: 15, scope: !6102)
!6290 = !DILocation(line: 220, column: 12, scope: !6102)
!6291 = !DILocation(line: 225, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 225, column: 6)
!6293 = !DILocation(line: 225, column: 6, scope: !6102)
!6294 = !DILocation(line: 226, column: 8, scope: !6292)
!6295 = !DILocation(line: 226, column: 6, scope: !6292)
!6296 = !DILocation(line: 226, column: 3, scope: !6292)
!6297 = !DILocation(line: 228, column: 8, scope: !6102)
!6298 = !DILocation(line: 228, column: 2, scope: !6102)
!6299 = !DILocation(line: 230, column: 1, scope: !6102)
!6300 = !DILocation(line: 231, column: 18, scope: !6102)
!6301 = !DILocation(line: 231, column: 2, scope: !6102)
!6302 = !DILocation(line: 233, column: 1, scope: !6102)
!6303 = !DILocation(line: 234, column: 6, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6102, file: !5845, line: 234, column: 6)
!6305 = !DILocation(line: 234, column: 23, scope: !6304)
!6306 = !DILocation(line: 234, column: 20, scope: !6304)
!6307 = !DILocation(line: 234, column: 6, scope: !6102)
!6308 = !DILocation(line: 235, column: 9, scope: !6304)
!6309 = !DILocation(line: 235, column: 3, scope: !6304)
!6310 = !DILocation(line: 236, column: 9, scope: !6102)
!6311 = !DILocation(line: 236, column: 2, scope: !6102)
!6312 = !DILocation(line: 237, column: 1, scope: !6102)
!6313 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !6314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6314 = !DISubroutineType(types: !6315)
!6315 = !{null, !1995}
!6316 = distinct !DISubprogram(name: "in_32bit_syscall", scope: !6081, file: !6081, line: 92, type: !1985, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844)
!6317 = !DILocation(line: 94, column: 9, scope: !6316)
!6318 = !DILocation(line: 94, column: 27, scope: !6316)
!6319 = !DILocation(line: 94, column: 30, scope: !6316)
!6320 = !DILocation(line: 94, column: 2, scope: !6316)
!6321 = distinct !DISubprogram(name: "get_current", scope: !6322, file: !6322, line: 39, type: !6323, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6325)
!6322 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!13}
!6325 = !{!6326, !6328, !6330}
!6326 = !DILocalVariable(name: "pscr_ret__", scope: !6327, file: !6322, line: 41, type: !13)
!6327 = distinct !DILexicalBlock(scope: !6321, file: !6322, line: 41, column: 9)
!6328 = !DILocalVariable(name: "__vpp_verify", scope: !6329, file: !6322, line: 41, type: !1995)
!6329 = distinct !DILexicalBlock(scope: !6327, file: !6322, line: 41, column: 9)
!6330 = !DILocalVariable(name: "pfo_val__", scope: !6331, file: !6322, line: 41, type: !96)
!6331 = distinct !DILexicalBlock(scope: !6327, file: !6322, line: 41, column: 9)
!6332 = !DILocation(line: 41, column: 9, scope: !6327)
!6333 = !DILocation(line: 41, column: 9, scope: !6329)
!6334 = !DILocation(line: 41, column: 9, scope: !6331)
!6335 = !{i64 2148427657}
!6336 = !DILocation(line: 41, column: 9, scope: !6321)
!6337 = !DILocation(line: 41, column: 2, scope: !6321)
!6338 = distinct !DISubprogram(name: "in_x32_syscall", scope: !6081, file: !6081, line: 83, type: !1985, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844)
!6339 = !DILocation(line: 89, column: 2, scope: !6338)
!6340 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !6341, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6343)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!33, !795, !539}
!6343 = !{!6344, !6345, !6346}
!6344 = !DILocalVariable(name: "size", arg: 1, scope: !6340, file: !2, line: 591, type: !795)
!6345 = !DILocalVariable(name: "flags", arg: 2, scope: !6340, file: !2, line: 591, type: !539)
!6346 = !DILocalVariable(name: "index", scope: !6347, file: !2, line: 594, type: !29)
!6347 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 593, column: 42)
!6348 = distinct !DILexicalBlock(scope: !6340, file: !2, line: 593, column: 6)
!6349 = !DILocation(line: 591, column: 61, scope: !6340)
!6350 = !DILocation(line: 591, column: 73, scope: !6340)
!6351 = !DILocation(line: 593, column: 27, scope: !6348)
!6352 = !DILocation(line: 593, column: 6, scope: !6348)
!6353 = !DILocation(line: 593, column: 33, scope: !6348)
!6354 = !DILocation(line: 593, column: 36, scope: !6348)
!6355 = !DILocation(line: 593, column: 6, scope: !6340)
!6356 = !DILocation(line: 594, column: 3, scope: !6347)
!6357 = !DILocation(line: 594, column: 16, scope: !6347)
!6358 = !DILocation(line: 596, column: 7, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 596, column: 7)
!6360 = !DILocation(line: 596, column: 12, scope: !6359)
!6361 = !DILocation(line: 596, column: 7, scope: !6347)
!6362 = !DILocation(line: 597, column: 25, scope: !6359)
!6363 = !DILocation(line: 597, column: 31, scope: !6359)
!6364 = !DILocation(line: 597, column: 11, scope: !6359)
!6365 = !DILocation(line: 597, column: 4, scope: !6359)
!6366 = !DILocation(line: 599, column: 11, scope: !6347)
!6367 = !DILocation(line: 599, column: 9, scope: !6347)
!6368 = !DILocation(line: 601, column: 33, scope: !6347)
!6369 = !DILocation(line: 601, column: 40, scope: !6347)
!6370 = !DILocation(line: 601, column: 20, scope: !6347)
!6371 = !DILocation(line: 601, column: 5, scope: !6347)
!6372 = !DILocation(line: 601, column: 51, scope: !6347)
!6373 = !DILocation(line: 602, column: 5, scope: !6347)
!6374 = !DILocation(line: 602, column: 12, scope: !6347)
!6375 = !DILocation(line: 600, column: 10, scope: !6347)
!6376 = !DILocation(line: 600, column: 3, scope: !6347)
!6377 = !DILocation(line: 603, column: 2, scope: !6348)
!6378 = !DILocation(line: 604, column: 19, scope: !6340)
!6379 = !DILocation(line: 604, column: 25, scope: !6340)
!6380 = !DILocation(line: 604, column: 9, scope: !6340)
!6381 = !DILocation(line: 604, column: 2, scope: !6340)
!6382 = !DILocation(line: 605, column: 1, scope: !6340)
!6383 = !DISubprogram(name: "find_get_task_by_vpid", scope: !15, file: !15, line: 1995, type: !6384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!13, !4993}
!6386 = !DISubprogram(name: "mm_access", scope: !6387, file: !6387, line: 156, type: !6388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6387 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!6388 = !DISubroutineType(types: !6389)
!6389 = !{!382, !13, !29}
!6390 = distinct !DISubprogram(name: "process_vm_rw_single_vec", scope: !5845, file: !5845, line: 70, type: !6391, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6393)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{!45, !22, !22, !1852, !1803, !382, !13, !45}
!6393 = !{!6394, !6395, !6396, !6397, !6398, !6399, !6400, !6401, !6402, !6403, !6404, !6405, !6406, !6407, !6409, !6411, !6412, !6413}
!6394 = !DILocalVariable(name: "addr", arg: 1, scope: !6390, file: !5845, line: 70, type: !22)
!6395 = !DILocalVariable(name: "len", arg: 2, scope: !6390, file: !5845, line: 71, type: !22)
!6396 = !DILocalVariable(name: "iter", arg: 3, scope: !6390, file: !5845, line: 72, type: !1852)
!6397 = !DILocalVariable(name: "process_pages", arg: 4, scope: !6390, file: !5845, line: 73, type: !1803)
!6398 = !DILocalVariable(name: "mm", arg: 5, scope: !6390, file: !5845, line: 74, type: !382)
!6399 = !DILocalVariable(name: "task", arg: 6, scope: !6390, file: !5845, line: 75, type: !13)
!6400 = !DILocalVariable(name: "vm_write", arg: 7, scope: !6390, file: !5845, line: 76, type: !45)
!6401 = !DILocalVariable(name: "pa", scope: !6390, file: !5845, line: 78, type: !22)
!6402 = !DILocalVariable(name: "start_offset", scope: !6390, file: !5845, line: 79, type: !22)
!6403 = !DILocalVariable(name: "nr_pages", scope: !6390, file: !5845, line: 80, type: !22)
!6404 = !DILocalVariable(name: "rc", scope: !6390, file: !5845, line: 81, type: !1177)
!6405 = !DILocalVariable(name: "max_pages_per_loop", scope: !6390, file: !5845, line: 82, type: !22)
!6406 = !DILocalVariable(name: "flags", scope: !6390, file: !5845, line: 84, type: !29)
!6407 = !DILocalVariable(name: "pinned_pages", scope: !6408, file: !5845, line: 95, type: !45)
!6408 = distinct !DILexicalBlock(scope: !6390, file: !5845, line: 94, column: 50)
!6409 = !DILocalVariable(name: "__UNIQUE_ID___x341", scope: !6410, file: !5845, line: 95, type: !22)
!6410 = distinct !DILexicalBlock(scope: !6408, file: !5845, line: 95, column: 22)
!6411 = !DILocalVariable(name: "__UNIQUE_ID___y342", scope: !6410, file: !5845, line: 95, type: !22)
!6412 = !DILocalVariable(name: "locked", scope: !6408, file: !5845, line: 96, type: !45)
!6413 = !DILocalVariable(name: "bytes", scope: !6408, file: !5845, line: 97, type: !795)
!6414 = !DILocation(line: 70, column: 51, scope: !6390)
!6415 = !DILocation(line: 71, column: 23, scope: !6390)
!6416 = !DILocation(line: 72, column: 26, scope: !6390)
!6417 = !DILocation(line: 73, column: 23, scope: !6390)
!6418 = !DILocation(line: 74, column: 27, scope: !6390)
!6419 = !DILocation(line: 75, column: 29, scope: !6390)
!6420 = !DILocation(line: 76, column: 13, scope: !6390)
!6421 = !DILocation(line: 78, column: 2, scope: !6390)
!6422 = !DILocation(line: 78, column: 16, scope: !6390)
!6423 = !DILocation(line: 78, column: 21, scope: !6390)
!6424 = !DILocation(line: 78, column: 26, scope: !6390)
!6425 = !DILocation(line: 79, column: 2, scope: !6390)
!6426 = !DILocation(line: 79, column: 16, scope: !6390)
!6427 = !DILocation(line: 79, column: 31, scope: !6390)
!6428 = !DILocation(line: 79, column: 38, scope: !6390)
!6429 = !DILocation(line: 79, column: 36, scope: !6390)
!6430 = !DILocation(line: 80, column: 2, scope: !6390)
!6431 = !DILocation(line: 80, column: 16, scope: !6390)
!6432 = !DILocation(line: 81, column: 2, scope: !6390)
!6433 = !DILocation(line: 81, column: 10, scope: !6390)
!6434 = !DILocation(line: 82, column: 2, scope: !6390)
!6435 = !DILocation(line: 82, column: 16, scope: !6390)
!6436 = !DILocation(line: 84, column: 2, scope: !6390)
!6437 = !DILocation(line: 84, column: 15, scope: !6390)
!6438 = !DILocation(line: 87, column: 6, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6390, file: !5845, line: 87, column: 6)
!6440 = !DILocation(line: 87, column: 10, scope: !6439)
!6441 = !DILocation(line: 87, column: 6, scope: !6390)
!6442 = !DILocation(line: 88, column: 3, scope: !6439)
!6443 = !DILocation(line: 89, column: 14, scope: !6390)
!6444 = !DILocation(line: 89, column: 21, scope: !6390)
!6445 = !DILocation(line: 89, column: 19, scope: !6390)
!6446 = !DILocation(line: 89, column: 25, scope: !6390)
!6447 = !DILocation(line: 89, column: 30, scope: !6390)
!6448 = !DILocation(line: 89, column: 44, scope: !6390)
!6449 = !DILocation(line: 89, column: 49, scope: !6390)
!6450 = !DILocation(line: 89, column: 42, scope: !6390)
!6451 = !DILocation(line: 89, column: 61, scope: !6390)
!6452 = !DILocation(line: 89, column: 11, scope: !6390)
!6453 = !DILocation(line: 91, column: 6, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6390, file: !5845, line: 91, column: 6)
!6455 = !DILocation(line: 91, column: 6, scope: !6390)
!6456 = !DILocation(line: 92, column: 9, scope: !6454)
!6457 = !DILocation(line: 92, column: 3, scope: !6454)
!6458 = !DILocation(line: 94, column: 2, scope: !6390)
!6459 = !DILocation(line: 94, column: 10, scope: !6390)
!6460 = !DILocation(line: 94, column: 13, scope: !6390)
!6461 = !DILocation(line: 94, column: 16, scope: !6390)
!6462 = !DILocation(line: 94, column: 25, scope: !6390)
!6463 = !DILocation(line: 94, column: 43, scope: !6390)
!6464 = !DILocation(line: 94, column: 28, scope: !6390)
!6465 = !DILocation(line: 0, scope: !6390)
!6466 = !DILocation(line: 95, column: 3, scope: !6408)
!6467 = !DILocation(line: 95, column: 7, scope: !6408)
!6468 = !DILocation(line: 95, column: 22, scope: !6410)
!6469 = !DILocation(line: 95, column: 22, scope: !6408)
!6470 = !DILocation(line: 96, column: 3, scope: !6408)
!6471 = !DILocation(line: 96, column: 7, scope: !6408)
!6472 = !DILocation(line: 97, column: 3, scope: !6408)
!6473 = !DILocation(line: 97, column: 10, scope: !6408)
!6474 = !DILocation(line: 104, column: 18, scope: !6408)
!6475 = !DILocation(line: 104, column: 3, scope: !6408)
!6476 = !DILocation(line: 105, column: 40, scope: !6408)
!6477 = !DILocation(line: 105, column: 44, scope: !6408)
!6478 = !DILocation(line: 105, column: 48, scope: !6408)
!6479 = !DILocation(line: 106, column: 12, scope: !6408)
!6480 = !DILocation(line: 106, column: 19, scope: !6408)
!6481 = !DILocation(line: 105, column: 18, scope: !6408)
!6482 = !DILocation(line: 105, column: 16, scope: !6408)
!6483 = !DILocation(line: 108, column: 7, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6408, file: !5845, line: 108, column: 7)
!6485 = !DILocation(line: 108, column: 7, scope: !6408)
!6486 = !DILocation(line: 109, column: 21, scope: !6484)
!6487 = !DILocation(line: 109, column: 4, scope: !6484)
!6488 = !DILocation(line: 110, column: 7, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6408, file: !5845, line: 110, column: 7)
!6490 = !DILocation(line: 110, column: 20, scope: !6489)
!6491 = !DILocation(line: 110, column: 7, scope: !6408)
!6492 = !DILocation(line: 111, column: 4, scope: !6489)
!6493 = !DILocation(line: 113, column: 11, scope: !6408)
!6494 = !DILocation(line: 113, column: 24, scope: !6408)
!6495 = !DILocation(line: 113, column: 38, scope: !6408)
!6496 = !DILocation(line: 113, column: 36, scope: !6408)
!6497 = !DILocation(line: 113, column: 9, scope: !6408)
!6498 = !DILocation(line: 114, column: 7, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6408, file: !5845, line: 114, column: 7)
!6500 = !DILocation(line: 114, column: 15, scope: !6499)
!6501 = !DILocation(line: 114, column: 13, scope: !6499)
!6502 = !DILocation(line: 114, column: 7, scope: !6408)
!6503 = !DILocation(line: 115, column: 12, scope: !6499)
!6504 = !DILocation(line: 115, column: 10, scope: !6499)
!6505 = !DILocation(line: 115, column: 4, scope: !6499)
!6506 = !DILocation(line: 117, column: 28, scope: !6408)
!6507 = !DILocation(line: 118, column: 7, scope: !6408)
!6508 = !DILocation(line: 118, column: 21, scope: !6408)
!6509 = !DILocation(line: 118, column: 28, scope: !6408)
!6510 = !DILocation(line: 119, column: 7, scope: !6408)
!6511 = !DILocation(line: 117, column: 8, scope: !6408)
!6512 = !DILocation(line: 117, column: 6, scope: !6408)
!6513 = !DILocation(line: 120, column: 10, scope: !6408)
!6514 = !DILocation(line: 120, column: 7, scope: !6408)
!6515 = !DILocation(line: 121, column: 16, scope: !6408)
!6516 = !DILocation(line: 122, column: 15, scope: !6408)
!6517 = !DILocation(line: 122, column: 12, scope: !6408)
!6518 = !DILocation(line: 123, column: 9, scope: !6408)
!6519 = !DILocation(line: 123, column: 22, scope: !6408)
!6520 = !DILocation(line: 123, column: 6, scope: !6408)
!6521 = !DILocation(line: 126, column: 31, scope: !6408)
!6522 = !DILocation(line: 126, column: 46, scope: !6408)
!6523 = !DILocation(line: 127, column: 10, scope: !6408)
!6524 = !DILocation(line: 126, column: 3, scope: !6408)
!6525 = !DILocation(line: 128, column: 2, scope: !6390)
!6526 = distinct !{!6526, !6458, !6525, !6204, !6205}
!6527 = !DILocation(line: 130, column: 9, scope: !6390)
!6528 = !DILocation(line: 130, column: 2, scope: !6390)
!6529 = !DILocation(line: 131, column: 1, scope: !6390)
!6530 = !DISubprogram(name: "mmput", scope: !6387, file: !6387, line: 141, type: !6531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{null, !382}
!6533 = !DILocation(line: 124, column: 56, scope: !9)
!6534 = !DILocation(line: 126, column: 30, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !9, file: !10, line: 126, column: 6)
!6536 = !DILocation(line: 126, column: 33, scope: !6535)
!6537 = !DILocation(line: 126, column: 7, scope: !6535)
!6538 = !DILocation(line: 126, column: 6, scope: !9)
!6539 = !DILocation(line: 127, column: 3, scope: !6535)
!6540 = !DILocation(line: 136, column: 3, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6542, file: !10, line: 133, column: 55)
!6542 = distinct !DILexicalBlock(scope: !9, file: !10, line: 133, column: 6)
!6543 = !DILocation(line: 136, column: 3, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6541, file: !10, line: 136, column: 3)
!6545 = !DILocation(line: 137, column: 21, scope: !6541)
!6546 = !DILocation(line: 137, column: 3, scope: !6541)
!6547 = !DILocation(line: 138, column: 3, scope: !6541)
!6548 = !DILocation(line: 138, column: 3, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6541, file: !10, line: 138, column: 3)
!6550 = !DILocation(line: 139, column: 3, scope: !6541)
!6551 = !DILocation(line: 163, column: 1, scope: !9)
!6552 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !6341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6553 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !6554, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6556)
!6554 = !DISubroutineType(types: !6555)
!6555 = !{!29, !795, !614}
!6556 = !{!6557, !6558}
!6557 = !DILocalVariable(name: "size", arg: 1, scope: !6553, file: !2, line: 444, type: !795)
!6558 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6553, file: !2, line: 445, type: !614)
!6559 = !DILocation(line: 444, column: 60, scope: !6553)
!6560 = !DILocation(line: 445, column: 16, scope: !6553)
!6561 = !DILocation(line: 447, column: 7, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 447, column: 6)
!6563 = !DILocation(line: 447, column: 6, scope: !6553)
!6564 = !DILocation(line: 448, column: 3, scope: !6562)
!6565 = !DILocation(line: 450, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 450, column: 6)
!6567 = !DILocation(line: 450, column: 11, scope: !6566)
!6568 = !DILocation(line: 450, column: 6, scope: !6553)
!6569 = !DILocation(line: 451, column: 3, scope: !6566)
!6570 = !DILocation(line: 453, column: 32, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 453, column: 6)
!6572 = !DILocation(line: 453, column: 37, scope: !6571)
!6573 = !DILocation(line: 453, column: 42, scope: !6571)
!6574 = !DILocation(line: 453, column: 45, scope: !6571)
!6575 = !DILocation(line: 453, column: 50, scope: !6571)
!6576 = !DILocation(line: 453, column: 6, scope: !6553)
!6577 = !DILocation(line: 454, column: 3, scope: !6571)
!6578 = !DILocation(line: 455, column: 32, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 455, column: 6)
!6580 = !DILocation(line: 455, column: 37, scope: !6579)
!6581 = !DILocation(line: 455, column: 43, scope: !6579)
!6582 = !DILocation(line: 455, column: 46, scope: !6579)
!6583 = !DILocation(line: 455, column: 51, scope: !6579)
!6584 = !DILocation(line: 455, column: 6, scope: !6553)
!6585 = !DILocation(line: 456, column: 3, scope: !6579)
!6586 = !DILocation(line: 457, column: 6, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 457, column: 6)
!6588 = !DILocation(line: 457, column: 11, scope: !6587)
!6589 = !DILocation(line: 457, column: 6, scope: !6553)
!6590 = !DILocation(line: 457, column: 26, scope: !6587)
!6591 = !DILocation(line: 458, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 458, column: 6)
!6593 = !DILocation(line: 458, column: 11, scope: !6592)
!6594 = !DILocation(line: 458, column: 6, scope: !6553)
!6595 = !DILocation(line: 458, column: 26, scope: !6592)
!6596 = !DILocation(line: 459, column: 6, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 459, column: 6)
!6598 = !DILocation(line: 459, column: 11, scope: !6597)
!6599 = !DILocation(line: 459, column: 6, scope: !6553)
!6600 = !DILocation(line: 459, column: 26, scope: !6597)
!6601 = !DILocation(line: 460, column: 6, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 460, column: 6)
!6603 = !DILocation(line: 460, column: 11, scope: !6602)
!6604 = !DILocation(line: 460, column: 6, scope: !6553)
!6605 = !DILocation(line: 460, column: 26, scope: !6602)
!6606 = !DILocation(line: 461, column: 6, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 461, column: 6)
!6608 = !DILocation(line: 461, column: 11, scope: !6607)
!6609 = !DILocation(line: 461, column: 6, scope: !6553)
!6610 = !DILocation(line: 461, column: 26, scope: !6607)
!6611 = !DILocation(line: 462, column: 6, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 462, column: 6)
!6613 = !DILocation(line: 462, column: 11, scope: !6612)
!6614 = !DILocation(line: 462, column: 6, scope: !6553)
!6615 = !DILocation(line: 462, column: 26, scope: !6612)
!6616 = !DILocation(line: 463, column: 6, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 463, column: 6)
!6618 = !DILocation(line: 463, column: 11, scope: !6617)
!6619 = !DILocation(line: 463, column: 6, scope: !6553)
!6620 = !DILocation(line: 463, column: 26, scope: !6617)
!6621 = !DILocation(line: 464, column: 6, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 464, column: 6)
!6623 = !DILocation(line: 464, column: 11, scope: !6622)
!6624 = !DILocation(line: 464, column: 6, scope: !6553)
!6625 = !DILocation(line: 464, column: 26, scope: !6622)
!6626 = !DILocation(line: 465, column: 6, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 465, column: 6)
!6628 = !DILocation(line: 465, column: 11, scope: !6627)
!6629 = !DILocation(line: 465, column: 6, scope: !6553)
!6630 = !DILocation(line: 465, column: 26, scope: !6627)
!6631 = !DILocation(line: 466, column: 6, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 466, column: 6)
!6633 = !DILocation(line: 466, column: 11, scope: !6632)
!6634 = !DILocation(line: 466, column: 6, scope: !6553)
!6635 = !DILocation(line: 466, column: 26, scope: !6632)
!6636 = !DILocation(line: 467, column: 6, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 467, column: 6)
!6638 = !DILocation(line: 467, column: 11, scope: !6637)
!6639 = !DILocation(line: 467, column: 6, scope: !6553)
!6640 = !DILocation(line: 467, column: 26, scope: !6637)
!6641 = !DILocation(line: 468, column: 6, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 468, column: 6)
!6643 = !DILocation(line: 468, column: 11, scope: !6642)
!6644 = !DILocation(line: 468, column: 6, scope: !6553)
!6645 = !DILocation(line: 468, column: 26, scope: !6642)
!6646 = !DILocation(line: 469, column: 6, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 469, column: 6)
!6648 = !DILocation(line: 469, column: 11, scope: !6647)
!6649 = !DILocation(line: 469, column: 6, scope: !6553)
!6650 = !DILocation(line: 469, column: 26, scope: !6647)
!6651 = !DILocation(line: 470, column: 6, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 470, column: 6)
!6653 = !DILocation(line: 470, column: 11, scope: !6652)
!6654 = !DILocation(line: 470, column: 6, scope: !6553)
!6655 = !DILocation(line: 470, column: 26, scope: !6652)
!6656 = !DILocation(line: 471, column: 6, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 471, column: 6)
!6658 = !DILocation(line: 471, column: 11, scope: !6657)
!6659 = !DILocation(line: 471, column: 6, scope: !6553)
!6660 = !DILocation(line: 471, column: 26, scope: !6657)
!6661 = !DILocation(line: 472, column: 6, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 472, column: 6)
!6663 = !DILocation(line: 472, column: 11, scope: !6662)
!6664 = !DILocation(line: 472, column: 6, scope: !6553)
!6665 = !DILocation(line: 472, column: 26, scope: !6662)
!6666 = !DILocation(line: 473, column: 6, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 473, column: 6)
!6668 = !DILocation(line: 473, column: 11, scope: !6667)
!6669 = !DILocation(line: 473, column: 6, scope: !6553)
!6670 = !DILocation(line: 473, column: 26, scope: !6667)
!6671 = !DILocation(line: 474, column: 6, scope: !6672)
!6672 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 474, column: 6)
!6673 = !DILocation(line: 474, column: 11, scope: !6672)
!6674 = !DILocation(line: 474, column: 6, scope: !6553)
!6675 = !DILocation(line: 474, column: 27, scope: !6672)
!6676 = !DILocation(line: 475, column: 6, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 475, column: 6)
!6678 = !DILocation(line: 475, column: 11, scope: !6677)
!6679 = !DILocation(line: 475, column: 6, scope: !6553)
!6680 = !DILocation(line: 475, column: 32, scope: !6677)
!6681 = !DILocation(line: 477, column: 50, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6553, file: !2, line: 477, column: 6)
!6683 = !{i8 0, i8 2}
!6684 = !DILocation(line: 477, column: 6, scope: !6553)
!6685 = !DILocation(line: 478, column: 3, scope: !6682)
!6686 = !DILocation(line: 478, column: 3, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6688, file: !2, line: 478, column: 3)
!6688 = distinct !DILexicalBlock(scope: !6682, file: !2, line: 478, column: 3)
!6689 = !{i32 -2141611161}
!6690 = !DILocation(line: 478, column: 3, scope: !6688)
!6691 = !DILocation(line: 480, column: 3, scope: !6682)
!6692 = !DILocation(line: 480, column: 3, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6682, file: !2, line: 480, column: 3)
!6694 = !DILocation(line: 480, column: 3, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6693, file: !2, line: 480, column: 3)
!6696 = !DILocation(line: 480, column: 3, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6693, file: !2, line: 480, column: 3)
!6698 = !{i64 2153356338, i64 2153356367, i64 2153356413, i64 2153356471, i64 2153356525, i64 2153356579, i64 2153356634, i64 2153356665}
!6699 = !DILocation(line: 483, column: 2, scope: !6553)
!6700 = !DILocation(line: 484, column: 1, scope: !6553)
!6701 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !6702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6702 = !DISubroutineType(types: !6703)
!6703 = !{!33, !547, !539, !795}
!6704 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !6705, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6707)
!6705 = !DISubroutineType(types: !6706)
!6706 = !{!5852, !539, !22}
!6707 = !{!6708, !6709}
!6708 = !DILocalVariable(name: "flags", arg: 1, scope: !6704, file: !2, line: 401, type: !539)
!6709 = !DILocalVariable(name: "caller", arg: 2, scope: !6704, file: !2, line: 401, type: !22)
!6710 = !DILocation(line: 401, column: 67, scope: !6704)
!6711 = !DILocation(line: 401, column: 88, scope: !6704)
!6712 = !DILocation(line: 407, column: 6, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6704, file: !2, line: 407, column: 6)
!6714 = !DILocation(line: 407, column: 6, scope: !6704)
!6715 = !DILocation(line: 413, column: 3, scope: !6713)
!6716 = !DILocation(line: 423, column: 38, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6704, file: !2, line: 423, column: 6)
!6718 = !DILocation(line: 423, column: 44, scope: !6717)
!6719 = !DILocation(line: 423, column: 6, scope: !6704)
!6720 = !DILocation(line: 424, column: 3, scope: !6717)
!6721 = !DILocation(line: 426, column: 3, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6704, file: !2, line: 425, column: 6)
!6723 = !DILocation(line: 429, column: 1, scope: !6704)
!6724 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !6341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6725 = !DISubprogram(name: "__compiletime_assert_245", scope: !2, file: !2, line: 478, type: !2595, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6726 = distinct !DISubprogram(name: "mmap_read_lock", scope: !6727, file: !6727, line: 143, type: !6531, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6728)
!6727 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!6728 = !{!6729}
!6729 = !DILocalVariable(name: "mm", arg: 1, scope: !6726, file: !6727, line: 143, type: !382)
!6730 = !DILocation(line: 143, column: 53, scope: !6726)
!6731 = !DILocation(line: 145, column: 34, scope: !6726)
!6732 = !DILocation(line: 145, column: 2, scope: !6726)
!6733 = !DILocation(line: 146, column: 13, scope: !6726)
!6734 = !DILocation(line: 146, column: 17, scope: !6726)
!6735 = !DILocation(line: 146, column: 2, scope: !6726)
!6736 = !DILocation(line: 147, column: 37, scope: !6726)
!6737 = !DILocation(line: 147, column: 2, scope: !6726)
!6738 = !DILocation(line: 148, column: 1, scope: !6726)
!6739 = !DISubprogram(name: "pin_user_pages_remote", scope: !1515, file: !1515, line: 2429, type: !6740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6740 = !DISubroutineType(types: !6741)
!6741 = !{!873, !382, !22, !22, !29, !1803, !2308}
!6742 = distinct !DISubprogram(name: "mmap_read_unlock", scope: !6727, file: !6727, line: 170, type: !6531, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6743)
!6743 = !{!6744}
!6744 = !DILocalVariable(name: "mm", arg: 1, scope: !6742, file: !6727, line: 170, type: !382)
!6745 = !DILocation(line: 170, column: 55, scope: !6742)
!6746 = !DILocation(line: 172, column: 29, scope: !6742)
!6747 = !DILocation(line: 172, column: 2, scope: !6742)
!6748 = !DILocation(line: 173, column: 11, scope: !6742)
!6749 = !DILocation(line: 173, column: 15, scope: !6742)
!6750 = !DILocation(line: 173, column: 2, scope: !6742)
!6751 = !DILocation(line: 174, column: 1, scope: !6742)
!6752 = distinct !DISubprogram(name: "process_vm_rw_pages", scope: !5845, file: !5845, line: 27, type: !6753, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6755)
!6753 = !DISubroutineType(types: !6754)
!6754 = !{!45, !1803, !29, !795, !1852, !45}
!6755 = !{!6756, !6757, !6758, !6759, !6760, !6761, !6763, !6764}
!6756 = !DILocalVariable(name: "pages", arg: 1, scope: !6752, file: !5845, line: 27, type: !1803)
!6757 = !DILocalVariable(name: "offset", arg: 2, scope: !6752, file: !5845, line: 28, type: !29)
!6758 = !DILocalVariable(name: "len", arg: 3, scope: !6752, file: !5845, line: 29, type: !795)
!6759 = !DILocalVariable(name: "iter", arg: 4, scope: !6752, file: !5845, line: 30, type: !1852)
!6760 = !DILocalVariable(name: "vm_write", arg: 5, scope: !6752, file: !5845, line: 31, type: !45)
!6761 = !DILocalVariable(name: "page", scope: !6762, file: !5845, line: 35, type: !1403)
!6762 = distinct !DILexicalBlock(scope: !6752, file: !5845, line: 34, column: 38)
!6763 = !DILocalVariable(name: "copy", scope: !6762, file: !5845, line: 36, type: !795)
!6764 = !DILocalVariable(name: "copied", scope: !6762, file: !5845, line: 37, type: !795)
!6765 = !DILocation(line: 27, column: 46, scope: !6752)
!6766 = !DILocation(line: 28, column: 20, scope: !6752)
!6767 = !DILocation(line: 29, column: 18, scope: !6752)
!6768 = !DILocation(line: 30, column: 28, scope: !6752)
!6769 = !DILocation(line: 31, column: 15, scope: !6752)
!6770 = !DILocation(line: 34, column: 2, scope: !6752)
!6771 = !DILocation(line: 34, column: 9, scope: !6752)
!6772 = !DILocation(line: 34, column: 13, scope: !6752)
!6773 = !DILocation(line: 34, column: 31, scope: !6752)
!6774 = !DILocation(line: 34, column: 16, scope: !6752)
!6775 = !DILocation(line: 0, scope: !6752)
!6776 = !DILocation(line: 35, column: 3, scope: !6762)
!6777 = !DILocation(line: 35, column: 16, scope: !6762)
!6778 = !DILocation(line: 35, column: 29, scope: !6762)
!6779 = !DILocation(line: 35, column: 23, scope: !6762)
!6780 = !DILocation(line: 36, column: 3, scope: !6762)
!6781 = !DILocation(line: 36, column: 10, scope: !6762)
!6782 = !DILocation(line: 36, column: 29, scope: !6762)
!6783 = !DILocation(line: 36, column: 27, scope: !6762)
!6784 = !DILocation(line: 37, column: 3, scope: !6762)
!6785 = !DILocation(line: 37, column: 10, scope: !6762)
!6786 = !DILocation(line: 39, column: 7, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6762, file: !5845, line: 39, column: 7)
!6788 = !DILocation(line: 39, column: 14, scope: !6787)
!6789 = !DILocation(line: 39, column: 12, scope: !6787)
!6790 = !DILocation(line: 39, column: 7, scope: !6762)
!6791 = !DILocation(line: 40, column: 11, scope: !6787)
!6792 = !DILocation(line: 40, column: 9, scope: !6787)
!6793 = !DILocation(line: 40, column: 4, scope: !6787)
!6794 = !DILocation(line: 42, column: 7, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6762, file: !5845, line: 42, column: 7)
!6796 = !DILocation(line: 42, column: 7, scope: !6762)
!6797 = !DILocation(line: 43, column: 33, scope: !6795)
!6798 = !DILocation(line: 43, column: 39, scope: !6795)
!6799 = !DILocation(line: 43, column: 47, scope: !6795)
!6800 = !DILocation(line: 43, column: 53, scope: !6795)
!6801 = !DILocation(line: 43, column: 13, scope: !6795)
!6802 = !DILocation(line: 43, column: 11, scope: !6795)
!6803 = !DILocation(line: 43, column: 4, scope: !6795)
!6804 = !DILocation(line: 45, column: 31, scope: !6795)
!6805 = !DILocation(line: 45, column: 37, scope: !6795)
!6806 = !DILocation(line: 45, column: 45, scope: !6795)
!6807 = !DILocation(line: 45, column: 51, scope: !6795)
!6808 = !DILocation(line: 45, column: 13, scope: !6795)
!6809 = !DILocation(line: 45, column: 11, scope: !6795)
!6810 = !DILocation(line: 47, column: 10, scope: !6762)
!6811 = !DILocation(line: 47, column: 7, scope: !6762)
!6812 = !DILocation(line: 48, column: 7, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6762, file: !5845, line: 48, column: 7)
!6814 = !DILocation(line: 48, column: 16, scope: !6813)
!6815 = !DILocation(line: 48, column: 14, scope: !6813)
!6816 = !DILocation(line: 48, column: 21, scope: !6813)
!6817 = !DILocation(line: 48, column: 39, scope: !6813)
!6818 = !DILocation(line: 48, column: 24, scope: !6813)
!6819 = !DILocation(line: 48, column: 7, scope: !6762)
!6820 = !DILocation(line: 49, column: 4, scope: !6813)
!6821 = !DILocation(line: 50, column: 10, scope: !6762)
!6822 = !DILocation(line: 51, column: 2, scope: !6752)
!6823 = distinct !{!6823, !6770, !6822, !6204, !6205}
!6824 = !DILocation(line: 52, column: 2, scope: !6752)
!6825 = !DILocation(line: 53, column: 1, scope: !6752)
!6826 = !DISubprogram(name: "unpin_user_pages_dirty_lock", scope: !1515, file: !1515, line: 1586, type: !6827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6827 = !DISubroutineType(types: !6828)
!6828 = !{null, !1803, !22, !614}
!6829 = distinct !DISubprogram(name: "__mmap_lock_trace_start_locking", scope: !6727, file: !6727, line: 25, type: !6830, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6832)
!6830 = !DISubroutineType(types: !6831)
!6831 = !{null, !382, !614}
!6832 = !{!6833, !6834}
!6833 = !DILocalVariable(name: "mm", arg: 1, scope: !6829, file: !6727, line: 25, type: !382)
!6834 = !DILocalVariable(name: "write", arg: 2, scope: !6829, file: !6727, line: 26, type: !614)
!6835 = !DILocation(line: 25, column: 70, scope: !6829)
!6836 = !DILocation(line: 26, column: 15, scope: !6829)
!6837 = !DILocation(line: 28, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6829, file: !6727, line: 28, column: 6)
!6839 = !DILocation(line: 28, column: 6, scope: !6829)
!6840 = !DILocation(line: 29, column: 38, scope: !6838)
!6841 = !DILocation(line: 29, column: 42, scope: !6838)
!6842 = !DILocation(line: 29, column: 3, scope: !6838)
!6843 = !DILocation(line: 30, column: 1, scope: !6829)
!6844 = !DISubprogram(name: "down_read", scope: !635, file: !635, line: 175, type: !6845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6845 = !DISubroutineType(types: !6846)
!6846 = !{null, !6847}
!6847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!6848 = distinct !DISubprogram(name: "__mmap_lock_trace_acquire_returned", scope: !6727, file: !6727, line: 32, type: !6849, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6851)
!6849 = !DISubroutineType(types: !6850)
!6850 = !{null, !382, !614, !614}
!6851 = !{!6852, !6853, !6854}
!6852 = !DILocalVariable(name: "mm", arg: 1, scope: !6848, file: !6727, line: 32, type: !382)
!6853 = !DILocalVariable(name: "write", arg: 2, scope: !6848, file: !6727, line: 33, type: !614)
!6854 = !DILocalVariable(name: "success", arg: 3, scope: !6848, file: !6727, line: 33, type: !614)
!6855 = !DILocation(line: 32, column: 73, scope: !6848)
!6856 = !DILocation(line: 33, column: 18, scope: !6848)
!6857 = !DILocation(line: 33, column: 30, scope: !6848)
!6858 = !DILocation(line: 35, column: 6, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6848, file: !6727, line: 35, column: 6)
!6860 = !DILocation(line: 35, column: 6, scope: !6848)
!6861 = !DILocation(line: 36, column: 41, scope: !6859)
!6862 = !DILocation(line: 36, column: 45, scope: !6859)
!6863 = !DILocation(line: 36, column: 52, scope: !6859)
!6864 = !DILocation(line: 36, column: 3, scope: !6859)
!6865 = !DILocation(line: 37, column: 1, scope: !6848)
!6866 = distinct !DISubprogram(name: "static_key_false", scope: !2478, file: !2478, line: 205, type: !6867, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6870)
!6867 = !DISubroutineType(types: !6868)
!6868 = !{!614, !6869}
!6869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!6870 = !{!6871}
!6871 = !DILocalVariable(name: "key", arg: 1, scope: !6866, file: !2478, line: 205, type: !6869)
!6872 = !DILocation(line: 205, column: 65, scope: !6866)
!6873 = !DILocation(line: 207, column: 28, scope: !6866)
!6874 = !DILocation(line: 207, column: 9, scope: !6866)
!6875 = !DILocation(line: 207, column: 2, scope: !6866)
!6876 = !DISubprogram(name: "__mmap_lock_do_trace_start_locking", scope: !6727, file: !6727, line: 20, type: !6830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6877 = distinct !DISubprogram(name: "arch_static_branch", scope: !6878, file: !6878, line: 25, type: !6879, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6881)
!6878 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6879 = !DISubroutineType(types: !6880)
!6880 = !{!614, !6869, !614}
!6881 = !{!6882, !6883, !6884}
!6882 = !DILocalVariable(name: "key", arg: 1, scope: !6877, file: !6878, line: 25, type: !6869)
!6883 = !DILocalVariable(name: "branch", arg: 2, scope: !6877, file: !6878, line: 25, type: !614)
!6884 = !DILabel(scope: !6877, name: "l_yes", file: !6878, line: 33)
!6885 = !DILocation(line: 25, column: 67, scope: !6877)
!6886 = !DILocation(line: 25, column: 77, scope: !6877)
!6887 = !DILocation(line: 30, column: 13, scope: !6877)
!6888 = !DILocation(line: 30, column: 28, scope: !6877)
!6889 = !DILocation(line: 30, column: 26, scope: !6877)
!6890 = !DILocation(line: 27, column: 2, scope: !6877)
!6891 = !{i64 521293, i64 521337, i64 2148008312, i64 2148008333, i64 2148008359, i64 2148008392, i64 2148008426, i64 2148008450}
!6892 = !DILocation(line: 32, column: 2, scope: !6877)
!6893 = !DILocation(line: 33, column: 1, scope: !6877)
!6894 = !DILocation(line: 34, column: 2, scope: !6877)
!6895 = !DILocation(line: 35, column: 1, scope: !6877)
!6896 = !DISubprogram(name: "__mmap_lock_do_trace_acquire_returned", scope: !6727, file: !6727, line: 21, type: !6849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6897 = distinct !DISubprogram(name: "__mmap_lock_trace_released", scope: !6727, file: !6727, line: 39, type: !6830, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6898)
!6898 = !{!6899, !6900}
!6899 = !DILocalVariable(name: "mm", arg: 1, scope: !6897, file: !6727, line: 39, type: !382)
!6900 = !DILocalVariable(name: "write", arg: 2, scope: !6897, file: !6727, line: 39, type: !614)
!6901 = !DILocation(line: 39, column: 65, scope: !6897)
!6902 = !DILocation(line: 39, column: 74, scope: !6897)
!6903 = !DILocation(line: 41, column: 6, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6897, file: !6727, line: 41, column: 6)
!6905 = !DILocation(line: 41, column: 6, scope: !6897)
!6906 = !DILocation(line: 42, column: 33, scope: !6904)
!6907 = !DILocation(line: 42, column: 37, scope: !6904)
!6908 = !DILocation(line: 42, column: 3, scope: !6904)
!6909 = !DILocation(line: 43, column: 1, scope: !6897)
!6910 = !DISubprogram(name: "up_read", scope: !635, file: !635, line: 198, type: !6845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6911 = !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !6727, file: !6727, line: 23, type: !6830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6912 = !DISubprogram(name: "copy_page_from_iter", scope: !1854, file: !1854, line: 175, type: !6913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6913 = !DISubroutineType(types: !6914)
!6914 = !{!795, !1403, !795, !795, !1852}
!6915 = !DISubprogram(name: "copy_page_to_iter", scope: !1854, file: !1854, line: 173, type: !6913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6916 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !36, file: !36, line: 331, type: !6917, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6920)
!6917 = !DISubroutineType(types: !6918)
!6918 = !{!614, !6919}
!6919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!6920 = !{!6921}
!6921 = !DILocalVariable(name: "r", arg: 1, scope: !6916, file: !36, line: 331, type: !6919)
!6922 = !DILocation(line: 331, column: 67, scope: !6916)
!6923 = !DILocation(line: 333, column: 33, scope: !6916)
!6924 = !DILocation(line: 333, column: 9, scope: !6916)
!6925 = !DILocation(line: 333, column: 2, scope: !6916)
!6926 = !DISubprogram(name: "__put_task_struct", scope: !10, file: !10, line: 121, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6927 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !36, file: !36, line: 313, type: !6928, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6930)
!6928 = !DISubroutineType(types: !6929)
!6929 = !{!614, !6919, !2308}
!6930 = !{!6931, !6932}
!6931 = !DILocalVariable(name: "r", arg: 1, scope: !6927, file: !36, line: 313, type: !6919)
!6932 = !DILocalVariable(name: "oldp", arg: 2, scope: !6927, file: !36, line: 313, type: !2308)
!6933 = !DILocation(line: 313, column: 69, scope: !6927)
!6934 = !DILocation(line: 313, column: 77, scope: !6927)
!6935 = !DILocation(line: 315, column: 36, scope: !6927)
!6936 = !DILocation(line: 315, column: 39, scope: !6927)
!6937 = !DILocation(line: 315, column: 9, scope: !6927)
!6938 = !DILocation(line: 315, column: 2, scope: !6927)
!6939 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !36, file: !36, line: 270, type: !6940, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6942)
!6940 = !DISubroutineType(types: !6941)
!6941 = !{!614, !45, !6919, !2308}
!6942 = !{!6943, !6944, !6945, !6946}
!6943 = !DILocalVariable(name: "i", arg: 1, scope: !6939, file: !36, line: 270, type: !45)
!6944 = !DILocalVariable(name: "r", arg: 2, scope: !6939, file: !36, line: 270, type: !6919)
!6945 = !DILocalVariable(name: "oldp", arg: 3, scope: !6939, file: !36, line: 270, type: !2308)
!6946 = !DILocalVariable(name: "old", scope: !6939, file: !36, line: 272, type: !45)
!6947 = !DILocation(line: 270, column: 61, scope: !6939)
!6948 = !DILocation(line: 270, column: 76, scope: !6939)
!6949 = !DILocation(line: 270, column: 84, scope: !6939)
!6950 = !DILocation(line: 272, column: 2, scope: !6939)
!6951 = !DILocation(line: 272, column: 6, scope: !6939)
!6952 = !DILocation(line: 272, column: 37, scope: !6939)
!6953 = !DILocation(line: 272, column: 41, scope: !6939)
!6954 = !DILocation(line: 272, column: 44, scope: !6939)
!6955 = !DILocation(line: 272, column: 12, scope: !6939)
!6956 = !DILocation(line: 274, column: 6, scope: !6957)
!6957 = distinct !DILexicalBlock(scope: !6939, file: !36, line: 274, column: 6)
!6958 = !DILocation(line: 274, column: 6, scope: !6939)
!6959 = !DILocation(line: 275, column: 11, scope: !6957)
!6960 = !DILocation(line: 275, column: 4, scope: !6957)
!6961 = !DILocation(line: 275, column: 9, scope: !6957)
!6962 = !DILocation(line: 275, column: 3, scope: !6957)
!6963 = !DILocation(line: 277, column: 6, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6939, file: !36, line: 277, column: 6)
!6965 = !DILocation(line: 277, column: 13, scope: !6964)
!6966 = !DILocation(line: 277, column: 10, scope: !6964)
!6967 = !DILocation(line: 277, column: 6, scope: !6939)
!6968 = !DILocation(line: 278, column: 3, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6964, file: !36, line: 277, column: 16)
!6970 = !DILocation(line: 278, column: 3, scope: !6971)
!6971 = distinct !DILexicalBlock(scope: !6969, file: !36, line: 278, column: 3)
!6972 = !DILocation(line: 278, column: 3, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6971, file: !36, line: 278, column: 3)
!6974 = !DILocation(line: 278, column: 3, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6971, file: !36, line: 278, column: 3)
!6976 = !DILocation(line: 278, column: 3, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6975, file: !36, line: 278, column: 3)
!6978 = !{i64 2150074549}
!6979 = !DILocation(line: 279, column: 3, scope: !6969)
!6980 = !DILocation(line: 282, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6939, file: !36, line: 282, column: 6)
!6982 = !DILocation(line: 282, column: 6, scope: !6939)
!6983 = !DILocation(line: 283, column: 26, scope: !6981)
!6984 = !DILocation(line: 283, column: 3, scope: !6981)
!6985 = !DILocation(line: 285, column: 2, scope: !6939)
!6986 = !DILocation(line: 286, column: 1, scope: !6939)
!6987 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6988, file: !6988, line: 397, type: !6989, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !6992)
!6988 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6989 = !DISubroutineType(types: !6990)
!6990 = !{!45, !45, !6991}
!6991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!6992 = !{!6993, !6994}
!6993 = !DILocalVariable(name: "i", arg: 1, scope: !6987, file: !6988, line: 397, type: !45)
!6994 = !DILocalVariable(name: "v", arg: 2, scope: !6987, file: !6988, line: 397, type: !6991)
!6995 = !DILocation(line: 397, column: 30, scope: !6987)
!6996 = !DILocation(line: 397, column: 43, scope: !6987)
!6997 = !DILocation(line: 399, column: 2, scope: !6987)
!6998 = !DILocation(line: 399, column: 2, scope: !6999)
!6999 = distinct !DILexicalBlock(scope: !6987, file: !6988, line: 399, column: 2)
!7000 = !DILocation(line: 400, column: 31, scope: !6987)
!7001 = !DILocation(line: 400, column: 2, scope: !6987)
!7002 = !DILocation(line: 401, column: 38, scope: !6987)
!7003 = !DILocation(line: 401, column: 41, scope: !6987)
!7004 = !DILocation(line: 401, column: 9, scope: !6987)
!7005 = !DILocation(line: 401, column: 2, scope: !6987)
!7006 = !DISubprogram(name: "refcount_warn_saturate", scope: !36, file: !36, line: 127, type: !7007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7007 = !DISubroutineType(types: !7008)
!7008 = !{null, !6919, !5876}
!7009 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7010, file: !7010, line: 94, type: !7011, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !7016)
!7010 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7011 = !DISubroutineType(types: !7012)
!7012 = !{null, !7013, !795}
!7013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7014, size: 64)
!7014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7015)
!7015 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7016 = !{!7017, !7018}
!7017 = !DILocalVariable(name: "v", arg: 1, scope: !7009, file: !7010, line: 94, type: !7013)
!7018 = !DILocalVariable(name: "size", arg: 2, scope: !7009, file: !7010, line: 94, type: !795)
!7019 = !DILocation(line: 94, column: 79, scope: !7009)
!7020 = !DILocation(line: 94, column: 89, scope: !7009)
!7021 = !DILocation(line: 96, column: 20, scope: !7009)
!7022 = !DILocation(line: 96, column: 23, scope: !7009)
!7023 = !DILocation(line: 96, column: 2, scope: !7009)
!7024 = !DILocation(line: 97, column: 2, scope: !7009)
!7025 = !DILocation(line: 98, column: 1, scope: !7009)
!7026 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7027, file: !7027, line: 928, type: !6989, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !7028)
!7027 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7028 = !{!7029, !7030}
!7029 = !DILocalVariable(name: "i", arg: 1, scope: !7026, file: !7027, line: 928, type: !45)
!7030 = !DILocalVariable(name: "v", arg: 2, scope: !7026, file: !7027, line: 928, type: !6991)
!7031 = !DILocation(line: 928, column: 34, scope: !7026)
!7032 = !DILocation(line: 928, column: 47, scope: !7026)
!7033 = !DILocation(line: 936, column: 31, scope: !7026)
!7034 = !DILocation(line: 936, column: 34, scope: !7026)
!7035 = !DILocation(line: 936, column: 9, scope: !7026)
!7036 = !DILocation(line: 936, column: 2, scope: !7026)
!7037 = distinct !DISubprogram(name: "kasan_check_write", scope: !7038, file: !7038, line: 44, type: !7039, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !7041)
!7038 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7039 = !DISubroutineType(types: !7040)
!7040 = !{!614, !7013, !29}
!7041 = !{!7042, !7043}
!7042 = !DILocalVariable(name: "p", arg: 1, scope: !7037, file: !7038, line: 44, type: !7013)
!7043 = !DILocalVariable(name: "size", arg: 2, scope: !7037, file: !7038, line: 44, type: !29)
!7044 = !DILocation(line: 44, column: 59, scope: !7037)
!7045 = !DILocation(line: 44, column: 75, scope: !7037)
!7046 = !DILocation(line: 46, column: 2, scope: !7037)
!7047 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7048, file: !7048, line: 229, type: !7049, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !7051)
!7048 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7049 = !DISubroutineType(types: !7050)
!7050 = !{null, !7013, !795, !45}
!7051 = !{!7052, !7053, !7054}
!7052 = !DILocalVariable(name: "ptr", arg: 1, scope: !7047, file: !7048, line: 229, type: !7013)
!7053 = !DILocalVariable(name: "size", arg: 2, scope: !7047, file: !7048, line: 229, type: !795)
!7054 = !DILocalVariable(name: "type", arg: 3, scope: !7047, file: !7048, line: 230, type: !45)
!7055 = !DILocation(line: 229, column: 60, scope: !7047)
!7056 = !DILocation(line: 229, column: 72, scope: !7047)
!7057 = !DILocation(line: 230, column: 15, scope: !7047)
!7058 = !DILocation(line: 230, column: 23, scope: !7047)
!7059 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7060, file: !7060, line: 101, type: !6989, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !7061)
!7060 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7061 = !{!7062, !7063, !7064}
!7062 = !DILocalVariable(name: "i", arg: 1, scope: !7059, file: !7060, line: 101, type: !45)
!7063 = !DILocalVariable(name: "v", arg: 2, scope: !7059, file: !7060, line: 101, type: !6991)
!7064 = !DILocalVariable(name: "__ret", scope: !7065, file: !7060, line: 103, type: !45)
!7065 = distinct !DILexicalBlock(scope: !7059, file: !7060, line: 103, column: 9)
!7066 = !DILocation(line: 101, column: 54, scope: !7059)
!7067 = !DILocation(line: 101, column: 67, scope: !7059)
!7068 = !DILocation(line: 103, column: 9, scope: !7065)
!7069 = !{i64 2148685574, i64 2148685613, i64 2148685634, i64 2148685671, i64 2148685694, i64 2148685703}
!7070 = !DILocation(line: 103, column: 9, scope: !7059)
!7071 = !DILocation(line: 103, column: 2, scope: !7059)
!7072 = distinct !DISubprogram(name: "__do_sys_process_vm_writev", scope: !5845, file: !5845, line: 298, type: !5945, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5844, retainedNodes: !7073)
!7073 = !{!7074, !7075, !7076, !7077, !7078, !7079}
!7074 = !DILocalVariable(name: "pid", arg: 1, scope: !7072, file: !5845, line: 298, type: !4993)
!7075 = !DILocalVariable(name: "lvec", arg: 2, scope: !7072, file: !5845, line: 298, type: !1882)
!7076 = !DILocalVariable(name: "liovcnt", arg: 3, scope: !7072, file: !5845, line: 298, type: !22)
!7077 = !DILocalVariable(name: "rvec", arg: 4, scope: !7072, file: !5845, line: 298, type: !1882)
!7078 = !DILocalVariable(name: "riovcnt", arg: 5, scope: !7072, file: !5845, line: 298, type: !22)
!7079 = !DILocalVariable(name: "flags", arg: 6, scope: !7072, file: !5845, line: 298, type: !22)
!7080 = !DILocation(line: 298, column: 1, scope: !7072)
!7081 = !DILocation(line: 303, column: 23, scope: !7072)
!7082 = !DILocation(line: 303, column: 28, scope: !7072)
!7083 = !DILocation(line: 303, column: 34, scope: !7072)
!7084 = !DILocation(line: 303, column: 43, scope: !7072)
!7085 = !DILocation(line: 303, column: 49, scope: !7072)
!7086 = !DILocation(line: 303, column: 58, scope: !7072)
!7087 = !DILocation(line: 303, column: 9, scope: !7072)
!7088 = !DILocation(line: 303, column: 2, scope: !7072)
