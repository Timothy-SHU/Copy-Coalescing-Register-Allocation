; ModuleID = 'block/ioprio.c'
source_filename = "block/ioprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___get_task_ioprio: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __get_task_ioprio ; .previous"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.17, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.20 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i64, i64 }
%union.anon.20 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25, [48 x i8] }
%struct.anon.25 = type { ptr, ptr }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.26, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pcpu_hot = type { %union.anon.28 }
%union.anon.28 = type { %struct.anon.29, [16 x i8] }
%struct.anon.29 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [0 x %struct.upid] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.23 }
%struct.kernel_cap_t = type { i64 }
%union.anon.23 = type { %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }

@__UNIQUE_ID___addressable___get_task_ioprio373 = internal global ptr @__get_task_ioprio, section ".discard.addressable", align 8, !dbg !0
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___get_task_ioprio373], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioprio_check_cap(i32 noundef %ioprio) #0 align 16 !dbg !6303 {
entry:
  %retval = alloca i32, align 4
  %ioprio.addr = alloca i32, align 4
  %class = alloca i32, align 4
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ioprio, ptr %ioprio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !6305, metadata !DIExpression()), !dbg !6308
  call void @llvm.lifetime.start.p0(i64 4, ptr %class) #7, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %class, metadata !6306, metadata !DIExpression()), !dbg !6310
  %0 = load i32, ptr %ioprio.addr, align 4, !dbg !6311
  %shr = ashr i32 %0, 13, !dbg !6311
  %and = and i32 %shr, 7, !dbg !6311
  store i32 %and, ptr %class, align 4, !dbg !6310
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #7, !dbg !6312
  call void @llvm.dbg.declare(metadata ptr %level, metadata !6307, metadata !DIExpression()), !dbg !6313
  %1 = load i32, ptr %ioprio.addr, align 4, !dbg !6314
  %and1 = and i32 %1, 7, !dbg !6314
  store i32 %and1, ptr %level, align 4, !dbg !6313
  %2 = load i32, ptr %class, align 4, !dbg !6315
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.epilog
    i32 0, label %sw.bb6
    i32 7, label %sw.bb9
  ], !dbg !6316

sw.bb:                                            ; preds = %entry
  %call = call zeroext i1 @capable(i32 noundef 21) #8, !dbg !6317
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !6320

land.lhs.true:                                    ; preds = %sw.bb
  %call2 = call zeroext i1 @capable(i32 noundef 23) #8, !dbg !6321
  br i1 %call2, label %if.end, label %if.then, !dbg !6322

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !6323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6323

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  br label %sw.bb3, !dbg !6324

sw.bb3:                                           ; preds = %entry, %if.end
  %3 = load i32, ptr %level, align 4, !dbg !6325
  %cmp = icmp sge i32 %3, 8, !dbg !6327
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6328

if.then4:                                         ; preds = %sw.bb3
  store i32 -22, ptr %retval, align 4, !dbg !6329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6329

if.end5:                                          ; preds = %sw.bb3
  br label %sw.epilog, !dbg !6330

sw.bb6:                                           ; preds = %entry
  %4 = load i32, ptr %level, align 4, !dbg !6331
  %tobool = icmp ne i32 %4, 0, !dbg !6331
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !6333

if.then7:                                         ; preds = %sw.bb6
  store i32 -22, ptr %retval, align 4, !dbg !6334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6334

if.end8:                                          ; preds = %sw.bb6
  br label %sw.epilog, !dbg !6335

sw.bb9:                                           ; preds = %entry
  br label %sw.default, !dbg !6336

sw.default:                                       ; preds = %entry, %sw.bb9
  store i32 -22, ptr %retval, align 4, !dbg !6337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6337

sw.epilog:                                        ; preds = %if.end8, %entry, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !6338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6338

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #7, !dbg !6339
  call void @llvm.lifetime.end.p0(i64 4, ptr %class) #7, !dbg !6339
  %5 = load i32, ptr %retval, align 4, !dbg !6339
  ret i32 %5, !dbg !6339
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6340 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_ioprio_set(ptr noundef %regs) #0 align 16 !dbg !6343 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6349, metadata !DIExpression()), !dbg !6350
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6350
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6350
  %1 = load i64, ptr %di, align 8, !dbg !6350
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6350
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6350
  %3 = load i64, ptr %si, align 8, !dbg !6350
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6350
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6350
  %5 = load i64, ptr %dx, align 8, !dbg !6350
  %call = call i64 @__se_sys_ioprio_set(i64 noundef %1, i64 noundef %3, i64 noundef %5) #8, !dbg !6350
  ret i64 %call, !dbg !6350
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_ioprio_set(i64 noundef %which, i64 noundef %who, i64 noundef %ioprio) #0 align 16 !dbg !6351 {
entry:
  %which.addr = alloca i64, align 8
  %who.addr = alloca i64, align 8
  %ioprio.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %which, ptr %which.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6355, metadata !DIExpression()), !dbg !6359
  store i64 %who, ptr %who.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %who.addr, metadata !6356, metadata !DIExpression()), !dbg !6359
  store i64 %ioprio, ptr %ioprio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !6357, metadata !DIExpression()), !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load i64, ptr %which.addr, align 8, !dbg !6359
  %conv = trunc i64 %0 to i32, !dbg !6359
  %1 = load i64, ptr %who.addr, align 8, !dbg !6359
  %conv1 = trunc i64 %1 to i32, !dbg !6359
  %2 = load i64, ptr %ioprio.addr, align 8, !dbg !6359
  %conv2 = trunc i64 %2 to i32, !dbg !6359
  %call = call i64 @__do_sys_ioprio_set(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #8, !dbg !6359
  store i64 %call, ptr %ret, align 8, !dbg !6359
  br label %do.body, !dbg !6359

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6360

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6360

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !6359
  ret i64 %3, !dbg !6359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_ioprio_set(ptr noundef %regs) #0 align 16 !dbg !6362 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6365
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6365
  %1 = load i64, ptr %bx, align 8, !dbg !6365
  %conv = trunc i64 %1 to i32, !dbg !6365
  %conv1 = zext i32 %conv to i64, !dbg !6365
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6365
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6365
  %3 = load i64, ptr %cx, align 8, !dbg !6365
  %conv2 = trunc i64 %3 to i32, !dbg !6365
  %conv3 = zext i32 %conv2 to i64, !dbg !6365
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6365
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6365
  %5 = load i64, ptr %dx, align 8, !dbg !6365
  %conv4 = trunc i64 %5 to i32, !dbg !6365
  %conv5 = zext i32 %conv4 to i64, !dbg !6365
  %call = call i64 @__se_sys_ioprio_set(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #8, !dbg !6365
  ret i64 %call, !dbg !6365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__get_task_ioprio(ptr noundef %p) #0 align 16 !dbg !6366 {
entry:
  %p.addr = alloca ptr, align 8
  %ioc = alloca ptr, align 8
  %prio = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6370, metadata !DIExpression()), !dbg !6373
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioc) #7, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %ioc, metadata !6371, metadata !DIExpression()), !dbg !6375
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6376
  %io_context = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 131, !dbg !6377
  %1 = load ptr, ptr %io_context, align 64, !dbg !6377
  store ptr %1, ptr %ioc, align 8, !dbg !6375
  call void @llvm.lifetime.start.p0(i64 4, ptr %prio) #7, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %prio, metadata !6372, metadata !DIExpression()), !dbg !6379
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6380
  %call = call ptr @get_current() #8, !dbg !6382
  %cmp = icmp ne ptr %2, %call, !dbg !6383
  br i1 %cmp, label %if.then, label %if.end, !dbg !6384

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6385

do.body:                                          ; preds = %if.then
  %3 = load ptr, ptr %p.addr, align 8, !dbg !6386
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 121, !dbg !6386
  br label %do.cond, !dbg !6386

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6386

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !6386

if.end:                                           ; preds = %do.end, %entry
  %4 = load ptr, ptr %ioc, align 8, !dbg !6388
  %tobool = icmp ne ptr %4, null, !dbg !6388
  br i1 %tobool, label %if.then1, label %if.else, !dbg !6390

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %ioc, align 8, !dbg !6391
  %ioprio = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 2, !dbg !6392
  %6 = load i16, ptr %ioprio, align 4, !dbg !6392
  %conv = zext i16 %6 to i32, !dbg !6391
  store i32 %conv, ptr %prio, align 4, !dbg !6393
  br label %if.end4, !dbg !6394

if.else:                                          ; preds = %if.end
  %call2 = call zeroext i16 @ioprio_value(i32 noundef 0, i32 noundef 0, i32 noundef 0) #8, !dbg !6395
  %conv3 = zext i16 %call2 to i32, !dbg !6395
  store i32 %conv3, ptr %prio, align 4, !dbg !6396
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %7 = load i32, ptr %prio, align 4, !dbg !6397
  %shr = ashr i32 %7, 13, !dbg !6397
  %and = and i32 %shr, 7, !dbg !6397
  %cmp5 = icmp eq i32 %and, 0, !dbg !6399
  br i1 %cmp5, label %if.then7, label %if.end12, !dbg !6400

if.then7:                                         ; preds = %if.end4
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6401
  %call8 = call i32 @task_nice_ioclass(ptr noundef %8) #8, !dbg !6401
  %9 = load ptr, ptr %p.addr, align 8, !dbg !6401
  %call9 = call i32 @task_nice_ioprio(ptr noundef %9) #8, !dbg !6401
  %call10 = call zeroext i16 @ioprio_value(i32 noundef %call8, i32 noundef %call9, i32 noundef 0) #8, !dbg !6401
  %conv11 = zext i16 %call10 to i32, !dbg !6401
  store i32 %conv11, ptr %prio, align 4, !dbg !6402
  br label %if.end12, !dbg !6403

if.end12:                                         ; preds = %if.then7, %if.end4
  %10 = load i32, ptr %prio, align 4, !dbg !6404
  call void @llvm.lifetime.end.p0(i64 4, ptr %prio) #7, !dbg !6405
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioc) #7, !dbg !6405
  ret i32 %10, !dbg !6406
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6407 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #7, !dbg !6418
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6412, metadata !DIExpression()), !dbg !6418
  br label %do.body, !dbg !6418

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #7, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6414, metadata !DIExpression()), !dbg !6419
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6419
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6419
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #7, !dbg !6418
  br label %do.cond, !dbg !6419

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6419

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #7, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6416, metadata !DIExpression()), !dbg !6420
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #9, !dbg !6420, !srcloc !6421
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6420
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6420
  %3 = inttoptr i64 %2 to ptr, !dbg !6420
  store ptr %3, ptr %tmp, align 8, !dbg !6420
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #7, !dbg !6418
  %4 = load ptr, ptr %tmp, align 8, !dbg !6420
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6418
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6418
  store ptr %5, ptr %tmp1, align 8, !dbg !6418
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #7, !dbg !6422
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6418
  ret ptr %6, !dbg !6423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @ioprio_value(i32 noundef %prioclass, i32 noundef %priolevel, i32 noundef %priohint) #4 align 16 !dbg !6424 {
entry:
  %retval = alloca i16, align 2
  %prioclass.addr = alloca i32, align 4
  %priolevel.addr = alloca i32, align 4
  %priohint.addr = alloca i32, align 4
  store i32 %prioclass, ptr %prioclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prioclass.addr, metadata !6428, metadata !DIExpression()), !dbg !6431
  store i32 %priolevel, ptr %priolevel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %priolevel.addr, metadata !6429, metadata !DIExpression()), !dbg !6432
  store i32 %priohint, ptr %priohint.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %priohint.addr, metadata !6430, metadata !DIExpression()), !dbg !6433
  %0 = load i32, ptr %prioclass.addr, align 4, !dbg !6434
  %cmp = icmp slt i32 %0, 0, !dbg !6434
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6434

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %prioclass.addr, align 4, !dbg !6434
  %cmp1 = icmp sge i32 %1, 8, !dbg !6434
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !6436

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %priolevel.addr, align 4, !dbg !6437
  %cmp3 = icmp slt i32 %2, 0, !dbg !6437
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !6437

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %priolevel.addr, align 4, !dbg !6437
  %cmp5 = icmp sge i32 %3, 8, !dbg !6437
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !6438

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %priohint.addr, align 4, !dbg !6439
  %cmp7 = icmp slt i32 %4, 0, !dbg !6439
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !6439

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %priohint.addr, align 4, !dbg !6439
  %cmp9 = icmp sge i32 %5, 1024, !dbg !6439
  br i1 %cmp9, label %if.then, label %if.end, !dbg !6440

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i16 -8192, ptr %retval, align 2, !dbg !6441
  br label %return, !dbg !6441

if.end:                                           ; preds = %lor.lhs.false8
  %6 = load i32, ptr %prioclass.addr, align 4, !dbg !6442
  %shl = shl i32 %6, 13, !dbg !6443
  %7 = load i32, ptr %priohint.addr, align 4, !dbg !6444
  %shl10 = shl i32 %7, 3, !dbg !6445
  %or = or i32 %shl, %shl10, !dbg !6446
  %8 = load i32, ptr %priolevel.addr, align 4, !dbg !6447
  %or11 = or i32 %or, %8, !dbg !6448
  %conv = trunc i32 %or11 to i16, !dbg !6449
  store i16 %conv, ptr %retval, align 2, !dbg !6450
  br label %return, !dbg !6450

return:                                           ; preds = %if.end, %if.then
  %9 = load i16, ptr %retval, align 2, !dbg !6451
  ret i16 %9, !dbg !6451
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_nice_ioclass(ptr noundef %task) #5 align 16 !dbg !6452 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6455, metadata !DIExpression()), !dbg !6456
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6457
  %policy = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26, !dbg !6459
  %1 = load i32, ptr %policy, align 4, !dbg !6459
  %cmp = icmp eq i32 %1, 5, !dbg !6460
  br i1 %cmp, label %if.then, label %if.else, !dbg !6461

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !6462
  br label %return, !dbg !6462

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %task.addr, align 8, !dbg !6463
  %call = call zeroext i1 @task_is_realtime(ptr noundef %2) #8, !dbg !6465
  br i1 %call, label %if.then1, label %if.else2, !dbg !6466

if.then1:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !6467
  br label %return, !dbg !6467

if.else2:                                         ; preds = %if.else
  store i32 2, ptr %retval, align 4, !dbg !6468
  br label %return, !dbg !6468

return:                                           ; preds = %if.else2, %if.then1, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6469
  ret i32 %3, !dbg !6469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_nice_ioprio(ptr noundef %task) #5 align 16 !dbg !6470 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6472, metadata !DIExpression()), !dbg !6473
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6474
  %call = call i32 @task_nice(ptr noundef %0) #8, !dbg !6475
  %add = add i32 %call, 20, !dbg !6476
  %div = sdiv i32 %add, 5, !dbg !6477
  ret i32 %div, !dbg !6478
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_ioprio_get(ptr noundef %regs) #0 align 16 !dbg !6479 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6481, metadata !DIExpression()), !dbg !6482
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6482
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6482
  %1 = load i64, ptr %di, align 8, !dbg !6482
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6482
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6482
  %3 = load i64, ptr %si, align 8, !dbg !6482
  %call = call i64 @__se_sys_ioprio_get(i64 noundef %1, i64 noundef %3) #8, !dbg !6482
  ret i64 %call, !dbg !6482
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_ioprio_get(i64 noundef %which, i64 noundef %who) #0 align 16 !dbg !6483 {
entry:
  %which.addr = alloca i64, align 8
  %who.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %which, ptr %which.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6487, metadata !DIExpression()), !dbg !6490
  store i64 %who, ptr %who.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %who.addr, metadata !6488, metadata !DIExpression()), !dbg !6490
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6489, metadata !DIExpression()), !dbg !6490
  %0 = load i64, ptr %which.addr, align 8, !dbg !6490
  %conv = trunc i64 %0 to i32, !dbg !6490
  %1 = load i64, ptr %who.addr, align 8, !dbg !6490
  %conv1 = trunc i64 %1 to i32, !dbg !6490
  %call = call i64 @__do_sys_ioprio_get(i32 noundef %conv, i32 noundef %conv1) #8, !dbg !6490
  store i64 %call, ptr %ret, align 8, !dbg !6490
  br label %do.body, !dbg !6490

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6491

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6491

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %ret, align 8, !dbg !6490
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !6490
  ret i64 %2, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_ioprio_get(ptr noundef %regs) #0 align 16 !dbg !6493 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6495, metadata !DIExpression()), !dbg !6496
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6496
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6496
  %1 = load i64, ptr %bx, align 8, !dbg !6496
  %conv = trunc i64 %1 to i32, !dbg !6496
  %conv1 = zext i32 %conv to i64, !dbg !6496
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6496
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6496
  %3 = load i64, ptr %cx, align 8, !dbg !6496
  %conv2 = trunc i64 %3 to i32, !dbg !6496
  %conv3 = zext i32 %conv2 to i64, !dbg !6496
  %call = call i64 @__se_sys_ioprio_get(i64 noundef %conv1, i64 noundef %conv3) #8, !dbg !6496
  ret i64 %call, !dbg !6496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_ioprio_set(i32 noundef %which, i32 noundef %who, i32 noundef %ioprio) #5 align 16 !dbg !6497 {
entry:
  %retval = alloca i64, align 8
  %which.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  %ioprio.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %g = alloca ptr, align 8
  %user = alloca ptr, align 8
  %pgrp = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu362 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %tg___ = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  %__mptr43 = alloca ptr, align 8
  %tmp47 = alloca ptr, align 8
  %tmp50 = alloca ptr, align 8
  %____ptr53 = alloca ptr, align 8
  %__UNIQUE_ID_rcu364 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  %tmp60 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__mptr64 = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  %tmp75 = alloca %struct.kuid_t, align 4
  %tmp84 = alloca ptr, align 8
  %tmp88 = alloca ptr, align 8
  %__mptr99 = alloca ptr, align 8
  %tmp103 = alloca ptr, align 8
  %tmp106 = alloca ptr, align 8
  %__mptr111 = alloca ptr, align 8
  %tmp115 = alloca ptr, align 8
  %tmp119 = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %___val = alloca %struct.kuid_t, align 4
  %__UNIQUE_ID_rcu371 = alloca ptr, align 8
  %tmp131 = alloca ptr, align 8
  %tmp135 = alloca ptr, align 8
  %__mptr149 = alloca ptr, align 8
  %tmp153 = alloca ptr, align 8
  %tmp156 = alloca ptr, align 8
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6501, metadata !DIExpression()), !dbg !6554
  store i32 %who, ptr %who.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %who.addr, metadata !6502, metadata !DIExpression()), !dbg !6554
  store i32 %ioprio, ptr %ioprio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !6503, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !6555
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6504, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #7, !dbg !6555
  call void @llvm.dbg.declare(metadata ptr %g, metadata !6505, metadata !DIExpression()), !dbg !6557
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #7, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %user, metadata !6506, metadata !DIExpression()), !dbg !6559
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #7, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !6507, metadata !DIExpression()), !dbg !6561
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #7, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6508, metadata !DIExpression()), !dbg !6563
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6509, metadata !DIExpression()), !dbg !6565
  %0 = load i32, ptr %ioprio.addr, align 4, !dbg !6566
  %call = call i32 @ioprio_check_cap(i32 noundef %0) #8, !dbg !6567
  store i32 %call, ptr %ret, align 4, !dbg !6568
  %1 = load i32, ptr %ret, align 4, !dbg !6569
  %tobool = icmp ne i32 %1, 0, !dbg !6569
  br i1 %tobool, label %if.then, label %if.end, !dbg !6571

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6572
  %conv = sext i32 %2 to i64, !dbg !6572
  store i64 %conv, ptr %retval, align 8, !dbg !6573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164, !dbg !6573

if.end:                                           ; preds = %entry
  store i32 -3, ptr %ret, align 4, !dbg !6574
  call void @rcu_read_lock() #8, !dbg !6575
  %3 = load i32, ptr %which.addr, align 4, !dbg !6576
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb74
  ], !dbg !6577

sw.bb:                                            ; preds = %if.end
  %4 = load i32, ptr %who.addr, align 4, !dbg !6578
  %tobool1 = icmp ne i32 %4, 0, !dbg !6578
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !6580

if.then2:                                         ; preds = %sw.bb
  %call3 = call ptr @get_current() #8, !dbg !6581
  store ptr %call3, ptr %p, align 8, !dbg !6582
  br label %if.end5, !dbg !6583

if.else:                                          ; preds = %sw.bb
  %5 = load i32, ptr %who.addr, align 4, !dbg !6584
  %call4 = call ptr @find_task_by_vpid(i32 noundef %5) #8, !dbg !6585
  store ptr %call4, ptr %p, align 8, !dbg !6586
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %6 = load ptr, ptr %p, align 8, !dbg !6587
  %tobool6 = icmp ne ptr %6, null, !dbg !6587
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6589

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %p, align 8, !dbg !6590
  %8 = load i32, ptr %ioprio.addr, align 4, !dbg !6591
  %call8 = call i32 @set_task_ioprio(ptr noundef %7, i32 noundef %8) #8, !dbg !6592
  store i32 %call8, ptr %ret, align 4, !dbg !6593
  br label %if.end9, !dbg !6594

if.end9:                                          ; preds = %if.then7, %if.end5
  br label %sw.epilog, !dbg !6595

sw.bb10:                                          ; preds = %if.end
  %9 = load i32, ptr %who.addr, align 4, !dbg !6596
  %tobool11 = icmp ne i32 %9, 0, !dbg !6596
  br i1 %tobool11, label %if.else15, label %if.then12, !dbg !6598

if.then12:                                        ; preds = %sw.bb10
  %call13 = call ptr @get_current() #8, !dbg !6599
  %call14 = call ptr @task_pgrp(ptr noundef %call13) #8, !dbg !6600
  store ptr %call14, ptr %pgrp, align 8, !dbg !6601
  br label %if.end17, !dbg !6602

if.else15:                                        ; preds = %sw.bb10
  %10 = load i32, ptr %who.addr, align 4, !dbg !6603
  %call16 = call ptr @find_vpid(i32 noundef %10) #8, !dbg !6604
  store ptr %call16, ptr %pgrp, align 8, !dbg !6605
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then12
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #8, !dbg !6606
  br label %do.body, !dbg !6607

do.body:                                          ; preds = %if.end17
  %11 = load ptr, ptr %pgrp, align 8, !dbg !6608
  %cmp = icmp ne ptr %11, null, !dbg !6608
  br i1 %cmp, label %if.then19, label %if.end71, !dbg !6609

if.then19:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #7, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !6510, metadata !DIExpression()), !dbg !6610
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu362) #7, !dbg !6611
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu362, metadata !6516, metadata !DIExpression()), !dbg !6611
  br label %do.body20, !dbg !6612

do.body20:                                        ; preds = %if.then19
  br label %do.cond, !dbg !6614

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !6614

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %pgrp, align 8, !dbg !6612
  %tasks = getelementptr inbounds %struct.pid, ptr %12, i32 0, i32 3, !dbg !6612
  %arrayidx = getelementptr [4 x %struct.hlist_head], ptr %tasks, i64 0, i64 2, !dbg !6612
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !6612
  %13 = load volatile ptr, ptr %first, align 8, !dbg !6612
  store ptr %13, ptr %tmp, align 8, !dbg !6614
  %14 = load ptr, ptr %tmp, align 8, !dbg !6612
  store ptr %14, ptr %__UNIQUE_ID_rcu362, align 8, !dbg !6611
  %15 = load ptr, ptr %__UNIQUE_ID_rcu362, align 8, !dbg !6611
  store ptr %15, ptr %tmp21, align 8, !dbg !6611
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu362) #7, !dbg !6610
  %16 = load ptr, ptr %tmp21, align 8, !dbg !6611
  store ptr %16, ptr %____ptr, align 8, !dbg !6610
  %17 = load ptr, ptr %____ptr, align 8, !dbg !6610
  %tobool23 = icmp ne ptr %17, null, !dbg !6610
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !6610

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6518, metadata !DIExpression()), !dbg !6616
  %18 = load ptr, ptr %____ptr, align 8, !dbg !6616
  store ptr %18, ptr %__mptr, align 8, !dbg !6616
  %19 = load ptr, ptr %__mptr, align 8, !dbg !6616
  %add.ptr = getelementptr i8, ptr %19, i64 -1480, !dbg !6616
  store ptr %add.ptr, ptr %tmp24, align 8, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6610
  %20 = load ptr, ptr %tmp24, align 8, !dbg !6616
  br label %cond.end, !dbg !6610

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !6610

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %20, %cond.true ], [ null, %cond.false ], !dbg !6610
  store ptr %cond, ptr %tmp22, align 8, !dbg !6610
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #7, !dbg !6617
  %21 = load ptr, ptr %tmp22, align 8, !dbg !6610
  store ptr %21, ptr %p, align 8, !dbg !6617
  br label %for.cond, !dbg !6617

for.cond:                                         ; preds = %cond.end68, %cond.end
  %22 = load ptr, ptr %p, align 8, !dbg !6618
  %tobool25 = icmp ne ptr %22, null, !dbg !6617
  br i1 %tobool25, label %for.body, label %for.end70, !dbg !6617

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tg___) #7, !dbg !6619
  call void @llvm.dbg.declare(metadata ptr %tg___, metadata !6520, metadata !DIExpression()), !dbg !6619
  %23 = load ptr, ptr %p, align 8, !dbg !6619
  store ptr %23, ptr %tg___, align 8, !dbg !6619
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #7, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !6524, metadata !DIExpression()), !dbg !6620
  br label %do.body27, !dbg !6621

do.body27:                                        ; preds = %for.body
  br label %do.cond28, !dbg !6623

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6623

do.end29:                                         ; preds = %do.cond28
  %24 = load ptr, ptr %tg___, align 8, !dbg !6621
  %signal = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 104, !dbg !6621
  %25 = load ptr, ptr %signal, align 64, !dbg !6621
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %25, i32 0, i32 4, !dbg !6621
  %next = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !6621
  %26 = load volatile ptr, ptr %next, align 8, !dbg !6621
  store ptr %26, ptr %tmp30, align 8, !dbg !6623
  %27 = load ptr, ptr %tmp30, align 8, !dbg !6621
  store ptr %27, ptr %__mptr26, align 8, !dbg !6620
  %28 = load ptr, ptr %__mptr26, align 8, !dbg !6620
  %add.ptr32 = getelementptr i8, ptr %28, i64 -1528, !dbg !6620
  store ptr %add.ptr32, ptr %tmp31, align 8, !dbg !6620
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #7, !dbg !6625
  %29 = load ptr, ptr %tmp31, align 8, !dbg !6620
  store ptr %29, ptr %p, align 8, !dbg !6625
  br label %for.cond33, !dbg !6625

for.cond33:                                       ; preds = %do.end46, %do.end29
  %30 = load ptr, ptr %p, align 8, !dbg !6626
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 75, !dbg !6626
  %31 = load ptr, ptr %tg___, align 8, !dbg !6626
  %signal34 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 104, !dbg !6626
  %32 = load ptr, ptr %signal34, align 64, !dbg !6626
  %thread_head35 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 4, !dbg !6626
  %cmp36 = icmp ne ptr %thread_node, %thread_head35, !dbg !6626
  br i1 %cmp36, label %for.body38, label %for.end, !dbg !6625

for.body38:                                       ; preds = %for.cond33
  %33 = load ptr, ptr %p, align 8, !dbg !6627
  %34 = load i32, ptr %ioprio.addr, align 4, !dbg !6630
  %call39 = call i32 @set_task_ioprio(ptr noundef %33, i32 noundef %34) #8, !dbg !6631
  store i32 %call39, ptr %ret, align 4, !dbg !6632
  %35 = load i32, ptr %ret, align 4, !dbg !6633
  %tobool40 = icmp ne i32 %35, 0, !dbg !6633
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6635

if.then41:                                        ; preds = %for.body38
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #8, !dbg !6636
  store i32 15, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6638

if.end42:                                         ; preds = %for.body38
  br label %for.inc, !dbg !6639

for.inc:                                          ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr43) #7, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %__mptr43, metadata !6527, metadata !DIExpression()), !dbg !6640
  br label %do.body44, !dbg !6641

do.body44:                                        ; preds = %for.inc
  br label %do.cond45, !dbg !6643

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6643

do.end46:                                         ; preds = %do.cond45
  %36 = load ptr, ptr %p, align 8, !dbg !6641
  %thread_node48 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 75, !dbg !6641
  %next49 = getelementptr inbounds %struct.list_head, ptr %thread_node48, i32 0, i32 0, !dbg !6641
  %37 = load volatile ptr, ptr %next49, align 8, !dbg !6641
  store ptr %37, ptr %tmp47, align 8, !dbg !6643
  %38 = load ptr, ptr %tmp47, align 8, !dbg !6641
  store ptr %38, ptr %__mptr43, align 8, !dbg !6640
  %39 = load ptr, ptr %__mptr43, align 8, !dbg !6640
  %add.ptr51 = getelementptr i8, ptr %39, i64 -1528, !dbg !6640
  store ptr %add.ptr51, ptr %tmp50, align 8, !dbg !6640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr43) #7, !dbg !6626
  %40 = load ptr, ptr %tmp50, align 8, !dbg !6640
  store ptr %40, ptr %p, align 8, !dbg !6626
  br label %for.cond33, !dbg !6626, !llvm.loop !6645

for.end:                                          ; preds = %for.cond33
  %41 = load ptr, ptr %tg___, align 8, !dbg !6649
  store ptr %41, ptr %p, align 8, !dbg !6649
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6650
  br label %cleanup, !dbg !6650

cleanup:                                          ; preds = %if.then41, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tg___) #7, !dbg !6650
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup164 [
    i32 0, label %cleanup.cont
    i32 15, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc52, !dbg !6650

for.inc52:                                        ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr53) #7, !dbg !6651
  call void @llvm.dbg.declare(metadata ptr %____ptr53, metadata !6530, metadata !DIExpression()), !dbg !6651
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu364) #7, !dbg !6652
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu364, metadata !6532, metadata !DIExpression()), !dbg !6652
  br label %do.body54, !dbg !6653

do.body54:                                        ; preds = %for.inc52
  br label %do.cond55, !dbg !6655

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !6655

do.end56:                                         ; preds = %do.cond55
  %42 = load ptr, ptr %p, align 8, !dbg !6653
  %pid_links = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 73, !dbg !6653
  %arrayidx58 = getelementptr [4 x %struct.hlist_node], ptr %pid_links, i64 0, i64 2, !dbg !6653
  %next59 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx58, i32 0, i32 0, !dbg !6653
  %43 = load volatile ptr, ptr %next59, align 8, !dbg !6653
  store ptr %43, ptr %tmp57, align 8, !dbg !6655
  %44 = load ptr, ptr %tmp57, align 8, !dbg !6653
  store ptr %44, ptr %__UNIQUE_ID_rcu364, align 8, !dbg !6652
  %45 = load ptr, ptr %__UNIQUE_ID_rcu364, align 8, !dbg !6652
  store ptr %45, ptr %tmp60, align 8, !dbg !6652
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu364) #7, !dbg !6651
  %46 = load ptr, ptr %tmp60, align 8, !dbg !6652
  store ptr %46, ptr %____ptr53, align 8, !dbg !6651
  %47 = load ptr, ptr %____ptr53, align 8, !dbg !6651
  %tobool62 = icmp ne ptr %47, null, !dbg !6651
  br i1 %tobool62, label %cond.true63, label %cond.false67, !dbg !6651

cond.true63:                                      ; preds = %do.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr64) #7, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %__mptr64, metadata !6534, metadata !DIExpression()), !dbg !6657
  %48 = load ptr, ptr %____ptr53, align 8, !dbg !6657
  store ptr %48, ptr %__mptr64, align 8, !dbg !6657
  %49 = load ptr, ptr %__mptr64, align 8, !dbg !6657
  %add.ptr66 = getelementptr i8, ptr %49, i64 -1480, !dbg !6657
  store ptr %add.ptr66, ptr %tmp65, align 8, !dbg !6657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr64) #7, !dbg !6651
  %50 = load ptr, ptr %tmp65, align 8, !dbg !6657
  br label %cond.end68, !dbg !6651

cond.false67:                                     ; preds = %do.end56
  br label %cond.end68, !dbg !6651

cond.end68:                                       ; preds = %cond.false67, %cond.true63
  %cond69 = phi ptr [ %50, %cond.true63 ], [ null, %cond.false67 ], !dbg !6651
  store ptr %cond69, ptr %tmp61, align 8, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr53) #7, !dbg !6618
  %51 = load ptr, ptr %tmp61, align 8, !dbg !6651
  store ptr %51, ptr %p, align 8, !dbg !6618
  br label %for.cond, !dbg !6618, !llvm.loop !6658

for.end70:                                        ; preds = %for.cond
  br label %if.end71, !dbg !6659

if.end71:                                         ; preds = %for.end70, %do.body
  br label %do.cond72, !dbg !6660

do.cond72:                                        ; preds = %if.end71
  br label %do.end73, !dbg !6660

do.end73:                                         ; preds = %do.cond72
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #8, !dbg !6661
  br label %sw.epilog, !dbg !6662

sw.bb74:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp75) #7, !dbg !6663
  %call76 = call ptr @current_user_ns() #8, !dbg !6664
  %52 = load i32, ptr %who.addr, align 4, !dbg !6665
  %call77 = call i32 @make_kuid(ptr noundef %call76, i32 noundef %52) #8, !dbg !6663
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp75, i32 0, i32 0, !dbg !6663
  store i32 %call77, ptr %coerce.dive, align 4, !dbg !6663
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp75, i64 4, i1 false), !dbg !6663
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp75) #7, !dbg !6663
  %coerce.dive78 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6666
  %53 = load i32, ptr %coerce.dive78, align 4, !dbg !6666
  %call79 = call zeroext i1 @uid_valid(i32 %53) #8, !dbg !6666
  br i1 %call79, label %if.end81, label %if.then80, !dbg !6668

if.then80:                                        ; preds = %sw.bb74
  br label %sw.epilog, !dbg !6669

if.end81:                                         ; preds = %sw.bb74
  %54 = load i32, ptr %who.addr, align 4, !dbg !6670
  %tobool82 = icmp ne i32 %54, 0, !dbg !6670
  br i1 %tobool82, label %if.else91, label %if.then83, !dbg !6672

if.then83:                                        ; preds = %if.end81
  br label %do.body85, !dbg !6673

do.body85:                                        ; preds = %if.then83
  br label %do.cond86, !dbg !6676

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !6676

do.end87:                                         ; preds = %do.cond86
  %call89 = call ptr @get_current() #8, !dbg !6673
  %cred = getelementptr inbounds %struct.task_struct, ptr %call89, i32 0, i32 94, !dbg !6673
  %55 = load ptr, ptr %cred, align 32, !dbg !6673
  store ptr %55, ptr %tmp88, align 8, !dbg !6676
  %56 = load ptr, ptr %tmp88, align 8, !dbg !6673
  %user90 = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 21, !dbg !6678
  %57 = load ptr, ptr %user90, align 8, !dbg !6678
  store ptr %57, ptr %tmp84, align 8, !dbg !6679
  %58 = load ptr, ptr %tmp84, align 8, !dbg !6678
  store ptr %58, ptr %user, align 8, !dbg !6680
  br label %if.end94, !dbg !6681

if.else91:                                        ; preds = %if.end81
  %coerce.dive92 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6682
  %59 = load i32, ptr %coerce.dive92, align 4, !dbg !6682
  %call93 = call ptr @find_user(i32 %59) #8, !dbg !6682
  store ptr %call93, ptr %user, align 8, !dbg !6683
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %do.end87
  %60 = load ptr, ptr %user, align 8, !dbg !6684
  %tobool95 = icmp ne ptr %60, null, !dbg !6684
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !6686

if.then96:                                        ; preds = %if.end94
  br label %sw.epilog, !dbg !6687

if.end97:                                         ; preds = %if.end94
  store ptr @init_task, ptr %g, align 8, !dbg !6688
  br label %for.cond98, !dbg !6688

for.cond98:                                       ; preds = %for.end158, %if.end97
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr99) #7, !dbg !6689
  call void @llvm.dbg.declare(metadata ptr %__mptr99, metadata !6536, metadata !DIExpression()), !dbg !6689
  br label %do.body100, !dbg !6690

do.body100:                                       ; preds = %for.cond98
  br label %do.cond101, !dbg !6692

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !6692

do.end102:                                        ; preds = %do.cond101
  %61 = load ptr, ptr %g, align 8, !dbg !6690
  %tasks104 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 46, !dbg !6690
  %next105 = getelementptr inbounds %struct.list_head, ptr %tasks104, i32 0, i32 0, !dbg !6690
  %62 = load volatile ptr, ptr %next105, align 16, !dbg !6690
  store ptr %62, ptr %tmp103, align 8, !dbg !6692
  %63 = load ptr, ptr %tmp103, align 8, !dbg !6690
  store ptr %63, ptr %__mptr99, align 8, !dbg !6689
  %64 = load ptr, ptr %__mptr99, align 8, !dbg !6689
  %add.ptr107 = getelementptr i8, ptr %64, i64 -1136, !dbg !6689
  store ptr %add.ptr107, ptr %tmp106, align 8, !dbg !6689
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr99) #7, !dbg !6694
  %65 = load ptr, ptr %tmp106, align 8, !dbg !6689
  store ptr %65, ptr %g, align 8, !dbg !6694
  %cmp108 = icmp ne ptr %65, @init_task, !dbg !6694
  br i1 %cmp108, label %for.body110, label %for.end159, !dbg !6688

for.body110:                                      ; preds = %do.end102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr111) #7, !dbg !6695
  call void @llvm.dbg.declare(metadata ptr %__mptr111, metadata !6540, metadata !DIExpression()), !dbg !6695
  br label %do.body112, !dbg !6696

do.body112:                                       ; preds = %for.body110
  br label %do.cond113, !dbg !6698

do.cond113:                                       ; preds = %do.body112
  br label %do.end114, !dbg !6698

do.end114:                                        ; preds = %do.cond113
  %66 = load ptr, ptr %g, align 8, !dbg !6696
  %signal116 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 104, !dbg !6696
  %67 = load ptr, ptr %signal116, align 64, !dbg !6696
  %thread_head117 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 4, !dbg !6696
  %next118 = getelementptr inbounds %struct.list_head, ptr %thread_head117, i32 0, i32 0, !dbg !6696
  %68 = load volatile ptr, ptr %next118, align 8, !dbg !6696
  store ptr %68, ptr %tmp115, align 8, !dbg !6698
  %69 = load ptr, ptr %tmp115, align 8, !dbg !6696
  store ptr %69, ptr %__mptr111, align 8, !dbg !6695
  %70 = load ptr, ptr %__mptr111, align 8, !dbg !6695
  %add.ptr120 = getelementptr i8, ptr %70, i64 -1528, !dbg !6695
  store ptr %add.ptr120, ptr %tmp119, align 8, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr111) #7, !dbg !6700
  %71 = load ptr, ptr %tmp119, align 8, !dbg !6695
  store ptr %71, ptr %p, align 8, !dbg !6700
  br label %for.cond121, !dbg !6700

for.cond121:                                      ; preds = %do.end152, %do.end114
  %72 = load ptr, ptr %p, align 8, !dbg !6701
  %thread_node122 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 75, !dbg !6701
  %73 = load ptr, ptr %g, align 8, !dbg !6701
  %signal123 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 104, !dbg !6701
  %74 = load ptr, ptr %signal123, align 64, !dbg !6701
  %thread_head124 = getelementptr inbounds %struct.signal_struct, ptr %74, i32 0, i32 4, !dbg !6701
  %cmp125 = icmp ne ptr %thread_node122, %thread_head124, !dbg !6701
  br i1 %cmp125, label %for.body127, label %for.end158, !dbg !6700

for.body127:                                      ; preds = %for.cond121
  call void @llvm.lifetime.start.p0(i64 4, ptr %___val) #7, !dbg !6702
  call void @llvm.dbg.declare(metadata ptr %___val, metadata !6543, metadata !DIExpression()), !dbg !6702
  call void @rcu_read_lock() #8, !dbg !6702
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu371) #7, !dbg !6703
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu371, metadata !6548, metadata !DIExpression()), !dbg !6703
  br label %do.body128, !dbg !6704

do.body128:                                       ; preds = %for.body127
  br label %do.cond129, !dbg !6706

do.cond129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !6706

do.end130:                                        ; preds = %do.cond129
  %75 = load ptr, ptr %p, align 8, !dbg !6704
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 93, !dbg !6704
  %76 = load volatile ptr, ptr %real_cred, align 8, !dbg !6704
  store ptr %76, ptr %tmp131, align 8, !dbg !6706
  %77 = load ptr, ptr %tmp131, align 8, !dbg !6704
  store ptr %77, ptr %__UNIQUE_ID_rcu371, align 8, !dbg !6703
  br label %do.body132, !dbg !6703

do.body132:                                       ; preds = %do.end130
  br label %do.cond133, !dbg !6708

do.cond133:                                       ; preds = %do.body132
  br label %do.end134, !dbg !6708

do.end134:                                        ; preds = %do.cond133
  %78 = load ptr, ptr %__UNIQUE_ID_rcu371, align 8, !dbg !6703
  store ptr %78, ptr %tmp135, align 8, !dbg !6708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu371) #7, !dbg !6702
  %79 = load ptr, ptr %tmp135, align 8, !dbg !6703
  %uid136 = getelementptr inbounds %struct.cred, ptr %79, i32 0, i32 1, !dbg !6702
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %___val, ptr align 8 %uid136, i64 4, i1 false), !dbg !6702
  call void @rcu_read_unlock() #8, !dbg !6702
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 4 %___val, i64 4, i1 false), !dbg !6702
  call void @llvm.lifetime.end.p0(i64 4, ptr %___val) #7, !dbg !6710
  %coerce.dive137 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6711
  %80 = load i32, ptr %coerce.dive137, align 4, !dbg !6711
  %coerce.dive138 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6711
  %81 = load i32, ptr %coerce.dive138, align 4, !dbg !6711
  %call139 = call zeroext i1 @uid_eq(i32 %80, i32 %81) #8, !dbg !6711
  br i1 %call139, label %lor.lhs.false, label %if.then142, !dbg !6712

lor.lhs.false:                                    ; preds = %do.end134
  %82 = load ptr, ptr %p, align 8, !dbg !6713
  %call140 = call i32 @task_pid_vnr(ptr noundef %82) #8, !dbg !6714
  %tobool141 = icmp ne i32 %call140, 0, !dbg !6714
  br i1 %tobool141, label %if.end143, label %if.then142, !dbg !6715

if.then142:                                       ; preds = %lor.lhs.false, %do.end134
  br label %for.inc148, !dbg !6716

if.end143:                                        ; preds = %lor.lhs.false
  %83 = load ptr, ptr %p, align 8, !dbg !6717
  %84 = load i32, ptr %ioprio.addr, align 4, !dbg !6718
  %call144 = call i32 @set_task_ioprio(ptr noundef %83, i32 noundef %84) #8, !dbg !6719
  store i32 %call144, ptr %ret, align 4, !dbg !6720
  %85 = load i32, ptr %ret, align 4, !dbg !6721
  %tobool145 = icmp ne i32 %85, 0, !dbg !6721
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !6723

if.then146:                                       ; preds = %if.end143
  br label %free_uid, !dbg !6724

if.end147:                                        ; preds = %if.end143
  br label %for.inc148, !dbg !6725

for.inc148:                                       ; preds = %if.end147, %if.then142
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr149) #7, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %__mptr149, metadata !6550, metadata !DIExpression()), !dbg !6726
  br label %do.body150, !dbg !6727

do.body150:                                       ; preds = %for.inc148
  br label %do.cond151, !dbg !6729

do.cond151:                                       ; preds = %do.body150
  br label %do.end152, !dbg !6729

do.end152:                                        ; preds = %do.cond151
  %86 = load ptr, ptr %p, align 8, !dbg !6727
  %thread_node154 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 75, !dbg !6727
  %next155 = getelementptr inbounds %struct.list_head, ptr %thread_node154, i32 0, i32 0, !dbg !6727
  %87 = load volatile ptr, ptr %next155, align 8, !dbg !6727
  store ptr %87, ptr %tmp153, align 8, !dbg !6729
  %88 = load ptr, ptr %tmp153, align 8, !dbg !6727
  store ptr %88, ptr %__mptr149, align 8, !dbg !6726
  %89 = load ptr, ptr %__mptr149, align 8, !dbg !6726
  %add.ptr157 = getelementptr i8, ptr %89, i64 -1528, !dbg !6726
  store ptr %add.ptr157, ptr %tmp156, align 8, !dbg !6726
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr149) #7, !dbg !6701
  %90 = load ptr, ptr %tmp156, align 8, !dbg !6726
  store ptr %90, ptr %p, align 8, !dbg !6701
  br label %for.cond121, !dbg !6701, !llvm.loop !6731

for.end158:                                       ; preds = %for.cond121
  br label %for.cond98, !dbg !6694, !llvm.loop !6733

for.end159:                                       ; preds = %do.end102
  br label %free_uid, !dbg !6734

free_uid:                                         ; preds = %for.end159, %if.then146
  call void @llvm.dbg.label(metadata !6552), !dbg !6735
  %91 = load i32, ptr %who.addr, align 4, !dbg !6736
  %tobool160 = icmp ne i32 %91, 0, !dbg !6736
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !6738

if.then161:                                       ; preds = %free_uid
  %92 = load ptr, ptr %user, align 8, !dbg !6739
  call void @free_uid(ptr noundef %92) #8, !dbg !6740
  br label %if.end162, !dbg !6740

if.end162:                                        ; preds = %if.then161, %free_uid
  br label %sw.epilog, !dbg !6741

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !6742
  br label %sw.epilog, !dbg !6743

sw.epilog:                                        ; preds = %sw.default, %if.end162, %if.then96, %if.then80, %do.end73, %if.end9
  br label %out, !dbg !6743

out:                                              ; preds = %sw.epilog, %cleanup
  call void @llvm.dbg.label(metadata !6553), !dbg !6744
  call void @rcu_read_unlock() #8, !dbg !6745
  %93 = load i32, ptr %ret, align 4, !dbg !6746
  %conv163 = sext i32 %93 to i64, !dbg !6746
  store i64 %conv163, ptr %retval, align 8, !dbg !6747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164, !dbg !6747

cleanup164:                                       ; preds = %out, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #7, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #7, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #7, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #7, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !6748
  %94 = load i64, ptr %retval, align 8, !dbg !6748
  ret i64 %94, !dbg !6748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !6749 {
entry:
  call void @__rcu_read_lock() #8, !dbg !6751
  br label %do.body, !dbg !6752

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6753

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6755

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6756

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6758
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6759 dso_local ptr @find_task_by_vpid(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6762 dso_local i32 @set_task_ioprio(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_pgrp(ptr noundef %task) #5 align 16 !dbg !6765 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6769, metadata !DIExpression()), !dbg !6770
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6771
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !6772
  %1 = load ptr, ptr %signal, align 64, !dbg !6772
  %pids = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 23, !dbg !6773
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 2, !dbg !6771
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6771
  ret ptr %2, !dbg !6774
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6775 dso_local ptr @find_vpid(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6778 dso_local void @_raw_read_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6783 dso_local void @_raw_read_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #5 align 16 !dbg !6784 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6788, metadata !DIExpression()), !dbg !6790
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6789, metadata !DIExpression()), !dbg !6791
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6792
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6792
  store i32 %0, ptr %val, align 4, !dbg !6792
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6793
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6793
  ret i32 %1, !dbg !6793
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #5 align 16 !dbg !6794 {
entry:
  ret ptr @init_user_ns, !dbg !6797
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #5 align 16 !dbg !6798 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6802, metadata !DIExpression()), !dbg !6803
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6804
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6804
  %call = call i32 @__kuid_val(i32 %0) #8, !dbg !6804
  %cmp = icmp ne i32 %call, -1, !dbg !6805
  ret i1 %cmp, !dbg !6806
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6807 dso_local ptr @find_user(i32) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !6810 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6814, metadata !DIExpression()), !dbg !6816
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6815, metadata !DIExpression()), !dbg !6817
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !6818
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6818
  %call = call i32 @__kuid_val(i32 %0) #8, !dbg !6818
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !6819
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6819
  %call4 = call i32 @__kuid_val(i32 %1) #8, !dbg !6819
  %cmp = icmp eq i32 %call, %call4, !dbg !6820
  ret i1 %cmp, !dbg !6821
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !6822 {
entry:
  br label %do.body, !dbg !6823

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6824

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #8, !dbg !6826
  br label %do.body1, !dbg !6827

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6828

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_vnr(ptr noundef %tsk) #5 align 16 !dbg !6831 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6835, metadata !DIExpression()), !dbg !6836
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6837
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef null) #8, !dbg !6838
  ret i32 %call, !dbg !6839
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6840 dso_local void @free_uid(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6843 dso_local void @__rcu_read_lock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !6844 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6848, metadata !DIExpression()), !dbg !6849
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6850
  %0 = load i32, ptr %val, align 4, !dbg !6850
  ret i32 %0, !dbg !6851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6852 dso_local void @__rcu_read_unlock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6853 dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_is_realtime(ptr noundef %tsk) #5 align 16 !dbg !6856 {
entry:
  %retval = alloca i1, align 1
  %tsk.addr = alloca ptr, align 8
  %policy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6861, metadata !DIExpression()), !dbg !6863
  call void @llvm.lifetime.start.p0(i64 4, ptr %policy) #7, !dbg !6864
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !6862, metadata !DIExpression()), !dbg !6865
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6866
  %policy1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26, !dbg !6867
  %1 = load i32, ptr %policy1, align 4, !dbg !6867
  store i32 %1, ptr %policy, align 4, !dbg !6865
  %2 = load i32, ptr %policy, align 4, !dbg !6868
  %cmp = icmp eq i32 %2, 1, !dbg !6870
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6871

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %policy, align 4, !dbg !6872
  %cmp2 = icmp eq i32 %3, 2, !dbg !6873
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6874

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !6875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6875

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %policy, align 4, !dbg !6876
  %cmp3 = icmp eq i32 %4, 6, !dbg !6878
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6879

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6880

if.end5:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6881

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %policy) #7, !dbg !6882
  %5 = load i1, ptr %retval, align 1, !dbg !6882
  ret i1 %5, !dbg !6882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_nice(ptr noundef %p) #5 align 16 !dbg !6883 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6889, metadata !DIExpression()), !dbg !6890
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6891
  %static_prio = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15, !dbg !6891
  %1 = load i32, ptr %static_prio, align 16, !dbg !6891
  %sub = sub i32 %1, 120, !dbg !6891
  ret i32 %sub, !dbg !6892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_ioprio_get(i32 noundef %which, i32 noundef %who) #5 align 16 !dbg !6893 {
entry:
  %which.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  %g = alloca ptr, align 8
  %p = alloca ptr, align 8
  %user = alloca ptr, align 8
  %pgrp = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %ret = alloca i32, align 4
  %tmpio = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu376 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tg___ = alloca ptr, align 8
  %__mptr21 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__mptr43 = alloca ptr, align 8
  %tmp47 = alloca ptr, align 8
  %tmp50 = alloca ptr, align 8
  %____ptr53 = alloca ptr, align 8
  %__UNIQUE_ID_rcu378 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  %tmp60 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__mptr64 = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  %tmp75 = alloca %struct.kuid_t, align 4
  %tmp80 = alloca ptr, align 8
  %tmp84 = alloca ptr, align 8
  %__mptr95 = alloca ptr, align 8
  %tmp99 = alloca ptr, align 8
  %tmp102 = alloca ptr, align 8
  %__mptr107 = alloca ptr, align 8
  %tmp111 = alloca ptr, align 8
  %tmp115 = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %___val = alloca %struct.kuid_t, align 4
  %__UNIQUE_ID_rcu385 = alloca ptr, align 8
  %tmp127 = alloca ptr, align 8
  %tmp131 = alloca ptr, align 8
  %__mptr155 = alloca ptr, align 8
  %tmp159 = alloca ptr, align 8
  %tmp162 = alloca ptr, align 8
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6897, metadata !DIExpression()), !dbg !6948
  store i32 %who, ptr %who.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %who.addr, metadata !6898, metadata !DIExpression()), !dbg !6948
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #7, !dbg !6949
  call void @llvm.dbg.declare(metadata ptr %g, metadata !6899, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !6949
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6900, metadata !DIExpression()), !dbg !6951
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #7, !dbg !6952
  call void @llvm.dbg.declare(metadata ptr %user, metadata !6901, metadata !DIExpression()), !dbg !6953
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #7, !dbg !6954
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !6902, metadata !DIExpression()), !dbg !6955
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #7, !dbg !6956
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6903, metadata !DIExpression()), !dbg !6957
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6958
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6904, metadata !DIExpression()), !dbg !6959
  store i32 -3, ptr %ret, align 4, !dbg !6959
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmpio) #7, !dbg !6960
  call void @llvm.dbg.declare(metadata ptr %tmpio, metadata !6905, metadata !DIExpression()), !dbg !6961
  call void @rcu_read_lock() #8, !dbg !6962
  %0 = load i32, ptr %which.addr, align 4, !dbg !6963
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb74
  ], !dbg !6964

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %who.addr, align 4, !dbg !6965
  %tobool = icmp ne i32 %1, 0, !dbg !6965
  br i1 %tobool, label %if.else, label %if.then, !dbg !6967

if.then:                                          ; preds = %sw.bb
  %call = call ptr @get_current() #8, !dbg !6968
  store ptr %call, ptr %p, align 8, !dbg !6969
  br label %if.end, !dbg !6970

if.else:                                          ; preds = %sw.bb
  %2 = load i32, ptr %who.addr, align 4, !dbg !6971
  %call1 = call ptr @find_task_by_vpid(i32 noundef %2) #8, !dbg !6972
  store ptr %call1, ptr %p, align 8, !dbg !6973
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %p, align 8, !dbg !6974
  %tobool2 = icmp ne ptr %3, null, !dbg !6974
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6976

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %p, align 8, !dbg !6977
  %call4 = call i32 @get_task_raw_ioprio(ptr noundef %4) #8, !dbg !6978
  store i32 %call4, ptr %ret, align 4, !dbg !6979
  br label %if.end5, !dbg !6980

if.end5:                                          ; preds = %if.then3, %if.end
  br label %sw.epilog, !dbg !6981

sw.bb6:                                           ; preds = %entry
  %5 = load i32, ptr %who.addr, align 4, !dbg !6982
  %tobool7 = icmp ne i32 %5, 0, !dbg !6982
  br i1 %tobool7, label %if.else11, label %if.then8, !dbg !6984

if.then8:                                         ; preds = %sw.bb6
  %call9 = call ptr @get_current() #8, !dbg !6985
  %call10 = call ptr @task_pgrp(ptr noundef %call9) #8, !dbg !6986
  store ptr %call10, ptr %pgrp, align 8, !dbg !6987
  br label %if.end13, !dbg !6988

if.else11:                                        ; preds = %sw.bb6
  %6 = load i32, ptr %who.addr, align 4, !dbg !6989
  %call12 = call ptr @find_vpid(i32 noundef %6) #8, !dbg !6990
  store ptr %call12, ptr %pgrp, align 8, !dbg !6991
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then8
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #8, !dbg !6992
  br label %do.body, !dbg !6993

do.body:                                          ; preds = %if.end13
  %7 = load ptr, ptr %pgrp, align 8, !dbg !6994
  %cmp = icmp ne ptr %7, null, !dbg !6994
  br i1 %cmp, label %if.then14, label %if.end71, !dbg !6995

if.then14:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #7, !dbg !6996
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !6906, metadata !DIExpression()), !dbg !6996
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu376) #7, !dbg !6997
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu376, metadata !6912, metadata !DIExpression()), !dbg !6997
  br label %do.body15, !dbg !6998

do.body15:                                        ; preds = %if.then14
  br label %do.cond, !dbg !7000

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !7000

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %pgrp, align 8, !dbg !6998
  %tasks = getelementptr inbounds %struct.pid, ptr %8, i32 0, i32 3, !dbg !6998
  %arrayidx = getelementptr [4 x %struct.hlist_head], ptr %tasks, i64 0, i64 2, !dbg !6998
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !6998
  %9 = load volatile ptr, ptr %first, align 8, !dbg !6998
  store ptr %9, ptr %tmp, align 8, !dbg !7000
  %10 = load ptr, ptr %tmp, align 8, !dbg !6998
  store ptr %10, ptr %__UNIQUE_ID_rcu376, align 8, !dbg !6997
  %11 = load ptr, ptr %__UNIQUE_ID_rcu376, align 8, !dbg !6997
  store ptr %11, ptr %tmp16, align 8, !dbg !6997
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu376) #7, !dbg !6996
  %12 = load ptr, ptr %tmp16, align 8, !dbg !6997
  store ptr %12, ptr %____ptr, align 8, !dbg !6996
  %13 = load ptr, ptr %____ptr, align 8, !dbg !6996
  %tobool18 = icmp ne ptr %13, null, !dbg !6996
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !6996

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !7002
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6914, metadata !DIExpression()), !dbg !7002
  %14 = load ptr, ptr %____ptr, align 8, !dbg !7002
  store ptr %14, ptr %__mptr, align 8, !dbg !7002
  %15 = load ptr, ptr %__mptr, align 8, !dbg !7002
  %add.ptr = getelementptr i8, ptr %15, i64 -1480, !dbg !7002
  store ptr %add.ptr, ptr %tmp19, align 8, !dbg !7002
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6996
  %16 = load ptr, ptr %tmp19, align 8, !dbg !7002
  br label %cond.end, !dbg !6996

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !6996

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %16, %cond.true ], [ null, %cond.false ], !dbg !6996
  store ptr %cond, ptr %tmp17, align 8, !dbg !6996
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #7, !dbg !7003
  %17 = load ptr, ptr %tmp17, align 8, !dbg !6996
  store ptr %17, ptr %p, align 8, !dbg !7003
  br label %for.cond, !dbg !7003

for.cond:                                         ; preds = %cond.end68, %cond.end
  %18 = load ptr, ptr %p, align 8, !dbg !7004
  %tobool20 = icmp ne ptr %18, null, !dbg !7003
  br i1 %tobool20, label %for.body, label %for.end70, !dbg !7003

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tg___) #7, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %tg___, metadata !6916, metadata !DIExpression()), !dbg !7005
  %19 = load ptr, ptr %p, align 8, !dbg !7005
  store ptr %19, ptr %tg___, align 8, !dbg !7005
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #7, !dbg !7006
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !6920, metadata !DIExpression()), !dbg !7006
  br label %do.body22, !dbg !7007

do.body22:                                        ; preds = %for.body
  br label %do.cond23, !dbg !7009

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !7009

do.end24:                                         ; preds = %do.cond23
  %20 = load ptr, ptr %tg___, align 8, !dbg !7007
  %signal = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 104, !dbg !7007
  %21 = load ptr, ptr %signal, align 64, !dbg !7007
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 4, !dbg !7007
  %next = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !7007
  %22 = load volatile ptr, ptr %next, align 8, !dbg !7007
  store ptr %22, ptr %tmp25, align 8, !dbg !7009
  %23 = load ptr, ptr %tmp25, align 8, !dbg !7007
  store ptr %23, ptr %__mptr21, align 8, !dbg !7006
  %24 = load ptr, ptr %__mptr21, align 8, !dbg !7006
  %add.ptr27 = getelementptr i8, ptr %24, i64 -1528, !dbg !7006
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !7006
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #7, !dbg !7011
  %25 = load ptr, ptr %tmp26, align 8, !dbg !7006
  store ptr %25, ptr %p, align 8, !dbg !7011
  br label %for.cond28, !dbg !7011

for.cond28:                                       ; preds = %do.end46, %do.end24
  %26 = load ptr, ptr %p, align 8, !dbg !7012
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 75, !dbg !7012
  %27 = load ptr, ptr %tg___, align 8, !dbg !7012
  %signal29 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 104, !dbg !7012
  %28 = load ptr, ptr %signal29, align 64, !dbg !7012
  %thread_head30 = getelementptr inbounds %struct.signal_struct, ptr %28, i32 0, i32 4, !dbg !7012
  %cmp31 = icmp ne ptr %thread_node, %thread_head30, !dbg !7012
  br i1 %cmp31, label %for.body32, label %for.end, !dbg !7011

for.body32:                                       ; preds = %for.cond28
  %29 = load ptr, ptr %p, align 8, !dbg !7013
  %call33 = call i32 @get_task_ioprio(ptr noundef %29) #8, !dbg !7016
  store i32 %call33, ptr %tmpio, align 4, !dbg !7017
  %30 = load i32, ptr %tmpio, align 4, !dbg !7018
  %cmp34 = icmp slt i32 %30, 0, !dbg !7020
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !7021

if.then35:                                        ; preds = %for.body32
  br label %for.inc, !dbg !7022

if.end36:                                         ; preds = %for.body32
  %31 = load i32, ptr %ret, align 4, !dbg !7023
  %cmp37 = icmp eq i32 %31, -3, !dbg !7025
  br i1 %cmp37, label %if.then38, label %if.else39, !dbg !7026

if.then38:                                        ; preds = %if.end36
  %32 = load i32, ptr %tmpio, align 4, !dbg !7027
  store i32 %32, ptr %ret, align 4, !dbg !7028
  br label %if.end42, !dbg !7029

if.else39:                                        ; preds = %if.end36
  %33 = load i32, ptr %ret, align 4, !dbg !7030
  %conv = trunc i32 %33 to i16, !dbg !7030
  %34 = load i32, ptr %tmpio, align 4, !dbg !7031
  %conv40 = trunc i32 %34 to i16, !dbg !7031
  %call41 = call i32 @ioprio_best(i16 noundef zeroext %conv, i16 noundef zeroext %conv40) #8, !dbg !7032
  store i32 %call41, ptr %ret, align 4, !dbg !7033
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then38
  br label %for.inc, !dbg !7034

for.inc:                                          ; preds = %if.end42, %if.then35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr43) #7, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %__mptr43, metadata !6923, metadata !DIExpression()), !dbg !7035
  br label %do.body44, !dbg !7036

do.body44:                                        ; preds = %for.inc
  br label %do.cond45, !dbg !7038

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !7038

do.end46:                                         ; preds = %do.cond45
  %35 = load ptr, ptr %p, align 8, !dbg !7036
  %thread_node48 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 75, !dbg !7036
  %next49 = getelementptr inbounds %struct.list_head, ptr %thread_node48, i32 0, i32 0, !dbg !7036
  %36 = load volatile ptr, ptr %next49, align 8, !dbg !7036
  store ptr %36, ptr %tmp47, align 8, !dbg !7038
  %37 = load ptr, ptr %tmp47, align 8, !dbg !7036
  store ptr %37, ptr %__mptr43, align 8, !dbg !7035
  %38 = load ptr, ptr %__mptr43, align 8, !dbg !7035
  %add.ptr51 = getelementptr i8, ptr %38, i64 -1528, !dbg !7035
  store ptr %add.ptr51, ptr %tmp50, align 8, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr43) #7, !dbg !7012
  %39 = load ptr, ptr %tmp50, align 8, !dbg !7035
  store ptr %39, ptr %p, align 8, !dbg !7012
  br label %for.cond28, !dbg !7012, !llvm.loop !7040

for.end:                                          ; preds = %for.cond28
  %40 = load ptr, ptr %tg___, align 8, !dbg !7042
  store ptr %40, ptr %p, align 8, !dbg !7042
  call void @llvm.lifetime.end.p0(i64 8, ptr %tg___) #7, !dbg !7043
  br label %for.inc52, !dbg !7043

for.inc52:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr53) #7, !dbg !7044
  call void @llvm.dbg.declare(metadata ptr %____ptr53, metadata !6926, metadata !DIExpression()), !dbg !7044
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu378) #7, !dbg !7045
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu378, metadata !6928, metadata !DIExpression()), !dbg !7045
  br label %do.body54, !dbg !7046

do.body54:                                        ; preds = %for.inc52
  br label %do.cond55, !dbg !7048

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !7048

do.end56:                                         ; preds = %do.cond55
  %41 = load ptr, ptr %p, align 8, !dbg !7046
  %pid_links = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 73, !dbg !7046
  %arrayidx58 = getelementptr [4 x %struct.hlist_node], ptr %pid_links, i64 0, i64 2, !dbg !7046
  %next59 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx58, i32 0, i32 0, !dbg !7046
  %42 = load volatile ptr, ptr %next59, align 8, !dbg !7046
  store ptr %42, ptr %tmp57, align 8, !dbg !7048
  %43 = load ptr, ptr %tmp57, align 8, !dbg !7046
  store ptr %43, ptr %__UNIQUE_ID_rcu378, align 8, !dbg !7045
  %44 = load ptr, ptr %__UNIQUE_ID_rcu378, align 8, !dbg !7045
  store ptr %44, ptr %tmp60, align 8, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu378) #7, !dbg !7044
  %45 = load ptr, ptr %tmp60, align 8, !dbg !7045
  store ptr %45, ptr %____ptr53, align 8, !dbg !7044
  %46 = load ptr, ptr %____ptr53, align 8, !dbg !7044
  %tobool62 = icmp ne ptr %46, null, !dbg !7044
  br i1 %tobool62, label %cond.true63, label %cond.false67, !dbg !7044

cond.true63:                                      ; preds = %do.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr64) #7, !dbg !7050
  call void @llvm.dbg.declare(metadata ptr %__mptr64, metadata !6930, metadata !DIExpression()), !dbg !7050
  %47 = load ptr, ptr %____ptr53, align 8, !dbg !7050
  store ptr %47, ptr %__mptr64, align 8, !dbg !7050
  %48 = load ptr, ptr %__mptr64, align 8, !dbg !7050
  %add.ptr66 = getelementptr i8, ptr %48, i64 -1480, !dbg !7050
  store ptr %add.ptr66, ptr %tmp65, align 8, !dbg !7050
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr64) #7, !dbg !7044
  %49 = load ptr, ptr %tmp65, align 8, !dbg !7050
  br label %cond.end68, !dbg !7044

cond.false67:                                     ; preds = %do.end56
  br label %cond.end68, !dbg !7044

cond.end68:                                       ; preds = %cond.false67, %cond.true63
  %cond69 = phi ptr [ %49, %cond.true63 ], [ null, %cond.false67 ], !dbg !7044
  store ptr %cond69, ptr %tmp61, align 8, !dbg !7044
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr53) #7, !dbg !7004
  %50 = load ptr, ptr %tmp61, align 8, !dbg !7044
  store ptr %50, ptr %p, align 8, !dbg !7004
  br label %for.cond, !dbg !7004, !llvm.loop !7051

for.end70:                                        ; preds = %for.cond
  br label %if.end71, !dbg !7052

if.end71:                                         ; preds = %for.end70, %do.body
  br label %do.cond72, !dbg !7053

do.cond72:                                        ; preds = %if.end71
  br label %do.end73, !dbg !7053

do.end73:                                         ; preds = %do.cond72
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #8, !dbg !7054
  br label %sw.epilog, !dbg !7055

sw.bb74:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp75) #7, !dbg !7056
  %call76 = call ptr @current_user_ns() #8, !dbg !7057
  %51 = load i32, ptr %who.addr, align 4, !dbg !7058
  %call77 = call i32 @make_kuid(ptr noundef %call76, i32 noundef %51) #8, !dbg !7056
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp75, i32 0, i32 0, !dbg !7056
  store i32 %call77, ptr %coerce.dive, align 4, !dbg !7056
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp75, i64 4, i1 false), !dbg !7056
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp75) #7, !dbg !7056
  %52 = load i32, ptr %who.addr, align 4, !dbg !7059
  %tobool78 = icmp ne i32 %52, 0, !dbg !7059
  br i1 %tobool78, label %if.else87, label %if.then79, !dbg !7061

if.then79:                                        ; preds = %sw.bb74
  br label %do.body81, !dbg !7062

do.body81:                                        ; preds = %if.then79
  br label %do.cond82, !dbg !7065

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !7065

do.end83:                                         ; preds = %do.cond82
  %call85 = call ptr @get_current() #8, !dbg !7062
  %cred = getelementptr inbounds %struct.task_struct, ptr %call85, i32 0, i32 94, !dbg !7062
  %53 = load ptr, ptr %cred, align 32, !dbg !7062
  store ptr %53, ptr %tmp84, align 8, !dbg !7065
  %54 = load ptr, ptr %tmp84, align 8, !dbg !7062
  %user86 = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 21, !dbg !7067
  %55 = load ptr, ptr %user86, align 8, !dbg !7067
  store ptr %55, ptr %tmp80, align 8, !dbg !7068
  %56 = load ptr, ptr %tmp80, align 8, !dbg !7067
  store ptr %56, ptr %user, align 8, !dbg !7069
  br label %if.end90, !dbg !7070

if.else87:                                        ; preds = %sw.bb74
  %coerce.dive88 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7071
  %57 = load i32, ptr %coerce.dive88, align 4, !dbg !7071
  %call89 = call ptr @find_user(i32 %57) #8, !dbg !7071
  store ptr %call89, ptr %user, align 8, !dbg !7072
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %do.end83
  %58 = load ptr, ptr %user, align 8, !dbg !7073
  %tobool91 = icmp ne ptr %58, null, !dbg !7073
  br i1 %tobool91, label %if.end93, label %if.then92, !dbg !7075

if.then92:                                        ; preds = %if.end90
  br label %sw.epilog, !dbg !7076

if.end93:                                         ; preds = %if.end90
  store ptr @init_task, ptr %g, align 8, !dbg !7077
  br label %for.cond94, !dbg !7077

for.cond94:                                       ; preds = %for.end164, %if.end93
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr95) #7, !dbg !7078
  call void @llvm.dbg.declare(metadata ptr %__mptr95, metadata !6932, metadata !DIExpression()), !dbg !7078
  br label %do.body96, !dbg !7079

do.body96:                                        ; preds = %for.cond94
  br label %do.cond97, !dbg !7081

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !7081

do.end98:                                         ; preds = %do.cond97
  %59 = load ptr, ptr %g, align 8, !dbg !7079
  %tasks100 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 46, !dbg !7079
  %next101 = getelementptr inbounds %struct.list_head, ptr %tasks100, i32 0, i32 0, !dbg !7079
  %60 = load volatile ptr, ptr %next101, align 16, !dbg !7079
  store ptr %60, ptr %tmp99, align 8, !dbg !7081
  %61 = load ptr, ptr %tmp99, align 8, !dbg !7079
  store ptr %61, ptr %__mptr95, align 8, !dbg !7078
  %62 = load ptr, ptr %__mptr95, align 8, !dbg !7078
  %add.ptr103 = getelementptr i8, ptr %62, i64 -1136, !dbg !7078
  store ptr %add.ptr103, ptr %tmp102, align 8, !dbg !7078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr95) #7, !dbg !7083
  %63 = load ptr, ptr %tmp102, align 8, !dbg !7078
  store ptr %63, ptr %g, align 8, !dbg !7083
  %cmp104 = icmp ne ptr %63, @init_task, !dbg !7083
  br i1 %cmp104, label %for.body106, label %for.end165, !dbg !7077

for.body106:                                      ; preds = %do.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr107) #7, !dbg !7084
  call void @llvm.dbg.declare(metadata ptr %__mptr107, metadata !6936, metadata !DIExpression()), !dbg !7084
  br label %do.body108, !dbg !7085

do.body108:                                       ; preds = %for.body106
  br label %do.cond109, !dbg !7087

do.cond109:                                       ; preds = %do.body108
  br label %do.end110, !dbg !7087

do.end110:                                        ; preds = %do.cond109
  %64 = load ptr, ptr %g, align 8, !dbg !7085
  %signal112 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 104, !dbg !7085
  %65 = load ptr, ptr %signal112, align 64, !dbg !7085
  %thread_head113 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 4, !dbg !7085
  %next114 = getelementptr inbounds %struct.list_head, ptr %thread_head113, i32 0, i32 0, !dbg !7085
  %66 = load volatile ptr, ptr %next114, align 8, !dbg !7085
  store ptr %66, ptr %tmp111, align 8, !dbg !7087
  %67 = load ptr, ptr %tmp111, align 8, !dbg !7085
  store ptr %67, ptr %__mptr107, align 8, !dbg !7084
  %68 = load ptr, ptr %__mptr107, align 8, !dbg !7084
  %add.ptr116 = getelementptr i8, ptr %68, i64 -1528, !dbg !7084
  store ptr %add.ptr116, ptr %tmp115, align 8, !dbg !7084
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr107) #7, !dbg !7089
  %69 = load ptr, ptr %tmp115, align 8, !dbg !7084
  store ptr %69, ptr %p, align 8, !dbg !7089
  br label %for.cond117, !dbg !7089

for.cond117:                                      ; preds = %do.end158, %do.end110
  %70 = load ptr, ptr %p, align 8, !dbg !7090
  %thread_node118 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 75, !dbg !7090
  %71 = load ptr, ptr %g, align 8, !dbg !7090
  %signal119 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 104, !dbg !7090
  %72 = load ptr, ptr %signal119, align 64, !dbg !7090
  %thread_head120 = getelementptr inbounds %struct.signal_struct, ptr %72, i32 0, i32 4, !dbg !7090
  %cmp121 = icmp ne ptr %thread_node118, %thread_head120, !dbg !7090
  br i1 %cmp121, label %for.body123, label %for.end164, !dbg !7089

for.body123:                                      ; preds = %for.cond117
  call void @llvm.lifetime.start.p0(i64 4, ptr %___val) #7, !dbg !7091
  call void @llvm.dbg.declare(metadata ptr %___val, metadata !6939, metadata !DIExpression()), !dbg !7091
  call void @rcu_read_lock() #8, !dbg !7091
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu385) #7, !dbg !7092
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu385, metadata !6944, metadata !DIExpression()), !dbg !7092
  br label %do.body124, !dbg !7093

do.body124:                                       ; preds = %for.body123
  br label %do.cond125, !dbg !7095

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !7095

do.end126:                                        ; preds = %do.cond125
  %73 = load ptr, ptr %p, align 8, !dbg !7093
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 93, !dbg !7093
  %74 = load volatile ptr, ptr %real_cred, align 8, !dbg !7093
  store ptr %74, ptr %tmp127, align 8, !dbg !7095
  %75 = load ptr, ptr %tmp127, align 8, !dbg !7093
  store ptr %75, ptr %__UNIQUE_ID_rcu385, align 8, !dbg !7092
  br label %do.body128, !dbg !7092

do.body128:                                       ; preds = %do.end126
  br label %do.cond129, !dbg !7097

do.cond129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !7097

do.end130:                                        ; preds = %do.cond129
  %76 = load ptr, ptr %__UNIQUE_ID_rcu385, align 8, !dbg !7092
  store ptr %76, ptr %tmp131, align 8, !dbg !7097
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu385) #7, !dbg !7091
  %77 = load ptr, ptr %tmp131, align 8, !dbg !7092
  %uid132 = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 1, !dbg !7091
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %___val, ptr align 8 %uid132, i64 4, i1 false), !dbg !7091
  call void @rcu_read_unlock() #8, !dbg !7091
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 4 %___val, i64 4, i1 false), !dbg !7091
  call void @llvm.lifetime.end.p0(i64 4, ptr %___val) #7, !dbg !7099
  %78 = load ptr, ptr %user, align 8, !dbg !7100
  %uid133 = getelementptr inbounds %struct.user_struct, ptr %78, i32 0, i32 5, !dbg !7101
  %coerce.dive134 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !7102
  %79 = load i32, ptr %coerce.dive134, align 4, !dbg !7102
  %coerce.dive135 = getelementptr inbounds %struct.kuid_t, ptr %uid133, i32 0, i32 0, !dbg !7102
  %80 = load i32, ptr %coerce.dive135, align 8, !dbg !7102
  %call136 = call zeroext i1 @uid_eq(i32 %79, i32 %80) #8, !dbg !7102
  br i1 %call136, label %lor.lhs.false, label %if.then139, !dbg !7103

lor.lhs.false:                                    ; preds = %do.end130
  %81 = load ptr, ptr %p, align 8, !dbg !7104
  %call137 = call i32 @task_pid_vnr(ptr noundef %81) #8, !dbg !7105
  %tobool138 = icmp ne i32 %call137, 0, !dbg !7105
  br i1 %tobool138, label %if.end140, label %if.then139, !dbg !7106

if.then139:                                       ; preds = %lor.lhs.false, %do.end130
  br label %for.inc154, !dbg !7107

if.end140:                                        ; preds = %lor.lhs.false
  %82 = load ptr, ptr %p, align 8, !dbg !7108
  %call141 = call i32 @get_task_ioprio(ptr noundef %82) #8, !dbg !7109
  store i32 %call141, ptr %tmpio, align 4, !dbg !7110
  %83 = load i32, ptr %tmpio, align 4, !dbg !7111
  %cmp142 = icmp slt i32 %83, 0, !dbg !7113
  br i1 %cmp142, label %if.then144, label %if.end145, !dbg !7114

if.then144:                                       ; preds = %if.end140
  br label %for.inc154, !dbg !7115

if.end145:                                        ; preds = %if.end140
  %84 = load i32, ptr %ret, align 4, !dbg !7116
  %cmp146 = icmp eq i32 %84, -3, !dbg !7118
  br i1 %cmp146, label %if.then148, label %if.else149, !dbg !7119

if.then148:                                       ; preds = %if.end145
  %85 = load i32, ptr %tmpio, align 4, !dbg !7120
  store i32 %85, ptr %ret, align 4, !dbg !7121
  br label %if.end153, !dbg !7122

if.else149:                                       ; preds = %if.end145
  %86 = load i32, ptr %ret, align 4, !dbg !7123
  %conv150 = trunc i32 %86 to i16, !dbg !7123
  %87 = load i32, ptr %tmpio, align 4, !dbg !7124
  %conv151 = trunc i32 %87 to i16, !dbg !7124
  %call152 = call i32 @ioprio_best(i16 noundef zeroext %conv150, i16 noundef zeroext %conv151) #8, !dbg !7125
  store i32 %call152, ptr %ret, align 4, !dbg !7126
  br label %if.end153

if.end153:                                        ; preds = %if.else149, %if.then148
  br label %for.inc154, !dbg !7127

for.inc154:                                       ; preds = %if.end153, %if.then144, %if.then139
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr155) #7, !dbg !7128
  call void @llvm.dbg.declare(metadata ptr %__mptr155, metadata !6946, metadata !DIExpression()), !dbg !7128
  br label %do.body156, !dbg !7129

do.body156:                                       ; preds = %for.inc154
  br label %do.cond157, !dbg !7131

do.cond157:                                       ; preds = %do.body156
  br label %do.end158, !dbg !7131

do.end158:                                        ; preds = %do.cond157
  %88 = load ptr, ptr %p, align 8, !dbg !7129
  %thread_node160 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 75, !dbg !7129
  %next161 = getelementptr inbounds %struct.list_head, ptr %thread_node160, i32 0, i32 0, !dbg !7129
  %89 = load volatile ptr, ptr %next161, align 8, !dbg !7129
  store ptr %89, ptr %tmp159, align 8, !dbg !7131
  %90 = load ptr, ptr %tmp159, align 8, !dbg !7129
  store ptr %90, ptr %__mptr155, align 8, !dbg !7128
  %91 = load ptr, ptr %__mptr155, align 8, !dbg !7128
  %add.ptr163 = getelementptr i8, ptr %91, i64 -1528, !dbg !7128
  store ptr %add.ptr163, ptr %tmp162, align 8, !dbg !7128
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr155) #7, !dbg !7090
  %92 = load ptr, ptr %tmp162, align 8, !dbg !7128
  store ptr %92, ptr %p, align 8, !dbg !7090
  br label %for.cond117, !dbg !7090, !llvm.loop !7133

for.end164:                                       ; preds = %for.cond117
  br label %for.cond94, !dbg !7083, !llvm.loop !7135

for.end165:                                       ; preds = %do.end98
  %93 = load i32, ptr %who.addr, align 4, !dbg !7137
  %tobool166 = icmp ne i32 %93, 0, !dbg !7137
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !7139

if.then167:                                       ; preds = %for.end165
  %94 = load ptr, ptr %user, align 8, !dbg !7140
  call void @free_uid(ptr noundef %94) #8, !dbg !7141
  br label %if.end168, !dbg !7141

if.end168:                                        ; preds = %if.then167, %for.end165
  br label %sw.epilog, !dbg !7142

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %ret, align 4, !dbg !7143
  br label %sw.epilog, !dbg !7144

sw.epilog:                                        ; preds = %sw.default, %if.end168, %if.then92, %do.end73, %if.end5
  call void @rcu_read_unlock() #8, !dbg !7145
  %95 = load i32, ptr %ret, align 4, !dbg !7146
  %conv169 = sext i32 %95 to i64, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmpio) #7, !dbg !7147
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !7147
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #7, !dbg !7147
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #7, !dbg !7147
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #7, !dbg !7147
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !7147
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #7, !dbg !7147
  ret i64 %conv169, !dbg !7148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_task_raw_ioprio(ptr noundef %p) #0 align 16 !dbg !7149 {
entry:
  %p.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7151, metadata !DIExpression()), !dbg !7154
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !7155
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7152, metadata !DIExpression()), !dbg !7156
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7157
  %call = call i32 @security_task_getioprio(ptr noundef %0) #8, !dbg !7158
  store i32 %call, ptr %ret, align 4, !dbg !7159
  %1 = load i32, ptr %ret, align 4, !dbg !7160
  %tobool = icmp ne i32 %1, 0, !dbg !7160
  br i1 %tobool, label %if.then, label %if.end, !dbg !7162

if.then:                                          ; preds = %entry
  br label %out, !dbg !7163

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !7164
  call void @task_lock(ptr noundef %2) #8, !dbg !7165
  %3 = load ptr, ptr %p.addr, align 8, !dbg !7166
  %io_context = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 131, !dbg !7168
  %4 = load ptr, ptr %io_context, align 64, !dbg !7168
  %tobool1 = icmp ne ptr %4, null, !dbg !7166
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !7169

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8, !dbg !7170
  %io_context3 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 131, !dbg !7171
  %6 = load ptr, ptr %io_context3, align 64, !dbg !7171
  %ioprio = getelementptr inbounds %struct.io_context, ptr %6, i32 0, i32 2, !dbg !7172
  %7 = load i16, ptr %ioprio, align 4, !dbg !7172
  %conv = zext i16 %7 to i32, !dbg !7170
  store i32 %conv, ptr %ret, align 4, !dbg !7173
  br label %if.end6, !dbg !7174

if.else:                                          ; preds = %if.end
  %call4 = call zeroext i16 @ioprio_value(i32 noundef 0, i32 noundef 0, i32 noundef 0) #8, !dbg !7175
  %conv5 = zext i16 %call4 to i32, !dbg !7175
  store i32 %conv5, ptr %ret, align 4, !dbg !7176
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %p.addr, align 8, !dbg !7177
  call void @task_unlock(ptr noundef %8) #8, !dbg !7178
  br label %out, !dbg !7178

out:                                              ; preds = %if.end6, %if.then
  call void @llvm.dbg.label(metadata !7153), !dbg !7179
  %9 = load i32, ptr %ret, align 4, !dbg !7180
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !7181
  ret i32 %9, !dbg !7182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_task_ioprio(ptr noundef %p) #0 align 16 !dbg !7183 {
entry:
  %p.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7185, metadata !DIExpression()), !dbg !7188
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !7189
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7186, metadata !DIExpression()), !dbg !7190
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7191
  %call = call i32 @security_task_getioprio(ptr noundef %0) #8, !dbg !7192
  store i32 %call, ptr %ret, align 4, !dbg !7193
  %1 = load i32, ptr %ret, align 4, !dbg !7194
  %tobool = icmp ne i32 %1, 0, !dbg !7194
  br i1 %tobool, label %if.then, label %if.end, !dbg !7196

if.then:                                          ; preds = %entry
  br label %out, !dbg !7197

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !7198
  call void @task_lock(ptr noundef %2) #8, !dbg !7199
  %3 = load ptr, ptr %p.addr, align 8, !dbg !7200
  %call1 = call i32 @__get_task_ioprio(ptr noundef %3) #8, !dbg !7201
  store i32 %call1, ptr %ret, align 4, !dbg !7202
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7203
  call void @task_unlock(ptr noundef %4) #8, !dbg !7204
  br label %out, !dbg !7204

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !7187), !dbg !7205
  %5 = load i32, ptr %ret, align 4, !dbg !7206
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !7207
  ret i32 %5, !dbg !7208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ioprio_best(i16 noundef zeroext %aprio, i16 noundef zeroext %bprio) #0 align 16 !dbg !7209 {
entry:
  %aprio.addr = alloca i16, align 2
  %bprio.addr = alloca i16, align 2
  %__UNIQUE_ID___x374 = alloca i16, align 2
  %__UNIQUE_ID___y375 = alloca i16, align 2
  %tmp = alloca i32, align 4
  store i16 %aprio, ptr %aprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %aprio.addr, metadata !7213, metadata !DIExpression()), !dbg !7218
  store i16 %bprio, ptr %bprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bprio.addr, metadata !7214, metadata !DIExpression()), !dbg !7219
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x374) #7, !dbg !7220
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x374, metadata !7215, metadata !DIExpression()), !dbg !7220
  %0 = load i16, ptr %aprio.addr, align 2, !dbg !7220
  store i16 %0, ptr %__UNIQUE_ID___x374, align 2, !dbg !7220
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y375) #7, !dbg !7220
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y375, metadata !7217, metadata !DIExpression()), !dbg !7220
  %1 = load i16, ptr %bprio.addr, align 2, !dbg !7220
  store i16 %1, ptr %__UNIQUE_ID___y375, align 2, !dbg !7220
  %2 = load i16, ptr %__UNIQUE_ID___x374, align 2, !dbg !7220
  %conv = zext i16 %2 to i32, !dbg !7220
  %3 = load i16, ptr %__UNIQUE_ID___y375, align 2, !dbg !7220
  %conv1 = zext i16 %3 to i32, !dbg !7220
  %cmp = icmp slt i32 %conv, %conv1, !dbg !7220
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7220

cond.true:                                        ; preds = %entry
  %4 = load i16, ptr %__UNIQUE_ID___x374, align 2, !dbg !7220
  %conv3 = zext i16 %4 to i32, !dbg !7220
  br label %cond.end, !dbg !7220

cond.false:                                       ; preds = %entry
  %5 = load i16, ptr %__UNIQUE_ID___y375, align 2, !dbg !7220
  %conv4 = zext i16 %5 to i32, !dbg !7220
  br label %cond.end, !dbg !7220

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ], !dbg !7220
  store i32 %cond, ptr %tmp, align 4, !dbg !7220
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y375) #7, !dbg !7221
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x374) #7, !dbg !7221
  %6 = load i32, ptr %tmp, align 4, !dbg !7220
  ret i32 %6, !dbg !7222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7223 dso_local i32 @security_task_getioprio(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #5 align 16 !dbg !7225 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7228, metadata !DIExpression()), !dbg !7229
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7230
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !7231
  call void @spin_lock(ptr noundef %alloc_lock) #8, !dbg !7232
  ret void, !dbg !7233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #5 align 16 !dbg !7234 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7236, metadata !DIExpression()), !dbg !7237
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7238
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !7239
  call void @spin_unlock(ptr noundef %alloc_lock) #8, !dbg !7240
  ret void, !dbg !7241
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !7242 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7247, metadata !DIExpression()), !dbg !7248
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7249
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7249
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !7249
  ret void, !dbg !7250
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7251 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !7256 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7258, metadata !DIExpression()), !dbg !7259
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7260
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7260
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !7260
  ret void, !dbg !7261
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7262 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6294, !6295, !6296, !6297, !6298, !6299, !6300, !6301}
!llvm.ident = !{!6302}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___get_task_ioprio373", scope: !2, file: !3, line: 166, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.ioprio.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/ioprio\22 -D KBUILD_BASENAME=\22ioprio\22 -D KBUILD_MODNAME=\22ioprio\22 -D __KBUILD_MODNAME=kmod_ioprio -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/ioprio.ll block/ioprio.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !305, globals: !6293, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block/ioprio.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc6ee1a733a710f45d46bcce716ea42f")
!4 = !{!5, !14, !19, !115, !123, !130, !138, !154, !161, !167, !178, !184, !190, !197, !205, !212, !221, !226, !231, !237, !246, !251, !257, !263, !267, !272, !278, !285, !295, !300}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/ioprio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82e71b577aa1accd83e4de8ec4730d73")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "IOPRIO_CLASS_NONE", value: 0)
!10 = !DIEnumerator(name: "IOPRIO_CLASS_RT", value: 1)
!11 = !DIEnumerator(name: "IOPRIO_CLASS_BE", value: 2)
!12 = !DIEnumerator(name: "IOPRIO_CLASS_IDLE", value: 3)
!13 = !DIEnumerator(name: "IOPRIO_CLASS_INVALID", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !15, line: 65, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!18 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !20, line: 147, baseType: !7, size: 32, elements: !112)
!20 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !20, line: 135, size: 512, elements: !22)
!22 = !{!23, !27, !29, !31, !35, !36, !52, !110, !111}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !21, file: !20, line: 136, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 137, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !21, file: !20, line: 138, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !21, file: !20, line: 139, baseType: !32, size: 16, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 150, baseType: !19, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !21, file: !20, line: 151, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !20, line: 64, baseType: !39)
!39 = !DISubroutineType(types: !40)
!40 = !{!30, !41, !30, !28, !42, !48}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !33, line: 52, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !45, line: 88, baseType: !51)
!51 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !21, file: !20, line: 152, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !20, line: 117, size: 256, elements: !55)
!55 = !{!56, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !20, line: 118, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !33, line: 174, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 172, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !58, file: !33, line: 173, baseType: !30, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !54, file: !20, line: 119, baseType: !62, size: 192, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !63, line: 41, baseType: !64)
!63 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !63, line: 37, size: 192, elements: !65)
!65 = !{!66, !104}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !64, file: !63, line: 38, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !68, line: 29, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !68, line: 17, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !68, line: 18, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 18, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !72, file: !68, line: 19, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !76, line: 14, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !75, file: !76, line: 15, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !80, line: 44, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 15, size: 32, elements: !85)
!85 = !{!86, !87, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !80, line: 16, baseType: !57, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 24, baseType: !88, size: 16)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 24, size: 16, elements: !89)
!89 = !{!90, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !88, file: !80, line: 25, baseType: !91, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !95)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !88, file: !80, line: 26, baseType: !91, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 28, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 28, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !98, file: !80, line: 29, baseType: !101, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !34)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !98, file: !80, line: 30, baseType: !101, size: 16, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !63, line: 39, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !33, line: 190, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !33, line: 191, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !33, line: 191, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !21, file: !20, line: 153, baseType: !28, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !21, file: !20, line: 154, baseType: !28, size: 64, offset: 448)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !116, line: 9, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!117 = !{!118, !119, !120, !121, !122}
!118 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!119 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!120 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!121 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!122 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !124, line: 312, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!127 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!128 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!129 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !131, line: 68, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!132 = !{!133, !134, !135, !136, !137}
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!135 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!136 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !139, line: 1325, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!141 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!142 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!143 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!144 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!145 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!146 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!147 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!148 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!149 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!150 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!151 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!152 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!153 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !155, line: 15, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!156 = !{!157, !158, !159, !160}
!157 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!158 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!159 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!160 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !162, line: 26, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!163 = !{!164, !165, !166}
!164 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!165 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!166 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !168, line: 253, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177}
!170 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!171 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!172 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!173 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!175 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!176 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!177 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !168, line: 158, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183}
!180 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!181 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!182 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!183 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !185, line: 45, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!188 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!189 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !191, line: 487, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!192 = !{!193, !194, !195, !196}
!193 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!194 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!195 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!196 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !198, line: 620, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!201 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!202 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!203 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!204 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !198, line: 597, baseType: !30, size: 32, elements: !206)
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!208 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!209 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!210 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!211 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !191, line: 547, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220}
!214 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!215 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!216 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!217 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!218 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!219 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!220 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !191, line: 564, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!225 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !191, line: 577, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!230 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !191, line: 503, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!234 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!235 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!236 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !238, line: 593, baseType: !30, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!245 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !247, line: 2052, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!248 = !{!249, !250}
!249 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!250 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !252, line: 54, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "USRQUOTA", value: 0)
!255 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!256 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !258, line: 1381, baseType: !7, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!261 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!262 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !258, line: 295, baseType: !7, size: 32, elements: !264)
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!266 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !258, line: 285, baseType: !7, size: 32, elements: !268)
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!270 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!271 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !273, line: 16, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "TT_NONE", value: 0)
!276 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!277 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !279, line: 51, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!280 = !{!281, !282, !283, !284}
!281 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!282 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!283 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!284 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 83, baseType: !7, size: 32, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294}
!287 = !DIEnumerator(name: "IOPRIO_HINT_NONE", value: 0)
!288 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_1", value: 1)
!289 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_2", value: 2)
!290 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_3", value: 3)
!291 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_4", value: 4)
!292 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_5", value: 5)
!293 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_6", value: 6)
!294 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_7", value: 7)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 53, baseType: !7, size: 32, elements: !296)
!296 = !{!297, !298, !299}
!297 = !DIEnumerator(name: "IOPRIO_WHO_PROCESS", value: 1)
!298 = !DIEnumerator(name: "IOPRIO_WHO_PGRP", value: 2)
!299 = !DIEnumerator(name: "IOPRIO_WHO_USER", value: 3)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 10, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!302 = !{!303, !304}
!303 = !DIEnumerator(name: "false", value: 0)
!304 = !DIEnumerator(name: "true", value: 1)
!305 = !{!7, !28, !30, !306, !314, !309, !315, !6286, !1079, !6289, !818, !6292, !47}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !33, line: 198, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !33, line: 199, baseType: !309, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !310, file: !33, line: 199, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !317, line: 746, size: 58368, elements: !318)
!317 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!318 = !{!319, !329, !330, !331, !337, !338, !339, !340, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !423, !434, !535, !539, !542, !573, !574, !575, !576, !587, !589, !590, !591, !592, !593, !594, !605, !606, !609, !610, !611, !612, !613, !614, !615, !616, !623, !624, !631, !632, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5447, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5490, !5496, !5497, !5498, !5499, !5500, !5502, !5505, !5512, !5517, !5520, !5523, !5526, !5558, !5756, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5794, !5795, !5796, !5805, !5813, !5814, !5815, !5816, !5817, !5822, !5823, !5824, !5827, !5828, !5830, !5841, !5844, !5851, !5854, !5855, !5941, !5942, !5943, !5944, !5945, !5951, !5952, !5953, !5954, !5955, !5956, !5959, !5962, !5963, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5987, !5988, !5989, !5990, !5991, !5992, !5993, !5994, !5995, !6006, !6007, !6013, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6095, !6097, !6098, !6099, !6100, !6101, !6102, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6119, !6120, !6121}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !316, file: !317, line: 752, baseType: !320, size: 192)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !321, line: 56, size: 192, elements: !322)
!321 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!322 = !{!323, !324, !325, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !321, line: 57, baseType: !47, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !320, file: !321, line: 58, baseType: !47, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !320, file: !321, line: 59, baseType: !326, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !320, file: !321, line: 61, baseType: !326, size: 32, offset: 160)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !316, file: !317, line: 754, baseType: !7, size: 32, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !316, file: !317, line: 767, baseType: !28, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !316, file: !317, line: 768, baseType: !332, size: 32, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !333, line: 113, baseType: !334)
!333 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !333, line: 111, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !334, file: !333, line: 112, baseType: !57, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !317, line: 770, baseType: !7, size: 32, offset: 352)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !316, file: !317, line: 771, baseType: !7, size: 32, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !316, file: !317, line: 774, baseType: !30, size: 32, offset: 416)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !316, file: !317, line: 775, baseType: !341, size: 128, offset: 448)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !342, line: 58, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!343 = !{!344, !350, !355, !356}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !341, file: !342, line: 59, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !346, line: 60, size: 64, elements: !347)
!346 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !346, line: 61, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !342, line: 60, baseType: !351, size: 32, offset: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !342, line: 60, size: 32, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !351, file: !342, line: 61, baseType: !7, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !351, file: !342, line: 62, baseType: !57, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !341, file: !342, line: 65, baseType: !101, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !341, file: !342, line: 65, baseType: !101, size: 16, offset: 112)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !316, file: !317, line: 776, baseType: !7, size: 32, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !316, file: !317, line: 777, baseType: !47, size: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !316, file: !317, line: 778, baseType: !315, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !316, file: !317, line: 787, baseType: !30, size: 32, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !316, file: !317, line: 788, baseType: !30, size: 32, offset: 800)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !316, file: !317, line: 790, baseType: !30, size: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !316, file: !317, line: 792, baseType: !30, size: 32, offset: 864)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !316, file: !317, line: 793, baseType: !30, size: 32, offset: 896)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !316, file: !317, line: 794, baseType: !30, size: 32, offset: 928)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !316, file: !317, line: 795, baseType: !7, size: 32, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !316, file: !317, line: 797, baseType: !368, size: 2048, offset: 1024)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !317, line: 551, size: 2048, elements: !369)
!369 = !{!370, !375, !383, !387, !388, !389, !390, !391, !392, !393, !394, !397, !398, !399, !400, !402, !405, !406, !407}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !368, file: !317, line: 553, baseType: !371, size: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !317, line: 411, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !371, file: !317, line: 412, baseType: !47, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !371, file: !317, line: 413, baseType: !326, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !368, file: !317, line: 554, baseType: !376, size: 192, align: 64, offset: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !377, line: 5, size: 192, align: 64, elements: !378)
!377 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!378 = !{!379, !380, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !376, file: !377, line: 6, baseType: !47, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !376, file: !377, line: 7, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !376, file: !377, line: 8, baseType: !381, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !368, file: !317, line: 555, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !386)
!386 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !368, file: !317, line: 556, baseType: !384, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !368, file: !317, line: 558, baseType: !105, size: 128, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !368, file: !317, line: 559, baseType: !7, size: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !368, file: !317, line: 561, baseType: !384, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !368, file: !317, line: 562, baseType: !384, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !368, file: !317, line: 563, baseType: !384, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !368, file: !317, line: 564, baseType: !384, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !368, file: !317, line: 565, baseType: !395, size: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !51)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !368, file: !317, line: 566, baseType: !384, size: 64, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !368, file: !317, line: 568, baseType: !384, size: 64, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !368, file: !317, line: 571, baseType: !30, size: 32, offset: 1088)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !368, file: !317, line: 572, baseType: !401, size: 64, offset: 1152)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !368, file: !317, line: 574, baseType: !403, size: 64, offset: 1216)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !317, line: 49, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !368, file: !317, line: 576, baseType: !403, size: 64, offset: 1280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !368, file: !317, line: 578, baseType: !47, size: 64, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !368, file: !317, line: 588, baseType: !408, size: 512, align: 512, offset: 1536)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !317, line: 497, size: 512, align: 512, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !408, file: !317, line: 498, baseType: !384, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !408, file: !317, line: 499, baseType: !384, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !408, file: !317, line: 500, baseType: !384, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !408, file: !317, line: 501, baseType: !326, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !408, file: !317, line: 502, baseType: !326, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !408, file: !317, line: 503, baseType: !47, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !408, file: !317, line: 504, baseType: !47, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !408, file: !317, line: 505, baseType: !47, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !408, file: !317, line: 506, baseType: !419, size: 64, align: 64, offset: 448)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !317, line: 445, size: 64, align: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !419, file: !317, line: 446, baseType: !7, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !419, file: !317, line: 447, baseType: !7, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !316, file: !317, line: 798, baseType: !424, size: 384, offset: 3072)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !317, line: 592, size: 384, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !424, file: !317, line: 593, baseType: !105, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !424, file: !317, line: 594, baseType: !47, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !424, file: !317, line: 595, baseType: !47, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !424, file: !317, line: 596, baseType: !7, size: 32, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !424, file: !317, line: 597, baseType: !34, size: 16, offset: 288)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !424, file: !317, line: 598, baseType: !34, size: 16, offset: 304)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !424, file: !317, line: 600, baseType: !433, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !316, file: !317, line: 799, baseType: !435, size: 1792, offset: 3456)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !317, line: 610, size: 1792, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !532, !533}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !435, file: !317, line: 611, baseType: !376, size: 192, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !435, file: !317, line: 618, baseType: !384, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !435, file: !317, line: 619, baseType: !384, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !435, file: !317, line: 620, baseType: !384, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !435, file: !317, line: 621, baseType: !384, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !435, file: !317, line: 622, baseType: !384, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !435, file: !317, line: 629, baseType: !395, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !435, file: !317, line: 630, baseType: !384, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !317, line: 631, baseType: !7, size: 32, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !435, file: !317, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !435, file: !317, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !435, file: !317, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !435, file: !317, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !435, file: !317, line: 662, baseType: !451, size: 512, offset: 704)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !15, line: 118, size: 512, elements: !452)
!452 = !{!453, !461, !462, !467, !528, !529, !530, !531}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !15, line: 119, baseType: !454, size: 256)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !455, line: 9, size: 256, elements: !456)
!455 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !455, line: 10, baseType: !376, size: 192, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !454, file: !455, line: 11, baseType: !459, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !460, line: 29, baseType: !395)
!460 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !451, file: !15, line: 120, baseType: !459, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !451, file: !15, line: 121, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!14, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !451, file: !15, line: 122, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !15, line: 159, size: 512, align: 512, elements: !470)
!470 = !{!471, !497, !498, !501, !511, !512, !523, !527}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !469, file: !15, line: 160, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !15, line: 215, size: 4608, align: 512, elements: !474)
!474 = !{!475, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !473, file: !15, line: 216, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !76, line: 23, baseType: !75)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !473, file: !15, line: 217, baseType: !7, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !473, file: !15, line: 218, baseType: !7, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !473, file: !15, line: 219, baseType: !7, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !473, file: !15, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !473, file: !15, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !473, file: !15, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !473, file: !15, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !473, file: !15, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !473, file: !15, line: 226, baseType: !7, size: 32, offset: 160)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !473, file: !15, line: 227, baseType: !34, size: 16, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !473, file: !15, line: 228, baseType: !34, size: 16, offset: 208)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !473, file: !15, line: 229, baseType: !7, size: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !473, file: !15, line: 235, baseType: !459, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !473, file: !15, line: 236, baseType: !466, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !473, file: !15, line: 237, baseType: !459, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !473, file: !15, line: 238, baseType: !466, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !473, file: !15, line: 239, baseType: !494, size: 4096, align: 512, offset: 512)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 4096, align: 512, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !469, file: !15, line: 161, baseType: !7, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !469, file: !15, line: 162, baseType: !499, size: 32, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !33, line: 32, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !45, line: 96, baseType: !30)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !469, file: !15, line: 163, baseType: !502, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !503, line: 274, baseType: !504)
!503 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !503, line: 274, size: 32, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !504, file: !503, line: 274, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !503, line: 69, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !503, line: 64, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !508, file: !503, line: 65, baseType: !7, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !469, file: !15, line: 164, baseType: !466, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !469, file: !15, line: 165, baseType: !513, size: 128, offset: 256)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !455, line: 14, size: 128, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !513, file: !455, line: 15, baseType: !516, size: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !377, line: 26, size: 128, elements: !517)
!517 = !{!518, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !516, file: !377, line: 27, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !377, line: 12, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !519, file: !377, line: 13, baseType: !381, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !516, file: !377, line: 28, baseType: !381, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !469, file: !15, line: 166, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!459}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !469, file: !15, line: 167, baseType: !459, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !451, file: !15, line: 123, baseType: !91, size: 8, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !451, file: !15, line: 124, baseType: !91, size: 8, offset: 456)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !451, file: !15, line: 125, baseType: !91, size: 8, offset: 464)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !451, file: !15, line: 126, baseType: !91, size: 8, offset: 472)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !435, file: !317, line: 671, baseType: !451, size: 512, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !435, file: !317, line: 679, baseType: !534, size: 64, offset: 1728)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !316, file: !317, line: 800, baseType: !536, size: 64, offset: 5248)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !317, line: 800, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !316, file: !317, line: 809, baseType: !540, size: 64, offset: 5312)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !317, line: 70, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !316, file: !317, line: 825, baseType: !543, size: 2048, align: 512, offset: 5632)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !317, line: 509, size: 2048, align: 512, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !543, file: !317, line: 511, baseType: !384, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !543, file: !317, line: 512, baseType: !384, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !543, file: !317, line: 513, baseType: !384, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !543, file: !317, line: 514, baseType: !384, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !543, file: !317, line: 515, baseType: !384, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !543, file: !317, line: 516, baseType: !384, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !543, file: !317, line: 518, baseType: !384, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !543, file: !317, line: 519, baseType: !384, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !543, file: !317, line: 520, baseType: !395, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !543, file: !317, line: 522, baseType: !384, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !543, file: !317, line: 523, baseType: !384, size: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !543, file: !317, line: 524, baseType: !395, size: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !543, file: !317, line: 526, baseType: !395, size: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !543, file: !317, line: 527, baseType: !384, size: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !543, file: !317, line: 529, baseType: !384, size: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !543, file: !317, line: 530, baseType: !384, size: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !543, file: !317, line: 531, baseType: !384, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !543, file: !317, line: 532, baseType: !384, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !543, file: !317, line: 533, baseType: !384, size: 64, offset: 1152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !543, file: !317, line: 535, baseType: !384, size: 64, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !543, file: !317, line: 536, baseType: !384, size: 64, offset: 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !543, file: !317, line: 537, baseType: !384, size: 64, offset: 1344)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !543, file: !317, line: 538, baseType: !384, size: 64, offset: 1408)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !543, file: !317, line: 539, baseType: !384, size: 64, offset: 1472)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !543, file: !317, line: 540, baseType: !384, size: 64, offset: 1536)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !543, file: !317, line: 541, baseType: !384, size: 64, offset: 1600)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !543, file: !317, line: 542, baseType: !384, size: 64, offset: 1664)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !543, file: !317, line: 543, baseType: !384, size: 64, offset: 1728)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !316, file: !317, line: 833, baseType: !7, size: 32, offset: 7680)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !316, file: !317, line: 836, baseType: !7, size: 32, offset: 7712)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !316, file: !317, line: 837, baseType: !30, size: 32, offset: 7744)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !316, file: !317, line: 838, baseType: !577, size: 64, offset: 7808)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !580, line: 19, baseType: !581)
!580 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !580, line: 19, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !581, file: !580, line: 19, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 1)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !316, file: !317, line: 839, baseType: !588, size: 64, offset: 7872)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !316, file: !317, line: 840, baseType: !579, size: 64, offset: 7936)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !316, file: !317, line: 841, baseType: !28, size: 64, offset: 8000)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !316, file: !317, line: 843, baseType: !34, size: 16, offset: 8064)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !316, file: !317, line: 845, baseType: !34, size: 16, offset: 8080)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !316, file: !317, line: 848, baseType: !30, size: 32, offset: 8096)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !316, file: !317, line: 849, baseType: !595, size: 32, offset: 8128)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !317, line: 718, size: 32, elements: !596)
!596 = !{!597, !604}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !595, file: !317, line: 724, baseType: !598, size: 32)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !317, line: 719, size: 32, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !598, file: !317, line: 720, baseType: !91, size: 8)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !598, file: !317, line: 721, baseType: !91, size: 8, offset: 8)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !598, file: !317, line: 722, baseType: !91, size: 8, offset: 16)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !598, file: !317, line: 723, baseType: !91, size: 8, offset: 24)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !595, file: !317, line: 725, baseType: !326, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !316, file: !317, line: 850, baseType: !105, size: 128, offset: 8192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !316, file: !317, line: 851, baseType: !607, size: 64, offset: 8320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !317, line: 60, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !316, file: !317, line: 855, baseType: !47, size: 64, offset: 8384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !316, file: !317, line: 856, baseType: !91, size: 8, offset: 8448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !316, file: !317, line: 857, baseType: !91, size: 8, offset: 8456)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !316, file: !317, line: 858, baseType: !30, size: 32, offset: 8480)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !316, file: !317, line: 859, baseType: !105, size: 128, offset: 8512)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !316, file: !317, line: 860, baseType: !30, size: 32, offset: 8640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !316, file: !317, line: 861, baseType: !105, size: 128, offset: 8704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !316, file: !317, line: 873, baseType: !617, size: 256, offset: 8832)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !317, line: 376, size: 256, elements: !618)
!618 = !{!619, !620, !621, !622}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !617, file: !317, line: 381, baseType: !47, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !617, file: !317, line: 384, baseType: !386, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !617, file: !317, line: 389, baseType: !386, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !617, file: !317, line: 392, baseType: !386, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !316, file: !317, line: 875, baseType: !105, size: 128, offset: 9088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !316, file: !317, line: 877, baseType: !625, size: 320, offset: 9216)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !626, line: 86, size: 320, elements: !627)
!626 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !625, file: !626, line: 87, baseType: !30, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !625, file: !626, line: 88, baseType: !105, size: 128, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !625, file: !626, line: 89, baseType: !105, size: 128, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !316, file: !317, line: 878, baseType: !376, size: 192, align: 64, offset: 9536)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !316, file: !317, line: 881, baseType: !633, size: 64, offset: 9728)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !139, line: 733, size: 10240, elements: !635)
!635 = !{!636, !5361}
!636 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !139, line: 734, baseType: !637, size: 10240)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !634, file: !139, line: 734, size: 10240, elements: !638)
!638 = !{!639, !643, !657, !5240, !5241, !5242, !5243, !5244, !5245, !5252, !5253, !5254, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5293, !5295, !5298, !5341, !5342, !5343, !5346, !5347, !5348, !5351, !5352, !5353, !5359, !5360}
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !139, line: 739, baseType: !640, size: 512, align: 512)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !637, file: !139, line: 739, size: 512, align: 512, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !640, file: !139, line: 747, baseType: !57, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !637, file: !139, line: 750, baseType: !644, size: 128, offset: 512)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !645, line: 218, size: 128, elements: !646)
!645 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!646 = !{!647, !655, !656}
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !645, line: 219, baseType: !648, size: 32)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !645, line: 219, size: 32, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !648, file: !645, line: 220, baseType: !67, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !648, file: !645, line: 221, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !645, line: 197, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !645, line: 197, elements: !654)
!654 = !{}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !644, file: !645, line: 223, baseType: !7, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !644, file: !645, line: 224, baseType: !28, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !637, file: !139, line: 752, baseType: !658, size: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!47, !661, !47, !47, !47, !47}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !247, line: 994, size: 1856, align: 64, elements: !663)
!663 = !{!664, !678, !679, !681, !688, !700, !701, !702, !1078, !1156, !1165, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !247, line: 995, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !247, line: 995, size: 128, elements: !666)
!666 = !{!667, !668, !677}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !665, file: !247, line: 996, baseType: !345, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !665, file: !247, line: 997, baseType: !669, size: 128, align: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !33, line: 232, size: 128, align: 64, elements: !670)
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !33, line: 233, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !669, file: !33, line: 234, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !672}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !665, file: !247, line: 998, baseType: !7, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !662, file: !247, line: 1005, baseType: !67, size: 32, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !662, file: !247, line: 1006, baseType: !680, size: 32, offset: 160)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !33, line: 156, baseType: !7)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !662, file: !247, line: 1007, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !683, line: 13, baseType: !684)
!683 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !33, line: 181, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 179, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !685, file: !33, line: 180, baseType: !395, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !662, file: !247, line: 1008, baseType: !689, size: 256, offset: 256)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !690, line: 66, size: 256, elements: !691)
!690 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!691 = !{!692, !693, !694, !699}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !689, file: !690, line: 67, baseType: !682, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !689, file: !690, line: 68, baseType: !476, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !689, file: !690, line: 70, baseType: !695, size: 32, offset: 96)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !696, line: 15, size: 32, elements: !697)
!696 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !695, file: !696, line: 20, baseType: !57, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !689, file: !690, line: 72, baseType: !105, size: 128, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !662, file: !247, line: 1009, baseType: !49, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !662, file: !247, line: 1010, baseType: !7, size: 32, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !662, file: !247, line: 1011, baseType: !703, size: 256, offset: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !247, line: 948, size: 256, elements: !704)
!704 = !{!705, !728, !1074, !1075, !1076, !1077}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !247, line: 949, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !707, line: 34, baseType: !708)
!707 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !707, line: 25, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !708, file: !707, line: 26, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !712, line: 27, baseType: !713)
!712 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !712, line: 13, size: 64, elements: !714)
!714 = !{!715, !727}
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !712, line: 14, baseType: !716, size: 32)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !712, line: 14, size: 32, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !716, file: !712, line: 15, baseType: !57, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 16, baseType: !720, size: 32)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 16, size: 32, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !720, file: !712, line: 18, baseType: !91, size: 8)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !720, file: !712, line: 19, baseType: !724, size: 24, offset: 8)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 3)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !713, file: !712, line: 26, baseType: !79, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !703, file: !247, line: 950, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !116, line: 59, size: 768, elements: !731)
!731 = !{!732, !733, !734, !735, !742, !743, !744, !745}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !730, file: !116, line: 61, baseType: !332, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !730, file: !116, line: 62, baseType: !7, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !116, line: 63, baseType: !67, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !730, file: !116, line: 65, baseType: !736, size: 256, offset: 128)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 256, elements: !740)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !33, line: 194, size: 64, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !737, file: !33, line: 195, baseType: !309, size: 64)
!740 = !{!741}
!741 = !DISubrange(count: 4)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !730, file: !116, line: 66, baseType: !737, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !730, file: !116, line: 68, baseType: !62, size: 192, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !730, file: !116, line: 69, baseType: !669, size: 128, align: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !730, file: !116, line: 70, baseType: !746, offset: 768)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, elements: !1072)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !116, line: 54, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !747, file: !116, line: 55, baseType: !30, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !747, file: !116, line: 56, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !753, line: 26, size: 1152, elements: !754)
!753 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!754 = !{!755, !769, !770, !771, !772, !776, !777, !778, !781, !1068, !1069, !1070, !1071}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !752, file: !753, line: 27, baseType: !756, size: 192)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !757, line: 19, size: 192, elements: !758)
!757 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!758 = !{!759, !767, !768}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !756, file: !757, line: 20, baseType: !760, size: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !761, line: 296, size: 128, elements: !762)
!761 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!762 = !{!763, !764, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !760, file: !761, line: 297, baseType: !67, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !760, file: !761, line: 299, baseType: !765, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 154, baseType: !7)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !760, file: !761, line: 300, baseType: !28, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !756, file: !757, line: 21, baseType: !7, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !756, file: !757, line: 22, baseType: !7, size: 32, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !752, file: !753, line: 28, baseType: !669, size: 128, align: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !752, file: !753, line: 29, baseType: !7, size: 32, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !752, file: !753, line: 30, baseType: !315, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !752, file: !753, line: 31, baseType: !773, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !775, line: 85, flags: DIFlagFwdDecl)
!775 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!776 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !752, file: !753, line: 32, baseType: !7, size: 32, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !752, file: !753, line: 33, baseType: !751, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !752, file: !753, line: 35, baseType: !779, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !753, line: 17, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !752, file: !753, line: 37, baseType: !782, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !784, line: 68, size: 4800, elements: !785)
!784 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!785 = !{!786, !808, !809, !810, !811, !812, !820, !827, !838, !839, !842, !843, !965, !966, !978, !1048, !1049, !1063, !1066}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !783, file: !784, line: 69, baseType: !787, size: 576)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !784, line: 23, size: 576, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !787, file: !784, line: 24, baseType: !326, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !784, line: 25, baseType: !791, size: 512, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !784, line: 25, size: 512, elements: !792)
!792 = !{!793, !802}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !791, file: !784, line: 26, baseType: !794, size: 480)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 480, elements: !800)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !784, line: 17, size: 96, elements: !796)
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !795, file: !784, line: 18, baseType: !326, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !795, file: !784, line: 19, baseType: !326, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !795, file: !784, line: 20, baseType: !326, size: 32, offset: 64)
!800 = !{!801}
!801 = !DISubrange(count: 5)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !784, line: 27, baseType: !803, size: 128)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !784, line: 27, size: 128, elements: !804)
!804 = !{!805, !807}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !803, file: !784, line: 28, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !803, file: !784, line: 29, baseType: !806, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !783, file: !784, line: 70, baseType: !787, size: 576, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !783, file: !784, line: 71, baseType: !787, size: 576, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !783, file: !784, line: 72, baseType: !782, size: 64, offset: 1728)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !783, file: !784, line: 73, baseType: !30, size: 32, offset: 1792)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !783, file: !784, line: 74, baseType: !813, size: 32, offset: 1824)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !814, line: 23, baseType: !815)
!814 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 21, size: 32, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !815, file: !814, line: 22, baseType: !818, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !33, line: 37, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !45, line: 49, baseType: !7)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !783, file: !784, line: 75, baseType: !821, size: 32, offset: 1856)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !814, line: 28, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 26, size: 32, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !822, file: !814, line: 27, baseType: !825, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !33, line: 38, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !45, line: 50, baseType: !7)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !783, file: !784, line: 76, baseType: !828, size: 192, offset: 1920)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !829, line: 9, size: 192, elements: !830)
!829 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!830 = !{!831, !832, !836, !837}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !828, file: !829, line: 10, baseType: !682, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !828, file: !829, line: 11, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !829, line: 7, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !828, file: !829, line: 12, baseType: !7, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !828, file: !829, line: 13, baseType: !332, size: 32, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !784, line: 77, baseType: !47, size: 64, offset: 2112)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !783, file: !784, line: 80, baseType: !840, size: 8, offset: 2176)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !33, line: 35, baseType: !841)
!841 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !783, file: !784, line: 88, baseType: !105, size: 128, offset: 2240)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !783, file: !784, line: 89, baseType: !844, size: 64, offset: 2368)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !846, line: 195, size: 1728, elements: !847)
!846 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!847 = !{!848, !849, !854, !859, !868, !871, !872, !879, !880, !881, !882, !885, !886, !887, !889, !890, !929, !950}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !845, file: !846, line: 196, baseType: !332, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !845, file: !846, line: 197, baseType: !850, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !846, line: 28, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !33, line: 104, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !30)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 198, baseType: !855, size: 192, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 198, size: 192, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !855, file: !846, line: 199, baseType: !105, size: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !855, file: !846, line: 200, baseType: !376, size: 192, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !845, file: !846, line: 205, baseType: !860, size: 320, offset: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !861, line: 48, size: 320, elements: !862)
!861 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!862 = !{!863, !864, !865, !866, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !860, file: !861, line: 49, baseType: !682, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !860, file: !861, line: 55, baseType: !682, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !860, file: !861, line: 57, baseType: !695, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !860, file: !861, line: 59, baseType: !476, size: 32, offset: 160)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !860, file: !861, line: 60, baseType: !105, size: 128, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !845, file: !846, line: 206, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !846, line: 206, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !845, file: !846, line: 207, baseType: !28, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 208, baseType: !873, size: 64, offset: 704)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 208, size: 64, elements: !874)
!874 = !{!875, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !873, file: !846, line: 209, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !877, line: 8, baseType: !396)
!877 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !873, file: !846, line: 210, baseType: !876, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !845, file: !846, line: 212, baseType: !876, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !845, file: !846, line: 213, baseType: !813, size: 32, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !845, file: !846, line: 214, baseType: !821, size: 32, offset: 864)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !845, file: !846, line: 215, baseType: !883, size: 32, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !846, line: 31, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 110, baseType: !326)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !845, file: !846, line: 216, baseType: !34, size: 16, offset: 928)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !845, file: !846, line: 217, baseType: !34, size: 16, offset: 944)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !845, file: !846, line: 221, baseType: !888, size: 16, offset: 960)
!888 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !846, line: 228, baseType: !47, size: 64, offset: 1024)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 245, baseType: !891, size: 320, offset: 1088)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 245, size: 320, elements: !892)
!892 = !{!893, !920}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !891, file: !846, line: 246, baseType: !894, size: 320)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !846, line: 114, size: 320, elements: !895)
!895 = !{!896, !897, !909, !912, !919}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !894, file: !846, line: 116, baseType: !47, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !846, line: 117, baseType: !898, size: 64, offset: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !846, line: 117, size: 64, elements: !899)
!899 = !{!900, !908}
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !846, line: 118, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !846, line: 118, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !901, file: !846, line: 120, baseType: !101, size: 16)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !901, file: !846, line: 121, baseType: !905, size: 48, offset: 16)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 6)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !898, file: !846, line: 127, baseType: !47, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !894, file: !846, line: 129, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !846, line: 102, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !894, file: !846, line: 130, baseType: !913, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !846, line: 108, size: 192, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !914, file: !846, line: 109, baseType: !669, size: 128, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !914, file: !846, line: 110, baseType: !332, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !914, file: !846, line: 111, baseType: !840, size: 8, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !894, file: !846, line: 131, baseType: !24, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !846, line: 247, baseType: !921, size: 320)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !846, line: 247, size: 320, elements: !922)
!922 = !{!923, !924, !925, !926, !927}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !921, file: !846, line: 248, baseType: !47, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !921, file: !846, line: 249, baseType: !47, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !921, file: !846, line: 250, baseType: !910, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !921, file: !846, line: 251, baseType: !913, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !921, file: !846, line: 252, baseType: !928, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 260, baseType: !930, size: 256, offset: 1408)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 260, size: 256, elements: !931)
!931 = !{!932, !938}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !930, file: !846, line: 261, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !846, line: 134, size: 256, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !933, file: !846, line: 135, baseType: !28, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !933, file: !846, line: 136, baseType: !937, size: 256)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !740)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !846, line: 262, baseType: !939, size: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !846, line: 262, size: 256, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !939, file: !846, line: 264, baseType: !105, size: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !939, file: !846, line: 265, baseType: !943, size: 128, offset: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !944, line: 22, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!945 = !{!946, !949}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !943, file: !944, line: 23, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !944, line: 23, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !943, file: !944, line: 24, baseType: !47, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !845, file: !846, line: 280, baseType: !951, size: 64, offset: 1664)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !846, line: 176, size: 192, elements: !953)
!953 = !{!954, !963, !964}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !952, file: !846, line: 177, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !846, line: 171, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!30, !844, !959, !961, !844}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !952, file: !846, line: 178, baseType: !844, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !952, file: !846, line: 179, baseType: !910, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !783, file: !784, line: 90, baseType: !860, size: 320, offset: 2432)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !783, file: !784, line: 97, baseType: !967, size: 256, offset: 2752)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !968, line: 98, size: 256, elements: !969)
!968 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !967, file: !968, line: 99, baseType: !682, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !967, file: !968, line: 100, baseType: !105, size: 128, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !967, file: !968, line: 101, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !968, line: 21, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !783, file: !784, line: 99, baseType: !979, size: 768, offset: 3008)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !20, line: 199, size: 768, elements: !980)
!980 = !{!981, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !979, file: !20, line: 200, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!30, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !979, file: !20, line: 201, baseType: !987, size: 704, offset: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !20, line: 193, size: 704, elements: !988)
!988 = !{!989, !1047}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !987, file: !20, line: 195, baseType: !990, size: 640)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !20, line: 173, size: 640, elements: !991)
!991 = !{!992, !1004, !1016, !1017, !1037, !1038, !1040, !1046}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !20, line: 174, baseType: !993, size: 192)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !20, line: 174, size: 192, elements: !994)
!994 = !{!995, !1003}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !20, line: 175, baseType: !996, size: 192)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !20, line: 175, size: 192, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !996, file: !20, line: 176, baseType: !41, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !996, file: !20, line: 177, baseType: !30, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !996, file: !20, line: 178, baseType: !30, size: 32, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !996, file: !20, line: 179, baseType: !30, size: 32, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !996, file: !20, line: 180, baseType: !30, size: 32, offset: 160)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !993, file: !20, line: 182, baseType: !669, size: 128, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !990, file: !20, line: 184, baseType: !1005, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1007, line: 26, size: 256, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1006, file: !1007, line: 27, baseType: !7, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1006, file: !1007, line: 28, baseType: !1011, size: 192, offset: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1012, line: 43, size: 192, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1011, file: !1012, line: 44, baseType: !476, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1011, file: !1012, line: 45, baseType: !105, size: 128, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !990, file: !20, line: 185, baseType: !41, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !990, file: !20, line: 186, baseType: !1018, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !20, line: 204, size: 960, elements: !1020)
!1020 = !{!1021, !1022, !1026, !1033}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1019, file: !20, line: 205, baseType: !979, size: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1019, file: !20, line: 206, baseType: !1023, size: 64, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!985, !1018}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1019, file: !20, line: 207, baseType: !1027, size: 64, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1019, file: !20, line: 209, baseType: !1034, size: 64, offset: 896)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!30, !1030, !41}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !990, file: !20, line: 187, baseType: !985, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !990, file: !20, line: 188, baseType: !1039, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !990, file: !20, line: 189, baseType: !1041, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !20, line: 157, size: 256, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1042, file: !20, line: 158, baseType: !376, size: 192, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1042, file: !20, line: 159, baseType: !1030, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !990, file: !20, line: 190, baseType: !737, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !987, file: !20, line: 196, baseType: !519, size: 64, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !783, file: !784, line: 100, baseType: !1030, size: 64, offset: 3776)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !783, file: !784, line: 102, baseType: !1050, size: 64, offset: 3840)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !784, line: 107, size: 1152, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1061}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !784, line: 108, baseType: !310, size: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1051, file: !784, line: 109, baseType: !782, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1051, file: !784, line: 110, baseType: !813, size: 32, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1051, file: !784, line: 111, baseType: !57, size: 32, offset: 224)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1051, file: !784, line: 112, baseType: !1058, size: 640, offset: 256)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 640, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 10)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1051, file: !784, line: 113, baseType: !1062, size: 256, offset: 896)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 256, elements: !740)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !783, file: !784, line: 103, baseType: !1064, size: 640, offset: 3904)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 640, elements: !1059)
!1065 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !783, file: !784, line: 104, baseType: !1067, size: 256, offset: 4544)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 256, elements: !740)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !752, file: !753, line: 38, baseType: !1050, size: 64, offset: 768)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !752, file: !753, line: 39, baseType: !30, size: 32, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !752, file: !753, line: 40, baseType: !828, size: 192, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !752, file: !753, line: 42, baseType: !30, size: 32, offset: 1088)
!1072 = !{!1073}
!1073 = !DISubrange(count: -1)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !703, file: !247, line: 951, baseType: !115, size: 32, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !703, file: !247, line: 952, baseType: !813, size: 32, offset: 160)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !703, file: !247, line: 952, baseType: !813, size: 32, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !703, file: !247, line: 953, baseType: !30, size: 32, offset: 224)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !662, file: !247, line: 1012, baseType: !1079, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1082, line: 110, size: 1472, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1141, !1142, !1143, !1151}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1081, file: !1082, line: 111, baseType: !682, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1081, file: !1082, line: 112, baseType: !813, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1081, file: !1082, line: 113, baseType: !821, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1081, file: !1082, line: 114, baseType: !813, size: 32, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1081, file: !1082, line: 115, baseType: !821, size: 32, offset: 160)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1081, file: !1082, line: 116, baseType: !813, size: 32, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1081, file: !1082, line: 117, baseType: !821, size: 32, offset: 224)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1081, file: !1082, line: 118, baseType: !813, size: 32, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1081, file: !1082, line: 119, baseType: !821, size: 32, offset: 288)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1081, file: !1082, line: 120, baseType: !7, size: 32, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1081, file: !1082, line: 121, baseType: !1095, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1096, line: 24, baseType: !1097)
!1096 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 24, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1097, file: !1096, line: 24, baseType: !384, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1081, file: !1082, line: 122, baseType: !1095, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1081, file: !1082, line: 123, baseType: !1095, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1081, file: !1082, line: 124, baseType: !1095, size: 64, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1081, file: !1082, line: 125, baseType: !1095, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1081, file: !1082, line: 127, baseType: !95, size: 8, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1081, file: !1082, line: 129, baseType: !844, size: 64, offset: 768)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1081, file: !1082, line: 130, baseType: !844, size: 64, offset: 832)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1081, file: !1082, line: 131, baseType: !844, size: 64, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1081, file: !1082, line: 132, baseType: !844, size: 64, offset: 960)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1081, file: !1082, line: 135, baseType: !28, size: 64, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1081, file: !1082, line: 137, baseType: !1111, size: 64, offset: 1088)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1113, line: 14, size: 1088, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1114 = !{!1115, !1116, !1125, !1126, !1127, !1128, !1129, !1130}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1112, file: !1113, line: 15, baseType: !332, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1112, file: !1113, line: 17, baseType: !1117, size: 320, offset: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1118, line: 22, size: 320, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1117, file: !1118, line: 23, baseType: !476, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1117, file: !1118, line: 24, baseType: !395, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1117, file: !1118, line: 26, baseType: !105, size: 128, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1117, file: !1118, line: 28, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1112, file: !1113, line: 19, baseType: !47, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1112, file: !1113, line: 20, baseType: !682, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1112, file: !1113, line: 23, baseType: !310, size: 128, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1112, file: !1113, line: 24, baseType: !813, size: 32, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1112, file: !1113, line: 29, baseType: !682, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1112, file: !1113, line: 36, baseType: !1131, size: 320, offset: 768)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1132, line: 15, size: 320, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1131, file: !1132, line: 16, baseType: !476, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1131, file: !1132, line: 18, baseType: !30, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1131, file: !1132, line: 19, baseType: !30, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1131, file: !1132, line: 20, baseType: !30, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1131, file: !1132, line: 21, baseType: !30, size: 32, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1131, file: !1132, line: 22, baseType: !47, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !1132, line: 23, baseType: !47, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1081, file: !1082, line: 138, baseType: !782, size: 64, offset: 1152)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1081, file: !1082, line: 139, baseType: !1050, size: 64, offset: 1216)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1081, file: !1082, line: 140, baseType: !1144, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1082, line: 25, size: 64, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1145, file: !1082, line: 26, baseType: !57, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1145, file: !1082, line: 27, baseType: !30, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1145, file: !1082, line: 28, baseType: !1150, offset: 64)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, elements: !1072)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1082, line: 142, baseType: !1152, size: 128, offset: 1344)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1082, line: 142, size: 128, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1152, file: !1082, line: 143, baseType: !30, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1152, file: !1082, line: 144, baseType: !669, size: 128, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !662, file: !247, line: 1013, baseType: !1157, size: 256, offset: 960)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !247, line: 970, size: 256, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1164}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1157, file: !247, line: 971, baseType: !47, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1157, file: !247, line: 972, baseType: !7, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1157, file: !247, line: 973, baseType: !7, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1157, file: !247, line: 974, baseType: !7, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1157, file: !247, line: 975, baseType: !7, size: 32, offset: 160)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1157, file: !247, line: 976, baseType: !49, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !662, file: !247, line: 1014, baseType: !1166, size: 128, offset: 1216)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1167, line: 8, size: 128, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1168 = !{!1169, !5230}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1166, file: !1167, line: 9, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1172, line: 70, size: 256, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1173 = !{!1174, !5227, !5228, !5229}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1171, file: !1172, line: 71, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1177, line: 82, size: 1536, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1178 = !{!1179, !1180, !1185, !1193, !1194, !1209, !5195, !5197, !5210, !5211, !5212, !5213, !5214, !5219, !5220, !5221}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1176, file: !1177, line: 84, baseType: !7, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1176, file: !1177, line: 85, baseType: !1181, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !503, line: 275, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !503, line: 275, size: 32, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1182, file: !503, line: 275, baseType: !507, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1176, file: !1177, line: 86, baseType: !1186, size: 128, offset: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1187, line: 38, size: 128, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1188 = !{!1189, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1186, file: !1187, line: 39, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1186, file: !1187, line: 39, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1176, file: !1177, line: 87, baseType: !1175, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1176, file: !1177, line: 88, baseType: !1195, size: 128, offset: 256)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1177, line: 49, size: 128, elements: !1196)
!1196 = !{!1197, !1206}
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1177, line: 50, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !1177, line: 50, size: 64, elements: !1199)
!1199 = !{!1200, !1205}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1177, line: 51, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !1177, line: 51, size: 64, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1201, file: !1177, line: 52, baseType: !326, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1201, file: !1177, line: 52, baseType: !326, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1198, file: !1177, line: 54, baseType: !384, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1195, file: !1177, line: 56, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1176, file: !1177, line: 89, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !247, line: 641, size: 4800, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1222, !1223, !1410, !5012, !5013, !5014, !5015, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5177, !5180, !5181, !5182, !5191, !5192, !5193, !5194}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1211, file: !247, line: 642, baseType: !32, size: 16)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1211, file: !247, line: 643, baseType: !34, size: 16, offset: 16)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1211, file: !247, line: 644, baseType: !813, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1211, file: !247, line: 645, baseType: !105, size: 128, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1211, file: !247, line: 646, baseType: !821, size: 32, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1211, file: !247, line: 647, baseType: !7, size: 32, offset: 224)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1211, file: !247, line: 650, baseType: !1220, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !247, line: 607, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1211, file: !247, line: 651, baseType: !1220, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1211, file: !247, line: 654, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !247, line: 1966, size: 2048, align: 512, elements: !1227)
!1227 = !{!1228, !1232, !1245, !1251, !1255, !1259, !1263, !1267, !1271, !1275, !1279, !1280, !1286, !1290, !1327, !1358, !1365, !1371, !1375, !1379, !1383, !1387, !1391, !1397, !1401}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1226, file: !247, line: 1967, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!1175, !1210, !1175, !7}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1226, file: !247, line: 1968, baseType: !1233, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!24, !1175, !1210, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1238, line: 10, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1239 = !{!1240, !1244}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1237, file: !1238, line: 11, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !28}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1237, file: !1238, line: 12, baseType: !28, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1226, file: !247, line: 1969, baseType: !1246, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!30, !1249, !1210, !30}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1096, line: 42, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1226, file: !247, line: 1970, baseType: !1252, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1220, !1210, !30, !840}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1226, file: !247, line: 1972, baseType: !1256, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!30, !1175, !928, !30}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1226, file: !247, line: 1974, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!30, !1249, !1210, !1175, !32, !840}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1226, file: !247, line: 1976, baseType: !1264, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!30, !1175, !1210, !1175}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1226, file: !247, line: 1977, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!30, !1210, !1175}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1226, file: !247, line: 1978, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!30, !1249, !1210, !1175, !24}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1226, file: !247, line: 1980, baseType: !1276, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!30, !1249, !1210, !1175, !32}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1226, file: !247, line: 1982, baseType: !1268, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1226, file: !247, line: 1983, baseType: !1281, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!30, !1249, !1210, !1175, !32, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 21, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !33, line: 18, baseType: !326)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1226, file: !247, line: 1985, baseType: !1287, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!30, !1249, !1210, !1175, !1210, !1175, !7}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1226, file: !247, line: 1987, baseType: !1291, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!30, !1249, !1175, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !247, line: 226, size: 640, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1309, !1318, !1319, !1324, !1325, !1326}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1295, file: !247, line: 227, baseType: !7, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1295, file: !247, line: 228, baseType: !32, size: 16, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !247, line: 241, baseType: !1300, size: 32, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !247, line: 241, size: 32, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1300, file: !247, line: 242, baseType: !813, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1300, file: !247, line: 243, baseType: !1304, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1305, line: 16, baseType: !1306)
!1305 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1305, line: 14, size: 32, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1306, file: !1305, line: 15, baseType: !818, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !247, line: 245, baseType: !1310, size: 32, offset: 96)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !247, line: 245, size: 32, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1310, file: !247, line: 246, baseType: !821, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1310, file: !247, line: 247, baseType: !1314, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1305, line: 20, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1305, line: 18, size: 32, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1315, file: !1305, line: 19, baseType: !825, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1295, file: !247, line: 249, baseType: !49, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1295, file: !247, line: 250, baseType: !1320, size: 128, offset: 192)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !877, line: 13, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1320, file: !877, line: 14, baseType: !876, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1320, file: !877, line: 15, baseType: !1065, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1295, file: !247, line: 251, baseType: !1320, size: 128, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1295, file: !247, line: 252, baseType: !1320, size: 128, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1295, file: !247, line: 259, baseType: !661, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1226, file: !247, line: 1988, baseType: !1328, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!30, !1249, !1331, !1333, !326, !7}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1335, line: 22, size: 1280, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1334, file: !1335, line: 23, baseType: !326, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1334, file: !1335, line: 24, baseType: !32, size: 16, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1334, file: !1335, line: 25, baseType: !7, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1334, file: !1335, line: 26, baseType: !884, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1334, file: !1335, line: 27, baseType: !384, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1334, file: !1335, line: 28, baseType: !384, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1334, file: !1335, line: 41, baseType: !384, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1334, file: !1335, line: 42, baseType: !1284, size: 32, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1334, file: !1335, line: 43, baseType: !1284, size: 32, offset: 352)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1334, file: !1335, line: 44, baseType: !813, size: 32, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1334, file: !1335, line: 45, baseType: !821, size: 32, offset: 416)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1334, file: !1335, line: 46, baseType: !49, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1334, file: !1335, line: 47, baseType: !1320, size: 128, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1334, file: !1335, line: 48, baseType: !1320, size: 128, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1334, file: !1335, line: 49, baseType: !1320, size: 128, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1334, file: !1335, line: 50, baseType: !1320, size: 128, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1334, file: !1335, line: 51, baseType: !384, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1334, file: !1335, line: 52, baseType: !384, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1334, file: !1335, line: 53, baseType: !326, size: 32, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1334, file: !1335, line: 54, baseType: !326, size: 32, offset: 1184)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1334, file: !1335, line: 55, baseType: !384, size: 64, offset: 1216)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1226, file: !247, line: 1990, baseType: !1359, size: 64, offset: 960)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !1175, !928, !43}
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !33, line: 66, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !45, line: 73, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !45, line: 15, baseType: !1065)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1226, file: !247, line: 1991, baseType: !1366, size: 64, offset: 1024)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!30, !1210, !1369, !384, !384}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !247, line: 55, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1226, file: !247, line: 1993, baseType: !1372, size: 64, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!30, !1210, !30}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1226, file: !247, line: 1994, baseType: !1376, size: 64, offset: 1152)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!30, !1210, !1175, !661, !7, !32}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1226, file: !247, line: 1997, baseType: !1380, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!30, !1249, !1210, !661, !32}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1226, file: !247, line: 1999, baseType: !1384, size: 64, offset: 1280)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1220, !1249, !1175, !30}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1226, file: !247, line: 2001, baseType: !1388, size: 64, offset: 1344)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!30, !1249, !1175, !1220, !30}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1226, file: !247, line: 2003, baseType: !1392, size: 64, offset: 1408)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!30, !1249, !1175, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !247, line: 76, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1226, file: !247, line: 2005, baseType: !1398, size: 64, offset: 1472)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!30, !1175, !1395}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1226, file: !247, line: 2006, baseType: !1402, size: 64, offset: 1536)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !1210}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !247, line: 3192, size: 192, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1406, file: !247, line: 3193, baseType: !760, size: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1406, file: !247, line: 3194, baseType: !326, size: 32, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1211, file: !247, line: 655, baseType: !1411, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !247, line: 1190, size: 10752, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !4124, !4256, !4296, !4379, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4396, !4400, !4401, !4811, !4817, !4818, !4821, !4822, !4823, !4864, !4886, !4887, !4888, !4889, !4890, !4891, !4894, !4895, !4904, !4905, !4906, !4907, !4966, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1412, file: !247, line: 1191, baseType: !105, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1412, file: !247, line: 1192, baseType: !1284, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1412, file: !247, line: 1193, baseType: !95, size: 8, offset: 160)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1412, file: !247, line: 1194, baseType: !47, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1412, file: !247, line: 1195, baseType: !49, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1412, file: !247, line: 1196, baseType: !1420, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !247, line: 2366, size: 576, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1431, !1435, !1439, !1443, !4112, !4113, !4114, !4116, !4117, !4118, !4120, !4121, !4122, !4123}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !247, line: 2367, baseType: !24, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1421, file: !247, line: 2368, baseType: !30, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1421, file: !247, line: 2376, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!30, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1172, line: 21, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1421, file: !247, line: 2377, baseType: !1432, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !247, line: 75, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1421, file: !247, line: 2378, baseType: !1436, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1175, !1420, !30, !24, !28}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1421, file: !247, line: 2380, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1411}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1421, file: !247, line: 2381, baseType: !1444, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !124, line: 402, size: 9216, align: 512, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1453, !2318, !2344, !2345, !2346, !2347, !2351, !2354, !2355, !2356, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2424, !2428, !2448, !2468, !2469, !2470, !2471, !2480, !2503, !2504, !2507, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2521, !2522, !2621, !2629, !2630, !2631, !2633, !4090, !4091, !4100, !4101, !4102, !4103, !4105, !4106, !4107, !4108, !4109, !4110, !4111}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1445, file: !124, line: 403, baseType: !123, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1445, file: !124, line: 406, baseType: !105, size: 128, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1445, file: !124, line: 409, baseType: !1450, size: 448, offset: 192)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 448, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 56)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1445, file: !124, line: 417, baseType: !1454, size: 768, offset: 640)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !124, line: 45, size: 768, elements: !1455)
!1455 = !{!1456, !2312, !2313, !2314, !2317}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1454, file: !124, line: 46, baseType: !1457, size: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1458, line: 64, size: 512, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1459 = !{!1460, !1461, !1462, !1464, !1508, !2159, !2302, !2307, !2308, !2309, !2310, !2311}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1457, file: !1458, line: 65, baseType: !24, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1457, file: !1458, line: 66, baseType: !105, size: 128, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1457, file: !1458, line: 67, baseType: !1463, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1457, file: !1458, line: 68, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1458, line: 168, size: 768, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1466, file: !1458, line: 169, baseType: !105, size: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1466, file: !1458, line: 170, baseType: !67, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1466, file: !1458, line: 171, baseType: !1457, size: 512, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1466, file: !1458, line: 172, baseType: !1472, size: 64, offset: 704)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1458, line: 133, size: 192, elements: !1475)
!1475 = !{!1476, !1483, !1488}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1474, file: !1458, line: 134, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!30, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1474, file: !1458, line: 135, baseType: !1484, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!24, !1481}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1474, file: !1458, line: 136, baseType: !1489, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!30, !1481, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1458, line: 125, size: 20736, elements: !1495)
!1495 = !{!1496, !1498, !1502, !1503, !1507}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1494, file: !1458, line: 126, baseType: !1497, size: 192)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 192, elements: !725)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1494, file: !1458, line: 127, baseType: !1499, size: 4096, offset: 192)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 4096, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1494, file: !1458, line: 128, baseType: !30, size: 32, offset: 4288)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1494, file: !1458, line: 129, baseType: !1504, size: 16384, offset: 4320)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16384, elements: !1505)
!1505 = !{!1506}
!1506 = !DISubrange(count: 2048)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1494, file: !1458, line: 130, baseType: !30, size: 32, offset: 20704)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1457, file: !1458, line: 69, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1458, line: 116, size: 384, elements: !1512)
!1512 = !{!1513, !1517, !1536, !2121, !2151, !2155}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1511, file: !1458, line: 117, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !1463}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1511, file: !1458, line: 118, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1521, line: 254, size: 128, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1522 = !{!1523, !1532}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1520, file: !1521, line: 255, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1362, !1463, !1527, !928}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1521, line: 30, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1528, file: !1521, line: 31, baseType: !24, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1528, file: !1521, line: 32, baseType: !32, size: 16, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1520, file: !1521, line: 256, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1362, !1463, !1527, !24, !43}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1511, file: !1458, line: 119, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1521, line: 84, size: 320, elements: !1541)
!1541 = !{!1542, !1543, !1547, !2117, !2119}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1540, file: !1521, line: 85, baseType: !24, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1540, file: !1521, line: 86, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!32, !1463, !1527, !30}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1540, file: !1521, line: 88, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!32, !1463, !1551, !30}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1521, line: 175, size: 512, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !2108, !2112, !2113}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1552, file: !1521, line: 176, baseType: !1528, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1552, file: !1521, line: 177, baseType: !43, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1552, file: !1521, line: 178, baseType: !28, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1552, file: !1521, line: 179, baseType: !1558, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !247, line: 472, size: 1536, align: 64, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !2100, !2101, !2102, !2105, !2106, !2107}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1562, file: !247, line: 473, baseType: !1210, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1562, file: !247, line: 474, baseType: !760, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1562, file: !247, line: 475, baseType: !860, size: 320, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1562, file: !247, line: 476, baseType: !765, size: 32, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1562, file: !247, line: 477, baseType: !57, size: 32, offset: 544)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1562, file: !247, line: 482, baseType: !516, size: 128, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1562, file: !247, line: 483, baseType: !47, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1562, file: !247, line: 484, baseType: !47, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1562, file: !247, line: 485, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !247, line: 404, size: 1280, elements: !1576)
!1576 = !{!1577, !1870, !1940, !1944, !1948, !1954, !1960, !1964, !1969, !1973, !1977, !1981, !2064, !2068, !2072, !2076, !2081, !2085, !2092, !2096}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1575, file: !247, line: 405, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!30, !1581, !1868}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !139, line: 74, size: 512, align: 128, elements: !1583)
!1583 = !{!1584, !1585, !1862, !1867}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1582, file: !139, line: 75, baseType: !47, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !139, line: 83, baseType: !1586, size: 320, offset: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !139, line: 83, size: 320, elements: !1587)
!1587 = !{!1588, !1609, !1623, !1627, !1861}
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !139, line: 84, baseType: !1589, size: 320)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !139, line: 84, size: 320, elements: !1590)
!1590 = !{!1591, !1602, !1603, !1608}
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !139, line: 90, baseType: !1592, size: 128)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !139, line: 90, size: 128, elements: !1593)
!1593 = !{!1594, !1595, !1600, !1601}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1592, file: !139, line: 91, baseType: !105, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !139, line: 94, baseType: !1596, size: 128)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1592, file: !139, line: 94, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1596, file: !139, line: 96, baseType: !28, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1596, file: !139, line: 98, baseType: !7, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1592, file: !139, line: 102, baseType: !105, size: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1592, file: !139, line: 103, baseType: !105, size: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1589, file: !139, line: 106, baseType: !1561, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !139, line: 107, baseType: !1604, size: 64, offset: 192)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !139, line: 107, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1604, file: !139, line: 108, baseType: !47, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1604, file: !139, line: 109, baseType: !47, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1589, file: !139, line: 117, baseType: !47, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !139, line: 119, baseType: !1610, size: 320)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !139, line: 119, size: 320, elements: !1611)
!1611 = !{!1612, !1613, !1616, !1617, !1618}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1610, file: !139, line: 124, baseType: !47, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1610, file: !139, line: 125, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !139, line: 125, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1610, file: !139, line: 126, baseType: !47, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1610, file: !139, line: 127, baseType: !47, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !139, line: 128, baseType: !1619, size: 64, offset: 256)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1610, file: !139, line: 128, size: 64, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1619, file: !139, line: 133, baseType: !47, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1619, file: !139, line: 138, baseType: !682, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !139, line: 141, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !139, line: 141, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1624, file: !139, line: 142, baseType: !47, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !139, line: 144, baseType: !1628, size: 128)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !139, line: 144, size: 128, elements: !1629)
!1629 = !{!1630, !1860}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1628, file: !139, line: 146, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !131, line: 126, size: 1216, elements: !1633)
!1633 = !{!1634, !1644, !1665, !1666, !1667, !1668, !1669, !1842, !1843, !1844}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1632, file: !131, line: 127, baseType: !1635, size: 384)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !131, line: 21, size: 384, elements: !1636)
!1636 = !{!1637, !1638, !1640, !1641, !1642, !1643}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1635, file: !131, line: 22, baseType: !47, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1635, file: !131, line: 23, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1635, file: !131, line: 24, baseType: !1639, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1635, file: !131, line: 25, baseType: !47, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1635, file: !131, line: 26, baseType: !47, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1635, file: !131, line: 27, baseType: !47, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1632, file: !131, line: 128, baseType: !1645, size: 128, offset: 384)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1646, line: 105, size: 128, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1645, file: !1646, line: 110, baseType: !47, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1645, file: !1646, line: 118, baseType: !1650, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1646, line: 95, size: 448, elements: !1652)
!1652 = !{!1653, !1654, !1660, !1661, !1662, !1663, !1664}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1651, file: !1646, line: 96, baseType: !682, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1651, file: !1646, line: 97, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1646, line: 60, baseType: !1657)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1651, file: !1646, line: 98, baseType: !1655, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1651, file: !1646, line: 99, baseType: !840, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1651, file: !1646, line: 100, baseType: !840, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1651, file: !1646, line: 101, baseType: !669, size: 128, align: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1651, file: !1646, line: 102, baseType: !1659, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1632, file: !131, line: 129, baseType: !1006, size: 256, offset: 512)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1632, file: !131, line: 130, baseType: !130, size: 32, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1632, file: !131, line: 131, baseType: !7, size: 32, offset: 800)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1632, file: !131, line: 132, baseType: !47, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1632, file: !131, line: 133, baseType: !1670, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !131, line: 77, size: 192, elements: !1673)
!1673 = !{!1674, !1678, !1838}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1672, file: !131, line: 83, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1581}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1672, file: !131, line: 89, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !139, line: 1184, baseType: !7)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1685, line: 512, size: 896, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1686 = !{!1687, !1805, !1806, !1813, !1820, !1830, !1831, !1832, !1834, !1836}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 513, baseType: !1688, size: 320)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1684, file: !1685, line: 513, size: 320, elements: !1689)
!1689 = !{!1690, !1801, !1802, !1803, !1804}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1688, file: !1685, line: 514, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !139, line: 625, size: 1344, elements: !1693)
!1693 = !{!1694, !1703, !1704, !1712, !1719, !1720, !1725, !1726, !1731, !1732, !1735, !1794, !1795, !1796, !1797, !1798, !1799}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !139, line: 628, baseType: !1695, size: 128)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1692, file: !139, line: 628, size: 128, elements: !1696)
!1696 = !{!1697, !1702}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !139, line: 629, baseType: !1698, size: 128)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !139, line: 629, size: 128, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1698, file: !139, line: 631, baseType: !47, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1698, file: !139, line: 632, baseType: !47, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1695, file: !139, line: 635, baseType: !669, size: 128, align: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1692, file: !139, line: 639, baseType: !633, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1692, file: !139, line: 640, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1706, line: 297, baseType: !1707)
!1706 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1706, line: 297, size: 64, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1707, file: !1706, line: 297, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1711, line: 19, baseType: !47)
!1711 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !139, line: 646, baseType: !1713, size: 64, offset: 256)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1692, file: !139, line: 646, size: 64, elements: !1714)
!1714 = !{!1715, !1718}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1713, file: !139, line: 647, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !139, line: 542, baseType: !47)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1713, file: !139, line: 648, baseType: !1717, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1692, file: !139, line: 666, baseType: !30, size: 32, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1692, file: !139, line: 667, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !139, line: 579, size: 320, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1722, file: !139, line: 580, baseType: !860, size: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1692, file: !139, line: 670, baseType: !840, size: 8, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1692, file: !139, line: 681, baseType: !1727, size: 256, offset: 512)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !139, line: 678, size: 256, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1727, file: !139, line: 679, baseType: !376, size: 192, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1727, file: !139, line: 680, baseType: !47, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1692, file: !139, line: 689, baseType: !105, size: 128, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1692, file: !139, line: 691, baseType: !1733, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !139, line: 691, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1692, file: !139, line: 694, baseType: !1736, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1685, line: 563, size: 1024, elements: !1739)
!1739 = !{!1740, !1744, !1745, !1749, !1753, !1757, !1758, !1762, !1766, !1770, !1771, !1772, !1776, !1780, !1786, !1790}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1738, file: !1685, line: 564, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1691}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1738, file: !1685, line: 569, baseType: !1741, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1738, file: !1685, line: 571, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!30, !1691, !47}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1738, file: !1685, line: 572, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!30, !1691}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1738, file: !1685, line: 578, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!30, !1691, !47, !47, !47}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1738, file: !1685, line: 580, baseType: !1679, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1738, file: !1685, line: 581, baseType: !1759, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1682, !1683, !7}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1738, file: !1685, line: 582, baseType: !1763, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1682, !1683, !47, !47}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1738, file: !1685, line: 584, baseType: !1767, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!47, !1691}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1738, file: !1685, line: 588, baseType: !1679, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1738, file: !1685, line: 591, baseType: !1679, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1738, file: !1685, line: 597, baseType: !1773, size: 64, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!30, !1691, !47, !28, !30, !30}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1738, file: !1685, line: 603, baseType: !1777, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!24, !1691}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1738, file: !1685, line: 613, baseType: !1781, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!30, !1691, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !139, line: 717, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1738, file: !1685, line: 625, baseType: !1787, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1784, !1691, !47}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1738, file: !1685, line: 633, baseType: !1791, size: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1581, !1691, !47}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1692, file: !139, line: 697, baseType: !47, size: 64, offset: 1024)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1692, file: !139, line: 699, baseType: !661, size: 64, offset: 1088)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1692, file: !139, line: 700, baseType: !28, size: 64, offset: 1152)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1692, file: !139, line: 711, baseType: !682, size: 64, offset: 1216)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1692, file: !139, line: 717, baseType: !1784, size: 64, offset: 1280)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1692, file: !139, line: 722, baseType: !1800, offset: 1344)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !139, line: 570, elements: !654)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1688, file: !1685, line: 515, baseType: !765, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1688, file: !1685, line: 516, baseType: !47, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1688, file: !1685, line: 517, baseType: !47, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1688, file: !1685, line: 518, baseType: !47, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1684, file: !1685, line: 520, baseType: !138, size: 32, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1684, file: !1685, line: 522, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1711, line: 22, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1711, line: 22, size: 64, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1809, file: !1711, line: 22, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1711, line: 15, baseType: !47)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1684, file: !1685, line: 524, baseType: !1814, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1706, line: 372, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1706, line: 372, size: 64, elements: !1817)
!1817 = !{!1818}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1816, file: !1706, line: 372, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1711, line: 16, baseType: !47)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 527, baseType: !1821, size: 64, offset: 512)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 527, size: 64, elements: !1822)
!1822 = !{!1823, !1829}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1821, file: !1685, line: 528, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1711, line: 21, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1711, line: 21, size: 64, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1825, file: !1711, line: 21, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1711, line: 14, baseType: !47)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1821, file: !1685, line: 529, baseType: !1808, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1684, file: !1685, line: 534, baseType: !1581, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1684, file: !1685, line: 535, baseType: !1581, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1684, file: !1685, line: 541, baseType: !1833, size: 64, offset: 704)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1684, file: !1685, line: 545, baseType: !1835, size: 64, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1684, file: !1685, line: 549, baseType: !1837, size: 64, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1706, line: 520, baseType: !1581)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1672, file: !131, line: 100, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!30, !1631, !47, !47, !30}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1632, file: !131, line: 134, baseType: !28, size: 64, offset: 960)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1632, file: !131, line: 135, baseType: !30, size: 32, offset: 1024)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !131, line: 136, baseType: !1845, size: 128, offset: 1088)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !131, line: 136, size: 128, elements: !1846)
!1846 = !{!1847, !1853}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1845, file: !131, line: 137, baseType: !1848, size: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1849, line: 6, size: 128, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1848, file: !1849, line: 7, baseType: !384, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1848, file: !1849, line: 8, baseType: !384, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !131, line: 138, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !131, line: 138, elements: !1855)
!1855 = !{!1856, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1854, file: !131, line: 138, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1854, file: !131, line: 138, elements: !654)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1854, file: !131, line: 138, baseType: !1859)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1848, elements: !1072)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1628, file: !139, line: 147, baseType: !28, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1586, file: !139, line: 161, baseType: !669, size: 128, align: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !139, line: 164, baseType: !1863, size: 32, offset: 384)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !139, line: 164, size: 32, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1863, file: !139, line: 169, baseType: !57, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1863, file: !139, line: 177, baseType: !7, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1582, file: !139, line: 181, baseType: !57, size: 32, offset: 416)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !247, line: 309, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1575, file: !247, line: 406, baseType: !1871, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!30, !661, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !139, line: 293, size: 1536, elements: !1876)
!1876 = !{!1877, !1907, !1921}
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !139, line: 295, baseType: !1878, size: 512)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !139, line: 295, size: 512, elements: !1879)
!1879 = !{!1880, !1906}
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !139, line: 296, baseType: !1881, size: 448)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1878, file: !139, line: 296, size: 448, elements: !1882)
!1882 = !{!1883, !1884, !1893, !1894, !1895, !1904, !1905}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1881, file: !139, line: 298, baseType: !47, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !139, line: 299, baseType: !1885, size: 128, offset: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !139, line: 299, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1885, file: !139, line: 300, baseType: !105, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !139, line: 302, baseType: !1889, size: 128)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !139, line: 302, size: 128, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1889, file: !139, line: 303, baseType: !28, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1889, file: !139, line: 305, baseType: !7, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1881, file: !139, line: 310, baseType: !1561, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1881, file: !139, line: 311, baseType: !47, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !139, line: 312, baseType: !1896, size: 64, offset: 320)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !139, line: 312, size: 64, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1896, file: !139, line: 313, baseType: !28, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1896, file: !139, line: 314, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !139, line: 257, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 255, size: 64, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1901, file: !139, line: 256, baseType: !47, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1881, file: !139, line: 316, baseType: !57, size: 32, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1881, file: !139, line: 317, baseType: !57, size: 32, offset: 416)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1878, file: !139, line: 323, baseType: !1582, size: 512, align: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !139, line: 325, baseType: !1908, size: 512, offset: 512)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !139, line: 325, size: 512, elements: !1909)
!1909 = !{!1910, !1920}
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !139, line: 326, baseType: !1911, size: 320)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !139, line: 326, size: 320, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1911, file: !139, line: 327, baseType: !47, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1911, file: !139, line: 328, baseType: !47, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1911, file: !139, line: 329, baseType: !47, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1911, file: !139, line: 331, baseType: !57, size: 32, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1911, file: !139, line: 332, baseType: !57, size: 32, offset: 224)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1911, file: !139, line: 333, baseType: !57, size: 32, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1911, file: !139, line: 335, baseType: !7, size: 32, offset: 288)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1908, file: !139, line: 339, baseType: !1582, size: 512, align: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !139, line: 341, baseType: !1922, size: 512, offset: 1024)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !139, line: 341, size: 512, elements: !1923)
!1923 = !{!1924, !1933, !1939}
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !139, line: 342, baseType: !1925, size: 384)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !139, line: 342, size: 384, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1925, file: !139, line: 343, baseType: !47, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1925, file: !139, line: 344, baseType: !47, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1925, file: !139, line: 346, baseType: !28, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1925, file: !139, line: 347, baseType: !28, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1925, file: !139, line: 348, baseType: !28, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1925, file: !139, line: 349, baseType: !28, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !139, line: 352, baseType: !1934, size: 256)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !139, line: 352, size: 256, elements: !1935)
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1934, file: !139, line: 353, baseType: !47, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1934, file: !139, line: 354, baseType: !47, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1934, file: !139, line: 356, baseType: !105, size: 128, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1922, file: !139, line: 359, baseType: !1582, size: 512, align: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1575, file: !247, line: 409, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!30, !1561, !1868}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1575, file: !247, line: 412, baseType: !1945, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!840, !1561, !1874}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1575, file: !247, line: 414, baseType: !1949, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !247, line: 310, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1575, file: !247, line: 416, baseType: !1955, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!30, !661, !1561, !49, !7, !1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1575, file: !247, line: 419, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!30, !661, !1561, !49, !7, !7, !1581, !28}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1575, file: !247, line: 424, baseType: !1965, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1968, !1561, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !33, line: 131, baseType: !384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1575, file: !247, line: 425, baseType: !1970, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1874, !43, !43}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1575, file: !247, line: 426, baseType: !1974, size: 64, offset: 576)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!840, !1874, !765}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1575, file: !247, line: 427, baseType: !1978, size: 64, offset: 640)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1874}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1575, file: !247, line: 428, baseType: !1982, size: 64, offset: 704)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1362, !1985, !2007}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !247, line: 373, size: 384, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1994, !1995, !1996, !1997}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1986, file: !247, line: 374, baseType: !661, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1986, file: !247, line: 375, baseType: !49, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1986, file: !247, line: 376, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1985, !1065}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1986, file: !247, line: 377, baseType: !28, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1986, file: !247, line: 378, baseType: !30, size: 32, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1986, file: !247, line: 379, baseType: !101, size: 16, offset: 288)
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !247, line: 380, baseType: !1998, size: 64, offset: 320)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1986, file: !247, line: 380, size: 64, elements: !1999)
!1999 = !{!2000, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1998, file: !247, line: 386, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !247, line: 386, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1998, file: !247, line: 395, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1362, !28}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2009, line: 41, size: 320, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2021, !2059}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2008, file: !2009, line: 42, baseType: !91, size: 8)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2008, file: !2009, line: 43, baseType: !840, size: 8, offset: 8)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2008, file: !2009, line: 44, baseType: !840, size: 8, offset: 16)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2008, file: !2009, line: 45, baseType: !840, size: 8, offset: 24)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2008, file: !2009, line: 46, baseType: !840, size: 8, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !2008, file: !2009, line: 47, baseType: !2017, size: 64, offset: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !2009, line: 47, size: 64, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2017, file: !2009, line: 48, baseType: !43, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2017, file: !2009, line: 49, baseType: !30, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2008, file: !2009, line: 61, baseType: !2022, size: 128, offset: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !2009, line: 61, size: 128, elements: !2023)
!2023 = !{!2024, !2030}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2022, file: !2009, line: 67, baseType: !2025, size: 128)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2026, line: 17, size: 128, elements: !2027)
!2026 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2025, file: !2026, line: 19, baseType: !28, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2025, file: !2026, line: 20, baseType: !44, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !2009, line: 68, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2009, line: 68, size: 128, elements: !2032)
!2032 = !{!2033, !2058}
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2009, line: 69, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2009, line: 69, size: 64, elements: !2035)
!2035 = !{!2036, !2039, !2046, !2055, !2057}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2034, file: !2009, line: 71, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2034, file: !2009, line: 72, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2009, line: 17, size: 128, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2042, file: !2009, line: 18, baseType: !28, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2042, file: !2009, line: 19, baseType: !43, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2034, file: !2009, line: 73, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2050, line: 31, size: 128, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2049, file: !2050, line: 32, baseType: !1581, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2049, file: !2050, line: 33, baseType: !7, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2049, file: !2050, line: 34, baseType: !7, size: 32, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2034, file: !2009, line: 74, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2034, file: !2009, line: 75, baseType: !28, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2031, file: !2009, line: 77, baseType: !43, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2008, file: !2009, line: 80, baseType: !2060, size: 64, offset: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !2009, line: 80, size: 64, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2060, file: !2009, line: 81, baseType: !47, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2060, file: !2009, line: 82, baseType: !49, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1575, file: !247, line: 433, baseType: !2065, size: 64, offset: 768)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!30, !1561, !1874, !1874, !154}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1575, file: !247, line: 435, baseType: !2069, size: 64, offset: 832)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!30, !1874}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1575, file: !247, line: 436, baseType: !2073, size: 64, offset: 896)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!840, !1874, !43, !43}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1575, file: !247, line: 438, baseType: !2077, size: 64, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !1874, !2080, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1575, file: !247, line: 439, baseType: !2082, size: 64, offset: 1024)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!30, !1561, !1581}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1575, file: !247, line: 442, baseType: !2086, size: 64, offset: 1088)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!30, !2089, !661, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !247, line: 66, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1575, file: !247, line: 444, baseType: !2093, size: 64, offset: 1152)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !661}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1575, file: !247, line: 445, baseType: !2097, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!30, !1985, !2007}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !247, line: 486, baseType: !47, size: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1562, file: !247, line: 487, baseType: !860, size: 320, offset: 960)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1562, file: !247, line: 488, baseType: !2103, size: 32, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2104, line: 8, baseType: !326)
!2104 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1562, file: !247, line: 489, baseType: !67, size: 32, offset: 1312)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1562, file: !247, line: 490, baseType: !105, size: 128, offset: 1344)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1562, file: !247, line: 491, baseType: !28, size: 64, offset: 1472)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1552, file: !1521, line: 180, baseType: !2109, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!1362, !661, !1463, !1551, !928, !49, !43}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1552, file: !1521, line: 182, baseType: !2109, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1552, file: !1521, line: 184, baseType: !2114, size: 64, offset: 448)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!30, !661, !1463, !1551, !1691}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1540, file: !1521, line: 90, baseType: !2118, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1540, file: !1521, line: 91, baseType: !2120, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1511, file: !1458, line: 120, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2125, !1481}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !162, line: 39, size: 384, elements: !2128)
!2128 = !{!2129, !2130, !2134, !2138, !2146, !2150}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2127, file: !162, line: 40, baseType: !161, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2127, file: !162, line: 41, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!840}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2127, file: !162, line: 42, baseType: !2135, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!28}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2127, file: !162, line: 43, baseType: !2139, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!2142, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !162, line: 19, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2127, file: !162, line: 44, baseType: !2147, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!2142}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2127, file: !162, line: 45, baseType: !1241, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1511, file: !1458, line: 121, baseType: !2152, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2142, !1481}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1511, file: !1458, line: 122, baseType: !2156, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !1481, !1031, !1032}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1457, file: !1458, line: 70, baseType: !2160, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2162, line: 190, size: 1152, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2294, !2295, !2296, !2297, !2298, !2301}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2161, file: !2162, line: 191, baseType: !57, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2161, file: !2162, line: 192, baseType: !57, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2161, file: !2162, line: 202, baseType: !2160, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2161, file: !2162, line: 203, baseType: !24, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2161, file: !2162, line: 205, baseType: !376, size: 192, align: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2161, file: !2162, line: 207, baseType: !2142, size: 64, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2161, file: !2162, line: 208, baseType: !7, size: 32, offset: 448)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !2162, line: 209, baseType: !2172, size: 256, offset: 512)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2161, file: !2162, line: 209, size: 256, elements: !2173)
!2173 = !{!2174, !2183, !2187}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2172, file: !2162, line: 210, baseType: !2175, size: 256)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2162, line: 153, size: 256, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2182}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2175, file: !2162, line: 154, baseType: !47, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2175, file: !2162, line: 156, baseType: !519, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2175, file: !2162, line: 162, baseType: !2180, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2162, line: 162, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2175, file: !2162, line: 167, baseType: !47, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2172, file: !2162, line: 211, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2162, line: 170, size: 64, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2184, file: !2162, line: 171, baseType: !2160, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2172, file: !2162, line: 212, baseType: !2188, size: 256)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2162, line: 174, size: 256, elements: !2189)
!2189 = !{!2190, !2289, !2292, !2293}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2188, file: !2162, line: 175, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2193)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2162, line: 271, size: 768, elements: !2194)
!2194 = !{!2195, !2253, !2257, !2258, !2259, !2260, !2261, !2265, !2266, !2267, !2268, !2285}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2193, file: !2162, line: 276, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!30, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2162, line: 251, size: 1216, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2200, file: !2162, line: 253, baseType: !2160, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2200, file: !2162, line: 254, baseType: !661, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2200, file: !2162, line: 255, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2207, line: 17, size: 960, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2238, !2239, !2242}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2206, file: !2207, line: 18, baseType: !928, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2206, file: !2207, line: 19, baseType: !43, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2206, file: !2207, line: 20, baseType: !43, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2206, file: !2207, line: 21, baseType: !43, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2206, file: !2207, line: 22, baseType: !43, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2206, file: !2207, line: 23, baseType: !49, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2206, file: !2207, line: 24, baseType: !49, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2206, file: !2207, line: 25, baseType: !689, size: 256, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2206, file: !2207, line: 26, baseType: !2218, size: 64, offset: 704)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2207, line: 32, size: 256, elements: !2221)
!2221 = !{!2222, !2226, !2230, !2234}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2220, file: !2207, line: 33, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!28, !2205, !48}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2220, file: !2207, line: 34, baseType: !2227, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !2205, !28}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2220, file: !2207, line: 35, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!28, !2205, !28, !48}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2220, file: !2207, line: 36, baseType: !2235, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!30, !2205, !28}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2206, file: !2207, line: 27, baseType: !30, size: 32, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2206, file: !2207, line: 28, baseType: !2240, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2206, file: !2207, line: 29, baseType: !28, size: 64, offset: 896)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2200, file: !2162, line: 256, baseType: !28, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2200, file: !2162, line: 259, baseType: !689, size: 256, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2200, file: !2162, line: 260, baseType: !689, size: 256, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2200, file: !2162, line: 261, baseType: !30, size: 32, offset: 768)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2200, file: !2162, line: 262, baseType: !105, size: 128, offset: 832)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2200, file: !2162, line: 263, baseType: !928, size: 64, offset: 960)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2200, file: !2162, line: 265, baseType: !43, size: 64, offset: 1024)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2200, file: !2162, line: 266, baseType: !840, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2200, file: !2162, line: 267, baseType: !840, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2200, file: !2162, line: 268, baseType: !1736, size: 64, offset: 1152)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2193, file: !2162, line: 277, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2199}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2193, file: !2162, line: 290, baseType: !2235, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2193, file: !2162, line: 292, baseType: !2223, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2193, file: !2162, line: 293, baseType: !2231, size: 64, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2193, file: !2162, line: 294, baseType: !2227, size: 64, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2193, file: !2162, line: 296, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!1362, !2199, !928, !43, !49}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2193, file: !2162, line: 306, baseType: !43, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2193, file: !2162, line: 313, baseType: !840, size: 8, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2193, file: !2162, line: 314, baseType: !2262, size: 64, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2193, file: !2162, line: 317, baseType: !2269, size: 64, offset: 640)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2272, !2199, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2273, line: 59, baseType: !7)
!2273 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2276, line: 37, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2277 = !{!2278, !2284}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2275, file: !2276, line: 38, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2276, line: 31, baseType: !2280)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !661, !2283, !2274}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2275, file: !2276, line: 39, baseType: !2272, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2193, file: !2162, line: 320, baseType: !2286, size: 64, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!30, !2199, !1691}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2188, file: !2162, line: 176, baseType: !2290, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2162, line: 35, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2188, file: !2162, line: 177, baseType: !49, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2188, file: !2162, line: 178, baseType: !2160, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2161, file: !2162, line: 215, baseType: !28, size: 64, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2161, file: !2162, line: 221, baseType: !384, size: 64, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2162, line: 223, baseType: !34, size: 16, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2161, file: !2162, line: 224, baseType: !32, size: 16, offset: 912)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2161, file: !2162, line: 225, baseType: !2299, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2162, line: 36, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2161, file: !2162, line: 227, baseType: !669, size: 128, align: 64, offset: 1024)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1457, file: !1458, line: 71, baseType: !2303, size: 32, offset: 448)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2304, line: 19, size: 32, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2305 = !{!2306}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2303, file: !2304, line: 20, baseType: !332, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1457, file: !1458, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1457, file: !1458, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1457, file: !1458, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1457, file: !1458, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1457, file: !1458, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1454, file: !124, line: 47, baseType: !1444, size: 64, offset: 512)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1454, file: !124, line: 48, baseType: !1463, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1454, file: !124, line: 49, baseType: !2315, size: 64, offset: 640)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !124, line: 49, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1454, file: !124, line: 50, baseType: !1005, size: 64, offset: 704)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1445, file: !124, line: 418, baseType: !2319, size: 64, offset: 1408)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !124, line: 53, size: 448, elements: !2321)
!2321 = !{!2322, !2323, !2328, !2332, !2336, !2340}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2320, file: !124, line: 54, baseType: !1528, size: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2320, file: !124, line: 55, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!1362, !2319, !2327, !928}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2320, file: !124, line: 57, baseType: !2329, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!1362, !2319, !2327, !24, !43}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2320, file: !124, line: 59, baseType: !2333, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !1444, !24}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2320, file: !124, line: 60, baseType: !2337, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!30, !1444}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2320, file: !124, line: 61, baseType: !2341, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !1444}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1445, file: !124, line: 419, baseType: !24, size: 64, offset: 1472)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1445, file: !124, line: 420, baseType: !24, size: 64, offset: 1536)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1445, file: !124, line: 421, baseType: !1463, size: 64, offset: 1600)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1445, file: !124, line: 424, baseType: !2348, size: 64, offset: 1664)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !124, line: 424, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1445, file: !124, line: 425, baseType: !2352, size: 64, offset: 1728)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1445, file: !124, line: 426, baseType: !7, size: 32, offset: 1792)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1445, file: !124, line: 435, baseType: !689, size: 256, offset: 1856)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1445, file: !124, line: 437, baseType: !2357, size: 64, offset: 2112)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2359, line: 69, size: 320, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2360 = !{!2361, !2362, !2363, !2380, !2382, !2386, !2387}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2358, file: !2359, line: 70, baseType: !24, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2358, file: !2359, line: 71, baseType: !1444, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2358, file: !2359, line: 72, baseType: !2364, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2359, line: 47, size: 256, elements: !2367)
!2367 = !{!2368, !2369, !2375, !2379}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !2359, line: 49, baseType: !7, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2366, file: !2359, line: 51, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!30, !24, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2358)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2366, file: !2359, line: 53, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!30, !928, !2373}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2366, file: !2359, line: 55, baseType: !1241, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2358, file: !2359, line: 73, baseType: !2381, size: 16, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2358, file: !2359, line: 74, baseType: !2383, size: 8, offset: 208)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !92, line: 16, baseType: !2384)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !94, line: 20, baseType: !2385)
!2385 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2358, file: !2359, line: 75, baseType: !91, size: 8, offset: 216)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2359, line: 76, baseType: !2388, size: 64, offset: 256)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2359, line: 76, size: 64, elements: !2389)
!2389 = !{!2390, !2391, !2398}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2388, file: !2359, line: 77, baseType: !28, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2388, file: !2359, line: 78, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2359, line: 86, size: 128, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2394, file: !2359, line: 87, baseType: !7, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2394, file: !2359, line: 88, baseType: !928, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2388, file: !2359, line: 79, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2359, line: 92, size: 256, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2407, !2408}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2401, file: !2359, line: 94, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2401, file: !2359, line: 95, baseType: !7, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2401, file: !2359, line: 96, baseType: !2406, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2401, file: !2359, line: 97, baseType: !2364, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2401, file: !2359, line: 98, baseType: !28, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1445, file: !124, line: 438, baseType: !7, size: 32, offset: 2176)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1445, file: !124, line: 441, baseType: !7, size: 32, offset: 2208)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1445, file: !124, line: 442, baseType: !2348, size: 64, offset: 2240)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1445, file: !124, line: 443, baseType: !2352, size: 64, offset: 2304)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1445, file: !124, line: 444, baseType: !840, size: 8, offset: 2368)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1445, file: !124, line: 451, baseType: !840, size: 8, offset: 2376)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1445, file: !124, line: 454, baseType: !7, size: 32, offset: 2400)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1445, file: !124, line: 455, baseType: !2417, size: 64, offset: 2432)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2419, line: 23, size: 96, elements: !2420)
!2419 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2420 = !{!2421, !2422, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2418, file: !2419, line: 24, baseType: !30, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2418, file: !2419, line: 24, baseType: !30, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2418, file: !2419, line: 24, baseType: !30, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1445, file: !124, line: 458, baseType: !2425, size: 64, offset: 2496)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!30}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1445, file: !124, line: 460, baseType: !2429, size: 4032, align: 512, offset: 2560)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2430, size: 4032, elements: !2446)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !124, line: 362, size: 576, elements: !2431)
!2431 = !{!2432, !2433, !2434}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2430, file: !124, line: 363, baseType: !28, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2430, file: !124, line: 364, baseType: !7, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2430, file: !124, line: 367, baseType: !2435, size: 448, offset: 128)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !124, line: 319, size: 448, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2435, file: !124, line: 320, baseType: !1444, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2435, file: !124, line: 321, baseType: !2439, size: 384, offset: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2440, line: 40, size: 384, elements: !2441)
!2440 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2439, file: !2440, line: 41, baseType: !2443, size: 384, align: 64)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, align: 64, elements: !2444)
!2444 = !{!2445}
!2445 = !DISubrange(count: 2)
!2446 = !{!2447}
!2447 = !DISubrange(count: 7)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1445, file: !124, line: 463, baseType: !2449, size: 192, offset: 6592)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2450, line: 8, size: 192, elements: !2451)
!2450 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2451 = !{!2452, !2453, !2455}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2449, file: !2450, line: 10, baseType: !7, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2449, file: !2450, line: 11, baseType: !2454, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2449, file: !2450, line: 12, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2458, line: 59, size: 48, elements: !2459)
!2458 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2459 = !{!2460, !2463, !2464, !2465, !2466, !2467}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2457, file: !2458, line: 60, baseType: !2461, size: 16)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !888)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2457, file: !2458, line: 61, baseType: !2461, size: 16, offset: 16)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2457, file: !2458, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2457, file: !2458, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2457, file: !2458, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2457, file: !2458, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1445, file: !124, line: 465, baseType: !47, size: 64, offset: 6784)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1445, file: !124, line: 469, baseType: !7, size: 32, offset: 6848)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1445, file: !124, line: 470, baseType: !105, size: 128, offset: 6912)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1445, file: !124, line: 471, baseType: !2472, size: 64, offset: 7040)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2474, line: 33, size: 96, elements: !2475)
!2474 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2473, file: !2474, line: 37, baseType: !30, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2473, file: !2474, line: 43, baseType: !30, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2473, file: !2474, line: 45, baseType: !34, size: 16, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !2474, line: 47, baseType: !34, size: 16, offset: 80)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1445, file: !124, line: 476, baseType: !2481, size: 64, offset: 7104)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !124, line: 378, size: 256, elements: !2483)
!2483 = !{!2484, !2500, !2501, !2502}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2482, file: !124, line: 379, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2487, line: 204, baseType: !2488)
!2487 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2487, line: 197, size: 192, elements: !2489)
!2489 = !{!2490, !2492, !2493, !2494, !2496, !2498}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2488, file: !2487, line: 198, baseType: !2491, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2487, line: 21, baseType: !327)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2488, file: !2487, line: 199, baseType: !95, size: 8, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2488, file: !2487, line: 200, baseType: !95, size: 8, offset: 40)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2488, file: !2487, line: 201, baseType: !2495, size: 16, offset: 48)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2487, line: 17, baseType: !102)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2488, file: !2487, line: 202, baseType: !2497, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2487, line: 16, baseType: !385)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2488, file: !2487, line: 203, baseType: !2499, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2487, line: 22, baseType: !385)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2482, file: !124, line: 380, baseType: !7, size: 32, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2482, file: !124, line: 381, baseType: !928, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2482, file: !124, line: 382, baseType: !928, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1445, file: !124, line: 477, baseType: !2482, size: 256, offset: 7168)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1445, file: !124, line: 480, baseType: !2505, size: 64, offset: 7424)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !124, line: 480, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1445, file: !124, line: 483, baseType: !2508, size: 64, offset: 7488)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !124, line: 483, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1445, file: !124, line: 488, baseType: !928, size: 64, offset: 7552)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1445, file: !124, line: 492, baseType: !28, size: 64, offset: 7616)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1445, file: !124, line: 493, baseType: !7, size: 32, offset: 7680)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1445, file: !124, line: 495, baseType: !28, size: 64, offset: 7744)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1445, file: !124, line: 496, baseType: !7, size: 32, offset: 7808)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1445, file: !124, line: 499, baseType: !7, size: 32, offset: 7840)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1445, file: !124, line: 500, baseType: !2517, size: 64, offset: 7872)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2519, line: 45, baseType: !2520)
!2519 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1445, file: !124, line: 503, baseType: !7, size: 32, offset: 7936)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1445, file: !124, line: 504, baseType: !2523, size: 64, offset: 8000)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2526, line: 96, size: 192, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2527 = !{!2528, !2529, !2582, !2585}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2525, file: !2526, line: 97, baseType: !7, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2525, file: !2526, line: 98, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2526, line: 24, size: 3072, elements: !2532)
!2532 = !{!2533, !2535, !2536, !2537, !2538, !2551, !2552, !2553, !2554, !2566, !2567, !2568, !2579, !2580, !2581}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2531, file: !2526, line: 26, baseType: !2534, size: 128)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 128, elements: !2444)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2531, file: !2526, line: 27, baseType: !2534, size: 128, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2531, file: !2526, line: 28, baseType: !30, size: 32, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2531, file: !2526, line: 31, baseType: !67, size: 32, align: 512, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2531, file: !2526, line: 32, baseType: !2539, size: 960, offset: 576)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2540, line: 206, size: 960, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2541 = !{!2542, !2543, !2546, !2548, !2549, !2550}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2539, file: !2540, line: 207, baseType: !672, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2539, file: !2540, line: 208, baseType: !2544, size: 256, offset: 64)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2545, size: 256, elements: !740)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2539, file: !2540, line: 209, baseType: !2547, size: 256, offset: 320)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !740)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2539, file: !2540, line: 213, baseType: !1065, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2539, file: !2540, line: 215, baseType: !1067, size: 256, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2539, file: !2540, line: 216, baseType: !91, size: 8, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2531, file: !2526, line: 33, baseType: !47, size: 64, offset: 1536)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2531, file: !2526, line: 34, baseType: !47, size: 64, offset: 1600)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2531, file: !2526, line: 35, baseType: !840, size: 8, offset: 1664)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2531, file: !2526, line: 36, baseType: !2555, size: 320, offset: 1728)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2556, line: 11, size: 320, elements: !2557)
!2556 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2557 = !{!2558, !2559, !2560, !2565}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2555, file: !2556, line: 16, baseType: !310, size: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2555, file: !2556, line: 17, baseType: !47, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2555, file: !2556, line: 18, baseType: !2561, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2564}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !2556, line: 19, baseType: !326, size: 32, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2531, file: !2526, line: 37, baseType: !967, size: 256, offset: 2048)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2531, file: !2526, line: 38, baseType: !669, size: 128, align: 64, offset: 2304)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2531, file: !2526, line: 39, baseType: !2569, size: 64, offset: 2432)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2526, line: 49, size: 768, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2570, file: !2526, line: 50, baseType: !67, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2570, file: !2526, line: 51, baseType: !2547, size: 256, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2570, file: !2526, line: 53, baseType: !2547, size: 256, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2570, file: !2526, line: 54, baseType: !47, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2570, file: !2526, line: 55, baseType: !2569, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2570, file: !2526, line: 56, baseType: !30, size: 32, offset: 704)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2570, file: !2526, line: 57, baseType: !30, size: 32, offset: 736)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2531, file: !2526, line: 40, baseType: !47, size: 64, offset: 2496)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2531, file: !2526, line: 42, baseType: !30, size: 32, offset: 2560)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2531, file: !2526, line: 43, baseType: !2524, size: 64, offset: 2624)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2525, file: !2526, line: 99, baseType: !2583, offset: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2584, line: 211, elements: !654)
!2584 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2525, file: !2526, line: 100, baseType: !2586, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2526, line: 63, size: 3008, elements: !2588)
!2588 = !{!2589, !2590, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2620}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2587, file: !2526, line: 64, baseType: !2569, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2587, file: !2526, line: 65, baseType: !2591, size: 192, offset: 64)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2569, size: 192, elements: !725)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2587, file: !2526, line: 67, baseType: !30, size: 32, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2587, file: !2526, line: 68, baseType: !689, size: 256, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2587, file: !2526, line: 69, baseType: !67, size: 32, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2587, file: !2526, line: 70, baseType: !689, size: 256, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2587, file: !2526, line: 71, baseType: !47, size: 64, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2587, file: !2526, line: 72, baseType: !47, size: 64, offset: 960)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2587, file: !2526, line: 73, baseType: !47, size: 64, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2587, file: !2526, line: 74, baseType: !47, size: 64, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2587, file: !2526, line: 75, baseType: !47, size: 64, offset: 1152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2587, file: !2526, line: 76, baseType: !47, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2587, file: !2526, line: 77, baseType: !47, size: 64, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2587, file: !2526, line: 78, baseType: !47, size: 64, offset: 1344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2587, file: !2526, line: 79, baseType: !840, size: 8, offset: 1408)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2587, file: !2526, line: 80, baseType: !47, size: 64, offset: 1472)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2587, file: !2526, line: 81, baseType: !689, size: 256, offset: 1536)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2587, file: !2526, line: 82, baseType: !1006, size: 256, offset: 1792)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2587, file: !2526, line: 84, baseType: !57, size: 32, offset: 2048)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2587, file: !2526, line: 87, baseType: !47, size: 64, offset: 2112)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2587, file: !2526, line: 88, baseType: !47, size: 64, offset: 2176)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2587, file: !2526, line: 89, baseType: !2612, size: 704, offset: 2240)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !968, line: 111, size: 704, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2619}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2612, file: !968, line: 112, baseType: !967, size: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2612, file: !968, line: 113, baseType: !2555, size: 320, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2612, file: !968, line: 116, baseType: !2617, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !968, line: 18, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2612, file: !968, line: 117, baseType: !30, size: 32, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2587, file: !2526, line: 90, baseType: !2524, size: 64, offset: 2944)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1445, file: !124, line: 515, baseType: !2622, size: 64, offset: 8064)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2624, line: 117, size: 128, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2623, file: !2624, line: 118, baseType: !852, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2623, file: !2624, line: 119, baseType: !852, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2623, file: !2624, line: 120, baseType: !1065, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1445, file: !124, line: 516, baseType: !7, size: 32, offset: 8128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1445, file: !124, line: 519, baseType: !7, size: 32, offset: 8160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1445, file: !124, line: 520, baseType: !2632, size: 64, offset: 8192)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1445, file: !124, line: 523, baseType: !2634, size: 64, offset: 8256)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !168, line: 372, size: 1024, elements: !2637)
!2637 = !{!2638, !2639, !2679, !2739, !2820, !2821, !2824, !2829, !2830, !2831, !2832, !2834, !2837}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2636, file: !168, line: 373, baseType: !105, size: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2636, file: !168, line: 374, baseType: !2640, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !168, line: 291, size: 576, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2650, !2673, !2677, !2678}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2641, file: !168, line: 292, baseType: !24, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2641, file: !168, line: 293, baseType: !28, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2641, file: !168, line: 295, baseType: !28, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2641, file: !168, line: 297, baseType: !2647, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!30, !2635, !167, !28}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2641, file: !168, line: 299, baseType: !2651, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !168, line: 275, size: 320, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2652, file: !168, line: 276, baseType: !24, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !168, line: 277, baseType: !2656, size: 256, offset: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2652, file: !168, line: 277, size: 256, elements: !2657)
!2657 = !{!2658, !2669}
!2658 = !DIDerivedType(tag: DW_TAG_member, scope: !2656, file: !168, line: 278, baseType: !2659, size: 256)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !168, line: 278, size: 256, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664, !2666, !2667, !2668}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2659, file: !168, line: 279, baseType: !24, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2659, file: !168, line: 280, baseType: !2520, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2659, file: !168, line: 281, baseType: !2520, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2659, file: !168, line: 282, baseType: !2665, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2659, file: !168, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2659, file: !168, line: 284, baseType: !2520, size: 32, offset: 160)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2659, file: !168, line: 285, baseType: !2520, size: 32, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2656, file: !168, line: 287, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!30, !2635}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2641, file: !168, line: 300, baseType: !2674, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!108, !2635}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2641, file: !168, line: 301, baseType: !105, size: 128, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2641, file: !168, line: 302, baseType: !2670, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !168, line: 375, baseType: !2680, size: 64, offset: 192)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2636, file: !168, line: 375, size: 64, elements: !2681)
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2680, file: !168, line: 376, baseType: !24, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2680, file: !168, line: 378, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2519, line: 32, size: 640, elements: !2686)
!2686 = !{!2687, !2688, !2700, !2724, !2725, !2726, !2727, !2728, !2732}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2685, file: !2519, line: 33, baseType: !24, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2685, file: !2519, line: 34, baseType: !2689, size: 128, offset: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2624, line: 85, size: 128, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2689, file: !2624, line: 86, baseType: !57, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !2624, line: 101, baseType: !2693, size: 64, offset: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2689, file: !2624, line: 101, size: 64, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2693, file: !2624, line: 102, baseType: !47, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2693, file: !2624, line: 103, baseType: !2622, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2693, file: !2624, line: 104, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2624, line: 104, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2685, file: !2519, line: 35, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2703, line: 61, size: 128, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2702, file: !2703, line: 62, baseType: !28, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !2703, line: 63, baseType: !2707, size: 64, offset: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2702, file: !2703, line: 63, size: 64, elements: !2708)
!2708 = !{!2709, !2710, !2723}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2707, file: !2703, line: 65, baseType: !47, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2707, file: !2703, line: 66, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2713, line: 169, size: 192, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2712, file: !2713, line: 170, baseType: !2711, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2712, file: !2713, line: 171, baseType: !1444, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2712, file: !2713, line: 172, baseType: !2718, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2703, line: 32, size: 64, elements: !2720)
!2720 = !{!2721, !2722}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2719, file: !2703, line: 33, baseType: !852, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2719, file: !2703, line: 34, baseType: !852, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2707, file: !2703, line: 67, baseType: !2718, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2685, file: !2519, line: 36, baseType: !28, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2685, file: !2519, line: 37, baseType: !28, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2685, file: !2519, line: 38, baseType: !28, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2685, file: !2519, line: 39, baseType: !2425, size: 64, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2685, file: !2519, line: 40, baseType: !2729, size: 64, offset: 512)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2685, file: !2519, line: 41, baseType: !2733, size: 64, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2519, line: 26, size: 192, elements: !2735)
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2734, file: !2519, line: 27, baseType: !28, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2734, file: !2519, line: 28, baseType: !28, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2734, file: !2519, line: 29, baseType: !30, size: 32, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2636, file: !168, line: 380, baseType: !2740, size: 256, offset: 256)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !168, line: 148, size: 256, elements: !2741)
!2741 = !{!2742, !2743, !2744}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2740, file: !168, line: 149, baseType: !310, size: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2740, file: !168, line: 150, baseType: !30, size: 32, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2740, file: !168, line: 151, baseType: !2745, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !168, line: 141, size: 256, elements: !2747)
!2747 = !{!2748, !2817, !2818, !2819}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2746, file: !168, line: 142, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !168, line: 138, baseType: !2750)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!178, !2753, !30, !2816}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !168, line: 93, size: 67776, elements: !2755)
!2755 = !{!2756, !2759, !2762, !2765, !2766, !2767, !2768, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2796, !2799, !2800, !2801, !2809, !2810, !2811, !2812, !2813, !2814, !2815}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2754, file: !168, line: 94, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !168, line: 13, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2754, file: !168, line: 95, baseType: !2760, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !168, line: 15, flags: DIFlagFwdDecl)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2754, file: !168, line: 96, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !168, line: 14, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2754, file: !168, line: 97, baseType: !28, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2754, file: !168, line: 98, baseType: !30, size: 32, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2754, file: !168, line: 99, baseType: !689, size: 256, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2754, file: !168, line: 100, baseType: !2769, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2772, line: 10, flags: DIFlagFwdDecl)
!2772 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2754, file: !168, line: 101, baseType: !47, size: 64, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2754, file: !168, line: 102, baseType: !28, size: 64, offset: 704)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2754, file: !168, line: 103, baseType: !7, size: 32, offset: 768)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2754, file: !168, line: 104, baseType: !928, size: 64, offset: 832)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2754, file: !168, line: 105, baseType: !7, size: 32, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2754, file: !168, line: 106, baseType: !1065, size: 64, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2754, file: !168, line: 109, baseType: !2780, size: 33088, offset: 1024)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2781, line: 14, size: 33088, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2782 = !{!2783, !2787, !2794, !2795}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2780, file: !2781, line: 15, baseType: !2784, size: 32768)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32768, elements: !2785)
!2785 = !{!2786}
!2786 = !DISubrange(count: 4096)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2780, file: !2781, line: 16, baseType: !2788, size: 192, offset: 32768)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2789, line: 18, size: 192, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2790 = !{!2791, !2792, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2788, file: !2789, line: 19, baseType: !928, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2788, file: !2789, line: 20, baseType: !43, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2788, file: !2789, line: 21, baseType: !43, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2780, file: !2781, line: 17, baseType: !43, size: 64, offset: 32960)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2780, file: !2781, line: 18, baseType: !30, size: 32, offset: 33024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2754, file: !168, line: 111, baseType: !2797, size: 64, offset: 34112)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !580, line: 913, baseType: !2798)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 64, elements: !585)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2754, file: !168, line: 114, baseType: !840, size: 8, offset: 34176)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2754, file: !168, line: 117, baseType: !2780, size: 33088, offset: 34240)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2754, file: !168, line: 118, baseType: !2802, size: 64, offset: 67328)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !168, line: 79, size: 64, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2803, file: !168, line: 80, baseType: !34, size: 16)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2803, file: !168, line: 81, baseType: !95, size: 8, offset: 16)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2803, file: !168, line: 82, baseType: !95, size: 8, offset: 24)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2803, file: !168, line: 83, baseType: !30, size: 32, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2754, file: !168, line: 119, baseType: !47, size: 64, offset: 67392)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2754, file: !168, line: 120, baseType: !30, size: 32, offset: 67456)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2754, file: !168, line: 121, baseType: !30, size: 32, offset: 67488)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2754, file: !168, line: 122, baseType: !30, size: 32, offset: 67520)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2754, file: !168, line: 123, baseType: !384, size: 64, offset: 67584)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2754, file: !168, line: 125, baseType: !49, size: 64, offset: 67648)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2754, file: !168, line: 126, baseType: !1065, size: 64, offset: 67712)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2746, file: !168, line: 143, baseType: !2749, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2746, file: !168, line: 144, baseType: !2749, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2746, file: !168, line: 145, baseType: !2749, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2636, file: !168, line: 381, baseType: !928, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2636, file: !168, line: 382, baseType: !2822, size: 64, offset: 576)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !238, line: 821, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !168, line: 387, baseType: !2825, size: 64, offset: 640)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2636, file: !168, line: 387, size: 64, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2825, file: !168, line: 388, baseType: !28, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2825, file: !168, line: 389, baseType: !57, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2636, file: !168, line: 391, baseType: !28, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2636, file: !168, line: 394, baseType: !30, size: 32, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2636, file: !168, line: 397, baseType: !30, size: 32, offset: 800)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2636, file: !168, line: 398, baseType: !2833, size: 64, offset: 832)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2636, file: !168, line: 399, baseType: !2835, size: 64, offset: 896)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !168, line: 399, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2636, file: !168, line: 401, baseType: !2838, size: 64, offset: 960)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!30, !2635, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !238, line: 671, size: 8512, elements: !2843)
!2843 = !{!2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !3376, !3377, !3378, !3379, !3385, !3386, !3387, !3388, !3389, !3473, !3474, !3475, !3476, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3596, !3597, !3598, !3599, !3600, !3601, !3616, !3617, !3618, !3619, !3620, !3626, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3643, !3814, !3815, !3816, !3817, !4087, !4088, !4089}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2842, file: !238, line: 678, baseType: !105, size: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2842, file: !238, line: 684, baseType: !105, size: 128, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2842, file: !238, line: 685, baseType: !105, size: 128, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2842, file: !238, line: 689, baseType: !376, size: 192, align: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2842, file: !238, line: 690, baseType: !384, size: 64, offset: 576)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2842, file: !238, line: 696, baseType: !105, size: 128, offset: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2842, file: !238, line: 698, baseType: !310, size: 128, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2842, file: !238, line: 699, baseType: !105, size: 128, offset: 896)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2842, file: !238, line: 700, baseType: !30, size: 32, offset: 1024)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2842, file: !238, line: 703, baseType: !30, size: 32, offset: 1056)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2842, file: !238, line: 705, baseType: !30, size: 32, offset: 1088)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2842, file: !238, line: 707, baseType: !7, size: 32, offset: 1120)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2842, file: !238, line: 708, baseType: !2841, size: 64, offset: 1152)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2842, file: !238, line: 714, baseType: !2858, size: 64, offset: 1216)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !238, line: 302, size: 2432, elements: !2860)
!2860 = !{!2861, !2862, !2863, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3286, !3287, !3288, !3289, !3290, !3294, !3295, !3299, !3303, !3304, !3308, !3312, !3313, !3314, !3318, !3322, !3326, !3327, !3328, !3332, !3333, !3337, !3341, !3342, !3362, !3366, !3367, !3368, !3372}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2859, file: !238, line: 303, baseType: !105, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2859, file: !238, line: 305, baseType: !1444, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2859, file: !238, line: 306, baseType: !2864, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !191, line: 705, size: 5824, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2872, !2873, !2926, !2996, !2997, !2998, !2999, !3000, !3007, !3099, !3112, !3122, !3126, !3128, !3129, !3130, !3134, !3141, !3142, !3145, !3148, !3152, !3155, !3156, !3157, !3158, !3159, !3160, !3190, !3191, !3192, !3195, !3198, !3207, !3208, !3209, !3210, !3211, !3212}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2865, file: !191, line: 706, baseType: !1457, size: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2865, file: !191, line: 707, baseType: !2864, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2865, file: !191, line: 709, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !191, line: 37, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2865, file: !191, line: 711, baseType: !24, size: 64, offset: 640)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2865, file: !191, line: 712, baseType: !2874, size: 64, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !191, line: 89, size: 384, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2886, !2891, !2895}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2876, file: !191, line: 90, baseType: !24, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2876, file: !191, line: 91, baseType: !1537, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2876, file: !191, line: 92, baseType: !2881, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!30, !2884, !1493}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2876, file: !191, line: 93, baseType: !2887, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!928, !2884, !2890, !1031, !1032}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2876, file: !191, line: 95, baseType: !2892, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2864}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2876, file: !191, line: 97, baseType: !2896, size: 64, offset: 320)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2898)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !198, line: 286, size: 1472, elements: !2899)
!2899 = !{!2900, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2898, file: !198, line: 287, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!30, !2864}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2898, file: !198, line: 288, baseType: !2892, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2898, file: !198, line: 289, baseType: !2901, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2898, file: !198, line: 290, baseType: !2901, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2898, file: !198, line: 291, baseType: !2901, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2898, file: !198, line: 292, baseType: !2901, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2898, file: !198, line: 293, baseType: !2901, size: 64, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2898, file: !198, line: 294, baseType: !2901, size: 64, offset: 448)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2898, file: !198, line: 295, baseType: !2901, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2898, file: !198, line: 296, baseType: !2901, size: 64, offset: 576)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2898, file: !198, line: 297, baseType: !2901, size: 64, offset: 640)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2898, file: !198, line: 298, baseType: !2901, size: 64, offset: 704)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2898, file: !198, line: 299, baseType: !2901, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2898, file: !198, line: 300, baseType: !2901, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2898, file: !198, line: 301, baseType: !2901, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2898, file: !198, line: 302, baseType: !2901, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2898, file: !198, line: 303, baseType: !2901, size: 64, offset: 1024)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2898, file: !198, line: 304, baseType: !2901, size: 64, offset: 1088)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2898, file: !198, line: 305, baseType: !2901, size: 64, offset: 1152)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2898, file: !198, line: 306, baseType: !2901, size: 64, offset: 1216)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2898, file: !198, line: 307, baseType: !2901, size: 64, offset: 1280)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2898, file: !198, line: 308, baseType: !2901, size: 64, offset: 1344)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2898, file: !198, line: 309, baseType: !2901, size: 64, offset: 1408)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2865, file: !191, line: 714, baseType: !2927, size: 64, offset: 768)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2930, line: 80, size: 1344, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2995}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2929, file: !2930, line: 81, baseType: !24, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2929, file: !2930, line: 82, baseType: !24, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2929, file: !2930, line: 83, baseType: !1537, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2929, file: !2930, line: 84, baseType: !1537, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2929, file: !2930, line: 85, baseType: !1537, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2929, file: !2930, line: 87, baseType: !2938, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!30, !2864, !2941}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !185, line: 96, size: 1152, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2954, !2958, !2959, !2960, !2961, !2962, !2970, !2971, !2972, !2973, !2974, !2975}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2942, file: !185, line: 97, baseType: !24, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2942, file: !185, line: 98, baseType: !2927, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2942, file: !185, line: 100, baseType: !1444, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2942, file: !185, line: 101, baseType: !24, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2942, file: !185, line: 103, baseType: !840, size: 8, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2942, file: !185, line: 104, baseType: !184, size: 32, offset: 288)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2942, file: !185, line: 106, baseType: !2951, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2953)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !185, line: 106, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2942, file: !185, line: 107, baseType: !2955, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2957)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !185, line: 107, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2942, file: !185, line: 109, baseType: !2901, size: 64, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2942, file: !185, line: 110, baseType: !2892, size: 64, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2942, file: !185, line: 111, baseType: !2901, size: 64, offset: 576)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2942, file: !185, line: 112, baseType: !2892, size: 64, offset: 640)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2942, file: !185, line: 113, baseType: !2963, size: 64, offset: 704)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!30, !2864, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !198, line: 60, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !198, line: 58, size: 32, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2967, file: !198, line: 59, baseType: !30, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2942, file: !185, line: 114, baseType: !2901, size: 64, offset: 768)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2942, file: !185, line: 115, baseType: !1537, size: 64, offset: 832)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2942, file: !185, line: 116, baseType: !1537, size: 64, offset: 896)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2942, file: !185, line: 118, baseType: !2896, size: 64, offset: 960)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2942, file: !185, line: 119, baseType: !2892, size: 64, offset: 1024)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2942, file: !185, line: 121, baseType: !2976, size: 64, offset: 1088)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !185, line: 121, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2929, file: !2930, line: 88, baseType: !2881, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2929, file: !2930, line: 89, baseType: !2901, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2929, file: !2930, line: 90, baseType: !2892, size: 64, offset: 512)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2929, file: !2930, line: 91, baseType: !2892, size: 64, offset: 576)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2929, file: !2930, line: 92, baseType: !2892, size: 64, offset: 640)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2929, file: !2930, line: 94, baseType: !2901, size: 64, offset: 704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2929, file: !2930, line: 95, baseType: !2901, size: 64, offset: 768)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2929, file: !2930, line: 97, baseType: !2963, size: 64, offset: 832)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2929, file: !2930, line: 98, baseType: !2901, size: 64, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2929, file: !2930, line: 100, baseType: !2901, size: 64, offset: 960)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2929, file: !2930, line: 102, baseType: !2901, size: 64, offset: 1024)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2929, file: !2930, line: 103, baseType: !2892, size: 64, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2929, file: !2930, line: 105, baseType: !2896, size: 64, offset: 1152)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2929, file: !2930, line: 107, baseType: !2992, size: 64, offset: 1216)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2994)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2930, line: 107, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2929, file: !2930, line: 109, baseType: !840, size: 8, offset: 1280)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2865, file: !191, line: 715, baseType: !2941, size: 64, offset: 832)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2865, file: !191, line: 717, baseType: !28, size: 64, offset: 896)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2865, file: !191, line: 719, baseType: !28, size: 64, offset: 960)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2865, file: !191, line: 721, baseType: !689, size: 256, offset: 1024)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2865, file: !191, line: 725, baseType: !3001, size: 448, offset: 1280)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !191, line: 517, size: 448, elements: !3002)
!3002 = !{!3003, !3004, !3005, !3006}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3001, file: !191, line: 518, baseType: !105, size: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3001, file: !191, line: 519, baseType: !105, size: 128, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3001, file: !191, line: 520, baseType: !105, size: 128, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3001, file: !191, line: 521, baseType: !190, size: 32, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2865, file: !191, line: 726, baseType: !3008, size: 2496, offset: 1728)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !198, line: 663, size: 2496, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3092, !3096}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3008, file: !198, line: 664, baseType: !2966, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3008, file: !198, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3008, file: !198, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3008, file: !198, line: 667, baseType: !840, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3008, file: !198, line: 668, baseType: !840, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3008, file: !198, line: 669, baseType: !840, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3008, file: !198, line: 670, baseType: !840, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3008, file: !198, line: 671, baseType: !840, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3008, file: !198, line: 672, baseType: !840, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3008, file: !198, line: 673, baseType: !840, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3008, file: !198, line: 674, baseType: !840, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3008, file: !198, line: 675, baseType: !326, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3008, file: !198, line: 676, baseType: !67, size: 32, offset: 96)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3008, file: !198, line: 678, baseType: !105, size: 128, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3008, file: !198, line: 679, baseType: !1006, size: 256, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3008, file: !198, line: 680, baseType: !3026, size: 64, offset: 512)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3028, line: 43, size: 1536, elements: !3029)
!3028 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3027, file: !3028, line: 44, baseType: !24, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3027, file: !3028, line: 45, baseType: !30, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3027, file: !3028, line: 46, baseType: !105, size: 128, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3027, file: !3028, line: 47, baseType: !67, size: 32, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3027, file: !3028, line: 48, baseType: !3035, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !198, line: 629, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3027, file: !3028, line: 49, baseType: !2555, size: 320, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3027, file: !3028, line: 50, baseType: !47, size: 64, offset: 704)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3027, file: !3028, line: 51, baseType: !459, size: 64, offset: 768)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3027, file: !3028, line: 52, baseType: !459, size: 64, offset: 832)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3027, file: !3028, line: 53, baseType: !459, size: 64, offset: 896)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3027, file: !3028, line: 54, baseType: !459, size: 64, offset: 960)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3027, file: !3028, line: 55, baseType: !459, size: 64, offset: 1024)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3027, file: !3028, line: 56, baseType: !47, size: 64, offset: 1088)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3027, file: !3028, line: 57, baseType: !47, size: 64, offset: 1152)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3027, file: !3028, line: 58, baseType: !47, size: 64, offset: 1216)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3027, file: !3028, line: 59, baseType: !47, size: 64, offset: 1280)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3027, file: !3028, line: 60, baseType: !47, size: 64, offset: 1344)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3027, file: !3028, line: 61, baseType: !2864, size: 64, offset: 1408)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3027, file: !3028, line: 62, baseType: !840, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3027, file: !3028, line: 63, baseType: !840, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3008, file: !198, line: 681, baseType: !840, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3008, file: !198, line: 682, baseType: !840, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3008, file: !198, line: 683, baseType: !840, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3008, file: !198, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3008, file: !198, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3008, file: !198, line: 690, baseType: !451, size: 512, offset: 640)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3008, file: !198, line: 691, baseType: !384, size: 64, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3008, file: !198, line: 692, baseType: !967, size: 256, offset: 1216)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3008, file: !198, line: 693, baseType: !62, size: 192, offset: 1472)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3008, file: !198, line: 694, baseType: !3035, size: 64, offset: 1664)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3008, file: !198, line: 695, baseType: !57, size: 32, offset: 1728)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3008, file: !198, line: 696, baseType: !57, size: 32, offset: 1760)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3008, file: !198, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3008, file: !198, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3008, file: !198, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3008, file: !198, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3008, file: !198, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3008, file: !198, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3008, file: !198, line: 703, baseType: !840, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3008, file: !198, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3008, file: !198, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3008, file: !198, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3008, file: !198, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3008, file: !198, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3008, file: !198, line: 709, baseType: !7, size: 32, offset: 1824)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3008, file: !198, line: 710, baseType: !197, size: 32, offset: 1856)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3008, file: !198, line: 711, baseType: !205, size: 32, offset: 1888)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3008, file: !198, line: 712, baseType: !205, size: 32, offset: 1920)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3008, file: !198, line: 713, baseType: !30, size: 32, offset: 1952)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3008, file: !198, line: 714, baseType: !30, size: 32, offset: 1984)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3008, file: !198, line: 715, baseType: !384, size: 64, offset: 2048)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3008, file: !198, line: 716, baseType: !384, size: 64, offset: 2112)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3008, file: !198, line: 717, baseType: !384, size: 64, offset: 2176)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3008, file: !198, line: 718, baseType: !384, size: 64, offset: 2240)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3008, file: !198, line: 720, baseType: !3087, size: 64, offset: 2304)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !198, line: 632, size: 64, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3088, file: !198, line: 633, baseType: !67, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3088, file: !198, line: 634, baseType: !7, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3008, file: !198, line: 721, baseType: !3093, size: 64, offset: 2368)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !2864, !852}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3008, file: !198, line: 722, baseType: !3097, size: 64, offset: 2432)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !198, line: 722, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2865, file: !191, line: 727, baseType: !3100, size: 64, offset: 4224)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !198, line: 742, size: 1792, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3109, !3110, !3111}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3101, file: !198, line: 743, baseType: !2898, size: 1472)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3101, file: !198, line: 744, baseType: !2901, size: 64, offset: 1472)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3101, file: !198, line: 745, baseType: !3106, size: 64, offset: 1536)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !2864, !840}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3101, file: !198, line: 746, baseType: !2901, size: 64, offset: 1600)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3101, file: !198, line: 747, baseType: !2892, size: 64, offset: 1664)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3101, file: !198, line: 748, baseType: !2892, size: 64, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2865, file: !191, line: 736, baseType: !3113, size: 128, offset: 4288)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !191, line: 529, size: 128, elements: !3114)
!3114 = !{!3115, !3119}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3113, file: !191, line: 531, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3118, line: 13, flags: DIFlagFwdDecl)
!3118 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3113, file: !191, line: 532, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !191, line: 49, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2865, file: !191, line: 738, baseType: !3123, size: 64, offset: 4416)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3125)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !191, line: 738, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2865, file: !191, line: 740, baseType: !3127, size: 64, offset: 4480)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2865, file: !191, line: 741, baseType: !384, size: 64, offset: 4544)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2865, file: !191, line: 746, baseType: !384, size: 64, offset: 4608)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2865, file: !191, line: 747, baseType: !3131, size: 64, offset: 4672)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3133)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !191, line: 747, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2865, file: !191, line: 749, baseType: !3135, size: 64, offset: 4736)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !191, line: 428, size: 128, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3136, file: !191, line: 433, baseType: !7, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3136, file: !191, line: 434, baseType: !7, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3136, file: !191, line: 435, baseType: !47, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2865, file: !191, line: 751, baseType: !105, size: 128, offset: 4800)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2865, file: !191, line: 762, baseType: !3143, size: 64, offset: 4928)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !191, line: 762, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2865, file: !191, line: 770, baseType: !3146, offset: 4992)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3147, line: 5, elements: !654)
!3147 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2865, file: !191, line: 772, baseType: !3149, size: 64, offset: 4992)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3151, line: 18, flags: DIFlagFwdDecl)
!3151 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2865, file: !191, line: 773, baseType: !3153, size: 64, offset: 5056)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2930, line: 22, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2865, file: !191, line: 776, baseType: !30, size: 32, offset: 5120)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2865, file: !191, line: 778, baseType: !1284, size: 32, offset: 5152)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2865, file: !191, line: 779, baseType: !326, size: 32, offset: 5184)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2865, file: !191, line: 781, baseType: !67, size: 32, offset: 5216)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2865, file: !191, line: 782, baseType: !105, size: 128, offset: 5248)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2865, file: !191, line: 784, baseType: !3161, size: 64, offset: 5376)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3163)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3164, line: 52, size: 768, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3174, !3178, !3179, !3180, !3181, !3185, !3189}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3163, file: !3164, line: 53, baseType: !24, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3163, file: !3164, line: 55, baseType: !1537, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3163, file: !3164, line: 56, baseType: !1537, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3163, file: !3164, line: 58, baseType: !2881, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3163, file: !3164, line: 59, baseType: !3171, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!928, !2884, !2890}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3163, file: !3164, line: 61, baseType: !3175, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !3161}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3163, file: !3164, line: 62, baseType: !2892, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3163, file: !3164, line: 64, baseType: !2901, size: 64, offset: 448)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3163, file: !3164, line: 66, baseType: !2125, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3163, file: !3164, line: 67, baseType: !3182, size: 64, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!2142, !2884}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3163, file: !3164, line: 69, baseType: !3186, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !2884, !1031, !1032}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3163, file: !3164, line: 71, baseType: !2896, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2865, file: !191, line: 785, baseType: !1537, size: 64, offset: 5440)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2865, file: !191, line: 787, baseType: !2892, size: 64, offset: 5504)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2865, file: !191, line: 788, baseType: !3193, size: 64, offset: 5568)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !191, line: 46, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2865, file: !191, line: 789, baseType: !3196, size: 64, offset: 5632)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !191, line: 48, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2865, file: !191, line: 791, baseType: !3199, size: 64, offset: 5696)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !191, line: 597, size: 128, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3200, file: !191, line: 598, baseType: !212, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3200, file: !191, line: 599, baseType: !221, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3200, file: !191, line: 600, baseType: !226, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3200, file: !191, line: 601, baseType: !840, size: 8, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3200, file: !191, line: 602, baseType: !840, size: 8, offset: 104)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2865, file: !191, line: 793, baseType: !231, size: 32, offset: 5760)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2865, file: !191, line: 795, baseType: !840, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2865, file: !191, line: 796, baseType: !840, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2865, file: !191, line: 797, baseType: !840, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2865, file: !191, line: 798, baseType: !840, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2865, file: !191, line: 799, baseType: !840, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2859, file: !238, line: 307, baseType: !2864, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2859, file: !238, line: 308, baseType: !1537, size: 64, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2859, file: !238, line: 309, baseType: !1537, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2859, file: !238, line: 310, baseType: !24, size: 64, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2859, file: !238, line: 311, baseType: !30, size: 32, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2859, file: !238, line: 316, baseType: !30, size: 32, offset: 544)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2859, file: !238, line: 318, baseType: !2454, size: 64, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2859, file: !238, line: 319, baseType: !3221, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !238, line: 977, size: 1856, elements: !3223)
!3223 = !{!3224, !3276, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3222, file: !238, line: 978, baseType: !3225, size: 896)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !238, line: 873, size: 896, elements: !3226)
!3226 = !{!3227, !3228, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3225, file: !238, line: 874, baseType: !2858, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3225, file: !238, line: 875, baseType: !3229, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !238, line: 912, size: 1792, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3230, file: !238, line: 917, baseType: !476, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3230, file: !238, line: 923, baseType: !689, size: 256, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3230, file: !238, line: 925, baseType: !105, size: 128, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3230, file: !238, line: 926, baseType: !3236, size: 128, offset: 448)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !238, line: 901, size: 128, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3236, file: !238, line: 902, baseType: !519, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3236, file: !238, line: 903, baseType: !384, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3230, file: !238, line: 927, baseType: !3236, size: 128, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3230, file: !238, line: 928, baseType: !105, size: 128, offset: 704)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3230, file: !238, line: 930, baseType: !30, size: 32, offset: 832)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3230, file: !238, line: 931, baseType: !30, size: 32, offset: 864)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3230, file: !238, line: 932, baseType: !30, size: 32, offset: 896)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3230, file: !238, line: 934, baseType: !30, size: 32, offset: 928)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3230, file: !238, line: 935, baseType: !30, size: 32, offset: 960)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3230, file: !238, line: 936, baseType: !30, size: 32, offset: 992)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3230, file: !238, line: 937, baseType: !30, size: 32, offset: 1024)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3230, file: !238, line: 939, baseType: !332, size: 32, offset: 1056)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3230, file: !238, line: 940, baseType: !315, size: 64, offset: 1088)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3230, file: !238, line: 945, baseType: !384, size: 64, offset: 1152)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3230, file: !238, line: 946, baseType: !384, size: 64, offset: 1216)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3230, file: !238, line: 947, baseType: !384, size: 64, offset: 1280)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3230, file: !238, line: 953, baseType: !3229, size: 64, offset: 1344)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3230, file: !238, line: 954, baseType: !384, size: 64, offset: 1408)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3230, file: !238, line: 955, baseType: !384, size: 64, offset: 1472)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3230, file: !238, line: 956, baseType: !30, size: 32, offset: 1536)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3230, file: !238, line: 958, baseType: !30, size: 32, offset: 1568)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3230, file: !238, line: 960, baseType: !669, size: 128, align: 64, offset: 1600)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3230, file: !238, line: 968, baseType: !3261, size: 64, offset: 1728)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3262, line: 12, baseType: !3263)
!3262 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3262, line: 10, size: 64, elements: !3264)
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3263, file: !3262, line: 11, baseType: !682, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3225, file: !238, line: 877, baseType: !105, size: 128, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3225, file: !238, line: 879, baseType: !105, size: 128, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3225, file: !238, line: 880, baseType: !105, size: 128, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3225, file: !238, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3225, file: !238, line: 885, baseType: !7, size: 32, offset: 544)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3225, file: !238, line: 886, baseType: !7, size: 32, offset: 576)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3225, file: !238, line: 888, baseType: !57, size: 32, offset: 608)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3225, file: !238, line: 889, baseType: !669, size: 128, align: 64, offset: 640)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3225, file: !238, line: 891, baseType: !28, size: 64, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3225, file: !238, line: 898, baseType: !30, size: 32, offset: 832)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3222, file: !238, line: 979, baseType: !3277, size: 64, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3222, file: !238, line: 981, baseType: !105, size: 128, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3222, file: !238, line: 982, baseType: !30, size: 32, offset: 1088)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3222, file: !238, line: 984, baseType: !30, size: 32, offset: 1120)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3222, file: !238, line: 985, baseType: !30, size: 32, offset: 1152)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3222, file: !238, line: 987, baseType: !476, size: 32, offset: 1184)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3222, file: !238, line: 988, baseType: !451, size: 512, offset: 1216)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3222, file: !238, line: 989, baseType: !459, size: 64, offset: 1728)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3222, file: !238, line: 990, baseType: !7, size: 32, offset: 1792)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2859, file: !238, line: 320, baseType: !57, size: 32, offset: 704)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2859, file: !238, line: 321, baseType: !30, size: 32, offset: 736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2859, file: !238, line: 322, baseType: !30, size: 32, offset: 768)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2859, file: !238, line: 325, baseType: !7, size: 32, offset: 800)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2859, file: !238, line: 331, baseType: !3291, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !2858}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2859, file: !238, line: 332, baseType: !3291, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2859, file: !238, line: 350, baseType: !3296, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!30, !2841}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2859, file: !238, line: 356, baseType: !3300, size: 64, offset: 1024)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !2841, !633}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2859, file: !238, line: 357, baseType: !3300, size: 64, offset: 1088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2859, file: !238, line: 385, baseType: !3305, size: 64, offset: 1152)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!30, !2841, !30}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2859, file: !238, line: 386, baseType: !3309, size: 64, offset: 1216)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !2841, !30}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2859, file: !238, line: 406, baseType: !3309, size: 64, offset: 1280)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2859, file: !238, line: 407, baseType: !3309, size: 64, offset: 1344)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2859, file: !238, line: 415, baseType: !3315, size: 64, offset: 1408)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !2841}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2859, file: !238, line: 427, baseType: !3319, size: 64, offset: 1472)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !2858, !7}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2859, file: !238, line: 436, baseType: !3323, size: 64, offset: 1536)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!30, !2858}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2859, file: !238, line: 443, baseType: !3291, size: 64, offset: 1600)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2859, file: !238, line: 450, baseType: !3296, size: 64, offset: 1664)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2859, file: !238, line: 455, baseType: !3329, size: 64, offset: 1728)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3277, !840}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2859, file: !238, line: 461, baseType: !773, size: 64, offset: 1792)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2859, file: !238, line: 469, baseType: !3334, size: 64, offset: 1856)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3277, !3277}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2859, file: !238, line: 476, baseType: !3338, size: 64, offset: 1920)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!28, !2841, !1959, !30, !840}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2859, file: !238, line: 483, baseType: !1241, size: 64, offset: 1984)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2859, file: !238, line: 494, baseType: !3343, size: 64, offset: 2048)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!1065, !2841, !3346, !47}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !238, line: 1014, size: 448, elements: !3348)
!3348 = !{!3349, !3350, !3353, !3354, !3355, !3356, !3361}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3347, file: !238, line: 1015, baseType: !2841, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3347, file: !238, line: 1016, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !238, line: 641, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3347, file: !238, line: 1017, baseType: !47, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3347, file: !238, line: 1018, baseType: !47, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3347, file: !238, line: 1019, baseType: !384, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !238, line: 1020, baseType: !3357, size: 64, offset: 320)
!3357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3347, file: !238, line: 1020, size: 64, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3357, file: !238, line: 1021, baseType: !28, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3357, file: !238, line: 1022, baseType: !47, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3347, file: !238, line: 1024, baseType: !30, size: 32, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2859, file: !238, line: 506, baseType: !3363, size: 64, offset: 2112)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!30, !108}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2859, file: !238, line: 520, baseType: !3315, size: 64, offset: 2176)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2859, file: !238, line: 530, baseType: !3296, size: 64, offset: 2240)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2859, file: !238, line: 537, baseType: !3369, size: 64, offset: 2304)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!840, !2858, !30}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2859, file: !238, line: 542, baseType: !3373, size: 64, offset: 2368)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!30, !2841, !384}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2842, file: !238, line: 715, baseType: !28, size: 64, offset: 1280)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2842, file: !238, line: 717, baseType: !237, size: 32, offset: 1344)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2842, file: !238, line: 718, baseType: !7, size: 32, offset: 1376)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2842, file: !238, line: 719, baseType: !3380, size: 64, offset: 1408)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3381, line: 26, baseType: !3382)
!3381 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3381, line: 24, size: 64, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3382, file: !3381, line: 25, baseType: !3261, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2842, file: !238, line: 720, baseType: !684, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2842, file: !238, line: 728, baseType: !384, size: 64, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2842, file: !238, line: 729, baseType: !384, size: 64, offset: 1600)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2842, file: !238, line: 730, baseType: !384, size: 64, offset: 1664)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2842, file: !238, line: 732, baseType: !3390, size: 1088, offset: 1728)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3391, line: 385, size: 1088, elements: !3392)
!3391 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3392 = !{!3393, !3394, !3395, !3396, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3446, !3447, !3454, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3390, file: !3391, line: 390, baseType: !327, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3390, file: !3391, line: 395, baseType: !327, size: 32, offset: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3390, file: !3391, line: 400, baseType: !385, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3391, line: 402, baseType: !3397, size: 64, offset: 128)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3391, line: 402, size: 64, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3397, file: !3391, line: 403, baseType: !385, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3397, file: !3391, line: 404, baseType: !385, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3390, file: !3391, line: 407, baseType: !385, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3390, file: !3391, line: 408, baseType: !385, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3390, file: !3391, line: 410, baseType: !385, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3390, file: !3391, line: 411, baseType: !385, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3390, file: !3391, line: 412, baseType: !385, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3390, file: !3391, line: 413, baseType: !385, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3390, file: !3391, line: 414, baseType: !385, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3390, file: !3391, line: 415, baseType: !385, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3390, file: !3391, line: 416, baseType: !385, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3390, file: !3391, line: 417, baseType: !385, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3390, file: !3391, line: 418, baseType: !385, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3390, file: !3391, line: 419, baseType: !385, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3390, file: !3391, line: 420, baseType: !385, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3390, file: !3391, line: 421, baseType: !385, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3390, file: !3391, line: 422, baseType: !385, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3390, file: !3391, line: 423, baseType: !385, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3390, file: !3391, line: 424, baseType: !385, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3390, file: !3391, line: 435, baseType: !385, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3390, file: !3391, line: 436, baseType: !385, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3390, file: !3391, line: 437, baseType: !385, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3390, file: !3391, line: 439, baseType: !385, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3390, file: !3391, line: 440, baseType: !385, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3390, file: !3391, line: 442, baseType: !385, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3390, file: !3391, line: 443, baseType: !385, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3390, file: !3391, line: 444, baseType: !385, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3390, file: !3391, line: 445, baseType: !385, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3390, file: !3391, line: 446, baseType: !385, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3390, file: !3391, line: 447, baseType: !385, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3390, file: !3391, line: 448, baseType: !385, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3390, file: !3391, line: 449, baseType: !385, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3390, file: !3391, line: 450, baseType: !385, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3390, file: !3391, line: 451, baseType: !385, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3390, file: !3391, line: 452, baseType: !385, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3390, file: !3391, line: 453, baseType: !385, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3390, file: !3391, line: 454, baseType: !385, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3390, file: !3391, line: 455, baseType: !385, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3390, file: !3391, line: 456, baseType: !385, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3390, file: !3391, line: 457, baseType: !385, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3390, file: !3391, line: 458, baseType: !385, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3390, file: !3391, line: 459, baseType: !385, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3391, line: 461, baseType: !3442, size: 32, offset: 384)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3391, line: 461, size: 32, elements: !3443)
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3442, file: !3391, line: 462, baseType: !327, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3442, file: !3391, line: 463, baseType: !327, size: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3390, file: !3391, line: 466, baseType: !327, size: 32, offset: 416)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3391, line: 467, baseType: !3448, size: 64, offset: 448)
!3448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3391, line: 467, size: 64, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3448, file: !3391, line: 468, baseType: !385, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3448, file: !3391, line: 469, baseType: !385, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3448, file: !3391, line: 470, baseType: !385, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3448, file: !3391, line: 471, baseType: !385, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3391, line: 473, baseType: !3455, size: 64, offset: 512)
!3455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3391, line: 473, size: 64, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3455, file: !3391, line: 474, baseType: !385, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3455, file: !3391, line: 475, baseType: !385, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3455, file: !3391, line: 476, baseType: !385, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3455, file: !3391, line: 477, baseType: !385, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3390, file: !3391, line: 479, baseType: !385, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3390, file: !3391, line: 485, baseType: !385, size: 64, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3390, file: !3391, line: 490, baseType: !327, size: 32, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3390, file: !3391, line: 492, baseType: !853, size: 32, offset: 736)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3390, file: !3391, line: 501, baseType: !385, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3390, file: !3391, line: 506, baseType: !327, size: 32, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3390, file: !3391, line: 507, baseType: !102, size: 16, offset: 864)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3390, file: !3391, line: 508, baseType: !102, size: 16, offset: 880)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3390, file: !3391, line: 509, baseType: !327, size: 32, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3390, file: !3391, line: 510, baseType: !327, size: 32, offset: 928)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3390, file: !3391, line: 518, baseType: !385, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3390, file: !3391, line: 520, baseType: !385, size: 64, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2842, file: !238, line: 733, baseType: !101, size: 16, offset: 2816)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2842, file: !238, line: 734, baseType: !101, size: 16, offset: 2832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2842, file: !238, line: 735, baseType: !101, size: 16, offset: 2848)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2842, file: !238, line: 736, baseType: !3477, size: 1536, offset: 2880)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !238, line: 155, size: 1536, elements: !3478)
!3478 = !{!3479, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3563, !3564, !3565, !3566}
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !238, line: 157, baseType: !3480, size: 768)
!3480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !238, line: 157, size: 768, elements: !3481)
!3481 = !{!3482, !3501, !3505, !3509, !3514, !3536}
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !238, line: 158, baseType: !3483, size: 768)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !238, line: 158, size: 768, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3500}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3483, file: !238, line: 159, baseType: !384, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3483, file: !238, line: 160, baseType: !384, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3483, file: !238, line: 161, baseType: !47, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3483, file: !238, line: 162, baseType: !47, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3483, file: !238, line: 163, baseType: !30, size: 32, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3483, file: !238, line: 164, baseType: !30, size: 32, offset: 288)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3483, file: !238, line: 165, baseType: !30, size: 32, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3483, file: !238, line: 166, baseType: !30, size: 32, offset: 352)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3483, file: !238, line: 168, baseType: !3494, size: 192, offset: 384)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !238, line: 134, size: 192, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3494, file: !238, line: 135, baseType: !384, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3494, file: !238, line: 136, baseType: !7, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3494, file: !238, line: 137, baseType: !30, size: 32, offset: 96)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3494, file: !238, line: 138, baseType: !30, size: 32, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3483, file: !238, line: 169, baseType: !3494, size: 192, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !238, line: 171, baseType: !3502, size: 512)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !238, line: 171, size: 512, elements: !3503)
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3502, file: !238, line: 172, baseType: !451, size: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !238, line: 174, baseType: !3506, size: 128)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !238, line: 174, size: 128, elements: !3507)
!3507 = !{!3508}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3506, file: !238, line: 176, baseType: !105, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !238, line: 178, baseType: !3510, size: 128)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !238, line: 178, size: 128, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3510, file: !238, line: 179, baseType: !384, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3510, file: !238, line: 180, baseType: !384, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !238, line: 183, baseType: !3515, size: 320)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !238, line: 183, size: 320, elements: !3516)
!3516 = !{!3517, !3525}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3515, file: !238, line: 189, baseType: !3518, size: 192)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3519, line: 14, size: 192, elements: !3520)
!3519 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3518, file: !3519, line: 15, baseType: !47, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3518, file: !3519, line: 16, baseType: !47, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3518, file: !3519, line: 17, baseType: !91, size: 8, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3518, file: !3519, line: 18, baseType: !91, size: 8, offset: 136)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3515, file: !238, line: 190, baseType: !3526, size: 128, offset: 192)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3527, line: 21, size: 128, elements: !3528)
!3527 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3528 = !{!3529, !3534}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3526, file: !3527, line: 22, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3527, line: 17, size: 64, elements: !3531)
!3531 = !{!3532}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3530, file: !3527, line: 18, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3526, file: !3527, line: 23, baseType: !3535, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !238, line: 193, baseType: !3537, size: 192)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !238, line: 193, size: 192, elements: !3538)
!3538 = !{!3539, !3540, !3541, !3542, !3543}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3537, file: !238, line: 194, baseType: !91, size: 8)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3537, file: !238, line: 195, baseType: !91, size: 8, offset: 8)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3537, file: !238, line: 196, baseType: !101, size: 16, offset: 16)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3537, file: !238, line: 197, baseType: !384, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3537, file: !238, line: 198, baseType: !384, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3477, file: !238, line: 205, baseType: !315, size: 64, offset: 768)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3477, file: !238, line: 211, baseType: !28, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3477, file: !238, line: 214, baseType: !47, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3477, file: !238, line: 223, baseType: !30, size: 32, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3477, file: !238, line: 229, baseType: !3380, size: 64, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3477, file: !238, line: 234, baseType: !384, size: 64, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !238, line: 236, baseType: !3551, size: 128, offset: 1152)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !238, line: 236, size: 128, elements: !3552)
!3552 = !{!3553, !3558}
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !3551, file: !238, line: 237, baseType: !3554, size: 128)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !238, line: 237, size: 128, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3554, file: !238, line: 241, baseType: !384, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3554, file: !238, line: 249, baseType: !3380, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3551, file: !238, line: 251, baseType: !3559, size: 128)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !238, line: 251, size: 128, elements: !3560)
!3560 = !{!3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3559, file: !238, line: 252, baseType: !384, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3559, file: !238, line: 253, baseType: !384, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3477, file: !238, line: 261, baseType: !384, size: 64, offset: 1280)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3477, file: !238, line: 262, baseType: !384, size: 64, offset: 1344)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3477, file: !238, line: 268, baseType: !384, size: 64, offset: 1408)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3477, file: !238, line: 269, baseType: !384, size: 64, offset: 1472)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2842, file: !238, line: 738, baseType: !3229, size: 64, offset: 4416)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2842, file: !238, line: 744, baseType: !3277, size: 64, offset: 4480)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2842, file: !238, line: 745, baseType: !682, size: 64, offset: 4544)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2842, file: !238, line: 751, baseType: !684, size: 64, offset: 4608)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2842, file: !238, line: 752, baseType: !684, size: 64, offset: 4672)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2842, file: !238, line: 757, baseType: !689, size: 256, offset: 4736)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2842, file: !238, line: 758, baseType: !105, size: 128, offset: 4992)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2842, file: !238, line: 759, baseType: !2841, size: 64, offset: 5120)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2842, file: !238, line: 761, baseType: !30, size: 32, offset: 5184)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2842, file: !238, line: 762, baseType: !30, size: 32, offset: 5216)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2842, file: !238, line: 764, baseType: !105, size: 128, offset: 5248)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2842, file: !238, line: 765, baseType: !315, size: 64, offset: 5376)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2842, file: !238, line: 768, baseType: !689, size: 256, offset: 5440)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2842, file: !238, line: 769, baseType: !57, size: 32, offset: 5696)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2842, file: !238, line: 771, baseType: !3351, size: 64, offset: 5760)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2842, file: !238, line: 772, baseType: !105, size: 128, offset: 5824)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2842, file: !238, line: 773, baseType: !47, size: 64, offset: 5952)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2842, file: !238, line: 774, baseType: !30, size: 32, offset: 6016)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2842, file: !238, line: 777, baseType: !62, size: 192, offset: 6080)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2842, file: !238, line: 778, baseType: !3587, size: 64, offset: 6272)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !247, line: 1083, size: 384, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3588, file: !247, line: 1084, baseType: !706, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3588, file: !247, line: 1085, baseType: !30, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3588, file: !247, line: 1086, baseType: !30, size: 32, offset: 96)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3588, file: !247, line: 1087, baseType: !3587, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3588, file: !247, line: 1088, baseType: !661, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3588, file: !247, line: 1089, baseType: !669, size: 128, align: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2842, file: !238, line: 781, baseType: !7, size: 32, offset: 6336)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2842, file: !238, line: 782, baseType: !7, size: 32, offset: 6368)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2842, file: !238, line: 783, baseType: !7, size: 32, offset: 6400)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2842, file: !238, line: 784, baseType: !7, size: 32, offset: 6432)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2842, file: !238, line: 785, baseType: !47, size: 64, offset: 6464)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2842, file: !238, line: 786, baseType: !3602, size: 256, offset: 6528)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3603, line: 17, size: 256, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3604 = !{!3605, !3606, !3611}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3602, file: !3603, line: 18, baseType: !341, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3602, file: !3603, line: 19, baseType: !3607, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3602, file: !3603, line: 20, baseType: !3612, size: 64, offset: 192)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3613, line: 16, size: 64, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3614 = !{!3615}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3612, file: !3613, line: 17, baseType: !315, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2842, file: !238, line: 787, baseType: !669, size: 128, align: 64, offset: 6784)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2842, file: !238, line: 788, baseType: !7, size: 32, offset: 6912)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2842, file: !238, line: 789, baseType: !3612, size: 64, offset: 6976)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2842, file: !238, line: 791, baseType: !57, size: 32, offset: 7040)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2842, file: !238, line: 794, baseType: !3621, size: 192, offset: 7104)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !238, line: 579, size: 192, elements: !3622)
!3622 = !{!3623, !3624, !3625}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3621, file: !238, line: 580, baseType: !105, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3621, file: !238, line: 581, baseType: !476, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3621, file: !238, line: 582, baseType: !7, size: 32, offset: 160)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2842, file: !238, line: 796, baseType: !3627, size: 64, offset: 7296)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !238, line: 585, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3628, file: !238, line: 586, baseType: !47, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3628, file: !238, line: 587, baseType: !47, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2842, file: !238, line: 797, baseType: !47, size: 64, offset: 7360)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2842, file: !238, line: 800, baseType: !2841, size: 64, offset: 7424)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2842, file: !238, line: 802, baseType: !3315, size: 64, offset: 7488)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2842, file: !238, line: 803, baseType: !669, size: 128, align: 64, offset: 7552)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2842, file: !238, line: 805, baseType: !751, size: 64, offset: 7680)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2842, file: !238, line: 806, baseType: !384, size: 64, offset: 7744)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2842, file: !238, line: 808, baseType: !684, size: 64, offset: 7808)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2842, file: !238, line: 810, baseType: !3640, size: 64, offset: 7872)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!384}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2842, file: !238, line: 811, baseType: !3644, size: 64, offset: 7936)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !238, line: 605, baseType: !3645)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !2841, !3648, !3753}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !238, line: 1148, size: 2048, align: 512, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3660, !3661, !3662, !3667, !3668, !3675, !3696, !3718, !3728, !3746, !3747, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3649, file: !238, line: 1153, baseType: !384, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3649, file: !238, line: 1154, baseType: !384, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3649, file: !238, line: 1155, baseType: !384, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3649, file: !238, line: 1161, baseType: !384, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3649, file: !238, line: 1165, baseType: !3656, size: 64, offset: 256)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3649, file: !238, line: 1162, size: 64, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3656, file: !238, line: 1163, baseType: !326, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3656, file: !238, line: 1164, baseType: !326, size: 32, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3649, file: !238, line: 1166, baseType: !384, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3649, file: !238, line: 1167, baseType: !384, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3649, file: !238, line: 1171, baseType: !3663, size: 64, offset: 448)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3649, file: !238, line: 1168, size: 64, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3663, file: !238, line: 1169, baseType: !326, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3663, file: !238, line: 1170, baseType: !326, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3649, file: !238, line: 1177, baseType: !384, size: 64, offset: 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3649, file: !238, line: 1178, baseType: !3669, size: 64, offset: 576)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !238, line: 67, size: 64, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3670, file: !238, line: 68, baseType: !385, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3670, file: !238, line: 69, baseType: !3674, offset: 64)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !1072)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3649, file: !238, line: 1179, baseType: !3676, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !238, line: 93, size: 256, elements: !3678)
!3678 = !{!3679, !3695}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3677, file: !238, line: 94, baseType: !3680, size: 224)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !238, line: 83, size: 224, elements: !3681)
!3681 = !{!3682, !3688, !3693, !3694}
!3682 = !DIDerivedType(tag: DW_TAG_member, scope: !3680, file: !238, line: 84, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3680, file: !238, line: 84, size: 64, elements: !3684)
!3684 = !{!3685, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3683, file: !238, line: 85, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3683, file: !238, line: 86, baseType: !47, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3680, file: !238, line: 88, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !238, line: 80, baseType: !3690)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!47, !28, !2142, !47, !47}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3680, file: !238, line: 89, baseType: !28, size: 64, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3680, file: !238, line: 90, baseType: !326, size: 32, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3677, file: !238, line: 95, baseType: !326, size: 32, offset: 224)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3649, file: !238, line: 1180, baseType: !3697, size: 64, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !238, line: 123, size: 128, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3698, file: !238, line: 124, baseType: !385, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3698, file: !238, line: 125, baseType: !385, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3698, file: !238, line: 126, baseType: !3703, offset: 128)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3704, elements: !1072)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3391, line: 1415, size: 192, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3704, file: !3391, line: 1416, baseType: !385, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3704, file: !3391, line: 1417, baseType: !385, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3704, file: !3391, line: 1418, baseType: !385, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3704, file: !3391, line: 1419, baseType: !385, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3704, file: !3391, line: 1420, baseType: !385, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3704, file: !3391, line: 1421, baseType: !385, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3704, file: !3391, line: 1422, baseType: !385, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3704, file: !3391, line: 1423, baseType: !385, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3704, file: !3391, line: 1424, baseType: !385, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3704, file: !3391, line: 1425, baseType: !385, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3704, file: !3391, line: 1426, baseType: !385, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3704, file: !3391, line: 1427, baseType: !385, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3649, file: !238, line: 1181, baseType: !3719, size: 64, offset: 768)
!3719 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3391, line: 1430, size: 64, elements: !3720)
!3720 = !{!3721, !3722}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3719, file: !3391, line: 1431, baseType: !385, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !3391, line: 1433, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3719, file: !3391, line: 1433, size: 64, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3723, file: !3391, line: 1434, baseType: !327, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3723, file: !3391, line: 1435, baseType: !102, size: 16, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3723, file: !3391, line: 1436, baseType: !102, size: 16, offset: 48)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3649, file: !238, line: 1182, baseType: !3729, size: 64, offset: 832)
!3729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3391, line: 1267, size: 64, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3729, file: !3391, line: 1268, baseType: !385, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, scope: !3729, file: !3391, line: 1269, baseType: !3733, size: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3729, file: !3391, line: 1269, size: 64, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3733, file: !3391, line: 1270, baseType: !385, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3733, file: !3391, line: 1271, baseType: !385, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3733, file: !3391, line: 1272, baseType: !385, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3733, file: !3391, line: 1273, baseType: !385, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3733, file: !3391, line: 1274, baseType: !385, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3733, file: !3391, line: 1275, baseType: !385, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3733, file: !3391, line: 1276, baseType: !385, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3733, file: !3391, line: 1277, baseType: !385, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3733, file: !3391, line: 1278, baseType: !385, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3733, file: !3391, line: 1279, baseType: !385, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3733, file: !3391, line: 1280, baseType: !385, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3649, file: !238, line: 1183, baseType: !384, size: 64, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3649, file: !238, line: 1185, baseType: !3748, size: 128, offset: 960)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3749, line: 7, size: 128, elements: !3750)
!3749 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3748, file: !3749, line: 8, baseType: !385, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3748, file: !3749, line: 9, baseType: !3753, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3755, line: 103, size: 1344, elements: !3756)
!3755 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3756 = !{!3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3785, !3786, !3787}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3754, file: !3755, line: 109, baseType: !47, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3754, file: !3755, line: 110, baseType: !47, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3754, file: !3755, line: 111, baseType: !47, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3754, file: !3755, line: 112, baseType: !47, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3754, file: !3755, line: 113, baseType: !47, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3754, file: !3755, line: 114, baseType: !47, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3754, file: !3755, line: 117, baseType: !47, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3754, file: !3755, line: 118, baseType: !47, size: 64, offset: 448)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3754, file: !3755, line: 119, baseType: !47, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3754, file: !3755, line: 120, baseType: !47, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3754, file: !3755, line: 121, baseType: !47, size: 64, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3754, file: !3755, line: 122, baseType: !47, size: 64, offset: 704)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3754, file: !3755, line: 123, baseType: !47, size: 64, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3754, file: !3755, line: 124, baseType: !47, size: 64, offset: 832)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3754, file: !3755, line: 125, baseType: !47, size: 64, offset: 896)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3754, file: !3755, line: 139, baseType: !47, size: 64, offset: 960)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3754, file: !3755, line: 142, baseType: !47, size: 64, offset: 1024)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3754, file: !3755, line: 144, baseType: !3775, size: 64, offset: 1088)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3754, file: !3755, line: 144, size: 64, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3775, file: !3755, line: 146, baseType: !101, size: 16)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3775, file: !3755, line: 148, baseType: !384, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3775, file: !3755, line: 150, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3755, line: 59, size: 64, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3780, file: !3755, line: 61, baseType: !384, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3780, file: !3755, line: 63, baseType: !384, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3780, file: !3755, line: 65, baseType: !384, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3754, file: !3755, line: 153, baseType: !47, size: 64, offset: 1152)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3754, file: !3755, line: 154, baseType: !47, size: 64, offset: 1216)
!3787 = !DIDerivedType(tag: DW_TAG_member, scope: !3754, file: !3755, line: 156, baseType: !3788, size: 64, offset: 1280)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3754, file: !3755, line: 156, size: 64, elements: !3789)
!3789 = !{!3790, !3791, !3792}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3788, file: !3755, line: 158, baseType: !101, size: 16)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3788, file: !3755, line: 160, baseType: !384, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3788, file: !3755, line: 162, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3755, line: 69, size: 64, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3793, file: !3755, line: 71, baseType: !384, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3793, file: !3755, line: 73, baseType: !384, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3793, file: !3755, line: 75, baseType: !384, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3793, file: !3755, line: 77, baseType: !384, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3793, file: !3755, line: 80, baseType: !384, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3793, file: !3755, line: 83, baseType: !384, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3793, file: !3755, line: 86, baseType: !384, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3793, file: !3755, line: 88, baseType: !384, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3793, file: !3755, line: 93, baseType: !384, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3793, file: !3755, line: 100, baseType: !384, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3649, file: !238, line: 1186, baseType: !3748, size: 128, offset: 1088)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3649, file: !238, line: 1187, baseType: !384, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3649, file: !238, line: 1189, baseType: !384, size: 64, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3649, file: !238, line: 1190, baseType: !384, size: 64, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3649, file: !238, line: 1191, baseType: !384, size: 64, offset: 1408)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3649, file: !238, line: 1192, baseType: !384, size: 64, offset: 1472)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3649, file: !238, line: 1193, baseType: !384, size: 64, offset: 1536)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3649, file: !238, line: 1194, baseType: !384, size: 64, offset: 1600)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3649, file: !238, line: 1195, baseType: !384, size: 64, offset: 1664)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2842, file: !238, line: 812, baseType: !28, size: 64, offset: 8000)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2842, file: !238, line: 820, baseType: !2635, size: 64, offset: 8064)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2842, file: !238, line: 821, baseType: !2822, size: 64, offset: 8128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2842, file: !238, line: 828, baseType: !3818, size: 64, offset: 8192)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !238, line: 1046, size: 1664, elements: !3820)
!3820 = !{!3821, !4079}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3819, file: !238, line: 1047, baseType: !3822, size: 1600)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3823, line: 152, size: 1600, elements: !3824)
!3823 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3824 = !{!3825, !3935, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4078}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3822, file: !3823, line: 154, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3823, line: 389, size: 7872, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3848, !3849, !3853, !3854, !3855, !3856, !3857, !3862, !3878, !3879, !3881, !3882, !3883, !3905, !3906, !3907, !3908, !3914, !3915, !3916, !3917, !3918, !3922, !3925, !3926, !3933}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3827, file: !3823, line: 391, baseType: !3822, size: 1600)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3827, file: !3823, line: 393, baseType: !47, size: 64, offset: 1600)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3827, file: !3823, line: 401, baseType: !30, size: 32, offset: 1664)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3827, file: !3823, line: 404, baseType: !30, size: 32, offset: 1696)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3827, file: !3823, line: 417, baseType: !30, size: 32, offset: 1728)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3827, file: !3823, line: 418, baseType: !30, size: 32, offset: 1760)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3827, file: !3823, line: 419, baseType: !30, size: 32, offset: 1792)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3827, file: !3823, line: 432, baseType: !30, size: 32, offset: 1824)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3827, file: !3823, line: 433, baseType: !30, size: 32, offset: 1856)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3827, file: !3823, line: 434, baseType: !30, size: 32, offset: 1888)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3827, file: !3823, line: 436, baseType: !30, size: 32, offset: 1920)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3827, file: !3823, line: 439, baseType: !7, size: 32, offset: 1952)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3827, file: !3823, line: 441, baseType: !2160, size: 64, offset: 1984)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3827, file: !3823, line: 442, baseType: !3843, size: 448, offset: 2048)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3823, line: 138, size: 448, elements: !3844)
!3844 = !{!3845, !3846, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3843, file: !3823, line: 140, baseType: !2160, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3843, file: !3823, line: 141, baseType: !47, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3843, file: !3823, line: 142, baseType: !2555, size: 320, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3827, file: !3823, line: 443, baseType: !3843, size: 448, offset: 2496)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3827, file: !3823, line: 446, baseType: !3850, offset: 2944)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3843, elements: !3851)
!3851 = !{!3852}
!3852 = !DISubrange(count: 0)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3827, file: !3823, line: 455, baseType: !101, size: 16, offset: 2944)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3827, file: !3823, line: 456, baseType: !101, size: 16, offset: 2960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3827, file: !3823, line: 457, baseType: !101, size: 16, offset: 2976)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3827, file: !3823, line: 458, baseType: !101, size: 16, offset: 2992)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3827, file: !3823, line: 461, baseType: !3858, size: 896, offset: 3008)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3859, size: 896, elements: !3860)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3860 = !{!3861}
!3861 = !DISubrange(count: 14)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3827, file: !3823, line: 463, baseType: !3863, size: 64, offset: 3904)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3823, line: 537, size: 41664, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3864, file: !3823, line: 538, baseType: !2180, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3864, file: !3823, line: 541, baseType: !7, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3864, file: !3823, line: 544, baseType: !30, size: 32, offset: 96)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3864, file: !3823, line: 547, baseType: !105, size: 128, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3864, file: !3823, line: 548, baseType: !669, size: 128, align: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3864, file: !3823, line: 555, baseType: !3827, size: 7872, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3864, file: !3823, line: 558, baseType: !3826, size: 64, offset: 8256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3864, file: !3823, line: 561, baseType: !57, size: 32, offset: 8320)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !3823, line: 564, baseType: !7, size: 32, offset: 8352)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3864, file: !3823, line: 567, baseType: !2784, size: 32768, offset: 8384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3864, file: !3823, line: 570, baseType: !3877, size: 512, offset: 41152)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !1500)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3827, file: !3823, line: 469, baseType: !105, size: 128, offset: 3968)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3827, file: !3823, line: 478, baseType: !3880, size: 1792, offset: 4096)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1792, elements: !3860)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3827, file: !3823, line: 487, baseType: !3826, size: 64, offset: 5888)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3827, file: !3823, line: 488, baseType: !3826, size: 64, offset: 5952)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3827, file: !3823, line: 491, baseType: !3884, size: 64, offset: 6016)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3823, line: 327, size: 896, elements: !3886)
!3886 = !{!3887, !3890, !3900, !3901, !3902, !3903, !3904}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3885, file: !3823, line: 332, baseType: !3888)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3889, line: 64, elements: !654)
!3889 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3885, file: !3823, line: 333, baseType: !3891, size: 192)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3823, line: 299, size: 192, elements: !3892)
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3891, file: !3823, line: 300, baseType: !3894, size: 192)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3895, line: 17, size: 192, elements: !3896)
!3895 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3894, file: !3895, line: 18, baseType: !384, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3894, file: !3895, line: 19, baseType: !384, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3894, file: !3895, line: 20, baseType: !386, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3885, file: !3823, line: 339, baseType: !3891, size: 192, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3885, file: !3823, line: 347, baseType: !3891, size: 192, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3885, file: !3823, line: 353, baseType: !3891, size: 192, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3885, file: !3823, line: 366, baseType: !3826, size: 64, offset: 768)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3885, file: !3823, line: 367, baseType: !3826, size: 64, offset: 832)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3827, file: !3823, line: 492, baseType: !105, size: 128, offset: 6080)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3827, file: !3823, line: 495, baseType: !3891, size: 192, offset: 6208)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3827, file: !3823, line: 496, baseType: !3891, size: 192, offset: 6400)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3827, file: !3823, line: 497, baseType: !3909, size: 192, offset: 6592)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !317, line: 324, size: 192, elements: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3909, file: !317, line: 326, baseType: !384, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3909, file: !317, line: 327, baseType: !384, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3909, file: !317, line: 328, baseType: !476, size: 32, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3827, file: !3823, line: 503, baseType: !105, size: 128, offset: 6784)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3827, file: !3823, line: 504, baseType: !689, size: 256, offset: 6912)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3827, file: !3823, line: 507, baseType: !62, size: 192, offset: 7168)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3827, file: !3823, line: 510, baseType: !967, size: 256, offset: 7360)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3827, file: !3823, line: 513, baseType: !3919, size: 64, offset: 7616)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3921, line: 214, elements: !654)
!3921 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3827, file: !3823, line: 516, baseType: !3923, offset: 7680)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3924, line: 76, elements: !654)
!3924 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3827, file: !3823, line: 519, baseType: !57, size: 32, offset: 7680)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3827, file: !3823, line: 522, baseType: !3927, size: 128, offset: 7712)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3823, line: 370, size: 128, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3927, file: !3823, line: 372, baseType: !840, size: 8)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3927, file: !3823, line: 375, baseType: !30, size: 32, offset: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3927, file: !3823, line: 380, baseType: !30, size: 32, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3927, file: !3823, line: 386, baseType: !30, size: 32, offset: 96)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3827, file: !3823, line: 529, baseType: !3934, offset: 7872)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3826, elements: !1072)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3822, file: !3823, line: 157, baseType: !3936, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3823, line: 669, size: 1984, elements: !3938)
!3938 = !{!3939, !3943, !3947, !3951, !3952, !3953, !3954, !3958, !3962, !3963, !3969, !3973, !3974, !3975, !4004, !4008, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4061, !4062}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3937, file: !3823, line: 670, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!3859, !3859}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3937, file: !3823, line: 671, baseType: !3944, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!30, !3859}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3937, file: !3823, line: 672, baseType: !3948, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3859}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3937, file: !3823, line: 673, baseType: !3948, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3937, file: !3823, line: 674, baseType: !3948, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3937, file: !3823, line: 675, baseType: !3948, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3937, file: !3823, line: 676, baseType: !3955, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3859, !30}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3937, file: !3823, line: 677, baseType: !3959, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!30, !2205, !3859}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3937, file: !3823, line: 679, baseType: !3959, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3937, file: !3823, line: 682, baseType: !3964, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!30, !3967}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3823, line: 30, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3937, file: !3823, line: 683, baseType: !3970, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3967}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3937, file: !3823, line: 684, baseType: !3970, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3937, file: !3823, line: 685, baseType: !2729, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3937, file: !3823, line: 686, baseType: !3976, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!30, !315, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3823, line: 209, size: 4736, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3980, file: !3823, line: 215, baseType: !3858, size: 896)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3980, file: !3823, line: 218, baseType: !332, size: 32, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3980, file: !3823, line: 226, baseType: !3979, size: 64, offset: 960)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3980, file: !3823, line: 229, baseType: !3826, size: 64, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3980, file: !3823, line: 232, baseType: !30, size: 32, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3980, file: !3823, line: 241, baseType: !105, size: 128, offset: 1152)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3980, file: !3823, line: 242, baseType: !105, size: 128, offset: 1280)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3980, file: !3823, line: 243, baseType: !105, size: 128, offset: 1408)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3980, file: !3823, line: 246, baseType: !105, size: 128, offset: 1536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3980, file: !3823, line: 255, baseType: !3880, size: 1792, offset: 1664)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3980, file: !3823, line: 258, baseType: !105, size: 128, offset: 3456)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3980, file: !3823, line: 259, baseType: !105, size: 128, offset: 3584)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3980, file: !3823, line: 265, baseType: !310, size: 128, offset: 3712)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3980, file: !3823, line: 271, baseType: !105, size: 128, offset: 3840)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3980, file: !3823, line: 277, baseType: !105, size: 128, offset: 3968)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3980, file: !3823, line: 278, baseType: !105, size: 128, offset: 4096)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3980, file: !3823, line: 279, baseType: !105, size: 128, offset: 4224)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3980, file: !3823, line: 288, baseType: !3826, size: 64, offset: 4352)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3980, file: !3823, line: 289, baseType: !3826, size: 64, offset: 4416)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3980, file: !3823, line: 290, baseType: !3979, size: 64, offset: 4480)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3980, file: !3823, line: 293, baseType: !840, size: 8, offset: 4544)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3980, file: !3823, line: 296, baseType: !669, size: 128, align: 64, offset: 4608)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3937, file: !3823, line: 688, baseType: !4005, size: 64, offset: 896)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !315, !3979}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3937, file: !3823, line: 689, baseType: !4009, size: 64, offset: 960)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !315}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3937, file: !3823, line: 690, baseType: !4009, size: 64, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3937, file: !3823, line: 691, baseType: !4009, size: 64, offset: 1088)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3937, file: !3823, line: 692, baseType: !3948, size: 64, offset: 1152)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3937, file: !3823, line: 694, baseType: !840, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3937, file: !3823, line: 707, baseType: !840, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3937, file: !3823, line: 719, baseType: !840, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3937, file: !3823, line: 722, baseType: !30, size: 32, offset: 1248)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3937, file: !3823, line: 723, baseType: !24, size: 64, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3937, file: !3823, line: 726, baseType: !24, size: 64, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3937, file: !3823, line: 729, baseType: !3863, size: 64, offset: 1408)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3937, file: !3823, line: 732, baseType: !756, size: 192, offset: 1472)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3937, file: !3823, line: 738, baseType: !105, size: 128, offset: 1664)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3937, file: !3823, line: 744, baseType: !4025, size: 64, offset: 1792)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3823, line: 580, size: 1728, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4037, !4038, !4039, !4043, !4047, !4048, !4049, !4050, !4051, !4055, !4059, !4060}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4026, file: !3823, line: 586, baseType: !3877, size: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4026, file: !3823, line: 587, baseType: !47, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4026, file: !3823, line: 593, baseType: !43, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4026, file: !3823, line: 596, baseType: !7, size: 32, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4026, file: !3823, line: 604, baseType: !7, size: 32, offset: 672)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4026, file: !3823, line: 610, baseType: !3936, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4026, file: !3823, line: 611, baseType: !105, size: 128, offset: 768)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4026, file: !3823, line: 612, baseType: !4036, size: 64, offset: 896)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4026, file: !3823, line: 614, baseType: !2196, size: 64, offset: 960)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4026, file: !3823, line: 615, baseType: !2254, size: 64, offset: 1024)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4026, file: !3823, line: 621, baseType: !4040, size: 64, offset: 1088)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!384, !3859, !4025}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4026, file: !3823, line: 625, baseType: !4044, size: 64, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!395, !3859, !4025}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4026, file: !3823, line: 628, baseType: !2235, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4026, file: !3823, line: 631, baseType: !2223, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4026, file: !3823, line: 632, baseType: !2231, size: 64, offset: 1344)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4026, file: !3823, line: 633, baseType: !2227, size: 64, offset: 1408)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4026, file: !3823, line: 640, baseType: !4052, size: 64, offset: 1472)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!30, !3859, !4025, !384}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4026, file: !3823, line: 645, baseType: !4056, size: 64, offset: 1536)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!30, !3859, !4025, !395}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4026, file: !3823, line: 654, baseType: !2262, size: 64, offset: 1600)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4026, file: !3823, line: 657, baseType: !2269, size: 64, offset: 1664)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3937, file: !3823, line: 745, baseType: !4025, size: 64, offset: 1856)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3937, file: !3823, line: 754, baseType: !7, size: 32, offset: 1920)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3822, file: !3823, line: 160, baseType: !1645, size: 128, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3822, file: !3823, line: 163, baseType: !105, size: 128, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3822, file: !3823, line: 164, baseType: !105, size: 128, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3822, file: !3823, line: 167, baseType: !105, size: 128, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3822, file: !3823, line: 173, baseType: !30, size: 32, offset: 640)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3822, file: !3823, line: 175, baseType: !7, size: 32, offset: 672)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3822, file: !3823, line: 183, baseType: !384, size: 64, offset: 704)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3822, file: !3823, line: 189, baseType: !57, size: 32, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3822, file: !3823, line: 192, baseType: !967, size: 256, offset: 832)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3822, file: !3823, line: 193, baseType: !4073, size: 448, offset: 1088)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !968, line: 120, size: 448, elements: !4074)
!4074 = !{!4075, !4076, !4077}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4073, file: !968, line: 121, baseType: !967, size: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4073, file: !968, line: 122, baseType: !669, size: 128, align: 64, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4073, file: !968, line: 125, baseType: !2617, size: 64, offset: 384)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3822, file: !3823, line: 199, baseType: !3859, size: 64, offset: 1536)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3819, file: !238, line: 1048, baseType: !4080, size: 64, offset: 1600)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !238, line: 1039, size: 256, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4081, file: !238, line: 1040, baseType: !384, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4081, file: !238, line: 1041, baseType: !384, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4081, file: !238, line: 1042, baseType: !384, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4081, file: !238, line: 1043, baseType: !30, size: 32, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2842, file: !238, line: 832, baseType: !28, size: 64, offset: 8256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2842, file: !238, line: 834, baseType: !105, size: 128, offset: 8320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2842, file: !238, line: 842, baseType: !327, size: 32, offset: 8448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1445, file: !124, line: 524, baseType: !7, size: 32, offset: 8320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1445, file: !124, line: 525, baseType: !4092, size: 64, offset: 8384)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4095, line: 28, size: 192, elements: !4096)
!4095 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4096 = !{!4097, !4098, !4099}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4094, file: !4095, line: 29, baseType: !24, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4094, file: !4095, line: 30, baseType: !24, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4094, file: !4095, line: 31, baseType: !47, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1445, file: !124, line: 526, baseType: !7, size: 32, offset: 8448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1445, file: !124, line: 533, baseType: !28, size: 64, offset: 8512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1445, file: !124, line: 534, baseType: !7, size: 32, offset: 8576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1445, file: !124, line: 535, baseType: !4104, size: 64, offset: 8640)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1445, file: !124, line: 536, baseType: !7, size: 32, offset: 8704)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1445, file: !124, line: 539, baseType: !30, size: 32, offset: 8736)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1445, file: !124, line: 540, baseType: !2718, size: 64, offset: 8768)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1445, file: !124, line: 563, baseType: !105, size: 128, offset: 8832)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1445, file: !124, line: 565, baseType: !105, size: 128, offset: 8960)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1445, file: !124, line: 568, baseType: !2729, size: 64, offset: 9088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1445, file: !124, line: 570, baseType: !57, size: 32, offset: 9152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1421, file: !247, line: 2382, baseType: !1420, size: 64, offset: 448)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1421, file: !247, line: 2383, baseType: !737, size: 64, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1421, file: !247, line: 2385, baseType: !4115, offset: 576)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2584, line: 206, elements: !654)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1421, file: !247, line: 2386, baseType: !4115, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1421, file: !247, line: 2387, baseType: !4115, offset: 576)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1421, file: !247, line: 2388, baseType: !4119, offset: 576)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4115, elements: !725)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1421, file: !247, line: 2390, baseType: !4115, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1421, file: !247, line: 2391, baseType: !4115, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1421, file: !247, line: 2392, baseType: !4115, offset: 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1421, file: !247, line: 2393, baseType: !4115, offset: 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1412, file: !247, line: 1197, baseType: !4125, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !247, line: 2057, size: 1664, elements: !4128)
!4128 = !{!4129, !4133, !4137, !4138, !4142, !4146, !4150, !4151, !4152, !4156, !4160, !4164, !4165, !4166, !4172, !4176, !4177, !4181, !4182, !4183, !4184, !4188, !4192, !4239, !4254, !4255}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4127, file: !247, line: 2058, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!1210, !1411}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4127, file: !247, line: 2059, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !1210}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4127, file: !247, line: 2060, baseType: !4134, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4127, file: !247, line: 2062, baseType: !4139, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !1210, !30}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4127, file: !247, line: 2063, baseType: !4143, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!30, !1210, !1868}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4127, file: !247, line: 2064, baseType: !4147, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!30, !1210}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4127, file: !247, line: 2065, baseType: !4134, size: 64, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4127, file: !247, line: 2066, baseType: !1440, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4127, file: !247, line: 2067, baseType: !4153, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!30, !1411, !30}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4127, file: !247, line: 2068, baseType: !4157, size: 64, offset: 576)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!30, !1411, !246}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4127, file: !247, line: 2069, baseType: !4161, size: 64, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!30, !1411}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4127, file: !247, line: 2070, baseType: !4157, size: 64, offset: 704)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4127, file: !247, line: 2071, baseType: !4161, size: 64, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4127, file: !247, line: 2072, baseType: !4167, size: 64, offset: 832)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!30, !1175, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !247, line: 62, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4127, file: !247, line: 2073, baseType: !4173, size: 64, offset: 896)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!30, !1411, !2454, !928}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4127, file: !247, line: 2074, baseType: !1440, size: 64, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4127, file: !247, line: 2076, baseType: !4178, size: 64, offset: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!30, !2205, !1175}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4127, file: !247, line: 2077, baseType: !4178, size: 64, offset: 1088)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4127, file: !247, line: 2078, baseType: !4178, size: 64, offset: 1152)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4127, file: !247, line: 2079, baseType: !4178, size: 64, offset: 1216)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4127, file: !247, line: 2081, baseType: !4185, size: 64, offset: 1280)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!1362, !1411, !30, !928, !43, !49}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4127, file: !247, line: 2082, baseType: !4189, size: 64, offset: 1344)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!1362, !1411, !30, !24, !43, !49}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4127, file: !247, line: 2083, baseType: !4193, size: 64, offset: 1408)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!4196, !1210}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !252, line: 296, size: 1664, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4224, !4225, !4226}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4198, file: !252, line: 297, baseType: !310, size: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4198, file: !252, line: 298, baseType: !105, size: 128, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4198, file: !252, line: 299, baseType: !105, size: 128, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4198, file: !252, line: 300, baseType: !105, size: 128, offset: 384)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4198, file: !252, line: 301, baseType: !689, size: 256, offset: 512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4198, file: !252, line: 302, baseType: !67, size: 32, offset: 768)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4198, file: !252, line: 303, baseType: !57, size: 32, offset: 800)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4198, file: !252, line: 304, baseType: !1411, size: 64, offset: 832)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4198, file: !252, line: 305, baseType: !4209, size: 64, offset: 896)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !252, line: 68, size: 64, elements: !4210)
!4210 = !{!4211, !4223}
!4211 = !DIDerivedType(tag: DW_TAG_member, scope: !4209, file: !252, line: 69, baseType: !4212, size: 32)
!4212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4209, file: !252, line: 69, size: 32, elements: !4213)
!4213 = !{!4214, !4215, !4216}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4212, file: !252, line: 70, baseType: !813, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4212, file: !252, line: 71, baseType: !821, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4212, file: !252, line: 72, baseType: !4217, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4218, line: 24, baseType: !4219)
!4218 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4218, line: 22, size: 32, elements: !4220)
!4220 = !{!4221}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4219, file: !4218, line: 23, baseType: !4222, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4218, line: 20, baseType: !819)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4209, file: !252, line: 74, baseType: !251, size: 32, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4198, file: !252, line: 306, baseType: !49, size: 64, offset: 960)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4198, file: !252, line: 307, baseType: !47, size: 64, offset: 1024)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4198, file: !252, line: 308, baseType: !4227, size: 576, offset: 1088)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !252, line: 205, size: 576, elements: !4228)
!4228 = !{!4229, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4227, file: !252, line: 206, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !252, line: 66, baseType: !51)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4227, file: !252, line: 207, baseType: !4230, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4227, file: !252, line: 208, baseType: !4230, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4227, file: !252, line: 209, baseType: !4230, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4227, file: !252, line: 210, baseType: !4230, size: 64, offset: 256)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4227, file: !252, line: 211, baseType: !4230, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4227, file: !252, line: 212, baseType: !4230, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4227, file: !252, line: 213, baseType: !876, size: 64, offset: 448)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4227, file: !252, line: 214, baseType: !876, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4127, file: !247, line: 2085, baseType: !4240, size: 64, offset: 1472)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!1065, !1411, !4243}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4245, line: 15, size: 256, elements: !4246)
!4245 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4246 = !{!4247, !4248, !4249, !4250, !4251}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4244, file: !4245, line: 16, baseType: !765, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4244, file: !4245, line: 19, baseType: !30, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4244, file: !4245, line: 26, baseType: !47, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4244, file: !4245, line: 33, baseType: !47, size: 64, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4244, file: !4245, line: 36, baseType: !4252, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !139, line: 33, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4127, file: !247, line: 2087, baseType: !4240, size: 64, offset: 1536)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4127, file: !247, line: 2089, baseType: !1440, size: 64, offset: 1600)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1412, file: !247, line: 1198, baseType: !4257, size: 64, offset: 448)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4259)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !252, line: 324, size: 704, elements: !4260)
!4260 = !{!4261, !4265, !4269, !4273, !4274, !4275, !4276, !4277, !4282, !4287, !4291}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4259, file: !252, line: 325, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!30, !4197}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4259, file: !252, line: 326, baseType: !4266, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!4197, !1411, !30}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4259, file: !252, line: 327, baseType: !4270, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4197}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4259, file: !252, line: 328, baseType: !4262, size: 64, offset: 192)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4259, file: !252, line: 329, baseType: !4262, size: 64, offset: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4259, file: !252, line: 330, baseType: !4262, size: 64, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4259, file: !252, line: 331, baseType: !4153, size: 64, offset: 384)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4259, file: !252, line: 334, baseType: !4278, size: 64, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!4281, !1210}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4259, file: !252, line: 335, baseType: !4283, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!30, !1210, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4259, file: !252, line: 337, baseType: !4288, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!30, !1210, !4281}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4259, file: !252, line: 339, baseType: !4292, size: 64, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!30, !1411, !4295}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1412, file: !247, line: 1199, baseType: !4297, size: 64, offset: 512)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4299)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !252, line: 430, size: 704, elements: !4300)
!4300 = !{!4301, !4305, !4306, !4310, !4311, !4312, !4327, !4350, !4354, !4355, !4378}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4299, file: !252, line: 431, baseType: !4302, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!30, !1411, !30, !30, !1331}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4299, file: !252, line: 432, baseType: !4153, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4299, file: !252, line: 433, baseType: !4307, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!30, !1411, !7}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4299, file: !252, line: 434, baseType: !4307, size: 64, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4299, file: !252, line: 435, baseType: !4153, size: 64, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4299, file: !252, line: 436, baseType: !4313, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!30, !1411, !30, !4316}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !252, line: 417, size: 256, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4317, file: !252, line: 418, baseType: !30, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4317, file: !252, line: 419, baseType: !7, size: 32, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4317, file: !252, line: 420, baseType: !7, size: 32, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4317, file: !252, line: 422, baseType: !7, size: 32, offset: 96)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4317, file: !252, line: 423, baseType: !7, size: 32, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4317, file: !252, line: 424, baseType: !7, size: 32, offset: 160)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4317, file: !252, line: 425, baseType: !7, size: 32, offset: 192)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4317, file: !252, line: 426, baseType: !7, size: 32, offset: 224)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4299, file: !252, line: 437, baseType: !4328, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!30, !1411, !4209, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !252, line: 345, size: 960, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4332, file: !252, line: 346, baseType: !30, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4332, file: !252, line: 347, baseType: !384, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4332, file: !252, line: 348, baseType: !384, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4332, file: !252, line: 349, baseType: !384, size: 64, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4332, file: !252, line: 350, baseType: !384, size: 64, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4332, file: !252, line: 351, baseType: !384, size: 64, offset: 320)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4332, file: !252, line: 352, baseType: !384, size: 64, offset: 384)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4332, file: !252, line: 353, baseType: !395, size: 64, offset: 448)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4332, file: !252, line: 355, baseType: !395, size: 64, offset: 512)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4332, file: !252, line: 356, baseType: !30, size: 32, offset: 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4332, file: !252, line: 357, baseType: !30, size: 32, offset: 608)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4332, file: !252, line: 358, baseType: !384, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4332, file: !252, line: 359, baseType: !384, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4332, file: !252, line: 360, baseType: !384, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4332, file: !252, line: 361, baseType: !395, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4332, file: !252, line: 362, baseType: !30, size: 32, offset: 896)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4299, file: !252, line: 438, baseType: !4351, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!30, !1411, !4295, !4331}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4299, file: !252, line: 440, baseType: !4328, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4299, file: !252, line: 441, baseType: !4356, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!30, !1411, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !252, line: 411, size: 1408, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4360, file: !252, line: 412, baseType: !7, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4360, file: !252, line: 413, baseType: !4364, size: 1344, offset: 64)
!4364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4365, size: 1344, elements: !725)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !252, line: 397, size: 448, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4377}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4365, file: !252, line: 398, baseType: !7, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4365, file: !252, line: 399, baseType: !7, size: 32, offset: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4365, file: !252, line: 401, baseType: !7, size: 32, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4365, file: !252, line: 402, baseType: !7, size: 32, offset: 96)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4365, file: !252, line: 403, baseType: !7, size: 32, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4365, file: !252, line: 404, baseType: !7, size: 32, offset: 160)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4365, file: !252, line: 405, baseType: !7, size: 32, offset: 192)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4365, file: !252, line: 406, baseType: !386, size: 64, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4365, file: !252, line: 407, baseType: !4376, size: 64, offset: 320)
!4376 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !33, line: 132, baseType: !384)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4365, file: !252, line: 408, baseType: !4376, size: 64, offset: 384)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4299, file: !252, line: 442, baseType: !4307, size: 64, offset: 640)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1412, file: !247, line: 1200, baseType: !4380, size: 64, offset: 576)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4382)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !247, line: 54, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1412, file: !247, line: 1201, baseType: !47, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1412, file: !247, line: 1202, baseType: !47, size: 64, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1412, file: !247, line: 1203, baseType: !47, size: 64, offset: 768)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1412, file: !247, line: 1204, baseType: !1175, size: 64, offset: 832)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1412, file: !247, line: 1205, baseType: !860, size: 320, offset: 896)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1412, file: !247, line: 1206, baseType: !30, size: 32, offset: 1216)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1412, file: !247, line: 1207, baseType: !57, size: 32, offset: 1248)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1412, file: !247, line: 1209, baseType: !28, size: 64, offset: 1280)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1412, file: !247, line: 1211, baseType: !4392, size: 64, offset: 1344)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4395)
!4395 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !247, line: 1211, flags: DIFlagFwdDecl)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1412, file: !247, line: 1223, baseType: !4397, size: 64, offset: 1408)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1187, line: 34, size: 64, elements: !4398)
!4398 = !{!4399}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4397, file: !1187, line: 35, baseType: !1190, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1412, file: !247, line: 1224, baseType: !105, size: 128, offset: 1472)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1412, file: !247, line: 1225, baseType: !4402, size: 64, offset: 1600)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4404, line: 40, size: 7424, elements: !4405)
!4404 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4405 = !{!4406, !4407, !4408, !4765, !4766, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4809, !4810}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4403, file: !4404, line: 41, baseType: !1968, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4403, file: !4404, line: 42, baseType: !1968, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4403, file: !4404, line: 43, baseType: !4409, size: 64, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !258, line: 128, size: 4544, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4419, !4420, !4421, !4422, !4423, !4609, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4731, !4732, !4733, !4734, !4737, !4738, !4741, !4744, !4745, !4748, !4749, !4750, !4751}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4410, file: !258, line: 133, baseType: !30, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !4410, file: !258, line: 134, baseType: !30, size: 32, offset: 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !4410, file: !258, line: 135, baseType: !30, size: 32, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !4410, file: !258, line: 137, baseType: !4416, size: 256, offset: 96)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4410, file: !258, line: 139, baseType: !34, size: 16, offset: 352)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !4410, file: !258, line: 140, baseType: !34, size: 16, offset: 368)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !4410, file: !258, line: 142, baseType: !760, size: 128, offset: 384)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !4410, file: !258, line: 143, baseType: !4402, size: 64, offset: 512)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4410, file: !258, line: 145, baseType: !4424, size: 64, offset: 576)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !258, line: 1388, size: 1152, elements: !4427)
!4427 = !{!4428, !4516, !4531, !4536, !4540, !4544, !4545, !4549, !4550, !4556, !4560, !4561, !4565, !4591, !4595, !4600, !4601, !4605}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !4426, file: !258, line: 1389, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4432}
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !4404, line: 265, size: 960, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4439, !4440, !4441, !4443, !4444, !4451, !4453, !4456, !4457, !4460, !4464, !4465, !4467, !4468, !4469, !4470, !4472, !4514}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !4433, file: !4404, line: 266, baseType: !4432, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !4433, file: !4404, line: 267, baseType: !4402, size: 64, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !4433, file: !4404, line: 268, baseType: !4438, size: 32, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !4404, line: 256, baseType: !327)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !4433, file: !4404, line: 271, baseType: !34, size: 16, offset: 160)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !4433, file: !4404, line: 272, baseType: !34, size: 16, offset: 176)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !4433, file: !4404, line: 273, baseType: !4442, size: 8, offset: 192)
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !4404, line: 97, baseType: !91)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !4433, file: !4404, line: 274, baseType: !57, size: 32, offset: 224)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !4433, file: !4404, line: 276, baseType: !4445, size: 160, align: 32, offset: 256)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2050, line: 77, size: 160, align: 32, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !4445, file: !2050, line: 78, baseType: !1968, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !4445, file: !2050, line: 80, baseType: !7, size: 32, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !4445, file: !2050, line: 82, baseType: !7, size: 32, offset: 96)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !4445, file: !2050, line: 84, baseType: !7, size: 32, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !4433, file: !4404, line: 278, baseType: !4452, size: 32, offset: 416)
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !4404, line: 258, baseType: !7)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !4433, file: !4404, line: 279, baseType: !4454, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !4404, line: 20, baseType: !4430)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !4433, file: !4404, line: 280, baseType: !28, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !4433, file: !4404, line: 288, baseType: !4458, size: 64, offset: 576)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !4404, line: 288, flags: DIFlagFwdDecl)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !4433, file: !4404, line: 289, baseType: !4461, size: 64, offset: 640)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !4404, line: 228, size: 64, elements: !4462)
!4462 = !{!4463}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4461, file: !4404, line: 229, baseType: !384, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !4433, file: !4404, line: 291, baseType: !384, size: 64, offset: 704)
!4465 = !DIDerivedType(tag: DW_TAG_member, scope: !4433, file: !4404, line: 299, baseType: !4466, offset: 768)
!4466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4433, file: !4404, line: 299, elements: !654)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !4433, file: !4404, line: 305, baseType: !34, size: 16, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !4433, file: !4404, line: 311, baseType: !34, size: 16, offset: 784)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !4433, file: !4404, line: 313, baseType: !57, size: 32, offset: 800)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !4433, file: !4404, line: 315, baseType: !4471, size: 64, offset: 832)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !4433, file: !4404, line: 317, baseType: !4473, size: 64, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !4475, line: 678, size: 1984, elements: !4476)
!4475 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!4476 = !{!4477, !4478, !4479, !4482, !4503, !4504, !4505, !4506, !4511, !4512, !4513}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !4474, file: !4475, line: 679, baseType: !773, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !4474, file: !4475, line: 680, baseType: !7, size: 32, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !4474, file: !4475, line: 685, baseType: !4480, size: 64, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !4475, line: 685, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !4474, file: !4475, line: 687, baseType: !4483, size: 576, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !4484, line: 26, baseType: !4485)
!4484 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !4484, line: 16, size: 576, elements: !4486)
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492, !4497, !4502}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4485, file: !4484, line: 17, baseType: !67, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !4485, file: !4484, line: 18, baseType: !30, size: 32, offset: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !4485, file: !4484, line: 19, baseType: !30, size: 32, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4485, file: !4484, line: 20, baseType: !1959, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !4485, file: !4484, line: 22, baseType: !28, size: 64, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4485, file: !4484, line: 23, baseType: !4493, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !4484, line: 13, baseType: !4495)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!28, !765, !28}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4485, file: !4484, line: 24, baseType: !4498, size: 64, offset: 320)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !4484, line: 14, baseType: !4500)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{null, !28, !28}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4485, file: !4484, line: 25, baseType: !62, size: 192, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !4474, file: !4475, line: 688, baseType: !4483, size: 576, offset: 768)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !4474, file: !4475, line: 694, baseType: !7, size: 32, offset: 1344)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !4474, file: !4475, line: 699, baseType: !67, size: 32, offset: 1376)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !4474, file: !4475, line: 700, baseType: !4507, size: 128, offset: 1408)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !4475, line: 550, size: 128, elements: !4508)
!4508 = !{!4509, !4510}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4507, file: !4475, line: 551, baseType: !4432, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4507, file: !4475, line: 552, baseType: !4432, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !4474, file: !4475, line: 701, baseType: !967, size: 256, offset: 1536)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !4474, file: !4475, line: 702, baseType: !2617, size: 64, offset: 1792)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !4474, file: !4475, line: 707, baseType: !310, size: 128, offset: 1856)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !4433, file: !4404, line: 324, baseType: !4515, offset: 960)
!4515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2049, elements: !1072)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !4426, file: !258, line: 1390, baseType: !4517, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!30, !4432, !4520, !7}
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !258, line: 1559, size: 192, elements: !4522)
!4522 = !{!4523, !4526, !4527}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !4521, file: !258, line: 1560, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !258, line: 32, flags: DIFlagFwdDecl)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !4521, file: !258, line: 1561, baseType: !840, size: 8, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4521, file: !258, line: 1562, baseType: !4528, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !4520}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4426, file: !258, line: 1392, baseType: !4532, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!30, !4409, !4535}
!4535 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !258, line: 115, baseType: !7)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4426, file: !258, line: 1393, baseType: !4537, size: 64, offset: 192)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4409}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4426, file: !258, line: 1394, baseType: !4541, size: 64, offset: 256)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!30, !4402, !4535, !7, !47}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4426, file: !258, line: 1396, baseType: !4541, size: 64, offset: 320)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !4426, file: !258, line: 1398, baseType: !4546, size: 64, offset: 384)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!7, !4409, !7}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !4426, file: !258, line: 1400, baseType: !4537, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !4426, file: !258, line: 1401, baseType: !4551, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!30, !4402, !4554}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !247, line: 56, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !4426, file: !258, line: 1402, baseType: !4557, size: 64, offset: 576)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!30, !4402, !840}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !4426, file: !258, line: 1403, baseType: !4537, size: 64, offset: 640)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !4426, file: !258, line: 1405, baseType: !4562, size: 64, offset: 704)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4402, !47}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !4426, file: !258, line: 1406, baseType: !4566, size: 64, offset: 768)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!30, !4409, !1968, !7, !4569, !28}
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !258, line: 342, baseType: !4570)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!30, !4573, !7, !28}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !4575, line: 106, size: 512, elements: !4576)
!4575 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4586, !4587}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4574, file: !4575, line: 107, baseType: !385, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4574, file: !4575, line: 108, baseType: !385, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4574, file: !4575, line: 109, baseType: !385, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4574, file: !4575, line: 110, baseType: !93, size: 8, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !4574, file: !4575, line: 111, baseType: !93, size: 8, offset: 200)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !4574, file: !4575, line: 112, baseType: !93, size: 8, offset: 208)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4574, file: !4575, line: 113, baseType: !93, size: 8, offset: 216)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4574, file: !4575, line: 114, baseType: !4585, size: 32, offset: 224)
!4585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !740)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !4574, file: !4575, line: 115, baseType: !385, size: 64, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4574, file: !4575, line: 116, baseType: !4588, size: 192, offset: 320)
!4588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !4589)
!4589 = !{!4590}
!4590 = !DISubrange(count: 24)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4426, file: !258, line: 1408, baseType: !4592, size: 64, offset: 832)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!928, !4409, !2890}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !4426, file: !258, line: 1410, baseType: !4596, size: 64, offset: 896)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!30, !4409, !4599, !257}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4426, file: !258, line: 1412, baseType: !1444, size: 64, offset: 960)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !4426, file: !258, line: 1413, baseType: !4602, size: 64, offset: 1024)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4604)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !258, line: 37, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !4426, file: !258, line: 1420, baseType: !4606, size: 64, offset: 1088)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!30, !4409, !2091}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4410, file: !258, line: 146, baseType: !4610, size: 64, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !258, line: 391, size: 7296, elements: !4612)
!4612 = !{!4613, !4614, !4617, !4618, !4621, !4624, !4625, !4629, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4654, !4655, !4656, !4657, !4658, !4659, !4692, !4693, !4694, !4697, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4716, !4717, !4718, !4719, !4720, !4721}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !4611, file: !258, line: 392, baseType: !4524, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !4611, file: !258, line: 393, baseType: !4615, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !258, line: 30, flags: DIFlagFwdDecl)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !4611, file: !258, line: 395, baseType: !1645, size: 128, offset: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4611, file: !258, line: 397, baseType: !4619, size: 64, offset: 256)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !258, line: 39, flags: DIFlagFwdDecl)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !4611, file: !258, line: 398, baseType: !4622, size: 64, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !258, line: 38, flags: DIFlagFwdDecl)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !4611, file: !258, line: 399, baseType: !689, size: 256, offset: 384)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !4611, file: !258, line: 401, baseType: !4626, size: 64, offset: 640)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4628)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !258, line: 401, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !4611, file: !258, line: 404, baseType: !4630, size: 64, offset: 704)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !258, line: 404, flags: DIFlagFwdDecl)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4611, file: !258, line: 406, baseType: !7, size: 32, offset: 768)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !4611, file: !258, line: 409, baseType: !760, size: 128, offset: 832)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !4611, file: !258, line: 410, baseType: !7, size: 32, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !4611, file: !258, line: 416, baseType: !28, size: 64, offset: 1024)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !4611, file: !258, line: 421, baseType: !47, size: 64, offset: 1088)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !4611, file: !258, line: 426, baseType: !57, size: 32, offset: 1152)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4611, file: !258, line: 432, baseType: !30, size: 32, offset: 1184)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !4611, file: !258, line: 434, baseType: !67, size: 32, offset: 1216)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !4611, file: !258, line: 436, baseType: !4409, size: 64, offset: 1280)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4611, file: !258, line: 438, baseType: !332, size: 32, offset: 1344)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !4611, file: !258, line: 443, baseType: !1463, size: 64, offset: 1408)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4611, file: !258, line: 450, baseType: !2864, size: 64, offset: 1472)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !4611, file: !258, line: 451, baseType: !205, size: 32, offset: 1536)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !4611, file: !258, line: 457, baseType: !47, size: 64, offset: 1600)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !4611, file: !258, line: 459, baseType: !7, size: 32, offset: 1664)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !4611, file: !258, line: 466, baseType: !7, size: 32, offset: 1696)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4611, file: !258, line: 468, baseType: !2555, size: 320, offset: 1728)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !4611, file: !258, line: 469, baseType: !967, size: 256, offset: 2048)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !4611, file: !258, line: 471, baseType: !57, size: 32, offset: 2304)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !4611, file: !258, line: 473, baseType: !4652, size: 64, offset: 2368)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !258, line: 473, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !4611, file: !258, line: 475, baseType: !105, size: 128, offset: 2432)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !4611, file: !258, line: 477, baseType: !584, size: 64, offset: 2560)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !4611, file: !258, line: 478, baseType: !4458, size: 64, offset: 2624)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !4611, file: !258, line: 479, baseType: !105, size: 128, offset: 2688)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !4611, file: !258, line: 480, baseType: !689, size: 256, offset: 2816)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !4611, file: !258, line: 483, baseType: !4660, size: 960, offset: 3072)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !258, line: 300, size: 960, elements: !4661)
!4661 = !{!4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !4660, file: !258, line: 301, baseType: !263, size: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !4660, file: !258, line: 302, baseType: !47, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !4660, file: !258, line: 303, baseType: !47, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !4660, file: !258, line: 305, baseType: !7, size: 32, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !4660, file: !258, line: 306, baseType: !7, size: 32, offset: 224)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !4660, file: !258, line: 307, baseType: !7, size: 32, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !4660, file: !258, line: 308, baseType: !7, size: 32, offset: 288)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !4660, file: !258, line: 309, baseType: !7, size: 32, offset: 320)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4660, file: !258, line: 310, baseType: !7, size: 32, offset: 352)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !4660, file: !258, line: 311, baseType: !7, size: 32, offset: 384)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !4660, file: !258, line: 312, baseType: !7, size: 32, offset: 416)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !4660, file: !258, line: 313, baseType: !7, size: 32, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !4660, file: !258, line: 314, baseType: !7, size: 32, offset: 480)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !4660, file: !258, line: 315, baseType: !7, size: 32, offset: 512)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !4660, file: !258, line: 316, baseType: !7, size: 32, offset: 544)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !4660, file: !258, line: 317, baseType: !7, size: 32, offset: 576)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !4660, file: !258, line: 318, baseType: !7, size: 32, offset: 608)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !4660, file: !258, line: 319, baseType: !7, size: 32, offset: 640)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !4660, file: !258, line: 320, baseType: !7, size: 32, offset: 672)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !4660, file: !258, line: 321, baseType: !7, size: 32, offset: 704)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !4660, file: !258, line: 322, baseType: !7, size: 32, offset: 736)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !4660, file: !258, line: 323, baseType: !7, size: 32, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !4660, file: !258, line: 325, baseType: !34, size: 16, offset: 800)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !4660, file: !258, line: 326, baseType: !34, size: 16, offset: 816)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !4660, file: !258, line: 327, baseType: !34, size: 16, offset: 832)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !4660, file: !258, line: 329, baseType: !95, size: 8, offset: 848)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !4660, file: !258, line: 330, baseType: !95, size: 8, offset: 856)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !4660, file: !258, line: 331, baseType: !95, size: 8, offset: 864)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !4660, file: !258, line: 332, baseType: !267, size: 32, offset: 896)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !4660, file: !258, line: 339, baseType: !7, size: 32, offset: 928)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !4611, file: !258, line: 485, baseType: !7, size: 32, offset: 4032)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4611, file: !258, line: 487, baseType: !30, size: 32, offset: 4064)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !4611, file: !258, line: 489, baseType: !4695, size: 64, offset: 4096)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !258, line: 31, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !4611, file: !258, line: 494, baseType: !4698, size: 64, offset: 4160)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !258, line: 35, flags: DIFlagFwdDecl)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !4611, file: !258, line: 495, baseType: !105, size: 128, offset: 4224)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !4611, file: !258, line: 497, baseType: !105, size: 128, offset: 4352)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !4611, file: !258, line: 498, baseType: !67, size: 32, offset: 4480)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !4611, file: !258, line: 499, baseType: !2612, size: 704, offset: 4544)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !4611, file: !258, line: 501, baseType: !689, size: 256, offset: 5248)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !4611, file: !258, line: 502, baseType: !689, size: 256, offset: 5504)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !4611, file: !258, line: 508, baseType: !105, size: 128, offset: 5760)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !4611, file: !258, line: 509, baseType: !67, size: 32, offset: 5888)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !4611, file: !258, line: 511, baseType: !30, size: 32, offset: 5920)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4611, file: !258, line: 517, baseType: !669, size: 128, align: 64, offset: 5952)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !4611, file: !258, line: 518, baseType: !62, size: 192, offset: 6080)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !4611, file: !258, line: 523, baseType: !689, size: 256, offset: 6272)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !4611, file: !258, line: 525, baseType: !30, size: 32, offset: 6528)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !4611, file: !258, line: 527, baseType: !4714, size: 64, offset: 6592)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !258, line: 527, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !4611, file: !258, line: 528, baseType: !105, size: 128, offset: 6656)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !4611, file: !258, line: 530, baseType: !1175, size: 64, offset: 6784)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !4611, file: !258, line: 531, baseType: !1175, size: 64, offset: 6848)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !4611, file: !258, line: 532, baseType: !1175, size: 64, offset: 6912)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4611, file: !258, line: 536, baseType: !689, size: 256, offset: 6976)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !4611, file: !258, line: 538, baseType: !840, size: 8, offset: 7232)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4410, file: !258, line: 147, baseType: !28, size: 64, offset: 704)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !4410, file: !258, line: 149, baseType: !4474, size: 1984, offset: 768)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4410, file: !258, line: 151, baseType: !30, size: 32, offset: 2752)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4410, file: !258, line: 152, baseType: !47, size: 64, offset: 2816)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !4410, file: !258, line: 161, baseType: !689, size: 256, offset: 2880)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !4410, file: !258, line: 162, baseType: !7, size: 32, offset: 3136)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4410, file: !258, line: 164, baseType: !4729, size: 64, offset: 3200)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !247, line: 50, flags: DIFlagFwdDecl)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !4410, file: !258, line: 165, baseType: !1457, size: 512, offset: 3264)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !4410, file: !258, line: 166, baseType: !1463, size: 64, offset: 3776)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !4410, file: !258, line: 168, baseType: !105, size: 128, offset: 3840)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !4410, file: !258, line: 170, baseType: !4735, size: 64, offset: 3968)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !258, line: 170, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !4410, file: !258, line: 171, baseType: !57, size: 32, offset: 4032)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !4410, file: !258, line: 172, baseType: !4739, size: 64, offset: 4096)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !258, line: 104, flags: DIFlagFwdDecl)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !4410, file: !258, line: 197, baseType: !4742, size: 64, offset: 4160)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !258, line: 197, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4410, file: !258, line: 199, baseType: !30, size: 32, offset: 4224)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !4410, file: !258, line: 200, baseType: !4746, size: 64, offset: 4288)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !258, line: 105, flags: DIFlagFwdDecl)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !4410, file: !258, line: 201, baseType: !2583, offset: 4352)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !4410, file: !258, line: 202, baseType: !384, size: 64, offset: 4352)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !4410, file: !258, line: 203, baseType: !4535, size: 32, offset: 4416)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !4410, file: !258, line: 209, baseType: !4752, size: 64, offset: 4480)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !258, line: 384, size: 576, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4753, file: !258, line: 385, baseType: !1457, size: 512)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !4753, file: !258, line: 386, baseType: !840, size: 8, offset: 512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !4753, file: !258, line: 387, baseType: !7, size: 32, offset: 544)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !4753, file: !258, line: 388, baseType: !4759, offset: 576)
!4759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4760, elements: !1072)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !258, line: 378, size: 640, elements: !4761)
!4761 = !{!4762, !4763, !4764}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4760, file: !258, line: 379, baseType: !1457, size: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !4760, file: !258, line: 380, baseType: !1968, size: 64, offset: 512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !4760, file: !258, line: 381, baseType: !1968, size: 64, offset: 576)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4403, file: !4404, line: 44, baseType: !4610, size: 64, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4403, file: !4404, line: 45, baseType: !4767, size: 64, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4404, line: 45, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4403, file: !4404, line: 46, baseType: !47, size: 64, offset: 320)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4403, file: !4404, line: 47, baseType: !840, size: 8, offset: 384)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4403, file: !4404, line: 48, baseType: !91, size: 8, offset: 392)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4403, file: !4404, line: 49, baseType: !840, size: 8, offset: 400)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4403, file: !4404, line: 50, baseType: !840, size: 8, offset: 408)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4403, file: !4404, line: 51, baseType: !1284, size: 32, offset: 416)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4403, file: !4404, line: 52, baseType: !57, size: 32, offset: 448)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4403, file: !4404, line: 53, baseType: !67, size: 32, offset: 480)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4403, file: !4404, line: 54, baseType: !1210, size: 64, offset: 512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4403, file: !4404, line: 55, baseType: !28, size: 64, offset: 576)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4403, file: !4404, line: 56, baseType: !28, size: 64, offset: 640)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4403, file: !4404, line: 57, baseType: !4781, size: 64, offset: 704)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4783)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !258, line: 1477, size: 128, elements: !4784)
!4784 = !{!4785, !4789}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !4783, file: !258, line: 1478, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !4402, !840}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4783, file: !258, line: 1483, baseType: !4790, size: 64, offset: 64)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{null, !4402}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4403, file: !4404, line: 58, baseType: !689, size: 256, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4403, file: !4404, line: 60, baseType: !30, size: 32, offset: 1024)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4403, file: !4404, line: 61, baseType: !30, size: 32, offset: 1056)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4403, file: !4404, line: 62, baseType: !1463, size: 64, offset: 1088)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4403, file: !4404, line: 65, baseType: !689, size: 256, offset: 1152)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4403, file: !4404, line: 66, baseType: !1411, size: 64, offset: 1408)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4403, file: !4404, line: 68, baseType: !4800, size: 64, offset: 1472)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !258, line: 63, size: 808, elements: !4802)
!4802 = !{!4803, !4807}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !4801, file: !258, line: 64, baseType: !4804, size: 296)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 296, elements: !4805)
!4805 = !{!4806}
!4806 = !DISubrange(count: 37)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !4801, file: !258, line: 65, baseType: !4808, size: 512, offset: 296)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !1500)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4403, file: !4404, line: 72, baseType: !840, size: 8, offset: 1536)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4403, file: !4404, line: 77, baseType: !2865, size: 5824, offset: 1600)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1412, file: !247, line: 1226, baseType: !4812, size: 64, offset: 1664)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !258, line: 1495, size: 128, elements: !4814)
!4814 = !{!4815, !4816}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4813, file: !258, line: 1496, baseType: !4402, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !4813, file: !258, line: 1497, baseType: !28, size: 64, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1412, file: !247, line: 1227, baseType: !4729, size: 64, offset: 1728)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1412, file: !247, line: 1228, baseType: !4819, size: 64, offset: 1792)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !247, line: 1228, flags: DIFlagFwdDecl)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1412, file: !247, line: 1229, baseType: !310, size: 128, offset: 1856)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1412, file: !247, line: 1230, baseType: !7, size: 32, offset: 1984)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1412, file: !247, line: 1231, baseType: !4824, size: 2496, offset: 2048)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !252, line: 521, size: 2496, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4830, !4862}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4824, file: !252, line: 522, baseType: !7, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4824, file: !252, line: 523, baseType: !860, size: 320, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4824, file: !252, line: 524, baseType: !4829, size: 192, offset: 384)
!4829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, size: 192, elements: !725)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4824, file: !252, line: 525, baseType: !4831, size: 1728, offset: 576)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4832, size: 1728, elements: !725)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !252, line: 222, size: 576, elements: !4833)
!4833 = !{!4834, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4832, file: !252, line: 223, baseType: !4835, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !252, line: 445, size: 256, elements: !4837)
!4837 = !{!4838, !4839, !4852, !4853}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4836, file: !252, line: 446, baseType: !30, size: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4836, file: !252, line: 447, baseType: !4840, size: 64, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4842)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !252, line: 312, size: 512, elements: !4843)
!4843 = !{!4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4842, file: !252, line: 313, baseType: !4153, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4842, file: !252, line: 314, baseType: !4153, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4842, file: !252, line: 315, baseType: !4153, size: 64, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4842, file: !252, line: 316, baseType: !4153, size: 64, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4842, file: !252, line: 317, baseType: !4262, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4842, file: !252, line: 318, baseType: !4262, size: 64, offset: 320)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4842, file: !252, line: 319, baseType: !4262, size: 64, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4842, file: !252, line: 320, baseType: !4292, size: 64, offset: 448)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4836, file: !252, line: 448, baseType: !1444, size: 64, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4836, file: !252, line: 449, baseType: !4835, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4832, file: !252, line: 224, baseType: !30, size: 32, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4832, file: !252, line: 226, baseType: !105, size: 128, offset: 128)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4832, file: !252, line: 227, baseType: !47, size: 64, offset: 256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4832, file: !252, line: 228, baseType: !7, size: 32, offset: 320)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4832, file: !252, line: 229, baseType: !7, size: 32, offset: 352)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4832, file: !252, line: 230, baseType: !4230, size: 64, offset: 384)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4832, file: !252, line: 231, baseType: !4230, size: 64, offset: 448)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4832, file: !252, line: 232, baseType: !28, size: 64, offset: 512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4824, file: !252, line: 526, baseType: !4863, size: 192, offset: 2304)
!4863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4840, size: 192, elements: !725)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1412, file: !247, line: 1233, baseType: !4865, size: 2368, offset: 4544)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !247, line: 1184, size: 2368, elements: !4866)
!4866 = !{!4867, !4868, !4869}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4865, file: !247, line: 1185, baseType: !34, size: 16)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4865, file: !247, line: 1186, baseType: !34, size: 16, offset: 16)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4865, file: !247, line: 1187, baseType: !4870, size: 2304, offset: 64)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4871, size: 2304, elements: !725)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4872, line: 12, size: 768, elements: !4873)
!4872 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4873 = !{!4874, !4882, !4883, !4884, !4885}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4871, file: !4872, line: 13, baseType: !4875, size: 384)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4876, line: 17, size: 384, elements: !4877)
!4876 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4877 = !{!4878, !4879, !4880, !4881}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4875, file: !4876, line: 18, baseType: !30, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4875, file: !4876, line: 19, baseType: !30, size: 32, offset: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4875, file: !4876, line: 20, baseType: !62, size: 192, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4875, file: !4876, line: 22, baseType: !669, size: 128, align: 64, offset: 256)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4871, file: !4872, line: 14, baseType: !2406, size: 64, offset: 384)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4871, file: !4872, line: 15, baseType: !3612, size: 64, offset: 448)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4871, file: !4872, line: 16, baseType: !62, size: 192, offset: 512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4871, file: !4872, line: 17, baseType: !57, size: 32, offset: 704)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1412, file: !247, line: 1240, baseType: !28, size: 64, offset: 6912)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1412, file: !247, line: 1243, baseType: !326, size: 32, offset: 6976)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1412, file: !247, line: 1245, baseType: !876, size: 64, offset: 7040)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1412, file: !247, line: 1246, baseType: !876, size: 64, offset: 7104)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1412, file: !247, line: 1248, baseType: !327, size: 32, offset: 7168)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1412, file: !247, line: 1249, baseType: !4892, size: 64, offset: 7232)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !247, line: 634, flags: DIFlagFwdDecl)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1412, file: !247, line: 1252, baseType: !4416, size: 256, offset: 7296)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1412, file: !247, line: 1253, baseType: !4896, size: 128, offset: 7552)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4897, line: 21, baseType: !4898)
!4897 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4897, line: 19, size: 128, elements: !4899)
!4899 = !{!4900}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4898, file: !4897, line: 20, baseType: !4901, size: 128)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !4902)
!4902 = !{!4903}
!4903 = !DISubrange(count: 16)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1412, file: !247, line: 1255, baseType: !7, size: 32, offset: 7680)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1412, file: !247, line: 1261, baseType: !689, size: 256, offset: 7744)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1412, file: !247, line: 1267, baseType: !24, size: 64, offset: 8000)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1412, file: !247, line: 1269, baseType: !4908, size: 64, offset: 8064)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4910)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1177, line: 128, size: 1024, align: 512, elements: !4911)
!4911 = !{!4912, !4916, !4917, !4924, !4930, !4934, !4938, !4942, !4943, !4947, !4951, !4956, !4960}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4910, file: !1177, line: 129, baseType: !4913, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!30, !1175, !7}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4910, file: !1177, line: 130, baseType: !4913, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4910, file: !1177, line: 131, baseType: !4918, size: 64, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!30, !4921, !4923}
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4910, file: !1177, line: 132, baseType: !4925, size: 64, offset: 192)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!30, !4921, !7, !24, !4928}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4910, file: !1177, line: 134, baseType: !4931, size: 64, offset: 256)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!30, !4921}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4910, file: !1177, line: 135, baseType: !4935, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!30, !1175}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4910, file: !1177, line: 136, baseType: !4939, size: 64, offset: 384)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !1175}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4910, file: !1177, line: 137, baseType: !4939, size: 64, offset: 448)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4910, file: !1177, line: 138, baseType: !4944, size: 64, offset: 512)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !1175, !1210}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4910, file: !1177, line: 139, baseType: !4948, size: 64, offset: 576)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!928, !1175, !928, !30}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4910, file: !1177, line: 140, baseType: !4952, size: 64, offset: 640)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!1170, !4955}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4910, file: !1177, line: 141, baseType: !4957, size: 64, offset: 704)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!30, !1331, !840}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4910, file: !1177, line: 142, baseType: !4961, size: 64, offset: 768)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!1175, !1175, !4964}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1412, file: !247, line: 1271, baseType: !4967, size: 448, offset: 8128)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4245, line: 63, size: 448, elements: !4968)
!4968 = !{!4969, !4974, !4975, !4976, !4977, !4978, !4979}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4967, file: !4245, line: 64, baseType: !4970, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!47, !4973, !4243}
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4967, file: !4245, line: 66, baseType: !4970, size: 64, offset: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4967, file: !4245, line: 69, baseType: !1065, size: 64, offset: 128)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4967, file: !4245, line: 70, baseType: !30, size: 32, offset: 192)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4967, file: !4245, line: 71, baseType: !7, size: 32, offset: 224)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4967, file: !4245, line: 74, baseType: !105, size: 128, offset: 256)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4967, file: !4245, line: 85, baseType: !4980, size: 64, offset: 384)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1412, file: !247, line: 1274, baseType: !682, size: 64, offset: 8576)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1412, file: !247, line: 1280, baseType: !682, size: 64, offset: 8640)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1412, file: !247, line: 1283, baseType: !30, size: 32, offset: 8704)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1412, file: !247, line: 1286, baseType: !2103, size: 32, offset: 8736)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1412, file: !247, line: 1289, baseType: !2617, size: 64, offset: 8768)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1412, file: !247, line: 1290, baseType: !737, size: 64, offset: 8832)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1412, file: !247, line: 1297, baseType: !782, size: 64, offset: 8896)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1412, file: !247, line: 1304, baseType: !4989, size: 64, offset: 8960)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4990, line: 49, size: 64, elements: !4991)
!4990 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4991 = !{!4992}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4989, file: !4990, line: 50, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4990, line: 41, size: 512, align: 512, elements: !4995)
!4995 = !{!4996, !4997, !5002}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4994, file: !4990, line: 43, baseType: !67, size: 32)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4994, file: !4990, line: 45, baseType: !4998, size: 192, offset: 64)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4990, line: 29, size: 192, elements: !4999)
!4999 = !{!5000, !5001}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4998, file: !4990, line: 30, baseType: !105, size: 128)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4998, file: !4990, line: 32, baseType: !1065, size: 64, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4994, file: !4990, line: 46, baseType: !1065, size: 64, offset: 256)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1412, file: !247, line: 1305, baseType: !4989, size: 64, offset: 9024)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1412, file: !247, line: 1306, baseType: !669, size: 128, align: 64, offset: 9088)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1412, file: !247, line: 1307, baseType: !967, size: 256, offset: 9216)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1412, file: !247, line: 1309, baseType: !689, size: 256, offset: 9472)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1412, file: !247, line: 1314, baseType: !30, size: 32, offset: 9728)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1412, file: !247, line: 1317, baseType: !67, size: 32, align: 512, offset: 10240)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1412, file: !247, line: 1318, baseType: !105, size: 128, offset: 10304)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1412, file: !247, line: 1320, baseType: !67, size: 32, offset: 10432)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1412, file: !247, line: 1321, baseType: !105, size: 128, offset: 10496)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1211, file: !247, line: 656, baseType: !1561, size: 64, offset: 512)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1211, file: !247, line: 659, baseType: !28, size: 64, offset: 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1211, file: !247, line: 663, baseType: !47, size: 64, offset: 640)
!5015 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !247, line: 671, baseType: !5016, size: 32, offset: 704)
!5016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !247, line: 671, size: 32, elements: !5017)
!5017 = !{!5018, !5019}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5016, file: !247, line: 672, baseType: !2665, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5016, file: !247, line: 673, baseType: !7, size: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1211, file: !247, line: 675, baseType: !1284, size: 32, offset: 736)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1211, file: !247, line: 676, baseType: !49, size: 64, offset: 768)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1211, file: !247, line: 677, baseType: !1320, size: 128, offset: 832)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1211, file: !247, line: 678, baseType: !1320, size: 128, offset: 960)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1211, file: !247, line: 679, baseType: !1320, size: 128, offset: 1088)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1211, file: !247, line: 680, baseType: !67, size: 32, offset: 1216)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1211, file: !247, line: 681, baseType: !34, size: 16, offset: 1248)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1211, file: !247, line: 682, baseType: !91, size: 8, offset: 1264)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1211, file: !247, line: 683, baseType: !91, size: 8, offset: 1272)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1211, file: !247, line: 684, baseType: !4376, size: 64, offset: 1280)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1211, file: !247, line: 691, baseType: !47, size: 64, offset: 1344)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1211, file: !247, line: 692, baseType: !860, size: 320, offset: 1408)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1211, file: !247, line: 694, baseType: !47, size: 64, offset: 1728)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1211, file: !247, line: 695, baseType: !47, size: 64, offset: 1792)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1211, file: !247, line: 697, baseType: !310, size: 128, offset: 1856)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1211, file: !247, line: 698, baseType: !105, size: 128, offset: 1984)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1211, file: !247, line: 707, baseType: !105, size: 128, offset: 2112)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1211, file: !247, line: 708, baseType: !105, size: 128, offset: 2240)
!5038 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !247, line: 709, baseType: !5039, size: 128, offset: 2368)
!5039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !247, line: 709, size: 128, elements: !5040)
!5040 = !{!5041, !5042}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5039, file: !247, line: 710, baseType: !737, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5039, file: !247, line: 711, baseType: !669, size: 128, align: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1211, file: !247, line: 713, baseType: !684, size: 64, offset: 2496)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1211, file: !247, line: 714, baseType: !684, size: 64, offset: 2560)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1211, file: !247, line: 715, baseType: !57, size: 32, offset: 2624)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1211, file: !247, line: 716, baseType: !57, size: 32, offset: 2656)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1211, file: !247, line: 717, baseType: !57, size: 32, offset: 2688)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1211, file: !247, line: 719, baseType: !57, size: 32, offset: 2720)
!5049 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !247, line: 721, baseType: !5050, size: 64, offset: 2752)
!5050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !247, line: 721, size: 64, elements: !5051)
!5051 = !{!5052, !5176}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5050, file: !247, line: 722, baseType: !5053, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5055)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !247, line: 1914, size: 2112, elements: !5056)
!5056 = !{!5057, !5058, !5062, !5066, !5070, !5071, !5072, !5076, !5089, !5093, !5097, !5098, !5102, !5103, !5107, !5112, !5113, !5117, !5121, !5127, !5128, !5132, !5133, !5139, !5143, !5144, !5149, !5153, !5157, !5161, !5165, !5166, !5172}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5055, file: !247, line: 1915, baseType: !1444, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5055, file: !247, line: 1916, baseType: !5059, size: 64, offset: 64)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!49, !661, !49, !30}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5055, file: !247, line: 1917, baseType: !5063, size: 64, offset: 128)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!1362, !661, !928, !43, !48}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5055, file: !247, line: 1918, baseType: !5067, size: 64, offset: 192)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!1362, !661, !24, !43, !48}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5055, file: !247, line: 1919, baseType: !1982, size: 64, offset: 256)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5055, file: !247, line: 1920, baseType: !1982, size: 64, offset: 320)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5055, file: !247, line: 1921, baseType: !5073, size: 64, offset: 384)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!30, !1985, !4520, !7}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5055, file: !247, line: 1923, baseType: !5077, size: 64, offset: 448)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!30, !661, !5080}
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !247, line: 1858, size: 128, elements: !5082)
!5082 = !{!5083, !5088}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5081, file: !247, line: 1859, baseType: !5084, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !247, line: 1855, baseType: !5085)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!840, !5080, !24, !30, !49, !384, !7}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5081, file: !247, line: 1860, baseType: !49, size: 64, offset: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5055, file: !247, line: 1924, baseType: !5090, size: 64, offset: 512)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!2272, !661, !2274}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5055, file: !247, line: 1925, baseType: !5094, size: 64, offset: 576)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!1065, !661, !7, !47}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5055, file: !247, line: 1926, baseType: !5094, size: 64, offset: 640)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5055, file: !247, line: 1927, baseType: !5099, size: 64, offset: 704)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!30, !661, !1691}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5055, file: !247, line: 1928, baseType: !47, size: 64, offset: 768)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5055, file: !247, line: 1929, baseType: !5104, size: 64, offset: 832)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!30, !1210, !661}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5055, file: !247, line: 1930, baseType: !5108, size: 64, offset: 896)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!30, !661, !5111}
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !247, line: 1061, baseType: !28)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5055, file: !247, line: 1931, baseType: !5104, size: 64, offset: 960)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5055, file: !247, line: 1932, baseType: !5114, size: 64, offset: 1024)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!30, !661, !49, !49, !30}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5055, file: !247, line: 1933, baseType: !5118, size: 64, offset: 1088)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!30, !30, !661, !30}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5055, file: !247, line: 1934, baseType: !5122, size: 64, offset: 1152)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!30, !661, !30, !5125}
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !247, line: 1063, flags: DIFlagFwdDecl)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5055, file: !247, line: 1935, baseType: !658, size: 64, offset: 1216)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5055, file: !247, line: 1936, baseType: !5129, size: 64, offset: 1280)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!30, !30}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5055, file: !247, line: 1937, baseType: !5122, size: 64, offset: 1344)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5055, file: !247, line: 1938, baseType: !5134, size: 64, offset: 1408)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!1362, !5137, !661, !48, !43, !7}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !317, line: 59, flags: DIFlagFwdDecl)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5055, file: !247, line: 1939, baseType: !5140, size: 64, offset: 1472)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!1362, !661, !48, !5137, !43, !7}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5055, file: !247, line: 1940, baseType: !2093, size: 64, offset: 1536)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5055, file: !247, line: 1941, baseType: !5145, size: 64, offset: 1600)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!30, !661, !30, !5148, !1959}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5055, file: !247, line: 1942, baseType: !5150, size: 64, offset: 1664)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!1065, !661, !30, !49, !49}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5055, file: !247, line: 1944, baseType: !5154, size: 64, offset: 1728)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{null, !2205, !661}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5055, file: !247, line: 1948, baseType: !5158, size: 64, offset: 1792)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!1362, !661, !49, !661, !49, !43, !7}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5055, file: !247, line: 1950, baseType: !5162, size: 64, offset: 1856)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!49, !661, !49, !661, !49, !49, !7}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5055, file: !247, line: 1953, baseType: !5114, size: 64, offset: 1920)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5055, file: !247, line: 1954, baseType: !5167, size: 64, offset: 1984)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!30, !5170, !7}
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !247, line: 1911, flags: DIFlagFwdDecl)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5055, file: !247, line: 1955, baseType: !5173, size: 64, offset: 2048)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!30, !5170, !4520, !7}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5050, file: !247, line: 723, baseType: !4134, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1211, file: !247, line: 725, baseType: !5178, size: 64, offset: 2816)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !247, line: 725, flags: DIFlagFwdDecl)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1211, file: !247, line: 726, baseType: !1562, size: 1536, align: 64, offset: 2880)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1211, file: !247, line: 727, baseType: !105, size: 128, offset: 4416)
!5182 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !247, line: 728, baseType: !5183, size: 64, offset: 4544)
!5183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !247, line: 728, size: 64, elements: !5184)
!5184 = !{!5185, !5186, !5189, !5190}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5183, file: !247, line: 729, baseType: !5137, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5183, file: !247, line: 730, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !247, line: 730, flags: DIFlagFwdDecl)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5183, file: !247, line: 731, baseType: !928, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5183, file: !247, line: 732, baseType: !7, size: 32)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1211, file: !247, line: 735, baseType: !327, size: 32, offset: 4608)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1211, file: !247, line: 738, baseType: !327, size: 32, offset: 4640)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1211, file: !247, line: 739, baseType: !4892, size: 64, offset: 4672)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1211, file: !247, line: 750, baseType: !28, size: 64, offset: 4736)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1176, file: !1177, line: 91, baseType: !5196, size: 256, offset: 448)
!5196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !4417)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1176, file: !1177, line: 94, baseType: !5198, size: 64, offset: 704)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5199, line: 25, size: 64, elements: !5200)
!5199 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5200 = !{!5201}
!5201 = !DIDerivedType(tag: DW_TAG_member, scope: !5198, file: !5199, line: 26, baseType: !5202, size: 64)
!5202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5198, file: !5199, line: 26, size: 64, elements: !5203)
!5203 = !{!5204, !5205}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5202, file: !5199, line: 28, baseType: !385, size: 64, align: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, scope: !5202, file: !5199, line: 30, baseType: !5206, size: 64)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5202, file: !5199, line: 30, size: 64, elements: !5207)
!5207 = !{!5208, !5209}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5206, file: !5199, line: 31, baseType: !67, size: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5206, file: !5199, line: 32, baseType: !30, size: 32, offset: 32)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1176, file: !1177, line: 95, baseType: !4908, size: 64, offset: 768)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1176, file: !1177, line: 96, baseType: !1411, size: 64, offset: 832)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1176, file: !1177, line: 97, baseType: !47, size: 64, offset: 896)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1176, file: !1177, line: 98, baseType: !28, size: 64, offset: 960)
!5214 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1177, line: 100, baseType: !5215, size: 128, offset: 1024)
!5215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1177, line: 100, size: 128, elements: !5216)
!5216 = !{!5217, !5218}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5215, file: !1177, line: 101, baseType: !105, size: 128)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5215, file: !1177, line: 102, baseType: !2283, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1176, file: !1177, line: 104, baseType: !105, size: 128, offset: 1152)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1176, file: !1177, line: 105, baseType: !105, size: 128, offset: 1280)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1176, file: !1177, line: 113, baseType: !5222, size: 128, offset: 1408)
!5222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1177, line: 109, size: 128, elements: !5223)
!5223 = !{!5224, !5225, !5226}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5222, file: !1177, line: 110, baseType: !310, size: 128)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5222, file: !1177, line: 111, baseType: !1186, size: 128)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5222, file: !1177, line: 112, baseType: !669, size: 128, align: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1171, file: !1172, line: 72, baseType: !1411, size: 64, offset: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1171, file: !1172, line: 73, baseType: !30, size: 32, offset: 128)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1171, file: !1172, line: 74, baseType: !1249, size: 64, offset: 192)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1166, file: !1167, line: 10, baseType: !1175, size: 64, offset: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !662, file: !247, line: 1015, baseType: !1210, size: 64, offset: 1344)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !662, file: !247, line: 1016, baseType: !5053, size: 64, offset: 1408)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !662, file: !247, line: 1018, baseType: !384, size: 64, offset: 1472)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !662, file: !247, line: 1020, baseType: !28, size: 64, offset: 1536)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !662, file: !247, line: 1023, baseType: !28, size: 64, offset: 1600)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !662, file: !247, line: 1027, baseType: !2833, size: 64, offset: 1664)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !662, file: !247, line: 1029, baseType: !1561, size: 64, offset: 1728)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !662, file: !247, line: 1030, baseType: !2103, size: 32, offset: 1792)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !662, file: !247, line: 1031, baseType: !2103, size: 32, offset: 1824)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !637, file: !139, line: 756, baseType: !47, size: 64, offset: 704)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !637, file: !139, line: 757, baseType: !47, size: 64, offset: 768)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !637, file: !139, line: 760, baseType: !47, size: 64, offset: 832)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !637, file: !139, line: 761, baseType: !47, size: 64, offset: 896)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !637, file: !139, line: 763, baseType: !47, size: 64, offset: 960)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !637, file: !139, line: 764, baseType: !5246, size: 64, offset: 1024)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1706, line: 299, baseType: !5248)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1706, line: 299, size: 64, elements: !5249)
!5249 = !{!5250}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5248, file: !1706, line: 299, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1711, line: 18, baseType: !47)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !637, file: !139, line: 773, baseType: !57, size: 32, offset: 1088)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !637, file: !139, line: 785, baseType: !57, size: 32, offset: 1120)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !637, file: !139, line: 795, baseType: !5255, size: 64, offset: 1152)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !139, line: 726, size: 128, elements: !5257)
!5257 = !{!5258, !5259}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5256, file: !139, line: 727, baseType: !384, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5256, file: !139, line: 728, baseType: !30, size: 32, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !637, file: !139, line: 801, baseType: !47, size: 64, offset: 1216)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !637, file: !139, line: 804, baseType: !682, size: 64, offset: 1280)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !637, file: !139, line: 806, baseType: !30, size: 32, offset: 1344)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !637, file: !139, line: 808, baseType: !67, size: 32, offset: 1376)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !637, file: !139, line: 823, baseType: !860, size: 320, offset: 1408)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !637, file: !139, line: 825, baseType: !105, size: 128, offset: 1728)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !637, file: !139, line: 845, baseType: !30, size: 32, offset: 1856)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !637, file: !139, line: 849, baseType: !47, size: 64, offset: 1920)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !637, file: !139, line: 850, baseType: !47, size: 64, offset: 1984)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !637, file: !139, line: 852, baseType: !47, size: 64, offset: 2048)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !637, file: !139, line: 853, baseType: !47, size: 64, offset: 2112)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !637, file: !139, line: 854, baseType: !684, size: 64, offset: 2176)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !637, file: !139, line: 855, baseType: !47, size: 64, offset: 2240)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !637, file: !139, line: 856, baseType: !47, size: 64, offset: 2304)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !637, file: !139, line: 857, baseType: !47, size: 64, offset: 2368)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !637, file: !139, line: 858, baseType: !47, size: 64, offset: 2432)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !637, file: !139, line: 865, baseType: !507, size: 32, offset: 2496)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !637, file: !139, line: 867, baseType: !67, size: 32, offset: 2528)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !637, file: !139, line: 869, baseType: !47, size: 64, offset: 2560)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !637, file: !139, line: 869, baseType: !47, size: 64, offset: 2624)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !637, file: !139, line: 869, baseType: !47, size: 64, offset: 2688)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !637, file: !139, line: 869, baseType: !47, size: 64, offset: 2752)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !637, file: !139, line: 870, baseType: !47, size: 64, offset: 2816)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !637, file: !139, line: 870, baseType: !47, size: 64, offset: 2880)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !637, file: !139, line: 870, baseType: !47, size: 64, offset: 2944)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !637, file: !139, line: 871, baseType: !47, size: 64, offset: 3008)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !637, file: !139, line: 871, baseType: !47, size: 64, offset: 3072)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !637, file: !139, line: 871, baseType: !47, size: 64, offset: 3136)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !637, file: !139, line: 871, baseType: !47, size: 64, offset: 3200)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !637, file: !139, line: 873, baseType: !5290, size: 3328, offset: 3264)
!5290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !5291)
!5291 = !{!5292}
!5292 = !DISubrange(count: 52)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !637, file: !139, line: 875, baseType: !5294, size: 1280, offset: 6592)
!5294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 1280, elements: !740)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !637, file: !139, line: 877, baseType: !5296, size: 64, offset: 7872)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !139, line: 877, flags: DIFlagFwdDecl)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !637, file: !139, line: 880, baseType: !5299, size: 1088, offset: 7936)
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5300, line: 72, baseType: !5301)
!5300 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5300, line: 23, size: 1088, elements: !5302)
!5302 = !{!5303, !5304, !5305, !5306, !5307, !5310, !5311, !5312, !5313, !5338, !5339, !5340}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5301, file: !5300, line: 28, baseType: !384, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5301, file: !5300, line: 38, baseType: !684, size: 64, offset: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5301, file: !5300, line: 40, baseType: !47, size: 64, offset: 128)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5301, file: !5300, line: 43, baseType: !860, size: 320, offset: 192)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5301, file: !5300, line: 44, baseType: !5308, size: 64, offset: 512)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5300, line: 44, flags: DIFlagFwdDecl)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5301, file: !5300, line: 48, baseType: !47, size: 64, offset: 576)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5301, file: !5300, line: 59, baseType: !689, size: 256, offset: 640)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5301, file: !5300, line: 60, baseType: !28, size: 64, offset: 896)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5301, file: !5300, line: 61, baseType: !5314, size: 64, offset: 960)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5316)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5317, line: 13, size: 1216, elements: !5318)
!5317 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5318 = !{!5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5316, file: !5317, line: 14, baseType: !28, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5316, file: !5317, line: 15, baseType: !47, size: 64, offset: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5316, file: !5317, line: 17, baseType: !47, size: 64, offset: 128)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5316, file: !5317, line: 17, baseType: !47, size: 64, offset: 192)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5316, file: !5317, line: 18, baseType: !47, size: 64, offset: 256)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5316, file: !5317, line: 18, baseType: !47, size: 64, offset: 320)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5316, file: !5317, line: 19, baseType: !2142, size: 64, offset: 384)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5316, file: !5317, line: 21, baseType: !1065, size: 64, offset: 448)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5316, file: !5317, line: 23, baseType: !1065, size: 64, offset: 512)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5316, file: !5317, line: 24, baseType: !1065, size: 64, offset: 576)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5316, file: !5317, line: 25, baseType: !1065, size: 64, offset: 640)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5316, file: !5317, line: 26, baseType: !1065, size: 64, offset: 704)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5316, file: !5317, line: 27, baseType: !1065, size: 64, offset: 768)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5316, file: !5317, line: 28, baseType: !1065, size: 64, offset: 832)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5316, file: !5317, line: 29, baseType: !1065, size: 64, offset: 896)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5316, file: !5317, line: 30, baseType: !1065, size: 64, offset: 960)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5316, file: !5317, line: 31, baseType: !1065, size: 64, offset: 1024)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5316, file: !5317, line: 32, baseType: !1065, size: 64, offset: 1088)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5316, file: !5317, line: 33, baseType: !1065, size: 64, offset: 1152)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5301, file: !5300, line: 63, baseType: !57, size: 32, offset: 1024)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5301, file: !5300, line: 69, baseType: !101, size: 16, offset: 1056)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5301, file: !5300, line: 70, baseType: !2461, size: 16, offset: 1072)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !139, line: 882, baseType: !47, size: 64, offset: 9024)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !637, file: !139, line: 885, baseType: !67, size: 32, offset: 9088)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !637, file: !139, line: 886, baseType: !5344, size: 64, offset: 9152)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !139, line: 732, flags: DIFlagFwdDecl)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !637, file: !139, line: 901, baseType: !782, size: 64, offset: 9216)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !637, file: !139, line: 904, baseType: !661, size: 64, offset: 9280)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !637, file: !139, line: 906, baseType: !5349, size: 64, offset: 9344)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !139, line: 906, flags: DIFlagFwdDecl)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !637, file: !139, line: 930, baseType: !57, size: 32, offset: 9408)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !637, file: !139, line: 933, baseType: !57, size: 32, offset: 9440)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !637, file: !139, line: 935, baseType: !5354, size: 64, offset: 9472)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !279, line: 103, size: 64, elements: !5355)
!5355 = !{!5356}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5354, file: !279, line: 104, baseType: !5357, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !279, line: 101, flags: DIFlagFwdDecl)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !637, file: !139, line: 940, baseType: !682, size: 64, offset: 9536)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !637, file: !139, line: 942, baseType: !967, size: 256, offset: 9600)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !634, file: !139, line: 986, baseType: !5362, offset: 10240)
!5362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !1072)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !316, file: !317, line: 882, baseType: !633, size: 64, offset: 9792)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !316, file: !317, line: 884, baseType: !30, size: 32, offset: 9856)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !316, file: !317, line: 885, baseType: !30, size: 32, offset: 9888)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !316, file: !317, line: 886, baseType: !30, size: 32, offset: 9920)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !316, file: !317, line: 888, baseType: !30, size: 32, offset: 9952)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !316, file: !317, line: 890, baseType: !47, size: 64, offset: 9984)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !316, file: !317, line: 893, baseType: !7, size: 32, offset: 10048)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !316, file: !317, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !316, file: !317, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !316, file: !317, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !316, file: !317, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !316, file: !317, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !316, file: !317, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !316, file: !317, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !316, file: !317, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !316, file: !317, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !316, file: !317, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !316, file: !317, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !316, file: !317, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !316, file: !317, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !316, file: !317, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !316, file: !317, line: 969, baseType: !47, size: 64, offset: 10176)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !316, file: !317, line: 971, baseType: !5386, size: 448, offset: 10240)
!5386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !273, line: 25, size: 448, elements: !5387)
!5387 = !{!5388, !5389, !5394}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5386, file: !273, line: 26, baseType: !47, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5386, file: !273, line: 27, baseType: !5390, size: 64, offset: 64)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!1065, !5393}
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_member, scope: !5386, file: !273, line: 28, baseType: !5395, size: 320, offset: 128)
!5395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5386, file: !273, line: 28, size: 320, elements: !5396)
!5396 = !{!5397, !5407, !5432}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5395, file: !273, line: 37, baseType: !5398, size: 320)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5395, file: !273, line: 30, size: 320, elements: !5399)
!5399 = !{!5400, !5402, !5403, !5404, !5405, !5406}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5398, file: !273, line: 31, baseType: !5401, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5398, file: !273, line: 32, baseType: !326, size: 32, offset: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5398, file: !273, line: 33, baseType: !326, size: 32, offset: 96)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5398, file: !273, line: 34, baseType: !326, size: 32, offset: 128)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5398, file: !273, line: 35, baseType: !384, size: 64, offset: 192)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5398, file: !273, line: 36, baseType: !5401, size: 64, offset: 256)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5395, file: !273, line: 47, baseType: !5408, size: 192)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5395, file: !273, line: 39, size: 192, elements: !5409)
!5409 = !{!5410, !5411, !5412, !5431}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5408, file: !273, line: 40, baseType: !499, size: 32)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5408, file: !273, line: 41, baseType: !272, size: 32, offset: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, scope: !5408, file: !273, line: 42, baseType: !5413, size: 64, offset: 64)
!5413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5408, file: !273, line: 42, size: 64, elements: !5414)
!5414 = !{!5415, !5423}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5413, file: !273, line: 43, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5418, line: 7, size: 128, elements: !5419)
!5418 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5419 = !{!5420, !5422}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5417, file: !5418, line: 8, baseType: !5421, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !45, line: 93, baseType: !51)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5417, file: !5418, line: 9, baseType: !51, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5413, file: !273, line: 44, baseType: !5424, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5426, line: 7, size: 64, elements: !5427)
!5426 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5427 = !{!5428, !5430}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5425, file: !5426, line: 8, baseType: !5429, size: 32)
!5429 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5426, line: 5, baseType: !852)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5425, file: !5426, line: 9, baseType: !852, size: 32, offset: 32)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5408, file: !273, line: 46, baseType: !384, size: 64, offset: 128)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5395, file: !273, line: 55, baseType: !5433, size: 256)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5395, file: !273, line: 49, size: 256, elements: !5434)
!5434 = !{!5435, !5443, !5444, !5445, !5446}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5433, file: !273, line: 50, baseType: !5436, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5438, line: 36, size: 64, elements: !5439)
!5438 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5439 = !{!5440, !5441, !5442}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5437, file: !5438, line: 37, baseType: !30, size: 32)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5437, file: !5438, line: 38, baseType: !888, size: 16, offset: 32)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5437, file: !5438, line: 39, baseType: !888, size: 16, offset: 48)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5433, file: !273, line: 51, baseType: !30, size: 32, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5433, file: !273, line: 52, baseType: !30, size: 32, offset: 96)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5433, file: !273, line: 53, baseType: !47, size: 64, offset: 128)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5433, file: !273, line: 54, baseType: !47, size: 64, offset: 192)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !316, file: !317, line: 973, baseType: !5448, size: 32, offset: 10688)
!5448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !33, line: 27, baseType: !5449)
!5449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !45, line: 28, baseType: !30)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !316, file: !317, line: 974, baseType: !5448, size: 32, offset: 10720)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !316, file: !317, line: 978, baseType: !47, size: 64, offset: 10752)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !316, file: !317, line: 987, baseType: !315, size: 64, offset: 10816)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !316, file: !317, line: 990, baseType: !315, size: 64, offset: 10880)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !316, file: !317, line: 995, baseType: !105, size: 128, offset: 10944)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !316, file: !317, line: 996, baseType: !105, size: 128, offset: 11072)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !316, file: !317, line: 997, baseType: !315, size: 64, offset: 11200)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !316, file: !317, line: 1005, baseType: !105, size: 128, offset: 11264)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !316, file: !317, line: 1006, baseType: !105, size: 128, offset: 11392)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !316, file: !317, line: 1009, baseType: !729, size: 64, offset: 11520)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !316, file: !317, line: 1010, baseType: !5461, size: 512, offset: 11584)
!5461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 512, elements: !740)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !316, file: !317, line: 1011, baseType: !105, size: 128, offset: 12096)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !316, file: !317, line: 1012, baseType: !105, size: 128, offset: 12224)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !316, file: !317, line: 1014, baseType: !1005, size: 64, offset: 12352)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !316, file: !317, line: 1017, baseType: !2454, size: 64, offset: 12416)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !316, file: !317, line: 1020, baseType: !2454, size: 64, offset: 12480)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !316, file: !317, line: 1023, baseType: !28, size: 64, offset: 12544)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !316, file: !317, line: 1025, baseType: !384, size: 64, offset: 12608)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !316, file: !317, line: 1026, baseType: !384, size: 64, offset: 12672)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !316, file: !317, line: 1031, baseType: !384, size: 64, offset: 12736)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !316, file: !317, line: 1032, baseType: !3909, size: 192, offset: 12800)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !316, file: !317, line: 1041, baseType: !47, size: 64, offset: 12992)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !316, file: !317, line: 1042, baseType: !47, size: 64, offset: 13056)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !316, file: !317, line: 1045, baseType: !384, size: 64, offset: 13120)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !316, file: !317, line: 1048, baseType: !384, size: 64, offset: 13184)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !316, file: !317, line: 1051, baseType: !47, size: 64, offset: 13248)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !316, file: !317, line: 1052, baseType: !47, size: 64, offset: 13312)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !316, file: !317, line: 1055, baseType: !5479, size: 640, offset: 13376)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5480, line: 132, size: 640, elements: !5481)
!5480 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5481 = !{!5482, !5488, !5489}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5479, file: !5480, line: 133, baseType: !5483, size: 576)
!5483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5484, size: 576, elements: !725)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5480, line: 117, size: 192, elements: !5485)
!5485 = !{!5486, !5487}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5484, file: !5480, line: 118, baseType: !384, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5484, file: !5480, line: 119, baseType: !513, size: 128, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5479, file: !5480, line: 134, baseType: !7, size: 32, offset: 576)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5479, file: !5480, line: 135, baseType: !7, size: 32, offset: 608)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !316, file: !317, line: 1058, baseType: !5491, size: 448, offset: 14016)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5480, line: 144, size: 448, elements: !5492)
!5492 = !{!5493, !5494, !5495}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5491, file: !5480, line: 145, baseType: !669, size: 128, align: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5491, file: !5480, line: 146, baseType: !689, size: 256, offset: 128)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5491, file: !5480, line: 147, baseType: !7, size: 32, offset: 384)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !316, file: !317, line: 1064, baseType: !1079, size: 64, offset: 14464)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !316, file: !317, line: 1067, baseType: !1079, size: 64, offset: 14528)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !316, file: !317, line: 1070, baseType: !1079, size: 64, offset: 14592)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !316, file: !317, line: 1074, baseType: !844, size: 64, offset: 14656)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !316, file: !317, line: 1084, baseType: !5501, size: 128, offset: 14720)
!5501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !4902)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !316, file: !317, line: 1086, baseType: !5503, size: 64, offset: 14848)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !317, line: 55, flags: DIFlagFwdDecl)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !316, file: !317, line: 1089, baseType: !5506, size: 64, offset: 14912)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5507, line: 12, size: 64, elements: !5508)
!5507 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5508 = !{!5509}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5506, file: !5507, line: 13, baseType: !5510, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5507, line: 8, flags: DIFlagFwdDecl)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !316, file: !317, line: 1090, baseType: !5513, size: 128, offset: 14976)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5514, line: 13, size: 128, elements: !5515)
!5514 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5515 = !{!5516}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5513, file: !5514, line: 14, baseType: !105, size: 128)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !316, file: !317, line: 1097, baseType: !5518, size: 64, offset: 15104)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !317, line: 50, flags: DIFlagFwdDecl)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !316, file: !317, line: 1100, baseType: !5521, size: 64, offset: 15168)
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !317, line: 1100, flags: DIFlagFwdDecl)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !316, file: !317, line: 1103, baseType: !5524, size: 64, offset: 15232)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !317, line: 53, flags: DIFlagFwdDecl)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !316, file: !317, line: 1107, baseType: !5527, size: 64, offset: 15296)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5529, line: 31, size: 576, elements: !5530)
!5529 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5530 = !{!5531, !5532, !5535, !5538, !5541, !5542, !5545, !5548, !5549}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5528, file: !5529, line: 32, baseType: !332, size: 32)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5528, file: !5529, line: 33, baseType: !5533, size: 64, offset: 64)
!5533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5534, size: 64)
!5534 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5529, line: 9, flags: DIFlagFwdDecl)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5528, file: !5529, line: 34, baseType: !5536, size: 64, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5529, line: 10, flags: DIFlagFwdDecl)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5528, file: !5529, line: 35, baseType: !5539, size: 64, offset: 192)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5529, line: 8, flags: DIFlagFwdDecl)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5528, file: !5529, line: 36, baseType: !751, size: 64, offset: 256)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5528, file: !5529, line: 37, baseType: !5543, size: 64, offset: 320)
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !846, line: 34, flags: DIFlagFwdDecl)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5528, file: !5529, line: 38, baseType: !5546, size: 64, offset: 384)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5529, line: 38, flags: DIFlagFwdDecl)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5528, file: !5529, line: 39, baseType: !5546, size: 64, offset: 448)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5528, file: !5529, line: 40, baseType: !5550, size: 64, offset: 512)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5552, line: 771, size: 384, elements: !5553)
!5552 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5553 = !{!5554, !5555, !5556, !5557}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5551, file: !5552, line: 772, baseType: !828, size: 192)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5551, file: !5552, line: 773, baseType: !782, size: 64, offset: 192)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5551, file: !5552, line: 774, baseType: !1050, size: 64, offset: 256)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5551, file: !5552, line: 775, baseType: !3979, size: 64, offset: 320)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !316, file: !317, line: 1110, baseType: !5559, size: 64, offset: 15360)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5561, line: 93, size: 8768, elements: !5562)
!5561 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5562 = !{!5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5611, !5620, !5621, !5623, !5624, !5625, !5628, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5666, !5667, !5674, !5684, !5746, !5747, !5750, !5751, !5752, !5753, !5754, !5755}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5560, file: !5561, line: 94, baseType: !332, size: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5560, file: !5561, line: 95, baseType: !57, size: 32, offset: 32)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5560, file: !5561, line: 96, baseType: !30, size: 32, offset: 64)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5560, file: !5561, line: 97, baseType: !30, size: 32, offset: 96)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5560, file: !5561, line: 98, baseType: !105, size: 128, offset: 128)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5560, file: !5561, line: 100, baseType: !62, size: 192, offset: 256)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5560, file: !5561, line: 103, baseType: !315, size: 64, offset: 448)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5560, file: !5561, line: 106, baseType: !5571, size: 192, offset: 512)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5572, line: 32, size: 192, elements: !5573)
!5572 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5573 = !{!5574, !5575}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5571, file: !5572, line: 33, baseType: !105, size: 128)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5571, file: !5572, line: 34, baseType: !5576, size: 64, offset: 128)
!5576 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5577, line: 25, baseType: !5578)
!5577 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5577, line: 23, size: 64, elements: !5579)
!5579 = !{!5580}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5578, file: !5577, line: 24, baseType: !584, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5560, file: !5561, line: 109, baseType: !737, size: 64, offset: 704)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5560, file: !5561, line: 112, baseType: !30, size: 32, offset: 768)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5560, file: !5561, line: 114, baseType: !30, size: 32, offset: 800)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5560, file: !5561, line: 115, baseType: !315, size: 64, offset: 832)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5560, file: !5561, line: 118, baseType: !30, size: 32, offset: 896)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5560, file: !5561, line: 119, baseType: !7, size: 32, offset: 928)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5560, file: !5561, line: 121, baseType: !5588, size: 64, offset: 960)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5561, line: 80, size: 448, elements: !5590)
!5590 = !{!5591, !5592, !5598}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5589, file: !5561, line: 81, baseType: !57, size: 32)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5589, file: !5561, line: 82, baseType: !5593, size: 128, offset: 64)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5561, line: 75, size: 128, elements: !5594)
!5594 = !{!5595, !5596}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5593, file: !5561, line: 76, baseType: !315, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5593, file: !5561, line: 77, baseType: !5597, size: 64, offset: 64)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5589, file: !5561, line: 83, baseType: !1006, size: 256, offset: 192)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5560, file: !5561, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5560, file: !5561, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5560, file: !5561, line: 138, baseType: !7, size: 32, offset: 1056)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5560, file: !5561, line: 139, baseType: !105, size: 128, offset: 1088)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5560, file: !5561, line: 142, baseType: !451, size: 512, offset: 1216)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5560, file: !5561, line: 143, baseType: !459, size: 64, offset: 1728)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5560, file: !5561, line: 150, baseType: !5606, size: 256, offset: 1792)
!5606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5607, size: 256, elements: !2444)
!5607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5561, line: 38, size: 128, elements: !5608)
!5608 = !{!5609, !5610}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5607, file: !5561, line: 39, baseType: !384, size: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5607, file: !5561, line: 40, baseType: !384, size: 64, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5560, file: !5561, line: 156, baseType: !5612, size: 192, offset: 2048)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5561, line: 66, size: 192, elements: !5613)
!5613 = !{!5614}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5612, file: !5561, line: 67, baseType: !5615, size: 192)
!5615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5561, line: 47, size: 192, elements: !5616)
!5616 = !{!5617, !5618, !5619}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5615, file: !5561, line: 48, baseType: !684, size: 64)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5615, file: !5561, line: 49, baseType: !684, size: 64, offset: 64)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5615, file: !5561, line: 50, baseType: !684, size: 64, offset: 128)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5560, file: !5561, line: 160, baseType: !5479, size: 640, offset: 2240)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5560, file: !5561, line: 163, baseType: !5622, size: 256, offset: 2880)
!5622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !740)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5560, file: !5561, line: 169, baseType: !729, size: 64, offset: 3136)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5560, file: !5561, line: 172, baseType: !30, size: 32, offset: 3200)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5560, file: !5561, line: 174, baseType: !5626, size: 64, offset: 3264)
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 64)
!5627 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5561, line: 174, flags: DIFlagFwdDecl)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5560, file: !5561, line: 185, baseType: !5629, size: 64, offset: 3328)
!5629 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !503, line: 860, baseType: !5630)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 853, size: 64, elements: !5631)
!5631 = !{!5632, !5633}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5630, file: !503, line: 858, baseType: !1181, size: 32)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5630, file: !503, line: 859, baseType: !67, size: 32, offset: 32)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5560, file: !5561, line: 186, baseType: !384, size: 64, offset: 3392)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5560, file: !5561, line: 186, baseType: !384, size: 64, offset: 3456)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5560, file: !5561, line: 186, baseType: !384, size: 64, offset: 3520)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5560, file: !5561, line: 186, baseType: !384, size: 64, offset: 3584)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5560, file: !5561, line: 187, baseType: !384, size: 64, offset: 3648)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5560, file: !5561, line: 188, baseType: !384, size: 64, offset: 3712)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5560, file: !5561, line: 189, baseType: !3909, size: 192, offset: 3776)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5560, file: !5561, line: 190, baseType: !47, size: 64, offset: 3968)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5560, file: !5561, line: 190, baseType: !47, size: 64, offset: 4032)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5560, file: !5561, line: 190, baseType: !47, size: 64, offset: 4096)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5560, file: !5561, line: 190, baseType: !47, size: 64, offset: 4160)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5560, file: !5561, line: 191, baseType: !47, size: 64, offset: 4224)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5560, file: !5561, line: 191, baseType: !47, size: 64, offset: 4288)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5560, file: !5561, line: 191, baseType: !47, size: 64, offset: 4352)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5560, file: !5561, line: 191, baseType: !47, size: 64, offset: 4416)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5560, file: !5561, line: 192, baseType: !47, size: 64, offset: 4480)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5560, file: !5561, line: 192, baseType: !47, size: 64, offset: 4544)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5560, file: !5561, line: 192, baseType: !47, size: 64, offset: 4608)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5560, file: !5561, line: 192, baseType: !47, size: 64, offset: 4672)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5560, file: !5561, line: 193, baseType: !47, size: 64, offset: 4736)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5560, file: !5561, line: 193, baseType: !47, size: 64, offset: 4800)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5560, file: !5561, line: 194, baseType: !5656, size: 448, offset: 4864)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5657, line: 12, size: 448, elements: !5658)
!5657 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5658 = !{!5659, !5660, !5661, !5662, !5663, !5664, !5665}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5656, file: !5657, line: 15, baseType: !384, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5656, file: !5657, line: 17, baseType: !384, size: 64, offset: 64)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5656, file: !5657, line: 19, baseType: !384, size: 64, offset: 128)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5656, file: !5657, line: 21, baseType: !384, size: 64, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5656, file: !5657, line: 29, baseType: !384, size: 64, offset: 256)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5656, file: !5657, line: 35, baseType: !384, size: 64, offset: 320)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5656, file: !5657, line: 44, baseType: !384, size: 64, offset: 384)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5560, file: !5561, line: 202, baseType: !386, size: 64, offset: 5312)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5560, file: !5561, line: 213, baseType: !5668, size: 2048, offset: 5376)
!5668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5669, size: 2048, elements: !4902)
!5669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5670, line: 43, size: 128, elements: !5671)
!5670 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5671 = !{!5672, !5673}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5669, file: !5670, line: 44, baseType: !46, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5669, file: !5670, line: 45, baseType: !46, size: 64, offset: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5560, file: !5561, line: 216, baseType: !5675, size: 448, offset: 7424)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5561, line: 30, size: 448, elements: !5676)
!5676 = !{!5677, !5678, !5679, !5680, !5681, !5682, !5683}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5675, file: !5561, line: 31, baseType: !30, size: 32)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5675, file: !5561, line: 32, baseType: !1065, size: 64, offset: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5675, file: !5561, line: 33, baseType: !47, size: 64, offset: 128)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5675, file: !5561, line: 34, baseType: !384, size: 64, offset: 192)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5675, file: !5561, line: 34, baseType: !384, size: 64, offset: 256)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5675, file: !5561, line: 35, baseType: !47, size: 64, offset: 320)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5675, file: !5561, line: 35, baseType: !47, size: 64, offset: 384)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5560, file: !5561, line: 219, baseType: !5685, size: 64, offset: 7872)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5687, line: 41, size: 3456, elements: !5688)
!5687 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5688 = !{!5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5686, file: !5687, line: 47, baseType: !102, size: 16)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5686, file: !5687, line: 48, baseType: !327, size: 32, offset: 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5686, file: !5687, line: 54, baseType: !93, size: 8, offset: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5686, file: !5687, line: 55, baseType: !93, size: 8, offset: 72)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5686, file: !5687, line: 73, baseType: !385, size: 64, align: 64, offset: 128)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5686, file: !5687, line: 74, baseType: !385, size: 64, offset: 192)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5686, file: !5687, line: 81, baseType: !385, size: 64, offset: 256)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5686, file: !5687, line: 82, baseType: !385, size: 64, offset: 320)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5686, file: !5687, line: 85, baseType: !385, size: 64, offset: 384)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5686, file: !5687, line: 86, baseType: !385, size: 64, offset: 448)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5686, file: !5687, line: 94, baseType: !385, size: 64, offset: 512)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5686, file: !5687, line: 102, baseType: !385, size: 64, offset: 576)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5686, file: !5687, line: 107, baseType: !4416, size: 256, offset: 640)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5686, file: !5687, line: 108, baseType: !93, size: 8, align: 64, offset: 896)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5686, file: !5687, line: 110, baseType: !5704, size: 24, offset: 904)
!5704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !725)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5686, file: !5687, line: 111, baseType: !327, size: 32, align: 64, offset: 960)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5686, file: !5687, line: 113, baseType: !327, size: 32, offset: 992)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5686, file: !5687, line: 114, baseType: !327, size: 32, offset: 1024)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5686, file: !5687, line: 115, baseType: !327, size: 32, offset: 1056)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5686, file: !5687, line: 117, baseType: !327, size: 32, offset: 1088)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5686, file: !5687, line: 118, baseType: !385, size: 64, align: 64, offset: 1152)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5686, file: !5687, line: 120, baseType: !385, size: 64, offset: 1216)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5686, file: !5687, line: 121, baseType: !385, size: 64, offset: 1280)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5686, file: !5687, line: 122, baseType: !385, size: 64, offset: 1344)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5686, file: !5687, line: 123, baseType: !385, size: 64, offset: 1408)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5686, file: !5687, line: 133, baseType: !385, size: 64, offset: 1472)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5686, file: !5687, line: 137, baseType: !385, size: 64, offset: 1536)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5686, file: !5687, line: 142, baseType: !385, size: 64, offset: 1600)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5686, file: !5687, line: 143, baseType: !385, size: 64, offset: 1664)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5686, file: !5687, line: 146, baseType: !385, size: 64, offset: 1728)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5686, file: !5687, line: 147, baseType: !385, size: 64, offset: 1792)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5686, file: !5687, line: 148, baseType: !385, size: 64, offset: 1856)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5686, file: !5687, line: 149, baseType: !385, size: 64, offset: 1920)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5686, file: !5687, line: 154, baseType: !385, size: 64, offset: 1984)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5686, file: !5687, line: 155, baseType: !385, size: 64, offset: 2048)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5686, file: !5687, line: 156, baseType: !385, size: 64, offset: 2112)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5686, file: !5687, line: 158, baseType: !385, size: 64, offset: 2176)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5686, file: !5687, line: 159, baseType: !385, size: 64, offset: 2240)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5686, file: !5687, line: 162, baseType: !385, size: 64, offset: 2304)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5686, file: !5687, line: 163, baseType: !385, size: 64, offset: 2368)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5686, file: !5687, line: 164, baseType: !385, size: 64, offset: 2432)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5686, file: !5687, line: 167, baseType: !385, size: 64, offset: 2496)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5686, file: !5687, line: 168, baseType: !385, size: 64, offset: 2560)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5686, file: !5687, line: 171, baseType: !385, size: 64, offset: 2624)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5686, file: !5687, line: 172, baseType: !385, size: 64, offset: 2688)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5686, file: !5687, line: 175, baseType: !385, size: 64, offset: 2752)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5686, file: !5687, line: 178, baseType: !385, size: 64, offset: 2816)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5686, file: !5687, line: 179, baseType: !385, size: 64, offset: 2880)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5686, file: !5687, line: 182, baseType: !327, size: 32, offset: 2944)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5686, file: !5687, line: 186, baseType: !385, size: 64, align: 64, offset: 3008)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5686, file: !5687, line: 194, baseType: !385, size: 64, offset: 3072)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5686, file: !5687, line: 195, baseType: !385, size: 64, offset: 3136)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5686, file: !5687, line: 199, baseType: !385, size: 64, offset: 3200)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5686, file: !5687, line: 200, baseType: !385, size: 64, offset: 3264)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5686, file: !5687, line: 203, baseType: !385, size: 64, offset: 3328)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5686, file: !5687, line: 204, baseType: !385, size: 64, offset: 3392)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5560, file: !5561, line: 222, baseType: !7, size: 32, offset: 7936)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5560, file: !5561, line: 223, baseType: !5748, size: 64, offset: 8000)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5561, line: 223, flags: DIFlagFwdDecl)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5560, file: !5561, line: 230, baseType: !840, size: 8, offset: 8064)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5560, file: !5561, line: 231, baseType: !888, size: 16, offset: 8080)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5560, file: !5561, line: 232, baseType: !888, size: 16, offset: 8096)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5560, file: !5561, line: 234, baseType: !633, size: 64, offset: 8128)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5560, file: !5561, line: 237, baseType: !689, size: 256, offset: 8192)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5560, file: !5561, line: 243, baseType: !860, size: 320, offset: 8448)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !316, file: !317, line: 1111, baseType: !5757, size: 64, offset: 15424)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5561, line: 20, size: 16640, elements: !5759)
!5759 = !{!5760, !5761, !5762, !5763}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5758, file: !5561, line: 21, baseType: !67, size: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5758, file: !5561, line: 22, baseType: !332, size: 32, offset: 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5758, file: !5561, line: 23, baseType: !62, size: 192, offset: 64)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5758, file: !5561, line: 24, baseType: !5764, size: 16384, offset: 256)
!5764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5765, size: 16384, elements: !1500)
!5765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5572, line: 51, size: 256, elements: !5766)
!5766 = !{!5767}
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5765, file: !5572, line: 52, baseType: !5768, size: 256)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5572, line: 37, size: 256, elements: !5769)
!5769 = !{!5770, !5777, !5778, !5782}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5768, file: !5572, line: 39, baseType: !5771, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5772, line: 83, baseType: !5773)
!5772 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5772, line: 82, baseType: !5775)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !30}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5768, file: !5572, line: 40, baseType: !47, size: 64, offset: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5768, file: !5572, line: 46, baseType: !5779, size: 64, offset: 128)
!5779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5772, line: 86, baseType: !5780)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5772, line: 85, baseType: !2730)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5768, file: !5572, line: 48, baseType: !5576, size: 64, offset: 192)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !316, file: !317, line: 1112, baseType: !5576, size: 64, offset: 15488)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !316, file: !317, line: 1113, baseType: !5576, size: 64, offset: 15552)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !316, file: !317, line: 1115, baseType: !5576, size: 64, offset: 15616)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !316, file: !317, line: 1116, baseType: !5571, size: 192, offset: 15680)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !316, file: !317, line: 1117, baseType: !47, size: 64, offset: 15872)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !316, file: !317, line: 1118, baseType: !43, size: 64, offset: 15936)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !316, file: !317, line: 1119, baseType: !7, size: 32, offset: 16000)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !316, file: !317, line: 1121, baseType: !672, size: 64, offset: 16064)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !316, file: !317, line: 1125, baseType: !5792, size: 64, offset: 16128)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !317, line: 43, flags: DIFlagFwdDecl)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !316, file: !317, line: 1127, baseType: !813, size: 32, offset: 16192)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !316, file: !317, line: 1128, baseType: !7, size: 32, offset: 16224)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !316, file: !317, line: 1130, baseType: !5797, size: 128, offset: 16256)
!5797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5798, line: 37, size: 128, elements: !5799)
!5798 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5799 = !{!5800, !5801, !5802}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5797, file: !5798, line: 38, baseType: !30, size: 32)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5797, file: !5798, line: 39, baseType: !57, size: 32, offset: 32)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5797, file: !5798, line: 40, baseType: !5803, size: 64, offset: 64)
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5798, line: 24, flags: DIFlagFwdDecl)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !316, file: !317, line: 1131, baseType: !5806, size: 256, offset: 16384)
!5806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5807, line: 12, size: 256, elements: !5808)
!5807 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5808 = !{!5809, !5810, !5811, !5812}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5806, file: !5807, line: 13, baseType: !928, size: 64)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5806, file: !5807, line: 14, baseType: !47, size: 64, offset: 64)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5806, file: !5807, line: 15, baseType: !47, size: 64, offset: 128)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5806, file: !5807, line: 16, baseType: !840, size: 8, offset: 192)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !316, file: !317, line: 1134, baseType: !384, size: 64, offset: 16640)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !316, file: !317, line: 1135, baseType: !384, size: 64, offset: 16704)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !316, file: !317, line: 1138, baseType: !67, size: 32, offset: 16768)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !316, file: !317, line: 1141, baseType: !476, size: 32, offset: 16800)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !316, file: !317, line: 1143, baseType: !5818, size: 64, offset: 16832)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !317, line: 735, size: 64, elements: !5819)
!5819 = !{!5820}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5818, file: !317, line: 736, baseType: !5821, size: 64)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5818, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !316, file: !317, line: 1147, baseType: !516, size: 128, offset: 16896)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !316, file: !317, line: 1149, baseType: !315, size: 64, offset: 17024)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !316, file: !317, line: 1151, baseType: !5825, size: 64, offset: 17088)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !317, line: 1151, flags: DIFlagFwdDecl)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !316, file: !317, line: 1188, baseType: !28, size: 64, offset: 17152)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !316, file: !317, line: 1191, baseType: !5829, size: 64, offset: 17216)
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !316, file: !317, line: 1194, baseType: !5831, size: 64, offset: 17280)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !258, line: 976, size: 320, elements: !5833)
!5833 = !{!5834, !5835, !5836, !5837, !5838, !5839, !5840}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !5832, file: !258, line: 977, baseType: !4524, size: 64)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !5832, file: !258, line: 980, baseType: !4524, size: 64, offset: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !5832, file: !258, line: 981, baseType: !34, size: 16, offset: 128)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !5832, file: !258, line: 983, baseType: !34, size: 16, offset: 144)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !5832, file: !258, line: 985, baseType: !840, size: 8, offset: 160)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !5832, file: !258, line: 986, baseType: !840, size: 8, offset: 168)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5832, file: !258, line: 988, baseType: !105, size: 128, offset: 192)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !316, file: !317, line: 1197, baseType: !5842, size: 64, offset: 17344)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !317, line: 61, flags: DIFlagFwdDecl)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !316, file: !317, line: 1199, baseType: !5845, size: 64, offset: 17408)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !775, line: 99, size: 128, elements: !5847)
!5847 = !{!5848, !5849, !5850}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5846, file: !775, line: 100, baseType: !682, size: 64)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5846, file: !775, line: 101, baseType: !57, size: 32, offset: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5846, file: !775, line: 103, baseType: !34, size: 16, offset: 96)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !316, file: !317, line: 1202, baseType: !5852, size: 64, offset: 17472)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !317, line: 48, flags: DIFlagFwdDecl)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !316, file: !317, line: 1205, baseType: !47, size: 64, offset: 17536)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !316, file: !317, line: 1206, baseType: !5856, size: 64, offset: 17600)
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5857, size: 64)
!5857 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5572, line: 14, baseType: !5858)
!5858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5572, line: 12, size: 384, elements: !5859)
!5859 = !{!5860}
!5860 = !DIDerivedType(tag: DW_TAG_member, scope: !5858, file: !5572, line: 13, baseType: !5861, size: 384)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5858, file: !5572, line: 13, size: 384, elements: !5862)
!5862 = !{!5863, !5864, !5865, !5866}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5861, file: !5572, line: 13, baseType: !30, size: 32)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5861, file: !5572, line: 13, baseType: !30, size: 32, offset: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5861, file: !5572, line: 13, baseType: !30, size: 32, offset: 64)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5861, file: !5572, line: 13, baseType: !5867, size: 256, offset: 128)
!5867 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5868, line: 37, size: 256, elements: !5869)
!5868 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5869 = !{!5870, !5875, !5888, !5894, !5903, !5930, !5935}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5867, file: !5868, line: 42, baseType: !5871, size: 64)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 39, size: 64, elements: !5872)
!5872 = !{!5873, !5874}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5871, file: !5868, line: 40, baseType: !5449, size: 32)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5871, file: !5868, line: 41, baseType: !819, size: 32, offset: 32)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5867, file: !5868, line: 50, baseType: !5876, size: 192)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 45, size: 192, elements: !5877)
!5877 = !{!5878, !5880, !5881, !5887}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5876, file: !5868, line: 46, baseType: !5879, size: 32)
!5879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !45, line: 95, baseType: !30)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5876, file: !5868, line: 47, baseType: !30, size: 32, offset: 32)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5876, file: !5868, line: 48, baseType: !5882, size: 64, offset: 64)
!5882 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5868, line: 11, baseType: !5883)
!5883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5868, line: 8, size: 64, elements: !5884)
!5884 = !{!5885, !5886}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5883, file: !5868, line: 9, baseType: !30, size: 32)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5883, file: !5868, line: 10, baseType: !28, size: 64)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5876, file: !5868, line: 49, baseType: !30, size: 32, offset: 128)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5867, file: !5868, line: 57, baseType: !5889, size: 128)
!5889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 53, size: 128, elements: !5890)
!5890 = !{!5891, !5892, !5893}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5889, file: !5868, line: 54, baseType: !5449, size: 32)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5889, file: !5868, line: 55, baseType: !819, size: 32, offset: 32)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5889, file: !5868, line: 56, baseType: !5882, size: 64, offset: 64)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5867, file: !5868, line: 66, baseType: !5895, size: 256)
!5895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 60, size: 256, elements: !5896)
!5896 = !{!5897, !5898, !5899, !5900, !5902}
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5895, file: !5868, line: 61, baseType: !5449, size: 32)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5895, file: !5868, line: 62, baseType: !819, size: 32, offset: 32)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5895, file: !5868, line: 63, baseType: !30, size: 32, offset: 64)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5895, file: !5868, line: 64, baseType: !5901, size: 64, offset: 128)
!5901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !45, line: 94, baseType: !1364)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5895, file: !5868, line: 65, baseType: !5901, size: 64, offset: 192)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5867, file: !5868, line: 105, baseType: !5904, size: 256)
!5904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 69, size: 256, elements: !5905)
!5905 = !{!5906, !5907}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5904, file: !5868, line: 70, baseType: !28, size: 64)
!5907 = !DIDerivedType(tag: DW_TAG_member, scope: !5904, file: !5868, line: 79, baseType: !5908, size: 192, offset: 64)
!5908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5904, file: !5868, line: 79, size: 192, elements: !5909)
!5909 = !{!5910, !5911, !5912, !5919, !5924}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5908, file: !5868, line: 81, baseType: !30, size: 32)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5908, file: !5868, line: 86, baseType: !888, size: 16)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5908, file: !5868, line: 92, baseType: !5913, size: 192)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5908, file: !5868, line: 88, size: 192, elements: !5914)
!5914 = !{!5915, !5917, !5918}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5913, file: !5868, line: 89, baseType: !5916, size: 64)
!5916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !495)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5913, file: !5868, line: 90, baseType: !28, size: 64, offset: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5913, file: !5868, line: 91, baseType: !28, size: 64, offset: 128)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5908, file: !5868, line: 97, baseType: !5920, size: 96)
!5920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5908, file: !5868, line: 94, size: 96, elements: !5921)
!5921 = !{!5922, !5923}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5920, file: !5868, line: 95, baseType: !5916, size: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5920, file: !5868, line: 96, baseType: !327, size: 32, offset: 64)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5908, file: !5868, line: 103, baseType: !5925, size: 128)
!5925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5908, file: !5868, line: 99, size: 128, elements: !5926)
!5926 = !{!5927, !5928, !5929}
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5925, file: !5868, line: 100, baseType: !47, size: 64)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5925, file: !5868, line: 101, baseType: !327, size: 32, offset: 64)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5925, file: !5868, line: 102, baseType: !327, size: 32, offset: 96)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5867, file: !5868, line: 111, baseType: !5931, size: 128)
!5931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 108, size: 128, elements: !5932)
!5932 = !{!5933, !5934}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5931, file: !5868, line: 109, baseType: !1065, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5931, file: !5868, line: 110, baseType: !30, size: 32, offset: 64)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5867, file: !5868, line: 118, baseType: !5936, size: 128)
!5936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5867, file: !5868, line: 114, size: 128, elements: !5937)
!5937 = !{!5938, !5939, !5940}
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5936, file: !5868, line: 115, baseType: !28, size: 64)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5936, file: !5868, line: 116, baseType: !30, size: 32, offset: 64)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5936, file: !5868, line: 117, baseType: !7, size: 32, offset: 96)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !316, file: !317, line: 1208, baseType: !5656, size: 448, offset: 17664)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !316, file: !317, line: 1215, baseType: !384, size: 64, offset: 18112)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !316, file: !317, line: 1217, baseType: !384, size: 64, offset: 18176)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !316, file: !317, line: 1219, baseType: !384, size: 64, offset: 18240)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !316, file: !317, line: 1223, baseType: !5946, size: 64, offset: 18304)
!5946 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5947, line: 99, baseType: !5948)
!5947 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5947, line: 99, size: 64, elements: !5949)
!5949 = !{!5950}
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5948, file: !5947, line: 99, baseType: !584, size: 64)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !316, file: !317, line: 1225, baseType: !1181, size: 32, offset: 18368)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !316, file: !317, line: 1226, baseType: !30, size: 32, offset: 18400)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !316, file: !317, line: 1227, baseType: !30, size: 32, offset: 18432)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !316, file: !317, line: 1231, baseType: !3979, size: 64, offset: 18496)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !316, file: !317, line: 1233, baseType: !105, size: 128, offset: 18560)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !316, file: !317, line: 1240, baseType: !5957, size: 64, offset: 18688)
!5957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5958, size: 64)
!5958 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !317, line: 62, flags: DIFlagFwdDecl)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !316, file: !317, line: 1242, baseType: !5960, size: 64, offset: 18752)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !317, line: 1242, flags: DIFlagFwdDecl)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !316, file: !317, line: 1244, baseType: !105, size: 128, offset: 18816)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !316, file: !317, line: 1245, baseType: !5964, size: 64, offset: 18944)
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !317, line: 51, flags: DIFlagFwdDecl)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !316, file: !317, line: 1246, baseType: !689, size: 256, offset: 19008)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !316, file: !317, line: 1247, baseType: !7, size: 32, offset: 19264)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !316, file: !317, line: 1250, baseType: !3229, size: 64, offset: 19328)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !316, file: !317, line: 1251, baseType: !689, size: 256, offset: 19392)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !316, file: !317, line: 1252, baseType: !105, size: 128, offset: 19648)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !316, file: !317, line: 1259, baseType: !1784, size: 64, offset: 19776)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !316, file: !317, line: 1260, baseType: !888, size: 16, offset: 19840)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !316, file: !317, line: 1261, baseType: !888, size: 16, offset: 19856)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !316, file: !317, line: 1314, baseType: !5975, size: 64, offset: 19904)
!5975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5976, size: 64)
!5976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5977, line: 62, size: 256, align: 256, elements: !5978)
!5977 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5978 = !{!5979, !5980, !5981, !5982, !5983, !5984, !5985}
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5976, file: !5977, line: 75, baseType: !327, size: 32)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5976, file: !5977, line: 90, baseType: !327, size: 32, offset: 32)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5976, file: !5977, line: 112, baseType: !385, size: 64, offset: 64)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5976, file: !5977, line: 132, baseType: !327, size: 32, offset: 128)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5976, file: !5977, line: 140, baseType: !327, size: 32, offset: 160)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5976, file: !5977, line: 149, baseType: !327, size: 32, offset: 192)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5976, file: !5977, line: 154, baseType: !5986, offset: 224)
!5986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !1072)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !316, file: !317, line: 1315, baseType: !326, size: 32, offset: 19968)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !316, file: !317, line: 1316, baseType: !326, size: 32, offset: 20000)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !316, file: !317, line: 1321, baseType: !47, size: 64, offset: 20032)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !316, file: !317, line: 1325, baseType: !30, size: 32, offset: 20096)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !316, file: !317, line: 1326, baseType: !30, size: 32, offset: 20128)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !316, file: !317, line: 1327, baseType: !30, size: 32, offset: 20160)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !316, file: !317, line: 1328, baseType: !30, size: 32, offset: 20192)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !316, file: !317, line: 1329, baseType: !669, size: 128, align: 64, offset: 20224)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !316, file: !317, line: 1332, baseType: !5996, size: 128, offset: 20352)
!5996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5997, line: 51, size: 128, elements: !5998)
!5997 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5998 = !{!5999, !6004, !6005}
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5996, file: !5997, line: 60, baseType: !6000, size: 64)
!6000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !6001, line: 7, size: 64, elements: !6002)
!6001 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!6002 = !{!6003}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !6000, file: !6001, line: 12, baseType: !581, size: 64)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5996, file: !5997, line: 63, baseType: !840, size: 8, offset: 64)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5996, file: !5997, line: 70, baseType: !840, size: 8, offset: 72)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !316, file: !317, line: 1335, baseType: !5137, size: 64, offset: 20480)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !316, file: !317, line: 1337, baseType: !6008, size: 128, offset: 20544)
!6008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5997, line: 39, size: 128, elements: !6009)
!6009 = !{!6010, !6011, !6012}
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !6008, file: !5997, line: 40, baseType: !1581, size: 64)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6008, file: !5997, line: 42, baseType: !327, size: 32, offset: 64)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6008, file: !5997, line: 43, baseType: !327, size: 32, offset: 96)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !316, file: !317, line: 1340, baseType: !6014, size: 64, offset: 20672)
!6014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6015, size: 64)
!6015 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !317, line: 69, flags: DIFlagFwdDecl)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !316, file: !317, line: 1351, baseType: !30, size: 32, offset: 20736)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !316, file: !317, line: 1352, baseType: !30, size: 32, offset: 20768)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !316, file: !317, line: 1354, baseType: !47, size: 64, offset: 20800)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !316, file: !317, line: 1364, baseType: !384, size: 64, offset: 20864)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !316, file: !317, line: 1365, baseType: !384, size: 64, offset: 20928)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !316, file: !317, line: 1412, baseType: !47, size: 64, offset: 20992)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !316, file: !317, line: 1453, baseType: !4409, size: 64, offset: 21056)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !316, file: !317, line: 1457, baseType: !6024, size: 64, offset: 21120)
!6024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6025, size: 64)
!6025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !279, line: 61, size: 576, elements: !6026)
!6026 = !{!6027, !6028, !6047, !6050, !6051, !6084, !6094}
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6025, file: !279, line: 62, baseType: !278, size: 32)
!6028 = !DIDerivedType(tag: DW_TAG_member, scope: !6025, file: !279, line: 64, baseType: !6029, size: 192, offset: 64)
!6029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6025, file: !279, line: 64, size: 192, elements: !6030)
!6030 = !{!6031, !6042}
!6031 = !DIDerivedType(tag: DW_TAG_member, scope: !6029, file: !279, line: 65, baseType: !6032, size: 192)
!6032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6029, file: !279, line: 65, size: 192, elements: !6033)
!6033 = !{!6034, !6041}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !6032, file: !279, line: 66, baseType: !6035, size: 128)
!6035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !6036, line: 50, size: 128, elements: !6037)
!6036 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!6037 = !{!6038, !6039, !6040}
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !6035, file: !6036, line: 52, baseType: !47, size: 64)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !6035, file: !6036, line: 54, baseType: !7, size: 32, offset: 64)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !6035, file: !6036, line: 55, baseType: !7, size: 32, offset: 96)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !6032, file: !279, line: 67, baseType: !47, size: 64, offset: 128)
!6042 = !DIDerivedType(tag: DW_TAG_member, scope: !6029, file: !279, line: 70, baseType: !6043, size: 192)
!6043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6029, file: !279, line: 70, size: 192, elements: !6044)
!6044 = !{!6045, !6046}
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !6043, file: !279, line: 71, baseType: !669, size: 128, align: 64)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !6043, file: !279, line: 72, baseType: !47, size: 64, offset: 128)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !6025, file: !279, line: 76, baseType: !6048, size: 64, offset: 256)
!6048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6049, size: 64)
!6049 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !279, line: 76, flags: DIFlagFwdDecl)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !6025, file: !279, line: 77, baseType: !47, size: 64, offset: 320)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !6025, file: !279, line: 79, baseType: !6052, size: 64, offset: 384)
!6052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6053, size: 64)
!6053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !6036, line: 25, size: 256, elements: !6054)
!6054 = !{!6055, !6061, !6065}
!6055 = !DIDerivedType(tag: DW_TAG_member, scope: !6053, file: !6036, line: 26, baseType: !6056, size: 128)
!6056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6053, file: !6036, line: 26, size: 128, elements: !6057)
!6057 = !{!6058, !6060}
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !6056, file: !6036, line: 27, baseType: !6059, size: 128)
!6059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !4902)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !6056, file: !6036, line: 28, baseType: !6059, size: 128)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6053, file: !6036, line: 31, baseType: !6062, size: 64, offset: 128)
!6062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6063, size: 64)
!6063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6064)
!6064 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !6036, line: 23, flags: DIFlagFwdDecl)
!6065 = !DIDerivedType(tag: DW_TAG_member, scope: !6053, file: !6036, line: 33, baseType: !6066, size: 64, offset: 192)
!6066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6053, file: !6036, line: 33, size: 64, elements: !6067)
!6067 = !{!6068, !6074, !6079}
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !6066, file: !6036, line: 38, baseType: !6069, size: 64)
!6069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6066, file: !6036, line: 34, size: 64, elements: !6070)
!6070 = !{!6071, !6072, !6073}
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !6069, file: !6036, line: 35, baseType: !852, size: 32)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6069, file: !6036, line: 36, baseType: !91, size: 8, offset: 32)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !6069, file: !6036, line: 37, baseType: !91, size: 8, offset: 40)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !6066, file: !6036, line: 42, baseType: !6075, size: 16)
!6075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6066, file: !6036, line: 39, size: 16, elements: !6076)
!6076 = !{!6077, !6078}
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !6075, file: !6036, line: 40, baseType: !91, size: 8)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6075, file: !6036, line: 41, baseType: !91, size: 8, offset: 8)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !6066, file: !6036, line: 46, baseType: !6080, size: 16)
!6080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6066, file: !6036, line: 43, size: 16, elements: !6081)
!6081 = !{!6082, !6083}
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !6080, file: !6036, line: 44, baseType: !91, size: 8)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6080, file: !6036, line: 45, baseType: !91, size: 8, offset: 8)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !6025, file: !279, line: 81, baseType: !6085, size: 64, offset: 448)
!6085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6086, size: 64)
!6086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !279, line: 85, size: 384, elements: !6087)
!6087 = !{!6088, !6089, !6090, !6091, !6092, !6093}
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !6086, file: !279, line: 86, baseType: !6048, size: 64)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6086, file: !279, line: 87, baseType: !47, size: 64, offset: 64)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !6086, file: !279, line: 88, baseType: !47, size: 64, offset: 128)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !6086, file: !279, line: 89, baseType: !47, size: 64, offset: 192)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !6086, file: !279, line: 90, baseType: !840, size: 8, offset: 256)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6086, file: !279, line: 92, baseType: !6085, size: 64, offset: 320)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6025, file: !279, line: 82, baseType: !7, size: 32, offset: 512)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !316, file: !317, line: 1463, baseType: !6096, offset: 21184)
!6096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !317, line: 739, elements: !654)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !316, file: !317, line: 1470, baseType: !669, size: 128, align: 64, offset: 21184)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !316, file: !317, line: 1471, baseType: !332, size: 32, offset: 21312)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !316, file: !317, line: 1472, baseType: !30, size: 32, offset: 21344)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !316, file: !317, line: 1474, baseType: !315, size: 64, offset: 21376)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !316, file: !317, line: 1475, baseType: !2555, size: 320, offset: 21440)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !316, file: !317, line: 1478, baseType: !6103, size: 64, offset: 21760)
!6103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6104, size: 64)
!6104 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !317, line: 1478, flags: DIFlagFwdDecl)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !316, file: !317, line: 1482, baseType: !332, size: 32, offset: 21824)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !316, file: !317, line: 1489, baseType: !28, size: 64, offset: 21888)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !316, file: !317, line: 1504, baseType: !28, size: 64, offset: 21952)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !316, file: !317, line: 1505, baseType: !385, size: 64, offset: 22016)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !316, file: !317, line: 1506, baseType: !384, size: 64, offset: 22080)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !316, file: !317, line: 1507, baseType: !385, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !316, file: !317, line: 1508, baseType: !385, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !316, file: !317, line: 1509, baseType: !385, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !316, file: !317, line: 1510, baseType: !669, size: 128, align: 64, offset: 22208)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !316, file: !317, line: 1511, baseType: !30, size: 32, offset: 22336)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !316, file: !317, line: 1515, baseType: !6116, size: 64, offset: 22400)
!6116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !346, line: 56, size: 64, elements: !6117)
!6117 = !{!6118}
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6116, file: !346, line: 57, baseType: !349, size: 64)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !316, file: !317, line: 1518, baseType: !6116, size: 64, offset: 22464)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !316, file: !317, line: 1528, baseType: !669, size: 128, align: 64, offset: 22528)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !316, file: !317, line: 1552, baseType: !6122, size: 35328, offset: 23040)
!6122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !6123, line: 430, size: 35328, elements: !6124)
!6123 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!6124 = !{!6125, !6143, !6144, !6145, !6146, !6147, !6148, !6149, !6150, !6152, !6153, !6154, !6155, !6156, !6157, !6160, !6161, !6162, !6163}
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !6122, file: !6123, line: 432, baseType: !6126, size: 192)
!6126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6127, size: 192, elements: !725)
!6127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !6128, line: 16, size: 64, elements: !6129)
!6128 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!6129 = !{!6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6141, !6142}
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !6127, file: !6128, line: 17, baseType: !101, size: 16)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !6127, file: !6128, line: 18, baseType: !101, size: 16, offset: 16)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !6127, file: !6128, line: 19, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6127, file: !6128, line: 19, baseType: !101, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !6127, file: !6128, line: 19, baseType: !101, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !6127, file: !6128, line: 19, baseType: !101, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !6127, file: !6128, line: 19, baseType: !101, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !6127, file: !6128, line: 20, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !6127, file: !6128, line: 20, baseType: !101, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !6127, file: !6128, line: 20, baseType: !101, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6127, file: !6128, line: 20, baseType: !101, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !6127, file: !6128, line: 20, baseType: !101, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !6127, file: !6128, line: 20, baseType: !101, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !6122, file: !6123, line: 436, baseType: !47, size: 64, offset: 192)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !6122, file: !6123, line: 440, baseType: !34, size: 16, offset: 256)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !6122, file: !6123, line: 441, baseType: !34, size: 16, offset: 272)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !6122, file: !6123, line: 442, baseType: !34, size: 16, offset: 288)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !6122, file: !6123, line: 443, baseType: !34, size: 16, offset: 304)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !6122, file: !6123, line: 447, baseType: !47, size: 64, offset: 320)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !6122, file: !6123, line: 448, baseType: !47, size: 64, offset: 384)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !6122, file: !6123, line: 459, baseType: !6151, size: 256, offset: 448)
!6151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2841, size: 256, elements: !740)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !6122, file: !6123, line: 461, baseType: !47, size: 64, offset: 704)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !6122, file: !6123, line: 463, baseType: !47, size: 64, offset: 768)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !6122, file: !6123, line: 465, baseType: !47, size: 64, offset: 832)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !6122, file: !6123, line: 466, baseType: !47, size: 64, offset: 896)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !6122, file: !6123, line: 467, baseType: !47, size: 64, offset: 960)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !6122, file: !6123, line: 473, baseType: !6158, size: 64, offset: 1024)
!6158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6159, size: 64)
!6159 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !6123, line: 10, flags: DIFlagFwdDecl)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !6122, file: !6123, line: 480, baseType: !47, size: 64, offset: 1088)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !6122, file: !6123, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !6122, file: !6123, line: 491, baseType: !326, size: 32, offset: 1184)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !6122, file: !6123, line: 501, baseType: !6164, size: 33792, offset: 1536)
!6164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6165, line: 448, size: 33792, elements: !6166)
!6165 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6166 = !{!6167, !6168, !6169, !6277, !6278, !6284, !6285}
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6164, file: !6165, line: 461, baseType: !7, size: 32)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6164, file: !6165, line: 468, baseType: !47, size: 64, offset: 64)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6164, file: !6165, line: 476, baseType: !6170, size: 64, offset: 128)
!6170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6171, size: 64)
!6171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6165, line: 356, size: 33280, align: 512, elements: !6172)
!6172 = !{!6173, !6174, !6175, !6176, !6177, !6178, !6179, !6180, !6181, !6182}
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6171, file: !6165, line: 358, baseType: !7, size: 32)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6171, file: !6165, line: 361, baseType: !7, size: 32, offset: 32)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6171, file: !6165, line: 364, baseType: !384, size: 64, offset: 64)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6171, file: !6165, line: 367, baseType: !384, size: 64, offset: 128)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6171, file: !6165, line: 370, baseType: !384, size: 64, offset: 192)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6171, file: !6165, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6171, file: !6165, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6171, file: !6165, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6171, file: !6165, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6171, file: !6165, line: 397, baseType: !6183, size: 32768, offset: 512)
!6183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6165, line: 348, size: 32768, elements: !6184)
!6184 = !{!6185, !6200, !6237, !6262, !6275}
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6183, file: !6165, line: 349, baseType: !6186, size: 896)
!6186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6165, line: 12, size: 896, elements: !6187)
!6187 = !{!6188, !6189, !6190, !6191, !6192, !6193, !6194, !6195, !6199}
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6186, file: !6165, line: 13, baseType: !326, size: 32)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6186, file: !6165, line: 14, baseType: !326, size: 32, offset: 32)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6186, file: !6165, line: 15, baseType: !326, size: 32, offset: 64)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6186, file: !6165, line: 16, baseType: !326, size: 32, offset: 96)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6186, file: !6165, line: 17, baseType: !326, size: 32, offset: 128)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6186, file: !6165, line: 18, baseType: !326, size: 32, offset: 160)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6186, file: !6165, line: 19, baseType: !326, size: 32, offset: 192)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6186, file: !6165, line: 22, baseType: !6196, size: 640, offset: 224)
!6196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 640, elements: !6197)
!6197 = !{!6198}
!6198 = !DISubrange(count: 20)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6186, file: !6165, line: 25, baseType: !326, size: 32, offset: 864)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6183, file: !6165, line: 350, baseType: !6201, size: 4096, align: 128)
!6201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6165, line: 34, size: 4096, align: 128, elements: !6202)
!6202 = !{!6203, !6204, !6205, !6206, !6207, !6222, !6223, !6224, !6226, !6228, !6232}
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6201, file: !6165, line: 35, baseType: !101, size: 16)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6201, file: !6165, line: 36, baseType: !101, size: 16, offset: 16)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6201, file: !6165, line: 37, baseType: !101, size: 16, offset: 32)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6201, file: !6165, line: 38, baseType: !101, size: 16, offset: 48)
!6207 = !DIDerivedType(tag: DW_TAG_member, scope: !6201, file: !6165, line: 39, baseType: !6208, size: 128, offset: 64)
!6208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6201, file: !6165, line: 39, size: 128, elements: !6209)
!6209 = !{!6210, !6215}
!6210 = !DIDerivedType(tag: DW_TAG_member, scope: !6208, file: !6165, line: 40, baseType: !6211, size: 128)
!6211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6208, file: !6165, line: 40, size: 128, elements: !6212)
!6212 = !{!6213, !6214}
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6211, file: !6165, line: 41, baseType: !384, size: 64)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6211, file: !6165, line: 42, baseType: !384, size: 64, offset: 64)
!6215 = !DIDerivedType(tag: DW_TAG_member, scope: !6208, file: !6165, line: 44, baseType: !6216, size: 128)
!6216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6208, file: !6165, line: 44, size: 128, elements: !6217)
!6217 = !{!6218, !6219, !6220, !6221}
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6216, file: !6165, line: 45, baseType: !326, size: 32)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6216, file: !6165, line: 46, baseType: !326, size: 32, offset: 32)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6216, file: !6165, line: 47, baseType: !326, size: 32, offset: 64)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6216, file: !6165, line: 48, baseType: !326, size: 32, offset: 96)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6201, file: !6165, line: 51, baseType: !326, size: 32, offset: 192)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6201, file: !6165, line: 52, baseType: !326, size: 32, offset: 224)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6201, file: !6165, line: 55, baseType: !6225, size: 1024, offset: 256)
!6225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 1024, elements: !4417)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6201, file: !6165, line: 58, baseType: !6227, size: 2048, offset: 1280)
!6227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 2048, elements: !1500)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6201, file: !6165, line: 60, baseType: !6229, size: 384, offset: 3328)
!6229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 384, elements: !6230)
!6230 = !{!6231}
!6231 = !DISubrange(count: 12)
!6232 = !DIDerivedType(tag: DW_TAG_member, scope: !6201, file: !6165, line: 62, baseType: !6233, size: 384, offset: 3712)
!6233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6201, file: !6165, line: 62, size: 384, elements: !6234)
!6234 = !{!6235, !6236}
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6233, file: !6165, line: 63, baseType: !6229, size: 384)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6233, file: !6165, line: 64, baseType: !6229, size: 384)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6183, file: !6165, line: 351, baseType: !6238, size: 1088)
!6238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6165, line: 79, size: 1088, elements: !6239)
!6239 = !{!6240, !6241, !6242, !6243, !6244, !6245, !6246, !6247, !6248, !6249, !6250, !6251, !6252, !6253, !6254, !6261}
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6238, file: !6165, line: 80, baseType: !326, size: 32)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6238, file: !6165, line: 81, baseType: !326, size: 32, offset: 32)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6238, file: !6165, line: 82, baseType: !326, size: 32, offset: 64)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6238, file: !6165, line: 83, baseType: !326, size: 32, offset: 96)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6238, file: !6165, line: 84, baseType: !326, size: 32, offset: 128)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6238, file: !6165, line: 85, baseType: !326, size: 32, offset: 160)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6238, file: !6165, line: 86, baseType: !326, size: 32, offset: 192)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6238, file: !6165, line: 88, baseType: !6196, size: 640, offset: 224)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6238, file: !6165, line: 89, baseType: !91, size: 8, offset: 864)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6238, file: !6165, line: 90, baseType: !91, size: 8, offset: 872)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6238, file: !6165, line: 91, baseType: !91, size: 8, offset: 880)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6238, file: !6165, line: 92, baseType: !91, size: 8, offset: 888)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6238, file: !6165, line: 93, baseType: !91, size: 8, offset: 896)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6238, file: !6165, line: 94, baseType: !91, size: 8, offset: 904)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6238, file: !6165, line: 95, baseType: !6255, size: 64, offset: 960)
!6255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6256, size: 64)
!6256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6257, line: 11, size: 128, elements: !6258)
!6257 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6258 = !{!6259, !6260}
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6256, file: !6257, line: 12, baseType: !1065, size: 64)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6256, file: !6257, line: 13, baseType: !3753, size: 64, offset: 64)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6238, file: !6165, line: 96, baseType: !326, size: 32, offset: 1024)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6183, file: !6165, line: 352, baseType: !6263, size: 4608, align: 512)
!6263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6165, line: 333, size: 4608, align: 512, elements: !6264)
!6264 = !{!6265, !6266, !6273}
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6263, file: !6165, line: 334, baseType: !6201, size: 4096, align: 128)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6263, file: !6165, line: 335, baseType: !6267, size: 512, offset: 4096)
!6267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6165, line: 312, size: 512, elements: !6268)
!6268 = !{!6269, !6270, !6271}
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6267, file: !6165, line: 313, baseType: !384, size: 64)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6267, file: !6165, line: 314, baseType: !384, size: 64, offset: 64)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6267, file: !6165, line: 315, baseType: !6272, size: 384, offset: 128)
!6272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, elements: !906)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6263, file: !6165, line: 336, baseType: !6274, offset: 4608)
!6274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !1072)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6183, file: !6165, line: 353, baseType: !6276, size: 32768)
!6276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32768, elements: !2785)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6164, file: !6165, line: 484, baseType: !6170, size: 64, offset: 192)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6164, file: !6165, line: 491, baseType: !6279, size: 128, offset: 256)
!6279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6165, line: 404, size: 128, elements: !6280)
!6280 = !{!6281, !6282, !6283}
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6279, file: !6165, line: 424, baseType: !384, size: 64)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6279, file: !6165, line: 432, baseType: !7, size: 32, offset: 64)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6279, file: !6165, line: 440, baseType: !7, size: 32, offset: 96)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6164, file: !6165, line: 498, baseType: !6279, size: 128, offset: 384)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6164, file: !6165, line: 508, baseType: !6171, size: 33280, align: 512, offset: 512)
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6287, size: 64)
!6287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6288)
!6288 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!6289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6290, size: 64)
!6290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6291)
!6291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1079)
!6292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!6293 = !{!0}
!6294 = !{i32 7, !"Dwarf Version", i32 5}
!6295 = !{i32 2, !"Debug Info Version", i32 3}
!6296 = !{i32 1, !"wchar_size", i32 2}
!6297 = !{i32 8, !"cf-protection-branch", i32 1}
!6298 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6299 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6300 = !{i32 1, !"Code Model", i32 2}
!6301 = !{i32 1, !"override-stack-alignment", i32 8}
!6302 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6303 = distinct !DISubprogram(name: "ioprio_check_cap", scope: !3, file: !3, line: 33, type: !5130, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6304)
!6304 = !{!6305, !6306, !6307}
!6305 = !DILocalVariable(name: "ioprio", arg: 1, scope: !6303, file: !3, line: 33, type: !30)
!6306 = !DILocalVariable(name: "class", scope: !6303, file: !3, line: 35, type: !30)
!6307 = !DILocalVariable(name: "level", scope: !6303, file: !3, line: 36, type: !30)
!6308 = !DILocation(line: 33, column: 26, scope: !6303)
!6309 = !DILocation(line: 35, column: 2, scope: !6303)
!6310 = !DILocation(line: 35, column: 6, scope: !6303)
!6311 = !DILocation(line: 35, column: 14, scope: !6303)
!6312 = !DILocation(line: 36, column: 2, scope: !6303)
!6313 = !DILocation(line: 36, column: 6, scope: !6303)
!6314 = !DILocation(line: 36, column: 14, scope: !6303)
!6315 = !DILocation(line: 38, column: 10, scope: !6303)
!6316 = !DILocation(line: 38, column: 2, scope: !6303)
!6317 = !DILocation(line: 47, column: 9, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 47, column: 8)
!6319 = distinct !DILexicalBlock(scope: !6303, file: !3, line: 38, column: 17)
!6320 = !DILocation(line: 47, column: 32, scope: !6318)
!6321 = !DILocation(line: 47, column: 36, scope: !6318)
!6322 = !DILocation(line: 47, column: 8, scope: !6319)
!6323 = !DILocation(line: 48, column: 5, scope: !6318)
!6324 = !DILocation(line: 47, column: 56, scope: !6318)
!6325 = !DILocation(line: 52, column: 8, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 52, column: 8)
!6327 = !DILocation(line: 52, column: 14, scope: !6326)
!6328 = !DILocation(line: 52, column: 8, scope: !6319)
!6329 = !DILocation(line: 53, column: 5, scope: !6326)
!6330 = !DILocation(line: 54, column: 4, scope: !6319)
!6331 = !DILocation(line: 58, column: 8, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 58, column: 8)
!6333 = !DILocation(line: 58, column: 8, scope: !6319)
!6334 = !DILocation(line: 59, column: 5, scope: !6332)
!6335 = !DILocation(line: 60, column: 4, scope: !6319)
!6336 = !DILocation(line: 61, column: 3, scope: !6319)
!6337 = !DILocation(line: 63, column: 4, scope: !6319)
!6338 = !DILocation(line: 66, column: 2, scope: !6303)
!6339 = !DILocation(line: 67, column: 1, scope: !6303)
!6340 = !DISubprogram(name: "capable", scope: !1096, file: !1096, line: 148, type: !6341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!840, !30}
!6343 = distinct !DISubprogram(name: "__x64_sys_ioprio_set", scope: !3, file: !3, line: 69, type: !6344, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6348)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{!1065, !6346}
!6346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6347, size: 64)
!6347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!6348 = !{!6349}
!6349 = !DILocalVariable(name: "regs", arg: 1, scope: !6343, file: !3, line: 69, type: !6346)
!6350 = !DILocation(line: 69, column: 1, scope: !6343)
!6351 = distinct !DISubprogram(name: "__se_sys_ioprio_set", scope: !3, file: !3, line: 69, type: !6352, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6354)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!1065, !1065, !1065, !1065}
!6354 = !{!6355, !6356, !6357, !6358}
!6355 = !DILocalVariable(name: "which", arg: 1, scope: !6351, file: !3, line: 69, type: !1065)
!6356 = !DILocalVariable(name: "who", arg: 2, scope: !6351, file: !3, line: 69, type: !1065)
!6357 = !DILocalVariable(name: "ioprio", arg: 3, scope: !6351, file: !3, line: 69, type: !1065)
!6358 = !DILocalVariable(name: "ret", scope: !6351, file: !3, line: 69, type: !1065)
!6359 = !DILocation(line: 69, column: 1, scope: !6351)
!6360 = !DILocation(line: 69, column: 1, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 69, column: 1)
!6362 = distinct !DISubprogram(name: "__ia32_sys_ioprio_set", scope: !3, file: !3, line: 69, type: !6344, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6363 = !{!6364}
!6364 = !DILocalVariable(name: "regs", arg: 1, scope: !6362, file: !3, line: 69, type: !6346)
!6365 = !DILocation(line: 69, column: 1, scope: !6362)
!6366 = distinct !DISubprogram(name: "__get_task_ioprio", scope: !3, file: !3, line: 149, type: !6367, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6369)
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!30, !315}
!6369 = !{!6370, !6371, !6372}
!6370 = !DILocalVariable(name: "p", arg: 1, scope: !6366, file: !3, line: 149, type: !315)
!6371 = !DILocalVariable(name: "ioc", scope: !6366, file: !3, line: 151, type: !5845)
!6372 = !DILocalVariable(name: "prio", scope: !6366, file: !3, line: 152, type: !30)
!6373 = !DILocation(line: 149, column: 43, scope: !6366)
!6374 = !DILocation(line: 151, column: 2, scope: !6366)
!6375 = !DILocation(line: 151, column: 21, scope: !6366)
!6376 = !DILocation(line: 151, column: 27, scope: !6366)
!6377 = !DILocation(line: 151, column: 30, scope: !6366)
!6378 = !DILocation(line: 152, column: 2, scope: !6366)
!6379 = !DILocation(line: 152, column: 6, scope: !6366)
!6380 = !DILocation(line: 154, column: 6, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 154, column: 6)
!6382 = !DILocation(line: 154, column: 11, scope: !6381)
!6383 = !DILocation(line: 154, column: 8, scope: !6381)
!6384 = !DILocation(line: 154, column: 6, scope: !6366)
!6385 = !DILocation(line: 155, column: 3, scope: !6381)
!6386 = !DILocation(line: 155, column: 3, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 155, column: 3)
!6388 = !DILocation(line: 156, column: 6, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 156, column: 6)
!6390 = !DILocation(line: 156, column: 6, scope: !6366)
!6391 = !DILocation(line: 157, column: 10, scope: !6389)
!6392 = !DILocation(line: 157, column: 15, scope: !6389)
!6393 = !DILocation(line: 157, column: 8, scope: !6389)
!6394 = !DILocation(line: 157, column: 3, scope: !6389)
!6395 = !DILocation(line: 159, column: 10, scope: !6389)
!6396 = !DILocation(line: 159, column: 8, scope: !6389)
!6397 = !DILocation(line: 161, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 161, column: 6)
!6399 = !DILocation(line: 161, column: 30, scope: !6398)
!6400 = !DILocation(line: 161, column: 6, scope: !6366)
!6401 = !DILocation(line: 162, column: 10, scope: !6398)
!6402 = !DILocation(line: 162, column: 8, scope: !6398)
!6403 = !DILocation(line: 162, column: 3, scope: !6398)
!6404 = !DILocation(line: 164, column: 9, scope: !6366)
!6405 = !DILocation(line: 165, column: 1, scope: !6366)
!6406 = !DILocation(line: 164, column: 2, scope: !6366)
!6407 = distinct !DISubprogram(name: "get_current", scope: !6408, file: !6408, line: 39, type: !6409, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6408 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!315}
!6411 = !{!6412, !6414, !6416}
!6412 = !DILocalVariable(name: "pscr_ret__", scope: !6413, file: !6408, line: 41, type: !315)
!6413 = distinct !DILexicalBlock(scope: !6407, file: !6408, line: 41, column: 9)
!6414 = !DILocalVariable(name: "__vpp_verify", scope: !6415, file: !6408, line: 41, type: !2142)
!6415 = distinct !DILexicalBlock(scope: !6413, file: !6408, line: 41, column: 9)
!6416 = !DILocalVariable(name: "pfo_val__", scope: !6417, file: !6408, line: 41, type: !384)
!6417 = distinct !DILexicalBlock(scope: !6413, file: !6408, line: 41, column: 9)
!6418 = !DILocation(line: 41, column: 9, scope: !6413)
!6419 = !DILocation(line: 41, column: 9, scope: !6415)
!6420 = !DILocation(line: 41, column: 9, scope: !6417)
!6421 = !{i64 2148359662}
!6422 = !DILocation(line: 41, column: 9, scope: !6407)
!6423 = !DILocation(line: 41, column: 2, scope: !6407)
!6424 = distinct !DISubprogram(name: "ioprio_value", scope: !6, file: !6, line: 110, type: !6425, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!102, !30, !30, !30}
!6427 = !{!6428, !6429, !6430}
!6428 = !DILocalVariable(name: "prioclass", arg: 1, scope: !6424, file: !6, line: 110, type: !30)
!6429 = !DILocalVariable(name: "priolevel", arg: 2, scope: !6424, file: !6, line: 110, type: !30)
!6430 = !DILocalVariable(name: "priohint", arg: 3, scope: !6424, file: !6, line: 111, type: !30)
!6431 = !DILocation(line: 110, column: 47, scope: !6424)
!6432 = !DILocation(line: 110, column: 62, scope: !6424)
!6433 = !DILocation(line: 111, column: 12, scope: !6424)
!6434 = !DILocation(line: 113, column: 6, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6424, file: !6, line: 113, column: 6)
!6436 = !DILocation(line: 113, column: 53, scope: !6435)
!6437 = !DILocation(line: 114, column: 6, scope: !6435)
!6438 = !DILocation(line: 114, column: 52, scope: !6435)
!6439 = !DILocation(line: 115, column: 6, scope: !6435)
!6440 = !DILocation(line: 113, column: 6, scope: !6424)
!6441 = !DILocation(line: 116, column: 3, scope: !6435)
!6442 = !DILocation(line: 118, column: 10, scope: !6424)
!6443 = !DILocation(line: 118, column: 20, scope: !6424)
!6444 = !DILocation(line: 119, column: 4, scope: !6424)
!6445 = !DILocation(line: 119, column: 13, scope: !6424)
!6446 = !DILocation(line: 118, column: 43, scope: !6424)
!6447 = !DILocation(line: 119, column: 37, scope: !6424)
!6448 = !DILocation(line: 119, column: 35, scope: !6424)
!6449 = !DILocation(line: 118, column: 9, scope: !6424)
!6450 = !DILocation(line: 118, column: 2, scope: !6424)
!6451 = !DILocation(line: 120, column: 1, scope: !6424)
!6452 = distinct !DISubprogram(name: "task_nice_ioclass", scope: !6453, file: !6453, line: 39, type: !6367, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6454)
!6453 = !DIFile(filename: "./include/linux/ioprio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "538577817063bbe1fc6ba636697b8098")
!6454 = !{!6455}
!6455 = !DILocalVariable(name: "task", arg: 1, scope: !6452, file: !6453, line: 39, type: !315)
!6456 = !DILocation(line: 39, column: 57, scope: !6452)
!6457 = !DILocation(line: 41, column: 6, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6452, file: !6453, line: 41, column: 6)
!6459 = !DILocation(line: 41, column: 12, scope: !6458)
!6460 = !DILocation(line: 41, column: 19, scope: !6458)
!6461 = !DILocation(line: 41, column: 6, scope: !6452)
!6462 = !DILocation(line: 42, column: 3, scope: !6458)
!6463 = !DILocation(line: 43, column: 28, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6458, file: !6453, line: 43, column: 11)
!6465 = !DILocation(line: 43, column: 11, scope: !6464)
!6466 = !DILocation(line: 43, column: 11, scope: !6458)
!6467 = !DILocation(line: 44, column: 3, scope: !6464)
!6468 = !DILocation(line: 46, column: 3, scope: !6464)
!6469 = !DILocation(line: 47, column: 1, scope: !6452)
!6470 = distinct !DISubprogram(name: "task_nice_ioprio", scope: !6453, file: !6453, line: 30, type: !6367, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6471)
!6471 = !{!6472}
!6472 = !DILocalVariable(name: "task", arg: 1, scope: !6470, file: !6453, line: 30, type: !315)
!6473 = !DILocation(line: 30, column: 56, scope: !6470)
!6474 = !DILocation(line: 32, column: 20, scope: !6470)
!6475 = !DILocation(line: 32, column: 10, scope: !6470)
!6476 = !DILocation(line: 32, column: 26, scope: !6470)
!6477 = !DILocation(line: 32, column: 32, scope: !6470)
!6478 = !DILocation(line: 32, column: 2, scope: !6470)
!6479 = distinct !DISubprogram(name: "__x64_sys_ioprio_get", scope: !3, file: !3, line: 210, type: !6344, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6480)
!6480 = !{!6481}
!6481 = !DILocalVariable(name: "regs", arg: 1, scope: !6479, file: !3, line: 210, type: !6346)
!6482 = !DILocation(line: 210, column: 1, scope: !6479)
!6483 = distinct !DISubprogram(name: "__se_sys_ioprio_get", scope: !3, file: !3, line: 210, type: !6484, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6486)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!1065, !1065, !1065}
!6486 = !{!6487, !6488, !6489}
!6487 = !DILocalVariable(name: "which", arg: 1, scope: !6483, file: !3, line: 210, type: !1065)
!6488 = !DILocalVariable(name: "who", arg: 2, scope: !6483, file: !3, line: 210, type: !1065)
!6489 = !DILocalVariable(name: "ret", scope: !6483, file: !3, line: 210, type: !1065)
!6490 = !DILocation(line: 210, column: 1, scope: !6483)
!6491 = !DILocation(line: 210, column: 1, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 210, column: 1)
!6493 = distinct !DISubprogram(name: "__ia32_sys_ioprio_get", scope: !3, file: !3, line: 210, type: !6344, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6494)
!6494 = !{!6495}
!6495 = !DILocalVariable(name: "regs", arg: 1, scope: !6493, file: !3, line: 210, type: !6346)
!6496 = !DILocation(line: 210, column: 1, scope: !6493)
!6497 = distinct !DISubprogram(name: "__do_sys_ioprio_set", scope: !3, file: !3, line: 69, type: !6498, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6500)
!6498 = !DISubroutineType(types: !6499)
!6499 = !{!1065, !30, !30, !30}
!6500 = !{!6501, !6502, !6503, !6504, !6505, !6506, !6507, !6508, !6509, !6510, !6516, !6518, !6520, !6524, !6527, !6530, !6532, !6534, !6536, !6540, !6543, !6548, !6550, !6552, !6553}
!6501 = !DILocalVariable(name: "which", arg: 1, scope: !6497, file: !3, line: 69, type: !30)
!6502 = !DILocalVariable(name: "who", arg: 2, scope: !6497, file: !3, line: 69, type: !30)
!6503 = !DILocalVariable(name: "ioprio", arg: 3, scope: !6497, file: !3, line: 69, type: !30)
!6504 = !DILocalVariable(name: "p", scope: !6497, file: !3, line: 71, type: !315)
!6505 = !DILocalVariable(name: "g", scope: !6497, file: !3, line: 71, type: !315)
!6506 = !DILocalVariable(name: "user", scope: !6497, file: !3, line: 72, type: !1111)
!6507 = !DILocalVariable(name: "pgrp", scope: !6497, file: !3, line: 73, type: !729)
!6508 = !DILocalVariable(name: "uid", scope: !6497, file: !3, line: 74, type: !813)
!6509 = !DILocalVariable(name: "ret", scope: !6497, file: !3, line: 75, type: !30)
!6510 = !DILocalVariable(name: "____ptr", scope: !6511, file: !3, line: 99, type: !309)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 99, column: 4)
!6512 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 99, column: 4)
!6513 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 99, column: 4)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 99, column: 4)
!6515 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 83, column: 17)
!6516 = !DILocalVariable(name: "__UNIQUE_ID_rcu362", scope: !6517, file: !3, line: 99, type: !309)
!6517 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 99, column: 4)
!6518 = !DILocalVariable(name: "__mptr", scope: !6519, file: !3, line: 99, type: !28)
!6519 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 99, column: 4)
!6520 = !DILocalVariable(name: "tg___", scope: !6521, file: !3, line: 99, type: !315)
!6521 = distinct !DILexicalBlock(scope: !6522, file: !3, line: 99, column: 4)
!6522 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 99, column: 4)
!6523 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 99, column: 4)
!6524 = !DILocalVariable(name: "__mptr", scope: !6525, file: !3, line: 99, type: !28)
!6525 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 99, column: 4)
!6526 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 99, column: 4)
!6527 = !DILocalVariable(name: "__mptr", scope: !6528, file: !3, line: 99, type: !28)
!6528 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 99, column: 4)
!6529 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 99, column: 4)
!6530 = !DILocalVariable(name: "____ptr", scope: !6531, file: !3, line: 99, type: !309)
!6531 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 99, column: 4)
!6532 = !DILocalVariable(name: "__UNIQUE_ID_rcu364", scope: !6533, file: !3, line: 99, type: !309)
!6533 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 99, column: 4)
!6534 = !DILocalVariable(name: "__mptr", scope: !6535, file: !3, line: 99, type: !28)
!6535 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 99, column: 4)
!6536 = !DILocalVariable(name: "__mptr", scope: !6537, file: !3, line: 121, type: !28)
!6537 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 121, column: 4)
!6538 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 121, column: 4)
!6539 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 121, column: 4)
!6540 = !DILocalVariable(name: "__mptr", scope: !6541, file: !3, line: 121, type: !28)
!6541 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 121, column: 4)
!6542 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 121, column: 4)
!6543 = !DILocalVariable(name: "___val", scope: !6544, file: !3, line: 122, type: !813)
!6544 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 122, column: 17)
!6545 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 122, column: 9)
!6546 = distinct !DILexicalBlock(scope: !6547, file: !3, line: 121, column: 34)
!6547 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 121, column: 4)
!6548 = !DILocalVariable(name: "__UNIQUE_ID_rcu371", scope: !6549, file: !3, line: 122, type: !1079)
!6549 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 122, column: 17)
!6550 = !DILocalVariable(name: "__mptr", scope: !6551, file: !3, line: 121, type: !28)
!6551 = distinct !DILexicalBlock(scope: !6547, file: !3, line: 121, column: 4)
!6552 = !DILabel(scope: !6515, name: "free_uid", file: !3, line: 129)
!6553 = !DILabel(scope: !6497, name: "out", file: !3, line: 137)
!6554 = !DILocation(line: 69, column: 1, scope: !6497)
!6555 = !DILocation(line: 71, column: 2, scope: !6497)
!6556 = !DILocation(line: 71, column: 22, scope: !6497)
!6557 = !DILocation(line: 71, column: 26, scope: !6497)
!6558 = !DILocation(line: 72, column: 2, scope: !6497)
!6559 = !DILocation(line: 72, column: 22, scope: !6497)
!6560 = !DILocation(line: 73, column: 2, scope: !6497)
!6561 = !DILocation(line: 73, column: 14, scope: !6497)
!6562 = !DILocation(line: 74, column: 2, scope: !6497)
!6563 = !DILocation(line: 74, column: 9, scope: !6497)
!6564 = !DILocation(line: 75, column: 2, scope: !6497)
!6565 = !DILocation(line: 75, column: 6, scope: !6497)
!6566 = !DILocation(line: 77, column: 25, scope: !6497)
!6567 = !DILocation(line: 77, column: 8, scope: !6497)
!6568 = !DILocation(line: 77, column: 6, scope: !6497)
!6569 = !DILocation(line: 78, column: 6, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 78, column: 6)
!6571 = !DILocation(line: 78, column: 6, scope: !6497)
!6572 = !DILocation(line: 79, column: 10, scope: !6570)
!6573 = !DILocation(line: 79, column: 3, scope: !6570)
!6574 = !DILocation(line: 81, column: 6, scope: !6497)
!6575 = !DILocation(line: 82, column: 2, scope: !6497)
!6576 = !DILocation(line: 83, column: 10, scope: !6497)
!6577 = !DILocation(line: 83, column: 2, scope: !6497)
!6578 = !DILocation(line: 85, column: 9, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 85, column: 8)
!6580 = !DILocation(line: 85, column: 8, scope: !6515)
!6581 = !DILocation(line: 86, column: 9, scope: !6579)
!6582 = !DILocation(line: 86, column: 7, scope: !6579)
!6583 = !DILocation(line: 86, column: 5, scope: !6579)
!6584 = !DILocation(line: 88, column: 27, scope: !6579)
!6585 = !DILocation(line: 88, column: 9, scope: !6579)
!6586 = !DILocation(line: 88, column: 7, scope: !6579)
!6587 = !DILocation(line: 89, column: 8, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 89, column: 8)
!6589 = !DILocation(line: 89, column: 8, scope: !6515)
!6590 = !DILocation(line: 90, column: 27, scope: !6588)
!6591 = !DILocation(line: 90, column: 30, scope: !6588)
!6592 = !DILocation(line: 90, column: 11, scope: !6588)
!6593 = !DILocation(line: 90, column: 9, scope: !6588)
!6594 = !DILocation(line: 90, column: 5, scope: !6588)
!6595 = !DILocation(line: 91, column: 4, scope: !6515)
!6596 = !DILocation(line: 93, column: 9, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 93, column: 8)
!6598 = !DILocation(line: 93, column: 8, scope: !6515)
!6599 = !DILocation(line: 94, column: 22, scope: !6597)
!6600 = !DILocation(line: 94, column: 12, scope: !6597)
!6601 = !DILocation(line: 94, column: 10, scope: !6597)
!6602 = !DILocation(line: 94, column: 5, scope: !6597)
!6603 = !DILocation(line: 96, column: 22, scope: !6597)
!6604 = !DILocation(line: 96, column: 12, scope: !6597)
!6605 = !DILocation(line: 96, column: 10, scope: !6597)
!6606 = !DILocation(line: 98, column: 4, scope: !6515)
!6607 = !DILocation(line: 99, column: 4, scope: !6515)
!6608 = !DILocation(line: 99, column: 4, scope: !6513)
!6609 = !DILocation(line: 99, column: 4, scope: !6514)
!6610 = !DILocation(line: 99, column: 4, scope: !6511)
!6611 = !DILocation(line: 99, column: 4, scope: !6517)
!6612 = !DILocation(line: 99, column: 4, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 99, column: 4)
!6614 = !DILocation(line: 99, column: 4, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 99, column: 4)
!6616 = !DILocation(line: 99, column: 4, scope: !6519)
!6617 = !DILocation(line: 99, column: 4, scope: !6512)
!6618 = !DILocation(line: 99, column: 4, scope: !6523)
!6619 = !DILocation(line: 99, column: 4, scope: !6521)
!6620 = !DILocation(line: 99, column: 4, scope: !6525)
!6621 = !DILocation(line: 99, column: 4, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6525, file: !3, line: 99, column: 4)
!6623 = !DILocation(line: 99, column: 4, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 99, column: 4)
!6625 = !DILocation(line: 99, column: 4, scope: !6526)
!6626 = !DILocation(line: 99, column: 4, scope: !6529)
!6627 = !DILocation(line: 100, column: 27, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 99, column: 46)
!6629 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 99, column: 4)
!6630 = !DILocation(line: 100, column: 30, scope: !6628)
!6631 = !DILocation(line: 100, column: 11, scope: !6628)
!6632 = !DILocation(line: 100, column: 9, scope: !6628)
!6633 = !DILocation(line: 101, column: 9, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6628, file: !3, line: 101, column: 9)
!6635 = !DILocation(line: 101, column: 9, scope: !6628)
!6636 = !DILocation(line: 102, column: 6, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 101, column: 14)
!6638 = !DILocation(line: 103, column: 6, scope: !6637)
!6639 = !DILocation(line: 105, column: 6, scope: !6629)
!6640 = !DILocation(line: 99, column: 4, scope: !6528)
!6641 = !DILocation(line: 99, column: 4, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 99, column: 4)
!6643 = !DILocation(line: 99, column: 4, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6642, file: !3, line: 99, column: 4)
!6645 = distinct !{!6645, !6625, !6646, !6647, !6648}
!6646 = !DILocation(line: 105, column: 6, scope: !6526)
!6647 = !{!"llvm.loop.mustprogress"}
!6648 = !{!"llvm.loop.unroll.disable"}
!6649 = !DILocation(line: 105, column: 6, scope: !6521)
!6650 = !DILocation(line: 105, column: 6, scope: !6522)
!6651 = !DILocation(line: 99, column: 4, scope: !6531)
!6652 = !DILocation(line: 99, column: 4, scope: !6533)
!6653 = !DILocation(line: 99, column: 4, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 99, column: 4)
!6655 = !DILocation(line: 99, column: 4, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6654, file: !3, line: 99, column: 4)
!6657 = !DILocation(line: 99, column: 4, scope: !6535)
!6658 = distinct !{!6658, !6617, !6659, !6647, !6648}
!6659 = !DILocation(line: 105, column: 6, scope: !6512)
!6660 = !DILocation(line: 105, column: 6, scope: !6514)
!6661 = !DILocation(line: 106, column: 4, scope: !6515)
!6662 = !DILocation(line: 108, column: 4, scope: !6515)
!6663 = !DILocation(line: 110, column: 10, scope: !6515)
!6664 = !DILocation(line: 110, column: 20, scope: !6515)
!6665 = !DILocation(line: 110, column: 39, scope: !6515)
!6666 = !DILocation(line: 111, column: 9, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 111, column: 8)
!6668 = !DILocation(line: 111, column: 8, scope: !6515)
!6669 = !DILocation(line: 112, column: 5, scope: !6667)
!6670 = !DILocation(line: 113, column: 9, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 113, column: 8)
!6672 = !DILocation(line: 113, column: 8, scope: !6515)
!6673 = !DILocation(line: 114, column: 12, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 114, column: 12)
!6675 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 114, column: 12)
!6676 = !DILocation(line: 114, column: 12, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 114, column: 12)
!6678 = !DILocation(line: 114, column: 12, scope: !6675)
!6679 = !DILocation(line: 114, column: 12, scope: !6671)
!6680 = !DILocation(line: 114, column: 10, scope: !6671)
!6681 = !DILocation(line: 114, column: 5, scope: !6671)
!6682 = !DILocation(line: 116, column: 12, scope: !6671)
!6683 = !DILocation(line: 116, column: 10, scope: !6671)
!6684 = !DILocation(line: 118, column: 9, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 118, column: 8)
!6686 = !DILocation(line: 118, column: 8, scope: !6515)
!6687 = !DILocation(line: 119, column: 5, scope: !6685)
!6688 = !DILocation(line: 121, column: 4, scope: !6539)
!6689 = !DILocation(line: 121, column: 4, scope: !6537)
!6690 = !DILocation(line: 121, column: 4, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 121, column: 4)
!6692 = !DILocation(line: 121, column: 4, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 121, column: 4)
!6694 = !DILocation(line: 121, column: 4, scope: !6538)
!6695 = !DILocation(line: 121, column: 4, scope: !6541)
!6696 = !DILocation(line: 121, column: 4, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6541, file: !3, line: 121, column: 4)
!6698 = !DILocation(line: 121, column: 4, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6697, file: !3, line: 121, column: 4)
!6700 = !DILocation(line: 121, column: 4, scope: !6542)
!6701 = !DILocation(line: 121, column: 4, scope: !6547)
!6702 = !DILocation(line: 122, column: 17, scope: !6544)
!6703 = !DILocation(line: 122, column: 17, scope: !6549)
!6704 = !DILocation(line: 122, column: 17, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 122, column: 17)
!6706 = !DILocation(line: 122, column: 17, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6705, file: !3, line: 122, column: 17)
!6708 = !DILocation(line: 122, column: 17, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 122, column: 17)
!6710 = !DILocation(line: 122, column: 17, scope: !6545)
!6711 = !DILocation(line: 122, column: 10, scope: !6545)
!6712 = !DILocation(line: 122, column: 35, scope: !6545)
!6713 = !DILocation(line: 123, column: 23, scope: !6545)
!6714 = !DILocation(line: 123, column: 10, scope: !6545)
!6715 = !DILocation(line: 122, column: 9, scope: !6546)
!6716 = !DILocation(line: 124, column: 6, scope: !6545)
!6717 = !DILocation(line: 125, column: 27, scope: !6546)
!6718 = !DILocation(line: 125, column: 30, scope: !6546)
!6719 = !DILocation(line: 125, column: 11, scope: !6546)
!6720 = !DILocation(line: 125, column: 9, scope: !6546)
!6721 = !DILocation(line: 126, column: 9, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 126, column: 9)
!6723 = !DILocation(line: 126, column: 9, scope: !6546)
!6724 = !DILocation(line: 127, column: 6, scope: !6722)
!6725 = !DILocation(line: 128, column: 4, scope: !6546)
!6726 = !DILocation(line: 121, column: 4, scope: !6551)
!6727 = !DILocation(line: 121, column: 4, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 121, column: 4)
!6729 = !DILocation(line: 121, column: 4, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6728, file: !3, line: 121, column: 4)
!6731 = distinct !{!6731, !6700, !6732, !6647, !6648}
!6732 = !DILocation(line: 128, column: 4, scope: !6542)
!6733 = distinct !{!6733, !6688, !6734, !6647, !6648}
!6734 = !DILocation(line: 128, column: 4, scope: !6539)
!6735 = !DILocation(line: 129, column: 1, scope: !6515)
!6736 = !DILocation(line: 130, column: 8, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 130, column: 8)
!6738 = !DILocation(line: 130, column: 8, scope: !6515)
!6739 = !DILocation(line: 131, column: 14, scope: !6737)
!6740 = !DILocation(line: 131, column: 5, scope: !6737)
!6741 = !DILocation(line: 132, column: 4, scope: !6515)
!6742 = !DILocation(line: 134, column: 8, scope: !6515)
!6743 = !DILocation(line: 135, column: 2, scope: !6515)
!6744 = !DILocation(line: 137, column: 1, scope: !6497)
!6745 = !DILocation(line: 138, column: 2, scope: !6497)
!6746 = !DILocation(line: 139, column: 9, scope: !6497)
!6747 = !DILocation(line: 139, column: 2, scope: !6497)
!6748 = !DILocation(line: 140, column: 1, scope: !6497)
!6749 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6750, file: !6750, line: 782, type: !2730, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6750 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6751 = !DILocation(line: 784, column: 2, scope: !6749)
!6752 = !DILocation(line: 786, column: 2, scope: !6749)
!6753 = !DILocation(line: 786, column: 2, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6749, file: !6750, line: 786, column: 2)
!6755 = !DILocation(line: 787, column: 2, scope: !6749)
!6756 = !DILocation(line: 787, column: 2, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6749, file: !6750, line: 787, column: 2)
!6758 = !DILocation(line: 789, column: 1, scope: !6749)
!6759 = !DISubprogram(name: "find_task_by_vpid", scope: !317, file: !317, line: 1989, type: !6760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6760 = !DISubroutineType(types: !6761)
!6761 = !{!315, !5448}
!6762 = !DISubprogram(name: "set_task_ioprio", scope: !6453, file: !6453, line: 63, type: !6763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6763 = !DISubroutineType(types: !6764)
!6764 = !{!30, !315, !30}
!6765 = distinct !DISubprogram(name: "task_pgrp", scope: !5561, file: !5561, line: 692, type: !6766, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6768)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{!729, !315}
!6768 = !{!6769}
!6769 = !DILocalVariable(name: "task", arg: 1, scope: !6765, file: !5561, line: 692, type: !315)
!6770 = !DILocation(line: 692, column: 57, scope: !6765)
!6771 = !DILocation(line: 694, column: 9, scope: !6765)
!6772 = !DILocation(line: 694, column: 15, scope: !6765)
!6773 = !DILocation(line: 694, column: 23, scope: !6765)
!6774 = !DILocation(line: 694, column: 2, scope: !6765)
!6775 = !DISubprogram(name: "find_vpid", scope: !116, file: !116, line: 129, type: !6776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{!729, !30}
!6778 = !DISubprogram(name: "_raw_read_lock", scope: !6779, file: !6779, line: 18, type: !6780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6779 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!6780 = !DISubroutineType(types: !6781)
!6781 = !{null, !6782}
!6782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!6783 = !DISubprogram(name: "_raw_read_unlock", scope: !6779, file: !6779, line: 31, type: !6780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6784 = distinct !DISubprogram(name: "make_kuid", scope: !814, file: !814, line: 143, type: !6785, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6787)
!6785 = !DISubroutineType(types: !6786)
!6786 = !{!813, !782, !818}
!6787 = !{!6788, !6789}
!6788 = !DILocalVariable(name: "from", arg: 1, scope: !6784, file: !814, line: 143, type: !782)
!6789 = !DILocalVariable(name: "uid", arg: 2, scope: !6784, file: !814, line: 143, type: !818)
!6790 = !DILocation(line: 143, column: 55, scope: !6784)
!6791 = !DILocation(line: 143, column: 67, scope: !6784)
!6792 = !DILocation(line: 145, column: 9, scope: !6784)
!6793 = !DILocation(line: 145, column: 2, scope: !6784)
!6794 = distinct !DISubprogram(name: "current_user_ns", scope: !1082, file: !1082, line: 346, type: !6795, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6795 = !DISubroutineType(types: !6796)
!6796 = !{!782}
!6797 = !DILocation(line: 348, column: 2, scope: !6794)
!6798 = distinct !DISubprogram(name: "uid_valid", scope: !814, file: !814, line: 111, type: !6799, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6799 = !DISubroutineType(types: !6800)
!6800 = !{!840, !813}
!6801 = !{!6802}
!6802 = !DILocalVariable(name: "uid", arg: 1, scope: !6798, file: !814, line: 111, type: !813)
!6803 = !DILocation(line: 111, column: 37, scope: !6798)
!6804 = !DILocation(line: 113, column: 9, scope: !6798)
!6805 = !DILocation(line: 113, column: 25, scope: !6798)
!6806 = !DILocation(line: 113, column: 2, scope: !6798)
!6807 = !DISubprogram(name: "find_user", scope: !1113, file: !1113, line: 41, type: !6808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6808 = !DISubroutineType(types: !6809)
!6809 = !{!1111, !813}
!6810 = distinct !DISubprogram(name: "uid_eq", scope: !814, file: !814, line: 61, type: !6811, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6813)
!6811 = !DISubroutineType(types: !6812)
!6812 = !{!840, !813, !813}
!6813 = !{!6814, !6815}
!6814 = !DILocalVariable(name: "left", arg: 1, scope: !6810, file: !814, line: 61, type: !813)
!6815 = !DILocalVariable(name: "right", arg: 2, scope: !6810, file: !814, line: 61, type: !813)
!6816 = !DILocation(line: 61, column: 34, scope: !6810)
!6817 = !DILocation(line: 61, column: 47, scope: !6810)
!6818 = !DILocation(line: 63, column: 9, scope: !6810)
!6819 = !DILocation(line: 63, column: 29, scope: !6810)
!6820 = !DILocation(line: 63, column: 26, scope: !6810)
!6821 = !DILocation(line: 63, column: 2, scope: !6810)
!6822 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6750, file: !6750, line: 813, type: !2730, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6823 = !DILocation(line: 815, column: 2, scope: !6822)
!6824 = !DILocation(line: 815, column: 2, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6822, file: !6750, line: 815, column: 2)
!6826 = !DILocation(line: 818, column: 2, scope: !6822)
!6827 = !DILocation(line: 819, column: 2, scope: !6822)
!6828 = !DILocation(line: 819, column: 2, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6822, file: !6750, line: 819, column: 2)
!6830 = !DILocation(line: 820, column: 1, scope: !6822)
!6831 = distinct !DISubprogram(name: "task_pid_vnr", scope: !317, file: !317, line: 1590, type: !6832, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6834)
!6832 = !DISubroutineType(types: !6833)
!6833 = !{!5448, !315}
!6834 = !{!6835}
!6835 = !DILocalVariable(name: "tsk", arg: 1, scope: !6831, file: !317, line: 1590, type: !315)
!6836 = !DILocation(line: 1590, column: 54, scope: !6831)
!6837 = !DILocation(line: 1592, column: 26, scope: !6831)
!6838 = !DILocation(line: 1592, column: 9, scope: !6831)
!6839 = !DILocation(line: 1592, column: 2, scope: !6831)
!6840 = !DISubprogram(name: "free_uid", scope: !1113, file: !1113, line: 54, type: !6841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6841 = !DISubroutineType(types: !6842)
!6842 = !{null, !1111}
!6843 = !DISubprogram(name: "__rcu_read_lock", scope: !6750, file: !6750, line: 74, type: !2730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6844 = distinct !DISubprogram(name: "__kuid_val", scope: !814, file: !814, line: 34, type: !6845, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6847)
!6845 = !DISubroutineType(types: !6846)
!6846 = !{!818, !813}
!6847 = !{!6848}
!6848 = !DILocalVariable(name: "uid", arg: 1, scope: !6844, file: !814, line: 34, type: !813)
!6849 = !DILocation(line: 34, column: 39, scope: !6844)
!6850 = !DILocation(line: 36, column: 13, scope: !6844)
!6851 = !DILocation(line: 36, column: 2, scope: !6844)
!6852 = !DISubprogram(name: "__rcu_read_unlock", scope: !6750, file: !6750, line: 75, type: !2730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6853 = !DISubprogram(name: "__task_pid_nr_ns", scope: !317, file: !317, line: 1578, type: !6854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6854 = !DISubroutineType(types: !6855)
!6855 = !{!5448, !315, !115, !751}
!6856 = distinct !DISubprogram(name: "task_is_realtime", scope: !6857, file: !6857, line: 21, type: !6858, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6860)
!6857 = !DIFile(filename: "./include/linux/sched/rt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51b163e1cec9a3c9755ca6e171de807a")
!6858 = !DISubroutineType(types: !6859)
!6859 = !{!840, !315}
!6860 = !{!6861, !6862}
!6861 = !DILocalVariable(name: "tsk", arg: 1, scope: !6856, file: !6857, line: 21, type: !315)
!6862 = !DILocalVariable(name: "policy", scope: !6856, file: !6857, line: 23, type: !30)
!6863 = !DILocation(line: 21, column: 57, scope: !6856)
!6864 = !DILocation(line: 23, column: 2, scope: !6856)
!6865 = !DILocation(line: 23, column: 6, scope: !6856)
!6866 = !DILocation(line: 23, column: 15, scope: !6856)
!6867 = !DILocation(line: 23, column: 20, scope: !6856)
!6868 = !DILocation(line: 25, column: 6, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6856, file: !6857, line: 25, column: 6)
!6870 = !DILocation(line: 25, column: 13, scope: !6869)
!6871 = !DILocation(line: 25, column: 27, scope: !6869)
!6872 = !DILocation(line: 25, column: 30, scope: !6869)
!6873 = !DILocation(line: 25, column: 37, scope: !6869)
!6874 = !DILocation(line: 25, column: 6, scope: !6856)
!6875 = !DILocation(line: 26, column: 3, scope: !6869)
!6876 = !DILocation(line: 27, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6856, file: !6857, line: 27, column: 6)
!6878 = !DILocation(line: 27, column: 13, scope: !6877)
!6879 = !DILocation(line: 27, column: 6, scope: !6856)
!6880 = !DILocation(line: 28, column: 3, scope: !6877)
!6881 = !DILocation(line: 29, column: 2, scope: !6856)
!6882 = !DILocation(line: 30, column: 1, scope: !6856)
!6883 = distinct !DISubprogram(name: "task_nice", scope: !317, file: !317, line: 1922, type: !6884, scopeLine: 1923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6888)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!30, !6886}
!6886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6887, size: 64)
!6887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!6888 = !{!6889}
!6889 = !DILocalVariable(name: "p", arg: 1, scope: !6883, file: !317, line: 1922, type: !6886)
!6890 = !DILocation(line: 1922, column: 55, scope: !6883)
!6891 = !DILocation(line: 1924, column: 9, scope: !6883)
!6892 = !DILocation(line: 1924, column: 2, scope: !6883)
!6893 = distinct !DISubprogram(name: "__do_sys_ioprio_get", scope: !3, file: !3, line: 210, type: !6894, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6896)
!6894 = !DISubroutineType(types: !6895)
!6895 = !{!1065, !30, !30}
!6896 = !{!6897, !6898, !6899, !6900, !6901, !6902, !6903, !6904, !6905, !6906, !6912, !6914, !6916, !6920, !6923, !6926, !6928, !6930, !6932, !6936, !6939, !6944, !6946}
!6897 = !DILocalVariable(name: "which", arg: 1, scope: !6893, file: !3, line: 210, type: !30)
!6898 = !DILocalVariable(name: "who", arg: 2, scope: !6893, file: !3, line: 210, type: !30)
!6899 = !DILocalVariable(name: "g", scope: !6893, file: !3, line: 212, type: !315)
!6900 = !DILocalVariable(name: "p", scope: !6893, file: !3, line: 212, type: !315)
!6901 = !DILocalVariable(name: "user", scope: !6893, file: !3, line: 213, type: !1111)
!6902 = !DILocalVariable(name: "pgrp", scope: !6893, file: !3, line: 214, type: !729)
!6903 = !DILocalVariable(name: "uid", scope: !6893, file: !3, line: 215, type: !813)
!6904 = !DILocalVariable(name: "ret", scope: !6893, file: !3, line: 216, type: !30)
!6905 = !DILocalVariable(name: "tmpio", scope: !6893, file: !3, line: 217, type: !30)
!6906 = !DILocalVariable(name: "____ptr", scope: !6907, file: !3, line: 235, type: !309)
!6907 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 235, column: 4)
!6908 = distinct !DILexicalBlock(scope: !6909, file: !3, line: 235, column: 4)
!6909 = distinct !DILexicalBlock(scope: !6910, file: !3, line: 235, column: 4)
!6910 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 235, column: 4)
!6911 = distinct !DILexicalBlock(scope: !6893, file: !3, line: 220, column: 17)
!6912 = !DILocalVariable(name: "__UNIQUE_ID_rcu376", scope: !6913, file: !3, line: 235, type: !309)
!6913 = distinct !DILexicalBlock(scope: !6907, file: !3, line: 235, column: 4)
!6914 = !DILocalVariable(name: "__mptr", scope: !6915, file: !3, line: 235, type: !28)
!6915 = distinct !DILexicalBlock(scope: !6907, file: !3, line: 235, column: 4)
!6916 = !DILocalVariable(name: "tg___", scope: !6917, file: !3, line: 235, type: !315)
!6917 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 235, column: 4)
!6918 = distinct !DILexicalBlock(scope: !6919, file: !3, line: 235, column: 4)
!6919 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 235, column: 4)
!6920 = !DILocalVariable(name: "__mptr", scope: !6921, file: !3, line: 235, type: !28)
!6921 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 235, column: 4)
!6922 = distinct !DILexicalBlock(scope: !6917, file: !3, line: 235, column: 4)
!6923 = !DILocalVariable(name: "__mptr", scope: !6924, file: !3, line: 235, type: !28)
!6924 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 235, column: 4)
!6925 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 235, column: 4)
!6926 = !DILocalVariable(name: "____ptr", scope: !6927, file: !3, line: 235, type: !309)
!6927 = distinct !DILexicalBlock(scope: !6919, file: !3, line: 235, column: 4)
!6928 = !DILocalVariable(name: "__UNIQUE_ID_rcu378", scope: !6929, file: !3, line: 235, type: !309)
!6929 = distinct !DILexicalBlock(scope: !6927, file: !3, line: 235, column: 4)
!6930 = !DILocalVariable(name: "__mptr", scope: !6931, file: !3, line: 235, type: !28)
!6931 = distinct !DILexicalBlock(scope: !6927, file: !3, line: 235, column: 4)
!6932 = !DILocalVariable(name: "__mptr", scope: !6933, file: !3, line: 257, type: !28)
!6933 = distinct !DILexicalBlock(scope: !6934, file: !3, line: 257, column: 4)
!6934 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 257, column: 4)
!6935 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 257, column: 4)
!6936 = !DILocalVariable(name: "__mptr", scope: !6937, file: !3, line: 257, type: !28)
!6937 = distinct !DILexicalBlock(scope: !6938, file: !3, line: 257, column: 4)
!6938 = distinct !DILexicalBlock(scope: !6934, file: !3, line: 257, column: 4)
!6939 = !DILocalVariable(name: "___val", scope: !6940, file: !3, line: 258, type: !813)
!6940 = distinct !DILexicalBlock(scope: !6941, file: !3, line: 258, column: 17)
!6941 = distinct !DILexicalBlock(scope: !6942, file: !3, line: 258, column: 9)
!6942 = distinct !DILexicalBlock(scope: !6943, file: !3, line: 257, column: 34)
!6943 = distinct !DILexicalBlock(scope: !6938, file: !3, line: 257, column: 4)
!6944 = !DILocalVariable(name: "__UNIQUE_ID_rcu385", scope: !6945, file: !3, line: 258, type: !1079)
!6945 = distinct !DILexicalBlock(scope: !6940, file: !3, line: 258, column: 17)
!6946 = !DILocalVariable(name: "__mptr", scope: !6947, file: !3, line: 257, type: !28)
!6947 = distinct !DILexicalBlock(scope: !6943, file: !3, line: 257, column: 4)
!6948 = !DILocation(line: 210, column: 1, scope: !6893)
!6949 = !DILocation(line: 212, column: 2, scope: !6893)
!6950 = !DILocation(line: 212, column: 22, scope: !6893)
!6951 = !DILocation(line: 212, column: 26, scope: !6893)
!6952 = !DILocation(line: 213, column: 2, scope: !6893)
!6953 = !DILocation(line: 213, column: 22, scope: !6893)
!6954 = !DILocation(line: 214, column: 2, scope: !6893)
!6955 = !DILocation(line: 214, column: 14, scope: !6893)
!6956 = !DILocation(line: 215, column: 2, scope: !6893)
!6957 = !DILocation(line: 215, column: 9, scope: !6893)
!6958 = !DILocation(line: 216, column: 2, scope: !6893)
!6959 = !DILocation(line: 216, column: 6, scope: !6893)
!6960 = !DILocation(line: 217, column: 2, scope: !6893)
!6961 = !DILocation(line: 217, column: 6, scope: !6893)
!6962 = !DILocation(line: 219, column: 2, scope: !6893)
!6963 = !DILocation(line: 220, column: 10, scope: !6893)
!6964 = !DILocation(line: 220, column: 2, scope: !6893)
!6965 = !DILocation(line: 222, column: 9, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 222, column: 8)
!6967 = !DILocation(line: 222, column: 8, scope: !6911)
!6968 = !DILocation(line: 223, column: 9, scope: !6966)
!6969 = !DILocation(line: 223, column: 7, scope: !6966)
!6970 = !DILocation(line: 223, column: 5, scope: !6966)
!6971 = !DILocation(line: 225, column: 27, scope: !6966)
!6972 = !DILocation(line: 225, column: 9, scope: !6966)
!6973 = !DILocation(line: 225, column: 7, scope: !6966)
!6974 = !DILocation(line: 226, column: 8, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 226, column: 8)
!6976 = !DILocation(line: 226, column: 8, scope: !6911)
!6977 = !DILocation(line: 227, column: 31, scope: !6975)
!6978 = !DILocation(line: 227, column: 11, scope: !6975)
!6979 = !DILocation(line: 227, column: 9, scope: !6975)
!6980 = !DILocation(line: 227, column: 5, scope: !6975)
!6981 = !DILocation(line: 228, column: 4, scope: !6911)
!6982 = !DILocation(line: 230, column: 9, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 230, column: 8)
!6984 = !DILocation(line: 230, column: 8, scope: !6911)
!6985 = !DILocation(line: 231, column: 22, scope: !6983)
!6986 = !DILocation(line: 231, column: 12, scope: !6983)
!6987 = !DILocation(line: 231, column: 10, scope: !6983)
!6988 = !DILocation(line: 231, column: 5, scope: !6983)
!6989 = !DILocation(line: 233, column: 22, scope: !6983)
!6990 = !DILocation(line: 233, column: 12, scope: !6983)
!6991 = !DILocation(line: 233, column: 10, scope: !6983)
!6992 = !DILocation(line: 234, column: 4, scope: !6911)
!6993 = !DILocation(line: 235, column: 4, scope: !6911)
!6994 = !DILocation(line: 235, column: 4, scope: !6909)
!6995 = !DILocation(line: 235, column: 4, scope: !6910)
!6996 = !DILocation(line: 235, column: 4, scope: !6907)
!6997 = !DILocation(line: 235, column: 4, scope: !6913)
!6998 = !DILocation(line: 235, column: 4, scope: !6999)
!6999 = distinct !DILexicalBlock(scope: !6913, file: !3, line: 235, column: 4)
!7000 = !DILocation(line: 235, column: 4, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 235, column: 4)
!7002 = !DILocation(line: 235, column: 4, scope: !6915)
!7003 = !DILocation(line: 235, column: 4, scope: !6908)
!7004 = !DILocation(line: 235, column: 4, scope: !6919)
!7005 = !DILocation(line: 235, column: 4, scope: !6917)
!7006 = !DILocation(line: 235, column: 4, scope: !6921)
!7007 = !DILocation(line: 235, column: 4, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6921, file: !3, line: 235, column: 4)
!7009 = !DILocation(line: 235, column: 4, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7008, file: !3, line: 235, column: 4)
!7011 = !DILocation(line: 235, column: 4, scope: !6922)
!7012 = !DILocation(line: 235, column: 4, scope: !6925)
!7013 = !DILocation(line: 236, column: 29, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !7015, file: !3, line: 235, column: 46)
!7015 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 235, column: 4)
!7016 = !DILocation(line: 236, column: 13, scope: !7014)
!7017 = !DILocation(line: 236, column: 11, scope: !7014)
!7018 = !DILocation(line: 237, column: 9, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !7014, file: !3, line: 237, column: 9)
!7020 = !DILocation(line: 237, column: 15, scope: !7019)
!7021 = !DILocation(line: 237, column: 9, scope: !7014)
!7022 = !DILocation(line: 238, column: 6, scope: !7019)
!7023 = !DILocation(line: 239, column: 9, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !7014, file: !3, line: 239, column: 9)
!7025 = !DILocation(line: 239, column: 13, scope: !7024)
!7026 = !DILocation(line: 239, column: 9, scope: !7014)
!7027 = !DILocation(line: 240, column: 12, scope: !7024)
!7028 = !DILocation(line: 240, column: 10, scope: !7024)
!7029 = !DILocation(line: 240, column: 6, scope: !7024)
!7030 = !DILocation(line: 242, column: 24, scope: !7024)
!7031 = !DILocation(line: 242, column: 29, scope: !7024)
!7032 = !DILocation(line: 242, column: 12, scope: !7024)
!7033 = !DILocation(line: 242, column: 10, scope: !7024)
!7034 = !DILocation(line: 243, column: 6, scope: !7015)
!7035 = !DILocation(line: 235, column: 4, scope: !6924)
!7036 = !DILocation(line: 235, column: 4, scope: !7037)
!7037 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 235, column: 4)
!7038 = !DILocation(line: 235, column: 4, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !7037, file: !3, line: 235, column: 4)
!7040 = distinct !{!7040, !7011, !7041, !6647, !6648}
!7041 = !DILocation(line: 243, column: 6, scope: !6922)
!7042 = !DILocation(line: 243, column: 6, scope: !6917)
!7043 = !DILocation(line: 243, column: 6, scope: !6918)
!7044 = !DILocation(line: 235, column: 4, scope: !6927)
!7045 = !DILocation(line: 235, column: 4, scope: !6929)
!7046 = !DILocation(line: 235, column: 4, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !6929, file: !3, line: 235, column: 4)
!7048 = !DILocation(line: 235, column: 4, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7047, file: !3, line: 235, column: 4)
!7050 = !DILocation(line: 235, column: 4, scope: !6931)
!7051 = distinct !{!7051, !7003, !7052, !6647, !6648}
!7052 = !DILocation(line: 243, column: 6, scope: !6908)
!7053 = !DILocation(line: 243, column: 6, scope: !6910)
!7054 = !DILocation(line: 244, column: 4, scope: !6911)
!7055 = !DILocation(line: 246, column: 4, scope: !6911)
!7056 = !DILocation(line: 248, column: 10, scope: !6911)
!7057 = !DILocation(line: 248, column: 20, scope: !6911)
!7058 = !DILocation(line: 248, column: 39, scope: !6911)
!7059 = !DILocation(line: 249, column: 9, scope: !7060)
!7060 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 249, column: 8)
!7061 = !DILocation(line: 249, column: 8, scope: !6911)
!7062 = !DILocation(line: 250, column: 12, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7064, file: !3, line: 250, column: 12)
!7064 = distinct !DILexicalBlock(scope: !7060, file: !3, line: 250, column: 12)
!7065 = !DILocation(line: 250, column: 12, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 250, column: 12)
!7067 = !DILocation(line: 250, column: 12, scope: !7064)
!7068 = !DILocation(line: 250, column: 12, scope: !7060)
!7069 = !DILocation(line: 250, column: 10, scope: !7060)
!7070 = !DILocation(line: 250, column: 5, scope: !7060)
!7071 = !DILocation(line: 252, column: 12, scope: !7060)
!7072 = !DILocation(line: 252, column: 10, scope: !7060)
!7073 = !DILocation(line: 254, column: 9, scope: !7074)
!7074 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 254, column: 8)
!7075 = !DILocation(line: 254, column: 8, scope: !6911)
!7076 = !DILocation(line: 255, column: 5, scope: !7074)
!7077 = !DILocation(line: 257, column: 4, scope: !6935)
!7078 = !DILocation(line: 257, column: 4, scope: !6933)
!7079 = !DILocation(line: 257, column: 4, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !6933, file: !3, line: 257, column: 4)
!7081 = !DILocation(line: 257, column: 4, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7080, file: !3, line: 257, column: 4)
!7083 = !DILocation(line: 257, column: 4, scope: !6934)
!7084 = !DILocation(line: 257, column: 4, scope: !6937)
!7085 = !DILocation(line: 257, column: 4, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !6937, file: !3, line: 257, column: 4)
!7087 = !DILocation(line: 257, column: 4, scope: !7088)
!7088 = distinct !DILexicalBlock(scope: !7086, file: !3, line: 257, column: 4)
!7089 = !DILocation(line: 257, column: 4, scope: !6938)
!7090 = !DILocation(line: 257, column: 4, scope: !6943)
!7091 = !DILocation(line: 258, column: 17, scope: !6940)
!7092 = !DILocation(line: 258, column: 17, scope: !6945)
!7093 = !DILocation(line: 258, column: 17, scope: !7094)
!7094 = distinct !DILexicalBlock(scope: !6945, file: !3, line: 258, column: 17)
!7095 = !DILocation(line: 258, column: 17, scope: !7096)
!7096 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 258, column: 17)
!7097 = !DILocation(line: 258, column: 17, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !6945, file: !3, line: 258, column: 17)
!7099 = !DILocation(line: 258, column: 17, scope: !6941)
!7100 = !DILocation(line: 258, column: 30, scope: !6941)
!7101 = !DILocation(line: 258, column: 36, scope: !6941)
!7102 = !DILocation(line: 258, column: 10, scope: !6941)
!7103 = !DILocation(line: 258, column: 41, scope: !6941)
!7104 = !DILocation(line: 259, column: 23, scope: !6941)
!7105 = !DILocation(line: 259, column: 10, scope: !6941)
!7106 = !DILocation(line: 258, column: 9, scope: !6942)
!7107 = !DILocation(line: 260, column: 6, scope: !6941)
!7108 = !DILocation(line: 261, column: 29, scope: !6942)
!7109 = !DILocation(line: 261, column: 13, scope: !6942)
!7110 = !DILocation(line: 261, column: 11, scope: !6942)
!7111 = !DILocation(line: 262, column: 9, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !6942, file: !3, line: 262, column: 9)
!7113 = !DILocation(line: 262, column: 15, scope: !7112)
!7114 = !DILocation(line: 262, column: 9, scope: !6942)
!7115 = !DILocation(line: 263, column: 6, scope: !7112)
!7116 = !DILocation(line: 264, column: 9, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !6942, file: !3, line: 264, column: 9)
!7118 = !DILocation(line: 264, column: 13, scope: !7117)
!7119 = !DILocation(line: 264, column: 9, scope: !6942)
!7120 = !DILocation(line: 265, column: 12, scope: !7117)
!7121 = !DILocation(line: 265, column: 10, scope: !7117)
!7122 = !DILocation(line: 265, column: 6, scope: !7117)
!7123 = !DILocation(line: 267, column: 24, scope: !7117)
!7124 = !DILocation(line: 267, column: 29, scope: !7117)
!7125 = !DILocation(line: 267, column: 12, scope: !7117)
!7126 = !DILocation(line: 267, column: 10, scope: !7117)
!7127 = !DILocation(line: 268, column: 4, scope: !6942)
!7128 = !DILocation(line: 257, column: 4, scope: !6947)
!7129 = !DILocation(line: 257, column: 4, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !6947, file: !3, line: 257, column: 4)
!7131 = !DILocation(line: 257, column: 4, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7130, file: !3, line: 257, column: 4)
!7133 = distinct !{!7133, !7089, !7134, !6647, !6648}
!7134 = !DILocation(line: 268, column: 4, scope: !6938)
!7135 = distinct !{!7135, !7077, !7136, !6647, !6648}
!7136 = !DILocation(line: 268, column: 4, scope: !6935)
!7137 = !DILocation(line: 270, column: 8, scope: !7138)
!7138 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 270, column: 8)
!7139 = !DILocation(line: 270, column: 8, scope: !6911)
!7140 = !DILocation(line: 271, column: 14, scope: !7138)
!7141 = !DILocation(line: 271, column: 5, scope: !7138)
!7142 = !DILocation(line: 272, column: 4, scope: !6911)
!7143 = !DILocation(line: 274, column: 8, scope: !6911)
!7144 = !DILocation(line: 275, column: 2, scope: !6911)
!7145 = !DILocation(line: 277, column: 2, scope: !6893)
!7146 = !DILocation(line: 278, column: 9, scope: !6893)
!7147 = !DILocation(line: 279, column: 1, scope: !6893)
!7148 = !DILocation(line: 278, column: 2, scope: !6893)
!7149 = distinct !DISubprogram(name: "get_task_raw_ioprio", scope: !3, file: !3, line: 188, type: !6367, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7150)
!7150 = !{!7151, !7152, !7153}
!7151 = !DILocalVariable(name: "p", arg: 1, scope: !7149, file: !3, line: 188, type: !315)
!7152 = !DILocalVariable(name: "ret", scope: !7149, file: !3, line: 190, type: !30)
!7153 = !DILabel(scope: !7149, name: "out", file: !3, line: 201)
!7154 = !DILocation(line: 188, column: 52, scope: !7149)
!7155 = !DILocation(line: 190, column: 2, scope: !7149)
!7156 = !DILocation(line: 190, column: 6, scope: !7149)
!7157 = !DILocation(line: 192, column: 32, scope: !7149)
!7158 = !DILocation(line: 192, column: 8, scope: !7149)
!7159 = !DILocation(line: 192, column: 6, scope: !7149)
!7160 = !DILocation(line: 193, column: 6, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7149, file: !3, line: 193, column: 6)
!7162 = !DILocation(line: 193, column: 6, scope: !7149)
!7163 = !DILocation(line: 194, column: 3, scope: !7161)
!7164 = !DILocation(line: 195, column: 12, scope: !7149)
!7165 = !DILocation(line: 195, column: 2, scope: !7149)
!7166 = !DILocation(line: 196, column: 6, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7149, file: !3, line: 196, column: 6)
!7168 = !DILocation(line: 196, column: 9, scope: !7167)
!7169 = !DILocation(line: 196, column: 6, scope: !7149)
!7170 = !DILocation(line: 197, column: 9, scope: !7167)
!7171 = !DILocation(line: 197, column: 12, scope: !7167)
!7172 = !DILocation(line: 197, column: 24, scope: !7167)
!7173 = !DILocation(line: 197, column: 7, scope: !7167)
!7174 = !DILocation(line: 197, column: 3, scope: !7167)
!7175 = !DILocation(line: 199, column: 9, scope: !7167)
!7176 = !DILocation(line: 199, column: 7, scope: !7167)
!7177 = !DILocation(line: 200, column: 14, scope: !7149)
!7178 = !DILocation(line: 200, column: 2, scope: !7149)
!7179 = !DILocation(line: 201, column: 1, scope: !7149)
!7180 = !DILocation(line: 202, column: 9, scope: !7149)
!7181 = !DILocation(line: 203, column: 1, scope: !7149)
!7182 = !DILocation(line: 202, column: 2, scope: !7149)
!7183 = distinct !DISubprogram(name: "get_task_ioprio", scope: !3, file: !3, line: 168, type: !6367, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7184)
!7184 = !{!7185, !7186, !7187}
!7185 = !DILocalVariable(name: "p", arg: 1, scope: !7183, file: !3, line: 168, type: !315)
!7186 = !DILocalVariable(name: "ret", scope: !7183, file: !3, line: 170, type: !30)
!7187 = !DILabel(scope: !7183, name: "out", file: !3, line: 178)
!7188 = !DILocation(line: 168, column: 48, scope: !7183)
!7189 = !DILocation(line: 170, column: 2, scope: !7183)
!7190 = !DILocation(line: 170, column: 6, scope: !7183)
!7191 = !DILocation(line: 172, column: 32, scope: !7183)
!7192 = !DILocation(line: 172, column: 8, scope: !7183)
!7193 = !DILocation(line: 172, column: 6, scope: !7183)
!7194 = !DILocation(line: 173, column: 6, scope: !7195)
!7195 = distinct !DILexicalBlock(scope: !7183, file: !3, line: 173, column: 6)
!7196 = !DILocation(line: 173, column: 6, scope: !7183)
!7197 = !DILocation(line: 174, column: 3, scope: !7195)
!7198 = !DILocation(line: 175, column: 12, scope: !7183)
!7199 = !DILocation(line: 175, column: 2, scope: !7183)
!7200 = !DILocation(line: 176, column: 26, scope: !7183)
!7201 = !DILocation(line: 176, column: 8, scope: !7183)
!7202 = !DILocation(line: 176, column: 6, scope: !7183)
!7203 = !DILocation(line: 177, column: 14, scope: !7183)
!7204 = !DILocation(line: 177, column: 2, scope: !7183)
!7205 = !DILocation(line: 178, column: 1, scope: !7183)
!7206 = !DILocation(line: 179, column: 9, scope: !7183)
!7207 = !DILocation(line: 180, column: 1, scope: !7183)
!7208 = !DILocation(line: 179, column: 2, scope: !7183)
!7209 = distinct !DISubprogram(name: "ioprio_best", scope: !3, file: !3, line: 205, type: !7210, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7212)
!7210 = !DISubroutineType(types: !7211)
!7211 = !{!30, !34, !34}
!7212 = !{!7213, !7214, !7215, !7217}
!7213 = !DILocalVariable(name: "aprio", arg: 1, scope: !7209, file: !3, line: 205, type: !34)
!7214 = !DILocalVariable(name: "bprio", arg: 2, scope: !7209, file: !3, line: 205, type: !34)
!7215 = !DILocalVariable(name: "__UNIQUE_ID___x374", scope: !7216, file: !3, line: 207, type: !34)
!7216 = distinct !DILexicalBlock(scope: !7209, file: !3, line: 207, column: 9)
!7217 = !DILocalVariable(name: "__UNIQUE_ID___y375", scope: !7216, file: !3, line: 207, type: !34)
!7218 = !DILocation(line: 205, column: 39, scope: !7209)
!7219 = !DILocation(line: 205, column: 61, scope: !7209)
!7220 = !DILocation(line: 207, column: 9, scope: !7216)
!7221 = !DILocation(line: 207, column: 9, scope: !7209)
!7222 = !DILocation(line: 207, column: 2, scope: !7209)
!7223 = !DISubprogram(name: "security_task_getioprio", scope: !7224, file: !7224, line: 437, type: !6367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7224 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!7225 = distinct !DISubprogram(name: "task_lock", scope: !7226, file: !7226, line: 220, type: !4010, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7227)
!7226 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!7227 = !{!7228}
!7228 = !DILocalVariable(name: "p", arg: 1, scope: !7225, file: !7226, line: 220, type: !315)
!7229 = !DILocation(line: 220, column: 50, scope: !7225)
!7230 = !DILocation(line: 222, column: 13, scope: !7225)
!7231 = !DILocation(line: 222, column: 16, scope: !7225)
!7232 = !DILocation(line: 222, column: 2, scope: !7225)
!7233 = !DILocation(line: 223, column: 1, scope: !7225)
!7234 = distinct !DISubprogram(name: "task_unlock", scope: !7226, file: !7226, line: 225, type: !4010, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7235)
!7235 = !{!7236}
!7236 = !DILocalVariable(name: "p", arg: 1, scope: !7234, file: !7226, line: 225, type: !315)
!7237 = !DILocation(line: 225, column: 52, scope: !7234)
!7238 = !DILocation(line: 227, column: 15, scope: !7234)
!7239 = !DILocation(line: 227, column: 18, scope: !7234)
!7240 = !DILocation(line: 227, column: 2, scope: !7234)
!7241 = !DILocation(line: 228, column: 1, scope: !7234)
!7242 = distinct !DISubprogram(name: "spin_lock", scope: !7243, file: !7243, line: 349, type: !7244, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7246)
!7243 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7244 = !DISubroutineType(types: !7245)
!7245 = !{null, !1835}
!7246 = !{!7247}
!7247 = !DILocalVariable(name: "lock", arg: 1, scope: !7242, file: !7243, line: 349, type: !1835)
!7248 = !DILocation(line: 349, column: 51, scope: !7242)
!7249 = !DILocation(line: 351, column: 2, scope: !7242)
!7250 = !DILocation(line: 352, column: 1, scope: !7242)
!7251 = !DISubprogram(name: "_raw_spin_lock", scope: !7252, file: !7252, line: 22, type: !7253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7252 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7253 = !DISubroutineType(types: !7254)
!7254 = !{null, !7255}
!7255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!7256 = distinct !DISubprogram(name: "spin_unlock", scope: !7243, file: !7243, line: 389, type: !7244, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7257)
!7257 = !{!7258}
!7258 = !DILocalVariable(name: "lock", arg: 1, scope: !7256, file: !7243, line: 389, type: !1835)
!7259 = !DILocation(line: 389, column: 53, scope: !7256)
!7260 = !DILocation(line: 391, column: 2, scope: !7256)
!7261 = !DILocation(line: 392, column: 1, scope: !7256)
!7262 = !DISubprogram(name: "_raw_spin_unlock", scope: !7252, file: !7252, line: 39, type: !7253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
